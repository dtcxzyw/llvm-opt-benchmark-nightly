Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_mask_rect?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lv_area_t = type { i32, i32, i32, i32 }
%struct._lv_draw_sw_mask_radius_param_t = type { %struct._lv_draw_sw_mask_common_dsc_t, %struct.anon, ptr }
%struct._lv_draw_sw_mask_common_dsc_t = type { ptr, i32 }
%struct.anon = type { %struct.lv_area_t, i32, i8 }

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_mask_rect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_area_t, align 4          ; 10 uses
  %3 = alloca %struct.lv_area_t, align 4          ; 14 uses
  %4 = alloca %struct._lv_draw_sw_mask_radius_param_t, align 8 ; 5 uses
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.d = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  br i1 %i.d, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !21   ; 4 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !31
  %i.t = add nsw i32 %i.s, -1
  call void @lv_area_set(ptr noundef nonnull %3, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.t) #5
  %i.u = load i32, ptr %i.g, align 8, !tbaa !32
  %i.v = sub nsw i32 0, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 4 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !33
  %i.y = sub nsw i32 0, %i.x
  call void @lv_area_move(ptr noundef nonnull %3, i32 noundef %i.v, i32 noundef %i.y) #5
  call void @lv_draw_buf_clear(ptr noundef %i.l, ptr noundef nonnull %3) #5
  %i.z = load i32, ptr %i.c, align 4, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !34
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !35
  call void @lv_area_set(ptr noundef nonnull %3, i32 noundef %i.z, i32 noundef %i.ac, i32 noundef %i.ad, i32 noundef %i.af) #5
  %i.ag = load i32, ptr %i.g, align 8, !tbaa !32
  %i.ah = sub nsw i32 0, %i.ag
  %i.ai = load i32, ptr %i.w, align 4, !tbaa !33
  %i.aj = sub nsw i32 0, %i.ai
  call void @lv_area_move(ptr noundef nonnull %3, i32 noundef %i.ah, i32 noundef %i.aj) #5
  call void @lv_draw_buf_clear(ptr noundef %i.l, ptr noundef nonnull %3) #5
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !22
  %i.al = load i32, ptr %i.r, align 4, !tbaa !31
  %i.am = load i32, ptr %i.b, align 8, !tbaa !36
  %i.an = add nsw i32 %i.am, -1
  %i.ao = load i32, ptr %i.aa, align 4, !tbaa !34
  call void @lv_area_set(ptr noundef nonnull %3, i32 noundef %i.ak, i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.ao) #5
  %i.ap = load i32, ptr %i.g, align 8, !tbaa !32
  %i.aq = sub nsw i32 0, %i.ap
  %i.ar = load i32, ptr %i.w, align 4, !tbaa !33
  %i.as = sub nsw i32 0, %i.ar
  call void @lv_area_move(ptr noundef nonnull %3, i32 noundef %i.aq, i32 noundef %i.as) #5
  call void @lv_draw_buf_clear(ptr noundef %i.l, ptr noundef nonnull %3) #5
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.au = load i32, ptr %i.at, align 8, !tbaa !37
  %i.av = add nsw i32 %i.au, 1
  %i.aw = load i32, ptr %i.r, align 4, !tbaa !31
  %i.ax = load i32, ptr %i.p, align 4, !tbaa !24
  %i.ay = load i32, ptr %i.aa, align 4, !tbaa !34
  call void @lv_area_set(ptr noundef nonnull %3, i32 noundef %i.av, i32 noundef %i.aw, i32 noundef %i.ax, i32 noundef %i.ay) #5
  %i.az = load i32, ptr %i.g, align 8, !tbaa !32
  %i.ba = sub nsw i32 0, %i.az
  %i.bb = load i32, ptr %i.w, align 4, !tbaa !33
  %i.bc = sub nsw i32 0, %i.bb
  call void @lv_area_move(ptr noundef nonnull %3, i32 noundef %i.ba, i32 noundef %i.bc) #5
  call void @lv_draw_buf_clear(ptr noundef %i.l, ptr noundef nonnull %3) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !38
  call void @lv_draw_sw_mask_radius_init(ptr noundef nonnull %4, ptr noundef nonnull %i.b, i32 noundef %i.be, i1 noundef zeroext false) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr %4, ptr %i.a, align 16, !tbaa !39
  %i.bf = call i32 @lv_area_get_width(ptr noundef nonnull %2) #5
  %.fr71 = freeze i32 %i.bf                       ; 5 uses
  %i.bg = zext i32 %.fr71 to i64                  ; 6 uses
  %i.bh = call ptr @lv_malloc(i64 noundef %i.bg) #5 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !33 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !40
  %.not68 = icmp sgt i32 %i.bj, %i.bl
  br i1 %.not68, label %._crit_edge, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 2 uses
  %.not72 = icmp eq i32 %.fr71, 0
  %i.bn = shl nuw nsw i64 %i.bg, 2                ; 2 uses
  br i1 %.not72, label %.lr.ph70.split, label %.lr.ph70.split.us.preheader

