Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AutoUpgrade?download=true
inline.NumInlined: 9788
inline.NumDeleted: 2508
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZL21upgradeX86ConcatShiftRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEERNS_8CallBaseEbb:bb.a
  %i.bf = load ptr, ptr %i.at, align 8, !tbaa !137
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %.pre-phi45 = phi i64 [ %.pre44, %bb.h ], [ %i.as, %bb.i ], [ %i.as, %bb.f ]
  %i.bg = phi ptr [ %i.be, %bb.h ], [ %i.bf, %bb.i ], [ %i.bc, %bb.f ]
  %i.bh = add nuw nsw i64 %i.ax, 4294967295
  %i.bi = getelementptr inbounds [32 x i8], ptr %1, i64 %.pre-phi45
  %i.bj = and i64 %i.bh, 4294967295
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !137 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !150
  %i.bn = icmp ugt i8 %i.bm, 22
  br i1 %i.bn, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = call noundef zeroext i1 @_ZNK4llvm8Constant14isAllOnesValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bl) #23
  br i1 %i.bo, label %_ZL13emitX86SelectRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueES6_S6_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !82
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !266
  %i.bt = call fastcc noundef ptr @_ZL13getX86MaskVecRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %i.bl, i32 noundef %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.bu, align 8
  %i.bv = call noundef ptr @_ZN4llvm13IRBuilderBase12CreateSelectEPNS_5ValueES2_S2_RKNS_5TwineEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.bt, ptr noundef nonnull %i.an, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZL13emitX86SelectRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueES6_S6_.exit

_ZL13emitX86SelectRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueES6_S6_.exit: ; preds = %bb.l, %bb.k, %bb.d
  %.028 = phi ptr [ %i.an, %bb.d ], [ %i.bv, %bb.l ], [ %i.an, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %.028
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11SmallVectorIiLj8EEC2Em(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 8, ptr %i.c, align 4, !tbaa !35
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_ZN4llvm15SmallVectorImplIiE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 8
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i, label %.lr.ph.preheader.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i:  ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef %1, i64 noundef 4) #23
  %.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !34
  %.pre13.i.i = zext i32 %.pre.i.i to i64         ; 2 uses
  %.not11.i.i = icmp samesign eq i64 %1, %.pre13.i.i
  br i1 %.not11.i.i, label %.sink.split.i.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge, %bb.b
  %i.f = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge ], [ %i.a, %bb.b ]
  %.pre-phi.i.i3 = phi i64 [ %.pre13.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr [4 x i8], ptr %i.f, i64 %.pre-phi.i.i3
  %i.h = sub i64 %1, %.pre-phi.i.i3
  %i.i = shl i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %i.i, i1 false), !tbaa !151
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i
  %i.j = trunc i64 %1 to i32
  store i32 %i.j, ptr %i.b, align 8, !tbaa !34
  br label %_ZN4llvm15SmallVectorImplIiE6resizeEm.exit

