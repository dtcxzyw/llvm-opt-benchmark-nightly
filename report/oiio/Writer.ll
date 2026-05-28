inline.NumInlined: 234
inline.NumDeleted: 128
begin_hunk_0_@_ZN3dpx6Writer12SetImageInfoEjj:bb.a
  store i32 %2, ptr %i.c, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 9) i32 @_ZNK3dpx6Writer16NextAvailElementEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(2080) %0) local_unnamed_addr #9 align 2 {
_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.b = load i8, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.a, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.1

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.1: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.e = load i8, ptr %i.d, align 8, !tbaa !44
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %bb.a, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.2

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.2: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.h = load i8, ptr %i.g, align 8, !tbaa !44
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %bb.a, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.3

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.3: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.k = load i8, ptr %i.j, align 8, !tbaa !44
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %bb.a, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.4

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.4: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.n = load i8, ptr %i.m, align 8, !tbaa !44
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %bb.a, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.5

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.5: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.q = load i8, ptr %i.p, align 8, !tbaa !44
  %i.r = icmp eq i8 %i.q, -1
  br i1 %i.r, label %bb.a, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.6

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.6: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.5
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.t = load i8, ptr %i.s, align 8, !tbaa !44
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %bb.a, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.7

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.7: ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.6
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.w = load i8, ptr %i.v, align 8, !tbaa !44
  %i.x = icmp eq i8 %i.w, -1
  %spec.select = select i1 %i.x, i32 7, i32 8
  br label %bb.a

