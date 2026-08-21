Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/RangeCommon?download=true
inline.NumInlined: 28
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { [4 x i64] }
%"class.folly::SparseByteSet" = type { i16, [256 x i8], [256 x i8] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5folly6detail26qfind_first_byte_of_bitsetENS0_15StringPieceLiteES1_(ptr %0, ptr %1, ptr nofree readonly captures(address) %2, ptr nofree readnone captures(address) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.std::bitset", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %.not22 = icmp eq ptr %2, %3
  br i1 %.not22, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.d = load i8, ptr %2, align 1, !tbaa !12
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %5 = lshr i64 %i.e, 6
  %6 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %5 ; 2 uses
  %i.f = and i64 %i.e, 63
  %7 = shl nuw i64 1, %i.f
  %i.g = load i64, ptr %6, align 8, !tbaa !13
  %i.h = or i64 %7, %i.g
  store i64 %i.h, ptr %6, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.01423.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %i.j = add i64 %i.a, -1
  %i.k = icmp eq i64 %i.j, %i.b
  br i1 %i.k, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %i.l = ptrtoint ptr %1 to i64
  %i.m = ptrtoint ptr %0 to i64
  %i.n = sub i64 %i.l, %i.m
  %.not1524.not = icmp eq ptr %1, %0
  br i1 %.not1524.not, label %._crit_edge, label %.lr.ph26

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01423 = phi ptr [ %i.z, %.lr.ph ], [ %.01423.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.o = load i8, ptr %.01423, align 1, !tbaa !12
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %8 = lshr i64 %i.p, 6
  %9 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %8 ; 2 uses
  %i.q = and i64 %i.p, 63
  %10 = shl nuw i64 1, %i.q
  %i.r = load i64, ptr %9, align 8, !tbaa !13
  %i.s = or i64 %10, %i.r
  store i64 %i.s, ptr %9, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.01423, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !12
  %i.v = zext i8 %i.u to i64                      ; 2 uses
  %11 = lshr i64 %i.v, 6
  %12 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %11 ; 2 uses
  %i.w = and i64 %i.v, 63
  %13 = shl nuw i64 1, %i.w
  %i.x = load i64, ptr %12, align 8, !tbaa !13
  %i.y = or i64 %13, %i.x
  store i64 %i.y, ptr %12, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.01423, i64 2 ; 2 uses
  %.not.1 = icmp eq ptr %i.z, %3
  br i1 %.not.1, label %.preheader, label %.lr.ph

.lr.ph26:                                         ; preds = %.preheader, %bb.b
  %.01225 = phi i64 [ %i.ah, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.01225
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !12
  %i.ac = zext i8 %i.ab to i64                    ; 2 uses
  %i.ad = lshr i64 %i.ac, 6
  %14 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ad
  %15 = and i64 %i.ac, 63
  %i.ae = load i64, ptr %14, align 8, !tbaa !13
  %i.af = shl nuw i64 1, %15
  %i.ag = and i64 %i.af, %i.ae
  %.not21 = icmp eq i64 %i.ag, 0
  br i1 %.not21, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph26
  %i.ah = add nuw i64 %.01225, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph26, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.b, %.lr.ph26, %.preheader
  %spec.select = phi i64 [ -1, %.preheader ], [ %.01225, %.lr.ph26 ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  ret i64 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5folly6detail27qfind_first_byte_of_bytesetENS0_15StringPieceLiteES1_(ptr %0, ptr %1, ptr nofree readonly captures(address) %2, ptr nofree readnone captures(address) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.folly::SparseByteSet", align 2 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  %.not18 = icmp eq ptr %2, %3
  br i1 %.not18, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 258 ; 2 uses
  br label %bb.b

.preheader:                                       ; preds = %_ZN5folly13SparseByteSet3addEh.exit, %bb.a
  %i.c = phi i16 [ 0, %bb.a ], [ %i.x, %_ZN5folly13SparseByteSet3addEh.exit ]
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 258
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f
  %.not1520.not = icmp eq ptr %1, %0
  br i1 %.not1520.not, label %_ZNK5folly13SparseByteSet8containsEh.exit._crit_edge, label %.lr.ph22

.lr.ph22:                                         ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 2
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %_ZN5folly13SparseByteSet3addEh.exit
  %.01419 = phi ptr [ %2, %.lr.ph ], [ %i.y, %_ZN5folly13SparseByteSet3addEh.exit ] ; 2 uses
  %i.i = phi i16 [ 0, %.lr.ph ], [ %i.x, %_ZN5folly13SparseByteSet3addEh.exit ] ; 5 uses
  %i.j = load i8, ptr %.01419, align 1, !tbaa !12 ; 3 uses
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12    ; 2 uses
  %i.n = zext i8 %i.m to i16
  %i.o = icmp ugt i16 %i.i, %i.n
  br i1 %i.o, label %_ZNK5folly13SparseByteSet8containsEh.exit.i, label %_ZNK5folly13SparseByteSet8containsEh.exit.thread.i

_ZNK5folly13SparseByteSet8containsEh.exit.i:      ; preds = %bb.b
  %i.p = zext i8 %i.m to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !12
  %i.s = icmp eq i8 %i.r, %i.j
  br i1 %i.s, label %_ZN5folly13SparseByteSet3addEh.exit, label %_ZNK5folly13SparseByteSet8containsEh.exit.thread.i

_ZNK5folly13SparseByteSet8containsEh.exit.thread.i: ; preds = %_ZNK5folly13SparseByteSet8containsEh.exit.i, %bb.b
  %i.t = zext i16 %i.i to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.t
  store i8 %i.j, ptr %i.u, align 1, !tbaa !12
  %i.v = trunc i16 %i.i to i8
  store i8 %i.v, ptr %i.l, align 1, !tbaa !12
  %i.w = add i16 %i.i, 1
  br label %_ZN5folly13SparseByteSet3addEh.exit

_ZN5folly13SparseByteSet3addEh.exit:              ; preds = %_ZNK5folly13SparseByteSet8containsEh.exit.i, %_ZNK5folly13SparseByteSet8containsEh.exit.thread.i
  %i.x = phi i16 [ %i.i, %_ZNK5folly13SparseByteSet8containsEh.exit.i ], [ %i.w, %_ZNK5folly13SparseByteSet8containsEh.exit.thread.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01419, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.y, %3
  br i1 %.not, label %.preheader, label %bb.b

bb.c:                                             ; preds = %.lr.ph22, %_ZNK5folly13SparseByteSet8containsEh.exit.thread
  %.01221 = phi i64 [ 0, %.lr.ph22 ], [ %i.ak, %_ZNK5folly13SparseByteSet8containsEh.exit.thread ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.01221
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !12   ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !12  ; 2 uses
  %i.ae = zext i8 %i.ad to i16
  %i.af = icmp ugt i16 %i.c, %i.ae
  br i1 %i.af, label %_ZNK5folly13SparseByteSet8containsEh.exit, label %_ZNK5folly13SparseByteSet8containsEh.exit.thread

_ZNK5folly13SparseByteSet8containsEh.exit:        ; preds = %bb.c
  %i.ag = zext i8 %i.ad to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !12
  %i.aj = icmp eq i8 %i.ai, %i.aa
  br i1 %i.aj, label %_ZNK5folly13SparseByteSet8containsEh.exit._crit_edge, label %_ZNK5folly13SparseByteSet8containsEh.exit.thread

_ZNK5folly13SparseByteSet8containsEh.exit.thread: ; preds = %bb.c, %_ZNK5folly13SparseByteSet8containsEh.exit
  %i.ak = add nuw i64 %.01221, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.g
  br i1 %exitcond.not, label %_ZNK5folly13SparseByteSet8containsEh.exit._crit_edge, label %bb.c, !llvm.loop !17

_ZNK5folly13SparseByteSet8containsEh.exit._crit_edge: ; preds = %_ZNK5folly13SparseByteSet8containsEh.exit.thread, %_ZNK5folly13SparseByteSet8containsEh.exit, %.preheader
  %spec.select = phi i64 [ -1, %.preheader ], [ %.01221, %_ZNK5folly13SparseByteSet8containsEh.exit ], [ -1, %_ZNK5folly13SparseByteSet8containsEh.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  ret i64 %spec.select
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!10, !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !10, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
end_hunk_0
