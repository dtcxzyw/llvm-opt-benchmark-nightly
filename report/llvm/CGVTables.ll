Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGVTables?download=true
inline.NumInlined: 3585
inline.NumDeleted: 2279
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK5clang7CodeGen14CodeGenVTables20addRelativeComponentERNS0_20ConstantArrayBuilderEPN4llvm8ConstantEjbb:bb.a
  %i.aq = load ptr, ptr %6, align 8, !tbaa !784
  %i.ar = call noundef ptr @_ZNK4llvm6Module17getGlobalVariableENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(1288) %i.v, ptr %i.aq, i64 %i.ap, i1 noundef zeroext true) #18 ; 2 uses
  %.not32 = icmp eq ptr %i.ar, null
  br i1 %.not32, label %bb.j, label %_ZNK5clang7CodeGen14CodeGenVTables20RemoveHwasanMetadataEPN4llvm11GlobalValueE.exit

bb.j:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i
  %i.as = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 96, i32 1) #18 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !713
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 5, ptr %i.av, align 8, !tbaa !722
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.aw, align 1, !tbaa !721
  %i.ax = load ptr, ptr %6, align 8, !tbaa !784
  store ptr %i.ax, ptr %7, align 8, !tbaa !403
  %i.ay = load i64, ptr %i.ad, align 8, !tbaa !785
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !403
  call void @_ZN4llvm14GlobalVariableC1ERNS_6ModuleEPNS_4TypeEbNS_11GlobalValue12LinkageTypesEPNS_8ConstantERKNS_5TwineEPS0_NS5_15ThreadLocalModeESt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(89) %i.as, ptr noundef nonnull align 8 dereferenceable(1288) %i.v, ptr noundef %i.au, i1 noundef zeroext true, i32 noundef %i.w, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef null, i32 noundef 0, i64 0, i1 noundef zeroext false) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 8            ; 2 uses
  %i.bc = and i32 %i.bb, -16577
  %i.bd = or disjoint i32 %i.bc, 16512            ; 2 uses
  store i32 %i.bd, ptr %i.ba, align 8
  %i.be = and i32 %i.bb, 15
  %i.bf = add nsw i32 %i.be, -7
  %spec.select.i.i33 = icmp ult i32 %i.bf, 2
  br i1 %spec.select.i.i33, label %bb.k, label %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.i

_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.i: ; preds = %bb.j
  %i.bg = and i32 %i.bd, -113
  %i.bh = or disjoint i32 %i.bg, 16
  store i32 %i.bh, ptr %i.ba, align 8
  %i.bi = load ptr, ptr %6, align 8, !tbaa !784
  %i.bj = load i64, ptr %i.ad, align 8, !tbaa !785
  %i.bk = call noundef ptr @_ZN4llvm6Module17getOrInsertComdatENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.v, ptr %i.bi, i64 %i.bj) #18
  call void @_ZN4llvm12GlobalObject9setComdatEPNS_6ComdatE(ptr noundef nonnull align 8 dereferenceable(60) %i.as, ptr noundef %i.bk) #18
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.i, %bb.j
  %i.bl = load ptr, ptr %0, align 8, !tbaa !399, !nonnull !396, !align !397
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !816, !nonnull !396, !align !397
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 232
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bo, align 8
  %i.bp = and i64 %.sroa.0.0.copyload.i.i, 16
  %.not.i.i.not.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.not.i, label %_ZNK5clang7CodeGen14CodeGenVTables20RemoveHwasanMetadataEPN4llvm11GlobalValueE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load i32, ptr %i.ba, align 8
  %i.br = and i32 %i.bq, 65536
  %.not.i = icmp eq i32 %i.br, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = call noundef nonnull align 4 dereferenceable(1) ptr @_ZNK4llvm11GlobalValue20getSanitizerMetadataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.as) #18
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !403
  %i.bu = or i8 %i.bt, 2
  %i.bv = zext i8 %i.bu to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i = phi i32 [ %i.bv, %bb.m ], [ 2, %bb.l ]
  call void @_ZN4llvm11GlobalValue20setSanitizerMetadataENS0_17SanitizerMetadataE(ptr noundef nonnull align 8 dereferenceable(48) %i.as, i32 %.sroa.0.0.i) #18
  br label %_ZNK5clang7CodeGen14CodeGenVTables20RemoveHwasanMetadataEPN4llvm11GlobalValueE.exit

_ZNK5clang7CodeGen14CodeGenVTables20RemoveHwasanMetadataEPN4llvm11GlobalValueE.exit: ; preds = %bb.n, %bb.k, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i
  %.029 = phi ptr [ %i.ar, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i ], [ %i.as, %bb.k ], [ %i.as, %bb.n ]
  %i.bw = load ptr, ptr %6, align 8, !tbaa !784   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.ac
  br i1 %i.bx, label %_ZN4llvm11SmallVectorIcLj16EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang7CodeGen14CodeGenVTables20RemoveHwasanMetadataEPN4llvm11GlobalValueE.exit
  call void @free(ptr noundef %i.bw) #18
  br label %_ZN4llvm11SmallVectorIcLj16EED2Ev.exit

