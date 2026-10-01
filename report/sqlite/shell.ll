Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@printSchemaLine:bb.a
  %i.f = tail call i32 @sqlite3_complete(ptr noundef nonnull %i.d) #45
  %.not35 = icmp eq i32 %i.f, 0
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %shell_check_oom.exit.2, %shell_check_oom.exit.1, %shell_check_oom.exit
  %.lcssa8 = phi ptr [ %i.d, %shell_check_oom.exit ], [ %i.j, %shell_check_oom.exit.1 ], [ %i.m, %shell_check_oom.exit.2 ] ; 4 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa8) #46
  %i.h = getelementptr i8, ptr %.lcssa8, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  store i8 0, ptr %i.i, align 1, !tbaa !52
  br label %.loopexit

bb.g:                                             ; preds = %shell_check_oom.exit
  tail call void @sqlite3_free(ptr noundef nonnull %i.d) #45
  %i.j = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1482, ptr noundef nonnull %1, ptr noundef nonnull @.str.1481) #45 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %shell_check_oom.exit.1

shell_check_oom.exit.1:                           ; preds = %bb.g
  %i.l = tail call i32 @sqlite3_complete(ptr noundef nonnull %i.j) #45
  %.not35.1 = icmp eq i32 %i.l, 0
  br i1 %.not35.1, label %bb.h, label %bb.f

bb.h:                                             ; preds = %shell_check_oom.exit.1
  tail call void @sqlite3_free(ptr noundef nonnull %i.j) #45
  %i.m = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1482, ptr noundef nonnull %1, ptr noundef nonnull @.str.125) #45 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %shell_check_oom.exit.2

shell_check_oom.exit.2:                           ; preds = %bb.h
  %i.o = tail call i32 @sqlite3_complete(ptr noundef nonnull %i.m) #45
  %.not35.2 = icmp eq i32 %i.o, 0
  br i1 %.not35.2, label %.loopexit.loopexit, label %bb.f

.loopexit.loopexit:                               ; preds = %shell_check_oom.exit.2
  tail call void @sqlite3_free(ptr noundef nonnull %i.m) #45
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f, %bb.c
  %.331 = phi ptr [ null, %bb.c ], [ %.lcssa8, %bb.f ], [ null, %.loopexit.loopexit ]
  %.3 = phi ptr [ %1, %bb.c ], [ %.lcssa8, %bb.f ], [ %1, %.loopexit.loopexit ] ; 3 uses
  %i.p = tail call i32 @sqlite3_strglob(ptr noundef nonnull @.str.1483, ptr noundef nonnull %.3) #45
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.r = getelementptr inbounds nuw i8, ptr %.3, i64 13
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %0, ptr noundef nonnull @.str.1484, ptr noundef nonnull %i.r, ptr noundef nonnull @.str.243)
  br label %bb.k

