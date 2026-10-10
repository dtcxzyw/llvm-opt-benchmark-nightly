Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/CoordinateSequence?download=true
inline.NumInlined: 163
inline.NumDeleted: 112
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__gxx_personality_v0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZN4geos4geom18CoordinateSequence19increasingDirectionERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !0 ; 2 uses
  %i.e = lshr i64 %i.d, 1                         ; 2 uses
  %.not2032.not = icmp eq i64 %i.e, 0
  br i1 %.not2032.not, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit
  %.01633 = phi i64 [ %i.z, %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit ], [ 0, %bb.a ] ; 3 uses
  %i.f = xor i64 %.01633, -1
  %i.g = add i64 %i.d, %i.f
  %i.h = load ptr, ptr %0, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %.01633), !inline_history !2 ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.g), !inline_history !2 ; 2 uses
  %i.p = load double, ptr %i.k, align 8, !tbaa !16 ; 2 uses
  %i.q = load double, ptr %i.o, align 8, !tbaa !16 ; 2 uses
  %i.r = fcmp olt double %i.p, %i.q
  br i1 %i.r, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.s = fcmp ogt double %i.p, %i.q
  br i1 %i.s, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !17 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !17 ; 2 uses
  %i.x = fcmp olt double %i.u, %i.w
  br i1 %i.x, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit.thread, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit

_ZNK4geos4geom10Coordinate9compareToERKS1_.exit:  ; preds = %bb.c
  %i.y = fcmp ogt double %i.u, %i.w
  %i.z = add nuw nsw i64 %.01633, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.e
  %or.cond = select i1 %i.y, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit.thread, label %.lr.ph, !llvm.loop !41

_ZNK4geos4geom10Coordinate9compareToERKS1_.exit.thread: ; preds = %bb.c, %.lr.ph, %bb.b, %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit, %bb.a
  %spec.select = phi i32 [ 1, %bb.a ], [ -1, %bb.c ], [ -1, %.lr.ph ], [ 1, %bb.b ], [ 1, %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos4geom18CoordinateSequence6isRingEPKS1_(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !0
  %i.e = icmp ult i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 0)
  %i.j = load ptr, ptr %0, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !0
  %i.n = add i64 %i.m, -1
  %i.o = load ptr, ptr %0, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.n)
  %i.s = load <2 x double>, ptr %i.i, align 8
  %i.t = load <2 x double>, ptr %i.r, align 8
  %i.u = fcmp oeq <2 x double> %i.s, %i.t         ; 2 uses
  %i.v = extractelement <2 x i1> %i.u, i64 0
  %i.w = extractelement <2 x i1> %i.u, i64 1
  %.0.i.not.i.not = select i1 %i.v, i1 %i.w, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %.0.i.not.i.not, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom18CoordinateSequence7reverseEPS1_(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !0
  %i.e = add i64 %i.d, -1                         ; 2 uses
  %i.f = lshr i64 %i.e, 1
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.014 = phi i64 [ 0, %bb.a ], [ %i.v, %bb.c ]   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.g = load ptr, ptr %0, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef nonnull align 8 dereferenceable(24) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %.014)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !tbaa.struct !22
  %i.k = sub nuw i64 %i.e, %.014                  ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(24) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.k)
  %i.p = load ptr, ptr %0, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %.014)
  %i.s = load ptr, ptr %0, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.v = add nuw i64 %.014, 1
  %exitcond.not = icmp eq i64 %.014, %i.f
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !42
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos4geom18CoordinateSequence6equalsEPKS1_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.not = icmp eq i64 %i.g, %i.k
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %.not2122 = icmp eq i64 %i.g, 0
  br i1 %.not2122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.023 = phi i64 [ %i.y, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %.023)
  %i.p = load ptr, ptr %1, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.023)
  %i.t = load <2 x double>, ptr %i.o, align 8
  %i.u = load <2 x double>, ptr %i.s, align 8
  %i.v = fcmp oeq <2 x double> %i.t, %i.u         ; 2 uses
  %i.w = extractelement <2 x i1> %i.v, i64 0
  %i.x = extractelement <2 x i1> %i.v, i64 1
  %.0.i.i = select i1 %i.w, i1 %i.x, i1 false     ; 2 uses
  %i.y = add nuw i64 %.023, 1                     ; 2 uses
  %exitcond.not = icmp ne i64 %i.y, %i.g
  %or.cond29.not = select i1 %.0.i.i, i1 %exitcond.not, i1 false
  br i1 %or.cond29.not, label %.lr.ph, label %.loopexit, !llvm.loop !3

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.c, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ false, %bb.c ], [ true, %.preheader ], [ %.0.i.i, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom18CoordinateSequence14expandEnvelopeERNS0_8EnvelopeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit
  %.05 = phi i64 [ 0, %.lr.ph ], [ %i.u, %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit ] ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %.05) ; 2 uses
  %2 = load double, ptr %i.k, align 8, !tbaa !16  ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %4 = load double, ptr %3, align 8, !tbaa !17    ; 5 uses
  %i.l = load double, ptr %i.e, align 8, !tbaa !45 ; 2 uses
  %i.m = fcmp uno double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %5 = insertelement <2 x double> poison, double %2, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  store <2 x double> %6, ptr %1, align 8, !tbaa !21
  store double %4, ptr %i.f, align 8, !tbaa !46
  br label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.sink.split

