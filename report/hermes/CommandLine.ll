inline.NumInlined: 2394
inline.NumDeleted: 987
begin_hunk_0_@_ZN12_GLOBAL__N_117CommandLineParser12updateArgStrEPN4llvh2cl6OptionENS1_9StringRefEPNS2_10SubCommandE:bb.a
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #28
  %i.e = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.f = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %i.e, ptr noundef nonnull @.str.66)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.01.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !56
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !57
  %i.h = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(36) %i.f, ptr %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload)
  %i.i = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %i.h, ptr noundef nonnull @.str.67) ; 0 uses
  call void @_ZN4llvh18report_fatal_errorEPKcb(ptr noundef nonnull @.str.68, i1 noundef zeroext true) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !56
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !57
  %i.k = call noundef i32 @_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %i.a, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #28 ; 2 uses
  %i.l = icmp ne i32 %i.k, -1
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.n = load i32, ptr %i.m, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = sext i32 %i.k to i64                     ; 2 uses
  %i.q = icmp ne i64 %i.p, %i.o
  %.not7.i = select i1 %i.l, i1 %i.q, i1 false
  br i1 %.not7.i, label %bb.d, label %_ZN4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5eraseENS_9StringRefE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.a, align 8
  %.sroa.0.0.i.i = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.p
  %i.s = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !147 ; 2 uses
  call void @_ZN4llvh13StringMapImpl9RemoveKeyEPNS_18StringMapEntryBaseE(ptr noundef nonnull align 8 dereferenceable(25) %i.a, ptr noundef nonnull %i.s) #28
  call void @free(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28
  br label %_ZN4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5eraseENS_9StringRefE.exit

_ZN4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5eraseENS_9StringRefE.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvh12MemoryBuffer7getFileERKNS_5TwineElbb(ptr dead_on_unwind writable sret(%"class.llvh::ErrorOr") align 8, ptr noundef nonnull align 8 dereferenceable(18), i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvh21hasUTF16ByteOrderMarkENS_8ArrayRefIcEE(ptr, i64) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvh24convertUTF16ToUTF8StringENS_8ArrayRefIcEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvh3sys4path11is_relativeERKNS_5TwineENS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(18), i32 noundef) local_unnamed_addr #4

declare { i32, ptr } @_ZN4llvh3sys2fs12current_pathERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare void @_ZN4llvh3sys4path6appendERNS_15SmallVectorImplIcEERKNS_5TwineES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(18), ptr noundef nonnull align 8 dereferenceable(18), ptr noundef nonnull align 8 dereferenceable(18), ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #4

declare { ptr, i64 } @_ZN4llvh3sys4path11parent_pathENS_9StringRefENS1_5StyleE(ptr, i64, i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvh3sys16getProcessTripleB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8) local_unnamed_addr #4

declare void @_ZN4llvh6TripleC1ERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(18)) unnamed_addr #4

declare { ptr, i64 } @_ZN4llvh3sys4path8filenameENS_9StringRefENS1_5StyleE(ptr, i64, i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi(ptr noundef %0, ptr %1, i64 %2, ptr %3, i64 %4, i32 noundef %5, ptr noundef readonly captures(none) %6, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %7) unnamed_addr #6 {
bb.a:
  %8 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  store ptr %3, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %4, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !389  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i16, ptr %i.d, align 4
  %i.f = lshr i16 %i.e, 3
  %i.g = and i16 %i.f, 3                          ; 2 uses
  %.not.i53 = icmp eq i16 %i.g, 0
  br i1 %.not.i53, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i16 %i.g to i32
  br label %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(145) %0) #28, !inline_history !386
  br label %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit

_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit: ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %i.h, %bb.b ], [ %i.l, %bb.c ]
  switch i32 %i.m, label %_ZN4llvh9StringRefC2EPKc.exit52 [
    i32 2, label %bb.d
    i32 3, label %bb.i
  ]

bb.d:                                             ; preds = %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit
  %.not46 = icmp eq ptr %3, null
  br i1 %.not46, label %bb.e, label %_ZN4llvh9StringRefC2EPKc.exit52

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %7, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1                      ; 3 uses
  %.not47 = icmp slt i32 %i.o, %5
  br i1 %.not47, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 1, ptr %i.q, align 1, !tbaa !17
  store ptr @.str.91, ptr %9, align 8, !tbaa !18
  store i8 3, ptr %i.p, align 8, !tbaa !11
  %i.r = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #28
  %i.s = call noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(18) %9, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(36) %i.r) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit

