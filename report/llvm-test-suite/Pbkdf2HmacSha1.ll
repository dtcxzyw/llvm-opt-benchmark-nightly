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
define dso_local void @_ZN7NCrypto5NSha110Pbkdf2HmacEPKhmS2_mjPhm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.NCrypto::NSha1::CHmac", align 8 ; 6 uses
  %8 = alloca %"class.NCrypto::NSha1::CHmac", align 8 ; 15 uses
  %i.a = alloca [20 x i8], align 16               ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @_ZN7NCrypto5NSha15CHmac6SetKeyEPKhm(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef %0, i64 noundef %1)
  %.not38 = icmp eq i64 %6, 0
  br i1 %.not38, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %i.e = icmp ugt i32 %4, 1
  br i1 %i.e, label %.lr.ph43.split.us, label %.lr.ph43.split

.lr.ph43.split.us:                                ; preds = %.lr.ph43, %._crit_edge.us
  %.03141.us = phi ptr [ %i.x, %._crit_edge.us ], [ %5, %.lr.ph43 ] ; 6 uses
  %.03240.us = phi i32 [ %i.z, %._crit_edge.us ], [ 1, %.lr.ph43 ] ; 5 uses
  %.03339.us = phi i64 [ %i.y, %._crit_edge.us ], [ %6, %.lr.ph43 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 208, i1 false)
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef %2, i64 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.f = lshr i32 %.03240.us, 24
  %i.g = trunc nuw i32 %i.f to i8
  store i8 %i.g, ptr %i.a, align 16, !tbaa !8
  %i.h = lshr i32 %.03240.us, 16
  %i.i = trunc i32 %i.h to i8
  store i8 %i.i, ptr %i.b, align 1, !tbaa !8
  %i.j = lshr i32 %.03240.us, 8
  %i.k = trunc i32 %i.j to i8
  store i8 %i.k, ptr %i.c, align 2, !tbaa !8
  %i.l = trunc i32 %.03240.us to i8
  store i8 %i.l, ptr %i.d, align 1, !tbaa !8
  %i.m = call i64 @llvm.umin.i64(i64 %.03339.us, i64 20) ; 8 uses
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i64 noundef 4)
  call void @_ZN7NCrypto5NSha15CHmac5FinalEPhm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i64 noundef 20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03141.us, ptr nonnull align 16 %i.a, i64 %i.m, i1 false), !tbaa !8
  %min.iters.check = icmp ult i64 %.03339.us, 4
  %min.iters.check56 = icmp ult i64 %.03339.us, 16
  %n.mod.vf = and i64 %i.m, 12
  %n.vec = and i64 %i.m, 16                       ; 3 uses
  %cmp.n = icmp eq i64 %.03339.us, %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec59 = and i64 %i.m, 28                     ; 3 uses
  %cmp.n64 = icmp eq i64 %i.m, %n.vec59
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph43.split.us, %.loopexit
  %.037.us = phi i32 [ %9, %.loopexit ], [ %4, %.lr.ph43.split.us ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 208, i1 false)
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i64 noundef 20)
  call void @_ZN7NCrypto5NSha15CHmac5FinalEPhm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i64 noundef 20)
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check
  %wide.load = load <16 x i8>, ptr %i.a, align 16, !tbaa !8
  %wide.load57 = load <16 x i8>, ptr %.03141.us, align 1, !tbaa !8
  %i.n = xor <16 x i8> %wide.load57, %wide.load
  store <16 x i8> %i.n, ptr %.03141.us, align 1, !tbaa !8
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %index60
  %wide.load61 = load <4 x i8>, ptr %i.o, align 4, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %.03141.us, i64 %index60 ; 2 uses
  %wide.load62 = load <4 x i8>, ptr %i.p, align 1, !tbaa !8
  %i.q = xor <4 x i8> %wide.load62, %wide.load61
  store <4 x i8> %i.q, ptr %i.p, align 1, !tbaa !8
  %index.next63 = add nuw i64 %index60, 4         ; 2 uses
  %i.r = icmp eq i64 %index.next63, %n.vec59
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n64, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec59, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %.03141.us, i64 %indvars.iv ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = xor i8 %i.v, %i.t
  store i8 %i.w, ptr %i.u, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !14

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.body
  %9 = add i32 %.037.us, -1                       ; 2 uses
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %iter.check, label %._crit_edge.us, !llvm.loop !15

