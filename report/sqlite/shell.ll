Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_randomness
; Function Attrs: nounwind uwtable
define internal ptr @intckPrepareFmt(ptr nofree noundef captures(none) %0, ptr noundef %1, ...) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = call ptr @sqlite3_vmprintf(ptr noundef %1, ptr noundef nonnull %2) #45 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !240
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  %i.f = icmp eq ptr %i.b, null
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i32 7, ptr %i.c, align 4, !tbaa !240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !109
  br label %intckPrepare.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !109
  br i1 %i.e, label %bb.c, label %intckPrepare.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !230
  %i.h = call i32 @sqlite3_prepare_v2(ptr noundef %i.g, ptr noundef %i.b, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45 ; 2 uses
  store i32 %i.h, ptr %i.c, align 4, !tbaa !240
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %intckPrepare.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !230
  %i.j = call i32 @sqlite3_errcode(ptr noundef %i.i) #45
  store i32 %i.j, ptr %i.c, align 4, !tbaa !240
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !236
  call void @sqlite3_free(ptr noundef %i.l) #45
  %i.m = load ptr, ptr %0, align 8, !tbaa !230
  %i.n = call ptr @sqlite3_errmsg(ptr noundef %i.m) #45
  %i.o = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.n) #45
  store ptr %i.o, ptr %i.k, align 8, !tbaa !236
  br label %intckPrepare.exit

intckPrepare.exit:                                ; preds = %.thread, %bb.b, %bb.c, %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  call void @sqlite3_free(ptr noundef %i.b) #45
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret ptr %i.p
}

; Function Attrs: nounwind uwtable
define internal fastcc void @intckExec(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !109
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 6 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !240
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %intckPrepare.exit.thread9

intckPrepare.exit.thread9:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %intckStep.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !230
  %i.f = call i32 @sqlite3_prepare_v2(ptr noundef %i.e, ptr noundef %1, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45 ; 2 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !240
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %intckPrepare.exit.thread, label %intckPrepare.exit

intckPrepare.exit.thread:                         ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.c

intckPrepare.exit:                                ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !230
  %i.i = call i32 @sqlite3_errcode(ptr noundef %i.h) #45
  store i32 %i.i, ptr %i.b, align 4, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !236
  call void @sqlite3_free(ptr noundef %i.k) #45
  %i.l = load ptr, ptr %0, align 8, !tbaa !230
  %i.m = call ptr @sqlite3_errmsg(ptr noundef %i.l) #45
  %i.n = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.m) #45
  store ptr %i.n, ptr %i.j, align 8, !tbaa !236
  %.val.pr = load i32, ptr %i.b, align 4, !tbaa !240
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %.not.i6 = icmp eq i32 %.val.pr, 0
  br i1 %.not.i6, label %bb.c, label %intckStep.exit

bb.c:                                             ; preds = %intckPrepare.exit.thread, %intckPrepare.exit
  %i.p = phi ptr [ %i.g, %intckPrepare.exit.thread ], [ %i.o, %intckPrepare.exit ] ; 2 uses
  %i.q = call i32 @sqlite3_step(ptr noundef %i.p) #45 ; 0 uses
  br label %intckStep.exit

intckStep.exit:                                   ; preds = %intckPrepare.exit.thread9, %intckPrepare.exit, %bb.c
  %i.r = phi ptr [ %i.o, %intckPrepare.exit ], [ %i.p, %bb.c ], [ null, %intckPrepare.exit.thread9 ]
  %i.s = call i32 @sqlite3_finalize(ptr noundef %i.r) #45
  %i.t = load i32, ptr %i.b, align 4, !tbaa !240
  %i.u = icmp eq i32 %i.t, 0
  %i.v = icmp ne i32 %i.s, 0
  %or.cond.i = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond.i, label %bb.d, label %intckFinalize.exit

bb.d:                                             ; preds = %intckStep.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !230
  %i.x = call i32 @sqlite3_errcode(ptr noundef %i.w) #45
  store i32 %i.x, ptr %i.b, align 4, !tbaa !240
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !236
  call void @sqlite3_free(ptr noundef %i.z) #45
  %i.aa = load ptr, ptr %0, align 8, !tbaa !230
  %i.ab = call ptr @sqlite3_errmsg(ptr noundef %i.aa) #45
  %i.ac = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.ab) #45
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !236
  br label %intckFinalize.exit

intckFinalize.exit:                               ; preds = %intckStep.exit, %bb.d
  ret void
}

declare i32 @sqlite3_bind_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @vfstraceClose(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !261
  %i.f = trunc i32 %i.e to i8
  %i.g = and i8 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 %i.g, ptr %i.h, align 4, !tbaa !262
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !260
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !269
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef %i.c, ptr noundef nonnull @.str.476, ptr noundef %i.j, ptr noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !270  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !271
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !274
  %i.r = tail call i32 %i.q(ptr noundef nonnull %i.n) #45 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.s = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.r) ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.b, label %vfstrace_print_errcode.exit

bb.b:                                             ; preds = %bb.a
  %i.u = and i32 %i.r, 255
  %i.v = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.u) ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = and i32 %i.r, 16776960
  %i.x = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.600, ptr noundef nonnull %i.v, i32 noundef %i.w) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

