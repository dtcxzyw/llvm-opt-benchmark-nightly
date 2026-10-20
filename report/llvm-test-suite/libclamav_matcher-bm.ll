Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_matcher-bm?download=true
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_target_info = type { i64, %struct.cli_exe_info, i8 }
%struct.cli_exe_info = type { i32, i16, i64, ptr }

@.str = private unnamed_addr constant [31 x i8] c"Signature for %s is too short\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -117, 1) i32 @cli_bm_addpatt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !14   ; 3 uses
  %i.d = icmp ult i16 %i.c, 3
  br i1 %i.d, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %2 = add i16 %i.c, -2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str, ptr noundef %i.h) #7
  br label %bb.k

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.07087 = phi i16 [ 0, %.lr.ph ], [ %4, %bb.f ] ; 5 uses
  %3 = zext i16 %.07087 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %3 ; 5 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !24
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !24
  %i.q = zext i8 %i.p to i64
  %.idx = mul nuw nsw i64 %i.n, 296
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %.idx104 = mul nuw nsw i64 %i.k, 1688
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx104
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not80 = icmp eq i16 %.07087, 0
  br i1 %.not80, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.v, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %.07087, ptr %i.w, align 2, !tbaa !27
  store ptr %i.i, ptr %1, align 8, !tbaa !13
  %i.x = sub nuw i16 %i.c, %.07087
  store i16 %i.x, ptr %i.b, align 8, !tbaa !14
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %4 = add nuw i16 %.07087, 1                     ; 2 uses
  %5 = icmp ugt i16 %2, %4
  br i1 %5, label %bb.c, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.e
  %.069 = phi ptr [ %i.i, %bb.e ], [ %i.a, %bb.d ], [ %i.a, %bb.f ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.069, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %.069, i64 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i8, ptr %.069, align 1, !tbaa !24
  %i.ac = zext i8 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 211
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !24
  %i.af = zext i8 %i.ae to i64
  %i.ag = mul nuw nsw i64 %i.af, 37
  %i.ah = add nuw nsw i64 %i.ag, %i.ad
  %i.ai = load i8, ptr %i.z, align 1, !tbaa !24
  %i.aj = zext i8 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.ah, %i.aj            ; 2 uses
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ak ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !25 ; 5 uses
  %.not8189 = icmp eq ptr %i.aq, null
  br i1 %.not8189, label %._crit_edge.thread, label %.lr.ph92

.lr.ph92:                                         ; preds = %.loopexit
  %i.ar = load i8, ptr %.069, align 1, !tbaa !24  ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !13
  %i.at = load i8, ptr %i.as, align 1, !tbaa !24
  %.not82111 = icmp ult i8 %i.ar, %i.at
  br i1 %.not82111, label %.lr.ph113, label %._crit_edge.thread

bb.g:                                             ; preds = %.lr.ph113
  %i.au = load ptr, ptr %i.ax, align 8, !tbaa !13
  %i.av = load i8, ptr %i.au, align 1, !tbaa !24
  %.not82 = icmp ult i8 %i.ar, %i.av
  br i1 %.not82, label %.lr.ph113, label %.._crit_edge_crit_edge115, !llvm.loop !33

.lr.ph113:                                        ; preds = %.lr.ph92, %bb.g
  %.091112 = phi ptr [ %i.ax, %bb.g ], [ %i.aq, %.lr.ph92 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.091112, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30 ; 4 uses
  %.not81 = icmp eq ptr %i.ax, null
  br i1 %.not81, label %.._crit_edge_crit_edge, label %bb.g, !llvm.loop !33

.._crit_edge_crit_edge115:                        ; preds = %bb.g
  %i.ay = icmp eq ptr %i.ax, %i.aq
  br i1 %i.ay, label %._crit_edge.thread, label %.._crit_edge_crit_edge

._crit_edge.thread:                               ; preds = %.lr.ph92, %.loopexit, %.._crit_edge_crit_edge115
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.aq, ptr %i.az, align 8, !tbaa !30
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !25 ; 2 uses
  %.not83 = icmp eq ptr %i.ba, null
  br i1 %.not83, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !34
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i16 %i.bc, ptr %i.bd, align 8, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.thread
  store ptr %1, ptr %i.ap, align 8, !tbaa !25
  br label %bb.j

.._crit_edge_crit_edge:                           ; preds = %.lr.ph113, %.._crit_edge_crit_edge115
  %i.be = getelementptr inbounds nuw i8, ptr %.091112, i64 48 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !30
  store ptr %1, ptr %i.be, align 8, !tbaa !30
  %.pre = load ptr, ptr %i.ap, align 8, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %.._crit_edge_crit_edge, %bb.i
  %i.bh = phi ptr [ %.pre, %.._crit_edge_crit_edge ], [ %1, %bb.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !34
  %i.bk = add i16 %i.bj, 1
  store i16 %i.bk, ptr %i.bi, align 8, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.073 = phi i32 [ -117, %bb.b ], [ 0, %bb.j ]
  ret i32 %.073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -114, 1) i32 @cli_bm_init(ptr nofree noundef captures(none) initializes((8, 16)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @cli_malloc(i64 noundef 63496) #7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !29
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @cli_calloc(i64 noundef 63496, i64 noundef 8) #7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !22
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.e) #7
  br label %.loopexit

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader ], [ 0, %bb.b ] ; 5 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  store i8 1, ptr %i.g, align 1, !tbaa !24
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 1, ptr %i.j, align 1, !tbaa !24
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 1, ptr %i.m, align 1, !tbaa !24
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  store i8 1, ptr %i.p, align 1, !tbaa !24
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 63496
  br i1 %exitcond.not.3, label %.loopexit, label %.preheader, !llvm.loop !35

.loopexit:                                        ; preds = %.preheader, %bb.a, %bb.c
  %.010 = phi i32 [ -114, %bb.a ], [ -114, %bb.c ], [ 0, %.preheader ]
  ret i32 %.010
}

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #2

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @cli_bm_free(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %.not24 = icmp eq ptr %i.d, null
  br i1 %.not24, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %.not2529 = icmp eq ptr %i.g, null
  br i1 %.not2529, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.01930 = phi ptr [ %i.i, %bb.i ], [ %i.g, %.preheader ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01930, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01930, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %.not26 = icmp eq ptr %i.k, null
  br i1 %.not26, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %.01930, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.sink = phi ptr [ %i.l, %bb.d ], [ %i.k, %.lr.ph ]
  tail call void @free(ptr noundef %.sink) #7
  %i.m = getelementptr inbounds nuw i8, ptr %.01930, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