_ZN4llvm15SmallVectorImplIiE6resizeEm.exit:       ; preds = %bb.a, %.sink.split.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueENS_8ArrayRefIiEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(34) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = tail call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.b) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !164, !nonnull !19, !align !92 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %1, ptr noundef %i.c, ptr %2, i64 %3) #23, !inline_history !361 ; 2 uses
  %.not.not.i = icmp eq ptr %i.i, null
  br i1 %.not.not.i, label %bb.b, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 257, ptr %i.k, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.j, ptr noundef nonnull %1, ptr noundef %i.c, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %6) #23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !166, !nonnull !19, !align !92 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.n, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #23, !inline_history !362
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %i.j, %bb.b ], [ %i.i, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !162

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
  store i32 %1, ptr %i.g, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !34
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN4llvm17ShuffleVectorInst14getShuffleMaskEPKNS_8ConstantERNS_15SmallVectorImplIiEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL25upgradeX86ALIGNIntrinsicsRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueES6_S6_S6_S6_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6) unnamed_addr #3 {
bb.a:
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %9 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %i.a = alloca [64 x i32], align 16              ; 23 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !160
  %i.e = icmp ult i32 %i.d, 65
  %i.f = load ptr, ptr %i.b, align 8
  %spec.select.i.i = select i1 %i.e, ptr %i.b, ptr %i.f
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !43
  %i.g = trunc i64 %.0.i.i to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !266  ; 5 uses
  %i.l = add i32 %i.k, -1
  %i.m = select i1 %6, i32 %i.l, i32 -1
  %.038 = and i32 %i.m, %i.g                      ; 4 uses
  %i.n = icmp ugt i32 %.038, 31
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef nonnull %i.i) #23
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.p = icmp samesign ugt i32 %.038, 16
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i32 %.038, -16
  %i.r = tail call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef nonnull %i.i) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.040 = phi ptr [ %1, %bb.d ], [ %2, %bb.c ]    ; 2 uses
  %.039 = phi ptr [ %i.r, %bb.d ], [ %1, %bb.c ]  ; 2 uses
  %.1 = phi i32 [ %i.q, %bb.d ], [ %.038, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  br i1 %6, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.s = add i32 %i.k, -16
  %i.t = insertelement <4 x i32> poison, i32 %.1, i64 0 ; 2 uses
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.v = icmp ult <4 x i32> %i.u, <i32 16, i32 15, i32 14, i32 13>
  %i.w = zext i32 %i.k to i64                     ; 3 uses
  %i.x = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %i.y = shufflevector <4 x i32> %i.x, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.z = select <4 x i1> %i.v, <4 x i32> zeroinitializer, <4 x i32> %i.y
  %i.aa = add nuw nsw <4 x i32> %i.u, <i32 0, i32 1, i32 2, i32 3>
  %i.ab = add <4 x i32> %i.aa, %i.z               ; 3 uses
  %i.ac = add nuw nsw <4 x i32> %i.u, <i32 4, i32 5, i32 6, i32 7>
  %i.ad = icmp ult <4 x i32> %i.u, <i32 12, i32 11, i32 10, i32 9>
  %i.ae = select <4 x i1> %i.ad, <4 x i32> zeroinitializer, <4 x i32> %i.y
  %i.af = add <4 x i32> %i.ac, %i.ae              ; 3 uses
  %i.ag = add nuw nsw <4 x i32> %i.u, <i32 8, i32 9, i32 10, i32 11>
  %i.ah = icmp ult <4 x i32> %i.u, <i32 8, i32 7, i32 6, i32 5>
  %i.ai = select <4 x i1> %i.ah, <4 x i32> zeroinitializer, <4 x i32> %i.y
  %i.aj = add <4 x i32> %i.ag, %i.ai              ; 3 uses
  %i.ak = add nuw nsw <4 x i32> %i.u, <i32 12, i32 13, i32 14, i32 15>
  %11 = shufflevector <4 x i32> %i.t, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> <i32 0, i32 0, i32 0, i32 7> ; 2 uses
  %12 = insertelement <4 x i32> <i32 4, i32 3, i32 2, i32 poison>, i32 %.1, i64 3 ; 2 uses
  %i.al = icmp ult <4 x i32> %11, %12
  %13 = icmp eq <4 x i32> %11, %12
  %14 = shufflevector <4 x i1> %i.al, <4 x i1> %13, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.am = select <4 x i1> %14, <4 x i32> zeroinitializer, <4 x i32> %i.y
  %i.an = add <4 x i32> %i.ak, %i.am              ; 3 uses
  %i.ao = add nsw i64 %i.w, -1                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 4                       ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %i.ar = icmp eq i64 %i.ap, 0
  br i1 %i.ar, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.aq, 2305843009213693950
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.as = zext i32 %i.k to i64                    ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.preheader.us
  %indvars.iv55 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next56, %.preheader.us ] ; 9 uses
  %i.at = trunc nuw i64 %indvars.iv55 to i32
  %invariant.op.us = add i32 %.1, %i.at           ; 5 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv55
  store i32 %invariant.op.us, ptr %i.au, align 16, !tbaa !151
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv55
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = insertelement <4 x i32> poison, i32 %invariant.op.us, i64 0
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.az = add <4 x i32> %i.ay, <i32 1, i32 2, i32 3, i32 4>
  store <4 x i32> %i.az, ptr %i.aw, align 4, !tbaa !151
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv55
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bc = add <4 x i32> %i.ay, <i32 5, i32 6, i32 7, i32 8>
  store <4 x i32> %i.bc, ptr %i.bb, align 4, !tbaa !151
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv55
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 36
  %i.bf = add <4 x i32> %i.ay, <i32 9, i32 10, i32 11, i32 12>
  store <4 x i32> %i.bf, ptr %i.be, align 4, !tbaa !151
  %.035.us.reass.us.13 = add i32 %invariant.op.us, 13
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv55
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 52
  store i32 %.035.us.reass.us.13, ptr %i.bh, align 4, !tbaa !151
  %.035.us.reass.us.14 = add i32 %invariant.op.us, 14
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv55
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  store i32 %.035.us.reass.us.14, ptr %i.bj, align 8, !tbaa !151
  %.035.us.reass.us.15 = add i32 %invariant.op.us, 15
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv55
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 60
  store i32 %.035.us.reass.us.15, ptr %i.bl, align 4, !tbaa !151
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 16 ; 2 uses
  %i.bm = icmp samesign ult i64 %indvars.iv.next56, %i.as
  br i1 %i.bm, label %.preheader.us, label %._crit_edge, !llvm.loop !632

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next.1, %.preheader ] ; 7 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.bn = trunc i64 %indvars.iv to i32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bp = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %i.bq = shufflevector <4 x i32> %i.bp, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.br = add <4 x i32> %i.ab, %i.bq
  store <4 x i32> %i.br, ptr %i.bo, align 16, !tbaa !151
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = add <4 x i32> %i.af, %i.bq
  store <4 x i32> %i.bu, ptr %i.bt, align 16, !tbaa !151
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = add <4 x i32> %i.aj, %i.bq
  store <4 x i32> %i.bx, ptr %i.bw, align 16, !tbaa !151
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = add <4 x i32> %i.an, %i.bq
  store <4 x i32> %i.ca, ptr %i.bz, align 16, !tbaa !151
  %indvars.iv.next = or disjoint i64 %indvars.iv, 16 ; 5 uses
  %i.cb = trunc i64 %indvars.iv.next to i32
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.cd = insertelement <4 x i32> poison, i32 %i.cb, i64 0
  %i.ce = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cf = add <4 x i32> %i.ab, %i.ce
  store <4 x i32> %i.cf, ptr %i.cc, align 16, !tbaa !151
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = add <4 x i32> %i.af, %i.ce
  store <4 x i32> %i.ci, ptr %i.ch, align 16, !tbaa !151
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = add <4 x i32> %i.aj, %i.ce
  store <4 x i32> %i.cl, ptr %i.ck, align 16, !tbaa !151
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = add <4 x i32> %i.an, %i.ce
  store <4 x i32> %i.co, ptr %i.cn, align 16, !tbaa !151
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit95.unr-lcssa, label %.preheader, !llvm.loop !632

