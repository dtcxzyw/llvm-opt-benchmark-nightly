inline.NumInlined: 3767
inline.NumDeleted: 1290
begin_hunk_0_@_ZNK6google8protobuf8internal12ExtensionSet25_InternalSerializeAllImplEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = icmp slt i16 %.val, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %.val3, align 8, !tbaa !89
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i32
  call fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_25_InternalSerializeAllImplEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_SV_T0_T1_"(ptr %i.f, i32 0, ptr %i.h, i32 %i.k, ptr noundef nonnull byval(%class.anon.43) align 8 %4)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !396
  br label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_25_InternalSerializeAllImplEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_T0_.exit"

bb.c:                                             ; preds = %bb.a
  %i.l = zext nneg i16 %.val to i64
  %.idx.i = shl nuw nsw i64 %i.l, 5
  %i.m = getelementptr inbounds nuw i8, ptr %.val3, i64 %.idx.i ; 5 uses
  %.not34.i.i = icmp eq i16 %.val, 0
  br i1 %.not34.i.i, label %.preheader23.i.i, label %.lr.ph.i.i

.preheader23.i.i:                                 ; preds = %.lr.ph.i.i, %bb.c
  %.018.lcssa.i.i = phi ptr [ %.val3, %bb.c ], [ %i.s, %.lr.ph.i.i ] ; 2 uses
  %.not26.i.i = icmp eq ptr %.018.lcssa.i.i, %i.m
  br i1 %.not26.i.i, label %.preheader.i.i, label %.lr.ph29.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.025.i.i = phi i32 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.c ] ; 2 uses
  %.01824.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %.val3, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 18
  %i.p = load i8, ptr %i.o, align 2
  %i.q = trunc i8 %i.p to i1
  %i.r = load ptr, ptr %i.n, align 8
  %spec.select.i.i.i = select i1 %i.q, ptr %i.r, ptr %i.n
  call void @llvm.prefetch.p0(ptr %spec.select.i.i.i, i32 0, i32 3, i32 1)
  %i.s = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 32 ; 3 uses
  %i.t = add nuw nsw i32 %.025.i.i, 1
  %i.u = icmp ne ptr %i.s, %i.m
  %i.v = icmp samesign ult i32 %.025.i.i, 15
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i.i, label %.preheader23.i.i, !llvm.loop !397

.preheader.i.i:                                   ; preds = %.lr.ph29.i.i, %.preheader23.i.i
  %.pre38.i.i = phi ptr [ %2, %.preheader23.i.i ], [ %i.aa, %.lr.ph29.i.i ] ; 2 uses
  %.019.lcssa.i.i = phi ptr [ %.val3, %.preheader23.i.i ], [ %i.ag, %.lr.ph29.i.i ] ; 2 uses
  %.not2131.i.i = icmp eq ptr %.019.lcssa.i.i, %i.m
  br i1 %.not2131.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_25_InternalSerializeAllImplEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph33.i.i