bb.g:                                             ; preds = %bb.e
  store i32 %i.o, ptr %7, align 4, !tbaa !3
  %i.t = sext i32 %i.o to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %6, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !56   ; 4 uses
  %.not.i51 = icmp eq ptr %i.v, null
  br i1 %.not.i51, label %_ZN4llvh9StringRefC2EPKc.exit52, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #32
  br label %_ZN4llvh9StringRefC2EPKc.exit52

bb.i:                                             ; preds = %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 1, ptr %i.y, align 1, !tbaa !17
  store ptr @.str.92, ptr %10, align 8, !tbaa !18
  store i8 3, ptr %i.x, align 8, !tbaa !11
  %i.z = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #28
  %i.aa = call noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(18) %10, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(36) %i.z) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit

bb.k:                                             ; preds = %bb.i
  %.not45 = icmp eq ptr %3, null
  br i1 %.not45, label %.thread, label %_ZN4llvhplERKNS_5TwineES2_.exit60

_ZN4llvhplERKNS_5TwineES2_.exit60:                ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  store ptr @.str.93, ptr %12, align 8, !tbaa !18, !alias.scope !390
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %8, ptr %i.ab, align 8, !tbaa !18, !alias.scope !390
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 3, ptr %i.ac, align 8, !tbaa !11, !alias.scope !390
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 5, ptr %i.ad, align 1, !tbaa !17, !alias.scope !390
  store ptr %12, ptr %11, align 8, !tbaa !18, !alias.scope !395
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.94, ptr %i.ae, align 8, !tbaa !18, !alias.scope !395
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i8 2, ptr %i.af, align 8, !tbaa !11, !alias.scope !395
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 3, ptr %i.ag, align 1, !tbaa !17, !alias.scope !395
  %i.ah = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #28
  %i.ai = call noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(18) %11, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(36) %i.ah) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit

_ZN4llvh9StringRefC2EPKc.exit52:                  ; preds = %bb.h, %bb.g, %bb.d, %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit
  %.promoted124 = phi i64 [ %4, %bb.d ], [ %4, %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit ], [ %i.w, %bb.h ], [ 0, %bb.g ] ; 6 uses
  %.promoted = phi ptr [ %3, %bb.d ], [ %3, %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit ], [ %i.v, %bb.h ], [ %i.v, %bb.g ] ; 8 uses
  %i.aj = icmp eq i32 %i.c, 0
  br i1 %i.aj, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.k, %_ZN4llvh9StringRefC2EPKc.exit52
  %.sroa.29.0.copyload = phi i64 [ %4, %bb.k ], [ %.promoted124, %_ZN4llvh9StringRefC2EPKc.exit52 ] ; 5 uses
  %.sroa.08.0.copyload = phi ptr [ null, %bb.k ], [ %.promoted, %_ZN4llvh9StringRefC2EPKc.exit52 ] ; 6 uses
  %i.ak = load i32, ptr %7, align 4, !tbaa !3     ; 2 uses
  %i.al = load i16, ptr %i.d, align 4
  %i.am = and i16 %i.al, 512
  %.not.i61 = icmp eq i16 %i.am, 0
  br i1 %.not.i61, label %.thread.i, label %14

