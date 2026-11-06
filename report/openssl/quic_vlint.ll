Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_vlint?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ossl_quic_vlint_encode_n(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %2, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = trunc i64 %1 to i8
  store i8 %i.a, ptr %0, align 1, !tbaa !9
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = lshr i64 %1, 8
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 63
  %i.e = or disjoint i8 %i.d, 64
  store i8 %i.e, ptr %0, align 1, !tbaa !9
  %i.f = trunc i64 %1 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !9
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = lshr i64 %1, 24
  %i.i = trunc i64 %i.h to i8
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128
  store i8 %i.k, ptr %0, align 1, !tbaa !9
  %i.l = lshr i64 %1, 16
  %i.m = trunc i64 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.m, ptr %i.n, align 1, !tbaa !9
  %i.o = lshr i64 %1, 8
  %i.p = trunc i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.p, ptr %i.q, align 1, !tbaa !9
  %i.r = trunc i64 %1 to i8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.r, ptr %i.s, align 1, !tbaa !9
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %3 = bitcast i64 %1 to <8 x i8>
  %4 = or <8 x i8> %3, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -64>
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %5, ptr %0, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ossl_quic_vlint_encode(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 64
  br i1 %i.a, label %ossl_quic_vlint_encode_len.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 16384
  br i1 %i.b, label %ossl_quic_vlint_encode_len.exit.thread3, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %1, 1073741824
  br i1 %i.c, label %ossl_quic_vlint_encode_len.exit.thread5, label %ossl_quic_vlint_encode_len.exit

ossl_quic_vlint_encode_len.exit.thread:           ; preds = %bb.a
  %i.d = trunc nuw nsw i64 %1 to i8
  store i8 %i.d, ptr %0, align 1, !tbaa !9
  br label %ossl_quic_vlint_encode_n.exit

ossl_quic_vlint_encode_len.exit.thread3:          ; preds = %bb.b
  %i.e = lshr i64 %1, 8
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = or disjoint i8 %i.f, 64
  store i8 %i.g, ptr %0, align 1, !tbaa !9
  %i.h = trunc i64 %1 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1, !tbaa !9
  br label %ossl_quic_vlint_encode_n.exit

ossl_quic_vlint_encode_len.exit.thread5:          ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = lshr i64 %1, 24
  %i.m = trunc nuw nsw i64 %i.l to i8
  %i.n = or disjoint i8 %i.m, -128
  store i8 %i.n, ptr %0, align 1, !tbaa !9
  %i.o = lshr i64 %1, 16
  %i.p = trunc i64 %i.o to i8
  store i8 %i.p, ptr %i.k, align 1, !tbaa !9
  %i.q = lshr i64 %1, 8
  %i.r = trunc i64 %i.q to i8
  store i8 %i.r, ptr %i.j, align 1, !tbaa !9
  %i.s = trunc i64 %1 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.s, ptr %i.t, align 1, !tbaa !9
  br label %ossl_quic_vlint_encode_n.exit

ossl_quic_vlint_encode_len.exit:                  ; preds = %bb.c
  %2 = bitcast i64 %1 to <8 x i8>
  %3 = or <8 x i8> %2, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -64>
  %4 = shufflevector <8 x i8> %3, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %4, ptr %0, align 1, !tbaa !9
  br label %ossl_quic_vlint_encode_n.exit

ossl_quic_vlint_encode_n.exit:                    ; preds = %ossl_quic_vlint_encode_len.exit.thread, %ossl_quic_vlint_encode_len.exit.thread3, %ossl_quic_vlint_encode_len.exit.thread5, %ossl_quic_vlint_encode_len.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4611686018427387904) i64 @ossl_quic_vlint_decode_unchecked(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !9       ; 2 uses
  %i.b = lshr i8 %i.a, 6
  %i.c = zext nneg i8 %i.b to i32
  %i.d = shl nuw nsw i32 1, %i.c
  %i.e = and i8 %i.a, 63
  %i.f = zext nneg i8 %i.e to i64                 ; 4 uses
  switch i32 %i.d, label %bb.d [
    i32 1, label %bb.e
    i32 2, label %bb.b
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw nsw i64 %i.f, 8
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = shl nuw nsw i64 %i.f, 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 16
  %i.m = or disjoint i64 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 8
  %i.r = or disjoint i64 %i.m, %i.q
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.s = shl nuw nsw i64 %i.f, 56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 48
  %i.x = or disjoint i64 %i.w, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 40
  %i.ac = or disjoint i64 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 32
  %i.ah = or disjoint i64 %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !9
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 24
  %i.am = or disjoint i64 %i.ah, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 16
  %i.ar = or disjoint i64 %i.am, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 8
  %i.aw = or disjoint i64 %i.ar, %i.av
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d
  %.sink24 = phi i64 [ 7, %bb.d ], [ 3, %bb.c ], [ 1, %bb.b ]
  %.sink = phi i64 [ %i.aw, %bb.d ], [ %i.r, %bb.c ], [ %i.g, %bb.b ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %.sink24
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !9
  %i.az = zext i8 %i.ay to i64
  %i.ba = or i64 %.sink, %i.az
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i64 [ %i.f, %bb.a ], [ %i.ba, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 9) i32 @ossl_quic_vlint_decode(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !9       ; 2 uses
  %i.c = lshr i8 %i.b, 6
  %i.d = zext nneg i8 %i.c to i32
  %i.e = shl nuw nsw i32 1, %i.d                  ; 3 uses
  %i.f = zext nneg i32 %i.e to i64
  %i.g = icmp ult i64 %1, %i.f
  br i1 %i.g, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i8 %i.b, 63
  %i.i = zext nneg i8 %i.h to i64                 ; 4 uses
  switch i32 %i.e, label %bb.f [
    i32 1, label %ossl_quic_vlint_decode_unchecked.exit
    i32 2, label %bb.d
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw nsw i64 %i.i, 8
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i64 %i.i, 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 16
  %i.p = or disjoint i64 %i.o, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 8
  %i.u = or disjoint i64 %i.p, %i.t
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.c
  %i.v = shl nuw nsw i64 %i.i, 56
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 48
  %i.aa = or disjoint i64 %i.z, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 40
  %i.af = or disjoint i64 %i.aa, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 32
  %i.ak = or disjoint i64 %i.af, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 24
  %i.ap = or disjoint i64 %i.ak, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = zext i8 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 16
  %i.au = or disjoint i64 %i.ap, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 8
  %i.az = or disjoint i64 %i.au, %i.ay
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.sink24.i = phi i64 [ 7, %bb.f ], [ 3, %bb.e ], [ 1, %bb.d ]
  %.sink.i = phi i64 [ %i.az, %bb.f ], [ %i.u, %bb.e ], [ %i.j, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.sink24.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9
  %i.bc = zext i8 %i.bb to i64
  %i.bd = or i64 %.sink.i, %i.bc
  br label %ossl_quic_vlint_decode_unchecked.exit

ossl_quic_vlint_decode_unchecked.exit:            ; preds = %bb.c, %.sink.split.i
  %.0.i = phi i64 [ %i.i, %bb.c ], [ %i.bd, %.sink.split.i ]
  store i64 %.0.i, ptr %2, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %ossl_quic_vlint_decode_unchecked.exit
  %.0 = phi i32 [ %i.e, %ossl_quic_vlint_decode_unchecked.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!10, !10, i64 0}
end_hunk_0
