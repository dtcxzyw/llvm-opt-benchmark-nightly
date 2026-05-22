begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_target_info = type { i64, %struct.cli_exe_info, i8 }
%struct.cli_exe_info = type { i32, i16, i64, ptr }

@.str = private unnamed_addr constant [31 x i8] c"Signature for %s is too short\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -117, 1) i32 @cli_bm_addpatt(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !14   ; 3 uses
  %i.d = icmp ult i16 %i.c, 3
  br i1 %i.d, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = add i16 %i.c, -2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str, ptr noundef %i.i) #7
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.07087 = phi i16 [ 0, %.lr.ph ], [ %i.aa, %bb.f ] ; 5 uses
  %i.j = zext i16 %.07087 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j ; 5 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !24
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !24
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  %i.s = zext i8 %i.r to i64
  %.idx = mul nuw nsw i64 %i.p, 296
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.idx104 = mul nuw nsw i64 %i.m, 1688
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx104
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not80 = icmp eq i16 %.07087, 0
  br i1 %.not80, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.x, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %.07087, ptr %i.y, align 2, !tbaa !27
  store ptr %i.k, ptr %1, align 8, !tbaa !8
  %i.z = sub i16 %i.c, %.07087
  store i16 %i.z, ptr %i.b, align 8, !tbaa !14
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.aa = add nuw i16 %.07087, 1                  ; 2 uses
  %i.ab = icmp ugt i16 %i.e, %i.aa
  br i1 %i.ab, label %bb.c, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.e
  %.069 = phi ptr [ %i.k, %bb.e ], [ %i.a, %bb.d ], [ %i.a, %bb.f ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.069, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.069, i64 2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i8, ptr %.069, align 1, !tbaa !24
  %i.ag = zext i8 %i.af to i64
  %i.ah = mul nuw nsw i64 %i.ag, 211
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !24
  %i.aj = zext i8 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.aj, 37
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  %i.am = load i8, ptr %i.ad, align 1, !tbaa !24
  %i.an = zext i8 %i.am to i64
  %i.ao = add nuw nsw i64 %i.al, %i.an            ; 2 uses
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 0, ptr %i.aq, align 1, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ao ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25 ; 5 uses
  %.not8189 = icmp eq ptr %i.au, null
  br i1 %.not8189, label %._crit_edge.thread, label %.lr.ph92

.lr.ph92:                                         ; preds = %.loopexit
  %i.av = load i8, ptr %.069, align 1, !tbaa !24  ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !24
  %.not82111 = icmp ult i8 %i.av, %i.ax
  br i1 %.not82111, label %.lr.ph113, label %._crit_edge.thread

bb.g:                                             ; preds = %.lr.ph113
  %i.ay = load ptr, ptr %i.bb, align 8, !tbaa !8
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !24
  %.not82 = icmp ult i8 %i.av, %i.az
  br i1 %.not82, label %.lr.ph113, label %._crit_edge, !llvm.loop !31

.lr.ph113:                                        ; preds = %.lr.ph92, %bb.g
  %.091112 = phi ptr [ %i.bb, %bb.g ], [ %i.au, %.lr.ph92 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.091112, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !32 ; 4 uses
  %.not81 = icmp eq ptr %i.bb, null
  br i1 %.not81, label %bb.j, label %bb.g, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.g
  %2 = icmp eq ptr %i.bb, %i.au
  br i1 %2, label %._crit_edge.thread, label %bb.j

._crit_edge.thread:                               ; preds = %.lr.ph92, %.loopexit, %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.au, ptr %i.bc, align 8, !tbaa !32
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !25 ; 2 uses
  %.not83 = icmp eq ptr %i.bd, null
  br i1 %.not83, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i16 %i.bf, ptr %i.bg, align 8, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.thread
  store ptr %1, ptr %i.at, align 8, !tbaa !25
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph113, %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %.091112, i64 48 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !32
  store ptr %1, ptr %i.bh, align 8, !tbaa !32
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bk = phi ptr [ %.pre, %bb.j ], [ %1, %bb.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 8, !tbaa !33
  %i.bn = add i16 %i.bm, 1
  store i16 %i.bn, ptr %i.bl, align 8, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %.073 = phi i32 [ -117, %bb.b ], [ 0, %bb.k ]
  ret i32 %.073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -114, 1) i32 @cli_bm_init(ptr noundef captures(none) initializes((8, 16)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @cli_malloc(i64 noundef 63496) #7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !30
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @cli_calloc(i64 noundef 63496, i64 noundef 8) #7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !15
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.e) #7
  br label %.loopexit

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader ], [ 0, %bb.b ] ; 5 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  store i8 1, ptr %i.g, align 1, !tbaa !24
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 1, ptr %i.j, align 1, !tbaa !24
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 1, ptr %i.m, align 1, !tbaa !24
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  store i8 1, ptr %i.p, align 1, !tbaa !24
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 63496
  br i1 %exitcond.not.3, label %.loopexit, label %.preheader, !llvm.loop !34

.loopexit:                                        ; preds = %.preheader, %bb.a, %bb.c
  %.0 = phi i32 [ -114, %bb.a ], [ -114, %bb.c ], [ 0, %.preheader ]
  ret i32 %.0
}

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #2

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @cli_bm_free(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %.not24 = icmp eq ptr %i.d, null
  br i1 %.not24, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %.not2529 = icmp eq ptr %i.g, null
  br i1 %.not2529, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.030 = phi ptr [ %i.i, %bb.i ], [ %i.g, %.preheader ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.030, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.030, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %.not26 = icmp eq ptr %i.k, null
  br i1 %.not26, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %.030, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.sink = phi ptr [ %i.l, %bb.d ], [ %i.k, %.lr.ph ]
  tail call void @free(ptr noundef %.sink) #7
  %i.m = getelementptr inbounds nuw i8, ptr %.030, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.n) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.030, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35   ; 2 uses
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.p) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @free(ptr noundef nonnull %.030) #7
  %.not25 = icmp eq ptr %i.i, null
  br i1 %.not25, label %._crit_edge, label %.lr.ph, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 63496
  br i1 %exitcond.not, label %bb.j, label %.preheader, !llvm.loop !37

bb.j:                                             ; preds = %._crit_edge
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.q) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @cli_bm_scanbuff(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.cli_target_info, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %.not = icmp eq ptr %i.b, null
  %i.c = icmp ult i32 %1, 3
  %or.cond121 = or i1 %i.c, %.not
  br i1 %or.cond121, label %bb.t, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %i.d = add i32 %1, -2
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = icmp ne i32 %6, -1
  %i.g = icmp ne i32 %5, 0
  %or.cond = or i1 %i.g, %i.f
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph137, %.loopexit122
  %.092135 = phi i32 [ 0, %.lr.ph137 ], [ %i.cp, %.loopexit122 ] ; 9 uses
  %i.h = zext i32 %.092135 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !24    ; 2 uses
  %i.k = zext i8 %i.j to i64
  %i.l = mul nuw nsw i64 %i.k, 211
  %i.m = add nuw i32 %.092135, 1
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !24
  %i.q = zext i8 %i.p to i64
  %i.r = mul nuw nsw i64 %i.q, 37
  %i.s = add nuw nsw i64 %i.r, %i.l
  %i.t = add nuw i32 %.092135, 2
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
end_hunk_0
