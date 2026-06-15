inline.NumInlined: 88
inline.NumDeleted: 54
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5cppgc8internal22ExplicitManagementImpl22FreeUnreferencedObjectERNS_10HeapHandleEPv(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN5cppgc8internal12_GLOBAL__N_14InGCERNS_10HeapHandleE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN5cppgc8internal12_GLOBAL__N_14InGCERNS_10HeapHandleE.exit, label %_ZN5cppgc8internal12_GLOBAL__N_14InGCERNS_10HeapHandleE.exit.thread

_ZN5cppgc8internal12_GLOBAL__N_14InGCERNS_10HeapHandleE.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = tail call noundef zeroext i1 @_ZNK5cppgc8internal7Sweeper20IsSweepingInProgressEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #3
  br i1 %i.g, label %_ZN5cppgc8internal12_GLOBAL__N_14InGCERNS_10HeapHandleE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_14InGCERNS_10HeapHandleE.exit
  %i.h = getelementptr inbounds i8, ptr %1, i64 -8 ; 6 uses
  tail call void @_ZN5cppgc8internal16HeapObjectHeader8FinalizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.h) #3
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, -131072
  %i.k = inttoptr i64 %i.j to ptr                 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i8, ptr %i.l, align 16
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @_ZN5cppgc8internal9BaseSpace10RemovePageEPNS0_8BasePageE(ptr noundef nonnull align 8 dereferenceable(61) %i.p, ptr noundef nonnull %i.k) #3
  %i.q = tail call noundef nonnull align 8 dereferenceable(512) ptr @_ZNK5cppgc8internal8BasePage4heapEv(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.u = load i64, ptr %i.t, align 8
  tail call void @_ZN5cppgc8internal14StatsCollector18NotifyExplicitFreeEm(ptr noundef nonnull align 8 dereferenceable(336) %i.s, i64 noundef %i.u) #3
  tail call void @_ZN5cppgc8internal9LargePage7DestroyEPS1_(ptr noundef nonnull %i.k) #3
  br label %_ZN5cppgc8internal12_GLOBAL__N_14InGCERNS_10HeapHandleE.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %1, i64 -2
  %i.w = load i16, ptr %i.v, align 2
  %i.x = lshr i16 %i.w, 1
  %i.y = zext nneg i16 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3                  ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.z
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.z, i1 false)
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = add i64 %i.ah, %i.z
  store ptr %i.h, ptr %i.ac, align 8
  store i64 %i.ai, ptr %i.ag, align 8
  %i.aj = ptrtoint ptr %i.h to i64                ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = and i64 %i.ak, 2047
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 49
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = trunc i64 %i.aj to i32
  %i.aq = lshr i32 %i.ap, 3
  %i.ar = and i32 %i.aq, 7
  %i.as = shl nuw nsw i32 1, %i.ar
  %i.at = trunc nuw i32 %i.as to i8
  %i.au = xor i8 %i.at, -1
  %i.av = and i8 %i.ao, %i.au
  store i8 %i.av, ptr %i.an, align 1
  br label %_ZN5cppgc8internal12_GLOBAL__N_14InGCERNS_10HeapHandleE.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.aw = tail call noundef nonnull align 8 dereferenceable(512) ptr @_ZNK5cppgc8internal8BasePage4heapEv(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void @_ZN5cppgc8internal14StatsCollector18NotifyExplicitFreeEm(ptr noundef nonnull align 8 dereferenceable(336) %i.ay, i64 noundef %i.z) #3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  tail call void @_ZN5cppgc8internal8FreeList3AddENS1_5BlockE(ptr noundef nonnull align 8 dereferenceable(280) %i.az, ptr nonnull %i.h, i64 %i.z) #3
  br label %_ZN5cppgc8internal12_GLOBAL__N_14InGCERNS_10HeapHandleE.exit.thread

_ZN5cppgc8internal12_GLOBAL__N_14InGCERNS_10HeapHandleE.exit.thread: ; preds = %bb.a, %bb.b, %bb.d, %bb.g, %bb.f, %_ZN5cppgc8internal12_GLOBAL__N_14InGCERNS_10HeapHandleE.exit
  ret void
}

