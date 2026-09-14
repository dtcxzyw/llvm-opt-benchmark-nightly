Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/utils_libraw?download=true
inline.NumInlined: 64
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN16checked_buffer_tC2Esi:bb.a
  %i.k = phi ptr [ %i.e, %bb.b ], [ %i.e, %.noexc5 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.0.i.i.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.h, %.noexc5 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i.i.i.i, ptr %i.l, align 8, !tbaa !206
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !103
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.n, align 8, !tbaa !104
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN16checked_buffer_tC2EsPhi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 2), (8, 20), (24, 48)) %0, i16 noundef signext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #19 align 2 {
bb.a:
  store i16 %1, ptr %0, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !103
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.b, align 8, !tbaa !104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.c = icmp sge i32 %1, %i.b
  %i.d = icmp slt i32 %1, 0
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %bb.b, label %_ZN16checked_buffer_t11checkoffsetEi.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 4, ptr %i.e, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN16checked_buffer_t11checkoffsetEi.exit:        ; preds = %bb.a
  %i.f = add nuw nsw i32 %1, 2
  %.not = icmp slt i32 %i.f, %i.b
  br i1 %.not, label %_ZN16checked_buffer_t11checkoffsetEi.exit4, label %bb.c

bb.c:                                             ; preds = %_ZN16checked_buffer_t11checkoffsetEi.exit
  %i.g = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 4, ptr %i.g, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN16checked_buffer_t11checkoffsetEi.exit4:       ; preds = %_ZN16checked_buffer_t11checkoffsetEi.exit
  %i.h = load i16, ptr %0, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = tail call noundef zeroext i16 @_Z19libraw_sget2_staticsPh(i16 noundef signext %i.h, ptr noundef %i.l)
  ret i16 %i.m
}

; Function Attrs: mustprogress uwtable
define void @_ZN16checked_buffer_t11checkoffsetEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104
  %i.c = icmp sge i32 %1, %i.b
  %i.d = icmp slt i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 4, ptr %i.e, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

declare noundef zeroext i16 @_Z19libraw_sget2_staticsPh(i16 noundef signext, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZN16checked_buffer_tixEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104
  %i.c = icmp sge i32 %1, %i.b
  %i.d = icmp slt i32 %1, 0
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %bb.b, label %_ZN16checked_buffer_t11checkoffsetEi.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 4, ptr %i.e, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN16checked_buffer_t11checkoffsetEi.exit:        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.h = zext nneg i32 %1 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !26
  ret i8 %i.j
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.c = icmp sge i32 %1, %i.b
  %i.d = icmp slt i32 %1, 0
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %bb.b, label %_ZN16checked_buffer_t11checkoffsetEi.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 4, ptr %i.e, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN16checked_buffer_t11checkoffsetEi.exit:        ; preds = %bb.a
  %i.f = add nuw nsw i32 %1, 4
  %.not = icmp slt i32 %i.f, %i.b
  br i1 %.not, label %_ZN16checked_buffer_t11checkoffsetEi.exit4, label %bb.c

bb.c:                                             ; preds = %_ZN16checked_buffer_t11checkoffsetEi.exit
  %i.g = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 4, ptr %i.g, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN16checked_buffer_t11checkoffsetEi.exit4:       ; preds = %_ZN16checked_buffer_t11checkoffsetEi.exit
  %i.h = load i16, ptr %0, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = tail call noundef i32 @_Z19libraw_sget4_staticsPh(i16 noundef signext %i.h, ptr noundef %i.l)
  ret i32 %i.m
}

declare noundef i32 @_Z19libraw_sget4_staticsPh(i16 noundef signext, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define noundef double @_ZN16checked_buffer_t8sgetrealEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104
  %i.c = icmp sge i32 %2, %i.b
  %i.d = icmp slt i32 %2, 0
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %bb.b, label %_ZN16checked_buffer_t11checkoffsetEi.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 4, ptr %i.e, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN16checked_buffer_t11checkoffsetEi.exit:        ; preds = %bb.a
  %i.f = tail call noundef i32 @_Z29libraw_tagtype_dataunit_bytesi(i32 noundef %1)
  %i.g = add nsw i32 %i.f, %2                     ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !104
  %i.i = icmp sge i32 %i.g, %i.h
  %i.j = icmp slt i32 %i.g, 0
  %or.cond.i6 = or i1 %i.j, %i.i
  br i1 %or.cond.i6, label %bb.c, label %_ZN16checked_buffer_t11checkoffsetEi.exit7

bb.c:                                             ; preds = %_ZN16checked_buffer_t11checkoffsetEi.exit
  %i.k = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 4, ptr %i.k, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN16checked_buffer_t11checkoffsetEi.exit7:       ; preds = %_ZN16checked_buffer_t11checkoffsetEi.exit
  %i.l = load i16, ptr %0, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !103
  %i.o = zext nneg i32 %2 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = tail call reassoc nsz arcp contract afn noundef double @_Z22libraw_sgetreal_staticsiPh(i16 noundef signext %i.l, i32 noundef %1, ptr noundef %i.p)
  ret double %i.q
}

