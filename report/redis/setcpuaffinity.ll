Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/setcpuaffinity?download=true
inline.NumInlined: 7
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cpu_set_t = type { [16 x i64] }

; Function Attrs: nounwind uwtable
define dso_local void @setcpuaffinity(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %1 = alloca %struct.cpu_set_t, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  br label %bb.c

.loopexit:                                        ; preds = %bb.n
  br i1 %.not7.i, label %bb.o, label %bb.c, !llvm.loop !13

bb.c:                                             ; preds = %bb.b, %.loopexit
  %.021110 = phi ptr [ %0, %bb.b ], [ %i.c, %.loopexit ] ; 4 uses
  %i.b = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %.021110, i32 noundef 44) #7 ; 2 uses
  %.not7.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = load i8, ptr %.021110, align 1, !tbaa !19 ; 2 uses
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__ctype_b_loc() #8        ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = sext i8 %i.d to i64
  %i.i = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !23
  %i.k = and i16 %i.j, 2048
  %.not.i44 = icmp eq i16 %i.k, 0
  br i1 %.not.i44, label %.critedge, label %next_num.exit

next_num.exit:                                    ; preds = %bb.d
  %i.l = call i64 @__isoc23_strtoul(ptr noundef nonnull %.021110, ptr noundef nonnull %i.a, i32 noundef 10) #6
  %i.m = trunc i64 %i.l to i32                    ; 4 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !17   ; 5 uses
  %.not107 = icmp eq ptr %.021110, %i.n
  br i1 %.not107, label %.critedge, label %bb.e

bb.e:                                             ; preds = %next_num.exit
  %.not.i46 = icmp eq ptr %i.n, null
  br i1 %.not.i46, label %.preheader.preheader, label %next_token.exit55

next_token.exit55:                                ; preds = %bb.e
  %i.o = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.n, i32 noundef 45) #7 ; 3 uses
  %.not7.i48 = icmp ne ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 3 uses
  %i.q = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.n, i32 noundef 44) #7 ; 3 uses
  %.not7.i53 = icmp eq ptr %i.q, null             ; 2 uses
  %i.r = icmp ult ptr %i.o, %i.q
  %or.cond = or i1 %.not7.i53, %i.r
  %or.cond106 = select i1 %.not7.i48, i1 %or.cond, i1 false
  br i1 %or.cond106, label %bb.f, label %.preheader.preheader

bb.f:                                             ; preds = %next_token.exit55
  %i.s = load i8, ptr %i.p, align 1, !tbaa !19    ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.v = sext i8 %i.s to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !23
  %i.y = and i16 %i.x, 2048
  %.not.i56 = icmp eq i16 %i.y, 0
  br i1 %.not.i56, label %.critedge, label %next_num.exit59

next_num.exit59:                                  ; preds = %bb.g
  %i.z = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.p, ptr noundef nonnull %i.a, i32 noundef 10) #6
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !17  ; 6 uses
  %.not108 = icmp eq ptr %i.p, %i.ab
  br i1 %.not108, label %.critedge, label %bb.h

bb.h:                                             ; preds = %next_num.exit59
  %.not35 = icmp eq ptr %i.ab, null
  br i1 %.not35, label %next_token.exit55.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !19
  %.not36 = icmp eq i8 %i.ac, 0
  br i1 %.not36, label %next_token.exit55.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.ab, i32 noundef 58) #7 ; 3 uses
  %.not7.i62 = icmp ne ptr %i.ad, null            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 3 uses
  %2 = icmp ult ptr %i.ad, %i.q
  %not..not7.i62 = xor i1 %.not7.i62, true
  %3 = select i1 %not..not7.i62, i1 true, i1 %2
  %or.cond40 = or i1 %.not7.i53, %3
  %or.cond41 = select i1 %.not7.i62, i1 %or.cond40, i1 false
  br i1 %or.cond41, label %bb.k, label %next_token.exit55.thread

bb.k:                                             ; preds = %bb.j
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !19  ; 2 uses
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.ai = sext i8 %i.af to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !23
  %i.al = and i16 %i.ak, 2048
  %.not.i65 = icmp eq i16 %i.al, 0
  br i1 %.not.i65, label %.critedge, label %next_num.exit68

next_num.exit68:                                  ; preds = %bb.l
  %i.am = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a, i32 noundef 10) #6
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.ap = icmp eq ptr %i.ae, %i.ao
  %i.aq = icmp eq i32 %i.an, 0
  %or.cond43 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond43, label %.critedge, label %next_token.exit55.thread

next_token.exit55.thread:                         ; preds = %bb.h, %bb.i, %next_num.exit68, %bb.j
  %i.ar = phi ptr [ %i.ab, %bb.i ], [ %i.ao, %next_num.exit68 ], [ %i.ab, %bb.j ], [ null, %bb.h ]
  %.0 = phi i32 [ 1, %bb.i ], [ %i.an, %next_num.exit68 ], [ 1, %bb.j ], [ 1, %bb.h ]
  %i.as = icmp slt i32 %i.aa, %i.m
  br i1 %i.as, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e, %next_token.exit55, %next_token.exit55.thread
  %.0125 = phi i32 [ %.0, %next_token.exit55.thread ], [ 1, %next_token.exit55 ], [ 1, %bb.e ]
  %.076124 = phi i32 [ %i.aa, %next_token.exit55.thread ], [ %i.m, %next_token.exit55 ], [ %i.m, %bb.e ]
  %i.at = phi ptr [ %i.ar, %next_token.exit55.thread ], [ %i.n, %next_token.exit55 ], [ null, %bb.e ] ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.n
  %.078109 = phi i32 [ %i.bc, %bb.n ], [ %i.m, %.preheader.preheader ] ; 3 uses
  %i.au = icmp ult i32 %.078109, 1024
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader
  %i.av = zext nneg i32 %.078109 to i64           ; 2 uses
  %i.aw = and i64 %i.av, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = lshr i64 %i.av, 6
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !25
  %i.bb = or i64 %i.ba, %i.ax
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %bb.m
  %i.bc = add nsw i32 %.078109, %.0125            ; 2 uses
  %.not39 = icmp sgt i32 %i.bc, %.076124
  br i1 %.not39, label %.loopexit, label %.preheader, !llvm.loop !14

bb.o:                                             ; preds = %.loopexit
  %.not30 = icmp eq ptr %i.at, null
  br i1 %.not30, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = load i8, ptr %i.at, align 1, !tbaa !19
  %.not31 = icmp eq i8 %i.bd, 0
  br i1 %.not31, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.be = call i32 @sched_setaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %1) #6 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %bb.d, %bb.c, %next_token.exit55.thread, %next_num.exit, %next_num.exit59, %next_num.exit68, %bb.p, %bb.a, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @sched_setaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = distinct !{!13, !18}
!14 = distinct !{!14, !18}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!10, !10, i64 0}
!20 = !{!"p1 short", !15, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"short", !10, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"long", !10, i64 0}
!25 = !{!24, !24, i64 0}
end_hunk_0