bb.d:                                             ; preds = %bb.b
  %i.y = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.601, i32 noundef %i.r, i32 noundef %i.r) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

vfstrace_print_errcode.exit:                      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.s, %bb.a ], [ %i.a, %bb.d ], [ %i.a, %bb.c ]
  call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull readonly %i.c, ptr noundef nonnull @.str.477, ptr noundef nonnull %.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.z = icmp eq i32 %i.r, 0
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %vfstrace_print_errcode.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1169
  call void @sqlite3_free(ptr noundef %i.aa) #45
  store ptr null, ptr %0, align 8, !tbaa !1169
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %vfstrace_print_errcode.exit
  ret i32 %i.r
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vfstraceRead(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #4 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !261
  %4 = trunc i32 %i.e to i8
  %5 = lshr i8 %4, 1
  %i.f = and i8 %5, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 %i.f, ptr %i.g, align 4, !tbaa !262
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !260
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !269
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef %i.c, ptr noundef nonnull @.str.478, ptr noundef %i.i, ptr noundef %i.k, i32 noundef %2, i64 noundef %3)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !270  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !271
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !275
  %i.q = tail call i32 %i.p(ptr noundef nonnull %i.m, ptr noundef %1, i32 noundef %2, i64 noundef %3) #45 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.r = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.q) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %vfstrace_print_errcode.exit

bb.b:                                             ; preds = %bb.a
  %i.t = and i32 %i.q, 255
  %i.u = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.t) ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = and i32 %i.q, 16776960
  %i.w = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.600, ptr noundef nonnull %i.u, i32 noundef %i.v) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

bb.d:                                             ; preds = %bb.b
  %i.x = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.601, i32 noundef %i.q, i32 noundef %i.q) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

vfstrace_print_errcode.exit:                      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.r, %bb.a ], [ %i.a, %bb.d ], [ %i.a, %bb.c ]
  call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull readonly %i.c, ptr noundef nonnull @.str.477, ptr noundef nonnull %.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i32 %i.q
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vfstraceWrite(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #4 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !261
  %4 = trunc i32 %i.e to i8
  %5 = lshr i8 %4, 2
  %i.f = and i8 %5, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 %i.f, ptr %i.g, align 4, !tbaa !262
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !260
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !269
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef %i.c, ptr noundef nonnull @.str.479, ptr noundef %i.i, ptr noundef %i.k, i32 noundef %2, i64 noundef %3)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !270  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !271
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !276
  %i.q = tail call i32 %i.p(ptr noundef nonnull %i.m, ptr noundef %1, i32 noundef %2, i64 noundef %3) #45 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.r = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.q) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %vfstrace_print_errcode.exit

bb.b:                                             ; preds = %bb.a
  %i.t = and i32 %i.q, 255
  %i.u = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.t) ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = and i32 %i.q, 16776960
  %i.w = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.600, ptr noundef nonnull %i.u, i32 noundef %i.v) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

bb.d:                                             ; preds = %bb.b
  %i.x = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.601, i32 noundef %i.q, i32 noundef %i.q) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

vfstrace_print_errcode.exit:                      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.r, %bb.a ], [ %i.a, %bb.d ], [ %i.a, %bb.c ]
  call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull readonly %i.c, ptr noundef nonnull @.str.477, ptr noundef nonnull %.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i32 %i.q
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vfstraceTruncate(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !261
  %2 = trunc i32 %i.d to i8
  %3 = lshr i8 %2, 3
  %i.e = and i8 %3, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 %i.e, ptr %i.f, align 4, !tbaa !262
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !260
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !269
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef %i.b, ptr noundef nonnull @.str.480, ptr noundef %i.h, ptr noundef %i.j, i64 noundef %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !270  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !271
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !277
  %i.p = tail call i32 %i.o(ptr noundef nonnull %i.l, i64 noundef %1) #45 ; 2 uses
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef %i.b, ptr noundef nonnull @.str.481, i32 noundef %i.p)
  ret i32 %i.p
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vfstraceSync(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.482, i64 3, i1 false)
  %i.d = and i32 %1, 3
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  store <4 x i8> <i8 124, i8 70, i8 85, i8 76>, ptr %i.a, align 16, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 76, ptr %i.e, align 4, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 0, ptr %i.f, align 1, !tbaa !52
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.lr.ph.i.preheader
  %.0 = phi i32 [ 0, %bb.a ], [ 5, %.lr.ph.i.preheader ] ; 2 uses
  %i.g = and i32 %1, 16
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.c, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %bb.b
  %i.h = zext nneg i32 %.0 to i64                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  store <8 x i8> <i8 124, i8 68, i8 65, i8 84, i8 65, i8 79, i8 78, i8 76>, ptr %i.i, align 1, !tbaa !52
  %indvars.iv.next.i21.8 = add nuw nsw i64 %i.h, 9 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i8 89, ptr %i.k, align 1, !tbaa !52
  %i.l = trunc nuw nsw i64 %indvars.iv.next.i21.8 to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i21.8
  store i8 0, ptr %i.m, align 1, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.i18, %bb.b
  %.1 = phi i32 [ %.0, %bb.b ], [ %i.l, %.lr.ph.i18 ] ; 2 uses
  %i.n = and i32 %1, -20
  %.not17 = icmp eq i32 %i.n, 0
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = zext nneg i32 %.1 to i64
  %i.p = sub nuw nsw i32 100, %.1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  %i.r = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull @.str.486, i32 noundef %1) #45 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !261
  %2 = trunc i32 %i.t to i8
  %3 = lshr i8 %2, 4
  %i.u = and i8 %3, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 %i.u, ptr %i.v, align 4, !tbaa !262
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !260
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !269
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef %i.c, ptr noundef nonnull @.str.487, ptr noundef %i.x, ptr noundef %i.z, ptr noundef nonnull %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !270 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !278
  %i.ag = call i32 %i.af(ptr noundef nonnull %i.ac, i32 noundef %1) #45 ; 2 uses
  call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef %i.c, ptr noundef nonnull @.str.481, i32 noundef %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i32 %i.ag
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vfstraceFileSize(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !261
  %2 = trunc i32 %i.e to i8
  %3 = lshr i8 %2, 5
  %i.f = and i8 %3, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 %i.f, ptr %i.g, align 4, !tbaa !262
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !260
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !269
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef %i.c, ptr noundef nonnull @.str.488, ptr noundef %i.i, ptr noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !270  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !271
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !279
  %i.q = tail call i32 %i.p(ptr noundef nonnull %i.m, ptr noundef %1) #45 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.r = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.q) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %vfstrace_print_errcode.exit

bb.b:                                             ; preds = %bb.a
  %i.t = and i32 %i.q, 255
  %i.u = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.t) ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = and i32 %i.q, 16776960
  %i.w = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.600, ptr noundef nonnull %i.u, i32 noundef %i.v) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

