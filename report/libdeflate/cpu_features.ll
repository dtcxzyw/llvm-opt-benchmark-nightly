Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/cpu_features?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@libdeflate_x86_cpu_features = hidden global i32 0, align 4

; Function Attrs: nounwind uwtable
define hidden void @libdeflate_init_x86_cpu_features() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #2, !srcloc !8 ; 4 uses
  %i.e = extractvalue { i32, i32, i32, i32 } %i.d, 0 ; 2 uses
  %i.f = extractvalue { i32, i32, i32, i32 } %i.d, 1
  %i.g = extractvalue { i32, i32, i32, i32 } %i.d, 2
  %i.h = extractvalue { i32, i32, i32, i32 } %i.d, 3
  store i32 %i.f, ptr %i.a, align 4, !tbaa !9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  store i32 %i.h, ptr %i.c, align 4, !tbaa !9
  %i.i = icmp eq i32 %i.e, 0
  br i1 %i.i, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #2, !srcloc !8 ; 3 uses
  %i.k = extractvalue { i32, i32, i32, i32 } %i.j, 0 ; 3 uses
  %i.l = extractvalue { i32, i32, i32, i32 } %i.j, 2 ; 3 uses
  %i.m = extractvalue { i32, i32, i32, i32 } %i.j, 3
  %i.n = lshr i32 %i.k, 8
  %i.o = and i32 %i.n, 15                         ; 2 uses
  %i.p = lshr i32 %i.k, 4
  %i.q = and i32 %i.p, 15                         ; 2 uses
  switch i32 %i.o, label %bb.d [
    i32 15, label %bb.c
    i32 6, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.r = lshr i32 %i.k, 12
  %i.s = and i32 %i.r, 240
  %i.t = or disjoint i32 %i.q, %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.012 = phi i32 [ %i.t, %bb.c ], [ %i.q, %bb.b ]
  %i.u = lshr i32 %i.m, 26
  %.lobit = and i32 %i.u, 1                       ; 2 uses
  %i.v = and i32 %i.l, 524290
  %or.cond.not = icmp eq i32 %i.v, 524290
  %i.w = or disjoint i32 %.lobit, 2
  %.1 = select i1 %or.cond.not, i32 %i.w, i32 %.lobit ; 3 uses
  %i.x = and i32 %i.l, 134217728
  %.not17 = icmp eq i32 %i.x, 0
  br i1 %.not17, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = tail call { i32, i32 } asm sideeffect ".byte 0x0f, 0x01, 0xd0", "={dx},={ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !10
  %i.z = extractvalue { i32, i32 } %i.y, 1
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %0 = and i64 %i.aa, 6
  %1 = icmp eq i64 %0, 6                          ; 3 uses
  %2 = and i32 %i.l, 268435456
  %.not18 = icmp ne i32 %2, 0
  %or.cond27 = select i1 %.not18, i1 %1, i1 false
  %i.ab = or disjoint i32 %.1, 4
  %spec.select61.a = select i1 %or.cond27, i32 %i.ab, i32 %.1
  %i.ac = and i64 %i.aa, 230
  %i.ad = icmp eq i64 %i.ac, 230
  %3 = xor i1 %1, true
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d
  %4 = phi i1 [ %i.ad, %bb.e ], [ false, %bb.d ]
  %i.ae = phi i1 [ %3, %bb.e ], [ true, %bb.d ]
  %.059 = phi i1 [ %1, %bb.e ], [ false, %bb.d ]
  %.2 = phi i32 [ %spec.select61.a, %bb.e ], [ %.1, %bb.d ] ; 2 uses
  %i.af = icmp ult i32 %i.e, 7
  br i1 %i.af, label %bb.m, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.ag = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #2, !srcloc !8 ; 2 uses
  %i.ah = extractvalue { i32, i32, i32, i32 } %i.ag, 1 ; 3 uses
  %i.ai = extractvalue { i32, i32, i32, i32 } %i.ag, 2 ; 2 uses
  %i.aj = lshr i32 %i.ah, 4
  %i.ak = and i32 %i.aj, 16
  %spec.select62 = or i32 %i.ak, %.2              ; 2 uses
  br i1 %.059, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = lshr i32 %i.ah, 2
  %i.am = and i32 %i.al, 8
  %i.an = lshr i32 %i.ai, 2
  %i.ao = and i32 %i.an, 256
  %i.ap = or disjoint i32 %i.am, %i.ao
  %spec.select66.a = or i32 %i.ap, %spec.select62
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.5 = phi i32 [ %spec.select66.a, %bb.g ], [ %spec.select62, %bb.f ] ; 8 uses
  br i1 %4, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aq = load i64, ptr %i.a, align 4
  %i.ar = xor i64 %i.aq, 5288754736637306183
  %i.as = getelementptr i8, ptr %i.a, i64 8
  %i.at = load i32, ptr %i.as, align 4
  %i.au = zext i32 %i.at to i64
  %i.av = xor i64 %i.au, 1818588270
  %i.aw = or i64 %i.ar, %i.av
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %.not.i = icmp eq i32 %i.ay, 0
  %.not3.i68 = icmp eq i32 %i.o, 6
  %or.cond.i = and i1 %.not3.i68, %.not.i
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %trunc.i = trunc nuw i32 %.012 to i8
  switch i8 %trunc.i, label %bb.k [
    i8 85, label %allow_512bit_vectors.exit
    i8 106, label %allow_512bit_vectors.exit
    i8 108, label %allow_512bit_vectors.exit
    i8 126, label %allow_512bit_vectors.exit
    i8 -116, label %allow_512bit_vectors.exit
    i8 -115, label %allow_512bit_vectors.exit
  ]

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.az = or i32 %.5, 32
  br label %allow_512bit_vectors.exit

allow_512bit_vectors.exit:                        ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.k
  %.6 = phi i32 [ %i.az, %bb.k ], [ %.5, %bb.j ], [ %.5, %bb.j ], [ %.5, %bb.j ], [ %.5, %bb.j ], [ %.5, %bb.j ], [ %.5, %bb.j ]
  %i.ba = lshr i32 %i.ah, 24
  %i.bb = lshr i32 %i.ai, 2
  %i.bc = and i32 %i.bb, 512
  %spec.select64.a = and i32 %i.ba, 192
  %.8 = or disjoint i32 %spec.select64.a, %i.bc
  %spec.select67 = or i32 %.8, %.6
  br label %bb.l

bb.l:                                             ; preds = %allow_512bit_vectors.exit, %bb.h
  %.9 = phi i32 [ %spec.select67, %allow_512bit_vectors.exit ], [ %.5, %bb.h ] ; 2 uses
  %i.bd = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 1) #2, !srcloc !8
  %i.be = extractvalue { i32, i32, i32, i32 } %i.bd, 0
  %i.bf = and i32 %i.be, 16
  %.not25 = icmp eq i32 %i.bf, 0
  %brmerge27 = select i1 %.not25, i1 true, i1 %i.ae
  %i.bg = or i32 %.9, 1024
  %spec.select65 = select i1 %brmerge27, i32 %.9, i32 %i.bg
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread, %bb.a
  %.10 = phi i32 [ 0, %bb.a ], [ %.2, %.thread ], [ %spec.select65, %bb.l ]
  %i.bh = or i32 %.10, -2147483648
  store volatile i32 %i.bh, ptr @libdeflate_x86_cpu_features, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{i64 1639}
!9 = !{!5, !5, i64 0}
!10 = !{i64 2148}
end_hunk_0
