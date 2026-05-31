inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@SharpYuvGetCPUInfo = hidden local_unnamed_addr global ptr @x86CPUInfo, align 8

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @x86CPUInfo(i32 noundef %0) #0 {
bb.a:
  %i.a = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #1, !srcloc !7 ; 4 uses
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 0 ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %CheckSlowModel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #1, !srcloc !7 ; 3 uses
  %i.e = extractvalue { i32, i32, i32, i32 } %i.d, 0 ; 3 uses
  %i.f = extractvalue { i32, i32, i32, i32 } %i.d, 2 ; 4 uses
  switch i32 %0, label %CheckSlowModel.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { i32, i32, i32, i32 } %i.d, 3
  %i.h = lshr i32 %i.g, 26
  %.lobit17 = and i32 %i.h, 1
  br label %CheckSlowModel.exit

bb.d:                                             ; preds = %bb.b
  %i.i = and i32 %i.f, 1
  br label %CheckSlowModel.exit

bb.e:                                             ; preds = %bb.b
  %i.j = extractvalue { i32, i32, i32, i32 } %i.a, 1
  %i.k = icmp eq i32 %i.j, 1970169159
  %i.l = extractvalue { i32, i32, i32, i32 } %i.a, 2
  %i.m = icmp eq i32 %i.l, 1818588270
  %or.cond.not37.not43 = select i1 %i.k, i1 %i.m, i1 false
  %i.n = extractvalue { i32, i32, i32, i32 } %i.a, 3
  %i.o = icmp eq i32 %i.n, 1231384169
  %spec.select.not34.not40 = select i1 %or.cond.not37.not43, i1 %i.o, i1 false
  %i.p = and i32 %i.f, 512
  %.not = icmp ne i32 %i.p, 0
  %or.cond30.not38 = select i1 %spec.select.not34.not40, i1 %.not, i1 false
  %i.q = and i32 %i.e, 3840
  %i.r = icmp eq i32 %i.q, 1536
  %or.cond32 = select i1 %or.cond30.not38, i1 %i.r, i1 false
  br i1 %or.cond32, label %.preheader.preheader.i, label %CheckSlowModel.exit

.preheader.preheader.i:                           ; preds = %bb.e
  %i.s = lshr i32 %i.e, 12
  %i.t = and i32 %i.s, 240
  %i.u = lshr i32 %i.e, 4
  %i.v = and i32 %i.u, 15
  %i.w = or disjoint i32 %i.t, %i.v
  %trunc.i = trunc nuw i32 %i.w to i8
  switch i8 %trunc.i, label %1 [
    i8 55, label %CheckSlowModel.exit
    i8 74, label %CheckSlowModel.exit
    i8 77, label %CheckSlowModel.exit
    i8 28, label %CheckSlowModel.exit
    i8 38, label %CheckSlowModel.exit
    i8 39, label %CheckSlowModel.exit
  ]

1:                                                ; preds = %.preheader.preheader.i
  br label %CheckSlowModel.exit

bb.f:                                             ; preds = %bb.b
  %i.x = lshr i32 %i.f, 19
  %.lobit16 = and i32 %i.x, 1
  br label %CheckSlowModel.exit

bb.g:                                             ; preds = %bb.b
  %i.y = and i32 %i.f, 402653184
  %i.z = icmp eq i32 %i.y, 402653184
  br i1 %i.z, label %bb.h, label %CheckSlowModel.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call { i32, i32 } asm sideeffect ".byte 0x0f, 0x01, 0xd0\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #1, !srcloc !8
  %i.ab = extractvalue { i32, i32 } %i.aa, 0
  %i.ac = and i32 %i.ab, 6
  %i.ad = icmp eq i32 %i.ac, 6
  %i.ae = zext i1 %i.ad to i32
  br label %CheckSlowModel.exit

bb.i:                                             ; preds = %bb.b
  %i.af = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #1, !inline_history !9, !srcloc !7
  %i.ag = extractvalue { i32, i32, i32, i32 } %i.af, 0
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %CheckSlowModel.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #1, !inline_history !9, !srcloc !7
  %i.aj = extractvalue { i32, i32, i32, i32 } %i.ai, 2
  %i.ak = and i32 %i.aj, 402653184
  %i.al = icmp eq i32 %i.ak, 402653184
  br i1 %i.al, label %x86CPUInfo.exit, label %CheckSlowModel.exit

x86CPUInfo.exit:                                  ; preds = %bb.j
  %i.am = tail call { i32, i32 } asm sideeffect ".byte 0x0f, 0x01, 0xd0\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #1, !inline_history !9, !srcloc !8
  %i.an = extractvalue { i32, i32 } %i.am, 0
  %i.ao = and i32 %i.an, 6
  %i.ap = icmp eq i32 %i.ao, 6
  %i.aq = icmp samesign ugt i32 %i.b, 6
  %or.cond4 = and i1 %i.aq, %i.ap
  br i1 %or.cond4, label %bb.k, label %CheckSlowModel.exit

bb.k:                                             ; preds = %x86CPUInfo.exit
  %i.ar = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #1, !srcloc !7
  %i.as = extractvalue { i32, i32, i32, i32 } %i.ar, 1
  %i.at = lshr i32 %i.as, 5
  %.lobit = and i32 %i.at, 1
  br label %CheckSlowModel.exit

CheckSlowModel.exit:                              ; preds = %bb.j, %bb.i, %bb.g, %1, %.preheader.preheader.i, %.preheader.preheader.i, %.preheader.preheader.i, %.preheader.preheader.i, %.preheader.preheader.i, %.preheader.preheader.i, %x86CPUInfo.exit, %bb.b, %bb.e, %bb.a, %bb.k, %bb.h, %bb.f, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.e ], [ %.lobit17, %bb.c ], [ %i.i, %bb.d ], [ 1, %.preheader.preheader.i ], [ 0, %bb.a ], [ %.lobit16, %bb.f ], [ %i.ae, %bb.h ], [ %.lobit, %bb.k ], [ 0, %bb.j ], [ 0, %bb.b ], [ 0, %x86CPUInfo.exit ], [ 0, %bb.i ], [ 1, %.preheader.preheader.i ], [ 0, %1 ], [ 1, %.preheader.preheader.i ], [ 1, %.preheader.preheader.i ], [ 1, %.preheader.preheader.i ], [ 1, %.preheader.preheader.i ], [ 0, %bb.g ]
  ret i32 %.0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{i64 333139}
!8 = !{i64 333957}
!9 = !{ptr @x86CPUInfo}
end_hunk_0
