Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SourceMap?download=true
inline.NumInlined: 126
inline.NumDeleted: 80
begin_hunk_0_@_ZNK6hermes9SourceMap27getLocationForAddressFIndexEjj:bb.a
  %i.ad = add nsw i64 %.07.i.i.i, %i.ac
  %.sroa.02.1.i.i.i = select i1 %i.aa, ptr %.sroa.02.06.i.i.i, ptr %i.ab ; 4 uses
  %.1.i.i.i = select i1 %i.aa, i64 %i.y, i64 %i.ad ; 2 uses
  %i.ae = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ae, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit.i", !llvm.loop !0

"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit.i": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.af = icmp eq ptr %.sroa.02.1.i.i.i, %i.o
  br i1 %i.af, label %_ZNK6hermes9SourceMap20getSegmentForAddressEjj.exit.thread, label %bb.e

bb.e:                                             ; preds = %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit.i"
  %i.ag = icmp eq ptr %.sroa.02.1.i.i.i, %i.q
  %.v.i = select i1 %i.ag, ptr %i.q, ptr %.sroa.02.1.i.i.i ; 4 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds i8, ptr %.v.i, i64 -4
  %.sroa.65.0.copyload = load i8, ptr %.sroa.65.0..sroa_idx, align 4
  %i.ah = trunc nuw i8 %.sroa.65.0.copyload to i1
  br i1 %i.ah, label %bb.f, label %_ZNK6hermes9SourceMap20getSegmentForAddressEjj.exit.thread

bb.f:                                             ; preds = %bb.e
  %.sroa.54.0..sroa_idx = getelementptr inbounds i8, ptr %.v.i, i64 -16
  %.sroa.54.0.copyload = load i32, ptr %.sroa.54.0..sroa_idx, align 4
  %.sroa.43.0..sroa_idx = getelementptr inbounds i8, ptr %.v.i, i64 -20
  %.sroa.43.0.copyload = load i32, ptr %.sroa.43.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %.v.i, i64 -24
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4
  %i.ai = add i32 %.sroa.43.0.copyload, 1
  %i.aj = add i32 %.sroa.54.0.copyload, 1
  %i.ak = zext i32 %i.ai to i64
  %i.al = shl nuw i64 %i.ak, 32
  %i.am = zext i32 %.sroa.3.0.copyload to i64
  %i.an = or disjoint i64 %i.al, %i.am
  %i.ao = zext i32 %i.aj to i64
  %i.ap = or disjoint i64 %i.ao, 4294967296
  br label %_ZNK6hermes9SourceMap20getSegmentForAddressEjj.exit.thread

_ZNK6hermes9SourceMap20getSegmentForAddressEjj.exit.thread: ; preds = %bb.d, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit.i", %bb.b, %bb.c, %bb.a, %bb.e, %bb.f
  %.sroa.2.0 = phi i64 [ %i.an, %bb.f ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit.i" ], [ 0, %bb.d ]
  %.sroa.59.0 = phi i64 [ %i.ap, %bb.f ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit.i" ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.2.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.59.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK6hermes9SourceMap20getSegmentForAddressEjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::Optional.0") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 !guid !28 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = icmp ult i64 %i.j, %i.b
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.l, align 4, !tbaa !32
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.m = add i32 %2, -1
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 4 uses
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.t, align 4, !tbaa !32
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.u = add i32 %3, -1
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i, label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit.thread"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i: ; preds = %bb.f
  %i.z = udiv exact i64 %i.x, 28
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i
  %.07.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.z, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %.sroa.02.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.p, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i ] ; 2 uses
  %i.aa = lshr i64 %.07.i.i, 1                    ; 3 uses
  %i.ab = getelementptr inbounds nuw [28 x i8], ptr %.sroa.02.06.i.i, i64 %i.aa ; 2 uses
  %.val.i.i.i = load i32, ptr %i.ab, align 4, !tbaa !22
  %i.ac = icmp ult i32 %i.u, %.val.i.i.i          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.ae = xor i64 %i.aa, -1
  %i.af = add nsw i64 %.07.i.i, %i.ae
  %.sroa.02.1.i.i = select i1 %i.ac, ptr %.sroa.02.06.i.i, ptr %i.ad ; 4 uses
  %.1.i.i = select i1 %i.ac, i64 %i.aa, i64 %i.af ; 2 uses
  %i.ag = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ag, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit", !llvm.loop !0

