Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/instruction-selector-x64?download=true
inline.NumInlined: 9610
inline.NumDeleted: 1506
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_b:bb.a
  store i32 %2, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1033.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.0.i.i, ptr %.sroa.1033.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.12.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ab, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k
  store i32 %3, ptr %0, align 8
  %.sroa.7.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %.sroa.7.0..sroa_idx27, align 4
  %.sroa.9.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.9.0..sroa_idx29, align 8
  %.sroa.1033.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.1033.0..sroa_idx34, align 8
  %.sroa.12.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.12.0..sroa_idx36, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ac, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.j, %bb.g, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_0clES5_S5_"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((32, 33)) %0, ptr nofree readonly captures(none) %.0.val.0.val, i32 %1, i32 %2) unnamed_addr #8 align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::compiler::BaseWithScaledIndexAndDisplacementMatch", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 -1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.e = call noundef zeroext i1 @_ZN2v88internal8compiler16MatchScaledIndexEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEPS5_PiPb(ptr noundef %.0.val.0.val, i32 %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null)
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8
  %i.f = load ptr, ptr %.0.val.0.val, align 8, !nonnull !5, !align !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.j = zext i32 %2 to i64
  %i.k = add i64 %i.i, %i.j
  %i.l = inttoptr i64 %i.k to ptr                 ; 9 uses
  %i.m = load i8, ptr %i.l, align 4
  switch i8 %i.m, label %bb.p [
    i8 60, label %bb.c
    i8 75, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load i8, ptr %i.n, align 4
  switch i8 %i.o, label %bb.p [
    i8 7, label %bb.d
    i8 0, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.p, align 4
  %i.q = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.r = add i64 %i.q, %i.i
  %i.s = inttoptr i64 %i.r to ptr                 ; 3 uses
  %i.t = load i8, ptr %i.s, align 4
  %.not.i = icmp eq i8 %i.t, 75
  br i1 %.not.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.v = load i8, ptr %i.u, align 4               ; 2 uses
  %switch.i = icmp ult i8 %i.v, 2
  br i1 %switch.i, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i8 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %sext.i.i = shl i64 %i.y, 32
  %i.z = ashr exact i64 %sext.i.i, 32
  %.0.i.i = select i1 %i.w, i64 %i.z, i64 %i.y
  store i64 %.0.i.i, ptr %i.c, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i.i24 = load i32, ptr %i.aa, align 4
  store i32 %.sroa.0.0.copyload.i.i24, ptr %3, align 8
  store i32 1, ptr %i.d, align 8
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.sroa.0.0.copyload.i.i25 = load i32, ptr %i.ab, align 4 ; 2 uses
  %i.ac = zext i32 %.sroa.0.0.copyload.i.i25 to i64
  %i.ad = add i64 %i.ac, %i.i
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = load i8, ptr %i.ae, align 4
  %.not.i26 = icmp eq i8 %i.af, 75
  br i1 %.not.i26, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ah = load i8, ptr %i.ag, align 4             ; 2 uses
  %switch.i28 = icmp ult i8 %i.ah, 2
  br i1 %switch.i28, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp eq i8 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %sext.i.i30 = shl i64 %i.ak, 32
  %i.al = ashr exact i64 %sext.i.i30, 32
  %.0.i.i31 = select i1 %i.ai, i64 %i.al, i64 %i.ak
  store i64 %.0.i.i31, ptr %i.c, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i.i33 = load i32, ptr %i.am, align 4
  store i32 %.sroa.0.0.copyload.i.i33, ptr %3, align 8
  br label %.critedge.sink.split

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i.i34 = load i32, ptr %i.an, align 4
  %i.ao = zext i32 %.sroa.0.0.copyload.i.i34 to i64
  %i.ap = add i64 %i.ao, %i.i
  %i.aq = inttoptr i64 %i.ap to ptr               ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 4
  %.not.i35 = icmp eq i8 %i.ar, 75
  br i1 %.not.i35, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.at = load i8, ptr %i.as, align 4             ; 2 uses
  %switch.i37 = icmp ult i8 %i.at, 2
  br i1 %switch.i37, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = icmp eq i8 %i.at, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %sext.i.i39 = shl i64 %i.aw, 32
  %i.ax = ashr exact i64 %sext.i.i39, 32
  %.0.i.i40 = select i1 %i.au, i64 %i.ax, i64 %i.aw
  store i64 %.0.i.i40, ptr %i.c, align 8
  store i32 %.sroa.0.0.copyload.i.i25, ptr %3, align 8
  br label %.critedge.sink.split

bb.m:                                             ; preds = %bb.k, %bb.j
  store i32 %2, ptr %3, align 8
  store i64 0, ptr %i.c, align 8
  br label %.critedge.sink.split

bb.n:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.az = load i8, ptr %i.ay, align 4             ; 2 uses
  %switch.i45 = icmp ult i8 %i.az, 2
  br i1 %switch.i45, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = icmp eq i8 %i.az, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %sext.i.i47 = shl i64 %i.bc, 32
  %i.bd = ashr exact i64 %sext.i.i47, 32
  %.0.i.i48 = select i1 %i.ba, i64 %i.bd, i64 %i.bc
  store i64 %.0.i.i48, ptr %i.c, align 8
  store i32 -1, ptr %3, align 8
  br label %.critedge.sink.split

bb.p:                                             ; preds = %bb.c, %bb.b, %bb.n
  store i32 %2, ptr %3, align 8
  store i64 0, ptr %i.c, align 8
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.i, %bb.m, %bb.l, %bb.o, %bb.p, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.a, %bb.d, %bb.e
  %.sink = phi i8 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.e ], [ 1, %.critedge.sink.split ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.be, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_1clES5_S5_"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((32, 33)) %0, ptr %.0.val.0.val.0.val.8.val, ptr nofree readonly captures(none) %.8.val, i32 %1, i32 %2) unnamed_addr #9 align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::compiler::BaseWithScaledIndexAndDisplacementMatch", align 8 ; 11 uses
  %4 = alloca %"struct.v8::internal::compiler::BaseWithScaledIndexAndDisplacementMatch", align 8 ; 11 uses
  %.sroa.0 = alloca %"struct.v8::internal::compiler::BaseWithScaledIndexAndDisplacementMatch", align 8 ; 5 uses
  %i.a = ptrtoint ptr %.0.val.0.val.0.val.8.val to i64
  %i.b = zext i32 %1 to i64
  %i.c = add i64 %i.b, %i.a
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = load i8, ptr %i.d, align 4
  %.not = icmp eq i8 %i.e, 60
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i8, ptr %i.f, align 4
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.i, align 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.0.0.copyload.i.i26 = load i32, ptr %i.j, align 4 ; 3 uses
  %.val25 = load ptr, ptr %.8.val, align 8
  %.val25.val = load ptr, ptr %.val25, align 8    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 -1, ptr %i.k, align 4, !noalias !8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.l, align 8, !noalias !8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 0, ptr %i.m, align 8, !noalias !8
  %i.n = call noundef zeroext i1 @_ZN2v88internal8compiler16MatchScaledIndexEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEPS5_PiPb(ptr noundef readonly %.val25.val, i32 %.sroa.0.0.copyload.i.i, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef null), !noalias !8
  br i1 %i.n, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.o, align 8, !noalias !8
  %i.p = load ptr, ptr %.val25.val, align 8, !noalias !8, !nonnull !5, !align !6
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !8
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = zext i32 %.sroa.0.0.copyload.i.i26 to i64
  %i.u = add i64 %i.s, %i.t
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = load i8, ptr %i.v, align 4, !noalias !8
  %.not.i.i = icmp eq i8 %i.w, 75
  br i1 %.not.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load i8, ptr %i.x, align 4, !noalias !8  ; 2 uses
  %switch.i.i = icmp ult i8 %i.y, 2
  br i1 %switch.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = icmp eq i8 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !8 ; 2 uses
  %sext.i.i.i = shl i64 %i.ab, 32
  %i.ac = ashr exact i64 %sext.i.i.i, 32
  %.0.i.i.i = select i1 %i.z, i64 %i.ac, i64 %i.ab
  store i64 %.0.i.i.i, ptr %i.m, align 8, !noalias !8
  store i32 %2, ptr %4, align 8, !noalias !8
  br label %"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_.exit.thread"

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ad = zext i32 %2 to i64
  %i.ae = add i64 %i.s, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr               ; 3 uses
  %i.ag = load i8, ptr %i.af, align 4, !noalias !8
  %.not.i8.i = icmp eq i8 %i.ag, 75
  br i1 %.not.i8.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ai = load i8, ptr %i.ah, align 4, !noalias !8 ; 2 uses
  %switch.i10.i = icmp ult i8 %i.ai, 2
  br i1 %switch.i10.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp eq i8 %i.ai, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !8 ; 2 uses
  %sext.i.i12.i = shl i64 %i.al, 32
  %i.am = ashr exact i64 %sext.i.i12.i, 32
  %.0.i.i13.i = select i1 %i.aj, i64 %i.am, i64 %i.al
  store i64 %.0.i.i13.i, ptr %i.m, align 8, !noalias !8
  store i32 %.sroa.0.0.copyload.i.i26, ptr %4, align 8, !noalias !8
  br label %"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_.exit.thread"

bb.j:                                             ; preds = %bb.h, %bb.g
  store i32 %1, ptr %4, align 8, !noalias !8
  store i32 %2, ptr %i.k, align 4, !noalias !8
  store i32 0, ptr %i.l, align 8, !noalias !8
  br label %"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_.exit.thread"

"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_.exit.thread": ; preds = %bb.f, %bb.i, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.an, align 8, !alias.scope !8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !8
  br label %bb.s

bb.k:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !11
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  store i32 -1, ptr %i.ap, align 4, !noalias !11
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aq, align 8, !noalias !11
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 0, ptr %i.ar, align 8, !noalias !11
  %i.as = call noundef zeroext i1 @_ZN2v88internal8compiler16MatchScaledIndexEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEPS5_PiPb(ptr noundef readonly %.val25.val, i32 %.sroa.0.0.copyload.i.i26, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, ptr noundef null), !noalias !11
  br i1 %i.as, label %bb.l, label %"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_.exit39"

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.at, align 8, !noalias !11
  %i.au = load ptr, ptr %.val25.val, align 8, !noalias !11, !nonnull !5, !align !6
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !11
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ay = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.az = add i64 %i.ax, %i.ay
  %i.ba = inttoptr i64 %i.az to ptr               ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 4, !noalias !11
  %.not.i.i30 = icmp eq i8 %i.bb, 75
  br i1 %.not.i.i30, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bd = load i8, ptr %i.bc, align 4, !noalias !11 ; 2 uses
  %switch.i.i36 = icmp ult i8 %i.bd, 2
  br i1 %switch.i.i36, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = icmp eq i8 %i.bd, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !11 ; 2 uses
  %sext.i.i.i37 = shl i64 %i.bg, 32
  %i.bh = ashr exact i64 %sext.i.i.i37, 32
  %.0.i.i.i38 = select i1 %i.be, i64 %i.bh, i64 %i.bg
  store i64 %.0.i.i.i38, ptr %i.ar, align 8, !noalias !11
  store i32 %2, ptr %3, align 8, !noalias !11
  br label %"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_.exit39.thread"

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.bi = zext i32 %2 to i64
  %i.bj = add i64 %i.ax, %i.bi
  %i.bk = inttoptr i64 %i.bj to ptr               ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 4, !noalias !11
  %.not.i8.i31 = icmp eq i8 %i.bl, 75
  br i1 %.not.i8.i31, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bn = load i8, ptr %i.bm, align 4, !noalias !11 ; 2 uses
  %switch.i10.i33 = icmp ult i8 %i.bn, 2
  br i1 %switch.i10.i33, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = icmp eq i8 %i.bn, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !11 ; 2 uses
  %sext.i.i12.i34 = shl i64 %i.bq, 32
  %i.br = ashr exact i64 %sext.i.i12.i34, 32
  %.0.i.i13.i35 = select i1 %i.bo, i64 %i.br, i64 %i.bq
  store i64 %.0.i.i13.i35, ptr %i.ar, align 8, !noalias !11
  store i32 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !11
  br label %"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_.exit39.thread"

bb.r:                                             ; preds = %bb.p, %bb.o
  store i32 %1, ptr %3, align 8, !noalias !11
  store i32 %2, ptr %i.ap, align 4, !noalias !11
  store i32 0, ptr %i.aq, align 8, !noalias !11
  br label %"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_.exit39.thread"

"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_.exit39.thread": ; preds = %bb.n, %bb.q, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  store i8 1, ptr %i.ao, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.s

"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_.exit39": ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !11
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.critedge

.critedge:                                        ; preds = %"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_.exit39", %bb.b, %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.bs, align 8
  br label %bb.s

bb.s:                                             ; preds = %"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_.exit39.thread", %"_ZZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_bENK3$_2clES5_S5_S5_S5_.exit.thread", %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler44TryMatchBaseWithScaledIndexAndDisplacement32EPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.34") align 8 captures(none) initializes((32, 33)) %0, ptr noundef %1, i32 %2) local_unnamed_addr #3 {
bb.a:
  tail call void @_ZN2v88internal8compiler44TryMatchBaseWithScaledIndexAndDisplacement64EPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE(ptr dead_on_unwind writable sret(%"class.std::optional.34") align 8 %0, ptr noundef %1, i32 %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i8 @_ZN2v88internal8compiler19X64OperandGenerator32GetEffectiveAddressMemoryOperandENS1_10turboshaft7OpIndexEPNS1_18InstructionOperandEPmNS1_16OperandGenerator15RegisterUseKindE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::ExternalReference", align 8 ; 6 uses
  %6 = alloca %"class.std::optional.34", align 8  ; 13 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = zext i32 %1 to i64
  %i.f = add i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.f to ptr                 ; 7 uses
  %i.h = load i8, ptr %i.g, align 4
  switch i8 %i.h, label %bb.i [
    i8 77, label %bb.b
    i8 78, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.j, align 4 ; 2 uses
  %i.k = load i16, ptr %i.i, align 2
  %i.l = icmp eq i16 %i.k, 2
  br i1 %i.l, label %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit.sink.split.i, label %_ZN2v88internal8compiler12_GLOBAL__N_113LoadStoreViewC2ERKNS1_10turboshaft9OperationE.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.0.0.copyload.i.i14.i = load i32, ptr %i.n, align 4 ; 2 uses
  %i.o = load i16, ptr %i.m, align 2
  %i.p = icmp eq i16 %i.o, 3
  br i1 %i.p, label %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit.sink.split.i, label %_ZN2v88internal8compiler12_GLOBAL__N_113LoadStoreViewC2ERKNS1_10turboshaft9OperationE.exit

_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit.sink.split.i: ; preds = %bb.c, %bb.b
  %.sroa.061.0 = phi i32 [ %.sroa.0.0.copyload.i.i.i, %bb.b ], [ %.sroa.0.0.copyload.i.i14.i, %bb.c ]
  %.sink19.i = phi i64 [ 16, %bb.b ], [ 24, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink19.i
  %.sroa.0.0.copyload.i.i16.i = load i32, ptr %i.q, align 4
  %i.r = icmp eq i32 %.sroa.0.0.copyload.i.i16.i, -1
  br label %_ZN2v88internal8compiler12_GLOBAL__N_113LoadStoreViewC2ERKNS1_10turboshaft9OperationE.exit

_ZN2v88internal8compiler12_GLOBAL__N_113LoadStoreViewC2ERKNS1_10turboshaft9OperationE.exit: ; preds = %bb.b, %bb.c, %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit.sink.split.i
  %.sroa.061.1 = phi i32 [ %.sroa.061.0, %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit.sink.split.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.b ], [ %.sroa.0.0.copyload.i.i14.i, %bb.c ]
  %.sroa.01.0.i15.sink.i = phi i1 [ %i.r, %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit.sink.split.i ], [ true, %bb.b ], [ true, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.t = load i32, ptr %i.s, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.u = zext i32 %.sroa.061.1 to i64
  %i.v = add i64 %i.u, %i.d
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = load i8, ptr %i.w, align 4
  %.not.i53 = icmp eq i8 %i.x, 75
  br i1 %.not.i53, label %bb.d, label %.critedge52

bb.d:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113LoadStoreViewC2ERKNS1_10turboshaft9OperationE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.z = load i8, ptr %i.y, align 4
  %.not8.i = icmp eq i8 %i.z, 7
  br i1 %.not8.i, label %bb.e, label %.critedge52

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  store i64 %i.ab, ptr %5, align 8
  br i1 %.sroa.01.0.i15.sink.i, label %bb.f, label %.critedge52

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector33CanAddressRelativeToRootsRegisterERKNS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(752) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %5) #25
  br i1 %i.ae, label %bb.g, label %.critedge52

bb.g:                                             ; preds = %bb.f
  %i.af = sext i32 %i.t to i64
  %i.ag = load ptr, ptr %i.ac, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef i64 @_ZN2v88internal18MacroAssemblerBase38RootRegisterOffsetForExternalReferenceEPNS0_7IsolateERKNS0_17ExternalReferenceE(ptr noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %5) #25
  %i.al = add nsw i64 %i.ak, %i.af                ; 2 uses
  %i.am = add i64 %i.al, 2147483648
  %i.an = icmp ult i64 %i.am, 4294967296
  br i1 %i.an, label %bb.h, label %.critedge52

bb.h:                                             ; preds = %bb.g
  %i.ao = trunc nsw i64 %i.al to i32
  %i.ap = call i64 @_ZN2v88internal8compiler16OperandGenerator13TempImmediateEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ao)
  %i.aq = load i64, ptr %3, align 8               ; 2 uses
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %3, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aq
  store i64 %i.ap, ptr %i.as, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.y

.critedge52:                                      ; preds = %bb.d, %_ZN2v88internal8compiler12_GLOBAL__N_113LoadStoreViewC2ERKNS1_10turboshaft9OperationE.exit, %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %.critedge52
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8
  call void @_ZN2v88internal8compiler44TryMatchBaseWithScaledIndexAndDisplacement64EPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %6, ptr noundef %i.au, i32 %1)
  %i.av = load ptr, ptr %i.at, align 8            ; 2 uses
  %.sroa.014.0.copyload = load i32, ptr %6, align 8 ; 6 uses
  %.not.i54 = icmp eq i32 %.sroa.014.0.copyload, -1
  br i1 %.not.i54, label %.thread69, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !5, !align !6
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = zext i32 %.sroa.014.0.copyload to i64   ; 3 uses
  %i.bb = add i64 %i.az, %i.ba
  %i.bc = inttoptr i64 %i.bb to ptr               ; 10 uses
  %i.bd = load i8, ptr %i.bc, align 4
  switch i8 %i.bd, label %.thread67 [
    i8 77, label %bb.k
    i8 46, label %bb.k
    i8 50, label %bb.k
    i8 91, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !14
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = add i64 %i.bi, %i.ba
  %i.bk = inttoptr i64 %i.bj to ptr               ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 4, !noalias !14
  %cond.i = icmp eq i8 %i.bl, 77
  br i1 %cond.i, label %_ZN2v88internal8compiler12_GLOBAL__N_112IsCompressedEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24, !noalias !14
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bn = load i8, ptr %i.bm, align 4
  switch i8 %i.bn, label %bb.o [
    i8 0, label %.thread67
    i8 1, label %.thread67
    i8 2, label %.thread67
    i8 3, label %.thread67
    i8 4, label %.thread67
    i8 5, label %_ZN2v88internal8compiler12_GLOBAL__N_112IsCompressedEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread65
    i8 6, label %.thread67
    i8 7, label %.thread67
    i8 8, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

bb.o:                                             ; preds = %bb.m
  unreachable

_ZN2v88internal8compiler12_GLOBAL__N_112IsCompressedEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit: ; preds = %bb.k
  %i.bo = call i16 @_ZNK2v88internal8compiler10turboshaft6LoadOp12machine_typeEv(ptr noundef nonnull align 4 dereferenceable(12) %i.bk) #25
  %i.bp = and i16 %i.bo, 254
  %spec.select.i.i = icmp eq i16 %i.bp, 10
  br i1 %spec.select.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_112IsCompressedEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread65, label %_ZN2v88internal8compiler12_GLOBAL__N_112IsCompressedEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit..thread67_crit_edge

_ZN2v88internal8compiler12_GLOBAL__N_112IsCompressedEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit..thread67_crit_edge: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_112IsCompressedEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit
  %.pre = load ptr, ptr %i.at, align 8
  %.pre74 = load ptr, ptr %.pre, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre74, i64 8
  %.pre75 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre78 = ptrtoint ptr %.pre75 to i64
  %.pre79 = add i64 %.pre78, %i.ba
  %.pre81 = inttoptr i64 %.pre79 to ptr
  br label %.thread67

_ZN2v88internal8compiler12_GLOBAL__N_112IsCompressedEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread65: ; preds = %bb.m, %_ZN2v88internal8compiler12_GLOBAL__N_112IsCompressedEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit
  %i.bq = icmp eq i32 %4, 0
end_hunk_0
