Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/reachable_weighted?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.opal_reachable_base_module_t = type { ptr, ptr, ptr }
%struct.mca_base_framework_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.opal_list_t, %struct.opal_list_t }
%struct.opal_list_t = type { %struct.opal_object_t, %struct.opal_list_item_t, i64 }
%struct.opal_object_t = type { ptr, i32 }
%struct.opal_list_item_t = type { %struct.opal_object_t, ptr, ptr, i32 }

@opal_reachable_weighted_module = local_unnamed_addr constant %struct.opal_reachable_base_module_t { ptr @weighted_init, ptr @weighted_fini, ptr @weighted_reachable }, align 8
@init_cntr = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"IPv4 PUBLIC SAME NETWORK\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"IPv4 PUBLIC DIFFERENT NETWORK\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"IPv4 PRIVATE SAME NETWORK\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"IPv4 PRIVATE DIFFERENT NETWORK\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"IPv4 NO CONNECTION\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Address type mismatch\00", align 1
@opal_reachable_base_framework = external local_unnamed_addr global %struct.mca_base_framework_t, align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"reachable:weighted: path from %s to %s: %s\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @weighted_init() #0 {
bb.a:
  %i.a = load i32, ptr @init_cntr, align 4, !tbaa !8
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @init_cntr, align 4, !tbaa !8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @weighted_fini() #0 {
bb.a:
  %i.a = load i32, ptr @init_cntr, align 4, !tbaa !8
  %i.b = add nsw i32 %i.a, -1
  store i32 %i.b, ptr @init_cntr, align 4, !tbaa !8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @weighted_reachable(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1) #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load volatile i64, ptr %i.c, align 8, !tbaa !18
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load volatile i64, ptr %i.f, align 8, !tbaa !18
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call ptr @opal_reachable_allocate(i32 noundef %i.e, i32 noundef %i.h) #6 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load volatile ptr, ptr %i.l, align 8, !tbaa !19 ; 2 uses
  %.not28 = icmp eq ptr %i.m, %i.k
  br i1 %.not28, label %.loopexit, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 127
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 127
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph32, %._crit_edge
  %indvars.iv34 = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next35, %._crit_edge ] ; 2 uses
  %.01930 = phi ptr [ %i.m, %.lr.ph32 ], [ %i.bz, %._crit_edge ] ; 4 uses
  %i.s = load volatile ptr, ptr %i.o, align 8, !tbaa !19 ; 2 uses
  %.not2425 = icmp eq ptr %i.s, %i.n
  br i1 %.not2425, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.01930, i64 88 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01930, i64 216 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01930, i64 220 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %get_weights.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %get_weights.exit ] ; 2 uses
  %.027 = phi ptr [ %i.s, %.lr.ph ], [ %i.bx, %get_weights.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.w = getelementptr inbounds nuw i8, ptr %.027, i64 88 ; 6 uses
  %i.x = call ptr @opal_net_get_hostname(ptr noundef nonnull %i.t) #6
  call void @opal_string_copy(ptr noundef nonnull %i.a, ptr noundef %i.x, i64 noundef 128) #6
  store i8 0, ptr %i.p, align 1, !tbaa !20
  %i.y = call ptr @opal_net_get_hostname(ptr noundef nonnull %i.w) #6
  call void @opal_string_copy(ptr noundef nonnull %i.b, ptr noundef %i.y, i64 noundef 128) #6
  store i8 0, ptr %i.q, align 1, !tbaa !20
  %i.z = load i16, ptr %i.t, align 2, !tbaa !23
  %i.aa = icmp eq i16 %i.z, 2
  br i1 %i.aa, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.ab = load i16, ptr %i.w, align 2, !tbaa !23
  %i.ac = icmp eq i16 %i.ab, 2
  br i1 %i.ac, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.ad = call zeroext i1 @opal_net_addr_isipv4public(ptr noundef nonnull %i.t) #6
  br i1 %i.ad, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ae = call zeroext i1 @opal_net_addr_isipv4public(ptr noundef nonnull %i.w) #6
  br i1 %i.ae, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.u, align 8, !tbaa !26
  %i.ag = call zeroext i1 @opal_net_samenetwork(ptr noundef nonnull %i.t, ptr noundef nonnull %i.w, i32 noundef %i.af) #6
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !27  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.027, i64 220
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !27 ; 2 uses
  %i.ak = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.aj)
  %i.al = sitofp i32 %i.ak to double
  %i.am = sub nsw i32 %i.ah, %i.aj
  %i.an = call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.ao = add nuw i32 %i.an, 1
  %i.ap = uitofp i32 %i.ao to double
  %i.aq = fdiv nnan double 1.000000e+00, %i.ap
  %i.ar = fadd nnan double %i.aq, %i.al           ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = fmul nnan double %i.ar, 1.000000e+02
  %i.at = fptosi double %i.as to i32
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.au = fmul nnan double %i.ar, 9.000000e+01
  %i.av = fptosi double %i.au to i32
  br label %bb.p