_ZN4llvm11SmallVectorIcLj16EED2Ev.exit:           ; preds = %_ZNK5clang7CodeGen14CodeGenVTables20RemoveHwasanMetadataEPN4llvm11GlobalValueE.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11SmallVectorIcLj16EED2Ev.exit, %bb.f
  %.0 = phi ptr [ %i.y, %bb.f ], [ %.029, %_ZN4llvm11SmallVectorIcLj16EED2Ev.exit ]
  %i.by = load ptr, ptr %0, align 8, !tbaa !399, !nonnull !396, !align !397
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !811
  %i.cb = zext i32 %3 to i64
  %i.cc = call noundef ptr @_ZN5clang7CodeGen28ConstantAggregateBuilderBase27getRelativeOffsetToPositionEPN4llvm11IntegerTypeEPNS2_8ConstantEm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.ca, ptr noundef %.0, i64 noundef %i.cb) #18 ; 2 uses
  %i.cd = load ptr, ptr %1, align 8, !tbaa !815, !nonnull !396, !align !397 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !733 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !734
  %.not.i.i.i37 = icmp ult i32 %i.cg, %i.ci
  br i1 %.not.i.i.i37, label %bb.r, label %bb.q, !prof !668

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef %i.cc)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.r:                                             ; preds = %bb.p
  %i.cj = zext i32 %i.cg to i64
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !658
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  store ptr %i.cc, ptr %i.cl, align 1
  %i.cm = load i32, ptr %i.cf, align 8, !tbaa !733
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cf, align 8, !tbaa !733
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit: ; preds = %bb.r, %bb.q, %bb.d, %bb.c
  ret void
}

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm18DSOLocalEquivalent3getEPNS_11GlobalValueE(ptr noundef) local_unnamed_addr #1

declare void @_ZN4llvm14GlobalVariableC1ERNS_6ModuleEPNS_4TypeEbNS_11GlobalValue12LinkageTypesEPNS_8ConstantERKNS_5TwineEPS0_NS5_15ThreadLocalModeESt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef, i32 noundef, i64, i1 noundef zeroext) unnamed_addr #1

declare void @_ZN4llvm12GlobalObject9setComdatEPNS_6ComdatE(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm6Module17getOrInsertComdatENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang7CodeGen14CodeGenVTables20RemoveHwasanMetadataEPN4llvm11GlobalValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !399, !nonnull !396, !align !397
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !816, !nonnull !396, !align !397
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.sroa.0.0.copyload.i, 16
  %.not.i.i.not = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 65536
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 4 dereferenceable(1) ptr @_ZNK4llvm11GlobalValue20getSanitizerMetadataEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  %i.j = load i8, ptr %i.i, align 4, !tbaa !403
  %i.k = or i8 %i.j, 2
  %i.l = zext i8 %i.k to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i32 [ %i.l, %bb.c ], [ 2, %bb.b ]
  tail call void @_ZN4llvm11GlobalValue20setSanitizerMetadataENS0_17SanitizerMetadataE(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 %.sroa.0.0) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK5clang7CodeGen13CodeGenModule22getVTableComponentTypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4008) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !816, !nonnull !396, !align !397
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 16
  %.not = icmp eq i64 %i.e, 0
  %.0.in.v = select i1 %.not, i64 112, i64 24
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !403
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK5clang7CodeGen14CodeGenVTables22getVTableComponentTypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !399, !nonnull !396, !align !397 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !816, !nonnull !396, !align !397
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 16
  %.not.i = icmp eq i64 %i.f, 0
  %.0.in.v.i = select i1 %.not.i, i64 112, i64 24
  %.0.in.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.in.v.i
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !403
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen14CodeGenVTables18addVTableComponentERNS0_20ConstantArrayBuilderERKNS_12VTableLayoutEjPN4llvm8ConstantERjjb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !658
  %i.c = zext i32 %3 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !399, !nonnull !396, !align !397 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !816, !nonnull !396, !align !397
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 16
  %.not = icmp eq i64 %i.j, 0                     ; 6 uses
  %_ZL23AddRelativeLayoutOffsetRKN5clang7CodeGen13CodeGenModuleERNS0_20ConstantArrayBuilderENS_9CharUnitsE._ZL22AddPointerLayoutOffsetRKN5clang7CodeGen13CodeGenModuleERNS0_20ConstantArrayBuilderENS_9CharUnitsE = select i1 %.not, ptr @_ZL22AddPointerLayoutOffsetRKN5clang7CodeGen13CodeGenModuleERNS0_20ConstantArrayBuilderENS_9CharUnitsE, ptr @_ZL23AddRelativeLayoutOffsetRKN5clang7CodeGen13CodeGenModuleERNS0_20ConstantArrayBuilderENS_9CharUnitsE ; 3 uses
  %i.k = load i64, ptr %i.d, align 8, !tbaa !818  ; 4 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 7
  switch i32 %i.m, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.j
    i32 5, label %bb.j
    i32 6, label %bb.j
    i32 7, label %bb.bf
  ]