declare noundef i32 @_Z29libraw_tagtype_dataunit_bytesi(i32 noundef) local_unnamed_addr #13

declare noundef double @_Z22libraw_sgetreal_staticsiPh(i16 noundef signext, i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2, 1) i32 @_ZN16checked_buffer_t9tiff_sgetEjPxPjS1_S0_S1_Pi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !96     ; 4 uses
  %i.b = add nsw i64 %i.a, 12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !104  ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = icmp sgt i64 %i.b, %i.e
  %i.g = icmp slt i64 %i.a, 0
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.k, label %8

8:                                                ; preds = %bb.a
  %9 = trunc i64 %i.a to i32                      ; 6 uses
  %10 = icmp sle i32 %i.d, %9
  %11 = icmp slt i32 %9, 0
  %or.cond.i.i = or i1 %11, %10
  br i1 %or.cond.i.i, label %12, label %_ZN16checked_buffer_t11checkoffsetEi.exit.i

12:                                               ; preds = %8
  %13 = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 4, ptr %13, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN16checked_buffer_t11checkoffsetEi.exit.i:      ; preds = %8
  %14 = add nuw nsw i32 %9, 2                     ; 3 uses
  %.not.i = icmp slt i32 %14, %i.d
  br i1 %.not.i, label %_ZN16checked_buffer_t5sget2Ei.exit, label %15

15:                                               ; preds = %_ZN16checked_buffer_t11checkoffsetEi.exit.i
  %16 = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 4, ptr %16, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN16checked_buffer_t5sget2Ei.exit:               ; preds = %_ZN16checked_buffer_t11checkoffsetEi.exit.i
  %i.h = load i16, ptr %0, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103
  %17 = and i64 %i.a, 2147483647
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %17
  %i.l = tail call noundef zeroext i16 @_Z19libraw_sget2_staticsPh(i16 noundef signext %i.h, ptr noundef %i.k)
  %i.m = zext i16 %i.l to i32
  store i32 %i.m, ptr %3, align 4, !tbaa !95
  %i.n = load i32, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %.not = icmp slt i32 %14, %i.n
  br i1 %.not, label %_ZN16checked_buffer_t11checkoffsetEi.exit.i27, label %bb.b

bb.b:                                             ; preds = %_ZN16checked_buffer_t5sget2Ei.exit
  %i.o = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 4, ptr %i.o, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN16checked_buffer_t11checkoffsetEi.exit.i27:    ; preds = %_ZN16checked_buffer_t5sget2Ei.exit
  %i.p = add nuw nsw i32 %9, 4                    ; 3 uses
  %.not.i28 = icmp samesign ult i32 %i.p, %i.n
  br i1 %.not.i28, label %_ZN16checked_buffer_t5sget2Ei.exit29, label %bb.c

bb.c:                                             ; preds = %_ZN16checked_buffer_t11checkoffsetEi.exit.i27
  %i.q = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 4, ptr %i.q, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN16checked_buffer_t5sget2Ei.exit29:             ; preds = %_ZN16checked_buffer_t11checkoffsetEi.exit.i27
  %i.r = load i16, ptr %0, align 8, !tbaa !102
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.t = zext nneg i32 %14 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = tail call noundef zeroext i16 @_Z19libraw_sget2_staticsPh(i16 noundef signext %i.r, ptr noundef nonnull %i.u)
  %i.w = zext i16 %i.v to i32
  store i32 %i.w, ptr %4, align 4, !tbaa !95
  %i.x = load i32, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %.not37 = icmp slt i32 %i.p, %i.x
  br i1 %.not37, label %_ZN16checked_buffer_t11checkoffsetEi.exit.i31, label %bb.d

