Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/FindSignature?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z21FindSignatureInStreamP19ISequentialInStreamPKhjPKyRy(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  store i64 0, ptr %4, align 8, !tbaa !14
  %i.b = zext i32 %2 to i64                       ; 4 uses
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %_ZN7CBufferIhE11SetCapacityEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %5 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.b) #6
          to label %_ZN7CBufferIhE11SetCapacityEm.exit unwind label %bb.d

_ZN7CBufferIhE11SetCapacityEm.exit:               ; preds = %bb.a, %bb.b
  %.sroa.10107.1.a = phi ptr [ null, %bb.a ], [ %5, %bb.b ] ; 8 uses
  %i.d = invoke noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %0, ptr noundef %.sroa.10107.1.a, i64 noundef %i.b)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.t

bb.d:                                             ; preds = %bb.b, %_ZN7CBufferIhE11SetCapacityEm.exit
  %.sroa.10107.0 = phi ptr [ %.sroa.10107.1.a, %_ZN7CBufferIhE11SetCapacityEm.exit ], [ null, %bb.b ]
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7CBufferIhED2Ev.exit95

bb.e:                                             ; preds = %bb.c
  %bcmp = tail call i32 @bcmp(ptr %.sroa.10107.1.a, ptr %1, i64 %i.b)
  %i.f = icmp eq i32 %bcmp, 0
  br i1 %i.f, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = invoke noalias noundef nonnull dereferenceable(65536) ptr @_Znam(i64 noundef 65536) #6
          to label %_ZN7CBufferIhE11SetCapacityEm.exit94 unwind label %.thread137 ; 8 uses

_ZN7CBufferIhE11SetCapacityEm.exit94:             ; preds = %bb.f
  %i.h = add i32 %2, -1                           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.10107.1.a, i64 1
  %i.j = zext i32 %i.h to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull align 1 %i.i, i64 %i.j, i1 false)
  store i64 1, ptr %4, align 8, !tbaa !14
  %.not86 = icmp eq ptr %3, null
  %invariant.op = sub i32 1, %2
  br label %bb.g

bb.g:                                             ; preds = %.thread122, %_ZN7CBufferIhE11SetCapacityEm.exit94
  %i.k = phi i64 [ 1, %_ZN7CBufferIhE11SetCapacityEm.exit94 ], [ %i.ap, %.thread122 ]
  %.066 = phi i32 [ %i.h, %_ZN7CBufferIhE11SetCapacityEm.exit94 ], [ %i.aq, %.thread122 ]
  br i1 %.not86, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.h, %bb.g
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = load i64, ptr %3, align 8, !tbaa !14
  %i.m = icmp ugt i64 %i.k, %i.l
  br i1 %i.m, label %_ZN7CBufferIhED2Ev.exit, label %.preheader

.thread137:                                       ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7CBufferIhED2Ev.exit95

bb.i:                                             ; preds = %.preheader, %bb.l
  %.167 = phi i32 [ %i.w, %bb.l ], [ %.066, %.preheader ] ; 3 uses
  %i.o = sub i32 65536, %.167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.p = zext i32 %.167 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p
  %i.r = load ptr, ptr %0, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.q, i32 noundef %i.o, ptr noundef nonnull %i.a)
          to label %bb.j unwind label %bb.s       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not89 = icmp eq i32 %i.u, 0
  br i1 %.not89, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %_ZN7CBufferIhED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.v = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %.not144 = icmp eq i32 %i.v, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br i1 %.not144, label %_ZN7CBufferIhED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = add i32 %i.v, %.167                      ; 4 uses
  %i.x = icmp ult i32 %i.w, %2
  br i1 %i.x, label %bb.i, label %bb.m, !llvm.loop !8

bb.m:                                             ; preds = %bb.l
  %.reass.reass.reass = add i32 %i.w, %invariant.op ; 5 uses
  %.not156 = icmp eq i32 %.reass.reass.reass, 0
  br i1 %.not156, label %.thread122, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.y = load i8, ptr %1, align 1, !tbaa !18
  %i.z = zext i32 %.reass.reass.reass to i64      ; 3 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.r
  %i.aa = add nuw i32 %i.ai, 1                    ; 2 uses
  %i.ab = icmp ult i32 %i.aa, %.reass.reass.reass
  br i1 %i.ab, label %bb.o, label %.thread122, !llvm.loop !9