bb.b:                                             ; preds = %bb.a
  %i.n = ashr i64 %i.k, 3
  tail call void %_ZL23AddRelativeLayoutOffsetRKN5clang7CodeGen13CodeGenModuleERNS0_20ConstantArrayBuilderENS_9CharUnitsE._ZL22AddPointerLayoutOffsetRKN5clang7CodeGen13CodeGenModuleERNS0_20ConstantArrayBuilderENS_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(4008) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %i.n) #18, !callees !1376
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.c:                                             ; preds = %bb.a
  %8 = ashr i64 %i.k, 3
  tail call void %_ZL23AddRelativeLayoutOffsetRKN5clang7CodeGen13CodeGenModuleERNS0_20ConstantArrayBuilderENS_9CharUnitsE._ZL22AddPointerLayoutOffsetRKN5clang7CodeGen13CodeGenModuleERNS0_20ConstantArrayBuilderENS_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(4008) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %8) #18, !callees !1376
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.d:                                             ; preds = %bb.a
  %9 = ashr i64 %i.k, 3
  tail call void %_ZL23AddRelativeLayoutOffsetRKN5clang7CodeGen13CodeGenModuleERNS0_20ConstantArrayBuilderENS_9CharUnitsE._ZL22AddPointerLayoutOffsetRKN5clang7CodeGen13CodeGenModuleERNS0_20ConstantArrayBuilderENS_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(4008) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %9) #18, !callees !1376
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK5clang7CodeGen14CodeGenVTables20addRelativeComponentERNS0_20ConstantArrayBuilderEPN4llvm8ConstantEjbb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %4, i32 noundef %6, i1 noundef zeroext %7, i1 zeroext poison)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.g:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %1, align 8, !tbaa !815, !nonnull !396, !align !397 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !733  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !734
  %.not.i.i = icmp ult i32 %i.r, %i.t
  br i1 %.not.i.i, label %bb.i, label %bb.h, !prof !668

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef %4)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.i:                                             ; preds = %bb.g
  %i.u = zext i32 %i.r to i64
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !658
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  store ptr %4, ptr %i.w, align 1
  %i.x = load i32, ptr %i.q, align 8, !tbaa !733
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.q, align 8, !tbaa !733
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !395, !nonnull !396, !align !397 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 17712
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1377 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 2600
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1185, !nonnull !396, !align !397
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !402
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 808
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(517) %i.ac, ptr noundef nonnull align 8 dereferenceable(1136) %i.ae) #18
  %i.aj = tail call { i64, i32 } @_ZNK5clang15VTableComponent13getGlobalDeclEb(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i1 noundef zeroext %i.ai) ; 2 uses
  %.fca.0.extract44 = extractvalue { i64, i32 } %i.aj, 0 ; 12 uses
  %.fca.1.extract45 = extractvalue { i64, i32 } %i.aj, 1 ; 11 uses
  %i.ak = load i32, ptr %5, align 4, !tbaa !666   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.an = load i32, ptr %i.am, align 8, !tbaa !733
  %i.ao = icmp ugt i32 %i.an, %i.ak
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = zext i32 %i.ak to i64
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !658
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1379
  %i.at = icmp eq i64 %i.as, %i.c
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.au = phi i1 [ false, %bb.j ], [ %i.at, %bb.k ] ; 2 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !399, !nonnull !396, !align !397
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 152
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !816, !nonnull !396, !align !397 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, 137438953472
  %.not93 = icmp eq i64 %i.ba, 0
  %.pre199 = and i64 %.fca.0.extract44, -8
  %.pre200 = inttoptr i64 %.pre199 to ptr         ; 7 uses
  br i1 %.not93, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = and i64 %i.bc, 70368744177664
  %.not94 = icmp eq i64 %i.bd, 0
  %i.be = getelementptr inbounds nuw i8, ptr %.pre200, i64 28 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = and i32 %i.bf, 256
  %.not.i109 = icmp eq i32 %i.bg, 0               ; 2 uses
  br i1 %.not94, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i109, label %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread176, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %.pre200) #18 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !658 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !733 ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %.idx.i.i = shl nuw nsw i64 %i.bl, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i.i ; 2 uses
  %.not.i.i108 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i108, label %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread176, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %bb.p
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.br, %bb.p ], [ %i.bi, %bb.o ] ; 3 uses
  %i.bn = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !802
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  %i.bp = load i16, ptr %i.bo, align 4
  %i.bq = icmp eq i16 %i.bp, 169
  br i1 %i.bq, label %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.br, %i.bm
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread176, label %.lr.ph.i.i.i.i.i, !llvm.loop !1373

bb.q:                                             ; preds = %bb.m
  br i1 %.not.i109, label %_ZNK5clang4Decl7hasAttrINS_12CUDAHostAttrEEEbv.exit.thread174, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %.pre200) #18 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !658 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !733 ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %.idx.i.i110 = shl nuw nsw i64 %i.bw, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i.i110 ; 2 uses
  %.not.i.i111 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i111, label %_ZNK5clang4Decl7hasAttrINS_12CUDAHostAttrEEEbv.exit.thread174, label %.lr.ph.i.i.i.i.i112

