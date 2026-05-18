inline.NumInlined: 13
inline.NumDeleted: 9
begin_hunk_0_@_ZrsRSiRN9Imath_3_14halfE:bb.a
  %i.w = add nuw nsw i32 %i.f, 134221823
  %i.x = lshr i32 %i.f, 13
  %i.y = and i32 %i.x, 1
  %i.z = add nuw nsw i32 %i.w, %i.y
  %i.aa = lshr i32 %i.z, 13
  %i.ab = and i32 %i.g, 32768
  %i.ac = or i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i16
  br label %_ZN9Imath_3_14halfC2Ef.exit

bb.h:                                             ; preds = %bb.a
  %i.ae = icmp samesign ult i32 %i.f, 855638017
  br i1 %i.ae, label %_ZN9Imath_3_14halfC2Ef.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = lshr i32 %i.f, 23                       ; 2 uses
  %i.ag = sub nuw nsw i32 126, %i.af
  %i.ah = and i32 %i.f, 8388607
  %i.ai = or disjoint i32 %i.ah, 8388608          ; 2 uses
  %i.aj = add nsw i32 %i.af, -94
  %i.ak = shl i32 %i.ai, %i.aj                    ; 2 uses
  %i.al = lshr i32 %i.ai, %i.ag                   ; 2 uses
  %i.am = and i32 %i.g, 32768
  %i.an = or i32 %i.al, %i.am
  %i.ao = trunc nuw i32 %i.an to i16              ; 2 uses
  %i.ap = icmp ugt i32 %i.ak, -2147483648
  br i1 %i.ap, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp ne i32 %i.ak, -2147483648
  %i.ar = and i32 %i.al, 1
  %.not.i.i = icmp eq i32 %i.ar, 0
  %or.cond.i.i = select i1 %i.aq, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZN9Imath_3_14halfC2Ef.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = add nuw i16 %i.ao, 1
  br label %_ZN9Imath_3_14halfC2Ef.exit

_ZN9Imath_3_14halfC2Ef.exit:                      ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.j, %bb.k
  %.0.i.i = phi i16 [ %i.i, %bb.h ], [ %i.t, %bb.d ], [ %i.v, %bb.f ], [ %i.ad, %bb.g ], [ %i.l, %bb.c ], [ %i.as, %bb.k ], [ %i.ao, %bb.j ]
  store i16 %.0.i.i, ptr %1, align 2, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_Z9printBitsRSoN9Imath_3_14halfE(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = zext i16 %1 to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.i
  ret void

bb.c:                                             ; preds = %bb.a, %bb.i
  %.011 = phi i32 [ 15, %bb.a ], [ %i.w, %bb.i ]  ; 4 uses
  %i.d = shl nuw i32 1, %.011
  %i.e = and i32 %i.d, %i.c
  %.not = icmp eq i32 %i.e, 0
  %i.f = select i1 %.not, i8 48, i8 49            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.f, ptr %i.b, align 1, !tbaa !10
  %i.g = load ptr, ptr %0, align 8, !tbaa !16
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.e:                                             ; preds = %bb.c
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.f) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i32 %.011, label %bb.i [
    i32 15, label %bb.f
    i32 10, label %bb.f
  ]

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !10
  %i.o = load ptr, ptr %0, align 8, !tbaa !16
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
  %.not.i8 = icmp eq i64 %i.t, 0
  br i1 %.not.i8, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10

bb.h:                                             ; preds = %bb.f
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10
  %i.w = add nsw i32 %.011, -1
  %.not12 = icmp eq i32 %.011, 0
  br i1 %.not12, label %bb.b, label %bb.c, !llvm.loop !28
}

; Function Attrs: mustprogress uwtable
define void @_Z9printBitsRSof(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = bitcast float %1 to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.i
  ret void

bb.c:                                             ; preds = %bb.a, %bb.i
  %.011 = phi i32 [ 31, %bb.a ], [ %i.x, %bb.i ]  ; 4 uses
  %i.d = shl nuw i32 1, %.011
  %i.e = and i32 %i.d, %i.c
  %.not = icmp eq i32 %i.e, 0
  %i.f = select i1 %.not, i8 48, i8 49            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.f, ptr %i.b, align 1, !tbaa !10
  %i.g = load ptr, ptr %0, align 8, !tbaa !16
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.e:                                             ; preds = %bb.c
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.f) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = and i32 %.011, 2147483639
  %or.cond = icmp eq i32 %i.o, 23
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !10
  %i.p = load ptr, ptr %0, align 8, !tbaa !16
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18
  %.not.i8 = icmp eq i64 %i.u, 0
  br i1 %.not.i8, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10