._crit_edge.loopexit95.unr-lcssa:                 ; preds = %.preheader
  %i.cp = and i64 %i.ao, 16
  %lcmp.mod.not.not = icmp eq i64 %i.cp, 0
  br i1 %lcmp.mod.not.not, label %.preheader.epil.preheader, label %._crit_edge

.preheader.epil.preheader:                        ; preds = %._crit_edge.loopexit95.unr-lcssa, %.preheader.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit95.unr-lcssa ] ; 5 uses
  %lcmp.mod96 = trunc i64 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.cq = trunc i64 %indvars.iv.epil.init to i32
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.cs = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %i.ct = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cu = add <4 x i32> %i.ab, %i.ct
  store <4 x i32> %i.cu, ptr %i.cr, align 16, !tbaa !151
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = add <4 x i32> %i.af, %i.ct
  store <4 x i32> %i.cx, ptr %i.cw, align 16, !tbaa !151
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = add <4 x i32> %i.aj, %i.ct
  store <4 x i32> %i.da, ptr %i.cz, align 16, !tbaa !151
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dd = add <4 x i32> %i.an, %i.ct
  store <4 x i32> %i.dd, ptr %i.dc, align 16, !tbaa !151
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.epil.preheader, %._crit_edge.loopexit95.unr-lcssa, %.preheader.us, %bb.e
  %.pre-phi = phi i64 [ 0, %bb.e ], [ %i.as, %.preheader.us ], [ %i.w, %._crit_edge.loopexit95.unr-lcssa ], [ %i.w, %.preheader.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.df, align 1, !tbaa !108
  store ptr @.str.1109, ptr %10, align 8, !tbaa !43
  store i8 3, ptr %i.de, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !164, !nonnull !19, !align !92 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 112
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call noundef ptr %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef %.040, ptr noundef %.039, ptr nonnull %i.a, i64 %.pre-phi) #23, !inline_history !361 ; 2 uses
  %.not.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.not.i, label %bb.f, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