bb.d:                                             ; preds = %bb.b
  %i.x = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.601, i32 noundef %i.q, i32 noundef %i.q) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

vfstrace_print_errcode.exit:                      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.r, %bb.a ], [ %i.a, %bb.d ], [ %i.a, %bb.c ]
  call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull readonly %i.c, ptr noundef nonnull @.str.489, ptr noundef nonnull %.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.y = load i64, ptr %1, align 8, !tbaa !130
  call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.490, i64 noundef %i.y)
  ret i32 %i.q
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vfstraceLock(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !261
  %2 = trunc i32 %i.e to i8
  %3 = lshr i8 %2, 6
  %i.f = and i8 %3, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 %i.f, ptr %i.g, align 4, !tbaa !262
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !260
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !269
  %or.cond.i = icmp ugt i32 %1, 4
  br i1 %or.cond.i, label %lockName.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @__const.lockName.azLockNames, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !88
  br label %lockName.exit

lockName.exit:                                    ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ @.str.497, %bb.a ]
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.491, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %.0.i)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !270  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !271
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !280
  %i.t = tail call i32 %i.s(ptr noundef nonnull %i.p, i32 noundef %1) #45 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.u = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.t) ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.c, label %vfstrace_print_errcode.exit

bb.c:                                             ; preds = %lockName.exit
  %i.w = and i32 %i.t, 255
  %i.x = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.w) ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %i.t, 16776960
  %i.z = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.600, ptr noundef nonnull %i.x, i32 noundef %i.y) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.601, i32 noundef %i.t, i32 noundef %i.t) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

vfstrace_print_errcode.exit:                      ; preds = %lockName.exit, %bb.d, %bb.e
  %.0.i12 = phi ptr [ %i.u, %lockName.exit ], [ %i.a, %bb.e ], [ %i.a, %bb.d ]
  call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull readonly %i.c, ptr noundef nonnull @.str.477, ptr noundef nonnull %.0.i12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i32 %i.t
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vfstraceUnlock(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !261
  %i.f = and i32 %i.e, 128
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 %i.h, ptr %i.i, align 4, !tbaa !262
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !260
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !269
  %or.cond.i = icmp ugt i32 %1, 4
  br i1 %or.cond.i, label %lockName.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = zext nneg i32 %1 to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @__const.lockName.azLockNames, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !88
  br label %lockName.exit

lockName.exit:                                    ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.b ], [ @.str.497, %bb.a ]
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.498, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %.0.i)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !270  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !271
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !281
  %i.v = tail call i32 %i.u(ptr noundef nonnull %i.r, i32 noundef %1) #45 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.w = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.v) ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.c, label %vfstrace_print_errcode.exit

bb.c:                                             ; preds = %lockName.exit
  %i.y = and i32 %i.v, 255
  %i.z = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.y) ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = and i32 %i.v, 16776960
  %i.ab = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.600, ptr noundef nonnull %i.z, i32 noundef %i.aa) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.601, i32 noundef %i.v, i32 noundef %i.v) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

