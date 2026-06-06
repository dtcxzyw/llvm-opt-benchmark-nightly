begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@getInsertCommand.name = internal global [17 x i8] c"getInsertCommand\00", align 16
@.str = private unnamed_addr constant [28 x i8] c"improper format - early EOI\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unknown data object type\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"improper format - type must be an integer\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"low-level I/O error\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"allocation failure for non-key attribute\00", align 1
@switch.table.getInsertCommand = private unnamed_addr constant [3 x i8] c"\12\193", align 8

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 5) i64 @getInsertCommand(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca float, align 4                    ; 33 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.d = call i64 @getInt(ptr noundef %0, ptr noundef nonnull %i.a) #3
  switch i64 %i.d, label %bb.e [
    i64 3, label %bb.d
    i64 1, label %bb.b
    i64 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @errorMessage(ptr noundef nonnull @.str, i8 noundef signext 0) #3
  call void @errorMessage(ptr noundef nonnull @getInsertCommand.name, i8 noundef signext 1) #3
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  call void @errorMessage(ptr noundef nonnull @.str.1, i8 noundef signext 0) #3
  call void @errorMessage(ptr noundef nonnull @getInsertCommand.name, i8 noundef signext 1) #3
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  call void @errorMessage(ptr noundef nonnull @.str.2, i8 noundef signext 0) #3
  call void @errorMessage(ptr noundef nonnull @getInsertCommand.name, i8 noundef signext 1) #3
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !8
  %switch.tableidx = add i64 %i.e, -1             ; 3 uses
  %i.f = icmp ult i64 %switch.tableidx, 3
  br i1 %i.f, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @errorMessage(ptr noundef nonnull @.str.1, i8 noundef signext 0) #3
  call void @errorMessage(ptr noundef nonnull @getInsertCommand.name, i8 noundef signext 1) #3
  br label %.loopexit

switch.lookup:                                    ; preds = %bb.e
  %switch.idx.cast = trunc nuw i64 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 1
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.getInsertCommand, i64 %switch.tableidx
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.g = call ptr @createDataObject(i32 noundef %switch.offset) #3 ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !10
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %.preheader54.preheader

.preheader54.preheader:                           ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.i = call i64 @getKeyAttribute(ptr noundef %0, ptr noundef nonnull %i.b) #3
  switch i64 %i.i, label %.preheader54.1 [
    i64 0, label %bb.h
    i64 1, label %bb.j
    i64 2, label %bb.i
  ]

bb.g:                                             ; preds = %switch.lookup
  call void @errorMessage(ptr noundef nonnull @.str.3, i8 noundef signext 0) #3
  call void @errorMessage(ptr noundef nonnull @getInsertCommand.name, i8 noundef signext 1) #3
  br label %.loopexit

bb.h:                                             ; preds = %.preheader54.preheader
  %i.j = load float, ptr %i.b, align 4, !tbaa !13
  %i.k = load ptr, ptr %1, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  store float %i.j, ptr %i.m, align 8, !tbaa !17
  br label %.preheader54.1

bb.i:                                             ; preds = %.preheader54.7, %.preheader54.6, %.preheader54.5, %.preheader54.4, %.preheader54.3, %.preheader54.2, %.preheader54.1, %.preheader54.preheader
  %.03859.lcssa63 = phi i64 [ 0, %.preheader54.preheader ], [ 1, %.preheader54.1 ], [ %i.x, %.preheader54.2 ], [ 3, %.preheader54.3 ], [ 4, %.preheader54.4 ], [ 5, %.preheader54.5 ], [ 6, %.preheader54.6 ], [ 7, %.preheader54.7 ]
  br label %bb.j

bb.j:                                             ; preds = %.preheader54.preheader, %.preheader54.1, %.preheader54.2, %.preheader54.3, %.preheader54.4, %.preheader54.5, %.preheader54.6, %.preheader54.7, %bb.i
  %.str.4.sink = phi ptr [ @.str.4, %bb.i ], [ @.str, %.preheader54.7 ], [ @.str, %.preheader54.6 ], [ @.str, %.preheader54.5 ], [ @.str, %.preheader54.4 ], [ @.str, %.preheader54.3 ], [ @.str, %.preheader54.2 ], [ @.str, %.preheader54.1 ], [ @.str, %.preheader54.preheader ]
  %.03859.lcssa63.sink = phi i64 [ %.03859.lcssa63, %bb.i ], [ 7, %.preheader54.7 ], [ 6, %.preheader54.6 ], [ 5, %.preheader54.5 ], [ 4, %.preheader54.4 ], [ 3, %.preheader54.3 ], [ 2, %.preheader54.2 ], [ %i.r, %.preheader54.1 ], [ 0, %.preheader54.preheader ]
  %.141 = phi i64 [ 1, %bb.i ], [ 2, %.preheader54.7 ], [ 2, %.preheader54.6 ], [ 2, %.preheader54.5 ], [ 2, %.preheader54.4 ], [ 2, %.preheader54.3 ], [ 2, %.preheader54.2 ], [ 2, %.preheader54.1 ], [ 2, %.preheader54.preheader ]
  call void @errorMessage(ptr noundef nonnull %.str.4.sink, i8 noundef signext 0) #3
  call void @errorMessage(ptr noundef nonnull @getInsertCommand.name, i8 noundef signext 1) #3
  %i.n = load ptr, ptr %1, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.03859.lcssa63.sink
  store float f0xFF7FFFFF, ptr %i.q, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  br label %.loopexit

.preheader54.1:                                   ; preds = %.preheader54.preheader, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.r = call i64 @getKeyAttribute(ptr noundef %0, ptr noundef nonnull %i.b) #3 ; 2 uses
  switch i64 %i.r, label %.preheader54.2 [
    i64 0, label %bb.k
    i64 1, label %bb.j
    i64 2, label %bb.i
  ]

bb.k:                                             ; preds = %.preheader54.1
  %i.s = load float, ptr %i.b, align 4, !tbaa !13
  %i.t = load ptr, ptr %1, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store float %i.s, ptr %i.w, align 8, !tbaa !17
  br label %.preheader54.2

.preheader54.2:                                   ; preds = %bb.k, %.preheader54.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.x = call i64 @getKeyAttribute(ptr noundef %0, ptr noundef nonnull %i.b) #3 ; 2 uses
  switch i64 %i.x, label %.preheader54.3 [
    i64 0, label %bb.l
    i64 1, label %bb.j
    i64 2, label %bb.i
  ]

bb.l:                                             ; preds = %.preheader54.2
  %i.y = load float, ptr %i.b, align 4, !tbaa !13
  %i.z = load ptr, ptr %1, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store float %i.y, ptr %i.ac, align 8, !tbaa !17
  br label %.preheader54.3

.preheader54.3:                                   ; preds = %bb.l, %.preheader54.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.ad = call i64 @getKeyAttribute(ptr noundef %0, ptr noundef nonnull %i.b) #3
  switch i64 %i.ad, label %.preheader54.4 [
    i64 0, label %bb.m
    i64 1, label %bb.j
    i64 2, label %bb.i
  ]

bb.m:                                             ; preds = %.preheader54.3
  %i.ae = load float, ptr %i.b, align 4, !tbaa !13
  %i.af = load ptr, ptr %1, align 8, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store float %i.ae, ptr %i.ai, align 8, !tbaa !17
  br label %.preheader54.4

.preheader54.4:                                   ; preds = %bb.m, %.preheader54.3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.aj = call i64 @getKeyAttribute(ptr noundef %0, ptr noundef nonnull %i.b) #3
  switch i64 %i.aj, label %.preheader54.5 [
    i64 0, label %bb.n
    i64 1, label %bb.j
    i64 2, label %bb.i
  ]

bb.n:                                             ; preds = %.preheader54.4
  %i.ak = load float, ptr %i.b, align 4, !tbaa !13
  %i.al = load ptr, ptr %1, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store float %i.ak, ptr %i.ao, align 8, !tbaa !17
  br label %.preheader54.5

.preheader54.5:                                   ; preds = %bb.n, %.preheader54.4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.ap = call i64 @getKeyAttribute(ptr noundef %0, ptr noundef nonnull %i.b) #3
  switch i64 %i.ap, label %.preheader54.6 [
    i64 0, label %bb.o
    i64 1, label %bb.j
    i64 2, label %bb.i
  ]

bb.o:                                             ; preds = %.preheader54.5
  %i.aq = load float, ptr %i.b, align 4, !tbaa !13
  %i.ar = load ptr, ptr %1, align 8, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store float %i.aq, ptr %i.au, align 8, !tbaa !17
  br label %.preheader54.6

.preheader54.6:                                   ; preds = %bb.o, %.preheader54.5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.av = call i64 @getKeyAttribute(ptr noundef %0, ptr noundef nonnull %i.b) #3
  switch i64 %i.av, label %.preheader54.7 [
    i64 0, label %bb.p
    i64 1, label %bb.j
    i64 2, label %bb.i
  ]

bb.p:                                             ; preds = %.preheader54.6
  %i.aw = load float, ptr %i.b, align 4, !tbaa !13
  %i.ax = load ptr, ptr %1, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store float %i.aw, ptr %i.ba, align 8, !tbaa !17
  br label %.preheader54.7

.preheader54.7:                                   ; preds = %bb.p, %.preheader54.6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.bb = call i64 @getKeyAttribute(ptr noundef %0, ptr noundef nonnull %i.b) #3
  switch i64 %i.bb, label %.preheader.preheader [
    i64 0, label %bb.q
    i64 1, label %bb.j
    i64 2, label %bb.i
  ]

bb.q:                                             ; preds = %.preheader54.7
  %i.bc = load float, ptr %i.b, align 4, !tbaa !13
  %i.bd = load ptr, ptr %1, align 8, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  store float %i.bc, ptr %i.bg, align 8, !tbaa !17
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.q, %.preheader54.7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.s
  %.13960 = phi i64 [ %i.br, %bb.s ], [ 8, %.preheader.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.bh = call i64 @getNonKeyAttribute(ptr noundef %0, ptr noundef nonnull %i.c) #3
  switch i64 %i.bh, label %bb.s [
    i64 0, label %bb.r
    i64 2, label %.loopexit72
    i64 1, label %.loopexit76
  ]

bb.r:                                             ; preds = %.preheader
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.bj = load ptr, ptr %1, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !15
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.13960
  store ptr %i.bi, ptr %i.bm, align 8, !tbaa !17
  br label %bb.s

.loopexit76:                                      ; preds = %.preheader
  br label %.loopexit72

.loopexit72:                                      ; preds = %.preheader, %.loopexit76
  %.str.5.sink = phi ptr [ @.str.5, %.loopexit76 ], [ @.str, %.preheader ]
  %.3 = phi i64 [ 4, %.loopexit76 ], [ 2, %.preheader ]
  call void @errorMessage(ptr noundef nonnull %.str.5.sink, i8 noundef signext 0) #3
  call void @errorMessage(ptr noundef nonnull @getInsertCommand.name, i8 noundef signext 1) #3
  %i.bn = load ptr, ptr %1, align 8, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.13960
  store ptr null, ptr %i.bq, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  br label %.loopexit

bb.s:                                             ; preds = %.preheader, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  %i.br = add nuw nsw i64 %.13960, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %switch.ext
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !20

.loopexit:                                        ; preds = %bb.s, %.loopexit72, %bb.j, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %.4 = phi i64 [ 4, %bb.g ], [ %.141, %bb.j ], [ %.3, %.loopexit72 ], [ 1, %bb.d ], [ 3, %bb.f ], [ 2, %bb.b ], [ 1, %bb.c ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i64 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @getInt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @errorMessage(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare ptr @createDataObject(i32 noundef) local_unnamed_addr #2

declare i64 @getKeyAttribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @getNonKeyAttribute(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS10DataObject", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !6, i64 0}
!15 = !{!16, !12, i64 8}
!16 = !{!"DataObject", !5, i64 0, !12, i64 8}
!17 = !{!6, !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 omnipotent char", !12, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
end_hunk_0
