Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/cencode?download=true
inline.NumInlined: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @base64_init_encodestate(ptr nofree noundef writeonly captures(none) initializes((0, 5), (8, 12)) %0) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define signext i8 @base64_encode_value(i8 noundef signext %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i8 %0, 63
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i8 %0 to i64
  %i.c = getelementptr inbounds i8, ptr @.str, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.d, %bb.b ], [ 61, %bb.a ]
  ret i8 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @base64_encode_block(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4               ; 3 uses
  %i.e = load i32, ptr %3, align 4
  switch i32 %i.e, label %bb.k [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %base64_encode_value.exit60, %bb.j, %bb.a
  %.055 = phi ptr [ %0, %bb.a ], [ %i.ac, %bb.j ], [ %i.ac, %base64_encode_value.exit60 ] ; 3 uses
  %.052 = phi ptr [ %2, %bb.a ], [ %i.au, %bb.j ], [ %i.ap, %base64_encode_value.exit60 ] ; 3 uses
  %.0 = phi i8 [ %i.d, %bb.a ], [ %i.al, %bb.j ], [ %i.al, %base64_encode_value.exit60 ]
  %i.f = icmp eq ptr %.055, %i.b
  br i1 %i.f, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.055, i64 1
  %i.h = load i8, ptr %.055, align 1              ; 2 uses
  %i.i = lshr i8 %i.h, 2
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %.052, i64 1
  store i8 %i.l, ptr %.052, align 1
  %i.n = shl i8 %i.h, 4
  %i.o = and i8 %i.n, 48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.156 = phi ptr [ %i.g, %bb.c ], [ %0, %bb.a ]  ; 3 uses
  %.153 = phi ptr [ %i.m, %bb.c ], [ %2, %bb.a ]  ; 3 uses
  %.1 = phi i8 [ %i.o, %bb.c ], [ %i.d, %bb.a ]   ; 2 uses
  %i.p = icmp eq ptr %.156, %i.b
  br i1 %i.p, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.156, i64 1
  %i.r = load i8, ptr %.156, align 1              ; 2 uses
  %i.s = lshr i8 %i.r, 4
  %i.t = or i8 %i.s, %.1                          ; 2 uses
  %i.u = icmp sgt i8 %i.t, 63
  br i1 %i.u, label %base64_encode_value.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = sext i8 %i.t to i64
  %i.w = getelementptr inbounds i8, ptr @.str, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1
  br label %base64_encode_value.exit

base64_encode_value.exit:                         ; preds = %bb.e, %bb.f
  %.0.i = phi i8 [ %i.x, %bb.f ], [ 61, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %.153, i64 1
  store i8 %.0.i, ptr %.153, align 1
  %i.z = shl i8 %i.r, 2
  %i.aa = and i8 %i.z, 60
  br label %bb.g

bb.g:                                             ; preds = %base64_encode_value.exit, %bb.a
  %.257 = phi ptr [ %i.q, %base64_encode_value.exit ], [ %0, %bb.a ] ; 3 uses
  %.254 = phi ptr [ %i.y, %base64_encode_value.exit ], [ %2, %bb.a ] ; 5 uses
  %.2 = phi i8 [ %i.aa, %base64_encode_value.exit ], [ %i.d, %bb.a ] ; 2 uses
  %i.ab = icmp eq ptr %.257, %i.b
  br i1 %i.ab, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.257, i64 1 ; 2 uses
  %i.ad = load i8, ptr %.257, align 1             ; 2 uses
  %i.ae = lshr i8 %i.ad, 6
  %i.af = or i8 %i.ae, %.2                        ; 2 uses
  %i.ag = icmp sgt i8 %i.af, 63
  br i1 %i.ag, label %base64_encode_value.exit60, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = sext i8 %i.af to i64
  %i.ai = getelementptr inbounds i8, ptr @.str, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  br label %base64_encode_value.exit60

base64_encode_value.exit60:                       ; preds = %bb.h, %bb.i
  %.0.i59 = phi i8 [ %i.aj, %bb.i ], [ 61, %bb.h ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.254, i64 1
  store i8 %.0.i59, ptr %.254, align 1
  %i.al = and i8 %i.ad, 63                        ; 3 uses
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @.str, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.254, i64 2 ; 2 uses
  store i8 %i.ao, ptr %i.ak, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = add nsw i32 %i.ar, 1                    ; 2 uses
  store i32 %i.as, ptr %i.aq, align 4
  %i.at = icmp eq i32 %i.as, 18
  br i1 %i.at, label %bb.j, label %bb.b

bb.j:                                             ; preds = %base64_encode_value.exit60
  %i.au = getelementptr inbounds nuw i8, ptr %.254, i64 3
  store i8 10, ptr %i.ap, align 1
  store i32 0, ptr %i.aq, align 4
  br label %bb.b

.sink.split:                                      ; preds = %bb.g, %bb.d, %bb.b
  %.2.sink = phi i8 [ %.1, %bb.d ], [ %.0, %bb.b ], [ %.2, %bb.g ]
  %.sink = phi i32 [ 1, %bb.d ], [ 0, %bb.b ], [ 2, %bb.g ]
  %.254.sink = phi ptr [ %.153, %bb.d ], [ %.052, %bb.b ], [ %.254, %bb.g ]
  store i8 %.2.sink, ptr %i.c, align 4
  store i32 %.sink, ptr %3, align 4
  %i.av = ptrtoint ptr %.254.sink to i64
  %i.aw = ptrtoint ptr %2 to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = trunc i64 %i.ax to i32
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.a
  %.058 = phi i32 [ 0, %bb.a ], [ %i.ay, %.sink.split ]
  ret i32 %.058
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i32 @base64_encode_blockend(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  switch i32 %i.a, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i8, ptr %i.b, align 4               ; 2 uses
  %i.d = icmp sgt i8 %i.c, 63
  br i1 %i.d, label %base64_encode_value.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i8 %i.c to i64
  %i.f = getelementptr inbounds i8, ptr @.str, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  br label %base64_encode_value.exit

base64_encode_value.exit:                         ; preds = %bb.b, %bb.c
  %.0.i = phi i8 [ %i.g, %bb.c ], [ 61, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.0.i, ptr %0, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 61, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 61, ptr %i.i, align 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4               ; 2 uses
  %i.m = icmp sgt i8 %i.l, 63
  br i1 %i.m, label %base64_encode_value.exit13, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i8 %i.l to i64
  %i.o = getelementptr inbounds i8, ptr @.str, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  br label %base64_encode_value.exit13

base64_encode_value.exit13:                       ; preds = %bb.d, %bb.e
  %.0.i12 = phi i8 [ %i.p, %bb.e ], [ 61, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.0.i12, ptr %0, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 61, ptr %i.q, align 1
  br label %bb.f

bb.f:                                             ; preds = %base64_encode_value.exit13, %base64_encode_value.exit, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.j, %base64_encode_value.exit ], [ %i.r, %base64_encode_value.exit13 ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 10, ptr %.0, align 1
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  ret i32 %i.w
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
end_hunk_0