.lr.ph70.split.us.preheader:                      ; preds = %.lr.ph70
  %xtraiter = and i64 %i.bg, 1
  %i.bo = icmp eq i32 %.fr71, 1
  %unroll_iter = and i64 %i.bg, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod81 = trunc i32 %.fr71 to i1
  br label %.lr.ph70.split.us

.lr.ph70.split.us:                                ; preds = %.lr.ph70.split.us.preheader, %..loopexit_crit_edge.us
  %.06369.us = phi i32 [ %i.co, %..loopexit_crit_edge.us ], [ %i.bj, %.lr.ph70.split.us.preheader ] ; 4 uses
  call void @lv_memset(ptr noundef %i.bh, i8 noundef zeroext -1, i64 noundef %i.bg) #5
  %i.bp = load i32, ptr %2, align 4, !tbaa !32
  %i.bq = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.bh, i32 noundef %i.bp, i32 noundef %.06369.us, i32 noundef %.fr71) #5 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %..loopexit_crit_edge.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph70.split.us
  %i.bs = load i32, ptr %2, align 4, !tbaa !32
  %i.bt = load i32, ptr %i.g, align 4, !tbaa !32
  %i.bu = sub nsw i32 %i.bs, %i.bt
  %i.bv = load i32, ptr %i.bm, align 4, !tbaa !33
  %i.bw = sub nsw i32 %.06369.us, %i.bv
  %i.bx = call ptr @lv_draw_layer_go_to_xy(ptr noundef %i.f, i32 noundef %i.bu, i32 noundef %i.bw) #5 ; 4 uses
  %i.by = icmp eq i32 %i.bq, 0
  br i1 %i.by, label %bb.i, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.e
  br i1 %i.bo, label %.preheader.us.epil.preheader, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.h ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.h ], [ 0, %.preheader.us.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !41  ; 2 uses
  %.not66.us = icmp eq i8 %i.ca, -1
  br i1 %.not66.us, label %.preheader.us.1, label %bb.f

bb.f:                                             ; preds = %.preheader.us
  %5 = zext i8 %i.ca to i16
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 3 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !42
  %6 = zext i8 %i.cd to i16
  %7 = mul nuw i16 %6, %5
  %8 = lshr i16 %7, 8
  %9 = trunc nuw i16 %8 to i8
  store i8 %9, ptr %i.cc, align 1, !tbaa !42
  br label %.preheader.us.1

.preheader.us.1:                                  ; preds = %bb.f, %.preheader.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.next
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !41  ; 2 uses
  %.not66.us.1 = icmp eq i8 %i.cf, -1
  br i1 %.not66.us.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader.us.1
  %10 = zext i8 %i.cf to i16
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 3 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !42
  %11 = zext i8 %i.ci to i16
  %12 = mul nuw i16 %11, %10
  %13 = lshr i16 %12, 8
  %14 = trunc nuw i16 %13 to i8
  store i8 %14, ptr %i.ch, align 1, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.us.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.loopexit.unr-lcssa, label %.preheader.us, !llvm.loop !8

bb.i:                                             ; preds = %bb.e
  call void @lv_memset(ptr noundef %i.bx, i8 noundef zeroext 0, i64 noundef range(i64 0, 17179869181) %i.bn) #5
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us.loopexit.unr-lcssa:       ; preds = %bb.h
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %..loopexit_crit_edge.us.loopexit.unr-lcssa, %.preheader.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next.1, %..loopexit_crit_edge.us.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod81)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.epil.init
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !41  ; 2 uses
  %.not66.us.epil = icmp eq i8 %i.ck, -1
  br i1 %.not66.us.epil, label %..loopexit_crit_edge.us, label %bb.j

bb.j:                                             ; preds = %.preheader.us.epil.preheader
  %15 = zext i8 %i.ck to i16
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.epil.init
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 3 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !42
  %16 = zext i8 %i.cn to i16
  %17 = mul nuw i16 %16, %15
  %18 = lshr i16 %17, 8
  %19 = trunc nuw i16 %18 to i8
  store i8 %19, ptr %i.cm, align 1, !tbaa !42
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %..loopexit_crit_edge.us.loopexit.unr-lcssa, %bb.j, %.preheader.us.epil.preheader, %bb.i, %.lr.ph70.split.us
  %i.co = add nsw i32 %.06369.us, 1
  %i.cp = load i32, ptr %i.bk, align 4, !tbaa !40
  %.not.us.not = icmp slt i32 %.06369.us, %i.cp
  br i1 %.not.us.not, label %.lr.ph70.split.us, label %._crit_edge, !llvm.loop !9