declare void @_ZN5cppgc8internal16HeapObjectHeader8FinalizeEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN5cppgc8internal9BaseSpace10RemovePageEPNS0_8BasePageE(ptr noundef nonnull align 8 dereferenceable(61), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(512) ptr @_ZNK5cppgc8internal8BasePage4heapEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare void @_ZN5cppgc8internal14StatsCollector18NotifyExplicitFreeEm(ptr noundef nonnull align 8 dereferenceable(336), i64 noundef) local_unnamed_addr #1

declare void @_ZN5cppgc8internal9LargePage7DestroyEPS1_(ptr noundef) local_unnamed_addr #1

declare void @_ZN5cppgc8internal8FreeList3AddENS1_5BlockE(ptr noundef nonnull align 8 dereferenceable(280), ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5cppgc8internal22ExplicitManagementImpl6ResizeEPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, -131072
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(512) ptr @_ZNK5cppgc8internal8BasePage4heapEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.f = load i8, ptr %i.e, align 8, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  %2 = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %3 = load ptr, ptr %2, align 8
  %.not.i = icmp ne ptr %3, null
  %or.cond.not = select i1 %i.g, i1 true, i1 %.not.i
  br i1 %or.cond.not, label %_ZN5cppgc8internal12_GLOBAL__N_14GrowERNS0_16HeapObjectHeaderERNS0_8BasePageEmm.exit, label %_ZN5cppgc8internal12_GLOBAL__N_14InGCERNS_10HeapHandleE.exit

_ZN5cppgc8internal12_GLOBAL__N_14InGCERNS_10HeapHandleE.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.i = tail call noundef zeroext i1 @_ZNK5cppgc8internal7Sweeper20IsSweepingInProgressEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #3
  br i1 %i.i, label %_ZN5cppgc8internal12_GLOBAL__N_14GrowERNS0_16HeapObjectHeaderERNS0_8BasePageEmm.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_14InGCERNS_10HeapHandleE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i8, ptr %i.j, align 16
  %i.l = icmp eq i8 %i.k, 1
  br i1 %i.l, label %_ZN5cppgc8internal12_GLOBAL__N_14GrowERNS0_16HeapObjectHeaderERNS0_8BasePageEmm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add i64 %1, 15                           ; 2 uses
  %i.n = and i64 %i.m, -8                         ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %0, i64 -2 ; 3 uses
  %i.q = load i16, ptr %i.p, align 2
  %i.r = lshr i16 %i.q, 1
  %i.s = zext nneg i16 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 3                  ; 6 uses
  %i.u = icmp ugt i64 %i.n, %i.t
  br i1 %i.u, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.v = sub nuw i64 %i.n, %i.t                   ; 3 uses
  %i.w = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.t
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %_ZN5cppgc8internal12_GLOBAL__N_14GrowERNS0_16HeapObjectHeaderERNS0_8BasePageEmm.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 72 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %.not.i24 = icmp ult i64 %i.ac, %i.v
  br i1 %.not.i24, label %_ZN5cppgc8internal12_GLOBAL__N_14GrowERNS0_16HeapObjectHeaderERNS0_8BasePageEmm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store ptr %i.ad, ptr %i.x, align 8
  %i.ae = sub nuw i64 %i.ac, %i.v
  store i64 %i.ae, ptr %i.ab, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_14GrowERNS0_16HeapObjectHeaderERNS0_8BasePageEmm.exit.sink.split

bb.g:                                             ; preds = %bb.c
  %i.af = icmp samesign ugt i64 %i.t, %i.n
  br i1 %i.af, label %bb.h, label %_ZN5cppgc8internal12_GLOBAL__N_14GrowERNS0_16HeapObjectHeaderERNS0_8BasePageEmm.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nuw nsw i64 %i.t, %i.n              ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.t ; 2 uses
  %i.al = sub nsw i64 0, %i.ag
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al ; 5 uses
  %i.an = load ptr, ptr %i.aj, align 8
  %i.ao = icmp eq ptr %i.an, %i.ak
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 72 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = add i64 %i.aq, %i.ag
  store ptr %i.am, ptr %i.aj, align 8
  store i64 %i.ar, ptr %i.ap, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.am, i8 0, i64 %i.ag, i1 false)
  br label %_ZN5cppgc8internal12_GLOBAL__N_14GrowERNS0_16HeapObjectHeaderERNS0_8BasePageEmm.exit.sink.split

bb.j:                                             ; preds = %bb.h
  %i.as = icmp samesign ugt i64 %i.ag, 31
  br i1 %i.as, label %bb.k, label %_ZN5cppgc8internal12_GLOBAL__N_14GrowERNS0_16HeapObjectHeaderERNS0_8BasePageEmm.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.am, i8 0, i64 %i.ag, i1 false)
  %i.at = tail call noundef nonnull align 8 dereferenceable(512) ptr @_ZNK5cppgc8internal8BasePage4heapEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #3
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8
  tail call void @_ZN5cppgc8internal14StatsCollector18NotifyExplicitFreeEm(ptr noundef nonnull align 8 dereferenceable(336) %i.av, i64 noundef %i.ag) #3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  tail call void @_ZN5cppgc8internal8FreeList3AddENS1_5BlockE(ptr noundef nonnull align 8 dereferenceable(280) %i.aw, ptr nonnull %i.am, i64 %i.ag) #3
  %i.ax = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ay = lshr i64 %i.ax, 6
  %i.az = and i64 %i.ay, 2047
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 49
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = trunc i64 %i.ax to i32
  %i.be = lshr i32 %i.bd, 3
  %i.bf = and i32 %i.be, 7
  %i.bg = shl nuw nsw i32 1, %i.bf
  %i.bh = trunc nuw i32 %i.bg to i8
  %i.bi = or i8 %i.bc, %i.bh
  store i8 %i.bi, ptr %i.bb, align 1
  br label %_ZN5cppgc8internal12_GLOBAL__N_14GrowERNS0_16HeapObjectHeaderERNS0_8BasePageEmm.exit.sink.split

