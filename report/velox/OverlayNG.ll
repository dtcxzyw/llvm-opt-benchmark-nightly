Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/OverlayNG?download=true
inline.NumInlined: 862
inline.NumDeleted: 644
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4geos9operation9overlayng9OverlayNG18computeEdgeOverlayEv:bb.a

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i, %bb.an
  %.pn22 = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i ], [ %.pn.pn.pn, %bb.an ], [ %lpad.loopexit.split-lp49, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4geos9operation9overlayng12OverlayGraphD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %6) #18
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, %bb.s
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit ], [ %i.ab, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.r
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %bb.aq ], [ %i.aa, %bb.r ] ; 2 uses
  %i.bq = load ptr, ptr %5, align 8, !tbaa !194   ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIPN4geos9operation9overlayng4EdgeESaIS4_EED2Ev.exit32, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #19
  br label %_ZNSt6vectorIPN4geos9operation9overlayng4EdgeESaIS4_EED2Ev.exit32

_ZNSt6vectorIPN4geos9operation9overlayng4EdgeESaIS4_EED2Ev.exit32: ; preds = %bb.as, %bb.ar, %bb.q
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.q ], [ %.pn22.pn.pn, %bb.ar ], [ %.pn22.pn.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIPN4geos9operation9overlayng4EdgeESaIS4_EED2Ev.exit32, %bb.f
  %.pn22.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn, %_ZNSt6vectorIPN4geos9operation9overlayng4EdgeESaIS4_EED2Ev.exit32 ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZN4geos9operation9overlayng17EdgeNodingBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn22.pn.pn.pn.pn

bb.au:                                            ; preds = %bb.aj
  unreachable
}

declare void @_ZN4geos9operation9overlayng14ElevationModel9populateZERNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos9operation9overlayng17EdgeNodingBuilderC2EPKNS_4geom14PrecisionModelEPNS_6noding5NoderE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !195 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !231
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.c, align 8, !tbaa !232
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.d, align 8, !tbaa !233
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.e, align 1, !tbaa !233
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  store double +qnan, ptr %i.j, align 8, !tbaa !101
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.k, align 8, !tbaa !101
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.l, align 8, !tbaa !234
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos6noding17IntersectionAdderE, i64 16), ptr %i.m, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 16, i1 false)
  store i32 0, ptr %i.n, align 8
  store double +qnan, ptr %i.p, align 8, !tbaa !101
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.i, ptr %i.q, align 8, !tbaa !235
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.r, i8 0, i64 112, i1 false)
  invoke void @_ZNSt11_Deque_baseIN4geos9operation9overlayng14EdgeSourceInfoESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 noundef 0)
          to label %_ZNSt5dequeIN4geos9operation9overlayng14EdgeSourceInfoESaIS3_EEC2Ev.exit unwind label %bb.b

_ZNSt5dequeIN4geos9operation9overlayng14EdgeSourceInfoESaIS3_EEC2Ev.exit: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.v, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIN4geos9operation9overlayng4EdgeESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.v, i64 noundef 0)
          to label %_ZNSt5dequeIN4geos9operation9overlayng4EdgeESaIS3_EEC2Ev.exit unwind label %bb.c

_ZNSt5dequeIN4geos9operation9overlayng4EdgeESaIS3_EEC2Ev.exit: ; preds = %_ZNSt5dequeIN4geos9operation9overlayng14EdgeSourceInfoESaIS3_EEC2Ev.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt5dequeIN4geos9operation9overlayng14EdgeSourceInfoESaIS3_EEC2Ev.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt5dequeIN4geos9operation9overlayng14EdgeSourceInfoESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.u) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !102  ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos6noding5NoderEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos6noding5NoderEEclEPS2_.exit.i: ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #18, !inline_history !2
  br label %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN4geos6noding5NoderEEclEPS2_.exit.i
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !102 ; 3 uses
  %.not.i8 = icmp eq ptr %i.ac, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit10, label %_ZNKSt14default_deleteIN4geos6noding5NoderEEclEPS2_.exit.i9