bb.f:                                             ; preds = %._crit_edge
  %i.dm = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i16 257, ptr %i.dn, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.dm, ptr noundef %.040, ptr noundef %.039, ptr nonnull %i.a, i64 %.pre-phi, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %9) #23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !166, !nonnull !19, !align !92 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.dq, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull %i.dm, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #23, !inline_history !362
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.dm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit: ; preds = %._crit_edge, %bb.f
  %.1.i = phi ptr [ %i.dm, %bb.f ], [ %i.dl, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.du = load i8, ptr %5, align 8, !tbaa !150
  %i.dv = icmp ugt i8 %i.du, 22
  br i1 %i.dv, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit
  %i.dw = call noundef zeroext i1 @_ZNK4llvm8Constant14isAllOnesValueEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  br i1 %i.dw, label %_ZL13emitX86SelectRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueES6_S6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !82
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !266
  %i.eb = call fastcc noundef ptr @_ZL13getX86MaskVecRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %5, i32 noundef %i.ea)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 257, ptr %i.ec, align 8
  %i.ed = call noundef ptr @_ZN4llvm13IRBuilderBase12CreateSelectEPNS_5ValueES2_S2_RKNS_5TwineEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.eb, ptr noundef nonnull %.1.i, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZL13emitX86SelectRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueES6_S6_.exit