bb.d:                                             ; preds = %bb.b
  %i.n = load double, ptr %1, align 8, !tbaa !47
  %i.o = fcmp olt double %2, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %2, ptr %1, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = fcmp ogt double %2, %i.l
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double %2, ptr %i.e, align 8, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = load double, ptr %i.f, align 8, !tbaa !46
  %i.r = fcmp olt double %4, %i.q
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %4, ptr %i.f, align 8, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = load double, ptr %i.g, align 8, !tbaa !48
  %i.t = fcmp ogt double %4, %i.s
  br i1 %i.t, label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.sink.split, label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit

_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.sink.split: ; preds = %bb.j, %bb.c
  store double %4, ptr %i.g, align 8, !tbaa !48
  br label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit

_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit: ; preds = %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.sink.split, %bb.j
  %i.u = add nuw i64 %.05, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !43
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom18CoordinateSequence11getEnvelopeEv(ptr dead_on_unwind noalias writable sret(%"class.geos::geom::Envelope") align 8 initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  store <4 x double> splat (double +qnan), ptr %0, align 8, !tbaa !21
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_18CoordinateSequenceE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !0 ; 3 uses
  %.not13 = icmp eq i64 %i.e, 0
  br i1 %.not13, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0), !inline_history !2
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i) ; 0 uses
  %exitcond.peel.not = icmp eq i64 %i.e, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.peel.next

._crit_edge:                                      ; preds = %.lr.ph.peel.next, %bb.b, %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  ret ptr %0

.lr.ph.peel.next:                                 ; preds = %bb.b, %.lr.ph.peel.next
  %.012 = phi i64 [ %i.r, %.lr.ph.peel.next ], [ 1, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.012), !inline_history !2
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 2) ; 0 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o) ; 0 uses
  %i.r = add nuw i64 %.012, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.peel.next, !llvm.loop !49
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom18CoordinateSequence8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !59, !alias.scope !60
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !63, !alias.scope !60
  store i8 0, ptr %i.c, align 8, !tbaa !64, !alias.scope !60
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68, !noalias !60 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !60 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69, !noalias !60 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !70, !alias.scope !60 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.q) #14
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.t = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !13
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.v = getelementptr i8, ptr %i.t, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %2, i64 %i.w
  store ptr %i.u, ptr %i.x, align 8, !tbaa !13
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.y, ptr %i.a, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.z, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.ab) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.z, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ae) #11
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !13
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !72
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.al) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void

bb.f:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos4geomeqERKNS0_18CoordinateSequenceES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN4geos4geom18CoordinateSequence6equalsEPKS1_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !23 ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !23
  %.not.i = icmp eq i64 %i.e, %i.i
  br i1 %.not.i, label %.preheader.i, label %_ZN4geos4geom18CoordinateSequence6equalsEPKS1_S3_.exit

.preheader.i:                                     ; preds = %bb.b
  %.not2122.i = icmp eq i64 %i.e, 0
  br i1 %.not2122.i, label %_ZN4geos4geom18CoordinateSequence6equalsEPKS1_S3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.023.i = phi i64 [ %i.w, %.lr.ph.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %.023.i), !inline_history !23
  %i.n = load ptr, ptr %1, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.023.i), !inline_history !23
  %i.r = load <2 x double>, ptr %i.m, align 8
  %i.s = load <2 x double>, ptr %i.q, align 8
  %i.t = fcmp oeq <2 x double> %i.r, %i.s         ; 2 uses
  %i.u = extractelement <2 x i1> %i.t, i64 0
  %i.v = extractelement <2 x i1> %i.t, i64 1
  %.0.i.i.i = select i1 %i.u, i1 %i.v, i1 false   ; 2 uses
  %i.w = add nuw i64 %.023.i, 1                   ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.w, %i.e
  %or.cond.not = select i1 %.0.i.i.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN4geos4geom18CoordinateSequence6equalsEPKS1_S3_.exit, !llvm.loop !3