.lr.ph29.i.i:                                     ; preds = %.preheader23.i.i, %.lr.ph29.i.i
  %i.x = phi ptr [ %i.aa, %.lr.ph29.i.i ], [ %2, %.preheader23.i.i ]
  %.128.i.i = phi ptr [ %i.ah, %.lr.ph29.i.i ], [ %.018.lcssa.i.i, %.preheader23.i.i ] ; 3 uses
  %.01927.i.i = phi ptr [ %i.ag, %.lr.ph29.i.i ], [ %.val3, %.preheader23.i.i ] ; 3 uses
  %i.y = load i32, ptr %.01927.i.i, align 8, !tbaa !109
  %i.z = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 8
  %i.aa = call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef %1, ptr nonnull poison, i32 noundef %i.y, ptr noundef %i.x, ptr noundef %3) ; 3 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !396
  %i.ab = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 18
  %i.ad = load i8, ptr %i.ac, align 2
  %i.ae = trunc i8 %i.ad to i1
  %i.af = load ptr, ptr %i.ab, align 8
  %spec.select.i22.i.i = select i1 %i.ae, ptr %i.af, ptr %i.ab
  call void @llvm.prefetch.p0(ptr %spec.select.i22.i.i, i32 0, i32 3, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.m
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph29.i.i, !llvm.loop !398

.lr.ph33.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph33.i.i
  %i.ai = phi ptr [ %i.al, %.lr.ph33.i.i ], [ %.pre38.i.i, %.preheader.i.i ]
  %.12032.i.i = phi ptr [ %i.am, %.lr.ph33.i.i ], [ %.019.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %i.aj = load i32, ptr %.12032.i.i, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 8
  %i.al = call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef %1, ptr nonnull poison, i32 noundef %i.aj, ptr noundef %i.ai, ptr noundef %3) ; 3 uses
  store ptr %i.al, ptr %i.a, align 8, !tbaa !396
  %i.am = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 32 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.am, %i.m
  br i1 %.not21.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_25_InternalSerializeAllImplEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph33.i.i, !llvm.loop !399

"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_25_InternalSerializeAllImplEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_T0_.exit": ; preds = %.lr.ph33.i.i, %bb.b, %.preheader.i.i
  %i.an = phi ptr [ %.pre38.i.i, %.preheader.i.i ], [ %.pre, %bb.b ], [ %i.al, %.lr.ph33.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret ptr %i.an
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet49InternalSerializeMessageSetWithCachedSizesToArrayEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.anon.44, align 8             ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !396
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val = load i16, ptr %i.b, align 2, !tbaa !86  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.c, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.a, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = icmp slt i16 %.val, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %.val4, align 8, !tbaa !89
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i32
  call fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_49InternalSerializeMessageSetWithCachedSizesToArrayEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_SV_T0_T1_"(ptr %i.f, i32 0, ptr %i.h, i32 %i.k, ptr noundef nonnull byval(%class.anon.44) align 8 %4)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !396
  br label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_49InternalSerializeMessageSetWithCachedSizesToArrayEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_T0_.exit"

bb.c:                                             ; preds = %bb.a
  %i.l = zext nneg i16 %.val to i64
  %.idx.i = shl nuw nsw i64 %i.l, 5
  %i.m = getelementptr inbounds nuw i8, ptr %.val4, i64 %.idx.i ; 5 uses
  %.not34.i.i = icmp eq i16 %.val, 0
  br i1 %.not34.i.i, label %.preheader23.i.i, label %.lr.ph.i.i

.preheader23.i.i:                                 ; preds = %.lr.ph.i.i, %bb.c
  %.018.lcssa.i.i = phi ptr [ %.val4, %bb.c ], [ %i.s, %.lr.ph.i.i ] ; 2 uses
  %.not26.i.i = icmp eq ptr %.018.lcssa.i.i, %i.m
  br i1 %.not26.i.i, label %.preheader.i.i, label %.lr.ph29.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.025.i.i = phi i32 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.c ] ; 2 uses
  %.01824.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %.val4, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 18
  %i.p = load i8, ptr %i.o, align 2
  %i.q = trunc i8 %i.p to i1
  %i.r = load ptr, ptr %i.n, align 8
  %spec.select.i.i.i = select i1 %i.q, ptr %i.r, ptr %i.n
  call void @llvm.prefetch.p0(ptr %spec.select.i.i.i, i32 0, i32 3, i32 1)
  %i.s = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 32 ; 3 uses
  %i.t = add nuw nsw i32 %.025.i.i, 1
  %i.u = icmp ne ptr %i.s, %i.m
  %i.v = icmp samesign ult i32 %.025.i.i, 15
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i.i, label %.preheader23.i.i, !llvm.loop !400

.preheader.i.i:                                   ; preds = %.lr.ph29.i.i, %.preheader23.i.i
  %.pre38.i.i = phi ptr [ %2, %.preheader23.i.i ], [ %i.aa, %.lr.ph29.i.i ] ; 2 uses
  %.019.lcssa.i.i = phi ptr [ %.val4, %.preheader23.i.i ], [ %i.ag, %.lr.ph29.i.i ] ; 2 uses
  %.not2131.i.i = icmp eq ptr %.019.lcssa.i.i, %i.m
  br i1 %.not2131.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_49InternalSerializeMessageSetWithCachedSizesToArrayEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph33.i.i

.lr.ph29.i.i:                                     ; preds = %.preheader23.i.i, %.lr.ph29.i.i
  %i.x = phi ptr [ %i.aa, %.lr.ph29.i.i ], [ %2, %.preheader23.i.i ]
  %.128.i.i = phi ptr [ %i.ah, %.lr.ph29.i.i ], [ %.018.lcssa.i.i, %.preheader23.i.i ] ; 3 uses
  %.01927.i.i = phi ptr [ %i.ag, %.lr.ph29.i.i ], [ %.val4, %.preheader23.i.i ] ; 3 uses
  %i.y = load i32, ptr %.01927.i.i, align 8, !tbaa !109
  %i.z = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 8
  %i.aa = call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension53InternalSerializeMessageSetItemWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef %1, ptr nonnull poison, i32 noundef %i.y, ptr noundef %i.x, ptr noundef %3) ; 3 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !396
  %i.ab = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 18
  %i.ad = load i8, ptr %i.ac, align 2
  %i.ae = trunc i8 %i.ad to i1
  %i.af = load ptr, ptr %i.ab, align 8
  %spec.select.i22.i.i = select i1 %i.ae, ptr %i.af, ptr %i.ab
  call void @llvm.prefetch.p0(ptr %spec.select.i22.i.i, i32 0, i32 3, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.m
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph29.i.i, !llvm.loop !401

.lr.ph33.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph33.i.i
  %i.ai = phi ptr [ %i.al, %.lr.ph33.i.i ], [ %.pre38.i.i, %.preheader.i.i ]
  %.12032.i.i = phi ptr [ %i.am, %.lr.ph33.i.i ], [ %.019.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %i.aj = load i32, ptr %.12032.i.i, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 8
  %i.al = call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension53InternalSerializeMessageSetItemWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef %1, ptr nonnull poison, i32 noundef %i.aj, ptr noundef %i.ai, ptr noundef %3) ; 3 uses
  store ptr %i.al, ptr %i.a, align 8, !tbaa !396
  %i.am = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 32 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.am, %i.m
  br i1 %.not21.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_49InternalSerializeMessageSetWithCachedSizesToArrayEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph33.i.i, !llvm.loop !402

"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_49InternalSerializeMessageSetWithCachedSizesToArrayEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_T0_.exit": ; preds = %.lr.ph33.i.i, %bb.b, %.preheader.i.i
  %i.an = phi ptr [ %.pre38.i.i, %.preheader.i.i ], [ %.pre, %bb.b ], [ %i.al, %.lr.ph33.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret ptr %i.an
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet8ByteSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 0, ptr %i.a, align 8, !tbaa !148
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val = load i16, ptr %i.b, align 2, !tbaa !86  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 7 uses
  %i.d = icmp slt i16 %.val, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %.val1, align 8, !tbaa !89
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i32
  call fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_8ByteSizeEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_"(ptr %i.f, i32 0, ptr %i.h, i32 %i.k, ptr nonnull %i.a)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !148
  br label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_8ByteSizeEvE3$_0NS2_8PrefetchEEEvT_T0_.exit"

bb.c:                                             ; preds = %bb.a
  %i.l = zext nneg i16 %.val to i64
  %.idx.i = shl nuw nsw i64 %i.l, 5
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 %.idx.i ; 5 uses
  %.not35.i.i = icmp eq i16 %.val, 0
  br i1 %.not35.i.i, label %.preheader24.i.i, label %.lr.ph.i.i

.preheader24.i.i:                                 ; preds = %.lr.ph.i.i, %bb.c
  %.018.lcssa.i.i = phi ptr [ %.val1, %bb.c ], [ %i.s, %.lr.ph.i.i ] ; 2 uses
  %.not27.i.i = icmp eq ptr %.018.lcssa.i.i, %i.m
  br i1 %.not27.i.i, label %.preheader.i.i, label %.lr.ph30.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.026.i.i = phi i32 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.c ] ; 2 uses
  %.01825.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %.val1, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 18
  %i.p = load i8, ptr %i.o, align 2
  %i.q = trunc i8 %i.p to i1
  %i.r = load ptr, ptr %i.n, align 8
  %spec.select.i.i.i = select i1 %i.q, ptr %i.r, ptr %i.n
  tail call void @llvm.prefetch.p0(ptr %spec.select.i.i.i, i32 0, i32 3, i32 1)
  %i.s = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 32 ; 3 uses
  %i.t = add nuw nsw i32 %.026.i.i, 1
  %i.u = icmp ne ptr %i.s, %i.m
  %i.v = icmp samesign ult i32 %.026.i.i, 15
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i.i, label %.preheader24.i.i, !llvm.loop !403

.preheader.i.i:                                   ; preds = %.lr.ph30.i.i, %.preheader24.i.i
  %.promoted4 = phi i64 [ 0, %.preheader24.i.i ], [ %i.ab, %.lr.ph30.i.i ] ; 2 uses
  %.019.lcssa.i.i = phi ptr [ %.val1, %.preheader24.i.i ], [ %i.ah, %.lr.ph30.i.i ] ; 2 uses
  %.not2132.i.i = icmp eq ptr %.019.lcssa.i.i, %i.m
  br i1 %.not2132.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_8ByteSizeEvE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph34.i.i

.lr.ph30.i.i:                                     ; preds = %.preheader24.i.i, %.lr.ph30.i.i
  %i.x = phi i64 [ %i.ab, %.lr.ph30.i.i ], [ 0, %.preheader24.i.i ]
  %.129.i.i = phi ptr [ %i.ai, %.lr.ph30.i.i ], [ %.018.lcssa.i.i, %.preheader24.i.i ] ; 3 uses
  %.01928.i.i = phi ptr [ %i.ah, %.lr.ph30.i.i ], [ %.val1, %.preheader24.i.i ] ; 3 uses
  %i.y = load i32, ptr %.01928.i.i, align 8, !tbaa !109
  %i.z = getelementptr inbounds nuw i8, ptr %.01928.i.i, i64 8
  %i.aa = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i32 noundef %i.y)
  %i.ab = add i64 %i.x, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 18
  %i.ae = load i8, ptr %i.ad, align 2
  %i.af = trunc i8 %i.ae to i1
  %i.ag = load ptr, ptr %i.ac, align 8
  %spec.select.i22.i.i = select i1 %i.af, ptr %i.ag, ptr %i.ac
  tail call void @llvm.prefetch.p0(ptr %spec.select.i22.i.i, i32 0, i32 3, i32 1)
  %i.ah = getelementptr inbounds nuw i8, ptr %.01928.i.i, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.m
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph30.i.i, !llvm.loop !404