_ZL13emitX86SelectRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueES6_S6_.exit: ; preds = %bb.g, %bb.h
  %.1.i46 = phi ptr [ %i.ed, %bb.h ], [ %.1.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.i

bb.i:                                             ; preds = %_ZL13emitX86SelectRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueES6_S6_.exit, %bb.b
  %.0 = phi ptr [ %i.o, %bb.b ], [ %.1.i46, %_ZL13emitX86SelectRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueES6_S6_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZL26upgradeX86PSLLDQIntrinsicsRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueEj:bb.a
  %i.v = icmp ult <4 x i32> %i.s, %i.u
  %i.w = insertelement <4 x i32> poison, i32 %.neg, i64 0
  %i.x = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.y = select <4 x i1> %i.v, <4 x i32> %i.x, <4 x i32> zeroinitializer
  %i.z = add <4 x i32> %i.s, %i.y                 ; 3 uses
  %i.aa = add <4 x i32> %i.r, <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ab = icmp ult <4 x i32> %i.aa, %i.u
  %i.ac = select <4 x i1> %i.ab, <4 x i32> %i.x, <4 x i32> zeroinitializer
  %i.ad = add <4 x i32> %i.aa, %i.ac              ; 3 uses
  %i.ae = add <4 x i32> %i.r, <i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.af = icmp ult <4 x i32> %i.ae, %i.u
  %i.ag = select <4 x i1> %i.af, <4 x i32> %i.x, <4 x i32> zeroinitializer
  %i.ah = add <4 x i32> %i.ae, %i.ag              ; 3 uses
  %i.ai = add <4 x i32> %i.r, <i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aj = icmp ult <4 x i32> %i.ai, %i.u
  %i.ak = select <4 x i1> %i.aj, <4 x i32> %i.x, <4 x i32> zeroinitializer
  %i.al = add <4 x i32> %i.ai, %i.ak              ; 3 uses
  %i.am = add i32 %i.f, -16                       ; 2 uses
  %i.an = lshr i32 %i.am, 4                       ; 2 uses
  %i.ao = add nuw nsw i32 %i.an, 1                ; 2 uses
  %i.ap = icmp eq i32 %i.an, 0
  br i1 %i.ap, label %.preheader.epil.preheader, label %.preheader.lr.ph.new

.preheader.lr.ph.new:                             ; preds = %.preheader.lr.ph
  %unroll_iter = and i32 %i.ao, 536870910
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph.new ], [ %indvars.iv.next.1, %.preheader ] ; 7 uses
  %niter = phi i32 [ 0, %.preheader.lr.ph.new ], [ %niter.next.1, %.preheader ]
  %i.aq = trunc i64 %indvars.iv to i32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.as = insertelement <4 x i32> poison, i32 %i.aq, i64 0
  %i.at = shufflevector <4 x i32> %i.as, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.au = add <4 x i32> %i.z, %i.at
  store <4 x i32> %i.au, ptr %i.ar, align 16, !tbaa !151
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = add <4 x i32> %i.ad, %i.at
  store <4 x i32> %i.ax, ptr %i.aw, align 16, !tbaa !151
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = add <4 x i32> %i.ah, %i.at
  store <4 x i32> %i.ba, ptr %i.az, align 16, !tbaa !151
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = add <4 x i32> %i.al, %i.at
  store <4 x i32> %i.bd, ptr %i.bc, align 16, !tbaa !151
  %indvars.iv.next = or disjoint i64 %indvars.iv, 16 ; 5 uses
  %i.be = trunc i64 %indvars.iv.next to i32
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.bg = insertelement <4 x i32> poison, i32 %i.be, i64 0
  %i.bh = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bi = add <4 x i32> %i.z, %i.bh
  store <4 x i32> %i.bi, ptr %i.bf, align 16, !tbaa !151
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = add <4 x i32> %i.ad, %i.bh
  store <4 x i32> %i.bl, ptr %i.bk, align 16, !tbaa !151
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = add <4 x i32> %i.ah, %i.bh
  store <4 x i32> %i.bo, ptr %i.bn, align 16, !tbaa !151
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = add <4 x i32> %i.al, %i.bh
  store <4 x i32> %i.br, ptr %i.bq, align 16, !tbaa !151
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.preheader, !llvm.loop !633

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.preheader
  %i.bs = and i32 %i.am, 16
  %lcmp.mod.not.not = icmp eq i32 %i.bs, 0
  br i1 %lcmp.mod.not.not, label %.preheader.epil.preheader, label %._crit_edge

.preheader.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod78 = trunc i32 %i.ao to i1
  call void @llvm.assume(i1 %lcmp.mod78)
  %i.bt = trunc i64 %indvars.iv.epil.init to i32
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.bv = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %i.bw = shufflevector <4 x i32> %i.bv, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bx = add <4 x i32> %i.z, %i.bw
  store <4 x i32> %i.bx, ptr %i.bu, align 16, !tbaa !151
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = add <4 x i32> %i.ad, %i.bw
  store <4 x i32> %i.ca, ptr %i.bz, align 16, !tbaa !151
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = add <4 x i32> %i.ah, %i.bw
  store <4 x i32> %i.cd, ptr %i.cc, align 16, !tbaa !151
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = add <4 x i32> %i.al, %i.bw
  store <4 x i32> %i.cg, ptr %i.cf, align 16, !tbaa !151
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %i.ch = zext i32 %i.f to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 257, ptr %i.ci, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !164, !nonnull !19, !align !92 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call noundef ptr %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef %i.n, ptr noundef %i.m, ptr nonnull %i.a, i64 %i.ch) #23, !inline_history !361 ; 2 uses
  %.not.not.i = icmp eq ptr %i.co, null
  br i1 %.not.not.i, label %bb.c, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

