Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/rgbaInterfaceExamples?download=true
inline.NumInlined: 248
inline.NumDeleted: 93
begin_hunk_0_@_Z10writeRgba3PKcPKN7Imf_3_44RgbaEiiS0_RKN9Imath_3_28Matrix44IfEE:bb.a
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc21, %bb.c
  %i.h = phi ptr [ %i.f, %.noexc21 ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %4, align 1, !tbaa !25
  store i8 %i.i, ptr %i.h, align 1, !tbaa !25
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %4, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !26
  %i.l = load ptr, ptr %9, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  invoke void @_ZN7Imf_3_414TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7Imf_3_46Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %6, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @_ZN7Imf_3_414TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #12
  %i.n = load ptr, ptr %9, align 8, !tbaa !23     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.p = load i64, ptr %i.b, align 8, !tbaa !25
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  invoke void @_ZN7Imf_3_414TypedAttributeIN9Imath_3_28Matrix44IfEEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 4 dereferenceable(64) %5)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN7Imf_3_46Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %6, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  call void @_ZN7Imf_3_414TypedAttributeIN9Imath_3_28Matrix44IfEEED1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.r = invoke noundef i32 @_ZN7Imf_3_417globalThreadCountEv()
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN7Imf_3_414RgbaOutputFileC1EPKcRKNS_6HeaderENS_12RgbaChannelsEi(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(49) %6, i32 noundef 15, i32 noundef %i.r)
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.s = sext i32 %2 to i64
  invoke void @_ZN7Imf_3_414RgbaOutputFile14setFrameBufferEPKNS_4RgbaEmm(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %1, i64 noundef 1, i64 noundef %i.s)
          to label %bb.m unwind label %bb.w

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN7Imf_3_414RgbaOutputFile11writePixelsEi(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %3)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  call void @_ZN7Imf_3_414RgbaOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void

bb.o:                                             ; preds = %.noexc.i, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.p:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7Imf_3_414TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.v, %bb.q ], [ %i.u, %bb.p ] ; 2 uses
  %i.w = load ptr, ptr %9, align 8, !tbaa !23     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.b
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.r
  %i.y = load i64, ptr %i.b, align 8, !tbaa !25
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.y

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7Imf_3_414TypedAttributeIN9Imath_3_28Matrix44IfEEED1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %10) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn16 = phi { ptr, i32 } [ %i.ab, %bb.t ], [ %i.aa, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.y

bb.v:                                             ; preds = %bb.k, %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.m, %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7Imf_3_414RgbaOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #12
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn18 = phi { ptr, i32 } [ %i.ad, %bb.w ], [ %i.ac, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.x ], [ %.pn16, %bb.u ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %.pn18.pn
}

declare void @_ZN7Imf_3_46HeaderC1EiifRKN9Imath_3_24Vec2IfEEfNS_9LineOrderENS_11CompressionE(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, i32 noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare void @_ZN7Imf_3_46Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN7Imf_3_414TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKS6_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7Imf_3_414TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #3

declare void @_ZN7Imf_3_414TypedAttributeIN9Imath_3_28Matrix44IfEEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7Imf_3_414TypedAttributeIN9Imath_3_28Matrix44IfEEED1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #3

declare void @_ZN7Imf_3_414RgbaOutputFileC1EPKcRKNS_6HeaderENS_12RgbaChannelsEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9readRgba1PKcRN7Imf_3_47Array2DINS1_4RgbaEEERiS6_(ptr noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Imf_3_4::RgbaInputFile", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = tail call noundef i32 @_ZN7Imf_3_417globalThreadCountEv()
  call void @_ZN7Imf_3_413RgbaInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %0, i32 noundef %i.a)
  %i.b = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_413RgbaInputFile10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.b unwind label %bb.g       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13   ; 2 uses
  %reass.sub = sub i32 %i.g, %i.c
  %i.j = add i32 %reass.sub, 1
  store i32 %i.j, ptr %2, align 4, !tbaa !27
  %i.k = sub nsw i32 %i.i, %i.e
  %i.l = add nsw i32 %i.k, 1                      ; 2 uses
  store i32 %i.l, ptr %3, align 4, !tbaa !27
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = load i32, ptr %2, align 4, !tbaa !27
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = mul nsw i64 %i.o, %i.m                   ; 2 uses
  %i.q = icmp ugt i64 %i.p, 2305843009213693951
  %i.r = shl nuw i64 %i.p, 3
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #15
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.v) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  store i64 %i.m, ptr %1, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.o, ptr %i.x, align 8, !tbaa !32
  store ptr %i.t, ptr %i.u, align 8, !tbaa !28
  %i.y = sext i32 %i.c to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.z
  %5 = load i32, ptr %2, align 4, !tbaa !27       ; 2 uses
  %i.ab = mul nsw i32 %5, %i.e
  %i.ac = sext i32 %i.ab to i64
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad
  %6 = sext i32 %5 to i64
  invoke void @_ZN7Imf_3_413RgbaInputFile14setFrameBufferEPNS_4RgbaEmm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %i.ae, i64 noundef 1, i64 noundef %6)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7Imf_3_413RgbaInputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.e, i32 noundef %i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN7Imf_3_413RgbaInputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7Imf_3_413RgbaInputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %i.af
}