.lr.ph34.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph34.i.i
  %i.aj = phi i64 [ %i.an, %.lr.ph34.i.i ], [ %.promoted4, %.preheader.i.i ]
  %.12033.i.i = phi ptr [ %i.ao, %.lr.ph34.i.i ], [ %.019.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %i.ak = load i32, ptr %.12033.i.i, align 8, !tbaa !109
  %i.al = getelementptr inbounds nuw i8, ptr %.12033.i.i, i64 8
  %i.am = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i32 noundef %i.ak)
  %i.an = add i64 %i.aj, %i.am                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.12033.i.i, i64 32 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.ao, %i.m
  br i1 %.not21.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_8ByteSizeEvE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph34.i.i, !llvm.loop !405

"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_8ByteSizeEvE3$_0NS2_8PrefetchEEEvT_T0_.exit": ; preds = %.lr.ph34.i.i, %bb.b, %.preheader.i.i
  %i.ap = phi i64 [ %.promoted4, %.preheader.i.i ], [ %.pre, %bb.b ], [ %i.an, %.lr.ph34.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret i64 %i.ap
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, i8 } @_ZN6google8protobuf8internal12ExtensionSet6InsertEPNS0_5ArenaEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.a, 0 ; 9 uses
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.a, 1
  %i.b = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16
  store ptr %6, ptr %i.b, align 8, !tbaa !127
  %i.c = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = zext i1 %5 to i8
  %i.e = zext i1 %4 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store i8 %3, ptr %i.f, align 8, !tbaa !105
  %i.g = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 9
  store i8 %i.e, ptr %i.g, align 1, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 11
  store i8 %i.d, ptr %i.h, align 1, !tbaa !128
  %i.i = icmp ne ptr %7, null                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 10 ; 2 uses
  %i.k = zext i1 %i.i to i8
  %i.l = load i8, ptr %i.j, align 2
  %i.m = and i8 %i.l, -2
  %i.n = or disjoint i8 %i.m, %i.k
  store i8 %i.n, ptr %i.j, align 2
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %.fca.0.extract.i, ptr noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 10 ; 2 uses
  %i.q = load i8, ptr %i.p, align 2
  %i.r = and i8 %i.q, -3
  store i8 %i.r, ptr %i.p, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.0 = phi ptr [ %i.o, %bb.c ], [ %.fca.0.extract.i, %bb.b ], [ %.fca.0.extract.i, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !101, !range !104, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.aw

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.e = load i8, ptr %i.d, align 1, !tbaa !128, !range !104, !noundef !30
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !105   ; 3 uses
  br i1 %i.f, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  switch i8 %i.h, label %.thread [
    i8 5, label %.preheader
    i8 3, label %.preheader197
    i8 13, label %.preheader199
    i8 4, label %.preheader201
    i8 17, label %.preheader203
    i8 18, label %.preheader205
    i8 14, label %.preheader207
    i8 7, label %bb.k
    i8 6, label %bb.l
    i8 15, label %bb.m
    i8 16, label %bb.n
    i8 2, label %bb.o
    i8 1, label %bb.p
    i8 8, label %bb.q
    i8 9, label %bb.r
    i8 12, label %bb.r
    i8 10, label %bb.r
    i8 11, label %bb.r
  ]

.preheader207:                                    ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !13     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !116  ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph264, label %.loopexit.thread

.lr.ph264:                                        ; preds = %.preheader207
  %i.m = load i32, ptr %i.i, align 4, !tbaa !129
  %i.n = and i32 %i.m, 1
  %i.o = icmp eq i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %.0.v.i.i.i.i.i175 = select i1 %i.o, ptr %i.i, ptr %i.q
  %.0.i.i.i.i.i176 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i175, i64 8 ; 3 uses
  %wide.trip.count373 = zext nneg i32 %i.k to i64 ; 2 uses
  %xtraiter572 = and i64 %wide.trip.count373, 1
  %i.r = icmp eq i32 %i.k, 1
  br i1 %i.r, label %.epil.preheader571, label %.lr.ph264.new

.lr.ph264.new:                                    ; preds = %.lr.ph264
  %unroll_iter576 = and i64 %wide.trip.count373, 2147483646
  br label %bb.j

.preheader205:                                    ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8, !tbaa !13     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !116  ; 4 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph268, label %.loopexit.thread

.lr.ph268:                                        ; preds = %.preheader205
  %i.w = load i32, ptr %i.s, align 4, !tbaa !129
  %i.x = and i32 %i.w, 1
  %i.y = icmp eq i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %.0.v.i.i.i.i.i173 = select i1 %i.y, ptr %i.s, ptr %i.aa
  %.0.i.i.i.i.i174 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i173, i64 8 ; 3 uses
  %wide.trip.count378 = zext nneg i32 %i.u to i64 ; 2 uses
  %xtraiter579 = and i64 %wide.trip.count378, 1
  %i.ab = icmp eq i32 %i.u, 1
  br i1 %i.ab, label %.epil.preheader578, label %.lr.ph268.new

.lr.ph268.new:                                    ; preds = %.lr.ph268
  %unroll_iter583 = and i64 %wide.trip.count378, 2147483646
  br label %bb.i

.preheader203:                                    ; preds = %bb.c
  %i.ac = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !116 ; 4 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph272, label %.loopexit.thread

.lr.ph272:                                        ; preds = %.preheader203
  %i.ag = load i32, ptr %i.ac, align 4, !tbaa !129
  %i.ah = and i32 %i.ag, 1
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %.0.v.i.i.i.i.i171 = select i1 %i.ai, ptr %i.ac, ptr %i.ak
  %.0.i.i.i.i.i172 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i171, i64 8 ; 3 uses
  %wide.trip.count383 = zext nneg i32 %i.ae to i64 ; 2 uses
  %xtraiter586 = and i64 %wide.trip.count383, 1
  %i.al = icmp eq i32 %i.ae, 1
  br i1 %i.al, label %.epil.preheader585, label %.lr.ph272.new

.lr.ph272.new:                                    ; preds = %.lr.ph272
  %unroll_iter590 = and i64 %wide.trip.count383, 2147483646
  br label %bb.h

.preheader201:                                    ; preds = %bb.c
  %i.am = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !116 ; 4 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph276, label %.loopexit.thread

.lr.ph276:                                        ; preds = %.preheader201
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !129
  %i.ar = and i32 %i.aq, 1
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %.0.v.i.i.i.i.i169 = select i1 %i.as, ptr %i.am, ptr %i.au
  %.0.i.i.i.i.i170 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i169, i64 8 ; 3 uses
  %wide.trip.count388 = zext nneg i32 %i.ao to i64 ; 2 uses
  %xtraiter593 = and i64 %wide.trip.count388, 1
  %i.av = icmp eq i32 %i.ao, 1
  br i1 %i.av, label %.epil.preheader592, label %.lr.ph276.new

.lr.ph276.new:                                    ; preds = %.lr.ph276
  %unroll_iter597 = and i64 %wide.trip.count388, 2147483646
  br label %bb.g

.preheader199:                                    ; preds = %bb.c
  %i.aw = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8internal12ExtensionSet9Extension53InternalSerializeMessageSetItemWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_10WarningTagE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.1, i32 noundef 1894) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 30, ptr nonnull @.str.14)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit: ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.f = call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr poison, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.l

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2
  %i.j = and i8 %i.i, 2
  %.not26 = icmp eq i8 %i.j, 0
  br i1 %.not26, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %5, align 8, !tbaa !357
  %.not.i = icmp ult ptr %4, %i.k
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.f, !prof !34

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %4)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.l, %bb.f ], [ %4, %bb.e ]  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 11, ptr %.0.i, align 1, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  store i8 16, ptr %i.m, align 1, !tbaa !13
  %i.o = icmp ugt i32 %3, 127
  br i1 %i.o, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !360

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.n, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i = phi i32 [ %i.r, %.lr.ph.i ], [ %3, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.p = trunc i32 %.07.i1.i to i8
  %i.q = or i8 %i.p, -128
  store i8 %i.q, ptr %.0.i2.i, align 1, !tbaa !13
  %i.r = lshr i32 %.07.i1.i, 7                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 1 ; 2 uses
  %i.t = icmp ugt i32 %.07.i1.i, 16383
  br i1 %i.t, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !361, !llvm.loop !362

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit: ; preds = %.lr.ph.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i = phi i32 [ %3, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.r, %.lr.ph.i ]
  %.0.i.lcssa.i = phi ptr [ %i.n, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %i.u = trunc nuw nsw i32 %.07.i.lcssa.i to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 1 ; 2 uses
  store i8 %i.u, ptr %.0.i.lcssa.i, align 1, !tbaa !13
  %i.w = load i8, ptr %i.h, align 2
  %i.x = and i8 %i.w, 4
  %.not27 = icmp eq i8 %i.x, 0
  br i1 %.not27, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit
  %i.y = tail call fastcc noundef ptr @_ZN6google8protobuf8internal12_GLOBAL__N_123FindRegisteredExtensionEPKNS0_11MessageLiteEi(ptr noundef %1, i32 noundef %3) ; 4 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !13
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !14
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8 ; 2 uses
  %i.z = zext i8 %.sroa.4.0.copyload.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite21kWireTypeForFieldTypeE, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !313
  %.fr.i = freeze i32 %i.ab                       ; 2 uses
  %i.ac = trunc nuw i8 %.sroa.5.0.copyload.i to i1
  %i.ad = add i32 %.fr.i, -5
  %switch.i.i.i = icmp ult i32 %i.ad, -3
  %or.cond13.i.i = and i1 %switch.i.i.i, %i.ac
  br i1 %or.cond13.i.i, label %_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit, label %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i

_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i: ; preds = %bb.h
  %i.ae = icmp eq i32 %.fr.i, 2
  %spec.select.i = select i1 %i.ae, ptr %.sroa.9.0.copyload.i, ptr null
  br label %_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit

_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit: ; preds = %bb.g, %bb.h, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i
  %i.af = phi ptr [ %.sroa.9.0.copyload.i, %bb.h ], [ %spec.select.i, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i ], [ null, %bb.g ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.af, i32 noundef 3, ptr noundef nonnull %i.v, ptr noundef nonnull %5)
  br label %bb.j

bb.i:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.am = tail call noundef i32 @_ZNK6google8protobuf11MessageLite13GetCachedSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al)
  %i.an = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i32 noundef %i.am, ptr noundef nonnull %i.v, ptr noundef nonnull %5)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit
  %.025 = phi ptr [ %i.ak, %_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit ], [ %i.an, %bb.i ] ; 3 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !357
  %.not.i30 = icmp ult ptr %.025, %i.ao
  br i1 %.not.i30, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit32, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  %i.ap = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %.025)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit32

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit32: ; preds = %bb.j, %bb.k
  %.0.i31 = phi ptr [ %i.ap, %bb.k ], [ %.025, %bb.j ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i31, i64 1
  store i8 12, ptr %.0.i31, align 1, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit32, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit
  %.0 = phi ptr [ %i.f, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ %i.aq, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit32 ], [ %4, %bb.d ]
  ret ptr %.0
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_10WarningTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #4

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #23

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension22MessageSetItemByteSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !105
  %.not = icmp ne i8 %i.b, 11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.d = load i8, ptr %i.c, align 1, !range !104
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = load i8, ptr %i.g, align 2               ; 2 uses
  %i.i = and i8 %i.h, 2
  %.not6 = icmp eq i8 %i.i, 0
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8, !tbaa !148
  %i.k = or i32 %1, 1
  %i.l = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.k, i1 true)
  %i.m = xor i32 %i.l, 31
  %i.n = mul nuw nsw i32 %i.m, 9
  %i.o = add nuw nsw i32 %i.n, 73
  %i.p = lshr i32 %i.o, 6
  %i.q = zext nneg i32 %i.p to i64
  %i.r = and i8 %i.h, 4
  %.not7 = icmp eq i8 %i.r, 0
  %i.s = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !69
  %. = select i1 %.not7, i64 24, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = or i32 %i.x, 1
  %i.z = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.y, i1 true)
  %i.aa = xor i32 %i.z, 31
  %i.ab = mul nuw nsw i32 %i.aa, 9
  %i.ac = add nuw nsw i32 %i.ab, 73
  %i.ad = lshr i32 %i.ac, 6
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = add i64 %i.j, %i.q
  %i.ag = add i64 %i.af, %i.w
  %i.ah = add i64 %i.ag, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ %i.ah, %bb.d ], [ 0, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 0, ptr %i.a, align 8, !tbaa !148
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val = load i16, ptr %i.b, align 2, !tbaa !86  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 7 uses
  %i.d = icmp slt i16 %.val, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %.val1, align 8, !tbaa !89
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i32
  call fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_"(ptr %i.f, i32 0, ptr %i.h, i32 %i.k, ptr nonnull %i.a)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !148
  br label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_T0_.exit"

bb.c:                                             ; preds = %bb.a
  %i.l = zext nneg i16 %.val to i64
  %.idx.i = shl nuw nsw i64 %i.l, 5
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 %.idx.i ; 5 uses
  %.not42.i.i = icmp eq i16 %.val, 0
  br i1 %.not42.i.i, label %.preheader31.i.i, label %.lr.ph.i.i

.preheader31.i.i:                                 ; preds = %.lr.ph.i.i, %bb.c
  %.018.lcssa.i.i = phi ptr [ %.val1, %bb.c ], [ %i.t, %.lr.ph.i.i ] ; 2 uses
  %.not34.i.i = icmp eq ptr %.018.lcssa.i.i, %i.m
  br i1 %.not34.i.i, label %.preheader.i.i, label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %.preheader31.i.i
  %i.n = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8
  br label %bb.d

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.033.i.i = phi i32 [ %i.u, %.lr.ph.i.i ], [ 0, %bb.c ] ; 2 uses
  %.01832.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %.val1, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01832.i.i, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01832.i.i, i64 18
  %i.q = load i8, ptr %i.p, align 2
  %i.r = trunc i8 %i.q to i1
  %i.s = load ptr, ptr %i.o, align 8
  %spec.select.i.i.i = select i1 %i.r, ptr %i.s, ptr %i.o
  tail call void @llvm.prefetch.p0(ptr %spec.select.i.i.i, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %.01832.i.i, i64 32 ; 3 uses
  %i.u = add nuw nsw i32 %.033.i.i, 1
  %i.v = icmp ne ptr %i.t, %i.m
  %i.w = icmp samesign ult i32 %.033.i.i, 15
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  br i1 %i.x, label %.lr.ph.i.i, label %.preheader31.i.i, !llvm.loop !443

.preheader.i.i:                                   ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i", %.preheader31.i.i
  %.promoted4 = phi i64 [ 0, %.preheader31.i.i ], [ %i.bj, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ] ; 2 uses
  %.019.lcssa.i.i = phi ptr [ %.val1, %.preheader31.i.i ], [ %i.bp, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ] ; 2 uses
  %.not2139.i.i = icmp eq ptr %.019.lcssa.i.i, %i.m
  br i1 %.not2139.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.preheader.i.i
  %i.y = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8
  br label %bb.h

bb.d:                                             ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i", %.lr.ph37.i.i
  %i.z = phi i64 [ 0, %.lr.ph37.i.i ], [ %i.bj, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ]
  %.136.i.i = phi ptr [ %.018.lcssa.i.i, %.lr.ph37.i.i ], [ %i.bq, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ] ; 3 uses
  %.01935.i.i = phi ptr [ %.val1, %.lr.ph37.i.i ], [ %i.bp, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ] ; 6 uses
  %i.aa = load i32, ptr %.01935.i.i, align 8, !tbaa !109 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01935.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01935.i.i, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !105
  %.not.i.i.i.i = icmp ne i8 %i.ad, 11
  %i.ae = getelementptr inbounds nuw i8, ptr %.01935.i.i, i64 17
  %i.af = load i8, ptr %i.ae, align 1, !range !104
  %i.ag = trunc nuw i8 %i.af to i1
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.ag
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i32 noundef %i.aa)
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i"

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.01935.i.i, i64 18
  %i.aj = load i8, ptr %i.ai, align 2             ; 2 uses
  %i.ak = and i8 %i.aj, 2
  %.not6.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not6.i.i.i.i, label %bb.g, label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i"

bb.g:                                             ; preds = %bb.f
  %i.al = or i32 %i.aa, 1
  %i.am = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.al, i1 true)
  %i.an = xor i32 %i.am, 31
  %i.ao = mul nuw nsw i32 %i.an, 9
  %i.ap = add nuw nsw i32 %i.ao, 73
  %i.aq = lshr i32 %i.ap, 6
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = and i8 %i.aj, 4
  %.not7.i.i.i.i = icmp eq i8 %i.as, 0
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !69
  %..i.i.i.i = select i1 %.not7.i.i.i.i, i64 24, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %..i.i.i.i
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at), !inline_history !444 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = or i32 %i.ay, 1
  %i.ba = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.az, i1 true)
  %i.bb = xor i32 %i.ba, 31
  %i.bc = mul nuw nsw i32 %i.bb, 9
  %i.bd = add nuw nsw i32 %i.bc, 73
  %i.be = lshr i32 %i.bd, 6
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = add i64 %i.n, %i.ar
  %i.bh = add i64 %i.bg, %i.ax
  %i.bi = add i64 %i.bh, %i.bf
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i"