vfstrace_print_errcode.exit:                      ; preds = %lockName.exit, %bb.d, %bb.e
  %.0.i12 = phi ptr [ %i.w, %lockName.exit ], [ %i.a, %bb.e ], [ %i.a, %bb.d ]
  call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull readonly %i.c, ptr noundef nonnull @.str.477, ptr noundef nonnull %.0.i12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i32 %i.v
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vfstraceCheckReservedLock(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !261
  %i.f = lshr i32 %i.e, 8
  %i.g = trunc i32 %i.f to i8
  %i.h = and i8 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 %i.h, ptr %i.i, align 4, !tbaa !262
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !260
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !269
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef %i.c, ptr noundef nonnull @.str.499, ptr noundef %i.k, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !270  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !271
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !282
  %i.s = tail call i32 %i.r(ptr noundef nonnull %i.o, ptr noundef %1) #45 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.t = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.s) ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.b, label %vfstrace_print_errcode.exit

bb.b:                                             ; preds = %bb.a
  %i.v = and i32 %i.s, 255
  %i.w = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.v) ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = and i32 %i.s, 16776960
  %i.y = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.600, ptr noundef nonnull %i.w, i32 noundef %i.x) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

bb.d:                                             ; preds = %bb.b
  %i.z = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.601, i32 noundef %i.s, i32 noundef %i.s) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

vfstrace_print_errcode.exit:                      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.t, %bb.a ], [ %i.a, %bb.d ], [ %i.a, %bb.c ]
  call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull readonly %i.c, ptr noundef nonnull @.str.474, ptr noundef nonnull %.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.aa = load i32, ptr %1, align 4, !tbaa !53
  call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.500, i32 noundef %i.aa)
  ret i32 %i.s
}

; Function Attrs: nounwind uwtable
define internal i32 @vfstraceFileControl(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  %i.b = alloca [50 x i8], align 16               ; 4 uses
  %i.c = alloca [100 x i8], align 16              ; 16 uses
  %i.d = alloca [100 x i8], align 16              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !268  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #45
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !261
  %i.i = lshr i32 %i.h, 9
  %i.j = trunc i32 %i.i to i8
  %i.k = and i8 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i8 %i.k, ptr %i.l, align 4, !tbaa !262
  switch i32 %1, label %bb.cj [
    i32 1, label %bb.ck
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 9, label %bb.h
    i32 10, label %bb.i
    i32 11, label %bb.j
    i32 12, label %bb.k
    i32 13, label %bb.l
    i32 14, label %bb.m
    i32 15, label %bb.bh
end_hunk_0
begin_hunk_1_@dotCmdMode:bb.a
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 4344
  %i.sj = load i32, ptr %i.si, align 8, !tbaa !418 ; 2 uses
  %.not640 = icmp eq i32 %i.sj, 0
  br i1 %.not640, label %.thread947, label %bb.fc

bb.fc:                                            ; preds = %.thread945
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 4321
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !439
  %i.sm = icmp eq i8 %i.sl, 8
  br i1 %i.sm, label %bb.fd, label %.thread947

bb.fd:                                            ; preds = %bb.fc
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1822, i32 noundef %i.sj) #45
  br label %.thread947

.thread947:                                       ; preds = %bb.fd, %.thread945, %bb.fc
  switch i8 %i.ov, label %bb.fe [
    i8 14, label %.thread949
    i8 4, label %.thread949
  ]

bb.fe:                                            ; preds = %.thread947
  %.pn972.in.in = getelementptr inbounds nuw i8, ptr %i.ox, i64 11
  %.pn972.in = load i8, ptr %.pn972.in.in, align 1, !tbaa !408
  %.pn972 = zext i8 %.pn972.in to i64
  %.in971 = getelementptr inbounds nuw [8 x i8], ptr @aModeStr, i64 %.pn972
  %i.sn = load ptr, ptr %.in971, align 8, !tbaa !88
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 2 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !442 ; 2 uses
  %i.sq = icmp eq i8 %i.ov, 14
  %spec.store.select.i810 = select i1 %i.sq, ptr @.str.48, ptr %i.sn
  %i.sr = icmp eq ptr %i.sp, null
  %spec.store.select1.i811 = select i1 %i.sr, ptr @.str.48, ptr %i.sp
  %i.ss = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i810, ptr noundef nonnull dereferenceable(1) %spec.store.select1.i811) #46
  %.not642 = icmp eq i32 %i.ss, 0
  br i1 %.not642, label %.thread949, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1823) #45
  %i.st = load ptr, ptr %i.so, align 8, !tbaa !442
  call fastcc void @append_c_string(ptr noundef %i.oz, ptr noundef %i.st)
  br label %.thread949

.thread949:                                       ; preds = %bb.ff, %bb.fe, %.thread947, %.thread947
  %i.su = getelementptr inbounds nuw i8, ptr %i.ox, i64 12
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !409
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 4323
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !413 ; 3 uses
  %.not643 = icmp eq i8 %i.sv, %i.sx
  br i1 %.not643, label %.thread951, label %bb.fg

bb.fg:                                            ; preds = %.thread949
  %i.sy = shl nuw i64 1, %i.ow
  %i.sz = and i64 %i.sy, 7538660
  %.not644 = icmp ne i64 %i.sz, 0
  %i.ta = icmp ugt i8 %i.sx, 1
  %or.cond710 = or i1 %.not644, %i.ta
  br i1 %or.cond710, label %bb.fh, label %.thread951