.lr.ph.i.i.i.i.i112:                              ; preds = %bb.r, %bb.s
  %.sroa.07.1.i.i.i.i113 = phi ptr [ %i.cc, %bb.s ], [ %i.bt, %bb.r ] ; 3 uses
  %i.by = load ptr, ptr %.sroa.07.1.i.i.i.i113, align 8, !tbaa !802
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 36
  %i.ca = load i16, ptr %i.bz, align 4
  %i.cb = icmp eq i16 %i.ca, 174
  br i1 %i.cb, label %_ZNK5clang4Decl7hasAttrINS_12CUDAHostAttrEEEbv.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i112
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i113, i64 8 ; 2 uses
  %.not.i.i.i.i.i114 = icmp eq ptr %i.cc, %i.bx
  br i1 %.not.i.i.i.i.i114, label %_ZNK5clang4Decl7hasAttrINS_12CUDAHostAttrEEEbv.exit.thread174, label %.lr.ph.i.i.i.i.i112, !llvm.loop !1374

_ZNK5clang4Decl7hasAttrINS_12CUDAHostAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i112
  %.not182 = icmp eq ptr %.sroa.07.1.i.i.i.i113, %i.bx
  br i1 %.not182, label %_ZNK5clang4Decl7hasAttrINS_12CUDAHostAttrEEEbv.exit.thread174, label %.critedge

_ZNK5clang4Decl7hasAttrINS_12CUDAHostAttrEEEbv.exit.thread174: ; preds = %bb.s, %bb.r, %bb.q, %_ZNK5clang4Decl7hasAttrINS_12CUDAHostAttrEEEbv.exit
  %i.cd = load i32, ptr %i.be, align 4
  %i.ce = and i32 %i.cd, 256
  %.not.i116 = icmp eq i32 %i.ce, 0
  br i1 %.not.i116, label %.critedge, label %bb.t

bb.t:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_12CUDAHostAttrEEEbv.exit.thread174
  %i.cf = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %.pre200) #18 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !658 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !733 ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %.idx.i.i117 = shl nuw nsw i64 %i.cj, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i.i117 ; 2 uses
  %.not.i.i118 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i118, label %.critedge, label %.lr.ph.i.i.i.i.i119

.lr.ph.i.i.i.i.i119:                              ; preds = %bb.t, %bb.u
  %.sroa.07.1.i.i.i.i120 = phi ptr [ %i.cp, %bb.u ], [ %i.cg, %bb.t ] ; 3 uses
  %i.cl = load ptr, ptr %.sroa.07.1.i.i.i.i120, align 8, !tbaa !802
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 36
  %i.cn = load i16, ptr %i.cm, align 4
  %i.co = icmp eq i16 %i.cn, 169
  br i1 %i.co, label %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit124, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i119
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i120, i64 8 ; 2 uses
  %.not.i.i.i.i.i121 = icmp eq ptr %i.cp, %i.ck
  br i1 %.not.i.i.i.i.i121, label %.critedge, label %.lr.ph.i.i.i.i.i119, !llvm.loop !1373

_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit124: ; preds = %.lr.ph.i.i.i.i.i119
  %.not183 = icmp eq ptr %.sroa.07.1.i.i.i.i120, %i.ck
  br i1 %.not183, label %.critedge, label %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread176

_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.not181 = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.bm
  br i1 %.not181, label %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread176, label %.critedge

_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread176: ; preds = %bb.p, %bb.o, %bb.n, %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit124, %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit
  br i1 %i.au, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread176
  %i.cq = load i32, ptr %5, align 4, !tbaa !666
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %5, align 4, !tbaa !666
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK5clang4Decl7hasAttrINS_14CUDADeviceAttrEEEbv.exit.thread176
  %i.cs = load ptr, ptr %0, align 8, !tbaa !399, !nonnull !396, !align !397
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 112
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !403
  %i.cv = tail call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.cu) #18 ; 2 uses
  %i.cw = load ptr, ptr %1, align 8, !tbaa !815, !nonnull !396, !align !397 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !733 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5clang7CodeGen14CodeGenVTables18addVTableComponentERNS0_20ConstantArrayBuilderERKNS_12VTableLayoutEjPN4llvm8ConstantERjjb:bb.a
  %i.gw = add i32 %i.gs, 1
  store i32 %i.gw, ptr %5, align 4, !tbaa !666
  %i.gx = tail call noundef ptr @_ZN5clang7CodeGen14CodeGenVTables14maybeEmitThunkENS_10GlobalDeclERKNS_9ThunkInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.fca.0.extract44, i32 %.fca.1.extract45, ptr noundef nonnull align 8 dereferenceable(56) %i.gv, i1 noundef zeroext true) ; 2 uses
  %i.gy = load ptr, ptr %0, align 8, !tbaa !399, !nonnull !396, !align !397
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 184
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !1186, !nonnull !396, !align !397
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1908
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = and i32 %i.hc, 3
  %.not187 = icmp eq i32 %i.hd, 0
  br i1 %.not187, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.he = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !1383
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = and i64 %.fca.0.extract44, 7
  %i.hi = or i64 %i.hh, %i.hg
  br label %bb.av