"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.ah = icmp eq ptr %.sroa.02.1.i.i, %i.p
  br i1 %i.ah, label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit.thread", label %bb.g

"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit.thread": ; preds = %bb.f, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit"
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.ai, align 4, !tbaa !32
  br label %bb.h

bb.g:                                             ; preds = %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit"
  %i.aj = icmp eq ptr %.sroa.02.1.i.i, %i.r
  %.v = select i1 %i.aj, ptr %i.r, ptr %.sroa.02.1.i.i
  %i.ak = getelementptr inbounds i8, ptr %.v, i64 -28
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.al, align 4, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(28) %i.ak, i64 28, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit.thread", %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes9SourceMap21getLocationForAddressEjj(ptr dead_on_unwind noalias writable sret(%"class.llvh::Optional.28") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 !guid !41 {
bb.a:
  %4 = alloca %"struct.hermes::SourceMapTextLocation", align 8 ; 10 uses
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %_ZNK6hermes9SourceMap27getLocationForAddressFIndexEjj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12, !noalias !42
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !13, !noalias !42 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = icmp ult i64 %i.j, %i.b
  br i1 %i.k, label %_ZNK6hermes9SourceMap27getLocationForAddressFIndexEjj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %2, -1
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15, !noalias !42 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15, !noalias !42 ; 4 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %_ZNK6hermes9SourceMap27getLocationForAddressFIndexEjj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = add i32 %3, -1
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i, label %_ZNK6hermes9SourceMap27getLocationForAddressFIndexEjj.exit.thread

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i: ; preds = %bb.d
  %i.x = udiv exact i64 %i.v, 28
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i
  %.07.i.i.i.i = phi i64 [ %.1.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.x, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i ] ; 2 uses
  %.sroa.02.06.i.i.i.i = phi ptr [ %.sroa.02.1.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.o, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i ] ; 2 uses
  %i.y = lshr i64 %.07.i.i.i.i, 1                 ; 3 uses
  %i.z = getelementptr inbounds nuw [28 x i8], ptr %.sroa.02.06.i.i.i.i, i64 %i.y ; 2 uses
  %.val.i.i.i.i.i = load i32, ptr %i.z, align 4, !tbaa !22, !noalias !42
  %i.aa = icmp ult i32 %i.s, %.val.i.i.i.i.i      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.ac = xor i64 %i.y, -1
  %i.ad = add nsw i64 %.07.i.i.i.i, %i.ac
  %.sroa.02.1.i.i.i.i = select i1 %i.aa, ptr %.sroa.02.06.i.i.i.i, ptr %i.ab ; 4 uses
  %.1.i.i.i.i = select i1 %i.aa, i64 %i.y, i64 %i.ad ; 2 uses
  %i.ae = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.ae, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit.i.i", !llvm.loop !0

"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit.i.i": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %i.af = icmp eq ptr %.sroa.02.1.i.i.i.i, %i.o
  br i1 %i.af, label %_ZNK6hermes9SourceMap27getLocationForAddressFIndexEjj.exit.thread, label %bb.e

