inline.NumInlined: 285
inline.NumDeleted: 91
begin_hunk_0_@__cxa_allocate_exception
; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 24, ptr %i.a, align 8, !tbaa !20
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !13
  %i.d = load i64, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.4, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !7
  %i.f = load ptr, ptr %2, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util24IllegalArgumentExceptionE, i64 16), ptr %0, align 8, !tbaa !21
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #7 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN4geos4geom18IntersectionMatrix7matchesEic(i32 noundef %0, i8 noundef signext %1) local_unnamed_addr #8 align 2 {
bb.a:
  switch i8 %1, label %bb.c [
    i8 42, label %bb.f
    i8 84, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp sgt i32 %0, -1
  %i.b = icmp eq i32 %0, -2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.f, label %.thread25

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %1, 70
  %i.d = icmp eq i32 %0, -1
  %or.cond3 = and i1 %i.d, %i.c
  br i1 %or.cond3, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i8 %1, 48
  %i.f = icmp eq i32 %0, 0
  %or.cond5 = and i1 %i.f, %i.e
  br i1 %or.cond5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq i8 %1, 49
  %i.h = icmp eq i32 %0, 1
  %or.cond7 = and i1 %i.h, %i.g
  br i1 %or.cond7, label %bb.f, label %.thread25

.thread25:                                        ; preds = %bb.b, %bb.e
  %i.i = icmp eq i8 %1, 50
  %i.j = icmp eq i32 %0, 2
  %or.cond9 = and i1 %i.j, %i.i
  br label %bb.f

bb.f:                                             ; preds = %.thread25, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.e ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ %or.cond9, %.thread25 ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos4geom18IntersectionMatrix7matchesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.geos::geom::IntersectionMatrix", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN4geos4geom18IntersectionMatrixC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = call noundef zeroext i1 @_ZNK4geos4geom18IntersectionMatrix7matchesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos4geom18IntersectionMatrix3setENS0_8LocationES2_i(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(36) %0, i8 noundef signext %1, i8 noundef signext %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sext i8 %1 to i64
  %i.b = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.a
  %i.c = sext i8 %2 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  store i32 %3, ptr %i.d, align 4, !tbaa !3
  ret void
}