_ZNKSt14default_deleteIN4geos6noding5NoderEEclEPS2_.exit.i9: ; preds = %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #18, !inline_history !2
  br label %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit10

_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit10: ; preds = %_ZNKSt14default_deleteIN4geos6noding5NoderEEclEPS2_.exit.i9, %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit
  tail call void @_ZNSt10unique_ptrIN4geos9operation9overlayng11LineLimiterESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #18
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !103 ; 2 uses
  %.not.i11 = icmp eq ptr %i.ag, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN4geos9operation9overlayng11RingClipperESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos9operation9overlayng11RingClipperEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4geos9operation9overlayng11RingClipperEEclEPS3_.exit.i: ; preds = %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit10
  tail call void @_ZdlPv(ptr noundef nonnull %i.ag) #19
  br label %_ZNSt10unique_ptrIN4geos9operation9overlayng11RingClipperESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4geos9operation9overlayng11RingClipperESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos6noding5NoderESt14default_deleteIS2_EED2Ev.exit10, %_ZNKSt14default_deleteIN4geos9operation9overlayng11RingClipperEEclEPS3_.exit.i
  tail call void @_ZNSt10unique_ptrISt6vectorIPN4geos6noding13SegmentStringESaIS4_EESt14default_deleteIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #18
  resume { ptr, i32 } %.pn
}

declare void @_ZN4geos4util9Interrupt7processEv() local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4geos9operation9overlayng11OverlayUtil16clippingEnvelopeEiPKNS1_13InputGeometryEPKNS_4geom14PrecisionModelERNS6_8EnvelopeE(i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN4geos9operation9overlayng17EdgeNodingBuilder15setClipEnvelopeEPKNS_4geom8EnvelopeE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef) local_unnamed_addr #4