"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit.i.i": ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.bi, %bb.g ], [ 0, %bb.f ]
  %i.bj = add i64 %i.z, %.0.i.i.i.i               ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.136.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.136.i.i, i64 18
  %i.bm = load i8, ptr %i.bl, align 2
  %i.bn = trunc i8 %i.bm to i1
  %i.bo = load ptr, ptr %i.bk, align 8
  %spec.select.i22.i.i = select i1 %i.bn, ptr %i.bo, ptr %i.bk
  tail call void @llvm.prefetch.p0(ptr %spec.select.i22.i.i, i32 0, i32 3, i32 1)
  %i.bp = getelementptr inbounds nuw i8, ptr %.01935.i.i, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.136.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, %i.m
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d, !llvm.loop !445

bb.h:                                             ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit29.i.i", %.lr.ph41.i.i
  %i.br = phi i64 [ %.promoted4, %.lr.ph41.i.i ], [ %i.db, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit29.i.i" ]
  %.12040.i.i = phi ptr [ %.019.lcssa.i.i, %.lr.ph41.i.i ], [ %i.dc, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit29.i.i" ] ; 6 uses
  %i.bs = load i32, ptr %.12040.i.i, align 8, !tbaa !109 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.12040.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.12040.i.i, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !105
  %.not.i.i23.i.i = icmp ne i8 %i.bv, 11
  %i.bw = getelementptr inbounds nuw i8, ptr %.12040.i.i, i64 17
  %i.bx = load i8, ptr %i.bw, align 1, !range !104
  %i.by = trunc nuw i8 %i.bx to i1
  %or.cond.i.i24.i.i = select i1 %.not.i.i23.i.i, i1 true, i1 %i.by
  br i1 %or.cond.i.i24.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bz = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i32 noundef %i.bs)
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit29.i.i"

bb.j:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %.12040.i.i, i64 18
  %i.cb = load i8, ptr %i.ca, align 2             ; 2 uses
  %i.cc = and i8 %i.cb, 2
  %.not6.i.i25.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not6.i.i25.i.i, label %bb.k, label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit29.i.i"

bb.k:                                             ; preds = %bb.j
  %i.cd = or i32 %i.bs, 1
  %i.ce = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cd, i1 true)
  %i.cf = xor i32 %i.ce, 31
  %i.cg = mul nuw nsw i32 %i.cf, 9
  %i.ch = add nuw nsw i32 %i.cg, 73
  %i.ci = lshr i32 %i.ch, 6
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = and i8 %i.cb, 4
  %.not7.i.i27.i.i = icmp eq i8 %i.ck, 0
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !13 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !69
  %..i.i28.i.i = select i1 %.not7.i.i27.i.i, i64 24, i64 104
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %..i.i28.i.i
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = tail call noundef i64 %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.cl), !inline_history !444 ; 2 uses
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = or i32 %i.cq, 1
  %i.cs = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cr, i1 true)
  %i.ct = xor i32 %i.cs, 31
  %i.cu = mul nuw nsw i32 %i.ct, 9
  %i.cv = add nuw nsw i32 %i.cu, 73
  %i.cw = lshr i32 %i.cv, 6
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = add i64 %i.y, %i.cj
  %i.cz = add i64 %i.cy, %i.cp
  %i.da = add i64 %i.cz, %i.cx
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit29.i.i"