bb.c:                                             ; preds = %._crit_edge
  %i.cp = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i16 257, ptr %i.cq, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.cp, ptr noundef %i.n, ptr noundef %i.m, ptr nonnull %i.a, i64 %i.ch, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %4) #23
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !166, !nonnull !19, !align !92 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ct, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull %i.cp, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #23, !inline_history !362
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.cp) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit: ; preds = %._crit_edge, %bb.c
  %.1.i = phi ptr [ %i.cp, %bb.c ], [ %i.co, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit, %bb.a
  %.033 = phi ptr [ %.1.i, %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit ], [ %i.n, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.cy, align 1, !tbaa !108
  store ptr @.str.35, ptr %7, align 8, !tbaa !43
  store i8 3, ptr %i.cx, align 8, !tbaa !102
  %i.cz = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 51, ptr noundef %.033, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret ptr %i.cz
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL26upgradeX86PSRLDQIntrinsicsRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %4 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca [64 x i32], align 16              ; 11 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !266
  %i.f = shl i32 %i.e, 3                          ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !145, !nonnull !19, !align !92
  %i.i = tail call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #23
  %i.j = tail call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.i, i32 noundef %i.f) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !108
  store ptr @.str.35, ptr %5, align 8, !tbaa !43
  store i8 3, ptr %i.k, align 8, !tbaa !102
  %i.m = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 51, ptr noundef nonnull %1, ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef null, i64 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.n = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.j) #23 ; 3 uses
  %i.o = icmp ult i32 %2, 16
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not38 = icmp eq i32 %i.f, 0
  br i1 %.not38, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.p = add i32 %i.f, -16                        ; 4 uses
  %i.q = insertelement <4 x i32> poison, i32 %2, i64 0 ; 2 uses
  %i.r = shufflevector <4 x i32> %i.q, <4 x i32> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.s = add nuw nsw <4 x i32> %i.r, <i32 1, i32 2, i32 3, i32 4>
  %i.t = shufflevector <4 x i32> <i32 15, i32 poison, i32 poison, i32 poison>, <4 x i32> %i.q, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %i.u = insertelement <4 x i32> <i32 poison, i32 13, i32 12, i32 11>, i32 %2, i64 0 ; 2 uses
  %i.v = icmp eq <4 x i32> %i.t, %i.u
  %i.w = icmp ugt <4 x i32> %i.t, %i.u
  %i.x = shufflevector <4 x i1> %i.v, <4 x i1> %i.w, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.y = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %i.z = shufflevector <4 x i32> %i.y, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aa = select <4 x i1> %i.x, <4 x i32> %i.z, <4 x i32> zeroinitializer
  %i.ab = add <4 x i32> %i.s, %i.aa
  %i.ac = add nuw nsw <4 x i32> %i.r, <i32 5, i32 6, i32 7, i32 8>
  %i.ad = icmp ugt <4 x i32> %i.r, <i32 10, i32 9, i32 8, i32 7>
  %i.ae = select <4 x i1> %i.ad, <4 x i32> %i.z, <4 x i32> zeroinitializer
  %i.af = add <4 x i32> %i.ac, %i.ae
  %i.ag = add nuw nsw <4 x i32> %i.r, <i32 9, i32 10, i32 11, i32 12>
  %i.ah = icmp ugt <4 x i32> %i.r, <i32 6, i32 5, i32 4, i32 3>
  %i.ai = select <4 x i1> %i.ah, <4 x i32> %i.z, <4 x i32> zeroinitializer
  %i.aj = add <4 x i32> %i.ag, %i.ai
  %i.ak = add nuw nsw i32 %2, 13
  %i.al = icmp samesign ugt i32 %2, 2
  %i.am = select i1 %i.al, i32 %i.p, i32 0
  %invariant.op68 = add i32 %i.ak, %i.am
  %i.an = add nuw nsw i32 %2, 14
  %i.ao = icmp samesign ugt i32 %2, 1
  %i.ap = select i1 %i.ao, i32 %i.p, i32 0
  %invariant.op70 = add i32 %i.an, %i.ap
  %i.aq = add nuw nsw i32 %2, 15
  %.not45 = icmp eq i32 %2, 0
  %i.ar = select i1 %.not45, i32 0, i32 %i.p
  %invariant.op72 = add i32 %i.aq, %i.ar
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 9 uses
  %i.as = trunc i64 %indvars.iv to i32            ; 5 uses
  %.0 = or disjoint i32 %2, %i.as
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %.0, ptr %i.at, align 16, !tbaa !151
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %i.ax = shufflevector <4 x i32> %i.aw, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ay = add <4 x i32> %i.ab, %i.ax
  store <4 x i32> %i.ay, ptr %i.av, align 4, !tbaa !151
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bb = add <4 x i32> %i.af, %i.ax
  store <4 x i32> %i.bb, ptr %i.ba, align 4, !tbaa !151
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 36
  %i.be = add <4 x i32> %i.aj, %i.ax
  store <4 x i32> %i.be, ptr %i.bd, align 4, !tbaa !151
  %.reass69 = add i32 %invariant.op68, %i.as
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 52
  store i32 %.reass69, ptr %i.bg, align 4, !tbaa !151
  %.reass71 = add i32 %invariant.op70, %i.as
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  store i32 %.reass71, ptr %i.bi, align 8, !tbaa !151
  %.reass73 = add i32 %invariant.op72, %i.as
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 60
  store i32 %.reass73, ptr %i.bk, align 4, !tbaa !151
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.f, %indvars
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !634