declare void @_ZN4geos9operation9overlayng17EdgeNodingBuilder5buildEPKNS_4geom8GeometryES6_(ptr dead_on_unwind writable sret(%"class.std::vector.83") align 8, ptr noundef nonnull align 8 dereferenceable(432), ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN4geos9operation9overlayng13InputGeometry12setCollapsedEhb(ptr noundef nonnull align 8 dereferenceable(34), i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4geos9operation9overlayng17EdgeNodingBuilder11hasEdgesForEh(ptr noundef nonnull align 8 dereferenceable(432), i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4geos9operation9overlayng12OverlayGraphC1Ev(ptr noundef nonnull align 8 dereferenceable(264)) unnamed_addr #4

declare noundef ptr @_ZN4geos9operation9overlayng12OverlayGraph7addEdgeEPNS1_4EdgeE(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #4

declare void @_ZN4geos9operation9overlayng11OverlayUtil7toLinesEPNS1_12OverlayGraphEbPKNS_4geom15GeometryFactoryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng9OverlayNG10labelGraphEPNS1_12OverlayGraphE(ptr noundef nonnull align 8 dereferenceable(78) %0, ptr noundef nonnull %1) local_unnamed_addr #3 align 2 !guid !236 {
bb.a:
  %2 = alloca %"class.geos::operation::overlayng::OverlayLabeller", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %2, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4geos9operation9overlayng12OverlayGraph8getEdgesEv(ptr noundef nonnull align 8 dereferenceable(264) %1)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !84
  call void @_ZN4geos9operation9overlayng15OverlayLabeller16computeLabellingEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !57
  call void @_ZN4geos9operation9overlayng15OverlayLabeller19markResultAreaEdgesEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.f)
  call void @_ZN4geos9operation9overlayng15OverlayLabeller34unmarkDuplicateEdgesFromResultAreaEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng9OverlayNG13extractResultEiPNS1_12OverlayGraphE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(78) %1, i32 noundef %2, ptr noundef nonnull %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !246 {
bb.a:
  %4 = alloca %"class.std::vector.93", align 8    ; 7 uses
  %5 = alloca %"class.geos::operation::overlayng::PolygonBuilder", align 8 ; 13 uses
  %6 = alloca %"class.std::vector.129", align 8   ; 11 uses
  %7 = alloca %"class.std::vector.134", align 16  ; 17 uses
  %8 = alloca %"class.std::vector.139", align 16  ; 15 uses
  %9 = alloca %"class.geos::operation::overlayng::LineBuilder", align 8 ; 14 uses
  %10 = alloca %"class.std::vector.134", align 16 ; 10 uses
  %11 = alloca %"class.geos::operation::overlayng::IntersectionPointBuilder", align 8 ; 10 uses
  %12 = alloca %"class.std::vector.139", align 16 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !59, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = xor i1 %i.c, true                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN4geos9operation9overlayng12OverlayGraph18getResultAreaEdgesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.93") align 8 %4, ptr noundef nonnull align 8 dereferenceable(264) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56
  store ptr %i.f, ptr %5, align 8, !tbaa !254
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.h, align 8, !tbaa !255
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  invoke void @_ZN4geos9operation9overlayng14PolygonBuilder10buildRingsERKSt6vectorIPNS1_11OverlayEdgeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN4geos9operation9overlayng14PolygonBuilderC2ERSt6vectorIPNS1_11OverlayEdgeESaIS5_EEPKNS_4geom15GeometryFactoryE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @_ZNSt6vectorISt10unique_ptrIN4geos9operation9overlayng15OverlayEdgeRingESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #18
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4geos9operation9overlayng15OverlayEdgeRingESaIS4_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdlPv(ptr noundef nonnull %i.l) #19
  br label %_ZNSt6vectorIPN4geos9operation9overlayng15OverlayEdgeRingESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4geos9operation9overlayng15OverlayEdgeRingESaIS4_EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i4.i, label %.body, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPN4geos9operation9overlayng15OverlayEdgeRingESaIS4_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.m) #19
  br label %.body

_ZN4geos9operation9overlayng14PolygonBuilderC2ERSt6vectorIPNS1_11OverlayEdgeESaIS5_EEPKNS_4geom15GeometryFactoryE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNK4geos9operation9overlayng14PolygonBuilder11getPolygonsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.129") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %5)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %_ZN4geos9operation9overlayng14PolygonBuilderC2ERSt6vectorIPNS1_11OverlayEdgeESaIS5_EEPKNS_4geom15GeometryFactoryE.exit
  %i.n = load ptr, ptr %6, align 8, !tbaa !256
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !256
  %i.q = icmp ne ptr %i.n, %i.p                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN4geos4util9Interrupt7processEv()
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.s = load i8, ptr %i.r, align 2, !tbaa !257, !range !72, !noundef !73
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.z, label %bb.g

bb.g:                                             ; preds = %bb.f
  %or.cond.not = and i1 %i.q, %i.c
  br i1 %or.cond.not, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load i32, ptr %i.u, align 8, !tbaa !57
  switch i32 %i.v, label %13 [
    i32 4, label %.critedge
    i32 2, label %.critedge
  ]

.critedge:                                        ; preds = %bb.g, %bb.h, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.y = zext i1 %i.q to i8
  store ptr %3, ptr %9, align 8, !tbaa !262
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %2, ptr %i.z, align 8, !tbaa !263
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !264
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 %i.y, ptr %i.ab, align 8, !tbaa !265
  %i.ac = invoke noundef i32 @_ZNK4geos9operation9overlayng13InputGeometry12getAreaIndexEv(ptr noundef nonnull align 8 dereferenceable(34) %i.w)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %.critedge
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 25
  %i.ae = trunc i32 %i.ac to i8
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !266
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 57
  %i.ai = load i8, ptr %i.a, align 8, !tbaa !59, !range !72, !noundef !73
  %i.aj = xor i8 %i.ai, 1                         ; 2 uses
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !267
  store i8 %i.aj, ptr %i.ag, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN4geos9operation9overlayng11LineBuilder8getLinesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.134") align 8 %10, ptr noundef nonnull align 8 dereferenceable(58) %9)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %7, align 16, !tbaa !112  ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !113 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = load <2 x ptr>, ptr %10, align 16, !tbaa !269
  store <2 x ptr> %i.ap, ptr %7, align 16, !tbaa !269
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !270
  store ptr %i.ar, ptr %i.an, align 16, !tbaa !270
  %.not4.i.i.i.i.i = icmp eq ptr %i.ak, %i.am
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.aw, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i ], [ %i.ak, %bb.j ] ; 2 uses
  %i.as = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(48) %i.as) #18, !inline_history !237
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, %i.am
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, %bb.j
  %.not.i.i1.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ak) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, %bb.k
  %i.ax = load ptr, ptr %10, align 16, !tbaa !112 ; 3 uses
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !113 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bd, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.ax, %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit ] ; 2 uses
  %i.az = load ptr, ptr %.05.i.i.i, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i31, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !63
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(48) %i.az) #18, !inline_history !4
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, %i.ay
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 16, !tbaa !112
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit
  %i.be = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.ax, %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.be) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.bf = load ptr, ptr %i.af, align 8, !tbaa !112 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !113 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bf, %i.bh
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bm, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.bf, %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !63
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(48) %i.bi) #18, !inline_history !238
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.bm, %i.bh
  br i1 %.not.i.i.i.i32, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.af, align 8, !tbaa !112
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.bn = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bf, %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i1.i.i, label %_ZN4geos9operation9overlayng11LineBuilderD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bn) #19
  br label %_ZN4geos9operation9overlayng11LineBuilderD2Ev.exit

