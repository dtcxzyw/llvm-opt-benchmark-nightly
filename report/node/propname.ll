Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/propname?download=true
inline.NumInlined: 20
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc:bb.a
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7812PropNameData12findPropertyEi.exit
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %i.w = tail call noundef i32 @_ZN6icu_7812PropNameData22getPropertyOrValueEnumEiPKc(i32 noundef %i.v, ptr noundef %1)
  br label %_ZN6icu_7812PropNameData12findPropertyEi.exit.thread

_ZN6icu_7812PropNameData12findPropertyEi.exit.thread: ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.a, %_ZN6icu_7812PropNameData12findPropertyEi.exit, %bb.l
  %.0 = phi i32 [ %i.w, %bb.l ], [ -1, %bb.c ], [ -1, %_ZN6icu_7812PropNameData12findPropertyEi.exit ], [ -1, %bb.a ], [ -1, %bb.k ], [ -1, %bb.i ], [ -1, %bb.g ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @u_getPropertyName_78(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 76
  br i1 %i.b, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 4096
  br i1 %i.c, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 4123
  br i1 %i.d, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i32 %0, 8192
  br i1 %i.e, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = icmp eq i32 %0, 8192
  br i1 %i.f, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ult i32 %0, 12288
  br i1 %i.g, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = icmp eq i32 %0, 12288
  br i1 %i.h, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = icmp samesign ult i32 %0, 16384
  br i1 %i.i, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = icmp samesign ult i32 %0, 16398
  br i1 %i.j, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = and i32 %0, 2147483646
  %or.cond.i.i = icmp eq i32 %i.k, 28672
  br i1 %or.cond.i.i, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit

_ZN6icu_7812PropNameData12findPropertyEi.exit.i:  ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.lcssa44.neg.i.i = phi i32 [ 0, %bb.b ], [ -4096, %bb.d ], [ -8192, %bb.f ], [ -12288, %bb.h ], [ -16384, %bb.j ], [ -28672, %bb.k ]
  %.lcssa42.i.i = phi i32 [ 3, %bb.b ], [ 157, %bb.d ], [ 213, %bb.f ], [ 217, %bb.h ], [ 221, %bb.j ], [ 251, %bb.k ]
  %i.l = add nsw i32 %.lcssa44.neg.i.i, %0
  %i.m = shl nsw i32 %i.l, 1
  %i.n = add nsw i32 %i.m, %.lcssa42.i.i
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr @_ZN6icu_7812PropNameData10nameGroupsE, i64 %i.r ; 2 uses
  %i.t = icmp slt i32 %1, 0
  br i1 %i.t, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7812PropNameData12findPropertyEi.exit.i
  %i.u = load i8, ptr %i.s, align 1
  %i.v = sext i8 %i.u to i32
  %.not.i.i = icmp slt i32 %1, %i.v
  br i1 %.not.i.i, label %.preheader.i.i, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit

.preheader.i.i:                                   ; preds = %bb.l
  %.0912.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not15.i.i = icmp eq i32 %1, 0
  br i1 %.not15.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.0914.i.i = phi ptr [ %.09.i.i, %.lr.ph.i.i ], [ %.0912.i.i, %.preheader.i.i ] ; 2 uses
  %.013.i.i = phi i32 [ %i.w, %.lr.ph.i.i ], [ %1, %.preheader.i.i ] ; 2 uses
  %strlen.i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0914.i.i)
  %strchr.i.i = getelementptr inbounds i8, ptr %.0914.i.i, i64 %strlen.i.i
  %i.w = add nsw i32 %.013.i.i, -1
  %.09.i.i = getelementptr inbounds nuw i8, ptr %strchr.i.i, i64 1 ; 2 uses
  %i.x = icmp samesign ugt i32 %.013.i.i, 1
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !11

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.09.lcssa.i.i = phi ptr [ %.0912.i.i, %.preheader.i.i ], [ %.09.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.y = load i8, ptr %.09.lcssa.i.i, align 1
  %i.z = icmp eq i8 %i.y, 0
  %..09.i.i = select i1 %i.z, ptr null, ptr %.09.lcssa.i.i
  br label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit

_ZN6icu_7812PropNameData15getPropertyNameEii.exit: ; preds = %bb.a, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, %bb.l, %._crit_edge.i.i
  %.0.i = phi ptr [ null, %bb.l ], [ null, %bb.c ], [ null, %_ZN6icu_7812PropNameData12findPropertyEi.exit.i ], [ %..09.i.i, %._crit_edge.i.i ], [ null, %bb.a ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.g ], [ null, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @u_getPropertyEnum_78(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6icu_7812PropNameData22getPropertyOrValueEnumEiPKc(i32 noundef 0, ptr noundef readonly %0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @u_getPropertyValueName_78(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_7812PropNameData20getPropertyValueNameEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @u_getPropertyValueEnum_78(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 76
  br i1 %i.b, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 4096
  br i1 %i.c, label %_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 4123
  br i1 %i.d, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i32 %0, 8192
  br i1 %i.e, label %_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = icmp eq i32 %0, 8192
  br i1 %i.f, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ult i32 %0, 12288
  br i1 %i.g, label %_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = icmp eq i32 %0, 12288
  br i1 %i.h, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = icmp samesign ult i32 %0, 16384
  br i1 %i.i, label %_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = icmp samesign ult i32 %0, 16398
  br i1 %i.j, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = and i32 %0, 2147483646
  %or.cond.i.i = icmp eq i32 %i.k, 28672
  br i1 %or.cond.i.i, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit

_ZN6icu_7812PropNameData12findPropertyEi.exit.i:  ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.lcssa44.neg.i.i = phi i32 [ 0, %bb.b ], [ -4096, %bb.d ], [ -8192, %bb.f ], [ -12288, %bb.h ], [ -16384, %bb.j ], [ -28672, %bb.k ]
  %.lcssa42.i.i = phi i32 [ 3, %bb.b ], [ 157, %bb.d ], [ 213, %bb.f ], [ 217, %bb.h ], [ 221, %bb.j ], [ 251, %bb.k ]
  %i.l = add nsw i32 %.lcssa44.neg.i.i, %0
  %i.m = shl nsw i32 %i.l, 1
  %i.n = add nsw i32 %i.m, %.lcssa42.i.i
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7812PropNameData12findPropertyEi.exit.i
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %i.w = tail call noundef i32 @_ZN6icu_7812PropNameData22getPropertyOrValueEnumEiPKc(i32 noundef %i.v, ptr noundef readonly %1)
  br label %_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit

_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit: ; preds = %bb.a, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, %bb.l
  %.0.i = phi i32 [ %i.w, %bb.l ], [ -1, %bb.c ], [ -1, %_ZN6icu_7812PropNameData12findPropertyEi.exit.i ], [ -1, %bb.a ], [ -1, %bb.k ], [ -1, %bb.i ], [ -1, %bb.g ], [ -1, %bb.e ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @uscript_getName_78(i32 noundef %0) local_unnamed_addr #2 {
.lr.ph.i.i:
  %or.cond = icmp ult i32 %0, 213
  br i1 %or.cond, label %.thread.i.i, label %_ZN6icu_7812PropNameData20getPropertyValueNameEiii.exit

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4032
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN6icu_7812PropNameData20getPropertyValueNameEiii.exit, label %bb.a

bb.a:                                             ; preds = %.thread.i.i
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds i8, ptr @_ZN6icu_7812PropNameData10nameGroupsE, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  %.not.i.i = icmp sgt i8 %i.h, 1
  br i1 %.not.i.i, label %.preheader.i9.i, label %_ZN6icu_7812PropNameData20getPropertyValueNameEiii.exit

.preheader.i9.i:                                  ; preds = %bb.a
  %.0912.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %strlen.i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0912.i.i)
  %strchr.i.i = getelementptr inbounds i8, ptr %.0912.i.i, i64 %strlen.i.i
  %.09.i.i = getelementptr inbounds nuw i8, ptr %strchr.i.i, i64 1 ; 2 uses
  %i.i = load i8, ptr %.09.i.i, align 1
  %i.j = icmp eq i8 %i.i, 0
  %..09.i.i = select i1 %i.j, ptr null, ptr %.09.i.i
  br label %_ZN6icu_7812PropNameData20getPropertyValueNameEiii.exit

_ZN6icu_7812PropNameData20getPropertyValueNameEiii.exit: ; preds = %.lr.ph.i.i, %.thread.i.i, %bb.a, %.preheader.i9.i
  %.1.i = phi ptr [ null, %bb.a ], [ %..09.i.i, %.preheader.i9.i ], [ null, %.thread.i.i ], [ null, %.lr.ph.i.i ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @uscript_getShortName_78(i32 noundef %0) local_unnamed_addr #2 {
.lr.ph.i.i:
  %or.cond = icmp ult i32 %0, 213
  br i1 %or.cond, label %.thread.i.i, label %_ZN6icu_7812PropNameData20getPropertyValueNameEiii.exit

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4032
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN6icu_7812PropNameData20getPropertyValueNameEiii.exit, label %bb.a

bb.a:                                             ; preds = %.thread.i.i
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds i8, ptr @_ZN6icu_7812PropNameData10nameGroupsE, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  %.not.i.i = icmp sgt i8 %i.h, 0
  br i1 %.not.i.i, label %.preheader.i9.i, label %_ZN6icu_7812PropNameData20getPropertyValueNameEiii.exit

.preheader.i9.i:                                  ; preds = %bb.a
  %.0912.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.i = load i8, ptr %.0912.i.i, align 1
  %i.j = icmp eq i8 %i.i, 0
  %..09.i.i = select i1 %i.j, ptr null, ptr %.0912.i.i
  br label %_ZN6icu_7812PropNameData20getPropertyValueNameEiii.exit

_ZN6icu_7812PropNameData20getPropertyValueNameEiii.exit: ; preds = %.lr.ph.i.i, %.thread.i.i, %bb.a, %.preheader.i9.i
  %.1.i = phi ptr [ null, %bb.a ], [ %..09.i.i, %.preheader.i9.i ], [ null, %.thread.i.i ], [ null, %.lr.ph.i.i ]
  ret ptr %.1.i
}

declare signext i8 @uprv_ebcdictolower_78(i8 noundef signext) local_unnamed_addr #4

declare noundef i32 @_ZN6icu_789BytesTrie9readValueEPKhi(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #6

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
end_hunk_0