bb.fh:                                            ; preds = %bb.fg
  %i.tb = zext i8 %i.sx to i64
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr @qrfQuoteNames, i64 %i.tb
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !88
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1824, ptr noundef %i.td) #45
  br label %.thread951

.thread951:                                       ; preds = %bb.fh, %.thread949, %bb.fg
  %i.te = shl nuw i64 1, %i.ow                    ; 2 uses
  %i.tf = and i64 %i.te, 5104858
  %.not645.not = icmp eq i64 %i.tf, 0
  br i1 %.not645.not, label %bb.fi, label %.thread953

bb.fi:                                            ; preds = %.thread951
  %.pn974.in.in = getelementptr inbounds nuw i8, ptr %i.ox, i64 10
  %.pn974.in = load i8, ptr %.pn974.in.in, align 1, !tbaa !407
  %.pn974 = zext i8 %.pn974.in to i64
  %.in973 = getelementptr inbounds nuw [8 x i8], ptr @aModeStr, i64 %.pn974
  %i.tg = load ptr, ptr %.in973, align 8, !tbaa !88
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !427 ; 2 uses
  %i.tj = icmp eq ptr %i.ti, null
  %spec.store.select1.i813 = select i1 %i.tj, ptr @.str.48, ptr %i.ti
  %i.tk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.tg, ptr noundef nonnull dereferenceable(1) %spec.store.select1.i813) #46
  %.not646 = icmp eq i32 %i.tk, 0
  br i1 %.not646, label %.thread953, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1825) #45
  %i.tl = load ptr, ptr %i.th, align 8, !tbaa !427
  call fastcc void @append_c_string(ptr noundef %i.oz, ptr noundef %i.tl)
  br label %.thread953

.thread953:                                       ; preds = %bb.fj, %.thread951, %bb.fi
  %i.tm = and i64 %i.te, 7493621
  %.not647.not = icmp eq i64 %i.tm, 0
  br i1 %.not647.not, label %bb.fk, label %.thread955

bb.fk:                                            ; preds = %.thread953
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 4336
  %i.to = load i16, ptr %i.tn, align 8, !tbaa !1272
  %i.tp = icmp sgt i16 %i.to, 0
  br i1 %i.tp, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 4316
  %i.tr = load i8, ptr %i.tq, align 4, !tbaa !412
  %.not648 = icmp eq i8 %i.tr, 0
  br i1 %.not648, label %.thread955, label %bb.fm

.critedge968:                                     ; preds = %bb.fb
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 4344
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !418
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1822, i32 noundef %i.tt) #45
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1823) #45
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !442
  call fastcc void @append_c_string(ptr noundef %i.oz, ptr noundef %i.tv)
  %.phi.trans.insert1314 = getelementptr inbounds nuw i8, ptr %0, i64 4323
  %.pre1315 = load i8, ptr %.phi.trans.insert1314, align 1, !tbaa !413
  %i.tw = zext i8 %.pre1315 to i64
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr @qrfQuoteNames, i64 %i.tw
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !88
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1824, ptr noundef %i.ty) #45
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1825) #45
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !427
  call fastcc void @append_c_string(ptr noundef %i.oz, ptr noundef %i.ua)
  br label %bb.fm

bb.fm:                                            ; preds = %.critedge968, %bb.fl, %bb.fk
  %i.ub = phi i1 [ true, %.critedge968 ], [ false, %bb.fl ], [ false, %bb.fk ]
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 4316
  %i.ud = load i8, ptr %i.uc, align 4, !tbaa !412
  %.not649 = icmp eq i8 %i.ud, 0
  br i1 %.not649, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @sqlite3_str_appendall(ptr noundef %i.oz, ptr noundef nonnull @.str.1826) #45
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 4336
  %i.uf = load i16, ptr %i.ue, align 8, !tbaa !1272
  %i.ug = sext i16 %i.uf to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1827, i32 noundef %i.ug) #45
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  br i1 %i.ub, label %.split587.critedge, label %.thread955

.thread955:                                       ; preds = %.thread953, %bb.fl, %bb.fp
  %i.uh = load i8, ptr %i.ou, align 2, !tbaa !426
  %i.ui = icmp eq i8 %i.uh, 7
  br i1 %i.ui, label %bb.fq, label %.thread956

bb.fq:                                            ; preds = %.thread955
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1828) #45
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !428
  call fastcc void @append_c_string(ptr noundef %i.oz, ptr noundef %i.uk)
  br label %.thread956

.thread956:                                       ; preds = %bb.fq, %.thread955
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 4328
  %i.um = load i8, ptr %i.ul, align 8, !tbaa !416
  %.not650 = icmp eq i8 %i.um, 0
  br i1 %.not650, label %.split, label %.split587

.split:                                           ; preds = %.thread956
  %i.un = load i8, ptr %i.ou, align 2, !tbaa !426
  %i.uo = zext i8 %i.un to i64                    ; 2 uses
  %i.up = shl nuw i64 1, %i.uo
  %i.uq = and i64 %i.up, 19984
  %.not.i814 = icmp eq i64 %i.uq, 0
  br i1 %.not.i814, label %bb.fr, label %modeTitleDsply.exit.thread.thread