._crit_edge.us:                                   ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %.03141.us, i64 %i.m
  %i.y = sub i64 %.03339.us, %i.m                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  %i.z = add i32 %.03240.us, 1
  %.not.us = icmp eq i64 %i.y, 0
  br i1 %.not.us, label %._crit_edge44, label %.lr.ph43.split.us, !llvm.loop !16

._crit_edge44:                                    ; preds = %.lr.ph43.split, %._crit_edge.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret void

.lr.ph43.split:                                   ; preds = %.lr.ph43, %.lr.ph43.split
  %.03141 = phi ptr [ %i.ai, %.lr.ph43.split ], [ %5, %.lr.ph43 ] ; 2 uses
  %.03240 = phi i32 [ %i.ak, %.lr.ph43.split ], [ 1, %.lr.ph43 ] ; 5 uses
  %.03339 = phi i64 [ %i.aj, %.lr.ph43.split ], [ %6, %.lr.ph43 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 208, i1 false)
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef %2, i64 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.aa = lshr i32 %.03240, 24
  %i.ab = trunc nuw i32 %i.aa to i8
  store i8 %i.ab, ptr %i.a, align 16, !tbaa !8
  %i.ac = lshr i32 %.03240, 16
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %i.b, align 1, !tbaa !8
  %i.ae = lshr i32 %.03240, 8
  %i.af = trunc i32 %i.ae to i8
  store i8 %i.af, ptr %i.c, align 2, !tbaa !8
  %i.ag = trunc i32 %.03240 to i8
  store i8 %i.ag, ptr %i.d, align 1, !tbaa !8
  %i.ah = call i64 @llvm.umin.i64(i64 %.03339, i64 20) ; 3 uses
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i64 noundef 4)
  call void @_ZN7NCrypto5NSha15CHmac5FinalEPhm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i64 noundef 20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03141, ptr nonnull align 16 %i.a, i64 %i.ah, i1 false), !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %.03141, i64 %i.ah
  %i.aj = sub i64 %.03339, %i.ah                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  %i.ak = add i32 %.03240, 1
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %._crit_edge44, label %.lr.ph43.split, !llvm.loop !16
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
define dso_local void @_ZN7NCrypto5NSha112Pbkdf2Hmac32EPKhmPKjmjPjm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 noundef %6) local_unnamed_addr #0 {
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
  %.01927 = phi ptr [ %5, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %.02026 = phi i32 [ 1, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %.02125 = phi i64 [ %6, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 208, i1 false)
  call void @_ZN7NCrypto5NSha110CContext326UpdateEPKjm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef %2, i64 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  store i32 %.02026, ptr %i.a, align 16, !tbaa !4
  %i.c = call i64 @llvm.umin.i64(i64 %.02125, i64 5) ; 3 uses
  call void @_ZN7NCrypto5NSha110CContext326UpdateEPKjm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @_ZN7NCrypto5NSha17CHmac325FinalEPjm(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i64 noundef 5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 208, i1 false)
  call void @_ZN7NCrypto5NSha17CHmac3216GetLoopXorDigestEPjj(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull %i.a, i32 noundef %i.b)
  %i.d = shl nuw nsw i64 %i.c, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.01927, ptr nonnull align 16 %i.a, i64 %i.d, i1 false), !tbaa !4
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.01927, i64 %i.c
  %i.f = sub i64 %.02125, %i.c                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  %i.g = add i32 %.02026, 1
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !17
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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!"branch_weights", i32 4, i32 12}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !11, !13, !12}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
end_hunk_0
