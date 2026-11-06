Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Pbkdf2HmacSha1?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.NCrypto::NSha1::CHmac" = type { %"class.NCrypto::NSha1::CContext", %"class.NCrypto::NSha1::CContext" }
%"class.NCrypto::NSha1::CContext" = type { %"class.NCrypto::NSha1::CContextBase2.base", [4 x i8] }
%"class.NCrypto::NSha1::CContextBase2.base" = type <{ %"class.NCrypto::NSha1::CContextBase", i32, [16 x i32] }>
%"class.NCrypto::NSha1::CContextBase" = type { [5 x i32], i64 }
%"class.NCrypto::NSha1::CHmac32" = type { %"class.NCrypto::NSha1::CContext32", %"class.NCrypto::NSha1::CContext32" }
%"class.NCrypto::NSha1::CContext32" = type { %"class.NCrypto::NSha1::CContextBase2.base", [4 x i8] }

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7NCrypto5NSha110Pbkdf2HmacEPKhmS2_mjPhm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, i64 noundef %6) local_unnamed_addr #0 !guid !13 {
bb.a:
  %7 = alloca %"class.NCrypto::NSha1::CHmac", align 8 ; 6 uses
  %8 = alloca %"class.NCrypto::NSha1::CHmac", align 8 ; 15 uses
  %i.a = alloca [20 x i8], align 16               ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @_ZN7NCrypto5NSha15CHmac6SetKeyEPKhm(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef %0, i64 noundef %1)
  %.not38 = icmp eq i64 %6, 0
  br i1 %.not38, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.a
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %i.b = icmp ugt i32 %4, 1
  br i1 %i.b, label %.lr.ph43.split.us, label %.lr.ph43.split

.lr.ph43.split.us:                                ; preds = %.lr.ph43, %._crit_edge.us
  %.03141.us = phi i32 [ %i.s, %._crit_edge.us ], [ 1, %.lr.ph43 ] ; 5 uses
  %.03240.us = phi i64 [ %i.r, %._crit_edge.us ], [ %6, %.lr.ph43 ] ; 5 uses
  %.03339.us = phi ptr [ %i.q, %._crit_edge.us ], [ %5, %.lr.ph43 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 208, i1 false)
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef %2, i64 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %12 = lshr i32 %.03141.us, 24
  %13 = trunc nuw i32 %12 to i8
  store i8 %13, ptr %i.a, align 16, !tbaa !14
  %14 = lshr i32 %.03141.us, 16
  %15 = trunc i32 %14 to i8
  store i8 %15, ptr %9, align 1, !tbaa !14
  %16 = lshr i32 %.03141.us, 8
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %10, align 2, !tbaa !14
  %18 = trunc i32 %.03141.us to i8
  store i8 %18, ptr %11, align 1, !tbaa !14
  %i.c = call i64 @llvm.umin.i64(i64 %.03240.us, i64 20) ; 8 uses
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i64 noundef 4)
  call void @_ZN7NCrypto5NSha15CHmac5FinalEPhm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i64 noundef 20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03339.us, ptr nonnull align 16 %i.a, i64 range(i64 0, 21) %i.c, i1 false), !tbaa !14
  %min.iters.check = icmp ult i64 %.03240.us, 4
  %min.iters.check56 = icmp ult i64 %.03240.us, 16
  %i.d = and i64 %i.c, 12
  %n.vec = and i64 %i.c, 16                       ; 3 uses
  %cmp.n = icmp eq i64 %.03240.us, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  %n.vec58 = and i64 %i.c, 28                     ; 3 uses
  %cmp.n63 = icmp eq i64 %i.c, %n.vec58
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph43.split.us, %.loopexit
  %.037.us = phi i32 [ %i.o, %.loopexit ], [ %4, %.lr.ph43.split.us ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 208, i1 false)
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i64 noundef 20)
  call void @_ZN7NCrypto5NSha15CHmac5FinalEPhm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i64 noundef 20)
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check
  %wide.load = load <16 x i8>, ptr %i.a, align 16, !tbaa !14
  %wide.load57 = load <16 x i8>, ptr %.03339.us, align 1, !tbaa !14
  %i.e = xor <16 x i8> %wide.load57, %wide.load
  store <16 x i8> %i.e, ptr %.03339.us, align 1, !tbaa !14
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %index59
  %wide.load60 = load <4 x i8>, ptr %i.f, align 4, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %.03339.us, i64 %index59 ; 2 uses
  %wide.load61 = load <4 x i8>, ptr %i.g, align 1, !tbaa !14
  %i.h = xor <4 x i8> %wide.load61, %wide.load60
  store <4 x i8> %i.h, ptr %i.g, align 1, !tbaa !14
  %index.next62 = add nuw i64 %index59, 4         ; 2 uses
  %i.i = icmp eq i64 %index.next62, %n.vec58
  br i1 %i.i, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n63, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec58, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %.03339.us, i64 %indvars.iv ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  %i.n = xor i8 %i.m, %i.k
  store i8 %i.n, ptr %i.l, align 1, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !10

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.body
  %i.o = add i32 %.037.us, -1                     ; 2 uses
  %i.p = icmp ugt i32 %i.o, 1
  br i1 %i.p, label %iter.check, label %._crit_edge.us, !llvm.loop !11