bb.j:                                             ; preds = %.loopexit
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %0, ptr noundef nonnull @.str.1485, ptr noundef nonnull %.3, ptr noundef nonnull @.str.243)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @sqlite3_free(ptr noundef %.331) #45
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @toggleSelectOrder(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [100 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  %i.c = call i32 @sqlite3_prepare_v2(ptr noundef %0, ptr noundef nonnull @.str.1492, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45 ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.e = call i32 @sqlite3_step(ptr noundef %i.d) #45
  %i.f = icmp eq i32 %i.e, 100
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.h = call i32 @sqlite3_column_int(ptr noundef %i.g, i32 noundef 0) #45
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.j, %bb.b ], [ 1, %bb.a ]
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.l = call i32 @sqlite3_finalize(ptr noundef %i.k) #45 ; 0 uses
  %i.m = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 100, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.1493, i32 noundef %.0) #45 ; 0 uses
  %i.n = call i32 @sqlite3_exec(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

declare i32 @sqlite3_complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @shell_error_context(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @sqlite3_error_offset(ptr noundef nonnull %1) #45 ; 5 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #46
  %i.f = trunc i64 %i.e to i32
  %.not = icmp slt i32 %i.c, %i.f
  br i1 %.not, label %.preheader49, label %bb.d

.preheader49:                                     ; preds = %bb.c
  %i.g = icmp samesign ugt i32 %i.c, 50
  br i1 %i.g, label %.preheader48, label %._crit_edge

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.48) #45
  br label %bb.k

.preheader48:                                     ; preds = %.preheader49, %.preheader48
  %.039.pn = phi ptr [ %.140, %.preheader48 ], [ %0, %.preheader49 ]
  %.137.in = phi i32 [ %.137, %.preheader48 ], [ %i.c, %.preheader49 ] ; 2 uses
  %.140 = getelementptr inbounds nuw i8, ptr %.039.pn, i64 1 ; 3 uses
  %.137 = add nsw i32 %.137.in, -1                ; 2 uses
  %i.i = load i8, ptr %.140, align 1, !tbaa !52
  %i.j = icmp slt i8 %i.i, -64
  %i.k = icmp sgt i32 %.137.in, 51
  %or.cond62 = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond62, label %.preheader48, label %._crit_edge, !llvm.loop !1312

._crit_edge:                                      ; preds = %.preheader48, %.preheader49
  %.039.lcssa = phi ptr [ %0, %.preheader49 ], [ %.140, %.preheader48 ] ; 9 uses
  %.036.lcssa = phi i32 [ %i.c, %.preheader49 ], [ %.137, %.preheader48 ] ; 3 uses
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.039.lcssa) #46 ; 2 uses
  %i.m = icmp ugt i64 %i.l, 78
  br i1 %i.m, label %.preheader, label %.critedge

.preheader:                                       ; preds = %._crit_edge, %bb.e
  %.03553 = phi i64 [ %i.ak, %bb.e ], [ 78, %._crit_edge ] ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 %.03553
  %i.o = load i8, ptr %i.n, align 1, !tbaa !52
  %i.p = icmp slt i8 %i.o, -64
  br i1 %i.p, label %.preheader.1, label %.critedge

.preheader.1:                                     ; preds = %.preheader
  %i.q = add nsw i64 %.03553, -1                  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !52
  %i.t = icmp slt i8 %i.s, -64
  br i1 %i.t, label %.preheader.2, label %.critedge

.preheader.2:                                     ; preds = %.preheader.1
  %i.u = add nsw i64 %.03553, -2                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !52
  %i.x = icmp slt i8 %i.w, -64
  br i1 %i.x, label %.preheader.3, label %.critedge

.preheader.3:                                     ; preds = %.preheader.2
  %i.y = add nsw i64 %.03553, -3                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !52
  %i.ab = icmp slt i8 %i.aa, -64
  br i1 %i.ab, label %.preheader.4, label %.critedge

.preheader.4:                                     ; preds = %.preheader.3
  %i.ac = add nsw i64 %.03553, -4                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !52
  %i.af = icmp slt i8 %i.ae, -64
  br i1 %i.af, label %.preheader.5, label %.critedge

.preheader.5:                                     ; preds = %.preheader.4
  %i.ag = add nsw i64 %.03553, -5                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !52
  %i.aj = icmp slt i8 %i.ai, -64
  br i1 %i.aj, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.preheader.5
  %i.ak = add nsw i64 %.03553, -6                 ; 2 uses
  %.not45.5 = icmp eq i64 %i.ak, 0
  br i1 %.not45.5, label %.critedge, label %.preheader, !llvm.loop !1313

.critedge:                                        ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %bb.e, %._crit_edge
  %.1 = phi i64 [ %i.l, %._crit_edge ], [ 0, %bb.e ], [ %.03553, %.preheader ], [ %i.q, %.preheader.1 ], [ %i.ag, %.preheader.5 ], [ %i.u, %.preheader.2 ], [ %i.ac, %.preheader.4 ], [ %i.y, %.preheader.3 ]
  %i.al = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.349, i64 noundef %.1, ptr noundef nonnull %.039.lcssa) #45 ; 6 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.f, label %shell_check_oom.exit.preheader

shell_check_oom.exit.preheader:                   ; preds = %.critedge
  %i.an = load i8, ptr %i.al, align 1, !tbaa !52
  %.not4654 = icmp eq i8 %i.an, 0
  br i1 %.not4654, label %shell_check_oom.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %shell_check_oom.exit.preheader
  %i.ao = tail call ptr @__ctype_b_loc() #47
  br label %bb.g

bb.f:                                             ; preds = %.critedge
  tail call fastcc void @shell_out_of_memory()
  unreachable

bb.g:                                             ; preds = %.lr.ph, %shell_check_oom.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %shell_check_oom.exit ] ; 3 uses
  %2 = load ptr, ptr %i.ao, align 8, !tbaa !132
  %i.ap = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !52
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !98
  %i.au = and i16 %i.at, 8192
  %.not47 = icmp eq i16 %i.au, 0
  br i1 %.not47, label %shell_check_oom.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv
  store i8 32, ptr %i.av, align 1, !tbaa !52
  br label %shell_check_oom.exit

shell_check_oom.exit:                             ; preds = %bb.g, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !52
  %.not46 = icmp eq i8 %i.ax, 0
  br i1 %.not46, label %shell_check_oom.exit._crit_edge, label %bb.g, !llvm.loop !1314

shell_check_oom.exit._crit_edge:                  ; preds = %shell_check_oom.exit, %shell_check_oom.exit.preheader
  %i.ay = icmp slt i32 %.036.lcssa, 25
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %shell_check_oom.exit._crit_edge
  %i.az = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1498, ptr noundef nonnull %i.al, i32 noundef %.036.lcssa, ptr noundef nonnull @.str.48) #45
  br label %bb.k

bb.j:                                             ; preds = %shell_check_oom.exit._crit_edge
  %i.ba = add nsw i32 %.036.lcssa, -14
  %i.bb = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1499, ptr noundef nonnull %i.al, i32 noundef %i.ba, ptr noundef nonnull @.str.48) #45
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.d
  %.038 = phi ptr [ %i.h, %bb.d ], [ %i.az, %bb.i ], [ %i.bb, %bb.j ]
  ret ptr %.038
}