bb.e:                                             ; preds = %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit.i.i"
  %i.ag = icmp eq ptr %.sroa.02.1.i.i.i.i, %i.q
  %.v.i.i = select i1 %i.ag, ptr %i.q, ptr %.sroa.02.1.i.i.i.i ; 4 uses
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds i8, ptr %.v.i.i, i64 -4
  %.sroa.65.0.copyload.i = load i8, ptr %.sroa.65.0..sroa_idx.i, align 4
  %i.ah = trunc nuw i8 %.sroa.65.0.copyload.i to i1
  br i1 %i.ah, label %_ZNK6hermes9SourceMap27getLocationForAddressFIndexEjj.exit, label %_ZNK6hermes9SourceMap27getLocationForAddressFIndexEjj.exit.thread

_ZNK6hermes9SourceMap27getLocationForAddressFIndexEjj.exit: ; preds = %bb.e
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds i8, ptr %.v.i.i, i64 -16
  %.sroa.54.0.copyload.i = load i32, ptr %.sroa.54.0..sroa_idx.i, align 4
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds i8, ptr %.v.i.i, i64 -20
  %.sroa.43.0.copyload.i = load i32, ptr %.sroa.43.0..sroa_idx.i, align 4
  %.sroa.43.0.copyload.i.fr = freeze i32 %.sroa.43.0.copyload.i
  %5 = add i32 %.sroa.43.0.copyload.i.fr, 1
  %.sroa.54.0.copyload.i.fr = freeze i32 %.sroa.54.0.copyload.i
  %6 = add i32 %.sroa.54.0.copyload.i.fr, 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %.v.i.i, i64 -24
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = zext i32 %.sroa.3.0.copyload.i to i64
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !46, !noalias !43
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.am = load ptr, ptr %1, align 8, !tbaa !52, !noalias !53
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !54, !noalias !53 ; 3 uses
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !52, !noalias !53
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !54, !noalias !53 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.as, ptr %4, align 8, !tbaa !55, !alias.scope !56
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 0, ptr %i.at, align 8, !tbaa !54, !alias.scope !56
  store i8 0, ptr %i.as, align 8, !tbaa !57, !alias.scope !56
  %i.au = add i64 %i.ar, %i.ao
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.au) #8
  %i.av = load i64, ptr %i.at, align 8, !tbaa !54, !alias.scope !56
  %i.aw = sub i64 4611686018427387903, %i.av
  %i.ax = icmp ult i64 %i.aw, %i.ao
  br i1 %i.ax, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i

_ZNK6hermes9SourceMap27getLocationForAddressFIndexEjj.exit.thread: ; preds = %bb.d, %"_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN6hermes9SourceMap7SegmentESt6vectorIS4_SaIS4_EEEEjZNKS3_20getSegmentForAddressEjjE3$_0ET_SC_SC_RKT0_T1_.exit.i.i", %bb.b, %bb.c, %bb.a, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.ay, align 8, !tbaa !61
  br label %bb.i

bb.f:                                             ; preds = %_ZNK6hermes9SourceMap27getLocationForAddressFIndexEjj.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %_ZNK6hermes9SourceMap27getLocationForAddressFIndexEjj.exit
  %i.az = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.am, i64 noundef %i.ao) #8 ; 0 uses
  %i.ba = load i64, ptr %i.at, align 8, !tbaa !54, !alias.scope !56
  %i.bb = sub i64 4611686018427387903, %i.ba
  %i.bc = icmp ult i64 %i.bb, %i.ar
  br i1 %i.bc, label %bb.g, label %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
  unreachable

_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.bd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ap, i64 noundef %i.ar) #8 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 32
  %7 = zext i32 %5 to i64
  %8 = zext i32 %6 to i64
  %9 = shl nuw i64 %8, 32
  %10 = or disjoint i64 %9, %7                    ; 2 uses
  store i64 %10, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.bf, align 8, !tbaa !61
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !55
  %i.bh = load ptr, ptr %4, align 8, !tbaa !52    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.as
  br i1 %i.bi, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.h:                                             ; preds = %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit
  %i.bj = load i64, ptr %i.at, align 8, !tbaa !54 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bl, i1 false)
  br label %_ZN6hermes21SourceMapTextLocationD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit
  store ptr %i.bh, ptr %0, align 8, !tbaa !52
  %i.bm = load i64, ptr %i.as, align 8, !tbaa !57
  store i64 %i.bm, ptr %i.bg, align 8, !tbaa !57
  %.pre = load i64, ptr %i.at, align 8, !tbaa !54
  br label %_ZN6hermes21SourceMapTextLocationD2Ev.exit