._crit_edge.us:                                   ; preds = %.loopexit
  %i.q = getelementptr inbounds nuw i8, ptr %.03339.us, i64 %i.c
  %i.r = sub nuw i64 %.03240.us, %i.c             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  %i.s = add i32 %.03141.us, 1
  %.not.us = icmp eq i64 %i.r, 0
  br i1 %.not.us, label %._crit_edge44, label %.lr.ph43.split.us, !llvm.loop !12

._crit_edge44:                                    ; preds = %.lr.ph43.split, %._crit_edge.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret void

.lr.ph43.split:                                   ; preds = %.lr.ph43, %.lr.ph43.split
  %.03141 = phi i32 [ %i.w, %.lr.ph43.split ], [ 1, %.lr.ph43 ] ; 5 uses
  %.03240 = phi i64 [ %i.v, %.lr.ph43.split ], [ %6, %.lr.ph43 ] ; 2 uses
  %.03339 = phi ptr [ %i.u, %.lr.ph43.split ], [ %5, %.lr.ph43 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 208, i1 false)
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef %2, i64 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %19 = lshr i32 %.03141, 24
  %20 = trunc nuw i32 %19 to i8
  store i8 %20, ptr %i.a, align 16, !tbaa !14
  %21 = lshr i32 %.03141, 16
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr %9, align 1, !tbaa !14
  %23 = lshr i32 %.03141, 8
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %10, align 2, !tbaa !14
  %25 = trunc i32 %.03141 to i8
  store i8 %25, ptr %11, align 1, !tbaa !14
  %i.t = call i64 @llvm.umin.i64(i64 %.03240, i64 20) ; 3 uses
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i64 noundef 4)
  call void @_ZN7NCrypto5NSha15CHmac5FinalEPhm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i64 noundef 20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03339, ptr nonnull align 16 %i.a, i64 range(i64 0, 21) %i.t, i1 false), !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %.03339, i64 %i.t
  %i.v = sub nuw i64 %.03240, %i.t                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  %i.w = add i32 %.03141, 1
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge44, label %.lr.ph43.split, !llvm.loop !12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN7NCrypto5NSha15CHmac6SetKeyEPKhm(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @_ZN7NCrypto5NSha15CHmac5FinalEPhm(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7NCrypto5NSha112Pbkdf2Hmac32EPKhmPKjmjPjm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 noundef %6) local_unnamed_addr #0 !guid !19 {
bb.a:
  %7 = alloca %"class.NCrypto::NSha1::CHmac32", align 8 ; 5 uses
  %8 = alloca %"class.NCrypto::NSha1::CHmac32", align 8 ; 8 uses
  %i.a = alloca [5 x i32], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @_ZN7NCrypto5NSha17CHmac326SetKeyEPKhm(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef %0, i64 noundef %1)
  %.not24 = icmp eq i64 %6, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = add i32 %4, -1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.01927 = phi i32 [ 1, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %.02026 = phi i64 [ %6, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %.02125 = phi ptr [ %5, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 208, i1 false)
  call void @_ZN7NCrypto5NSha110CContext326UpdateEPKjm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef %2, i64 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  store i32 %.01927, ptr %i.a, align 16, !tbaa !7
  %i.c = call i64 @llvm.umin.i64(i64 %.02026, i64 5) ; 3 uses
  call void @_ZN7NCrypto5NSha110CContext326UpdateEPKjm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @_ZN7NCrypto5NSha17CHmac325FinalEPjm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i64 noundef 5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 208, i1 false)
  call void @_ZN7NCrypto5NSha17CHmac3216GetLoopXorDigestEPjj(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i32 noundef %i.b)
  %i.d = shl nuw nsw i64 %i.c, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.02125, ptr nonnull align 16 %i.a, i64 range(i64 0, 21) %i.d, i1 false), !tbaa !7
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.02125, i64 %i.c
  %i.f = sub nuw i64 %.02026, %i.c                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  %i.g = add i32 %.01927, 1
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !18
}

declare void @_ZN7NCrypto5NSha17CHmac326SetKeyEPKhm(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN7NCrypto5NSha17CHmac325FinalEPjm(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN7NCrypto5NSha17CHmac3216GetLoopXorDigestEPjj(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN7NCrypto5NSha110CContext326UpdateEPKjm(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8, !16, !17}
!10 = distinct !{!10, !8, !17, !16}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = !{i64 5858563076520633258}
!14 = !{!5, !5, i64 0}
!15 = !{!"branch_weights", i32 4, i32 12}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !8}
!19 = !{i64 6440372938384033825}
end_hunk_0