bb.a:                                             ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.7, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.6, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.5, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.4, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.3, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.2, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.1, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit
  %.0.lcssa = phi i32 [ 0, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit ], [ 4, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.4 ], [ 1, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.1 ], [ %spec.select, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.7 ], [ 2, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.2 ], [ 5, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.5 ], [ 3, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.3 ], [ 6, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit.6 ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN3dpx6Writer12SetOutStreamEP9OutStream(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(2080) initializes((2072, 2080)) %0, ptr noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072
  store ptr %1, ptr %i.a, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3dpx6Writer11WriteHeaderEv(ptr noundef nonnull align 8 dereferenceable(2080) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN3dpx6Header16CalculateOffsetsEv(ptr noundef nonnull align 4 dereferenceable(2049) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef 0, i32 noundef 0)
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2064
  store i64 2048, ptr %i.h, align 8, !tbaa !25
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.j = tail call noundef zeroext i1 @_ZN3dpx6Header5WriteEP9OutStream(ptr noundef nonnull align 4 dereferenceable(2049) %i.a, ptr noundef %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN3dpx6Header16CalculateOffsetsEv(ptr noundef nonnull align 4 dereferenceable(2049)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN3dpx6Header5WriteEP9OutStream(ptr noundef nonnull align 4 dereferenceable(2049), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN3dpx6Writer11SetUserDataEl(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(2080) initializes((40, 44)) %0, i64 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.a, ptr %i.b, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3dpx6Writer13WriteUserDataEPv(ptr noundef nonnull align 8 captures(none) dereferenceable(2080) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef %1, i64 noundef %i.c), !inline_history !48
  %i.j = icmp eq i64 %i.i, %i.c                   ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25
  %i.m = add i64 %i.l, %i.c
  store i64 %i.m, ptr %i.k, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3dpx6Writer10SetElementEiNS_10DescriptorEhNS_14CharacteristicES2_NS_7PackingENS_8EncodingEjjfjfjj(ptr noundef nonnull align 8 dereferenceable(2080) %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, float noundef %10, i32 noundef %11, float noundef %12, i32 noundef %13, i32 noundef %14) local_unnamed_addr #1 align 2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 7
  br i1 %or.cond, label %bb.b, label %_ZN3dpx13GenericHeader20SetEndOfImagePaddingEij.exit

_ZN3dpx13GenericHeader20SetEndOfImagePaddingEij.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.c = zext nneg i32 %1 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %i.c
  store i32 %8, ptr %i.d, align 4, !tbaa !49
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.c ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 784
  store i32 %9, ptr %i.f, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 788
  store float %10, ptr %i.g, align 4, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 792
  store i32 %11, ptr %i.h, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 796
  store float %12, ptr %i.i, align 4, !tbaa !53
  %i.j = trunc i32 %2 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 800
  store i8 %i.j, ptr %i.k, align 8, !tbaa !44
  %i.l = trunc i32 %4 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 801
  store i8 %i.l, ptr %i.m, align 1, !tbaa !54
  %i.n = trunc i32 %5 to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 802
  store i8 %i.n, ptr %i.o, align 2, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 803
  store i8 %3, ptr %i.p, align 1, !tbaa !56
  %i.q = trunc i32 %6 to i16
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 804
  store i16 %i.q, ptr %i.r, align 4, !tbaa !57
  %i.s = icmp ne i32 %7, 0
  %i.t = zext i1 %i.s to i16
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 806
  store i16 %i.t, ptr %i.u, align 2, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 812
  store i32 %13, ptr %i.v, align 4, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 816
  store i32 %14, ptr %i.w, align 8, !tbaa !60
  tail call void @_ZN3dpx13GenericHeader25CalculateNumberOfElementsEv(ptr noundef nonnull align 4 dereferenceable(1664) %i.a)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN3dpx13GenericHeader20SetEndOfImagePaddingEij.exit
  ret void
}

declare void @_ZN3dpx13GenericHeader25CalculateNumberOfElementsEv(ptr noundef nonnull align 4 dereferenceable(1664)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3dpx6Writer12WritePadDataEi(ptr noundef nonnull align 8 captures(none) dereferenceable(2080) %0, i32 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = add nsw i64 %i.c, -1
  %i.e = add i64 %i.d, %.fr                       ; 2 uses
  %i.f = srem i64 %i.e, %i.c
  %i.g = sub nsw i64 %i.e, %i.f                   ; 2 uses
  %sext = shl i64 %i.g, 32
  %i.h = ashr exact i64 %sext, 32
  %i.i = sub i64 %i.g, %.fr                       ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %2, label %bb.b

2:                                                ; preds = %bb.a
  %3 = and i64 %i.i, 2147483647                   ; 5 uses
  %.not.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %2
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #18 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %4, i8 -1, i64 %3, i1 false)
  %6 = ptrtoint ptr %5 to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit:            ; preds = %.noexc, %2
  %.sroa.12.0 = phi i64 [ %6, %.noexc ], [ 0, %2 ] ; 2 uses
  %.sroa.020.0 = phi ptr [ %4, %.noexc ], [ null, %2 ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %.sroa.020.0, i64 noundef %3)
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit19

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.r = load i64, ptr %i.a, align 8, !tbaa !25
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  store i64 %i.s, ptr %i.a, align 8, !tbaa !25
  %.not = icmp eq i64 %i.s, %i.h
  %7 = ptrtoint ptr %.sroa.020.0 to i64
  %8 = sub i64 %.sroa.12.0, %7
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.0, i64 noundef %8) #16
  br i1 %.not, label %bb.b, label %bb.c

_ZNSt6vectorIhSaIhEED2Ev.exit19:                  ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %9 = ptrtoint ptr %.sroa.020.0 to i64
  %10 = sub i64 %.sroa.12.0, %9
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.0, i64 noundef %10) #16
  resume { ptr, i32 } %i.t

bb.b:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.b
  %.1 = phi i1 [ true, %bb.b ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit ]
  ret i1 %.1
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3dpx6Writer12WriteElementEiPvl(ptr noundef nonnull align 8 captures(none) dereferenceable(2080) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %or.cond = icmp ugt i32 %1, 7
  br i1 %or.cond, label %_ZN3dpx6Writer12WritePadDataEi.exit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit:  ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 800
  %i.e = load i8, ptr %i.d, align 8, !tbaa !44
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %_ZN3dpx6Writer12WritePadDataEi.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25
  %.fr.i = freeze i64 %i.h                        ; 3 uses
  %i.i = add i64 %.fr.i, 8191                     ; 2 uses
  %i.j = srem i64 %i.i, 8192
  %i.k = sub nsw i64 %i.i, %i.j                   ; 2 uses
  %sext.i = shl i64 %i.k, 32
  %i.l = ashr exact i64 %sext.i, 32
  %i.m = sub i64 %i.k, %.fr.i                     ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.noexc.i, label %_ZN3dpx13GenericHeader13SetDataOffsetEij.exit

.noexc.i:                                         ; preds = %bb.b
  %i.p = and i64 %i.m, 2147483647                 ; 6 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 -1, i64 %i.p, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull %i.q, i64 noundef %i.p)
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit.i unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit19.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %.noexc.i
  %i.x = load i64, ptr %i.g, align 8, !tbaa !25
  %i.y = add i64 %i.x, %i.w                       ; 2 uses
  store i64 %i.y, ptr %i.g, align 8, !tbaa !25
  %.not.i = icmp eq i64 %i.y, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #16
  br i1 %.not.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i._ZN3dpx13GenericHeader13SetDataOffsetEij.exit_crit_edge, label %_ZN3dpx6Writer12WritePadDataEi.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.i._ZN3dpx13GenericHeader13SetDataOffsetEij.exit_crit_edge: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %.pre = load i64, ptr %i.g, align 8, !tbaa !25
  br label %_ZN3dpx13GenericHeader13SetDataOffsetEij.exit

_ZNSt6vectorIhSaIhEED2Ev.exit19.i:                ; preds = %.noexc.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #16
  resume { ptr, i32 } %i.z

_ZN3dpx13GenericHeader13SetDataOffsetEij.exit:    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i._ZN3dpx13GenericHeader13SetDataOffsetEij.exit_crit_edge, %bb.b
  %i.aa = phi i64 [ %.pre, %_ZNSt6vectorIhSaIhEED2Ev.exit.i._ZN3dpx13GenericHeader13SetDataOffsetEij.exit_crit_edge ], [ %.fr.i, %bb.b ] ; 2 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 808
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !61
  %i.ad = add nsw i64 %i.aa, %3
  store i64 %i.ad, ptr %i.g, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef %2, i64 noundef %3), !inline_history !48
  %i.ak = icmp eq i64 %i.aj, %3
  br label %_ZN3dpx6Writer12WritePadDataEi.exit

_ZN3dpx6Writer12WritePadDataEi.exit:              ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit, %bb.a, %_ZN3dpx13GenericHeader13SetDataOffsetEij.exit
  %.0 = phi i1 [ false, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit ], [ false, %bb.a ], [ %i.ak, %_ZN3dpx13GenericHeader13SetDataOffsetEij.exit ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3dpx6Writer12WriteElementEiPv(ptr noundef nonnull align 8 dereferenceable(2080) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 7
  br i1 %or.cond, label %bb.c, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit:  ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 800
  %i.e = load i8, ptr %i.d, align 8, !tbaa !44
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit
  %i.g = tail call noundef i32 @_ZNK3dpx13GenericHeader17ComponentDataSizeEi(ptr noundef nonnull align 4 dereferenceable(1664) %i.a, i32 noundef %1)
  %i.h = tail call noundef zeroext i1 @_ZN3dpx6Writer12WriteElementEiPvNS_8DataSizeE(ptr noundef nonnull align 8 dereferenceable(2080) %0, i32 noundef %1, ptr noundef %2, i32 noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit, %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ], [ false, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3dpx6Writer12WriteElementEiPvNS_8DataSizeE(ptr noundef nonnull align 8 dereferenceable(2080) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i8 1, ptr %i.a, align 1, !tbaa !62
  %or.cond = icmp ugt i32 %1, 7
  br i1 %or.cond, label %_ZN3dpx6Writer12WritePadDataEi.exit, label %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit

_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit:  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %i.c ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 800 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !44
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %_ZN3dpx6Writer12WritePadDataEi.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 8 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25
  %.fr.i = freeze i64 %i.i                        ; 2 uses
  %i.j = add i64 %.fr.i, 8191                     ; 2 uses
  %i.k = srem i64 %i.j, 8192
  %i.l = sub nsw i64 %i.j, %i.k                   ; 2 uses
  %sext.i = shl i64 %i.l, 32
  %i.m = ashr exact i64 %sext.i, 32
  %i.n = sub i64 %i.l, %.fr.i                     ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  %i.q = and i64 %i.n, 2147483647                 ; 6 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 -1, i64 %i.q, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull %i.r, i64 noundef %i.q)
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit.i unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit19.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %.noexc.i
  %i.y = load i64, ptr %i.h, align 8, !tbaa !25
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  store i64 %i.z, ptr %i.h, align 8, !tbaa !25
  %.not.i = icmp eq i64 %i.z, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.q) #16
  br i1 %.not.i, label %bb.c, label %_ZN3dpx6Writer12WritePadDataEi.exit

_ZNSt6vectorIhSaIhEED2Ev.exit19.i:                ; preds = %.noexc.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.q) #16
  resume { ptr, i32 } %i.aa

bb.c:                                             ; preds = %bb.b, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.ab = icmp eq i32 %1, 0
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !25
  %i.ad = trunc i64 %i.ac to i32                  ; 3 uses
  br i1 %i.ab, label %.split203, label %_ZNK3dpx13GenericHeader8BitDepthEi.exit

_ZNK3dpx13GenericHeader8BitDepthEi.exit:          ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 808
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 806
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 812
  %i.ah = load <2 x i32>, ptr %i.ag, align 4, !tbaa !3 ; 2 uses
  %i.ai = icmp eq <2 x i32> %i.ah, splat (i32 -1)
  %i.aj = select <2 x i1> %i.ai, <2 x i32> zeroinitializer, <2 x i32> %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 803
  br label %_ZNK3dpx13GenericHeader12ImagePackingEi.exit

.split203:                                        ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ad, ptr %i.al, align 4, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 816
end_hunk_0