_ZN4geos4geom18CoordinateSequence6equalsEPKS1_S3_.exit: ; preds = %.lr.ph.i, %bb.a, %bb.b, %.preheader.i
  %.2.i = phi i1 [ true, %.preheader.i ], [ true, %bb.a ], [ false, %bb.b ], [ %.0.i.i.i, %.lr.ph.i ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos4geomneERKNS0_18CoordinateSequenceES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN4geos4geom18CoordinateSequence6equalsEPKS1_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !23 ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !23
  %.not.i = icmp eq i64 %i.e, %i.i
  br i1 %.not.i, label %.preheader.i, label %_ZN4geos4geom18CoordinateSequence6equalsEPKS1_S3_.exit

.preheader.i:                                     ; preds = %bb.b
  %.not2122.i = icmp eq i64 %i.e, 0
  br i1 %.not2122.i, label %_ZN4geos4geom18CoordinateSequence6equalsEPKS1_S3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.023.i = phi i64 [ %i.w, %.lr.ph.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %.023.i), !inline_history !23
  %i.n = load ptr, ptr %1, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.023.i), !inline_history !23
  %i.r = load <2 x double>, ptr %i.m, align 8
  %i.s = load <2 x double>, ptr %i.q, align 8
  %i.t = fcmp une <2 x double> %i.r, %i.s         ; 2 uses
  %i.u = extractelement <2 x i1> %i.t, i64 0
  %i.v = extractelement <2 x i1> %i.t, i64 1
  %.0.i.i.i.not = select i1 %i.u, i1 true, i1 %i.v ; 2 uses
  %i.w = add nuw i64 %.023.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.e
  %or.cond = select i1 %.0.i.i.i.not, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %_ZN4geos4geom18CoordinateSequence6equalsEPKS1_S3_.exit, label %.lr.ph.i, !llvm.loop !3

_ZN4geos4geom18CoordinateSequence6equalsEPKS1_S3_.exit: ; preds = %.lr.ph.i, %bb.a, %bb.b, %.preheader.i
  %i.x = phi i1 [ false, %.preheader.i ], [ false, %bb.a ], [ true, %bb.b ], [ %.0.i.i.i.not, %.lr.ph.i ]
  ret i1 %i.x
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom18CoordinateSequenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom18CoordinateSequenceD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #15
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK4geos4geom18CoordinateSequence4getXEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef double %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef 0)
  ret double %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK4geos4geom18CoordinateSequence4getYEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef double %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef 1)
  ret double %i.d
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = distinct !{!1, !19}
!2 = distinct !{null}
!3 = distinct !{!3, !19}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"_ZTSN4geos4geom10CoordinateE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !14, i64 8}
!18 = !{!15, !14, i64 16}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"any pointer", !8, i64 0}
!21 = !{!14, !14, i64 0}
!22 = !{i64 0, i64 8, !21, i64 8, i64 8, !21, i64 16, i64 8, !21}
!23 = !{ptr @_ZN4geos4geom18CoordinateSequence6equalsEPKS1_S3_}
!24 = distinct !{!24, !19}
!25 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !20, i64 0}
!26 = !{!25, !25, i64 0}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
!29 = distinct !{ptr @_ZN4geos4geom18CoordinateSequence7indexOfEPKNS0_10CoordinateEPKS1_, null}
!30 = distinct !{!30, !39}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19}
!34 = !{ptr @_ZN4geos4geom18CoordinateSequence7indexOfEPKNS0_10CoordinateEPKS1_}
!35 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !20, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!36, !35, i64 0}
!38 = !{!36, !35, i64 16}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!36, !35, i64 8}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !19}
!44 = !{!"_ZTSN4geos4geom8EnvelopeE", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!45 = !{!44, !14, i64 8}
!46 = !{!44, !14, i64 16}
!47 = !{!44, !14, i64 0}
!48 = !{!44, !14, i64 24}
!49 = distinct !{!49, !19, !50}
!50 = !{!"llvm.loop.peeled.count", i32 1}
!51 = distinct !{!51, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!52 = distinct !{!52, !51, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!53 = distinct !{!53, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!54 = distinct !{!54, !53, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!55 = !{!52}
!56 = !{!54}
!57 = !{!"p1 omnipotent char", !20, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !57, i64 0}
!59 = !{!58, !57, i64 0}
!60 = !{!54, !52}
!61 = !{!"long", !8, i64 0}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !58, i64 0, !61, i64 8, !8, i64 16}
!63 = !{!62, !61, i64 8}
!64 = !{!8, !8, i64 0}
!65 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!66 = !{!"_ZTSSt6locale", !65, i64 0}
!67 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !66, i64 56}
!68 = !{!67, !57, i64 40}
!69 = !{!67, !57, i64 32}
!70 = !{!62, !57, i64 0}
!71 = !{!"_ZTSSi", !61, i64 8}
!72 = !{!71, !61, i64 8}
end_hunk_0