14:                                               ; preds = %.thread
  %.not96.i = icmp eq i64 %.sroa.29.0.copyload, 0
  br i1 %.not96.i, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %14
  %15 = tail call noundef ptr @memchr(ptr noundef %.sroa.08.0.copyload, i32 noundef 44, i64 noundef %.sroa.29.0.copyload) #32 ; 2 uses
  %.not96.i.a = icmp eq ptr %15, null
  br i1 %.not96.i.a, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = ptrtoint ptr %15 to i64
  %i.ao = ptrtoint ptr %.sroa.08.0.copyload to i64
  %i.ap = sub i64 %i.an, %i.ao
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.o
  %.025103.i = phi i64 [ %i.ba, %bb.o ], [ %i.ap, %bb.m ] ; 2 uses
  %.sroa.0.0102.i = phi ptr [ %i.av, %bb.o ], [ %.sroa.08.0.copyload, %bb.m ] ; 2 uses
  %.sroa.9.0101.i = phi i64 [ %i.aw, %bb.o ], [ %.sroa.29.0.copyload, %bb.m ] ; 3 uses
  %.sroa.speculated81.i = tail call i64 @llvm.umin.i64(i64 %.sroa.9.0101.i, i64 %.025103.i)
  %i.aq = load ptr, ptr %0, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(145) %0, i32 noundef %i.ak, ptr %1, i64 %2, ptr %.sroa.0.0102.i, i64 %.sroa.speculated81.i, i1 noundef zeroext false) #28, !inline_history !400
  br i1 %i.at, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.au = add nuw i64 %.025103.i, 1
  %.sroa.speculated59.i = tail call i64 @llvm.umin.i64(i64 %.sroa.9.0101.i, i64 %i.au) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0102.i, i64 %.sroa.speculated59.i ; 5 uses
  %i.aw = sub i64 %.sroa.9.0101.i, %.sroa.speculated59.i ; 4 uses
  %.not97.i = icmp eq i64 %i.aw, 0
  br i1 %.not97.i, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = tail call noundef ptr @memchr(ptr noundef nonnull %i.av, i32 noundef 44, i64 noundef %i.aw) #32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  br i1 %.not.i.i, label %.thread.i, label %.lr.ph.i, !llvm.loop !401

.thread.i:                                        ; preds = %bb.o, %bb.n, %bb.l, %14, %.thread
  %.sroa.017.1.i = phi ptr [ %.sroa.08.0.copyload, %.thread ], [ %.sroa.08.0.copyload, %bb.l ], [ %.sroa.08.0.copyload, %14 ], [ %i.av, %bb.n ], [ %i.av, %bb.o ]
  %.sroa.419.1.i = phi i64 [ %.sroa.29.0.copyload, %.thread ], [ %.sroa.29.0.copyload, %bb.l ], [ 0, %14 ], [ %i.aw, %bb.o ], [ 0, %bb.n ]
  %i.bb = load ptr, ptr %0, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(145) %0, i32 noundef %i.ak, ptr %1, i64 %2, ptr %.sroa.017.1.i, i64 %.sroa.419.1.i, i1 noundef zeroext false) #28, !inline_history !400
  br label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit

bb.p:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit52
  %.not48.not = icmp ne ptr %.promoted, null      ; 2 uses
  br i1 %.not48.not, label %bb.q, label %.lr.ph.preheader

bb.q:                                             ; preds = %bb.p
  %i.bf = load i32, ptr %7, align 4, !tbaa !3     ; 2 uses
  %i.bg = load i16, ptr %i.d, align 4
  %i.bh = and i16 %i.bg, 512
  %.not.i62 = icmp eq i16 %i.bh, 0
  br i1 %.not.i62, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit81, label %16

16:                                               ; preds = %bb.q
  %.not96.i63 = icmp eq i64 %.promoted124, 0
  br i1 %.not96.i63, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit81, label %bb.r

bb.r:                                             ; preds = %16
  %17 = tail call noundef ptr @memchr(ptr noundef nonnull %.promoted, i32 noundef 44, i64 noundef %.promoted124) #32 ; 2 uses
  %.not96.i63.a = icmp eq ptr %17, null
  br i1 %.not96.i63.a, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit81, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = ptrtoint ptr %17 to i64
  %i.bj = ptrtoint ptr %.promoted to i64
  %i.bk = sub i64 %i.bi, %i.bj
  br label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %bb.s, %bb.u
  %.025103.i68 = phi i64 [ %i.bv, %bb.u ], [ %i.bk, %bb.s ] ; 2 uses
  %.sroa.0.0102.i69 = phi ptr [ %i.bq, %bb.u ], [ %.promoted, %bb.s ] ; 2 uses
  %.sroa.9.0101.i70 = phi i64 [ %i.br, %bb.u ], [ %.promoted124, %bb.s ] ; 3 uses
  %.sroa.speculated81.i71 = tail call i64 @llvm.umin.i64(i64 %.sroa.9.0101.i70, i64 %.025103.i68)
  %i.bl = load ptr, ptr %0, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(145) %0, i32 noundef %i.bf, ptr %1, i64 %2, ptr nonnull %.sroa.0.0102.i69, i64 %.sroa.speculated81.i71, i1 noundef zeroext false) #28, !inline_history !400
  br i1 %i.bo, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i67
  %i.bp = add nuw i64 %.025103.i68, 1
  %.sroa.speculated59.i72 = tail call i64 @llvm.umin.i64(i64 %.sroa.9.0101.i70, i64 %i.bp) ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0102.i69, i64 %.sroa.speculated59.i72 ; 5 uses
  %i.br = sub i64 %.sroa.9.0101.i70, %.sroa.speculated59.i72 ; 4 uses
  %.not97.i73 = icmp eq i64 %i.br, 0
  br i1 %.not97.i73, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit81, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = tail call noundef ptr @memchr(ptr noundef nonnull %i.bq, i32 noundef 44, i64 noundef %i.br) #32 ; 2 uses
  %.not.i.i74 = icmp eq ptr %i.bs, null
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  br i1 %.not.i.i74, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit81, label %.lr.ph.i67, !llvm.loop !401