.lr.ph70.split:                                   ; preds = %.lr.ph70, %.preheader
  %.06369 = phi i32 [ %i.da, %.preheader ], [ %i.bj, %.lr.ph70 ] ; 4 uses
  call void @lv_memset(ptr noundef %i.bh, i8 noundef zeroext -1, i64 noundef %i.bg) #5
  %i.cq = load i32, ptr %2, align 4, !tbaa !32
  %i.cr = call i32 @lv_draw_sw_mask_apply(ptr noundef nonnull %i.a, ptr noundef %i.bh, i32 noundef %i.cq, i32 noundef %.06369, i32 noundef 0) #5 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 1
  br i1 %i.cs, label %.preheader, label %bb.k

bb.k:                                             ; preds = %.lr.ph70.split
  %i.ct = load i32, ptr %2, align 4, !tbaa !32
  %i.cu = load i32, ptr %i.g, align 4, !tbaa !32
  %i.cv = sub nsw i32 %i.ct, %i.cu
  %i.cw = load i32, ptr %i.bm, align 4, !tbaa !33
  %i.cx = sub nsw i32 %.06369, %i.cw
  %i.cy = call ptr @lv_draw_layer_go_to_xy(ptr noundef %i.f, i32 noundef %i.cv, i32 noundef %i.cx) #5
  %i.cz = icmp eq i32 %i.cr, 0
  br i1 %i.cz, label %bb.l, label %.preheader

bb.l:                                             ; preds = %bb.k
  call void @lv_memset(ptr noundef %i.cy, i8 noundef zeroext 0, i64 noundef range(i64 0, 17179869181) %i.bn) #5
  br label %.preheader

.preheader:                                       ; preds = %bb.k, %bb.l, %.lr.ph70.split
  %i.da = add nsw i32 %.06369, 1
  %i.db = load i32, ptr %i.bk, align 4, !tbaa !40
  %.not.not = icmp slt i32 %.06369, %i.db
  br i1 %.not.not, label %.lr.ph70.split, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %.preheader, %bb.d
  call void @lv_free(ptr noundef %i.bh) #5
  call void @lv_draw_sw_mask_free_param(ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @lv_area_intersect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_area_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_area_move(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_draw_buf_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_sw_mask_radius_init(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #2

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

declare i32 @lv_draw_sw_mask_apply(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_draw_layer_go_to_xy(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @lv_free(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_sw_mask_free_param(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

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
!8 = distinct !{!8, !43}
!9 = distinct !{!9, !43}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS15_lv_draw_task_t", !10, i64 0}
!12 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!13 = !{!"p1 _ZTS11_lv_layer_t", !10, i64 0}
!14 = !{!"p1 _ZTS15_lv_draw_unit_t", !10, i64 0}
!15 = !{!"_lv_draw_task_t", !11, i64 0, !5, i64 8, !12, i64 12, !12, i64 28, !12, i64 44, !12, i64 60, !13, i64 80, !14, i64 88, !5, i64 96, !10, i64 104, !4, i64 112, !4, i64 113, !4, i64 114}
!16 = !{!15, !13, i64 80}
!17 = !{!"p1 _ZTS14_lv_draw_buf_t", !10, i64 0}
!18 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!19 = !{!"_Bool", !4, i64 0}
!20 = !{!"_lv_layer_t", !17, i64 0, !11, i64 8, !13, i64 16, !13, i64 24, !10, i64 32, !12, i64 40, !12, i64 56, !12, i64 72, !5, i64 88, !18, i64 92, !5, i64 96, !19, i64 100, !4, i64 101}
!21 = !{!20, !17, i64 0}
!22 = !{!15, !5, i64 60}
!23 = !{!15, !5, i64 64}
!24 = !{!15, !5, i64 68}
!25 = !{!"p1 _ZTS9_lv_obj_t", !10, i64 0}
!26 = !{!"short", !4, i64 0}
!27 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!28 = !{!"long", !4, i64 0}
!29 = !{!"", !25, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !13, i64 24, !26, i64 32, !26, i64 34, !27, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !28, i64 48, !10, i64 56}
!30 = !{!"_lv_draw_mask_rect_dsc_t", !29, i64 0, !12, i64 64, !5, i64 80, !5, i64 84}
!31 = !{!30, !5, i64 68}
!32 = !{!12, !5, i64 0}
!33 = !{!12, !5, i64 4}
!34 = !{!30, !5, i64 76}
!35 = !{!15, !5, i64 72}
!36 = !{!30, !5, i64 64}
!37 = !{!30, !5, i64 72}
!38 = !{!30, !5, i64 80}
!39 = !{!10, !10, i64 0}
!40 = !{!12, !5, i64 12}
!41 = !{!4, !4, i64 0}
!42 = !{!18, !4, i64 3}
!43 = !{!"llvm.loop.mustprogress"}
end_hunk_0