_ZN4geos9operation9overlayng11LineBuilderD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %13

bb.n:                                             ; preds = %_ZN4geos9operation9overlayng14PolygonBuilderC2ERSt6vectorIPNS1_11OverlayEdgeESaIS5_EEPKNS_4geom15GeometryFactoryE.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.o:                                             ; preds = %.noexc54, %.noexc53, %.noexc, %bb.ac, %bb.ad, %bb.e
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.p:                                             ; preds = %.critedge
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN4geos9operation9overlayng11LineBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(58) dereferenceable(58) %9) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.br, %bb.q ], [ %i.bq, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.an

13:                                               ; preds = %bb.h, %_ZN4geos9operation9overlayng11LineBuilderD2Ev.exit
  br i1 %i.q, label %14, label %bb.s

bb.s:                                             ; preds = %13
  %i.bs = load ptr, ptr %7, align 16, !tbaa !269
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !269
  %i.bv = icmp eq ptr %i.bs, %i.bu
  %or.cond3.a = select i1 %i.bv, i1 true, i1 %i.d
  br label %14

14:                                               ; preds = %bb.s, %13
  %not. = phi i1 [ %i.d, %13 ], [ %or.cond3.a, %bb.s ]
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %16 = load i32, ptr %15, align 8, !tbaa !57
  %17 = icmp eq i32 %16, 1
  %or.cond3 = select i1 %17, i1 %not., i1 false
  br i1 %or.cond3, label %bb.t, label %bb.z

bb.t:                                             ; preds = %14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !56
  store ptr %3, ptr %11, align 8, !tbaa !275
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !276
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, i8 0, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ca = load i8, ptr %i.a, align 8, !tbaa !59, !range !72, !noundef !73
  %i.cb = xor i8 %i.ca, 1
  store i8 %i.cb, ptr %i.bz, align 8, !tbaa !277
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZN4geos9operation9overlayng24IntersectionPointBuilder9getPointsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.139") align 8 %12, ptr noundef nonnull align 8 dereferenceable(41) %11)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cc = load ptr, ptr %8, align 16, !tbaa !119  ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !120 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ch = load <2 x ptr>, ptr %12, align 16, !tbaa !278
  store <2 x ptr> %i.ch, ptr %8, align 16, !tbaa !278
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cj = load ptr, ptr %i.ci, align 16, !tbaa !279
  store ptr %i.cj, ptr %i.cf, align 16, !tbaa !279
  %.not4.i.i.i.i.i33 = icmp eq ptr %i.cc, %i.ce
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i33, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i34

.lr.ph.i.i.i.i.i34:                               ; preds = %bb.u, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i35 = phi ptr [ %i.co, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i ], [ %i.cc, %bb.u ] ; 2 uses
  %i.ck = load ptr, ptr %.05.i.i.i.i.i35, align 8, !tbaa !122 ; 3 uses
  %.not.i.i.i.i.i.i.i36 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i.i36, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i34
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !63
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(82) %i.ck) #18, !inline_history !239
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i34
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i35, i64 8 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.co, %i.ce
  br i1 %.not.i.i.i.i.i37, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i34, !llvm.loop !5

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, %bb.u
  %.not.i.i1.i.i.i38 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i.i.i38, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cc) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, %bb.v
  %i.cp = load ptr, ptr %12, align 16, !tbaa !119 ; 3 uses
  %i.cq = load ptr, ptr %i.cg, align 8, !tbaa !120 ; 2 uses
  %.not4.i.i.i39 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not4.i.i.i39, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i41 = phi ptr [ %i.cv, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.cp, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit ] ; 2 uses
  %i.cr = load ptr, ptr %.05.i.i.i41, align 8, !tbaa !122 ; 3 uses
  %.not.i.i.i.i.i42 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i42, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !63
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(82) %i.cr) #18, !inline_history !6
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i40
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i41, i64 8 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.cv, %i.cq
  br i1 %.not.i.i.i43, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i40, !llvm.loop !5

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i44 = load ptr, ptr %12, align 16, !tbaa !119
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit
  %i.cw = phi ptr [ %.pr.i44, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.cp, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit ] ; 2 uses
  %.not.i.i1.i45 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i1.i45, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.cw) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.cx = load ptr, ptr %i.by, align 8, !tbaa !119 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !120 ; 2 uses
  %.not4.i.i.i.i46 = icmp eq ptr %i.cx, %i.cz
  br i1 %.not4.i.i.i.i46, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i48 = phi ptr [ %i.de, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.cx, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit ] ; 2 uses
  %i.da = load ptr, ptr %.05.i.i.i.i48, align 8, !tbaa !122 ; 3 uses
  %.not.i.i.i.i.i.i49 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i.i49, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i47
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !63
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(82) %i.da) #18, !inline_history !240
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i47
  %i.de = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i48, i64 8 ; 2 uses
  %.not.i.i.i.i50 = icmp eq ptr %i.de, %i.cz
  br i1 %.not.i.i.i.i50, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i47, !llvm.loop !5

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.pr.i.i51 = load ptr, ptr %i.by, align 8, !tbaa !119
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.df = phi ptr [ %.pr.i.i51, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cx, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i.i52 = icmp eq ptr %i.df, null
  br i1 %.not.i.i1.i.i52, label %_ZN4geos9operation9overlayng24IntersectionPointBuilderD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.df) #19
  br label %_ZN4geos9operation9overlayng24IntersectionPointBuilderD2Ev.exit