_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit81: ; preds = %bb.t, %bb.u, %bb.q, %16, %bb.r
  %.sroa.017.1.i78 = phi ptr [ %.promoted, %bb.q ], [ %.promoted, %bb.r ], [ %.promoted, %16 ], [ %i.bq, %bb.u ], [ %i.bq, %bb.t ]
  %.sroa.419.1.i79 = phi i64 [ %.promoted124, %bb.q ], [ %.promoted124, %bb.r ], [ 0, %16 ], [ 0, %bb.t ], [ %i.br, %bb.u ]
  %i.bw = load ptr, ptr %0, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(145) %0, i32 noundef %i.bf, ptr %1, i64 %2, ptr %.sroa.017.1.i78, i64 %.sroa.419.1.i79, i1 noundef zeroext false) #28, !inline_history !400
  br i1 %i.bz, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit, label %bb.v

bb.v:                                             ; preds = %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit81
  %i.ca = add i32 %i.c, -1                        ; 2 uses
  %.not49127 = icmp eq i32 %i.ca, 0
  br i1 %.not49127, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.p, %bb.v
  %.141129.ph = phi i32 [ %i.c, %bb.p ], [ %i.ca, %bb.v ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit101
  %.141129 = phi i32 [ %i.df, %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit101 ], [ %.141129.ph, %.lr.ph.preheader ]
  %.143128 = phi i1 [ true, %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit101 ], [ %.not48.not, %.lr.ph.preheader ] ; 2 uses
  %i.cb = load i32, ptr %7, align 4, !tbaa !3
  %i.cc = add nsw i32 %i.cb, 1                    ; 5 uses
  %.not50 = icmp slt i32 %i.cc, %5
  br i1 %.not50, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 1, ptr %i.ce, align 1, !tbaa !17
  store ptr @.str.95, ptr %13, align 8, !tbaa !18
  store i8 3, ptr %i.cd, align 8, !tbaa !11
  %i.cf = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #28
  %i.cg = call noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(18) %13, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(36) %i.cf) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit

bb.x:                                             ; preds = %.lr.ph
  store i32 %i.cc, ptr %7, align 4, !tbaa !3
  %i.ch = sext i32 %i.cc to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !56 ; 8 uses
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit101, label %_ZN4llvh9StringRefC2EPKc.exit

_ZN4llvh9StringRefC2EPKc.exit:                    ; preds = %bb.x
  %i.ck = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cj) #32 ; 5 uses
  %i.cl = load i16, ptr %i.d, align 4
  %i.cm = and i16 %i.cl, 512
  %.not.i82 = icmp eq i16 %i.cm, 0
  br i1 %.not.i82, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit101, label %18

18:                                               ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  %.not96.i79 = icmp eq i64 %i.ck, 0
  br i1 %.not96.i79, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit101, label %bb.y