bb.d:                                             ; preds = %_ZN16checked_buffer_t5sget2Ei.exit29
  %i.y = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 4, ptr %i.y, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN16checked_buffer_t11checkoffsetEi.exit.i31:    ; preds = %_ZN16checked_buffer_t5sget2Ei.exit29
  %i.z = add nuw nsw i32 %9, 8                    ; 3 uses
  %.not.i32 = icmp samesign ult i32 %i.z, %i.x
  br i1 %.not.i32, label %_ZN16checked_buffer_t5sget4Ei.exit, label %bb.e

bb.e:                                             ; preds = %_ZN16checked_buffer_t11checkoffsetEi.exit.i31
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 4, ptr %i.aa, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN16checked_buffer_t5sget4Ei.exit:               ; preds = %_ZN16checked_buffer_t11checkoffsetEi.exit.i31
  %i.ab = load i16, ptr %0, align 8, !tbaa !102
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.ad = zext nneg i32 %i.p to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = tail call noundef i32 @_Z19libraw_sget4_staticsPh(i16 noundef signext %i.ab, ptr noundef nonnull %i.ae)
  store i32 %i.af, ptr %6, align 4, !tbaa !95
  %i.ag = load i32, ptr %4, align 4, !tbaa !95
  %i.ah = tail call noundef i32 @_Z29libraw_tagtype_dataunit_bytesi(i32 noundef %i.ag) ; 2 uses
  store i32 %i.ah, ptr %7, align 4, !tbaa !95
  %i.ai = load i32, ptr %6, align 4, !tbaa !95
  %i.aj = mul i32 %i.ai, %i.ah
  %i.ak = icmp ugt i32 %i.aj, 4
  br i1 %i.ak, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN16checked_buffer_t5sget4Ei.exit
  %i.al = load i32, ptr %i.c, align 8, !tbaa !104 ; 2 uses
  %.not38 = icmp slt i32 %i.z, %i.al
  br i1 %.not38, label %_ZN16checked_buffer_t11checkoffsetEi.exit.i34, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 4, ptr %i.am, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN16checked_buffer_t11checkoffsetEi.exit.i34:    ; preds = %bb.f
  %i.an = add nuw nsw i32 %9, 12
  %.not.i35 = icmp samesign ult i32 %i.an, %i.al
  br i1 %.not.i35, label %_ZN16checked_buffer_t5sget4Ei.exit36, label %bb.h

bb.h:                                             ; preds = %_ZN16checked_buffer_t11checkoffsetEi.exit.i34
  %i.ao = tail call ptr @__cxa_allocate_exception(i64 4) #30 ; 2 uses
  store i32 4, ptr %i.ao, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #31
  unreachable

_ZN16checked_buffer_t5sget4Ei.exit36:             ; preds = %_ZN16checked_buffer_t11checkoffsetEi.exit.i34
  %i.ap = load i16, ptr %0, align 8, !tbaa !102
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.ar = zext nneg i32 %i.z to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %i.at = tail call noundef i32 @_Z19libraw_sget4_staticsPh(i16 noundef signext %i.ap, ptr noundef nonnull %i.as)
  %i.au = sub i32 %i.at, %1
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  store i64 %i.av, ptr %5, align 8, !tbaa !96
  %i.aw = load i32, ptr %6, align 4, !tbaa !95
  %i.ax = zext i32 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ax, %i.av
  %i.az = load i32, ptr %i.c, align 8, !tbaa !104
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp sgt i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.k, label %bb.j

bb.i:                                             ; preds = %_ZN16checked_buffer_t5sget4Ei.exit
  %i.bc = load i64, ptr %2, align 8, !tbaa !96
  %i.bd = add nsw i64 %i.bc, 8
  store i64 %i.bd, ptr %5, align 8, !tbaa !96
  br label %bb.j

