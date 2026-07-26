begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN6apache6thrift8protocolL18kBase64DecodeTableE = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@.str = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6apache6thrift8protocol13base64_encodeEPKhjPh(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8
  %i.b = lshr i8 %i.a, 2
  %i.c = zext nneg i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @.str, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  store i8 %i.e, ptr %2, align 1, !tbaa !8
  %i.f = load i8, ptr %0, align 1, !tbaa !8
  %i.g = zext i8 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 4
  %i.i = and i64 %i.h, 48                         ; 3 uses
  switch i32 %1, label %bb.d [
    i32 3, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %i.l = lshr i8 %i.k, 4
  %i.m = zext nneg i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @.str, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.p, ptr %i.q, align 1, !tbaa !8
  %i.r = load i8, ptr %i.j, align 1, !tbaa !8
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = and i64 %i.t, 60
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = lshr i8 %i.w, 6
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @.str, i64 %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !8
  %i.ad = load i8, ptr %i.v, align 1, !tbaa !8
  %i.ae = and i8 %i.ad, 63
  %i.af = zext nneg i8 %i.ae to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = lshr i8 %i.ah, 4
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @.str, i64 %i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.am, ptr %i.an, align 1, !tbaa !8
  %i.ao = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = and i64 %i.aq, 60
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i64 [ %i.ar, %bb.c ], [ %i.af, %bb.b ], [ %i.i, %bb.a ]
  %.sink19 = phi i64 [ 2, %bb.c ], [ 3, %bb.b ], [ 1, %bb.a ]
  %i.as = getelementptr inbounds nuw i8, ptr @.str, i64 %.sink
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %.sink19
  store i8 %i.at, ptr %i.au, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6apache6thrift8protocol13base64_decodeEPhj(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN6apache6thrift8protocolL18kBase64DecodeTableE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !8
  %i.e = shl i8 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN6apache6thrift8protocolL18kBase64DecodeTableE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8     ; 2 uses
  %i.k = lshr i8 %i.j, 4
  %i.l = or i8 %i.k, %i.e
  store i8 %i.l, ptr %0, align 1, !tbaa !8
  %i.m = icmp ugt i32 %1, 2
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = shl i8 %i.j, 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN6apache6thrift8protocolL18kBase64DecodeTableE, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8     ; 2 uses
  %i.t = lshr i8 %i.s, 2
  %i.u = or i8 %i.t, %i.n
  store i8 %i.u, ptr %i.f, align 1, !tbaa !8
  %.not = icmp eq i32 %1, 3
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = shl i8 %i.s, 6
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN6apache6thrift8protocolL18kBase64DecodeTableE, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = or i8 %i.aa, %i.v
  store i8 %i.ab, ptr %i.o, align 1, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
end_hunk_0