bb.y:                                             ; preds = %18
  %19 = tail call noundef ptr @memchr(ptr noundef nonnull %i.cj, i32 noundef 44, i64 noundef %i.ck) #32 ; 2 uses
  %.not96.i83 = icmp eq ptr %19, null
  br i1 %.not96.i83, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit101, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = ptrtoint ptr %19 to i64
  %i.co = ptrtoint ptr %i.cj to i64
  %i.cp = sub i64 %i.cn, %i.co
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.z, %bb.ab
  %.025103.i88 = phi i64 [ %i.da, %bb.ab ], [ %i.cp, %bb.z ] ; 2 uses
  %.sroa.0.0102.i89 = phi ptr [ %i.cv, %bb.ab ], [ %i.cj, %bb.z ] ; 2 uses
  %.sroa.9.0101.i90 = phi i64 [ %i.cw, %bb.ab ], [ %i.ck, %bb.z ] ; 3 uses
  %.sroa.speculated81.i91 = tail call i64 @llvm.umin.i64(i64 %.sroa.9.0101.i90, i64 %.025103.i88)
  %i.cq = load ptr, ptr %0, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(145) %0, i32 noundef %i.cc, ptr %1, i64 %2, ptr nonnull %.sroa.0.0102.i89, i64 %.sroa.speculated81.i91, i1 noundef zeroext %.143128) #28, !inline_history !400
  br i1 %i.ct, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i87
  %i.cu = add nuw i64 %.025103.i88, 1
  %.sroa.speculated59.i92 = tail call i64 @llvm.umin.i64(i64 %.sroa.9.0101.i90, i64 %i.cu) ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0102.i89, i64 %.sroa.speculated59.i92 ; 5 uses
  %i.cw = sub i64 %.sroa.9.0101.i90, %.sroa.speculated59.i92 ; 4 uses
  %.not97.i93 = icmp eq i64 %i.cw, 0
  br i1 %.not97.i93, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit101, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = tail call noundef ptr @memchr(ptr noundef nonnull %i.cv, i32 noundef 44, i64 noundef %i.cw) #32 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.cx, null
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  br i1 %.not.i.i94, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit101, label %.lr.ph.i87, !llvm.loop !401

_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit101: ; preds = %bb.aa, %bb.ab, %bb.x, %_ZN4llvh9StringRefC2EPKc.exit, %18, %bb.y
  %.sroa.017.1.i98 = phi ptr [ %i.cj, %_ZN4llvh9StringRefC2EPKc.exit ], [ %i.cj, %bb.y ], [ %i.cj, %18 ], [ null, %bb.x ], [ %i.cv, %bb.ab ], [ %i.cv, %bb.aa ]
  %.sroa.419.1.i99 = phi i64 [ %i.ck, %_ZN4llvh9StringRefC2EPKc.exit ], [ %i.ck, %bb.y ], [ 0, %18 ], [ 0, %bb.x ], [ 0, %bb.aa ], [ %i.cw, %bb.ab ]
  %i.db = load ptr, ptr %0, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call noundef zeroext i1 %i.dd(ptr noundef nonnull align 8 dereferenceable(145) %0, i32 noundef %i.cc, ptr %1, i64 %2, ptr %.sroa.017.1.i98, i64 %.sroa.419.1.i99, i1 noundef zeroext %.143128) #28, !inline_history !400 ; 2 uses
  %i.df = add i32 %.141129, -1                    ; 2 uses
  %.not49 = icmp eq i32 %i.df, 0
  %or.cond = select i1 %i.de, i1 true, i1 %.not49
  br i1 %or.cond, label %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit, label %.lr.ph, !llvm.loop !402

_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit: ; preds = %.lr.ph.i67, %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit101, %.lr.ph.i87, %.lr.ph.i, %bb.v, %.thread.i, %bb.w, %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit81, %_ZN4llvhplERKNS_5TwineES2_.exit60, %bb.j, %bb.f
  %.1 = phi i1 [ true, %.lr.ph.i ], [ true, %_ZN4llvhplERKNS_5TwineES2_.exit60 ], [ true, %bb.f ], [ true, %bb.j ], [ %i.de, %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit101 ], [ true, %bb.w ], [ true, %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit81 ], [ %i.be, %.thread.i ], [ true, %.lr.ph.i87 ], [ false, %bb.v ], [ true, %.lr.ph.i67 ]
  ret i1 %.1
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #16

declare noundef i32 @_ZNK4llvh9StringRef13edit_distanceES0_bj(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNK4llvh5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(18), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #4

declare noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36), i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #18