bb.o:                                             ; preds = %.lr.ph, %bb.n
  %.0154 = phi i32 [ 0, %.lr.ph ], [ %i.aa, %bb.n ]
  %i.ac = zext i32 %.0154 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ %i.ac, %bb.o ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !18
  %i.af = icmp ne i8 %i.ae, %i.y
  %i.ag = icmp samesign ult i64 %indvars.iv, %i.z
  %i.ah = and i1 %i.ag, %i.af
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.ah, label %bb.p, label %bb.q, !llvm.loop !10

bb.q:                                             ; preds = %bb.p
  %i.ai = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.aj = icmp eq i32 %.reass.reass.reass, %i.ai
  br i1 %i.aj, label %.thread122, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %bcmp90 = call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %1, i64 %i.b)
  %i.al = icmp eq i32 %bcmp90, 0
  br i1 %i.al, label %.thread132, label %bb.n

.thread132:                                       ; preds = %bb.r
  %i.am = load i64, ptr %4, align 8, !tbaa !14
  %i.an = add i64 %i.am, %indvars.iv
  store i64 %i.an, ptr %4, align 8, !tbaa !14
  br label %_ZN7CBufferIhED2Ev.exit

.thread122:                                       ; preds = %bb.n, %bb.q, %bb.m
  %.pre-phi = phi i64 [ 0, %bb.m ], [ %i.z, %bb.q ], [ %i.z, %bb.n ] ; 2 uses
  %i.ao = load i64, ptr %4, align 8, !tbaa !14
  %i.ap = add i64 %i.ao, %.pre-phi                ; 2 uses
  store i64 %i.ap, ptr %4, align 8, !tbaa !14
  %i.aq = sub i32 %i.w, %.reass.reass.reass       ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 %.pre-phi
  %i.as = zext i32 %i.aq to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull align 1 %i.ar, i64 %i.as, i1 false)
  br label %bb.g, !llvm.loop !11

_ZN7CBufferIhED2Ev.exit:                          ; preds = %bb.h, %bb.k, %.thread132, %.thread
  %.8 = phi i32 [ %i.u, %.thread ], [ 0, %.thread132 ], [ 1, %bb.k ], [ 1, %bb.h ]
  call void @_ZdaPv(ptr noundef nonnull %i.g) #8, !inline_history !12
  br label %bb.t

bb.s:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @_ZdaPv(ptr noundef nonnull %i.g) #8, !inline_history !12
  br label %_ZN7CBufferIhED2Ev.exit95

bb.t:                                             ; preds = %bb.e, %bb.c, %_ZN7CBufferIhED2Ev.exit
  %.9 = phi i32 [ %i.d, %bb.c ], [ %.8, %_ZN7CBufferIhED2Ev.exit ], [ 0, %bb.e ]
  %i.au = icmp eq ptr %.sroa.10107.1.a, null
  br i1 %i.au, label %_ZN7CBufferIhED2Ev.exit96, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %.sroa.10107.1.a) #8, !inline_history !12
  br label %_ZN7CBufferIhED2Ev.exit96

_ZN7CBufferIhED2Ev.exit96:                        ; preds = %bb.t, %bb.u
  ret i32 %.9

_ZN7CBufferIhED2Ev.exit95:                        ; preds = %bb.s, %.thread137, %bb.d
  %.sroa.10107.1 = phi ptr [ %.sroa.10107.0, %bb.d ], [ %.sroa.10107.1.a, %.thread137 ], [ %.sroa.10107.1.a, %bb.s ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.n, %.thread137 ], [ %i.at, %bb.s ]
  %i.av = icmp eq ptr %.sroa.10107.1, null
  br i1 %i.av, label %_ZN7CBufferIhED2Ev.exit97, label %bb.v

bb.v:                                             ; preds = %_ZN7CBufferIhED2Ev.exit95
  call void @_ZdaPv(ptr noundef nonnull %.sroa.10107.1) #8, !inline_history !12
  br label %_ZN7CBufferIhED2Ev.exit97

_ZN7CBufferIhED2Ev.exit97:                        ; preds = %_ZN7CBufferIhED2Ev.exit95, %bb.v
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { builtin allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !17}
!9 = distinct !{!9, !17}
!10 = distinct !{!10, !17}
!11 = distinct !{!11, !17}
!12 = distinct !{null}
!13 = !{!"long long", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"vtable pointer", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!5, !5, i64 0}
end_hunk_0