_ZN4geos9operation9overlayng24IntersectionPointBuilderD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @_ZN4geos9operation9overlayng24IntersectionPointBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.an

bb.z:                                             ; preds = %14, %_ZN4geos9operation9overlayng24IntersectionPointBuilderD2Ev.exit, %bb.f
  %i.dh = load ptr, ptr %6, align 8, !tbaa !256
  %i.di = load ptr, ptr %i.o, align 8, !tbaa !256
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dk = load ptr, ptr %7, align 16, !tbaa !269
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !269
  %i.dn = icmp eq ptr %i.dk, %i.dm
  br i1 %i.dn, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.do = load ptr, ptr %8, align 16, !tbaa !278
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !278
  %i.dr = icmp eq ptr %i.do, %i.dq
  br i1 %i.dr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !57, !noalias !280
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dv = invoke noundef i32 @_ZNK4geos9operation9overlayng13InputGeometry12getDimensionEh(ptr noundef nonnull align 8 dereferenceable(34) %i.du, i8 noundef zeroext 0)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.ac
  %i.dw = invoke noundef i32 @_ZNK4geos9operation9overlayng13InputGeometry12getDimensionEh(ptr noundef nonnull align 8 dereferenceable(34) %i.du, i8 noundef zeroext 1)
          to label %.noexc53 unwind label %bb.o

.noexc53:                                         ; preds = %.noexc
  %i.dx = invoke noundef i32 @_ZN4geos9operation9overlayng11OverlayUtil15resultDimensionEiii(i32 noundef %i.dt, i32 noundef %i.dv, i32 noundef %i.dw)
          to label %.noexc54 unwind label %bb.o