bb.fr:                                            ; preds = %.split
  %i.ur = getelementptr inbounds nuw [19 x i8], ptr @aModeInfo, i64 %i.uo ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 13
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !411
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ur, i64 15
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !410
  %i.uw = zext i8 %i.uv to i32                    ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 4326
  %i.uy = load i8, ptr %i.ux, align 2, !tbaa !367 ; 2 uses
  %i.uz = zext i8 %i.uy to i32
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 4324
  %i.vb = load i8, ptr %i.va, align 4, !tbaa !429 ; 3 uses
  %i.vc = icmp eq i8 %i.vb, 0
  %i.vd = icmp eq i8 %i.uy, 0
  %.023.i = select i1 %i.vd, i32 %i.uw, i32 %i.uz ; 2 uses
  %.not2831.i = icmp eq i8 %i.vb, %i.ut
  %.not28.i = select i1 %i.vc, i1 true, i1 %.not2831.i
  %.0.i815 = select i1 %.not28.i, i64 86414136692572418, i64 20119859 ; 2 uses
  %.not29.i = icmp eq i32 %.023.i, %i.uw
  %i.ve = lshr i64 %.0.i815, 16
  %.1.i = select i1 %.not29.i, i64 %.0.i815, i64 %i.ve ; 2 uses
  %i.vf = icmp samesign ult i32 %.023.i, 2
  %i.vg = lshr i64 %.1.i, 8
  %.2.i = select i1 %i.vf, i64 %i.vg, i64 %.1.i
  %1 = trunc i64 %.2.i to i32
  %2 = lshr i32 %1, 4
  br label %modeTitleDsply.exit

.split587.critedge:                               ; preds = %bb.fp
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1828) #45
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !428
  call fastcc void @append_c_string(ptr noundef %i.oz, ptr noundef %i.vi)
  br label %.split587

.split587:                                        ; preds = %.split587.critedge, %.thread956
  %i.vj = phi i1 [ true, %.split587.critedge ], [ false, %.thread956 ] ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 4328
  %i.vl = load i8, ptr %i.vk, align 8, !tbaa !416
  %i.vm = icmp eq i8 %i.vl, 2
  %i.vn = select i1 %i.vm, ptr @.str.926, ptr @.str.850
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1829, ptr noundef nonnull %i.vn) #45
  %i.vo = load i8, ptr %i.ou, align 2, !tbaa !426
  %i.vp = zext i8 %i.vo to i64                    ; 2 uses
  %i.vq = shl nuw i64 1, %i.vp
  %i.vr = and i64 %i.vq, 19984
  %.not.i816 = icmp eq i64 %i.vr, 0
  br i1 %.not.i816, label %bb.fs, label %modeTitleDsply.exit.thread

bb.fs:                                            ; preds = %.split587
  %i.vs = getelementptr inbounds nuw [19 x i8], ptr @aModeInfo, i64 %i.vp ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 13
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !411
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vs, i64 15
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !410
  %i.vx = zext i8 %i.vw to i32                    ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 4326
  %i.vz = load i8, ptr %i.vy, align 2, !tbaa !367 ; 2 uses
  %i.wa = zext i8 %i.vz to i32
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 4324
  %i.wc = load i8, ptr %i.wb, align 4, !tbaa !429 ; 3 uses
  %i.wd = icmp eq i8 %i.wc, 0
  %i.we = icmp eq i8 %i.vz, 0
  %.023.i818 = select i1 %i.we, i32 %i.vx, i32 %i.wa ; 2 uses
  %.not2831.i819 = icmp eq i8 %i.wc, %i.vu
  %.not28.i820 = select i1 %i.wd, i1 true, i1 %.not2831.i819
  %.0.i821 = select i1 %.not28.i820, i64 86414136692572418, i64 20119859 ; 2 uses
  %.not29.i822 = icmp eq i32 %.023.i818, %i.vx
  %i.wf = lshr i64 %.0.i821, 16
  %.1.i823 = select i1 %.not29.i822, i64 %.0.i821, i64 %i.wf ; 2 uses
  %i.wg = icmp samesign ult i32 %.023.i818, 2
  %i.wh = lshr i64 %.1.i823, 8
  %.2.i824 = select i1 %i.wg, i64 %i.wh, i64 %.1.i823 ; 2 uses
  %.not30.i = icmp eq i32 %.0556.lcssa1389, 0
  %i.wi = lshr i64 %.2.i824, 4
  %.3.i = select i1 %.not30.i, i64 %i.wi, i64 %.2.i824
  %3 = trunc i64 %.3.i to i32
  br label %modeTitleDsply.exit

modeTitleDsply.exit:                              ; preds = %bb.fs, %bb.fr
  %i.wj = phi i1 [ %i.vj, %bb.fs ], [ false, %bb.fr ] ; 4 uses
  %i.wk = phi i8 [ %i.wc, %bb.fs ], [ %i.vb, %bb.fr ]
  %phi.call.in = phi i32 [ %3, %bb.fs ], [ %2, %bb.fr ]
  %phi.call = and i32 %phi.call.in, 3
  switch i32 %phi.call, label %default.unreachable [
    i32 1, label %bb.ft
    i32 2, label %bb.fu
    i32 3, label %bb.fv
    i32 0, label %modeTitleDsply.exit.thread
  ]