bb.at:                                            ; preds = %bb.aq
  %i.hj = load ptr, ptr %0, align 8, !tbaa !399, !nonnull !396, !align !397
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 400
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !619
  %i.hm = tail call noundef ptr @_ZN5clang7CodeGen12CodeGenTypes24GetFunctionTypeForVTableENS_10GlobalDeclE(ptr noundef nonnull align 8 dereferenceable(232) %i.hl, i64 %.fca.0.extract44, i32 %.fca.1.extract45) #18
  %i.hn = load ptr, ptr %0, align 8, !tbaa !399, !nonnull !396, !align !397
  %i.ho = tail call noundef ptr @_ZN5clang7CodeGen13CodeGenModule17GetAddrOfFunctionENS_10GlobalDeclEPN4llvm4TypeEbbNS0_15ForDefinition_tE(ptr noundef nonnull align 8 dereferenceable(4008) %i.hn, i64 %.fca.0.extract44, i32 %.fca.1.extract45, ptr noundef %i.hm, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #18 ; 2 uses
  %i.hp = load ptr, ptr %0, align 8, !tbaa !399, !nonnull !396, !align !397
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 184
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !1186, !nonnull !396, !align !397
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 1908
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = and i32 %i.ht, 3
  %.not186 = icmp eq i32 %i.hu, 0
  br i1 %.not186, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !398
  %i.hx = tail call { i64, i32 } @_ZN5clang20ItaniumVTableContext18findOriginalMethodENS_10GlobalDeclE(ptr noundef nonnull align 8 dereferenceable(136) %i.hw, i64 %.fca.0.extract44, i32 %.fca.1.extract45) #18 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.hx, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.hx, 1
  br label %bb.av

bb.av:                                            ; preds = %bb.ai, %"_ZZN5clang7CodeGen14CodeGenVTables18addVTableComponentERNS0_20ConstantArrayBuilderERKNS_12VTableLayoutEjPN4llvm8ConstantERjjbENK3$_0clENS7_9StringRefE.exit136", %bb.z, %"_ZZN5clang7CodeGen14CodeGenVTables18addVTableComponentERNS0_20ConstantArrayBuilderERKNS_12VTableLayoutEjPN4llvm8ConstantERjjbENK3$_0clENS7_9StringRefE.exit", %bb.at, %bb.au, %bb.ar, %bb.as
  %.sroa.0154.0 = phi i64 [ %.fca.0.extract44, %bb.at ], [ %.fca.0.extract44, %bb.z ], [ %i.hi, %bb.as ], [ %.fca.0.extract44, %bb.ar ], [ %.fca.0.extract, %bb.au ], [ %.fca.0.extract44, %"_ZZN5clang7CodeGen14CodeGenVTables18addVTableComponentERNS0_20ConstantArrayBuilderERKNS_12VTableLayoutEjPN4llvm8ConstantERjjbENK3$_0clENS7_9StringRefE.exit" ], [ %.fca.0.extract44, %"_ZZN5clang7CodeGen14CodeGenVTables18addVTableComponentERNS0_20ConstantArrayBuilderERKNS_12VTableLayoutEjPN4llvm8ConstantERjjbENK3$_0clENS7_9StringRefE.exit136" ], [ %.fca.0.extract44, %bb.ai ]
  %.sroa.14.0 = phi i32 [ %.fca.1.extract45, %bb.at ], [ %.fca.1.extract45, %bb.z ], [ %.fca.1.extract45, %bb.as ], [ %.fca.1.extract45, %bb.ar ], [ %.fca.1.extract, %bb.au ], [ %.fca.1.extract45, %"_ZZN5clang7CodeGen14CodeGenVTables18addVTableComponentERNS0_20ConstantArrayBuilderERKNS_12VTableLayoutEjPN4llvm8ConstantERjjbENK3$_0clENS7_9StringRefE.exit" ], [ %.fca.1.extract45, %"_ZZN5clang7CodeGen14CodeGenVTables18addVTableComponentERNS0_20ConstantArrayBuilderERKNS_12VTableLayoutEjPN4llvm8ConstantERjjbENK3$_0clENS7_9StringRefE.exit136" ], [ %.fca.1.extract45, %bb.ai ]
  %.091 = phi ptr [ %i.ho, %bb.at ], [ %i.dl, %bb.z ], [ %i.gx, %bb.as ], [ %i.gx, %bb.ar ], [ %i.ho, %bb.au ], [ %.0.i, %"_ZZN5clang7CodeGen14CodeGenVTables18addVTableComponentERNS0_20ConstantArrayBuilderERKNS_12VTableLayoutEjPN4llvm8ConstantERjjbENK3$_0clENS7_9StringRefE.exit" ], [ %.0.i135, %"_ZZN5clang7CodeGen14CodeGenVTables18addVTableComponentERNS0_20ConstantArrayBuilderERKNS_12VTableLayoutEjPN4llvm8ConstantERjjbENK3$_0clENS7_9StringRefE.exit136" ], [ %i.ff, %bb.ai ] ; 4 uses
  br i1 %.not, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZNK5clang7CodeGen14CodeGenVTables20addRelativeComponentERNS0_20ConstantArrayBuilderEPN4llvm8ConstantEjbb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.091, i32 noundef %6, i1 noundef zeroext %7, i1 zeroext poison)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.ax:                                            ; preds = %bb.av
  %i.hy = getelementptr inbounds nuw i8, ptr %.091, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !713 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load i32, ptr %i.ia, align 8            ; 2 uses
  %i.ic = and i32 %i.ib, 254
  %spec.select.i.i.i = icmp eq i32 %i.ic, 18
  br i1 %spec.select.i.i.i, label %bb.ay, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

