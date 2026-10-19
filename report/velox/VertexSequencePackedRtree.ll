Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/VertexSequencePackedRtree?download=true
inline.NumInlined: 281
inline.NumDeleted: 146
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4geos11triangulate7polygon25VertexSequencePackedRtreeC2ERKSt6vectorINS_4geom10CoordinateESaIS5_EE:bb.a
  store i64 16, ptr %i.ab, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  invoke void @_ZN4geos11triangulate7polygon25VertexSequencePackedRtree19computeLevelOffsetsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %2, ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load <2 x ptr>, ptr %2, align 16, !tbaa !42
  store <2 x ptr> %i.af, ptr %i.aa, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !43
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %.noexc
  tail call void @_ZdlPv(ptr noundef nonnull %i.ad) #16
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.e, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  invoke void @_ZN4geos11triangulate7polygon25VertexSequencePackedRtree12createBoundsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.1") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %.noexc6 unwind label %bb.h

.noexc6:                                          ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !44 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load <2 x ptr>, ptr %3, align 16, !tbaa !45
  store <2 x ptr> %i.ak, ptr %i.ac, align 8, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !46
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !46
  %.not.i.i.i.i.i1.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i1.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc6
  tail call void @_ZdlPv(ptr noundef nonnull %i.ai) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIN4geos4geom8EnvelopeESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #16
  br label %_ZNSt6vectorIN4geos4geom8EnvelopeESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom8EnvelopeESaIS2_EED2Ev.exit: ; preds = %bb.h, %bb.i
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4geos4geom8EnvelopeESaIS2_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.ap) #16
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN4geos4geom8EnvelopeESaIS2_EED2Ev.exit, %bb.j
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i9, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.d
  %.sink19 = phi ptr [ %i.z, %bb.d ], [ %i.aq, %_ZNSt6vectorImSaImEED2Ev.exit ]
  %.pn.ph = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.an, %_ZNSt6vectorImSaImEED2Ev.exit ]
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !61  ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %.sink19 to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.aw
  tail call void @_ZdlPv(ptr noundef %i.ax) #16
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt6vectorImSaImEED2Ev.exit, %bb.d
  %.pn = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.an, %_ZNSt6vectorImSaImEED2Ev.exit ], [ %.pn.ph, %.body.sink.split ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate7polygon25VertexSequencePackedRtree5buildEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.0", align 16    ; 5 uses
  %2 = alloca %"class.std::vector.1", align 16    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN4geos11triangulate7polygon25VertexSequencePackedRtree19computeLevelOffsetsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %1, ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load <2 x ptr>, ptr %1, align 16, !tbaa !42
  store <2 x ptr> %i.d, ptr %i.a, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !43
  store ptr %i.f, ptr %i.c, align 8, !tbaa !43
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #16
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN4geos11triangulate7polygon25VertexSequencePackedRtree12createBoundsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.1") align 8 %2, ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load <2 x ptr>, ptr %2, align 16, !tbaa !45
  store <2 x ptr> %i.j, ptr %i.g, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !46
  store ptr %i.l, ptr %i.i, align 8, !tbaa !46
  %.not.i.i.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i1, label %_ZNSt6vectorIN4geos4geom8EnvelopeESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #16
  br label %_ZNSt6vectorIN4geos4geom8EnvelopeESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom8EnvelopeESaIS2_EED2Ev.exit: ; preds = %bb.c, %_ZNSt6vectorImSaImEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate7polygon25VertexSequencePackedRtree9getBoundsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.1") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775776
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4geos4geom8EnvelopeEE8allocateEmPKv.exit.i.i.i.i, !prof !63

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorIN4geos4geom8EnvelopeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #14
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !45
  %.pre2 = load ptr, ptr %i.b, align 8, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4geos4geom8EnvelopeEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre2, %_ZNSt15__new_allocatorIN4geos4geom8EnvelopeEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ %i.d, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN4geos4geom8EnvelopeEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN4geos4geom8EnvelopeEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !46
  %.not7.i.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom8EnvelopeESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.08.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !64
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom8EnvelopeESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !62

_ZNSt6vectorIN4geos4geom8EnvelopeESaIS2_EEC2ERKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.q, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate7polygon25VertexSequencePackedRtree19computeLevelOffsetsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.0") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %4 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #14 ; 4 uses
  store i64 0, ptr %4, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %4, ptr %0, align 8, !tbaa !41
  store ptr %i.a, ptr %2, align 8, !tbaa !52
  store ptr %i.a, ptr %3, align 8, !tbaa !43
  %i.b = load ptr, ptr %1, align 8, !tbaa !53, !nonnull !54, !align !55 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.a
  %i.k = phi ptr [ %4, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.a ], [ %i.ah, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 8 uses
  %i.l = phi ptr [ %i.a, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.a ], [ %i.ai, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %i.m = phi ptr [ %i.a, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.a ], [ %i.aj, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %.019 = phi i64 [ 0, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.a ], [ %i.s, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  %.0 = phi i64 [ %i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.a ], [ %i.r, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %i.n = load i64, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %i.o = udiv i64 %.0, %i.n                       ; 2 uses
  %i.p = mul i64 %i.o, %i.n
  %.not.i.i11 = icmp ult i64 %i.p, %.0
  %i.q = zext i1 %.not.i.i11 to i64
  %i.r = add i64 %i.o, %i.q                       ; 3 uses
  %i.s = add i64 %i.r, %.019                      ; 3 uses
  %.not.i = icmp eq ptr %i.m, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.s, ptr %i.m, align 8, !tbaa !51
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.c:                                             ; preds = %bb.a
  %i.t = ptrtoint ptr %i.l to i64
  %i.u = ptrtoint ptr %i.k to i64
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.d, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  store ptr %i.m, ptr %2, align 8
  store ptr %i.l, ptr %3, align 8
  store ptr %i.k, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #14
          to label %.noexc13 unwind label %.loopexit ; 4 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  store i64 %i.s, ptr %i.ae, align 8, !tbaa !51
  %i.af = icmp sgt i64 %i.v, 0
  br i1 %i.af, label %bb.e, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

bb.e:                                             ; preds = %.noexc13
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.k, i64 %i.v, i1 false)
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.e, %.noexc13
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #16
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.b
  %i.ah = phi ptr [ %i.ad, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.ai = phi ptr [ %i.ag, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.l, %bb.b ] ; 2 uses
  %.pn30 = phi ptr [ %i.ae, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.m, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn30, i64 8 ; 2 uses
  %i.ak = icmp ugt i64 %i.r, 1
  br i1 %i.ak, label %bb.a, label %bb.f, !llvm.loop !65

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  store ptr %i.aj, ptr %2, align 8
  store ptr %i.ai, ptr %3, align 8
  store ptr %i.ah, ptr %0, align 8
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %2, align 8
  store ptr %i.l, ptr %3, align 8
  store ptr %i.k, ptr %0, align 8
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i14 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #16
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate7polygon25VertexSequencePackedRtree12createBoundsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.1") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !51   ; 2 uses
  %i.k = add i64 %i.j, 1                          ; 11 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorIN4geos4geom8EnvelopeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNSt6vectorIN4geos4geom8EnvelopeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4geos4geom8EnvelopeESaIS2_EEC2EmRKS3_.exit.thread.i, label %iter.check

_ZNSt12_Vector_baseIN4geos4geom8EnvelopeESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN4geos4geom8EnvelopeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

iter.check:                                       ; preds = %_ZNSt6vectorIN4geos4geom8EnvelopeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #14 ; 13 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !46
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %middle.block, %iter.check
  %.013.i.i.i.i.i.ph = phi ptr [ %i.r, %middle.block ], [ %i.n, %iter.check ]
  %.01012.i.i.i.i.i.ph = phi i64 [ %i.s, %middle.block ], [ %i.k, %iter.check ]
  br label %.lr.ph.i.i.i.i.i

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check63 = icmp ult i64 %i.k, 16
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.k, 288230376151711740       ; 3 uses
  %i.q = shl nuw nsw i64 %n.vec, 5
  %i.r = getelementptr i8, ptr %i.n, i64 %i.q     ; 2 uses
  %i.s = and i64 %i.k, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 5                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.t
  %i.u = getelementptr i8, ptr %i.n, i64 %i.t
  %next.gep64 = getelementptr i8, ptr %i.u, i64 32
  %i.v = getelementptr i8, ptr %i.n, i64 %i.t
  %next.gep65 = getelementptr i8, ptr %i.v, i64 64
  %i.w = getelementptr i8, ptr %i.n, i64 %i.t
  %next.gep66 = getelementptr i8, ptr %i.w, i64 96
  store <4 x double> splat (double +qnan), ptr %next.gep, align 8
  store <4 x double> splat (double +qnan), ptr %next.gep64, align 8
  store <4 x double> splat (double +qnan), ptr %next.gep65, align 8
  store <4 x double> splat (double +qnan), ptr %next.gep66, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %i.y = shl nuw nsw i64 %i.k, 5
  %i.z = getelementptr i8, ptr %i.n, i64 %i.y
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index68 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next70, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = shl i64 %index68, 5
  %next.gep69 = getelementptr i8, ptr %i.n, i64 %i.aa
  store <4 x double> splat (double +qnan), ptr %next.gep69, align 8
  %index.next70 = add nuw i64 %index68, 1
  %i.ab = icmp eq i64 %index68, %i.j
  br i1 %i.ab, label %.loopexit, label %vec.epilog.vector.body, !llvm.loop !67

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  store <4 x double> splat (double +qnan), ptr %.013.i.i.i.i.i, align 8, !tbaa !49
  %i.ac = add nsw i64 %.01012.i.i.i.i.i, -1       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !68

.loopexit:                                        ; preds = %vec.epilog.vector.body, %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN4geos4geom8EnvelopeESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.ae = phi ptr [ null, %_ZNSt12_Vector_baseIN4geos4geom8EnvelopeESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.n, %middle.block ], [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.n, %vec.epilog.vector.body ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4geos4geom8EnvelopeESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.r, %middle.block ], [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.z, %vec.epilog.vector.body ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.af, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !53, !nonnull !54, !align !55 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !20 ; 4 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 24                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4geos11triangulate7polygon25VertexSequencePackedRtree19computeItemEnvelopeERKSt6vectorINS_4geom10CoordinateESaIS5_EEmm.exit.i, %.loopexit
  %.07.i = phi i64 [ 0, %.loopexit ], [ %i.by, %_ZN4geos11triangulate7polygon25VertexSequencePackedRtree19computeItemEnvelopeERKSt6vectorINS_4geom10CoordinateESaIS5_EEmm.exit.i ] ; 2 uses
  %.0.i = phi i64 [ 0, %.loopexit ], [ %i.ar, %_ZN4geos11triangulate7polygon25VertexSequencePackedRtree19computeItemEnvelopeERKSt6vectorINS_4geom10CoordinateESaIS5_EEmm.exit.i ] ; 7 uses
  %i.aq = add i64 %.0.i, %i.ah                    ; 2 uses
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %i.ap) ; 5 uses
  %i.as = icmp ult i64 %.0.i, %i.ar
  br i1 %i.as, label %.lr.ph.i.i.preheader, label %_ZN4geos11triangulate7polygon25VertexSequencePackedRtree19computeItemEnvelopeERKSt6vectorINS_4geom10CoordinateESaIS5_EEmm.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = sub nuw i64 %i.ar, %.0.i
  %.neg = add i64 %.0.i, 1
  %xtraiter = and i64 %i.at, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.0.i
  %i.av = load <2 x double>, ptr %i.au, align 8, !tbaa !49, !noalias !76
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ax = add nuw i64 %.0.i, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa73.unr = phi <4 x double> [ poison, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %.014.i.i.unr = phi i64 [ %.0.i, %.lr.ph.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.prol ]
  %.unr = phi <4 x double> [ splat (double +qnan), %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ay = icmp eq i64 %i.ar, %.neg
  br i1 %i.ay, label %_ZN4geos11triangulate7polygon25VertexSequencePackedRtree19computeItemEnvelopeERKSt6vectorINS_4geom10CoordinateESaIS5_EEmm.exit.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.i.1
  %.014.i.i = phi i64 [ %i.bv, %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.i.1 ], [ %.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.az = phi <4 x double> [ %i.bu, %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.i.1 ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.014.i.i
  %i.bb = load <2 x double>, ptr %i.ba, align 8, !tbaa !49, !noalias !76
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.bd = extractelement <4 x double> %i.az, i64 2
  %i.be = fcmp uno double %i.bd, 0.000000e+00
  br i1 %i.be, label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.bf = fcmp olt <4 x double> %i.bc, %i.az
  %i.bg = fcmp ogt <4 x double> %i.bc, %i.az
  %i.bh = shufflevector <4 x i1> %i.bf, <4 x i1> %i.bg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bi = select <4 x i1> %i.bh, <4 x double> %i.bc, <4 x double> %i.az
  br label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.i

_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %i.bj = phi <4 x double> [ %i.bi, %bb.c ], [ %i.bc, %.lr.ph.i.i ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.014.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load <2 x double>, ptr %i.bl, align 8, !tbaa !49, !noalias !76
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.bo = extractelement <4 x double> %i.bj, i64 2
  %i.bp = fcmp uno double %i.bo, 0.000000e+00
  br i1 %i.bp, label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.i.1, label %bb.d

bb.d:                                             ; preds = %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.i
  %i.bq = fcmp olt <4 x double> %i.bn, %i.bj
  %i.br = fcmp ogt <4 x double> %i.bn, %i.bj
  %i.bs = shufflevector <4 x i1> %i.bq, <4 x i1> %i.br, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bt = select <4 x i1> %i.bs, <4 x double> %i.bn, <4 x double> %i.bj
  br label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.i.1

_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.i.1: ; preds = %bb.d, %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.i
  %i.bu = phi <4 x double> [ %i.bt, %bb.d ], [ %i.bn, %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.i ] ; 2 uses
  %i.bv = add nuw i64 %.014.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bv, %i.ar
  br i1 %exitcond.not.i.i.1, label %_ZN4geos11triangulate7polygon25VertexSequencePackedRtree19computeItemEnvelopeERKSt6vectorINS_4geom10CoordinateESaIS5_EEmm.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !0

_ZN4geos11triangulate7polygon25VertexSequencePackedRtree19computeItemEnvelopeERKSt6vectorINS_4geom10CoordinateESaIS5_EEmm.exit.i.loopexit: ; preds = %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.i.1, %.lr.ph.i.i.prol.loopexit
  %.lcssa73 = phi <4 x double> [ %.lcssa73.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bu, %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.i.1 ]
  %i.bw = shufflevector <4 x double> %.lcssa73, <4 x double> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  br label %_ZN4geos11triangulate7polygon25VertexSequencePackedRtree19computeItemEnvelopeERKSt6vectorINS_4geom10CoordinateESaIS5_EEmm.exit.i

_ZN4geos11triangulate7polygon25VertexSequencePackedRtree19computeItemEnvelopeERKSt6vectorINS_4geom10CoordinateESaIS5_EEmm.exit.i: ; preds = %_ZN4geos11triangulate7polygon25VertexSequencePackedRtree19computeItemEnvelopeERKSt6vectorINS_4geom10CoordinateESaIS5_EEmm.exit.i.loopexit, %bb.b
  %i.bx = phi <4 x double> [ splat (double +qnan), %bb.b ], [ %i.bw, %_ZN4geos11triangulate7polygon25VertexSequencePackedRtree19computeItemEnvelopeERKSt6vectorINS_4geom10CoordinateESaIS5_EEmm.exit.i.loopexit ]
  %i.by = add i64 %.07.i, 1
end_hunk_0