bb.j:                                             ; preds = %_ZN16checked_buffer_t5sget4Ei.exit36, %bb.i
  %i.be = load i64, ptr %2, align 8, !tbaa !96
  %i.bf = add nsw i64 %i.be, 12
  store i64 %i.bf, ptr %2, align 8, !tbaa !96
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN16checked_buffer_t5sget4Ei.exit36, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ 0, %bb.j ], [ -2, %_ZN16checked_buffer_t5sget4Ei.exit36 ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #24

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v8i32(<8 x i32>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.bswap.v16i16(<16 x i16>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #26

attributes #0 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { cold noreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { cold nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { nounwind }
attributes #31 = { noreturn }
attributes #32 = { nounwind allocsize(1) }
attributes #33 = { nounwind allocsize(0,1) }
attributes #34 = { builtin allocsize(0) }

!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !23}
!1 = distinct !{!1, !23}
!2 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !87, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!16 = !{!"p1 omnipotent char", !14, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"any p2 pointer", !14, i64 0}
!19 = !{!"_ZTS13libraw_memmgr", !18, i64 0, !11, i64 8}
!20 = !{!19, !11, i64 8}
!21 = !{!19, !18, i64 0}
!22 = !{!14, !14, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"_ZTS17LibRaw_exceptions", !10, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!10, !10, i64 0}
!27 = !{!"short", !10, i64 0}
!28 = !{!"p1 short", !14, i64 0}
!29 = !{!"double", !10, i64 0}
!30 = !{!"_ZTS20libraw_image_sizes_t", !27, i64 0, !27, i64 2, !27, i64 4, !27, i64 6, !27, i64 8, !27, i64 10, !27, i64 12, !27, i64 14, !11, i64 16, !29, i64 24, !11, i64 32, !10, i64 36, !27, i64 164, !10, i64 166}
!31 = !{!"_ZTS16libraw_iparams_t", !10, i64 0, !10, i64 4, !10, i64 68, !10, i64 132, !10, i64 196, !10, i64 260, !11, i64 324, !11, i64 328, !11, i64 332, !11, i64 336, !11, i64 340, !11, i64 344, !10, i64 348, !10, i64 384, !10, i64 420, !11, i64 428, !16, i64 432}
!32 = !{!"float", !10, i64 0}
!33 = !{!"_ZTS18libraw_nikonlens_t", !32, i64 0, !10, i64 4, !10, i64 5, !10, i64 6, !10, i64 7}
!34 = !{!"_ZTS16libraw_dnglens_t", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12}
!35 = !{!"long long", !10, i64 0}
!36 = !{!"_ZTS24libraw_makernotes_lens_t", !35, i64 0, !10, i64 8, !27, i64 136, !27, i64 138, !35, i64 144, !27, i64 152, !27, i64 154, !10, i64 156, !27, i64 220, !10, i64 222, !10, i64 238, !32, i64 256, !32, i64 260, !32, i64 264, !32, i64 268, !32, i64 272, !32, i64 276, !32, i64 280, !32, i64 284, !32, i64 288, !32, i64 292, !32, i64 296, !32, i64 300, !32, i64 304, !32, i64 308, !32, i64 312, !35, i64 320, !10, i64 328, !35, i64 456, !10, i64 464, !35, i64 592, !10, i64 600, !27, i64 728, !32, i64 732}
!37 = !{!"_ZTS17libraw_lensinfo_t", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !32, i64 16, !10, i64 20, !10, i64 148, !10, i64 276, !10, i64 404, !27, i64 532, !33, i64 536, !34, i64 544, !36, i64 560}
!38 = !{!"_ZTS13libraw_area_t", !27, i64 0, !27, i64 2, !27, i64 4, !27, i64 6}
!39 = !{!"_ZTS25libraw_canon_makernotes_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !10, i64 16, !11, i64 32, !10, i64 36, !27, i64 52, !27, i64 54, !10, i64 56, !27, i64 58, !27, i64 60, !27, i64 62, !27, i64 64, !27, i64 66, !27, i64 68, !27, i64 70, !27, i64 72, !27, i64 74, !27, i64 76, !27, i64 78, !27, i64 80, !27, i64 82, !11, i64 84, !32, i64 88, !27, i64 92, !27, i64 94, !27, i64 96, !27, i64 98, !11, i64 100, !27, i64 104, !11, i64 108, !11, i64 112, !27, i64 116, !11, i64 120, !38, i64 124, !38, i64 132, !38, i64 140, !38, i64 148, !38, i64 156, !10, i64 164}
!40 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !27, i64 0, !27, i64 2, !27, i64 4, !27, i64 6}
!41 = !{!"_ZTS25libraw_nikon_makernotes_t", !29, i64 0, !27, i64 8, !27, i64 10, !10, i64 12, !10, i64 19, !10, i64 20, !10, i64 21, !10, i64 34, !10, i64 54, !10, i64 58, !10, i64 62, !10, i64 66, !10, i64 67, !10, i64 68, !10, i64 69, !10, i64 70, !10, i64 71, !10, i64 73, !10, i64 74, !10, i64 75, !10, i64 76, !10, i64 77, !10, i64 78, !10, i64 82, !10, i64 86, !27, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !10, i64 112, !10, i64 144, !10, i64 145, !10, i64 146, !11, i64 148, !11, i64 152, !11, i64 156, !10, i64 160, !10, i64 162, !27, i64 170, !40, i64 172, !27, i64 180, !27, i64 182, !27, i64 184, !11, i64 188, !10, i64 192, !10, i64 212, !11, i64 232, !10, i64 236, !11, i64 248, !16, i64 256, !27, i64 264, !27, i64 266, !10, i64 268, !27, i64 270, !29, i64 272, !29, i64 280, !29, i64 288}
!42 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !11, i64 0, !29, i64 8, !10, i64 16, !10, i64 24, !10, i64 88, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !10, i64 168, !10, i64 200, !11, i64 264, !10, i64 268, !10, i64 276, !10, i64 288}
!43 = !{!"_ZTS18libraw_fuji_info_t", !32, i64 0, !27, i64 4, !27, i64 6, !27, i64 8, !27, i64 10, !27, i64 12, !27, i64 14, !27, i64 16, !27, i64 18, !10, i64 20, !10, i64 53, !32, i64 88, !27, i64 92, !27, i64 94, !10, i64 96, !27, i64 100, !11, i64 104, !11, i64 108, !27, i64 112, !10, i64 114, !27, i64 120, !27, i64 122, !27, i64 124, !27, i64 126, !27, i64 128, !11, i64 132, !27, i64 136, !10, i64 138, !10, i64 151, !10, i64 156, !11, i64 164, !27, i64 168, !11, i64 172, !27, i64 176, !10, i64 178, !10, i64 196, !11, i64 324, !11, i64 328, !11, i64 332, !10, i64 336, !11, i64 344}
!44 = !{!"_ZTS27libraw_olympus_makernotes_t", !10, i64 0, !27, i64 6, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !10, i64 64, !10, i64 72, !27, i64 82, !10, i64 84, !27, i64 88, !27, i64 90, !10, i64 92, !10, i64 352, !27, i64 392, !10, i64 394, !10, i64 396, !10, i64 404, !27, i64 416, !27, i64 418, !27, i64 420, !27, i64 422, !29, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !11, i64 452, !27, i64 456, !27, i64 458}
!45 = !{!"_ZTS18libraw_sony_info_t", !27, i64 0, !10, i64 2, !10, i64 3, !11, i64 4, !10, i64 8, !11, i64 12, !10, i64 16, !10, i64 17, !27, i64 18, !10, i64 20, !10, i64 24, !10, i64 25, !27, i64 26, !10, i64 28, !10, i64 38, !10, i64 39, !10, i64 40, !27, i64 48, !10, i64 50, !10, i64 51, !10, i64 52, !27, i64 54, !11, i64 56, !27, i64 60, !10, i64 62, !27, i64 66, !27, i64 68, !27, i64 70, !27, i64 72, !27, i64 74, !27, i64 76, !27, i64 78, !11, i64 80, !32, i64 84, !27, i64 88, !11, i64 92, !11, i64 96, !27, i64 100, !10, i64 102, !11, i64 124, !27, i64 128, !11, i64 132, !10, i64 136, !10, i64 137, !27, i64 138, !27, i64 140, !27, i64 142, !27, i64 144, !27, i64 146, !27, i64 148, !27, i64 150, !27, i64 152, !27, i64 154, !11, i64 156, !27, i64 160, !10, i64 162, !32, i64 180}
!46 = !{!"_ZTS25libraw_kodak_makernotes_t", !27, i64 0, !27, i64 2, !27, i64 4, !27, i64 6, !27, i64 8, !27, i64 10, !10, i64 12, !10, i64 48, !10, i64 84, !10, i64 120, !10, i64 156, !10, i64 192, !27, i64 228, !27, i64 230, !27, i64 232, !27, i64 234, !32, i64 236, !32, i64 240}
!47 = !{!"_ZTS29libraw_panasonic_makernotes_t", !27, i64 0, !27, i64 2, !10, i64 4, !11, i64 36, !32, i64 40, !10, i64 44, !27, i64 56, !27, i64 58, !11, i64 60, !11, i64 64}
!48 = !{!"_ZTS26libraw_pentax_makernotes_t", !10, i64 0, !10, i64 4, !10, i64 8, !27, i64 12, !11, i64 16, !11, i64 20, !27, i64 24, !10, i64 26, !27, i64 30, !10, i64 32, !10, i64 33, !27, i64 34}
!49 = !{!"_ZTS22libraw_p1_makernotes_t", !10, i64 0, !10, i64 64, !10, i64 128, !10, i64 384}
!50 = !{!"_ZTS25libraw_ricoh_makernotes_t", !27, i64 0, !10, i64 4, !10, i64 12, !27, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !27, i64 40, !27, i64 42, !27, i64 44, !27, i64 46, !27, i64 48, !27, i64 50, !29, i64 56, !29, i64 64}
!51 = !{!"_ZTS27libraw_samsung_makernotes_t", !10, i64 0, !10, i64 16, !10, i64 32, !10, i64 40, !29, i64 88, !11, i64 96, !10, i64 100}
!52 = !{!"_ZTS24libraw_metadata_common_t", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20, !32, i64 24, !32, i64 28, !32, i64 32, !32, i64 36, !32, i64 40, !32, i64 44, !32, i64 48, !32, i64 52, !32, i64 56, !32, i64 60, !27, i64 64, !10, i64 66, !32, i64 196, !10, i64 200, !11, i64 296}
!53 = !{!"_ZTS19libraw_makernotes_t", !39, i64 0, !41, i64 168, !42, i64 464, !43, i64 848, !44, i64 1200, !45, i64 1664, !46, i64 1848, !47, i64 2092, !48, i64 2160, !49, i64 2196, !50, i64 2648, !51, i64 2720, !52, i64 2856}
!54 = !{!"_ZTS21libraw_shootinginfo_t", !27, i64 0, !27, i64 2, !27, i64 4, !27, i64 6, !27, i64 8, !27, i64 10, !27, i64 12, !10, i64 14, !10, i64 78}
!55 = !{!"_ZTS22libraw_output_params_t", !10, i64 0, !10, i64 16, !10, i64 32, !10, i64 64, !10, i64 112, !32, i64 128, !32, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !10, i64 224, !11, i64 240, !11, i64 244, !32, i64 248, !32, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !32, i64 288, !32, i64 292, !11, i64 296, !11, i64 300}
!56 = !{!"p2 omnipotent char", !18, i64 0}
!57 = !{!"_ZTS26libraw_raw_unpack_params_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !32, i64 28, !10, i64 32, !56, i64 40}
!58 = !{!"_ZTS5ph1_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !32, i64 32}
!59 = !{!"_ZTS19libraw_dng_levels_t", !11, i64 0, !10, i64 4, !11, i64 16420, !10, i64 16424, !32, i64 32840, !10, i64 32844, !10, i64 32860, !10, i64 32868, !11, i64 32884, !10, i64 32888, !10, i64 32904, !32, i64 32920, !32, i64 32924, !10, i64 32928}
!60 = !{!"_ZTS18libraw_colordata_t", !10, i64 0, !10, i64 131072, !11, i64 147488, !11, i64 147492, !11, i64 147496, !10, i64 147500, !32, i64 147516, !32, i64 147520, !10, i64 147524, !10, i64 147652, !10, i64 147668, !10, i64 147684, !10, i64 147732, !10, i64 147780, !10, i64 147828, !58, i64 147876, !32, i64 147912, !32, i64 147916, !10, i64 147920, !10, i64 147984, !10, i64 148048, !10, i64 148112, !10, i64 148176, !10, i64 148193, !14, i64 148264, !11, i64 148272, !10, i64 148276, !10, i64 148308, !59, i64 148648, !10, i64 181624, !10, i64 185720, !11, i64 187000, !10, i64 187004, !11, i64 187076, !11, i64 187080}
!61 = !{!"long", !10, i64 0}
!62 = !{!"_ZTS17libraw_gps_info_t", !10, i64 0, !10, i64 12, !10, i64 24, !32, i64 36, !10, i64 40, !10, i64 41, !10, i64 42, !10, i64 43, !10, i64 44}
end_hunk_0