_ZN5cppgc8internal12_GLOBAL__N_14GrowERNS0_16HeapObjectHeaderERNS0_8BasePageEmm.exit.sink.split: ; preds = %bb.i, %bb.k, %bb.f
  %i.bj = load i16, ptr %i.p, align 2
  %i.bk = and i16 %i.bj, 1
  %sh.diff.i.i25.i = lshr i64 %i.m, 2
  %tr.sh.diff.i.i26.i = trunc i64 %sh.diff.i.i25.i to i16
  %i.bl = and i16 %tr.sh.diff.i.i26.i, -2
  %i.bm = or disjoint i16 %i.bk, %i.bl
  store i16 %i.bm, ptr %i.p, align 2
  br label %_ZN5cppgc8internal12_GLOBAL__N_14GrowERNS0_16HeapObjectHeaderERNS0_8BasePageEmm.exit

_ZN5cppgc8internal12_GLOBAL__N_14GrowERNS0_16HeapObjectHeaderERNS0_8BasePageEmm.exit: ; preds = %_ZN5cppgc8internal12_GLOBAL__N_14GrowERNS0_16HeapObjectHeaderERNS0_8BasePageEmm.exit.sink.split, %bb.a, %bb.j, %bb.e, %bb.d, %bb.g, %bb.b, %_ZN5cppgc8internal12_GLOBAL__N_14InGCERNS_10HeapHandleE.exit
  %.1 = phi i1 [ false, %bb.b ], [ false, %_ZN5cppgc8internal12_GLOBAL__N_14InGCERNS_10HeapHandleE.exit ], [ true, %bb.j ], [ false, %bb.d ], [ true, %bb.g ], [ false, %bb.a ], [ false, %bb.e ], [ true, %_ZN5cppgc8internal12_GLOBAL__N_14GrowERNS0_16HeapObjectHeaderERNS0_8BasePageEmm.exit.sink.split ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK5cppgc8internal7Sweeper20IsSweepingInProgressEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
end_hunk_0