"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit29.i.i": ; preds = %bb.k, %bb.j, %bb.i
  %.0.i.i26.i.i = phi i64 [ %i.bz, %bb.i ], [ %i.da, %bb.k ], [ 0, %bb.j ]
  %i.db = add i64 %i.br, %.0.i.i26.i.i            ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.12040.i.i, i64 32 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.dc, %i.m
  br i1 %.not21.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %bb.h, !llvm.loop !446

"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_T0_.exit": ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit29.i.i", %bb.b, %.preheader.i.i
  %i.dd = phi i64 [ %.promoted4, %.preheader.i.i ], [ %.pre, %bb.b ], [ %i.db, %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit29.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret i64 %i.dd
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_ZN6google8protobuf8internal30FindExtensionLazyEagerVerifyFnEPKNS0_11MessageLiteEi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZN6google8protobuf8internal12_GLOBAL__N_123FindRegisteredExtensionEPKNS0_11MessageLiteEi(ptr noundef %0, i32 noundef %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal12ExtensionSet20LazyMessageExtensionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal12ExtensionSet20LazyMessageExtensionD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #37
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #26

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIhlEEPKcT_T0_S4_(i8 noundef zeroext %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::CheckOpMessageBuilder", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef %2)
  invoke void @_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringERSoh(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef zeroext %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %1)
          to label %_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringIlEEvRSoRKT_.exit unwind label %bb.e ; 0 uses

_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringIlEEvRSoRKT_.exit: ; preds = %bb.c
  %i.c = invoke noundef ptr @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilder9NewStringEv(ptr noundef nonnull align 8 dereferenceable(376) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringIlEEvRSoRKT_.exit
  %i.d = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !69
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.f = getelementptr i8, ptr %i.d, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %3, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.i, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !126  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !13
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #39
  br label %_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderD2Ev.exit

_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderD2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #35
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret ptr %i.c

bb.e:                                             ; preds = %bb.c, %_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringIlEEvRSoRKT_.exit, %bb.b, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.r
}

declare void @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef) unnamed_addr #15

declare void @_ZN4absl12lts_2025051212log_internal22MakeCheckOpValueStringERSoh(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef zeroext) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(376)) local_unnamed_addr #15

declare noundef ptr @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilder9NewStringEv(ptr noundef nonnull align 8 dereferenceable(376)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051212log_internal21CheckOpMessageBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !69
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !126  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !13
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #39
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
end_hunk_1
