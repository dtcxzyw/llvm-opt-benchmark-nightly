Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/smpte436m_to_eia608?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVBitStreamFilter = type { ptr, ptr, ptr }
%struct.AVSmpte436mAncIterator = type { i16, i32, ptr }
%struct.AVSmpte436mCodedAnc = type { i16, i32, i32, i16, i32, [348 x i8] }
%struct.AVSmpte291mAnc8bit = type { i8, i8, i8, [255 x i8], i8 }

@.str = private unnamed_addr constant [20 x i8] c"smpte436m_to_eia608\00", align 1
@.compoundliteral = internal constant [2 x i32] [i32 98317, i32 0], align 4
@ff_smpte436m_to_eia608_bsf = local_unnamed_addr constant { %struct.AVBitStreamFilter, i32, [4 x i8], ptr, ptr, ptr, ptr } { %struct.AVBitStreamFilter { ptr @.str, ptr @.compoundliteral, ptr null }, i32 0, [4 x i8] zeroinitializer, ptr @ff_smpte436m_to_eia608_init, ptr @ff_smpte436m_to_eia608_filter, ptr null, ptr null }, align 8

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @ff_smpte436m_to_eia608_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  store <2 x i32> <i32 3, i32 94218>, ptr %i.b, align 8, !tbaa !16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @ff_smpte436m_to_eia608_filter(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %2 = alloca %struct.AVSmpte436mAncIterator, align 8 ; 5 uses
  %3 = alloca %struct.AVSmpte436mCodedAnc, align 4 ; 5 uses
  %4 = alloca %struct.AVSmpte291mAnc8bit, align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = call i32 @ff_bsf_get_packet(ptr noundef %0, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25
  %i.i = call i32 @av_smpte_436m_anc_iter_init(ptr noundef nonnull %2, ptr noundef %i.f, i32 noundef %i.h) #4 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.k = call i32 @av_smpte_436m_anc_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #4 ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.p = load i32, ptr %i.m, align 4, !tbaa !26
  %i.q = load i16, ptr %i.n, align 4, !tbaa !29
  %i.r = call i32 @av_smpte_291m_anc_8bit_decode(ptr noundef nonnull %4, i32 noundef %i.p, i16 noundef zeroext %i.q, ptr noundef nonnull %i.o, ptr noundef %0) #4 ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = call i32 @av_smpte_291m_anc_8bit_extract_cta_708(ptr noundef nonnull %4, ptr noundef null, ptr noundef %0) #4 ; 4 uses
  %i.u = icmp eq i32 %i.t, -11
  br i1 %i.u, label %bb.h, label %bb.e, !llvm.loop !30

bb.e:                                             ; preds = %bb.d
  %i.v = icmp slt i32 %i.t, 0
  br i1 %i.v, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = mul nuw nsw i32 %i.t, 3
  %i.x = call i32 @av_new_packet(ptr noundef %1, i32 noundef %i.w) #4 ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.aa = call i32 @av_packet_copy_props(ptr noundef %1, ptr noundef %i.z) #4 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.thread, label %.thread38

.thread38:                                        ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.ae = call i32 @av_smpte_291m_anc_8bit_extract_cta_708(ptr noundef nonnull %4, ptr noundef %i.ad, ptr noundef %0) #4 ; 0 uses
  call void @av_packet_free(ptr noundef nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %bb.j

.thread:                                          ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %.123.ph = phi i32 [ %i.aa, %bb.g ], [ %i.x, %bb.f ], [ %i.t, %bb.e ], [ %i.r, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  %i.af = call i32 @av_smpte_436m_anc_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #4 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.lcssa = phi i32 [ %i.k, %.preheader ], [ %i.af, %bb.h ] ; 2 uses
  %.not = icmp eq i32 %.lcssa, -541478725
  %spec.store.select = select i1 %.not, i32 -11, i32 %.lcssa
  br label %bb.i

bb.i:                                             ; preds = %.thread, %._crit_edge, %bb.b
  %.2 = phi i32 [ %i.i, %bb.b ], [ %.123.ph, %.thread ], [ %spec.store.select, %._crit_edge ]
  call void @av_packet_unref(ptr noundef %1) #4
  call void @av_packet_free(ptr noundef nonnull %i.a) #4
  br label %bb.j

bb.j:                                             ; preds = %.thread38, %bb.i
  %.3 = phi i32 [ %.2, %bb.i ], [ 0, %.thread38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.4 = phi i32 [ %.3, %bb.j ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @ff_bsf_get_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_smpte_436m_anc_iter_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_smpte_436m_anc_iter_next(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_smpte_291m_anc_8bit_decode(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_smpte_291m_anc_8bit_extract_cta_708(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_new_packet(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_packet_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_packet_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !14, i64 32}
!10 = !{!"AVBSFContext", !11, i64 0, !13, i64 8, !12, i64 16, !14, i64 24, !14, i64 32, !15, i64 40, !15, i64 48}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS17AVBitStreamFilter", !12, i64 0}
!14 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!6, !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS8AVPacket", !12, i64 0}
!19 = !{!20, !23, i64 24}
!20 = !{!"AVPacket", !21, i64 0, !22, i64 8, !22, i64 16, !23, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !24, i64 48, !6, i64 56, !22, i64 64, !22, i64 72, !12, i64 80, !21, i64 88, !15, i64 96}
!21 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!22 = !{!"long", !7, i64 0}
!23 = !{!"p1 omnipotent char", !12, i64 0}
!24 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!25 = !{!20, !6, i64 32}
!26 = !{!27, !6, i64 8}
!27 = !{!"AVSmpte436mCodedAnc", !28, i64 0, !6, i64 4, !6, i64 8, !28, i64 12, !6, i64 16, !7, i64 20}
!28 = !{!"short", !7, i64 0}
!29 = !{!27, !28, i64 12}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
end_hunk_0