bb.h:                                             ; preds = %bb.f
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.x = add nsw i32 %.011, -1
  %.not12 = icmp eq i32 %.011, 0
  br i1 %.not12, label %bb.b, label %bb.c, !llvm.loop !30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z9printBitsPcN9Imath_3_14halfE(ptr noundef writeonly captures(none) initializes((0, 19)) %0, i16 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i16 %1 to i32                       ; 5 uses
  %.not = icmp sgt i16 %1, -1
  %i.b = select i1 %.not, i8 48, i8 49
  store i8 %i.b, ptr %0, align 1, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 32, ptr %i.c, align 1, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %2 = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %3 = shufflevector <4 x i32> %2, <4 x i32> poison, <4 x i32> zeroinitializer
  %4 = and <4 x i32> %3, <i32 16384, i32 8192, i32 4096, i32 2048>
  %5 = icmp eq <4 x i32> %4, zeroinitializer
  %6 = select <4 x i1> %5, <4 x i8> splat (i8 48), <4 x i8> splat (i8 49)
  store <4 x i8> %6, ptr %i.d, align 1, !tbaa !10
  %7 = and i32 %i.a, 1024
  %.not.5 = icmp eq i32 %7, 0
  %8 = select i1 %.not.5, i8 48, i8 49
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %8, ptr %9, align 1, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 32, ptr %i.e, align 1, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %11 = shufflevector <8 x i32> %10, <8 x i32> poison, <8 x i32> zeroinitializer
  %12 = and <8 x i32> %11, <i32 512, i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4>
  %13 = icmp eq <8 x i32> %12, zeroinitializer
  %14 = select <8 x i1> %13, <8 x i8> splat (i8 48), <8 x i8> splat (i8 49)
  store <8 x i8> %14, ptr %i.f, align 1, !tbaa !10
  %15 = and i32 %i.a, 2
  %.not.14 = icmp eq i32 %15, 0
  %16 = select i1 %.not.14, i8 48, i8 49
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %16, ptr %17, align 1, !tbaa !10
  %18 = and i32 %i.a, 1
  %.not.15 = icmp eq i32 %18, 0
  %19 = select i1 %.not.15, i8 48, i8 49
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %19, ptr %20, align 1, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.g, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @_Z9printBitsPcf(ptr noundef writeonly captures(none) %0, float noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = bitcast float %1 to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 0, ptr %i.b, align 1, !tbaa !10
  ret void

bb.c:                                             ; preds = %bb.a, %bb.e
  %.014 = phi i32 [ 0, %bb.a ], [ %i.m, %bb.e ]   ; 3 uses
  %.01213 = phi i32 [ 31, %bb.a ], [ %i.l, %bb.e ] ; 4 uses
  %i.c = shl nuw i32 1, %.01213
  %i.d = and i32 %i.c, %i.a
  %.not = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not, i8 48, i8 49
  %i.f = sext i32 %.014 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  store i8 %i.e, ptr %i.g, align 1, !tbaa !10
  %i.h = and i32 %.01213, 2147483639
  %or.cond = icmp eq i32 %i.h, 23
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %.014, 1                     ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j
  store i8 32, ptr %i.k, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.i, %bb.d ], [ %.014, %bb.c ]
  %i.l = add nsw i32 %.01213, -1
  %i.m = add nsw i32 %.1, 1
  %.not15 = icmp eq i32 %.01213, 0
  br i1 %.not15, label %bb.b, label %bb.c, !llvm.loop !31
}

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTS14imath_half_uif", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !5, i64 0}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !6, i64 0}
!18 = !{!19, !20, i64 16}
!19 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !23, i64 40, !24, i64 48, !5, i64 64, !4, i64 192, !25, i64 200, !26, i64 208}
!20 = !{!"long", !5, i64 0}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !20, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!26 = !{!"_ZTSSt6locale", !27, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
end_hunk_0