bb.ay:                                            ; preds = %bb.ax
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !1190
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !710
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit:    ; preds = %bb.ax, %bb.ay
  %i.ig = phi i32 [ %.pre.i, %bb.ay ], [ %i.ib, %bb.ax ]
  %i.ih = load ptr, ptr %0, align 8, !tbaa !399, !nonnull !396, !align !397 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 112
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !403 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load i32, ptr %i.ik, align 8            ; 2 uses
  %i.im = and i32 %i.il, 254
  %spec.select.i.i.i141 = icmp eq i32 %i.im, 18
  br i1 %spec.select.i.i.i141, label %bb.az, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit144

bb.az:                                            ; preds = %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !1190
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !710
  %.phi.trans.insert.i142 = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %.pre.i143 = load i32, ptr %.phi.trans.insert.i142, align 8
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit144

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit144: ; preds = %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit, %bb.az
  %i.iq = phi i32 [ %.pre.i143, %bb.az ], [ %i.il, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit ]
  %.not97.unshifted = xor i32 %i.iq, %i.ig
  %.not97 = icmp ult i32 %.not97.unshifted, 256
  br i1 %.not97, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit144
  %i.ir = tail call noundef ptr @_ZN4llvm12ConstantExpr16getAddrSpaceCastEPNS_8ConstantEPNS_4TypeEb(ptr noundef nonnull %.091, ptr noundef nonnull %i.ij, i1 noundef zeroext false) #18
  %.pre = load ptr, ptr %0, align 8, !tbaa !399
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit144
  %i.is = phi ptr [ %.pre, %bb.ba ], [ %i.ih, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit144 ]
  %.192 = phi ptr [ %i.ir, %bb.ba ], [ %.091, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit144 ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 184
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !1186, !nonnull !396, !align !397
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 1908 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = and i32 %i.iw, 3
  %.not191 = icmp eq i32 %i.ix, 0
  br i1 %.not191, label %.critedge99, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZN5clang7CodeGen28ConstantAggregateBuilderBase16addSignedPointerEPN4llvm8ConstantERKNS_17PointerAuthSchemaENS_10GlobalDeclENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %.192, ptr noundef nonnull align 4 dereferenceable(4) %i.iv, i64 %.sroa.0154.0, i32 %.sroa.14.0, i64 0) #18
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

.critedge99:                                      ; preds = %bb.bb
  %i.iy = load ptr, ptr %1, align 8, !tbaa !815, !nonnull !396, !align !397 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 3 uses
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !733 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 20
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !734
  %.not.i.i145 = icmp ult i32 %i.jb, %i.jd
  br i1 %.not.i.i145, label %bb.be, label %bb.bd, !prof !668

bb.bd:                                            ; preds = %.critedge99
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, ptr noundef %.192)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.be:                                            ; preds = %.critedge99
  %i.je = zext i32 %i.jb to i64
  %i.jf = load ptr, ptr %i.iz, align 8, !tbaa !658
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.je
  store ptr %.192, ptr %i.jg, align 1
  %i.jh = load i32, ptr %i.ja, align 8, !tbaa !733
  %i.ji = add i32 %i.jh, 1
  store i32 %i.ji, ptr %i.ja, align 8, !tbaa !733
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.bf:                                            ; preds = %bb.a
  br i1 %.not, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !811
  %i.jl = tail call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.jk) #18 ; 2 uses
  %i.jm = load ptr, ptr %1, align 8, !tbaa !815, !nonnull !396, !align !397 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 16 ; 3 uses
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !733 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 20
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !734
  %.not.i.i147 = icmp ult i32 %i.jp, %i.jr
  br i1 %.not.i.i147, label %bb.bi, label %bb.bh, !prof !668

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef %i.jl)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.bi:                                            ; preds = %bb.bg
  %i.js = zext i32 %i.jp to i64
  %i.jt = load ptr, ptr %i.jn, align 8, !tbaa !658
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.js
  store ptr %i.jl, ptr %i.ju, align 1
  %i.jv = load i32, ptr %i.jo, align 8, !tbaa !733
  %i.jw = add i32 %i.jv, 1
  store i32 %i.jw, ptr %i.jo, align 8, !tbaa !733
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.bj:                                            ; preds = %bb.bf
  %i.jx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !403
  %i.jz = tail call noundef ptr @_ZN4llvm19ConstantPointerNull3getEPNS_11PointerTypeE(ptr noundef %i.jy) #18 ; 2 uses
  %i.ka = load ptr, ptr %1, align 8, !tbaa !815, !nonnull !396, !align !397 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 3 uses
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !733 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 20
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !734
  %.not.i.i.i = icmp ult i32 %i.kd, %i.kf
  br i1 %.not.i.i.i, label %bb.bl, label %bb.bk, !prof !668