declare void @_ZN7Imf_3_413RgbaInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) unnamed_addr #2

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_413RgbaInputFile10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN7Imf_3_413RgbaInputFile14setFrameBufferEPNS_4RgbaEmm(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN7Imf_3_413RgbaInputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7Imf_3_413RgbaInputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9readRgba2PKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Imf_3_4::RgbaInputFile", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.a = tail call noundef i32 @_ZN7Imf_3_417globalThreadCountEv()
  call void @_ZN7Imf_3_413RgbaInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %0, i32 noundef %i.a)
  %i.b = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_413RgbaInputFile10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.b unwind label %bb.e       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13   ; 3 uses
  %i.j = sub nsw i32 %i.g, %i.c
  %i.k = add nsw i32 %i.j, 1
  %i.l = sext i32 %i.k to i64                     ; 4 uses
  %i.m = mul nsw i64 %i.l, 10
  %i.n = icmp ugt i64 %i.m, 2305843009213693951
  %i.o = mul nsw i64 %i.l, 80
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #15
          to label %_ZN7Imf_3_47Array2DINS_4RgbaEEC2Ell.exit.preheader unwind label %bb.f ; 3 uses

_ZN7Imf_3_47Array2DINS_4RgbaEEC2Ell.exit.preheader: ; preds = %bb.b
  %.not23 = icmp sgt i32 %i.e, %i.i
  br i1 %.not23, label %_ZN7Imf_3_47Array2DINS_4RgbaEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7Imf_3_47Array2DINS_4RgbaEEC2Ell.exit.preheader
  %i.r = sext i32 %i.c to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.s
  %i.u = sext i32 %i.e to i64
  %i.v = sext i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN7Imf_3_47Array2DINS_4RgbaEEC2Ell.exit
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %_ZN7Imf_3_47Array2DINS_4RgbaEEC2Ell.exit ] ; 4 uses
  %i.w = mul nsw i64 %indvars.iv, %i.l
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.x
  invoke void @_ZN7Imf_3_413RgbaInputFile14setFrameBufferEPNS_4RgbaEmm(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.y, i64 noundef 1, i64 noundef %i.l)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.z = trunc i64 %indvars.iv to i32
  %i.aa = add i32 %i.z, 9
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.aa)
  %i.ab = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN7Imf_3_413RgbaInputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.ab, i32 noundef %.sroa.speculated)
          to label %_ZN7Imf_3_47Array2DINS_4RgbaEEC2Ell.exit unwind label %bb.h

_ZN7Imf_3_47Array2DINS_4RgbaEEC2Ell.exit:         ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 10  ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next, %i.v
  br i1 %.not, label %_ZN7Imf_3_47Array2DINS_4RgbaEED2Ev.exit, label %bb.c, !llvm.loop !33

bb.e:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7Imf_3_47Array2DINS_4RgbaEED2Ev.exit11

bb.h:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7Imf_3_47Array2DINS_4RgbaEED2Ev.exit11

_ZN7Imf_3_47Array2DINS_4RgbaEED2Ev.exit:          ; preds = %_ZN7Imf_3_47Array2DINS_4RgbaEEC2Ell.exit, %_ZN7Imf_3_47Array2DINS_4RgbaEEC2Ell.exit.preheader
  call void @_ZdaPv(ptr noundef nonnull %i.q) #14
  call void @_ZN7Imf_3_413RgbaInputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void

_ZN7Imf_3_47Array2DINS_4RgbaEED2Ev.exit11:        ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.h ], [ %i.ae, %bb.g ]
  call void @_ZdaPv(ptr noundef nonnull %i.q) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %_ZN7Imf_3_47Array2DINS_4RgbaEED2Ev.exit11, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %.pn, %_ZN7Imf_3_47Array2DINS_4RgbaEED2Ev.exit11 ], [ %i.ad, %bb.f ]
  call void @_ZN7Imf_3_413RgbaInputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10readHeaderPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Imf_3_4::Name", align 1     ; 7 uses
  %2 = alloca %"class.Imf_3_4::Name", align 1     ; 7 uses
  %3 = alloca %"class.Imf_3_4::RgbaInputFile", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = tail call noundef i32 @_ZN7Imf_3_417globalThreadCountEv()
  call void @_ZN7Imf_3_413RgbaInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %0, i32 noundef %i.a)
  %i.b = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_413RgbaInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.b unwind label %bb.l       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.c = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull dereferenceable(9) @.str, i64 noundef 255) #12 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 255
  store i8 0, ptr %i.d, align 1, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i.i, label %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.g, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.i = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.h, ptr noundef nonnull align 1 dereferenceable(256) %2) #16
  %i.j = icmp slt i32 %i.i, 0                     ; 2 uses
  %.19.i.i.i.i = select i1 %i.j, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.j, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !41

_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.k = icmp eq ptr %.19.i.i.i.i, %i.g
  br i1 %i.k, label %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i, label %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i

_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i: ; preds = %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPKT_PKc.exit

_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i: ; preds = %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.m = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %2, ptr noundef nonnull align 1 dereferenceable(256) %i.l) #16
  %i.n = icmp slt i32 %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br i1 %i.n, label %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPKT_PKc.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 288
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPKT_PKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN7Imf_3_49AttributeE, ptr nonnull @_ZTIN7Imf_3_414TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 0) #12
  br label %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPKT_PKc.exit

_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPKT_PKc.exit: ; preds = %bb.d, %bb.c, %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i, %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i
  %i.s = phi ptr [ null, %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i ], [ %i.r, %bb.d ], [ null, %bb.c ], [ null, %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i ] ; 3 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_413RgbaInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.e unwind label %bb.m       ; 2 uses

bb.e:                                             ; preds = %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPKT_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.u = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %1, ptr noundef nonnull dereferenceable(16) @.str.1, i64 noundef 255) #12 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 255
  store i8 0, ptr %i.v, align 1, !tbaa !25
end_hunk_0