bb.ft:                                            ; preds = %modeTitleDsply.exit
  call void @sqlite3_str_appendall(ptr noundef %i.oz, ptr noundef nonnull @.str.1830) #45
  br label %modeTitleDsply.exit.thread

bb.fu:                                            ; preds = %modeTitleDsply.exit
  call void @sqlite3_str_appendall(ptr noundef %i.oz, ptr noundef nonnull @.str.1831) #45
  br label %modeTitleDsply.exit.thread

bb.fv:                                            ; preds = %modeTitleDsply.exit
  %i.wl = zext i8 %i.wk to i64
  %i.wm = getelementptr [8 x i8], ptr @dotCmdMode.azTitle, i64 %i.wl
  %i.wn = getelementptr i8, ptr %i.wm, i64 -8
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !88
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1832, ptr noundef %i.wo) #45
  br label %modeTitleDsply.exit.thread

default.unreachable:                              ; preds = %modeTitleDsply.exit
  unreachable

modeTitleDsply.exit.thread:                       ; preds = %.split587, %modeTitleDsply.exit, %bb.fu, %bb.fv, %bb.ft
  %i.wp = phi i1 [ %i.vj, %.split587 ], [ %i.wj, %modeTitleDsply.exit ], [ %i.wj, %bb.fu ], [ %i.wj, %bb.fv ], [ %i.wj, %bb.ft ] ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 4352 ; 3 uses
  %i.wr = load i32, ptr %i.wq, align 8, !tbaa !444
  %i.ws = icmp sgt i32 %i.wr, 0
  br i1 %i.ws, label %bb.fw, label %bb.fx

modeTitleDsply.exit.thread.thread:                ; preds = %.split
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 4352 ; 2 uses
  %i.wu = load i32, ptr %i.wt, align 8, !tbaa !444
  %i.wv = icmp sgt i32 %i.wu, 0
  br i1 %i.wv, label %.thread960, label %.critedge712

bb.fw:                                            ; preds = %modeTitleDsply.exit.thread
  br i1 %i.wp, label %.lr.ph1180, label %.thread960

.thread960:                                       ; preds = %modeTitleDsply.exit.thread.thread, %bb.fw
  %i.ww = phi ptr [ %i.wq, %bb.fw ], [ %i.wt, %modeTitleDsply.exit.thread.thread ]
  %i.wx = shl nuw i64 1, %i.ow
  %i.wy = and i64 %i.wx, 892938
  %.not651 = icmp eq i64 %i.wy, 0
  br i1 %.not651, label %.critedge712, label %.lr.ph1180

.lr.ph1180:                                       ; preds = %bb.fw, %.thread960
  %i.wz = phi i1 [ false, %.thread960 ], [ true, %bb.fw ]
  %i.xa = phi ptr [ %i.ww, %.thread960 ], [ %i.wq, %bb.fw ] ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 4360 ; 2 uses
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !445
  %i.xd = load i16, ptr %i.xc, align 2, !tbaa !98
  %i.xe = sext i16 %i.xd to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.433, ptr noundef nonnull @.str.1833, i32 noundef %i.xe) #45
  %i.xf = load i32, ptr %i.xa, align 8, !tbaa !444
  %i.xg = icmp sgt i32 %i.xf, 1
  br i1 %i.xg, label %.peel.next, label %._crit_edge1181

.peel.next:                                       ; preds = %.lr.ph1180, %.peel.next
  %indvars.iv1280 = phi i64 [ %indvars.iv.next1281, %.peel.next ], [ 1, %.lr.ph1180 ] ; 2 uses
  %i.xh = load ptr, ptr %i.xb, align 8, !tbaa !445
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %i.xh, i64 %indvars.iv1280
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !98
  %i.xk = sext i16 %i.xj to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.433, ptr noundef nonnull @.str.163, i32 noundef %i.xk) #45
  %indvars.iv.next1281 = add nuw nsw i64 %indvars.iv1280, 1 ; 2 uses
  %i.xl = load i32, ptr %i.xa, align 8, !tbaa !444
  %i.xm = sext i32 %i.xl to i64
  %i.xn = icmp slt i64 %indvars.iv.next1281, %i.xm
  br i1 %i.xn, label %.peel.next, label %._crit_edge1181, !llvm.loop !1268

bb.fx:                                            ; preds = %modeTitleDsply.exit.thread
  br i1 %i.wp, label %.thread959, label %.critedge712

.thread959:                                       ; preds = %bb.fx
  call void @sqlite3_str_appendall(ptr noundef %i.oz, ptr noundef nonnull @.str.1834) #45
  br label %.critedge714

._crit_edge1181:                                  ; preds = %.peel.next, %.lr.ph1180
  br i1 %i.wz, label %.critedge714, label %.critedge712