bb.bk:                                            ; preds = %bb.bj
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.kb, ptr noundef %i.jz)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.bl:                                            ; preds = %bb.bj
  %i.kg = zext i32 %i.kd to i64
  %i.kh = load ptr, ptr %i.kb, align 8, !tbaa !658
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.kg
  store ptr %i.jz, ptr %i.ki, align 1
  %i.kj = load i32, ptr %i.kc, align 8, !tbaa !733
  %i.kk = add i32 %i.kj, 1
  store i32 %i.kk, ptr %i.kc, align 8, !tbaa !733
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

default.unreachable:                              ; preds = %bb.a
  unreachable

_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit: ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.x, %bb.y, %bb.be, %bb.bd, %bb.bc, %bb.aw, %bb.i, %bb.h, %bb.f, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL23AddRelativeLayoutOffsetRKN5clang7CodeGen13CodeGenModuleERNS0_20ConstantArrayBuilderENS_9CharUnitsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4008) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !811
  %i.c = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.b, i64 noundef %2, i1 noundef zeroext true, i1 noundef zeroext false) #18 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !815, !nonnull !396, !align !397 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !733  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !734
  %.not.i.i = icmp ult i32 %i.g, %i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !668

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef %i.c)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !658
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  store ptr %i.c, ptr %i.l, align 1
  %i.m = load i32, ptr %i.f, align 8, !tbaa !733
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8, !tbaa !733
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL22AddPointerLayoutOffsetRKN5clang7CodeGen13CodeGenModuleERNS0_20ConstantArrayBuilderENS_9CharUnitsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4008) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !403
  %i.c = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.b, i64 noundef %2, i1 noundef zeroext true, i1 noundef zeroext false) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !403
  %i.f = tail call noundef ptr @_ZN4llvm12ConstantExpr11getIntToPtrEPNS_8ConstantEPNS_4TypeEb(ptr noundef %i.c, ptr noundef %i.e, i1 noundef zeroext false) #18 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !815, !nonnull !396, !align !397 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !733  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !734
  %.not.i.i = icmp ult i32 %i.j, %i.l
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !668

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %i.f)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.c:                                             ; preds = %bb.a
  %i.m = zext i32 %i.j to i64
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !658
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  store ptr %i.f, ptr %i.o, align 1
  %i.p = load i32, ptr %i.i, align 8, !tbaa !733
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.i, align 8, !tbaa !733
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZNK5clang15VTableComponent13getGlobalDeclEb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !818    ; 2 uses
  %.0.v.i = and i64 %i.a, -8                      ; 4 uses
  %.0.i = inttoptr i64 %.0.v.i to ptr             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i, i64 28 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 127
  %i.e = icmp eq i32 %i.d, 37
  %spec.select.i.i = select i1 %i.e, ptr %.0.i, ptr null ; 2 uses
  %i.f = trunc i64 %i.a to i32
  %i.g = and i32 %i.f, 7
  switch i32 %i.g, label %bb.h [
    i32 4, label %bb.b
    i32 5, label %bb.f
    i32 6, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZNK5clang12FunctionDecl21isReferenceableKernelEv(ptr noundef nonnull align 8 dereferenceable(168) %.0.i) #18
  br i1 %i.h, label %bb.c, label %_ZN5clang10GlobalDeclC2EPKNS_12FunctionDeclEj.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 4
  %i.j = and i32 %i.i, 256
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_16DeviceKernelAttrEEEbv.exit.thread2.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %.0.i) #18 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !658  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !733  ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.o, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_16DeviceKernelAttrEEEbv.exit.thread2.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %bb.e
  %.sroa.07.1.i.i.i.i.i.i = phi ptr [ %i.u, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  %i.q = load ptr, ptr %.sroa.07.1.i.i.i.i.i.i, align 8, !tbaa !802
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.s = load i16, ptr %i.r, align 4
  %i.t = icmp eq i16 %i.s, 212
  br i1 %i.t, label %_ZNK5clang4Decl7hasAttrINS_16DeviceKernelAttrEEEbv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_16DeviceKernelAttrEEEbv.exit.thread2.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZNK5clang4Decl7hasAttrINS_16DeviceKernelAttrEEEbv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not.i.i = icmp eq ptr %.sroa.07.1.i.i.i.i.i.i, %i.p
  br i1 %.not.i.i, label %_ZNK5clang4Decl7hasAttrINS_16DeviceKernelAttrEEEbv.exit.thread2.i.i, label %_ZN5clang10GlobalDeclC2EPKNS_12FunctionDeclEj.exit

_ZNK5clang4Decl7hasAttrINS_16DeviceKernelAttrEEEbv.exit.thread2.i.i: ; preds = %bb.e, %_ZNK5clang4Decl7hasAttrINS_16DeviceKernelAttrEEEbv.exit.i.i, %bb.d, %bb.c
  %i.v = tail call noundef nonnull align 8 dereferenceable(1136) ptr @_ZNK5clang4Decl11getLangOptsEv(ptr noundef nonnull align 8 dereferenceable(33) %.0.i) #20
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load i64, ptr %i.w, align 8
  %i.y = lshr i64 %i.x, 46
  %.lobit.i = and i64 %i.y, 1
  %i.z = or disjoint i64 %.lobit.i, %.0.v.i
  %i.aa = xor i64 %i.z, 1
  br label %_ZN5clang10GlobalDeclC2EPKNS_12FunctionDeclEj.exit

bb.f:                                             ; preds = %bb.a
  %i.ab = ptrtoint ptr %spec.select.i.i to i64
  %i.ac = or disjoint i64 %i.ab, 1
  br label %_ZN5clang10GlobalDeclC2EPKNS_12FunctionDeclEj.exit

bb.g:                                             ; preds = %bb.a
  %i.ad = ptrtoint ptr %spec.select.i.i to i64
  %i.ae = select i1 %1, i64 5, i64 0
  %i.af = or disjoint i64 %i.ae, %i.ad
  br label %_ZN5clang10GlobalDeclC2EPKNS_12FunctionDeclEj.exit

bb.h:                                             ; preds = %bb.a
  unreachable

_ZN5clang10GlobalDeclC2EPKNS_12FunctionDeclEj.exit: ; preds = %_ZNK5clang4Decl7hasAttrINS_16DeviceKernelAttrEEEbv.exit.i.i, %_ZNK5clang4Decl7hasAttrINS_16DeviceKernelAttrEEEbv.exit.thread2.i.i, %bb.b, %bb.g, %bb.f
  %.sroa.0.0 = phi i64 [ %i.af, %bb.g ], [ %i.ac, %bb.f ], [ %.0.v.i, %bb.b ], [ %.0.v.i, %_ZNK5clang4Decl7hasAttrINS_16DeviceKernelAttrEEEbv.exit.i.i ], [ %i.aa, %_ZNK5clang4Decl7hasAttrINS_16DeviceKernelAttrEEEbv.exit.thread2.i.i ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 0, 1
  ret { i64, i32 } %.fca.1.insert
}

declare noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef) local_unnamed_addr #1

