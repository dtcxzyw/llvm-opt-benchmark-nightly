inline.NumInlined: 6
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6snappy6Varint8Append32EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = icmp ult i32 %1, 128
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i32 %1 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.c, ptr %i.a, align 1, !tbaa !7
  br label %_ZN6snappy6Varint8Encode32EPcj.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %1, 16384
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = trunc i32 %1 to i8
  %i.g = or i8 %i.f, -128
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.g, ptr %i.a, align 1, !tbaa !7
  %i.i = lshr i32 %1, 7
  %i.j = trunc nuw nsw i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.h, align 1, !tbaa !7
  br label %_ZN6snappy6Varint8Encode32EPcj.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ult i32 %1, 2097152
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = trunc i32 %1 to i8
  %i.n = or i8 %i.m, -128
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.a, align 1, !tbaa !7
  %i.p = lshr i32 %1, 7
  %i.q = trunc i32 %i.p to i8
  %i.r = or i8 %i.q, -128
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.r, ptr %i.o, align 1, !tbaa !7
  %i.t = lshr i32 %1, 14
  %i.u = trunc nuw nsw i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.u, ptr %i.s, align 1, !tbaa !7
  br label %_ZN6snappy6Varint8Encode32EPcj.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp ult i32 %1, 268435456
  %i.x = trunc i32 %1 to i8
  %i.y = or i8 %i.x, -128
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.y, ptr %i.a, align 1, !tbaa !7
  %i.aa = lshr i32 %1, 7
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = or i8 %i.ab, -128
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !7
  %i.ae = lshr i32 %1, 14
  %i.af = trunc i32 %i.ae to i8
  %i.ag = or i8 %i.af, -128
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store i8 %i.ag, ptr %i.ad, align 1, !tbaa !7
  %i.ai = lshr i32 %1, 21
  %i.aj = trunc i32 %i.ai to i8                   ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !7
  br label %_ZN6snappy6Varint8Encode32EPcj.exit

bb.i:                                             ; preds = %bb.g
  %i.al = or i8 %i.aj, -128
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.al, ptr %i.ah, align 1, !tbaa !7
  %i.an = lshr i32 %1, 28
  %i.ao = trunc nuw nsw i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !7
  br label %_ZN6snappy6Varint8Encode32EPcj.exit

_ZN6snappy6Varint8Encode32EPcj.exit:              ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.k, %bb.d ], [ %i.v, %bb.f ], [ %i.ak, %bb.h ], [ %i.ap, %bb.i ]
  %i.aq = ptrtoint ptr %.0.i to i64
  %i.ar = ptrtoint ptr %i.a to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !8
  %i.av = sub i64 4611686018427387903, %i.au
  %i.aw = icmp ult i64 %i.av, %i.as
  br i1 %i.aw, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.j:                                             ; preds = %_ZN6snappy6Varint8Encode32EPcj.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #5
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZN6snappy6Varint8Encode32EPcj.exit
  %i.ax = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a, i64 noundef %i.as) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !13, i64 8}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !13, i64 8, !5, i64 16}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"long", !5, i64 0}
end_hunk_0