.noexc54:                                         ; preds = %.noexc53
  %i.dy = load ptr, ptr %i.e, align 8, !tbaa !56, !noalias !280
  invoke void @_ZN4geos9operation9overlayng11OverlayUtil17createEmptyResultEiPKNS_4geom15GeometryFactoryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, i32 noundef %i.dx, ptr noundef %i.dy)
          to label %_ZN4geos9operation9overlayng9OverlayNG17createEmptyResultEv.exit unwind label %bb.o

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.dz = load ptr, ptr %i.e, align 8, !tbaa !56
  invoke void @_ZN4geos9operation9overlayng11OverlayUtil20createResultGeometryERSt6vectorISt10unique_ptrINS_4geom7PolygonESt14default_deleteIS6_EESaIS9_EERS3_IS4_INS5_10LineStringES7_ISD_EESaISF_EERS3_IS4_INS5_5PointES7_ISJ_EESaISL_EEPKNS5_15GeometryFactoryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.dz)
          to label %_ZN4geos9operation9overlayng9OverlayNG17createEmptyResultEv.exit unwind label %bb.o

_ZN4geos9operation9overlayng9OverlayNG17createEmptyResultEv.exit: ; preds = %.noexc54, %bb.ad
  %i.ea = load ptr, ptr %8, align 16, !tbaa !119  ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !120 ; 2 uses
  %.not4.i.i.i56 = icmp eq ptr %i.ea, %i.ec
  br i1 %.not4.i.i.i56, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i65, label %.lr.ph.i.i.i57

.lr.ph.i.i.i57:                                   ; preds = %_ZN4geos9operation9overlayng9OverlayNG17createEmptyResultEv.exit, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i61
  %.05.i.i.i58 = phi ptr [ %i.eh, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i61 ], [ %i.ea, %_ZN4geos9operation9overlayng9OverlayNG17createEmptyResultEv.exit ] ; 2 uses
  %i.ed = load ptr, ptr %.05.i.i.i58, align 8, !tbaa !122 ; 3 uses
  %.not.i.i.i.i.i59 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i.i59, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i61, label %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i.i60

_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i.i60: ; preds = %.lr.ph.i.i.i57
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !63
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(82) %i.ed) #18, !inline_history !6
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i61

_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i61: ; preds = %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i.i60, %.lr.ph.i.i.i57
  %i.eh = getelementptr inbounds nuw i8, ptr %.05.i.i.i58, i64 8 ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.eh, %i.ec
  br i1 %.not.i.i.i62, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i63, label %.lr.ph.i.i.i57, !llvm.loop !5

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i63: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i61
  %.pr.i64 = load ptr, ptr %8, align 16, !tbaa !119
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i65

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i65: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i63, %_ZN4geos9operation9overlayng9OverlayNG17createEmptyResultEv.exit
  %i.ei = phi ptr [ %.pr.i64, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i63 ], [ %i.ea, %_ZN4geos9operation9overlayng9OverlayNG17createEmptyResultEv.exit ] ; 2 uses
  %.not.i.i1.i66 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i1.i66, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit67, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i65
  call void @_ZdlPv(ptr noundef nonnull %i.ei) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit67

_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit67: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i65, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ej = load ptr, ptr %7, align 16, !tbaa !112  ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !113 ; 2 uses
  %.not4.i.i.i68 = icmp eq ptr %i.ej, %i.el
  br i1 %.not4.i.i.i68, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i77, label %.lr.ph.i.i.i69

.lr.ph.i.i.i69:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit67, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i73
  %.05.i.i.i70 = phi ptr [ %i.eq, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i73 ], [ %i.ej, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit67 ] ; 2 uses
  %i.em = load ptr, ptr %.05.i.i.i70, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i.i.i71 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i.i71, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i73, label %_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i.i.i.i.i72

_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i.i.i.i.i72: ; preds = %.lr.ph.i.i.i69
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !63
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(48) %i.em) #18, !inline_history !4
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i73