declare { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_111HelpPrinter12printOptionsERN4llvh11SmallVectorISt4pairIPKcPNS1_2cl6OptionEELj128EEEm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(2064) %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %i.c = zext i32 %i.b to i64
  %.not6 = icmp eq i32 %i.b, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !178
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.07
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !349  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(145) %i.g, i64 noundef %2) #28
  %i.k = add nuw nsw i64 %.07, 1                  ; 2 uses
  %.not = icmp eq i64 %i.k, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !403
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_111HelpPrinterD0Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122CategorizedHelpPrinter12printOptionsERN4llvh11SmallVectorISt4pairIPKcPNS1_2cl6OptionEELj128EEEm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(2064) %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::tuple.196", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.199", align 1    ; 3 uses
  %5 = alloca %"class.std::tuple.196", align 8    ; 4 uses
  %6 = alloca %"class.std::tuple.199", align 1    ; 3 uses
  %7 = alloca %"class.std::tuple.196", align 8    ; 4 uses
  %8 = alloca %"class.std::tuple.199", align 1    ; 3 uses
  %9 = alloca %"class.std::map", align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 12 uses
  store i32 0, ptr %i.a, align 8, !tbaa !404
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !409
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !410
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !411
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !412
  %i.f = load atomic ptr, ptr @_ZL12GlobalParser acquire, align 8
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL12GlobalParser, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_117CommandLineParserEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_117CommandLineParserEE4callEPv) #28, !inline_history !61
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit: ; preds = %bb.a, %bb.b
  %i.g = load atomic ptr, ptr @_ZL12GlobalParser monotonic, align 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64   ; 4 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.l = icmp eq ptr %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 92
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.p = load i32, ptr %i.o, align 8
  %.v.v.i4.i2.i = select i1 %i.l, i32 %i.n, i32 %i.p ; 2 uses
  %.v.i5.i3.i = zext i32 %.v.v.i4.i2.i to i64
  %.idx.i = shl nuw nsw i64 %.v.i5.i3.i, 3
  %i.q = getelementptr i8, ptr %i.j, i64 %.idx.i  ; 4 uses
  %.not3.i4.i.i6.i4.i = icmp eq i32 %.v.v.i4.i2.i, 0
  br i1 %.not3.i4.i.i6.i4.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl14OptionCategoryEE5beginEv.exit, label %.lr.ph.i5.i.i7.i5.i

.lr.ph.i5.i.i7.i5.i:                              ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit, %.critedge2.i7.i.i9.i11.i
  %.sroa.0.3.i6.i = phi ptr [ %i.s, %.critedge2.i7.i.i9.i11.i ], [ %i.j, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit ] ; 3 uses
  %i.r = load ptr, ptr %.sroa.0.3.i6.i, align 8, !tbaa !66
  %switch.i6.i.i8.i7.i = icmp ugt ptr %i.r, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i7.i, label %.critedge2.i7.i.i9.i11.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl14OptionCategoryEE5beginEv.exit

.critedge2.i7.i.i9.i11.i:                         ; preds = %.lr.ph.i5.i.i7.i5.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i12.i = icmp eq ptr %i.s, %i.q
  br i1 %.not.i8.i.i10.i12.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl14OptionCategoryEE5beginEv.exit, label %.lr.ph.i5.i.i7.i5.i, !llvm.loop !67

_ZNK4llvh15SmallPtrSetImplIPNS_2cl14OptionCategoryEE5beginEv.exit: ; preds = %.lr.ph.i5.i.i7.i5.i, %.critedge2.i7.i.i9.i11.i, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit
  %.sroa.0.4.i8.i = phi ptr [ %i.j, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit ], [ %.sroa.0.3.i6.i, %.lr.ph.i5.i.i7.i5.i ], [ %i.q, %.critedge2.i7.i.i9.i11.i ] ; 2 uses
  %i.t = load atomic ptr, ptr @_ZL12GlobalParser acquire, align 8
  %.not.i.i20 = icmp eq ptr %i.t, null
  br i1 %.not.i.i20, label %bb.c, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21