bb.k:                                             ; preds = %bb.g, %bb.f
  %i.aw = call zeroext i1 @opal_net_addr_isipv4public(ptr noundef nonnull %i.t) #6
  br i1 %i.aw, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = call zeroext i1 @opal_net_addr_isipv4public(ptr noundef nonnull %i.w) #6
  br i1 %i.ax, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load i32, ptr %i.u, align 8, !tbaa !26
  %i.az = call zeroext i1 @opal_net_samenetwork(ptr noundef nonnull %i.t, ptr noundef nonnull %i.w, i32 noundef %i.ay) #6
  %i.ba = load i32, ptr %i.v, align 4, !tbaa !27  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.027, i64 220
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !27 ; 2 uses
  %i.bd = call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.bc)
  %i.be = sitofp i32 %i.bd to double
  %i.bf = sub nsw i32 %i.ba, %i.bc
  %i.bg = call i32 @llvm.abs.i32(i32 %i.bf, i1 true)
  %i.bh = add nuw i32 %i.bg, 1
  %i.bi = uitofp i32 %i.bh to double
  %i.bj = fdiv nnan double 1.000000e+00, %i.bi
  %i.bk = fadd nnan double %i.bj, %i.be           ; 2 uses
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = fmul nnan double %i.bk, 8.000000e+01
  %i.bm = fptosi double %i.bl to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bn = fmul nnan double %i.bk, 5.000000e+01
  %i.bo = fptosi double %i.bn to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.e, %bb.d
  %.027.i = phi ptr [ @.str, %bb.i ], [ @.str.1, %bb.j ], [ @.str.5, %bb.d ], [ @.str.2, %bb.n ], [ @.str.3, %bb.o ], [ @.str.5, %bb.e ], [ @.str.4, %bb.l ], [ @.str.4, %bb.k ]
  %.0.i = phi i32 [ %i.at, %bb.i ], [ %i.av, %bb.j ], [ 0, %bb.d ], [ %i.bm, %bb.n ], [ %i.bo, %bb.o ], [ 0, %bb.e ], [ 0, %bb.l ], [ 0, %bb.k ]
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_reachable_base_framework, i64 76), align 4, !tbaa !32
  %i.bq = call zeroext i1 @opal_output_check_verbosity(i32 noundef 20, i32 noundef %i.bp) #6
  br i1 %i.bq, label %bb.q, label %get_weights.exit

bb.q:                                             ; preds = %bb.p
  %i.br = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_reachable_base_framework, i64 76), align 4, !tbaa !32
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.br, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %.027.i) #6
  br label %get_weights.exit

get_weights.exit:                                 ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.bs = load ptr, ptr %i.r, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv34
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !37
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  store i32 %.0.i, ptr %i.bv, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.027, i64 16
  %i.bx = load volatile ptr, ptr %i.bw, align 8, !tbaa !38 ; 2 uses
  %.not24 = icmp eq ptr %i.bx, %i.n
  br i1 %.not24, label %._crit_edge, label %bb.d, !llvm.loop !9

._crit_edge:                                      ; preds = %get_weights.exit, %bb.c
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %i.by = getelementptr inbounds nuw i8, ptr %.01930, i64 16
  %i.bz = load volatile ptr, ptr %i.by, align 8, !tbaa !38 ; 2 uses
  %.not = icmp eq ptr %i.bz, %i.k
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !10

.loopexit:                                        ; preds = %._crit_edge, %bb.b, %bb.a
  ret ptr %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @opal_reachable_allocate(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @opal_string_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @opal_net_get_hostname(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @opal_net_addr_isipv4public(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @opal_net_samenetwork(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @opal_output_check_verbosity(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @opal_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = distinct !{!9, !39}
!10 = distinct !{!10, !39}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 _ZTS12opal_class_t", !11, i64 0}
!13 = !{!"opal_object_t", !12, i64 0, !5, i64 8}
!14 = !{!"p1 _ZTS16opal_list_item_t", !11, i64 0}
!15 = !{!"opal_list_item_t", !13, i64 0, !14, i64 16, !14, i64 24, !5, i64 32}
!16 = !{!"long", !4, i64 0}
!17 = !{!"opal_list_t", !13, i64 0, !15, i64 16, !16, i64 56}
!18 = !{!17, !16, i64 56}
!19 = !{!17, !14, i64 32}
!20 = !{!4, !4, i64 0}
!21 = !{!"short", !4, i64 0}
!22 = !{!"sockaddr", !21, i64 0, !4, i64 2}
!23 = !{!22, !21, i64 0}
!24 = !{!"sockaddr_storage", !21, i64 0, !4, i64 2, !16, i64 120}
!25 = !{!"opal_if_t", !15, i64 0, !4, i64 40, !5, i64 72, !21, i64 76, !21, i64 78, !5, i64 80, !5, i64 84, !24, i64 88, !5, i64 216, !5, i64 220, !4, i64 224, !5, i64 232}
!26 = !{!25, !5, i64 216}
!27 = !{!25, !5, i64 220}
!28 = !{!"p1 omnipotent char", !11, i64 0}
!29 = !{!"any p2 pointer", !11, i64 0}
!30 = !{!"p2 _ZTS26mca_base_component_2_1_0_t", !29, i64 0}
!31 = !{!"mca_base_framework_t", !28, i64 0, !28, i64 8, !28, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !5, i64 48, !5, i64 52, !30, i64 56, !28, i64 64, !5, i64 72, !5, i64 76, !17, i64 80, !17, i64 144}
!32 = !{!31, !5, i64 76}
!33 = !{!"p2 int", !29, i64 0}
!34 = !{!"opal_reachable_t", !13, i64 0, !5, i64 16, !5, i64 20, !33, i64 24, !11, i64 32}
!35 = !{!34, !33, i64 24}
!36 = !{!"p1 int", !11, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!15, !14, i64 16}
!39 = !{!"llvm.loop.mustprogress"}
end_hunk_0