._crit_edge:                                      ; preds = %.preheader, %bb.b
  %i.bl = zext i32 %i.f to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 257, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !164, !nonnull !19, !align !92 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.m, ptr noundef %i.n, ptr nonnull %i.a, i64 %i.bl) #23, !inline_history !361 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.not.i, label %bb.c, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

bb.c:                                             ; preds = %._crit_edge
  %i.bt = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i16 257, ptr %i.bu, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.bt, ptr noundef %i.m, ptr noundef %i.n, ptr nonnull %i.a, i64 %i.bl, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %4) #23
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !166, !nonnull !19, !align !92 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bx, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull %i.bt, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #23, !inline_history !362
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.bt) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit: ; preds = %._crit_edge, %bb.c
  %.1.i = phi ptr [ %i.bt, %bb.c ], [ %i.bs, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit, %bb.a
  %.031 = phi ptr [ %.1.i, %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit ], [ %i.n, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.cc, align 1, !tbaa !108
  store ptr @.str.35, ptr %7, align 8, !tbaa !43
  store i8 3, ptr %i.cb, align 8, !tbaa !102
  %i.cd = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 51, ptr noundef %.031, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret ptr %i.cd
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11SmallVectorIiLj16EEC2Em(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 16, ptr %i.c, align 4, !tbaa !35
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_ZN4llvm15SmallVectorImplIiE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 16
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i, label %.lr.ph.preheader.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i:  ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef %1, i64 noundef 4) #23
  %.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !34
  %.pre13.i.i = zext i32 %.pre.i.i to i64         ; 2 uses
  %.not11.i.i = icmp samesign eq i64 %1, %.pre13.i.i
  br i1 %.not11.i.i, label %.sink.split.i.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge, %bb.b
  %i.f = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge ], [ %i.a, %bb.b ]
  %.pre-phi.i.i3 = phi i64 [ %.pre13.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr [4 x i8], ptr %i.f, i64 %.pre-phi.i.i3
  %i.h = sub i64 %1, %.pre-phi.i.i3
  %i.i = shl i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %i.i, i1 false), !tbaa !151
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i
  %i.j = trunc i64 %1 to i32
  store i32 %i.j, ptr %i.b, align 8, !tbaa !34
  br label %_ZN4llvm15SmallVectorImplIiE6resizeEm.exit

_ZN4llvm15SmallVectorImplIiE6resizeEm.exit:       ; preds = %bb.a, %.sink.split.i.i
  ret void
}

declare noundef ptr @_ZN4llvm21ConstantAggregateZero3getEPNS_4TypeE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11SmallVectorIiLj64EEC2Em(ptr noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 64, ptr %i.c, align 4, !tbaa !35
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_ZN4llvm15SmallVectorImplIiE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 64
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i, label %.lr.ph.preheader.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i:  ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef %1, i64 noundef 4) #23
  %.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !34
  %.pre13.i.i = zext i32 %.pre.i.i to i64         ; 2 uses
  %.not11.i.i = icmp samesign eq i64 %1, %.pre13.i.i
  br i1 %.not11.i.i, label %.sink.split.i.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge, %bb.b
  %i.f = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge ], [ %i.a, %bb.b ]
  %.pre-phi.i.i3 = phi i64 [ %.pre13.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr [4 x i8], ptr %i.f, i64 %.pre-phi.i.i3
  %i.h = sub i64 %1, %.pre-phi.i.i3
  %i.i = shl i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %i.i, i1 false), !tbaa !151
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i
  %i.j = trunc i64 %1 to i32
  store i32 %i.j, ptr %i.b, align 8, !tbaa !34
  br label %_ZN4llvm15SmallVectorImplIiE6resizeEm.exit

_ZN4llvm15SmallVectorImplIiE6resizeEm.exit:       ; preds = %bb.a, %.sink.split.i.i
  ret void
}
end_hunk_1