_ZN6hermes21SourceMapTextLocationD2Ev.exit:       ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bn = phi i64 [ %i.bj, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !54
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %10, ptr %i.bp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.i

bb.i:                                             ; preds = %_ZN6hermes21SourceMapTextLocationD2Ev.exit, %_ZNK6hermes9SourceMap27getLocationForAddressFIndexEjj.exit.thread
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !23}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 6394259686581035419}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE", !9, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6hermes9SourceMap7SegmentESaIS3_EESaIS5_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!11, !10, i64 8}
!13 = !{!11, !10, i64 0}
!14 = !{!"p1 _ZTSN6hermes9SourceMap7SegmentE", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"_ZTSN4llvh16AlignedCharArrayILm4ELm20EEE", !5, i64 0}
!17 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIN6hermes9SourceMap7Segment14SourceLocationEcccccccccEE", !16, i64 0}
!18 = !{!"bool", !5, i64 0}
!19 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageIN6hermes9SourceMap7Segment14SourceLocationELb1EEE", !17, i64 0, !18, i64 20}
!20 = !{!"_ZTSN4llvh8OptionalIN6hermes9SourceMap7Segment14SourceLocationEEE", !19, i64 0}
!21 = !{!"_ZTSN6hermes9SourceMap7SegmentE", !6, i64 0, !20, i64 4}
!22 = !{!21, !6, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, i1 true, !"_ZNK6hermes9SourceMap20getSegmentForAddressEjj"}
!25 = distinct !{!25, !24, !"_ZNK6hermes9SourceMap20getSegmentForAddressEjj: argument 0"}
!26 = !{i64 1292550604711519012}
!27 = !{!25}
!28 = !{i64 -3481784186459224230}
!29 = !{!"_ZTSN4llvh16AlignedCharArrayILm4ELm28EEE", !5, i64 0}
!30 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIN6hermes9SourceMap7SegmentEcccccccccEE", !29, i64 0}
!31 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageIN6hermes9SourceMap7SegmentELb1EEE", !30, i64 0, !18, i64 28}
!32 = !{!31, !18, i64 28}
!33 = distinct !{!33, i1 true, !"_ZNK6hermes9SourceMap20getSegmentForAddressEjj"}
!34 = distinct !{!34, !33, !"_ZNK6hermes9SourceMap20getSegmentForAddressEjj: argument 0"}
!35 = distinct !{!35, i1 true, !"_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej"}
!36 = distinct !{!36, !35, !"_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej: argument 0"}
!37 = distinct !{!37, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!38 = distinct !{!38, !37, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!39 = distinct !{!39, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!40 = distinct !{!40, !39, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!41 = !{i64 -1828299247193229456}
!42 = !{!34}
!43 = !{!36}
!44 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!45, !44, i64 0}
!47 = !{!38}
!48 = !{!"p1 omnipotent char", !9, i64 0}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !48, i64 0}
!50 = !{!"long", !5, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !49, i64 0, !50, i64 8, !5, i64 16}
!52 = !{!51, !48, i64 0}
!53 = !{!38, !36}
!54 = !{!51, !50, i64 8}
!55 = !{!49, !48, i64 0}
!56 = !{!40, !38, !36}
!57 = !{!5, !5, i64 0}
!58 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm40EEE", !5, i64 0}
!59 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIN6hermes21SourceMapTextLocationEcccccccccEE", !58, i64 0}
!60 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageIN6hermes21SourceMapTextLocationELb0EEE", !59, i64 0, !18, i64 40}
!61 = !{!60, !18, i64 40}
end_hunk_0