declare { i64, i32 } @_ZN5clang20ItaniumVTableContext18findOriginalMethodENS_10GlobalDeclE(ptr noundef nonnull align 8 dereferenceable(136), i64, i32) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm12ConstantExpr16getAddrSpaceCastEPNS_8ConstantEPNS_4TypeEb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN5clang7CodeGen28ConstantAggregateBuilderBase16addSignedPointerEPN4llvm8ConstantERKNS_17PointerAuthSchemaENS_10GlobalDeclENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), i64, i32, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang7CodeGen14CodeGenVTables13getVTableTypeERKNS_12VTableLayoutE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1204", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !658
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !733
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 4, ptr %i.c, align 4, !tbaa !734
  %i.d = load ptr, ptr %0, align 8, !tbaa !399, !nonnull !396, !align !397 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !816, !nonnull !396, !align !397
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 16
  %.not.i.i = icmp eq i64 %i.i, 0
  %.0.in.v.i.i = select i1 %.not.i.i, i64 112, i64 24
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.in.v.i.i
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !403
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !733  ; 2 uses
  %.not7 = icmp eq i32 %i.k, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = zext i32 %i.k to i64
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !399
  %.pre10 = load ptr, ptr %2, align 8, !tbaa !658
  %.pre11 = load i32, ptr %i.b, align 8, !tbaa !733
  %i.n = zext i32 %.pre11 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.o = phi i64 [ %i.n, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.p = phi ptr [ %.pre10, %._crit_edge.loopexit ], [ %i.a, %bb.a ]
  %i.q = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !723, !nonnull !396, !align !397
  %i.t = call noundef ptr @_ZN4llvm10StructType3getERNS_11LLVMContextENS_8ArrayRefIPNS_4TypeEEEb(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr %i.p, i64 %i.o, i1 noundef zeroext false) #18
  %i.u = load ptr, ptr %2, align 8, !tbaa !658    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.u) #18
  br label %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit:   ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %i.t

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %i.z, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit ] ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !658    ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load i64, ptr %i.x, align 8, !tbaa !711
  %i.z = add nuw nsw i64 %indvars.iv, 1           ; 4 uses
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !733
  %i.ab = zext i32 %i.aa to i64
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = load i32, ptr %i.l, align 8, !tbaa !733
end_hunk_1