_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i73: ; preds = %_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i.i.i.i.i72, %.lr.ph.i.i.i69
  %i.eq = getelementptr inbounds nuw i8, ptr %.05.i.i.i70, i64 8 ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %i.eq, %i.el
  br i1 %.not.i.i.i74, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i75, label %.lr.ph.i.i.i69, !llvm.loop !3

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i75: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EEEvPT_.exit.i.i.i73
  %.pr.i76 = load ptr, ptr %7, align 16, !tbaa !112
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i77

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i77: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i75, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit67
  %i.er = phi ptr [ %.pr.i76, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i75 ], [ %i.ej, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit67 ] ; 2 uses
  %.not.i.i1.i78 = icmp eq ptr %i.er, null
  br i1 %.not.i.i1.i78, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit79, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i77
  call void @_ZdlPv(ptr noundef nonnull %i.er) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit79

_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit79: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i77, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.es = load ptr, ptr %6, align 8, !tbaa !124   ; 3 uses
  %i.et = load ptr, ptr %i.o, align 8, !tbaa !125 ; 2 uses
  %.not4.i.i.i80 = icmp eq ptr %i.es, %i.et
  br i1 %.not4.i.i.i80, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i81

.lr.ph.i.i.i81:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit79, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i82 = phi ptr [ %i.ey, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.es, %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit79 ] ; 2 uses
  %i.eu = load ptr, ptr %.05.i.i.i82, align 8, !tbaa !127 ; 3 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i83, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i81
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !63
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(72) %i.eu) #18, !inline_history !243
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i81
  %i.ey = getelementptr inbounds nuw i8, ptr %.05.i.i.i82, i64 8 ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %i.ey, %i.et
  br i1 %.not.i.i.i84, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i81, !llvm.loop !7

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i85 = load ptr, ptr %6, align 8, !tbaa !124
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit79
  %i.ez = phi ptr [ %.pr.i85, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.es, %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit79 ] ; 2 uses
  %.not.i.i1.i86 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i1.i86, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ez) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.fa = load ptr, ptr %i.i, align 8, !tbaa !128 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !129 ; 2 uses
  %.not4.i.i.i.i87 = icmp eq ptr %i.fa, %i.fc
  br i1 %.not4.i.i.i.i87, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos9operation9overlayng15OverlayEdgeRingESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i88

.lr.ph.i.i.i.i88:                                 ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4geos9operation9overlayng15OverlayEdgeRingESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i89 = phi ptr [ %i.fq, %_ZSt8_DestroyISt10unique_ptrIN4geos9operation9overlayng15OverlayEdgeRingESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i ], [ %i.fa, %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev.exit ] ; 2 uses
  %i.fd = load ptr, ptr %.05.i.i.i.i89, align 8, !tbaa !131 ; 5 uses
  %.not.i.i.i.i.i.i90 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i.i90, label %_ZSt8_DestroyISt10unique_ptrIN4geos9operation9overlayng15OverlayEdgeRingESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i88
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !108 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4geos9operation9overlayng15OverlayEdgeRingESaIS4_EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef nonnull %i.ff) #19
  br label %_ZNSt6vectorIPN4geos9operation9overlayng15OverlayEdgeRingESaIS4_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN4geos9operation9overlayng15OverlayEdgeRingESaIS4_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !133 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4geos9algorithm6locate25IndexedPointInAreaLocatorESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4geos9algorithm6locate25IndexedPointInAreaLocatorEEclEPS3_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4geos9algorithm6locate25IndexedPointInAreaLocatorEEclEPS3_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN4geos9operation9overlayng15OverlayEdgeRingESaIS4_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !63
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(24) %i.fh) #18, !inline_history !244
  br label %_ZNSt10unique_ptrIN4geos9algorithm6locate25IndexedPointInAreaLocatorESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4geos9algorithm6locate25IndexedPointInAreaLocatorESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos9algorithm6locate25IndexedPointInAreaLocatorEEclEPS3_.exit.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIPN4geos9operation9overlayng15OverlayEdgeRingESaIS4_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !135 ; 3 uses
  %.not.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.fm, null
end_hunk_0