declare i32 @sqlite3_error_offset(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal noundef i32 @shellWriteQR(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !351
  %i.c = trunc i64 %2 to i32
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.b, ptr noundef nonnull @.str.349, i32 noundef %i.c, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @save_err_msg(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 1, 0) %2, ptr noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_str_new(ptr noundef null) #45 ; 4 uses
  %i.b = tail call ptr @sqlite3_errmsg(ptr noundef %0) #45
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.a, ptr noundef nonnull @.str.1521, ptr noundef %1, ptr noundef %i.b) #45
  %i.c = icmp sgt i32 %2, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.a, ptr noundef nonnull @.str.1522, i32 noundef %2) #45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call fastcc ptr @shell_error_context(ptr noundef %3, ptr noundef %0) ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @sqlite3_str_appendall(ptr noundef %i.a, ptr noundef nonnull %i.d) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.d) #45
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = tail call ptr @sqlite3_str_finish(ptr noundef %i.a) #45 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %shell_check_oom.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %bb.e
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @ascii_read_one_field(ptr nofree noundef captures(none) initializes((48, 56)) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i32, ptr %i.a, align 4, !tbaa !673
  %i.c = and i32 %i.b, 255                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !674
  %i.f = and i32 %i.e, 255                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store i64 0, ptr %i.g, align 8, !tbaa !683
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !679  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @fgetc(ptr noundef nonnull %i.i)
  br label %import_getc.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !681  ; 2 uses
  %.not9.i = icmp eq ptr %i.l, null
  br i1 %.not9.i, label %import_getc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !688  ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !52
  %.not10.i = icmp eq i8 %i.p, 0
  br i1 %.not10.i, label %import_getc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i64 %i.n, 1
  store i64 %i.q, ptr %i.m, align 8, !tbaa !688
  %i.r = load i8, ptr %i.o, align 1, !tbaa !52
  %i.s = sext i8 %i.r to i32
  br label %import_getc.exit

import_getc.exit:                                 ; preds = %bb.b, %bb.e
  %.0.i = phi i32 [ %i.j, %bb.b ], [ %i.s, %bb.e ] ; 5 uses
  %i.t = icmp eq i32 %.0.i, -1
  br i1 %i.t, label %import_getc.exit.thread, label %bb.f

bb.f:                                             ; preds = %import_getc.exit
  %i.u = load volatile i32, ptr @seenInterrupt, align 4, !tbaa !53
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %.preheader, label %import_getc.exit.thread

.preheader:                                       ; preds = %bb.f
  %.not2741 = icmp eq i32 %.0.i, %i.c
  %.not2843 = icmp eq i32 %.0.i, %i.f             ; 2 uses
  %or.cond3044 = select i1 %.not2741, i1 true, i1 %.not2843
  br i1 %or.cond3044, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.g

import_getc.exit.thread:                          ; preds = %bb.c, %bb.d, %bb.f, %import_getc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -1, ptr %i.z, align 8, !tbaa !685
  br label %bb.p

bb.g:                                             ; preds = %.lr.ph, %import_getc.exit36
  %.045 = phi i32 [ %.0.i, %.lr.ph ], [ %.0.i33, %import_getc.exit36 ]
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !683 ; 2 uses
  %i.ab = add nsw i64 %i.aa, 1                    ; 2 uses
  %i.ac = load i64, ptr %i.v, align 8, !tbaa !684 ; 2 uses
  %.not.i31 = icmp slt i64 %i.ab, %i.ac
  br i1 %.not.i31, label %.shell_check_oom.exit_crit_edge.i, label %bb.h

.shell_check_oom.exit_crit_edge.i:                ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !682
  br label %import_append_char.exit

bb.h:                                             ; preds = %bb.g
  %reass.add.i = shl i64 %i.ac, 1
  %i.ad = add i64 %reass.add.i, 100               ; 2 uses
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !684
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !682
  %i.af = tail call ptr @sqlite3_realloc64(ptr noundef %i.ae, i64 noundef %i.ad) #45 ; 3 uses
  store ptr %i.af, ptr %i.w, align 8, !tbaa !682
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.i, label %.shell_check_oom.exit_crit_edge10.i

.shell_check_oom.exit_crit_edge10.i:              ; preds = %bb.h
  %.pre11.i = load i64, ptr %i.g, align 8, !tbaa !683 ; 2 uses
  %.pre12.i = add nsw i64 %.pre11.i, 1
  br label %import_append_char.exit

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @shell_out_of_memory()
  unreachable

import_append_char.exit:                          ; preds = %.shell_check_oom.exit_crit_edge.i, %.shell_check_oom.exit_crit_edge10.i
  %.pre-phi.i = phi i64 [ %.pre12.i, %.shell_check_oom.exit_crit_edge10.i ], [ %i.ab, %.shell_check_oom.exit_crit_edge.i ]
  %i.ah = phi i64 [ %.pre11.i, %.shell_check_oom.exit_crit_edge10.i ], [ %i.aa, %.shell_check_oom.exit_crit_edge.i ]
  %i.ai = phi ptr [ %i.af, %.shell_check_oom.exit_crit_edge10.i ], [ %.pre.i, %.shell_check_oom.exit_crit_edge.i ]
  %i.aj = trunc i32 %.045 to i8
  store i64 %.pre-phi.i, ptr %i.g, align 8, !tbaa !683
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.ah
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !52
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !679 ; 2 uses
  %.not.i32 = icmp eq ptr %i.al, null
  br i1 %.not.i32, label %bb.k, label %bb.j

bb.j:                                             ; preds = %import_append_char.exit
  %i.am = tail call i32 @fgetc(ptr noundef nonnull %i.al)
  br label %import_getc.exit36

bb.k:                                             ; preds = %import_append_char.exit
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !681 ; 2 uses
  %.not9.i34 = icmp eq ptr %i.an, null
  br i1 %.not9.i34, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !688 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !52
  %.not10.i35 = icmp eq i8 %i.aq, 0
  br i1 %.not10.i35, label %.critedge.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = add nsw i64 %i.ao, 1
  store i64 %i.ar, ptr %i.y, align 8, !tbaa !688
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !52
  %i.at = sext i8 %i.as to i32
  br label %import_getc.exit36

import_getc.exit36:                               ; preds = %bb.j, %bb.m
  %.0.i33 = phi i32 [ %i.am, %bb.j ], [ %i.at, %bb.m ] ; 5 uses
  %.not26 = icmp eq i32 %.0.i33, -1
  %.not27 = icmp eq i32 %.0.i33, %i.c
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  %.not28 = icmp eq i32 %.0.i33, %i.f             ; 2 uses
  %or.cond30 = select i1 %or.cond, i1 true, i1 %.not28
  br i1 %or.cond30, label %.critedge, label %bb.g, !llvm.loop !1315

.critedge:                                        ; preds = %import_getc.exit36, %.preheader
  %.0.lcssa = phi i32 [ %.0.i, %.preheader ], [ %.0.i33, %import_getc.exit36 ] ; 2 uses
  %.not28.lcssa = phi i1 [ %.not2843, %.preheader ], [ %.not28, %import_getc.exit36 ]
  br i1 %.not28.lcssa, label %bb.n, label %.critedge.thread

bb.n:                                             ; preds = %.critedge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !678
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !678
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.l, %bb.k, %bb.n, %.critedge
  %.0.lcssa67 = phi i32 [ %.0.lcssa, %.critedge ], [ %.0.lcssa, %bb.n ], [ -1, %bb.k ], [ -1, %bb.l ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.0.lcssa67, ptr %i.ax, align 8, !tbaa !685
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !682 ; 2 uses
  %.not29 = icmp eq ptr %i.az, null
  br i1 %.not29, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge.thread
  %i.ba = load i64, ptr %i.g, align 8, !tbaa !683
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  store i8 0, ptr %i.bb, align 1, !tbaa !52
  %.pre = load ptr, ptr %i.ay, align 8, !tbaa !682
  br label %bb.p

bb.p:                                             ; preds = %.critedge.thread, %bb.o, %import_getc.exit.thread
  %.023 = phi ptr [ null, %import_getc.exit.thread ], [ %.pre, %bb.o ], [ null, %.critedge.thread ]
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal ptr @csv_read_one_field(ptr nofree noundef captures(none) initializes((48, 56)) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.bn, %bb.a
  %i.k = load i32, ptr %i.a, align 4, !tbaa !673  ; 2 uses
  %i.l = load i32, ptr %i.b, align 8, !tbaa !674  ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !683
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !679  ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.n = tail call i32 @fgetc(ptr noundef nonnull %i.m)
  br label %import_getc.exit

bb.c:                                             ; preds = %tailrecurse
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !681  ; 2 uses
  %.not9.i = icmp eq ptr %i.o, null
  br i1 %.not9.i, label %import_getc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.f, align 8, !tbaa !688  ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !52
  %.not10.i = icmp eq i8 %i.r, 0
  br i1 %.not10.i, label %import_getc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i64 %i.p, 1
  store i64 %i.s, ptr %i.f, align 8, !tbaa !688
  %i.t = load i8, ptr %i.q, align 1, !tbaa !52
  %i.u = sext i8 %i.t to i32
  br label %import_getc.exit

import_getc.exit:                                 ; preds = %bb.b, %bb.e
  %.0.i = phi i32 [ %i.n, %bb.b ], [ %i.u, %bb.e ] ; 5 uses
  %i.v = icmp eq i32 %.0.i, -1
  br i1 %i.v, label %import_getc.exit.thread, label %bb.f

bb.f:                                             ; preds = %import_getc.exit
  %i.w = load volatile i32, ptr @seenInterrupt, align 4, !tbaa !53
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.g, label %import_getc.exit.thread

import_getc.exit.thread:                          ; preds = %bb.c, %bb.d, %bb.f, %import_getc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -1, ptr %i.x, align 8, !tbaa !685
  br label %bb.bq

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq i32 %.0.i, 34
  br i1 %i.y, label %bb.h, label %bb.ao

bb.h:                                             ; preds = %bb.g
  %i.z = and i32 %i.k, 255
  %i.aa = and i32 %i.l, 255                       ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 14 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !678
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !676
  %.fr = freeze i32 %i.ae
  %i.af = and i32 %.fr, 255                       ; 5 uses
  %i.ag = icmp ne i32 %i.af, 0                    ; 3 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.h
  %.0110.ph = phi i32 [ 0, %bb.h ], [ %.0110.ph.be, %.outer.backedge ] ; 9 uses
  %.0.ph = phi i32 [ 0, %bb.h ], [ %.0.ph.be, %.outer.backedge ]
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !679 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.outer.split.us, label %import_getc.exit137.peel

import_getc.exit137.peel:                         ; preds = %.outer
  %i.aj = tail call i32 @fgetc(ptr noundef nonnull %i.ah) ; 4 uses
  %i.ak = icmp eq i32 %i.aj, %i.aa                ; 2 uses
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %import_getc.exit137.peel
  %i.al = load i32, ptr %i.ab, align 8, !tbaa !678
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ab, align 8, !tbaa !678
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %import_getc.exit137.peel
  %i.an = icmp eq i32 %i.aj, %i.af
  %or.cond.peel = and i1 %i.ag, %i.an
  br i1 %or.cond.peel, label %.split.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = icmp eq i32 %i.aj, 34
  %i.ap = icmp eq i32 %.0110.ph, 34               ; 2 uses
  %or.cond125.peel = and i1 %i.ap, %i.ao
  br i1 %or.cond125.peel, label %.outer.split, label %.loopexit

.outer.split.us:                                  ; preds = %.outer
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !681 ; 4 uses
  %.not9.i135.us = icmp eq ptr %i.aq, null
  br i1 %.not9.i135.us, label %.thread195, label %.outer.split.us.split

.outer.split.us.split:                            ; preds = %.outer.split.us
  %.promoted = load i64, ptr %i.f, align 8, !tbaa !688 ; 5 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %.promoted ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !52
  %.not10.i136.us.peel = icmp eq i8 %i.as, 0      ; 2 uses
  br i1 %i.ag, label %.outer.split.us.split.split.preheader, label %.outer.split.us.split.split.us.preheader

.outer.split.us.split.split.us.preheader:         ; preds = %.outer.split.us.split
  br i1 %.not10.i136.us.peel, label %.thread195, label %import_getc.exit137.us.us.peel

import_getc.exit137.us.us.peel:                   ; preds = %.outer.split.us.split.split.us.preheader
  %i.at = add nsw i64 %.promoted, 1               ; 2 uses
  store i64 %i.at, ptr %i.f, align 8, !tbaa !688
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !52  ; 2 uses
  %i.av = sext i8 %i.au to i32                    ; 2 uses
  %i.aw = icmp eq i32 %i.aa, %i.av                ; 2 uses
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %import_getc.exit137.us.us.peel
  %i.ax = load i32, ptr %i.ab, align 8, !tbaa !678
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.ab, align 8, !tbaa !678
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %import_getc.exit137.us.us.peel
  %i.az = icmp eq i8 %i.au, 34
  %i.ba = icmp eq i32 %.0110.ph, 34               ; 2 uses
  %or.cond125.us.us.peel = and i1 %i.ba, %i.az
  br i1 %or.cond125.us.us.peel, label %.outer.split.us.split.split.us, label %.loopexit

.outer.split.us.split.split.preheader:            ; preds = %.outer.split.us.split
  br i1 %.not10.i136.us.peel, label %.thread195, label %import_getc.exit137.us.peel

import_getc.exit137.us.peel:                      ; preds = %.outer.split.us.split.split.preheader
  %i.bb = add nsw i64 %.promoted, 1               ; 2 uses
  store i64 %i.bb, ptr %i.f, align 8, !tbaa !688
  %i.bc = load i8, ptr %i.ar, align 1, !tbaa !52  ; 2 uses
  %i.bd = sext i8 %i.bc to i32                    ; 3 uses
  %i.be = icmp eq i32 %i.aa, %i.bd                ; 2 uses
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %import_getc.exit137.us.peel
  %i.bf = load i32, ptr %i.ab, align 8, !tbaa !678
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !678
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %import_getc.exit137.us.peel
  %i.bh = icmp eq i32 %i.af, %i.bd
  br i1 %i.bh, label %.split.us.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = icmp eq i8 %i.bc, 34
  %i.bj = icmp eq i32 %.0110.ph, 34               ; 2 uses
  %or.cond125.us.peel = and i1 %i.bj, %i.bi
  br i1 %or.cond125.us.peel, label %.outer.split.us.split.split, label %.loopexit

.outer.split.us.split.split.us:                   ; preds = %bb.m
  %i.bk = getelementptr inbounds i8, ptr %i.aq, i64 %i.at ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !52
  %.not10.i136.us.us = icmp eq i8 %i.bl, 0
  br i1 %.not10.i136.us.us, label %.thread195, label %import_getc.exit137.us.us

import_getc.exit137.us.us:                        ; preds = %.outer.split.us.split.split.us
  %i.bm = add nsw i64 %.promoted, 2
  store i64 %i.bm, ptr %i.f, align 8, !tbaa !688
  %i.bn = load i8, ptr %i.bk, align 1, !tbaa !52
  %i.bo = sext i8 %i.bn to i32                    ; 3 uses
  %i.bp = icmp eq i32 %i.aa, %i.bo
  br i1 %i.bp, label %bb.q, label %.thread342

bb.q:                                             ; preds = %import_getc.exit137.us.us
  %i.bq = load i32, ptr %i.ab, align 8, !tbaa !678
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.ab, align 8, !tbaa !678
  br label %.thread342

.outer.split.us.split.split:                      ; preds = %bb.p
  %i.bs = getelementptr inbounds i8, ptr %i.aq, i64 %i.bb ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !52
  %.not10.i136.us = icmp eq i8 %i.bt, 0
  br i1 %.not10.i136.us, label %.thread195, label %import_getc.exit137.us

import_getc.exit137.us:                           ; preds = %.outer.split.us.split.split
  %i.bu = add nsw i64 %.promoted, 2
  store i64 %i.bu, ptr %i.f, align 8, !tbaa !688
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !52
  %i.bw = sext i8 %i.bv to i32                    ; 3 uses
  %i.bx = icmp eq i32 %i.aa, %i.bw
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %import_getc.exit137.us
  %i.by = load i32, ptr %i.ab, align 8, !tbaa !678
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.ab, align 8, !tbaa !678
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %import_getc.exit137.us
  %i.ca = icmp eq i32 %i.af, %i.bw
  br i1 %i.ca, label %.split.us.thread, label %.thread342

.outer.split:                                     ; preds = %bb.k
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !679 ; 2 uses
  %.not.i133 = icmp eq ptr %i.cb, null
  br i1 %.not.i133, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.outer.split
  %i.cc = tail call i32 @fgetc(ptr noundef nonnull %i.cb)
  br label %import_getc.exit137

bb.u:                                             ; preds = %.outer.split
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !681 ; 2 uses
  %.not9.i135 = icmp eq ptr %i.cd, null
  br i1 %.not9.i135, label %.thread195, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = load i64, ptr %i.f, align 8, !tbaa !688 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !52
  %.not10.i136 = icmp eq i8 %i.cg, 0
  br i1 %.not10.i136, label %.thread195, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = add nsw i64 %i.ce, 1
  store i64 %i.ch, ptr %i.f, align 8, !tbaa !688
  %i.ci = load i8, ptr %i.cf, align 1, !tbaa !52
  %i.cj = sext i8 %i.ci to i32
  br label %import_getc.exit137

.thread195:                                       ; preds = %bb.u, %bb.v, %.outer.split.us.split.split.us.preheader, %.outer.split.us.split.split.us, %.outer.split.us.split.split.preheader, %.outer.split.us.split.split, %.outer.split.us
  %.us-phi = phi i32 [ 0, %.outer.split.us.split.split ], [ %.0110.ph, %.outer.split.us ], [ 0, %.outer.split.us.split.split.us ], [ %.0110.ph, %.outer.split.us.split.split.preheader ], [ %.0110.ph, %.outer.split.us.split.split.us.preheader ], [ 0, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.ck = icmp eq i32 %.us-phi, 34
  br label %.loopexit

import_getc.exit137:                              ; preds = %bb.t, %bb.w
  %.0.i134 = phi i32 [ %i.cc, %bb.t ], [ %i.cj, %bb.w ] ; 3 uses
  %i.cl = icmp eq i32 %.0.i134, %i.aa
  br i1 %i.cl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %import_getc.exit137
  %i.cm = load i32, ptr %i.ab, align 8, !tbaa !678
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.ab, align 8, !tbaa !678
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %import_getc.exit137
  %i.co = icmp eq i32 %.0.i134, %i.af
  %or.cond = and i1 %i.ag, %i.co
  br i1 %or.cond, label %.split.us, label %.thread342

.split.us:                                        ; preds = %bb.j, %bb.y
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !679 ; 2 uses
  %.not.i138 = icmp eq ptr %.pre, null
  br i1 %.not.i138, label %.split.us.thread, label %bb.z

bb.z:                                             ; preds = %.split.us
  %i.cp = tail call i32 @fgetc(ptr noundef nonnull %.pre)
  %i.cq = trunc i32 %i.cp to i8
  br label %import_getc.exit142

.split.us.thread:                                 ; preds = %bb.o, %bb.s, %.split.us
  %i.cr = load ptr, ptr %i.e, align 8, !tbaa !681 ; 2 uses
  %.not9.i140 = icmp eq ptr %i.cr, null
  br i1 %.not9.i140, label %import_getc.exit142, label %bb.aa

bb.aa:                                            ; preds = %.split.us.thread
  %i.cs = load i64, ptr %i.f, align 8, !tbaa !688 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !52
  %.not10.i141 = icmp eq i8 %i.cu, 0
  br i1 %.not10.i141, label %import_getc.exit142, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = add nsw i64 %i.cs, 1
  store i64 %i.cv, ptr %i.f, align 8, !tbaa !688
  %i.cw = load i8, ptr %i.ct, align 1, !tbaa !52
  br label %import_getc.exit142

import_getc.exit142:                              ; preds = %bb.z, %.split.us.thread, %bb.aa, %bb.ab
  %.0.i139 = phi i8 [ %i.cq, %bb.z ], [ %i.cw, %bb.ab ], [ -1, %bb.aa ], [ -1, %.split.us.thread ]
  %i.cx = load i64, ptr %i.c, align 8, !tbaa !683 ; 2 uses
  %i.cy = add nsw i64 %i.cx, 1                    ; 2 uses
  %i.cz = load i64, ptr %i.i, align 8, !tbaa !684 ; 2 uses
  %.not.i143 = icmp slt i64 %i.cy, %i.cz
  br i1 %.not.i143, label %.shell_check_oom.exit_crit_edge.i, label %bb.ac

.shell_check_oom.exit_crit_edge.i:                ; preds = %import_getc.exit142
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !682
  br label %import_append_char.exit

bb.ac:                                            ; preds = %import_getc.exit142
  %reass.add.i = shl i64 %i.cz, 1
  %i.da = add i64 %reass.add.i, 100               ; 2 uses
  store i64 %i.da, ptr %i.i, align 8, !tbaa !684
  %i.db = load ptr, ptr %i.j, align 8, !tbaa !682
  %i.dc = tail call ptr @sqlite3_realloc64(ptr noundef %i.db, i64 noundef %i.da) #45 ; 3 uses
  store ptr %i.dc, ptr %i.j, align 8, !tbaa !682
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ad, label %.shell_check_oom.exit_crit_edge10.i

.shell_check_oom.exit_crit_edge10.i:              ; preds = %bb.ac
  %.pre11.i = load i64, ptr %i.c, align 8, !tbaa !683 ; 2 uses
  %.pre12.i = add nsw i64 %.pre11.i, 1
  br label %import_append_char.exit

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @shell_out_of_memory()
  unreachable

import_append_char.exit:                          ; preds = %.shell_check_oom.exit_crit_edge.i, %.shell_check_oom.exit_crit_edge10.i
  %.pre-phi.i = phi i64 [ %.pre12.i, %.shell_check_oom.exit_crit_edge10.i ], [ %i.cy, %.shell_check_oom.exit_crit_edge.i ]
  %i.de = phi i64 [ %.pre11.i, %.shell_check_oom.exit_crit_edge10.i ], [ %i.cx, %.shell_check_oom.exit_crit_edge.i ]
  %i.df = phi ptr [ %i.dc, %.shell_check_oom.exit_crit_edge10.i ], [ %.pre.i, %.shell_check_oom.exit_crit_edge.i ]
  store i64 %.pre-phi.i, ptr %i.c, align 8, !tbaa !683
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.de
  store i8 %.0.i139, ptr %i.dg, align 1, !tbaa !52
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %import_append_char.exit, %import_append_char.exit153
  %.0110.ph.be = phi i32 [ %.0.i134191194198330334341346349, %import_append_char.exit153 ], [ 0, %import_append_char.exit ]
  %.0.ph.be = phi i32 [ %.0110206329335340347348, %import_append_char.exit153 ], [ 0, %import_append_char.exit ]
  br label %.outer

.thread342:                                       ; preds = %bb.y, %import_getc.exit137.us.us, %bb.q, %bb.s
  %.0.i134191194198.ph = phi i32 [ %.0.i134, %bb.y ], [ %i.bo, %import_getc.exit137.us.us ], [ %i.bo, %bb.q ], [ %i.bw, %bb.s ] ; 2 uses
  %i.dh = icmp eq i32 %.0.i134191194198.ph, -1
  br i1 %i.dh, label %bb.ak, label %bb.al

.loopexit:                                        ; preds = %bb.k, %bb.m, %bb.p, %.thread195
  %.0110206 = phi i32 [ %.us-phi, %.thread195 ], [ %.0110.ph, %bb.m ], [ %.0110.ph, %bb.k ], [ %.0110.ph, %bb.p ] ; 3 uses
  %i.di = phi i1 [ %i.ck, %.thread195 ], [ %i.ba, %bb.m ], [ %i.ap, %bb.k ], [ %i.bj, %bb.p ] ; 3 uses
  %i.dj = phi i1 [ false, %.thread195 ], [ %i.aw, %bb.m ], [ %i.ak, %bb.k ], [ %i.be, %bb.p ] ; 2 uses
  %.0.i134191194198 = phi i32 [ -1, %.thread195 ], [ %i.av, %bb.m ], [ %i.aj, %bb.k ], [ %i.bd, %bb.p ] ; 7 uses
  %i.dk = icmp eq i32 %.0.i134191194198, %i.z
  %or.cond126203 = or i1 %i.dj, %i.dk
  %or.cond132 = and i1 %i.di, %or.cond126203
  br i1 %or.cond132, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  %i.dl = icmp eq i32 %.0110206, 13
  %i.dm = icmp eq i32 %.0.ph, 34
  %i.dn = and i1 %i.dl, %i.dm
  %or.cond128 = and i1 %i.dn, %i.dj
  br i1 %or.cond128, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = icmp eq i32 %.0.i134191194198, -1       ; 3 uses
  %or.cond129 = and i1 %i.di, %i.do
  br i1 %or.cond129, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.loopexit
  %.0.i134191194198.lcssa = phi i32 [ -1, %bb.af ], [ %.0.i134191194198, %bb.ae ], [ %.0.i134191194198, %.loopexit ]
  %i.dp = load ptr, ptr %i.j, align 8, !tbaa !682
  %.lcssa218.promoted = load i64, ptr %i.c, align 8, !tbaa !683
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %i.dq = phi i64 [ %i.dr, %bb.ah ], [ %.lcssa218.promoted, %bb.ag ]
  %i.dr = add nsw i64 %i.dq, -1                   ; 3 uses
  store i64 %i.dr, ptr %i.c, align 8, !tbaa !683
  %i.ds = getelementptr inbounds i8, ptr %i.dp, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !52
  %.not123 = icmp eq i8 %i.dt, 34
  br i1 %.not123, label %.thread200, label %bb.ah, !llvm.loop !1316

bb.ai:                                            ; preds = %bb.af
  %i.du = icmp ne i32 %.0.i134191194198, 13
  %or.cond5 = and i1 %i.di, %i.du
  br i1 %or.cond5, label %.split, label %bb.aj

.split:                                           ; preds = %bb.ai
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.dw = load ptr, ptr %0, align 8, !tbaa !677
  %i.dx = load i32, ptr %i.ab, align 8, !tbaa !678
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dv, ptr noundef nonnull @.str.1732, ptr noundef %i.dw, i32 noundef %i.dx, i32 noundef 34)
  br i1 %i.do, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.do, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.split, %.thread342, %bb.aj
  %i.dy = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.dz = load ptr, ptr %0, align 8, !tbaa !677
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dy, ptr noundef nonnull @.str.1733, ptr noundef %i.dz, i32 noundef %i.ac, i32 noundef 34)
  br label %.thread200

bb.al:                                            ; preds = %.split, %.thread342, %bb.aj
  %.0.i134191194198330334341346349 = phi i32 [ %.0.i134191194198.ph, %.thread342 ], [ %.0.i134191194198, %bb.aj ], [ %.0.i134191194198, %.split ] ; 2 uses
  %.0110206329335340347348 = phi i32 [ 0, %.thread342 ], [ %.0110206, %bb.aj ], [ %.0110206, %.split ]
  %i.ea = load i64, ptr %i.c, align 8, !tbaa !683 ; 2 uses
  %i.eb = add nsw i64 %i.ea, 1                    ; 2 uses
  %i.ec = load i64, ptr %i.i, align 8, !tbaa !684 ; 2 uses
  %.not.i144 = icmp slt i64 %i.eb, %i.ec
  br i1 %.not.i144, label %.shell_check_oom.exit_crit_edge.i150, label %bb.am

.shell_check_oom.exit_crit_edge.i150:             ; preds = %bb.al
  %.pre.i152 = load ptr, ptr %i.j, align 8, !tbaa !682
  br label %import_append_char.exit153

bb.am:                                            ; preds = %bb.al
  %reass.add.i145 = shl i64 %i.ec, 1
  %i.ed = add i64 %reass.add.i145, 100            ; 2 uses
  store i64 %i.ed, ptr %i.i, align 8, !tbaa !684
  %i.ee = load ptr, ptr %i.j, align 8, !tbaa !682
  %i.ef = tail call ptr @sqlite3_realloc64(ptr noundef %i.ee, i64 noundef %i.ed) #45 ; 3 uses
  store ptr %i.ef, ptr %i.j, align 8, !tbaa !682
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.an, label %.shell_check_oom.exit_crit_edge10.i146

.shell_check_oom.exit_crit_edge10.i146:           ; preds = %bb.am
  %.pre11.i147 = load i64, ptr %i.c, align 8, !tbaa !683 ; 2 uses
  %.pre12.i148 = add nsw i64 %.pre11.i147, 1
  br label %import_append_char.exit153

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @shell_out_of_memory()
  unreachable

import_append_char.exit153:                       ; preds = %.shell_check_oom.exit_crit_edge.i150, %.shell_check_oom.exit_crit_edge10.i146
  %.pre-phi.i149 = phi i64 [ %.pre12.i148, %.shell_check_oom.exit_crit_edge10.i146 ], [ %i.eb, %.shell_check_oom.exit_crit_edge.i150 ]
  %i.eh = phi i64 [ %.pre11.i147, %.shell_check_oom.exit_crit_edge10.i146 ], [ %i.ea, %.shell_check_oom.exit_crit_edge.i150 ]
  %i.ei = phi ptr [ %i.ef, %.shell_check_oom.exit_crit_edge10.i146 ], [ %.pre.i152, %.shell_check_oom.exit_crit_edge.i150 ]
  %i.ej = trunc i32 %.0.i134191194198330334341346349 to i8
  store i64 %.pre-phi.i149, ptr %i.c, align 8, !tbaa !683
  %i.ek = getelementptr inbounds i8, ptr %i.ei, i64 %i.eh
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !52
  br label %.outer.backedge

bb.ao:                                            ; preds = %bb.g
  %i.el = load i32, ptr %i.g, align 8, !tbaa !675 ; 2 uses
  %i.em = and i32 %.0.i, 255
  %i.en = icmp eq i32 %i.em, 239
  br i1 %i.en, label %bb.ap, label %import_getc.exit168.thread

bb.ap:                                            ; preds = %bb.ao
  %i.eo = load i32, ptr %i.h, align 4, !tbaa !1318
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.aq, label %import_getc.exit168.thread

bb.aq:                                            ; preds = %bb.ap
  %i.eq = load i64, ptr %i.c, align 8, !tbaa !683 ; 2 uses
  %i.er = add nsw i64 %i.eq, 1                    ; 2 uses
  %i.es = load i64, ptr %i.i, align 8, !tbaa !684 ; 2 uses
  %.not.i154 = icmp slt i64 %i.er, %i.es
  br i1 %.not.i154, label %.shell_check_oom.exit_crit_edge.i160, label %bb.ar

.shell_check_oom.exit_crit_edge.i160:             ; preds = %bb.aq
  %.pre.i162 = load ptr, ptr %i.j, align 8, !tbaa !682
  br label %import_append_char.exit163

bb.ar:                                            ; preds = %bb.aq
  %reass.add.i155 = shl i64 %i.es, 1
  %i.et = add i64 %reass.add.i155, 100            ; 2 uses
  store i64 %i.et, ptr %i.i, align 8, !tbaa !684
  %i.eu = load ptr, ptr %i.j, align 8, !tbaa !682
  %i.ev = tail call ptr @sqlite3_realloc64(ptr noundef %i.eu, i64 noundef %i.et) #45 ; 3 uses
  store ptr %i.ev, ptr %i.j, align 8, !tbaa !682
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.as, label %.shell_check_oom.exit_crit_edge10.i156

.shell_check_oom.exit_crit_edge10.i156:           ; preds = %bb.ar
end_hunk_0