declare noundef i32 @_ZN4geos4geom9Dimension16toDimensionValueEc(i8 noundef signext) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4geom18IntersectionMatrix17setAtLeastIfValidENS0_8LocationES2_i(ptr noundef nonnull align 4 captures(none) dereferenceable(36) %0, i8 noundef signext %1, i8 noundef signext %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp ne i8 %1, -1
  %i.b = icmp ne i8 %2, -1
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %_ZN4geos4geom18IntersectionMatrix10setAtLeastENS0_8LocationES2_i.exit

bb.b:                                             ; preds = %bb.a
  %i.c = sext i8 %1 to i64
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.c
  %i.e = sext i8 %2 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  %i.h = icmp slt i32 %i.g, %3
  br i1 %i.h, label %bb.c, label %_ZN4geos4geom18IntersectionMatrix10setAtLeastENS0_8LocationES2_i.exit

bb.c:                                             ; preds = %bb.b
  store i32 %3, ptr %i.f, align 4, !tbaa !3
  br label %_ZN4geos4geom18IntersectionMatrix10setAtLeastENS0_8LocationES2_i.exit

_ZN4geos4geom18IntersectionMatrix10setAtLeastENS0_8LocationES2_i.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom18IntersectionMatrix10setAtLeastENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 captures(none) dereferenceable(36) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4geos4geom18IntersectionMatrix10setAtLeastENS0_8LocationES2_i.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN4geos4geom18IntersectionMatrix10setAtLeastENS0_8LocationES2_i.exit
  %.08 = phi i64 [ %i.n, %_ZN4geos4geom18IntersectionMatrix10setAtLeastENS0_8LocationES2_i.exit ], [ 0, %bb.a ] ; 4 uses
  %i.c = udiv i64 %.08, 3
  %i.d = urem i64 %.08, 3
  %i.e = load ptr, ptr %1, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.08
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  %i.h = tail call noundef i32 @_ZN4geos4geom9Dimension16toDimensionValueEc(i8 noundef signext %i.g) ; 2 uses
  %sext = shl i64 %i.c, 56
  %i.i = ashr exact i64 %sext, 56
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.d ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = icmp slt i32 %i.l, %i.h
  br i1 %i.m, label %bb.b, label %_ZN4geos4geom18IntersectionMatrix10setAtLeastENS0_8LocationES2_i.exit

bb.b:                                             ; preds = %.lr.ph
  store i32 %i.h, ptr %i.k, align 4, !tbaa !3
  br label %_ZN4geos4geom18IntersectionMatrix10setAtLeastENS0_8LocationES2_i.exit

_ZN4geos4geom18IntersectionMatrix10setAtLeastENS0_8LocationES2_i.exit: ; preds = %.lr.ph, %bb.b
  %i.n = add nuw i64 %.08, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos4geom18IntersectionMatrix10isDisjointEv(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(36) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %1 = load <4 x i32>, ptr %0, align 4
  %2 = shufflevector <4 x i32> %1, <4 x i32> poison, <3 x i32> <i32 0, i32 1, i32 3>
  %.fr = freeze <3 x i32> %2
  %3 = icmp ne <3 x i32> %.fr, splat (i32 -1)
  %4 = bitcast <3 x i1> %3 to i3
  %5 = icmp eq i3 %4, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, -1
  %or.cond5 = select i1 %5, i1 %i.c, i1 false
  ret i1 %or.cond5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos4geom18IntersectionMatrix12isIntersectsEv(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(36) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %1 = load <4 x i32>, ptr %0, align 4
  %2 = shufflevector <4 x i32> %1, <4 x i32> poison, <3 x i32> <i32 0, i32 1, i32 3>
  %.fr = freeze <3 x i32> %2
  %3 = icmp ne <3 x i32> %.fr, splat (i32 -1)
  %4 = bitcast <3 x i1> %3 to i3
  %5 = icmp eq i3 %4, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4
  %6 = icmp ne i32 %i.b, -1
  %or.cond5.i = select i1 %5, i1 %6, i1 true
  ret i1 %or.cond5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos4geom18IntersectionMatrix9isTouchesEii(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(36) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr43 = phi i32 [ %1, %bb.a ], [ %.tr44, %tailrecurse ] ; 5 uses
  %.tr44 = phi i32 [ %2, %bb.a ], [ %.tr43, %tailrecurse ] ; 4 uses
  %i.a = icmp sgt i32 %.tr43, %.tr44
  br i1 %i.a, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.b = icmp eq i32 %.tr43, 2
  %i.c = icmp eq i32 %.tr44, 2
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %.tr43, 1
  %i.e = add i32 %.tr44, -1
  %or.cond541 = icmp ult i32 %i.e, 2              ; 2 uses
  %or.cond27 = and i1 %i.d, %or.cond541
  br i1 %or.cond27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %.tr43, 0
  %or.cond28 = and i1 %i.f, %or.cond541
  %i.g = load i32, ptr %0, align 4
  %i.h = icmp eq i32 %i.g, -1
  %or.cond40 = select i1 %or.cond28, i1 %i.h, i1 false
  br i1 %or.cond40, label %bb.f, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit36

bb.e:                                             ; preds = %bb.c, %bb.b
  %.old = load i32, ptr %0, align 4, !tbaa !3
  %.old39 = icmp eq i32 %.old, -1
  br i1 %.old39, label %bb.f, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit36

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  %i.l = icmp eq i32 %i.j, -2
  %or.cond.i = or i1 %i.k, %i.l
  br i1 %or.cond.i, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit36, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

_ZN4geos4geom18IntersectionMatrix7matchesEic.exit: ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3    ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  %i.p = icmp eq i32 %i.n, -2
  %or.cond.i29 = or i1 %i.o, %i.p
  br i1 %or.cond.i29, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit36, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit32

_ZN4geos4geom18IntersectionMatrix7matchesEic.exit32: ; preds = %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  %i.t = icmp eq i32 %i.r, -2
  %or.cond.i33 = or i1 %i.s, %i.t
  br label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit36

_ZN4geos4geom18IntersectionMatrix7matchesEic.exit36: ; preds = %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit32, %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit, %bb.f, %bb.d, %bb.e
  %.0 = phi i1 [ true, %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit ], [ false, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %or.cond.i33, %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit32 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos4geom18IntersectionMatrix9isCrossesEii(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(36) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0                        ; 2 uses
  %i.b = icmp eq i32 %2, 1                        ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %2, 2                        ; 2 uses
  %or.cond3 = and i1 %i.a, %i.c
  br i1 %or.cond3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %1, 1                        ; 3 uses
  %or.cond5 = and i1 %i.d, %i.c
  br i1 %or.cond5, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.f = icmp sgt i32 %i.e, -1
  %i.g = icmp eq i32 %i.e, -2
  %or.cond.i = or i1 %i.f, %i.g
  br i1 %or.cond.i, label %bb.e, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3    ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  %i.k = icmp eq i32 %i.i, -2
  %or.cond.i29 = or i1 %i.j, %i.k
  br label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

bb.f:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %2, 0
  %or.cond7 = and i1 %i.d, %i.l
  br i1 %or.cond7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = icmp eq i32 %1, 2
  %or.cond1144 = icmp ult i32 %2, 2
  %or.cond28 = and i1 %i.m, %or.cond1144
  br i1 %or.cond28, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  %i.p = icmp eq i32 %i.n, -2
  %or.cond.i33 = or i1 %i.o, %i.p
  br i1 %or.cond.i33, label %bb.i, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  %i.t = icmp eq i32 %i.r, -2
  %or.cond.i37 = or i1 %i.s, %i.t
  br label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

bb.j:                                             ; preds = %bb.g
  %or.cond13 = and i1 %i.d, %i.b
  br i1 %or.cond13, label %bb.k, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

bb.k:                                             ; preds = %bb.j
  %i.u = load i32, ptr %0, align 4, !tbaa !3
  %i.v = icmp eq i32 %i.u, 0
  br label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

_ZN4geos4geom18IntersectionMatrix7matchesEic.exit: ; preds = %bb.i, %bb.e, %bb.h, %bb.d, %bb.j, %bb.k
  %.0 = phi i1 [ false, %bb.h ], [ false, %bb.d ], [ %i.v, %bb.k ], [ false, %bb.j ], [ %or.cond.i29, %bb.e ], [ %or.cond.i37, %bb.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos4geom18IntersectionMatrix8isWithinEv(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(36) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  %i.c = icmp eq i32 %i.a, -2
  %or.cond.i = or i1 %i.b, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, -1
  %or.cond = select i1 %or.cond.i, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = icmp eq i32 %i.h, -1
  br label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

_ZN4geos4geom18IntersectionMatrix7matchesEic.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos4geom18IntersectionMatrix10isContainsEv(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(36) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  %i.c = icmp eq i32 %i.a, -2
  %or.cond.i = or i1 %i.b, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, -1
  %or.cond = select i1 %or.cond.i, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = icmp eq i32 %i.h, -1
  br label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

_ZN4geos4geom18IntersectionMatrix7matchesEic.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos4geom18IntersectionMatrix8isEqualsEii(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(36) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %.not = icmp eq i32 %1, %2
  br i1 %.not, label %bb.b, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  %i.c = icmp eq i32 %i.a, -2
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %bb.c, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load <6 x i32>, ptr %i.d, align 4
  %4 = shufflevector <6 x i32> %3, <6 x i32> poison, <3 x i32> <i32 0, i32 4, i32 5>
  %.fr = freeze <3 x i32> %4
  %5 = icmp ne <3 x i32> %.fr, splat (i32 -1)
  %6 = bitcast <3 x i1> %5 to i3
  %i.e = icmp eq i3 %6, 0
  br i1 %i.e, label %bb.d, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  %i.h = icmp eq i32 %i.g, -1
  br label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

_ZN4geos4geom18IntersectionMatrix7matchesEic.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.h, %bb.d ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos4geom18IntersectionMatrix10isOverlapsEii(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(36) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = or i32 %2, %1
  %or.cond = icmp eq i32 %i.a, 0
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 2
  %i.c = icmp eq i32 %2, 2
  %or.cond3 = and i1 %i.b, %i.c
  br i1 %or.cond3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  %i.f = icmp eq i32 %i.d, -2
  %or.cond.i = or i1 %i.e, %i.f
  br i1 %or.cond.i, label %bb.d, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  %i.j = icmp eq i32 %i.h, -2
  %or.cond.i12 = or i1 %i.i, %i.j
  br i1 %or.cond.i12, label %bb.e, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3    ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  %i.n = icmp eq i32 %i.l, -2
  %or.cond.i16 = or i1 %i.m, %i.n
  br label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

bb.f:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %1, 1
  %i.p = icmp eq i32 %2, 1
  %or.cond5 = and i1 %i.o, %i.p
  %i.q = load i32, ptr %0, align 4
  %i.r = icmp eq i32 %i.q, 1
  %or.cond32 = select i1 %or.cond5, i1 %i.r, i1 false
  br i1 %or.cond32, label %bb.g, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3    ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  %i.v = icmp eq i32 %i.t, -2
  %or.cond.i20 = or i1 %i.u, %i.v
  br i1 %or.cond.i20, label %bb.h, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3    ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  %i.z = icmp eq i32 %i.x, -2
  %or.cond.i24 = or i1 %i.y, %i.z
  br label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

_ZN4geos4geom18IntersectionMatrix7matchesEic.exit: ; preds = %bb.h, %bb.e, %bb.g, %bb.d, %bb.c, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.f ], [ %or.cond.i24, %bb.h ], [ %or.cond.i16, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos4geom18IntersectionMatrix8isCoversEv(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(36) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  %i.c = icmp eq i32 %i.a, -2
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %.critedge, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

_ZN4geos4geom18IntersectionMatrix7matchesEic.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.f = icmp sgt i32 %i.e, -1
  %i.g = icmp eq i32 %i.e, -2
  %or.cond.i1 = or i1 %i.f, %i.g
  br i1 %or.cond.i1, label %.critedge, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit4

_ZN4geos4geom18IntersectionMatrix7matchesEic.exit4: ; preds = %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3    ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  %i.k = icmp eq i32 %i.i, -2
  %or.cond.i5 = or i1 %i.j, %i.k
  br i1 %or.cond.i5, label %.critedge, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit8

_ZN4geos4geom18IntersectionMatrix7matchesEic.exit8: ; preds = %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3    ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  %i.o = icmp eq i32 %i.m, -2
  %or.cond.i9 = or i1 %i.n, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.q, -1
  %or.cond = select i1 %or.cond.i9, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit12

.critedge:                                        ; preds = %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit4, %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit, %bb.a
  %.old = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.old17 = load i32, ptr %.old, align 4, !tbaa !3
  %.old18 = icmp eq i32 %.old17, -1
  br i1 %.old18, label %bb.b, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit12

bb.b:                                             ; preds = %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit8, %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = icmp eq i32 %i.t, -1
  br label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit12

_ZN4geos4geom18IntersectionMatrix7matchesEic.exit12: ; preds = %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit8, %bb.b, %.critedge
  %i.v = phi i1 [ false, %.critedge ], [ %i.u, %bb.b ], [ false, %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit8 ]
  ret i1 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos4geom18IntersectionMatrix11isCoveredByEv(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(36) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  %i.c = icmp eq i32 %i.a, -2
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %.critedge, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit

_ZN4geos4geom18IntersectionMatrix7matchesEic.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.f = icmp sgt i32 %i.e, -1
  %i.g = icmp eq i32 %i.e, -2
  %or.cond.i1 = or i1 %i.f, %i.g
  br i1 %or.cond.i1, label %.critedge, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit4

_ZN4geos4geom18IntersectionMatrix7matchesEic.exit4: ; preds = %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3    ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  %i.k = icmp eq i32 %i.i, -2
  %or.cond.i5 = or i1 %i.j, %i.k
  br i1 %or.cond.i5, label %.critedge, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit8

_ZN4geos4geom18IntersectionMatrix7matchesEic.exit8: ; preds = %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3    ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  %i.o = icmp eq i32 %i.m, -2
  %or.cond.i9 = or i1 %i.n, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.q, -1
  %or.cond = select i1 %or.cond.i9, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit12

.critedge:                                        ; preds = %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit4, %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit, %bb.a
  %.old = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.old17 = load i32, ptr %.old, align 4, !tbaa !3
  %.old18 = icmp eq i32 %.old17, -1
  br i1 %.old18, label %bb.b, label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit12

bb.b:                                             ; preds = %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit8, %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = icmp eq i32 %i.t, -1
  br label %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit12

_ZN4geos4geom18IntersectionMatrix7matchesEic.exit12: ; preds = %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit8, %bb.b, %.critedge
  %i.v = phi i1 [ false, %.critedge ], [ %i.u, %bb.b ], [ false, %_ZN4geos4geom18IntersectionMatrix7matchesEic.exit8 ]
  ret i1 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull ptr @_ZN4geos4geom18IntersectionMatrix9transposeEv(ptr noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(36) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <4 x i32>, ptr %i.a, align 4, !tbaa !3
  %i.g = shufflevector <4 x i32> %i.f, <4 x i32> poison, <2 x i32> <i32 0, i32 3>
  store i32 %i.c, ptr %i.a, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
end_hunk_0