bb.c:                                             ; preds = %_ZNK4llvh15SmallPtrSetImplIPNS_2cl14OptionCategoryEE5beginEv.exit
  call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL12GlobalParser, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_117CommandLineParserEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_117CommandLineParserEE4callEPv) #28, !inline_history !61
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21: ; preds = %_ZNK4llvh15SmallPtrSetImplIPNS_2cl14OptionCategoryEE5beginEv.exit, %bb.c
  %i.u = load atomic ptr, ptr @_ZL12GlobalParser monotonic, align 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !65
  %i.z = icmp eq ptr %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 92
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.ad = load i32, ptr %i.ac, align 8
  %.v.v.i.i = select i1 %i.z, i32 %i.ab, i32 %i.ad
  %.v.i.i = zext i32 %.v.v.i.i to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.v.i.i ; 2 uses
  %.not119131 = icmp eq ptr %.sroa.0.4.i8.i, %i.ae
  br i1 %.not119131, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl14OptionCategoryEEppEv.exit
  %i.af = ptrtoint ptr %.sroa.15.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21
  %.sroa.15.0.lcssa = phi i64 [ 0, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21 ], [ %i.af, %._crit_edge.loopexit ]
  %.sroa.9.0.lcssa = phi ptr [ null, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21 ], [ %.sroa.9.1, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.0110.0.lcssa = phi ptr [ null, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21 ], [ %.sroa.0110.1, %._crit_edge.loopexit ] ; 7 uses
  %i.ag = ptrtoint ptr %.sroa.9.0.lcssa to i64
  %i.ah = ptrtoint ptr %.sroa.0110.0.lcssa to i64 ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = icmp slt i64 %i.aj, 2
  br i1 %i.ak, label %_ZN4llvh14array_pod_sortIN9__gnu_cxx17__normal_iteratorIPPNS_2cl14OptionCategoryESt6vectorIS5_SaIS5_EEEEEEvT_SB_PFiPKNSt15iterator_traitsISB_E10value_typeESG_E.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @qsort(ptr noundef nonnull %.sroa.0110.0.lcssa, i64 noundef %i.aj, i64 noundef 8, ptr noundef nonnull @_ZN12_GLOBAL__N_122CategorizedHelpPrinter21OptionCategoryCompareEPKPN4llvh2cl14OptionCategoryES6_) #28
  br label %_ZN4llvh14array_pod_sortIN9__gnu_cxx17__normal_iteratorIPPNS_2cl14OptionCategoryESt6vectorIS5_SaIS5_EEEEEEvT_SB_PFiPKNSt15iterator_traitsISB_E10value_typeESG_E.exit

_ZN4llvh14array_pod_sortIN9__gnu_cxx17__normal_iteratorIPPNS_2cl14OptionCategoryESt6vectorIS5_SaIS5_EEEEEEvT_SB_PFiPKNSt15iterator_traitsISB_E10value_typeESG_E.exit: ; preds = %._crit_edge, %bb.d
  %.not120138 = icmp eq ptr %.sroa.0110.0.lcssa, %.sroa.9.0.lcssa ; 2 uses
  br i1 %.not120138, label %._crit_edge141, label %.lr.ph140

.lr.ph:                                           ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl14OptionCategoryEEppEv.exit
  %.sroa.0110.0135 = phi ptr [ %.sroa.0110.1, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl14OptionCategoryEEppEv.exit ], [ null, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21 ] ; 5 uses
  %.sroa.9.0134 = phi ptr [ %.sroa.9.1, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl14OptionCategoryEEppEv.exit ], [ null, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21 ] ; 4 uses
  %.sroa.15.0133 = phi ptr [ %.sroa.15.1, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl14OptionCategoryEEppEv.exit ], [ null, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21 ] ; 2 uses
  %.sroa.0106.0132 = phi ptr [ %.sroa.0106.2, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl14OptionCategoryEEppEv.exit ], [ %.sroa.0.4.i8.i, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21 ] ; 2 uses
  %i.al = load ptr, ptr %.sroa.0106.0132, align 8, !tbaa !66 ; 2 uses
  %.not.i.i22 = icmp eq ptr %.sroa.9.0134, %.sroa.15.0133
  br i1 %.not.i.i22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  store ptr %i.al, ptr %.sroa.9.0134, align 8, !tbaa !381
  br label %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %.lr.ph
  %i.am = ptrtoint ptr %.sroa.9.0134 to i64
  %i.an = ptrtoint ptr %.sroa.0110.0135 to i64
end_hunk_0
