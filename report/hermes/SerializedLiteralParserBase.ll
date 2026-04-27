inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN6hermes3hbc27SerializedLiteralParserBase20parseTagAndSeqLengthEv(ptr noundef nonnull align 8 captures(none) dereferenceable(32) initializes((20, 21), (24, 28)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = load ptr, ptr %0, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %i.d, i64 %i.c     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14    ; 3 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %.not = icmp sgt i8 %i.f, -1
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc27SerializedLiteralParserBase20parseTagAndSeqLengthEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = and i32 %i.h, 3840
  %i.j = getelementptr i8, ptr %i.e, i64 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc27SerializedLiteralParserBase20parseTagAndSeqLengthEv:bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_2