.critedge712:                                     ; preds = %modeTitleDsply.exit.thread.thread, %.thread960, %bb.fx, %._crit_edge1181
  %i.xo = shl nuw i64 1, %i.ow
  %i.xp = and i64 %i.xo, 7493621
  %.not652.not = icmp eq i64 %i.xp, 0
  br i1 %.not652.not, label %bb.fy, label %bb.gd

bb.fy:                                            ; preds = %.critedge712
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 4327
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !441
  %.not653 = icmp eq i8 %i.xr, 0
  br i1 %.not653, label %bb.gd, label %bb.fz

.critedge714:                                     ; preds = %.thread959, %._crit_edge1181
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 4327
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !441
  %i.xu = icmp eq i8 %i.xt, 2
  %i.xv = select i1 %i.xu, ptr @.str.926, ptr @.str.850
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1835, ptr noundef nonnull %i.xv) #45
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %.critedge714
  %i.xw = phi i1 [ false, %bb.fy ], [ true, %.critedge714 ]
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 4334
  %i.xy = load i16, ptr %i.xx, align 2, !tbaa !440 ; 2 uses
  %.not654 = icmp eq i16 %i.xy, 0
  br i1 %.not654, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.xz = sext i16 %i.xy to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1836, i32 noundef %i.xz) #45
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  br i1 %i.xw, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @sqlite3_str_append(ptr noundef %i.oz, ptr noundef nonnull @.str.1837, i32 noundef 5) #45
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gb, %bb.gc, %bb.fy, %.critedge712
  %i.ya = call ptr @sqlite3_str_finish(ptr noundef %i.oz) #45 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !351
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.yc, ptr noundef nonnull @.str.1838, ptr noundef %i.ya)
  %i.yd = load ptr, ptr %i.yb, align 8, !tbaa !351
  %i.ye = call i32 @fflush(ptr noundef %i.yd)     ; 0 uses
  call void @sqlite3_free(ptr noundef %i.ya) #45
  br label %.critedge709

.critedge709:                                     ; preds = %._crit_edge.thread, %bb.dv, %bb.dr, %bb.da, %bb.cy, %bb.cw, %bb.v, %bb.j, %bb.ea, %.thread895, %bb.bu, %.thread842, %bb.al, %bb.cf, %bb.x, %bb.ac, %bb.ao, %bb.bn, %bb.cq, %bb.dg, %bb.ed, %bb.ef, %bb.eg, %bb.gd, %._crit_edge1170
  %.16 = phi i32 [ 0, %bb.gd ], [ 0, %._crit_edge1170 ], [ 1, %bb.eg ], [ 1, %bb.ef ], [ 1, %bb.ed ], [ 1, %bb.ea ], [ 1, %bb.da ], [ 1, %.thread895 ], [ 1, %bb.dg ], [ 1, %bb.v ], [ 1, %bb.cq ], [ 1, %bb.cf ], [ 1, %bb.bu ], [ 1, %bb.bn ], [ 1, %.thread842 ], [ 1, %bb.ao ], [ 1, %bb.al ], [ 1, %bb.ac ], [ 1, %bb.x ], [ 1, %bb.j ], [ 1, %bb.cw ], [ 1, %bb.cy ], [ 1, %bb.dr ], [ 1, %bb.dv ], [ 1, %._crit_edge.thread ]
  ret i32 %.16
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @shellFilenameFromUri(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.b = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef nonnull %i.a) #45 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %shell_check_oom.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %bb.a, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.a ] ; 3 uses
  %.030 = phi i32 [ %i.z, %bb.j ], [ 0, %bb.a ]   ; 3 uses
  %i.d = sext i32 %.030 to i64
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !52    ; 2 uses
  switch i8 %i.f, label %bb.j [
    i8 0, label %.critedge
    i8 63, label %.critedge
    i8 37, label %bb.c
  ]

bb.c:                                             ; preds = %shell_check_oom.exit
  %i.g = getelementptr i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !52    ; 5 uses
  %i.i = add i8 %i.h, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.i, 10
  br i1 %or.cond.i, label %hexDigitValue.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add i8 %i.h, -97
  %or.cond5.i = icmp ult i8 %i.j, 6
  br i1 %or.cond5.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i8 %i.h, -87
  br label %hexDigitValue.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.l = add nsw i8 %i.h, -55
  %i.m = add i8 %i.h, -71
  %or.cond = icmp ult i8 %i.m, -6
  br i1 %or.cond, label %.critedge, label %hexDigitValue.exit.thread

hexDigitValue.exit.thread:                        ; preds = %bb.c, %bb.f, %bb.e
  %.0.i44 = phi i8 [ %i.l, %bb.f ], [ %i.k, %bb.e ], [ %i.i, %bb.c ]
  %i.n = add nsw i32 %.030, 2                     ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !52    ; 5 uses
  %i.r = add i8 %i.q, -48                         ; 2 uses
  %or.cond.i37 = icmp ult i8 %i.r, 10
  br i1 %or.cond.i37, label %hexDigitValue.exit42.thread, label %bb.g

bb.g:                                             ; preds = %hexDigitValue.exit.thread
  %i.s = add i8 %i.q, -97
  %or.cond5.i38 = icmp ult i8 %i.s, 6
  br i1 %or.cond5.i38, label %bb.h, label %bb.i

end_hunk_1
