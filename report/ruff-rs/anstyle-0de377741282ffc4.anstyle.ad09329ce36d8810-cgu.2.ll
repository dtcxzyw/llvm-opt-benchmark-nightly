Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/anstyle-0de377741282ffc4.anstyle.ad09329ce36d8810-cgu.2?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/anstyle-1.0.14/src/color.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"`\00\00\00\00\00\00\00U\02\00\00\0D\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"`\00\00\00\00\00\00\00Y\02\00\00\0D\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"`\00\00\00\00\00\00\00]\02\00\00\09\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"`\00\00\00\00\00\00\00E\02\00\00\0D\00\00\00" }>, align 8

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsa_NtCseR46qigP5Cu_7anstyle5colorNtB5_13DisplayBuffer10write_code(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, i8 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = udiv i8 %2, 100
  %i.b = udiv i8 %2, 10
  %i.c = urem i8 %2, 10
  %i.d = urem i8 %i.b, 10                         ; 2 uses
  %i.e = icmp ult i8 %2, 100
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %i.d, 0
  %.pr8 = load i64, ptr %1, align 8               ; 2 uses
  br i1 %.not, label %thread-pre-split7, label %thread-pre-split

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !noundef !3   ; 4 uses
  %i.g = icmp ult i64 %i.f, 19
  br i1 %i.g, label %bb.d, label %bb.e

thread-pre-split:                                 ; preds = %bb.b, %bb.d
  %i.h = phi i64 [ %i.o, %bb.d ], [ %.pr8, %bb.b ] ; 4 uses
  %i.i = icmp ult i64 %i.h, 19
  br i1 %i.i, label %bb.f, label %bb.g

thread-pre-split7:                                ; preds = %bb.b, %bb.f
  %i.j = phi i64 [ %i.s, %bb.f ], [ %.pr8, %bb.b ] ; 4 uses
  %i.k = icmp ult i64 %i.j, 19
  br i1 %i.k, label %bb.h, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.n = or disjoint i8 %i.a, 48
  store i8 %i.n, ptr %i.m, align 1
  %i.o = add nuw nsw i64 %i.f, 1                  ; 2 uses
  store i64 %i.o, ptr %1, align 8
  br label %thread-pre-split

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #5
  unreachable

bb.f:                                             ; preds = %thread-pre-split
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  %i.r = or disjoint i8 %i.d, 48
  store i8 %i.r, ptr %i.q, align 1
  %i.s = add nuw nsw i64 %i.h, 1                  ; 2 uses
  store i64 %i.s, ptr %1, align 8
  br label %thread-pre-split7

bb.g:                                             ; preds = %thread-pre-split
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #5
  unreachable

bb.h:                                             ; preds = %thread-pre-split7
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.j
  %i.v = or disjoint i8 %i.c, 48
  store i8 %i.v, ptr %i.u, align 1
  %i.w = add nuw nsw i64 %i.j, 1
  store i64 %i.w, ptr %1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void

bb.i:                                             ; preds = %thread-pre-split7
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #5
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsa_NtCseR46qigP5Cu_7anstyle5colorNtB5_13DisplayBuffer9write_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.b = icmp samesign eq i64 %3, 0
  %.pre = load i64, ptr %1, align 8               ; 4 uses
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 19, i64 %.pre) ; 2 uses
  %i.e = add i64 %3, -1
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.d) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.f, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %i.h = and i64 %i.g, 7                          ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 8, i64 %i.h
  %n.vec = sub nsw i64 %i.g, %i.j                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %.pre
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1
  %wide.load14 = load <4 x i8>, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store <4 x i8> %wide.load, ptr %i.m, align 1
  store <4 x i8> %wide.load14, ptr %i.n, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !4

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  %4 = getelementptr i8, ptr %2, i64 %n.vec
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph
  %.sroa.0.010.ph = phi ptr [ %2, %.lr.ph ], [ %4, %scalar.ph.preheader.loopexit ]
  %.sroa.7.09.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %.sroa.0.010 = phi ptr [ %i.s, %bb.b ], [ %.sroa.0.010.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.7.09 = phi i64 [ %i.r, %bb.b ], [ %.sroa.7.09.ph, %scalar.ph.preheader ] ; 3 uses
  %i.p = add nuw nsw i64 %.pre, %.sroa.7.09       ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.7.09, %i.d
  br i1 %exitcond.not, label %bb.c, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.q = add i64 %.pre, %3
  store i64 %i.q, ptr %1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void

bb.b:                                             ; preds = %scalar.ph
  %i.r = add nuw nsw i64 %.sroa.7.09, 1
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 1 ; 2 uses
  %i.t = load i8, ptr %.sroa.0.010, align 1, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.p
  store i8 %i.t, ptr %i.u, align 1
  %i.v = icmp eq ptr %i.s, %i.a
  br i1 %i.v, label %._crit_edge, label %scalar.ph, !llvm.loop !5

bb.c:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #5
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = distinct !{!4, !6, !7}
!5 = distinct !{!5, !7, !6}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
