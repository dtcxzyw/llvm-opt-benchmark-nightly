Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 120
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@vfstraceDelete:bb.a
  %i.t = and i32 %i.o, 16776960
  %i.u = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.600, ptr noundef nonnull %i.s, i32 noundef %i.t) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

bb.d:                                             ; preds = %bb.b
  %i.v = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.601, i32 noundef %i.o, i32 noundef %i.o) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

vfstrace_print_errcode.exit:                      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.p, %bb.a ], [ %i.a, %bb.d ], [ %i.a, %bb.c ]
  call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull readonly %i.c, ptr noundef nonnull @.str.477, ptr noundef nonnull %.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vfstraceAccess(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165  ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !257  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !261
  %i.g = lshr i32 %i.f, 18
  %i.h = trunc i32 %i.g to i8
  %i.i = and i8 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 %i.i, ptr %i.j, align 4, !tbaa !262
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !260
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.654, ptr noundef %i.l, ptr noundef %1, i32 noundef %2)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !247
  %i.o = tail call i32 %i.n(ptr noundef %i.d, ptr noundef %1, i32 noundef %2, ptr noundef %3) #45 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.p = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.o) ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.b, label %vfstrace_print_errcode.exit

bb.b:                                             ; preds = %bb.a
  %i.r = and i32 %i.o, 255
  %i.s = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.r) ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = and i32 %i.o, 16776960
  %i.u = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.600, ptr noundef nonnull %i.s, i32 noundef %i.t) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

bb.d:                                             ; preds = %bb.b
  %i.v = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.601, i32 noundef %i.o, i32 noundef %i.o) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

vfstrace_print_errcode.exit:                      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.p, %bb.a ], [ %i.a, %bb.d ], [ %i.a, %bb.c ]
  call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull readonly %i.c, ptr noundef nonnull @.str.474, ptr noundef nonnull %.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.w = load i32, ptr %3, align 4, !tbaa !53
  call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.500, i32 noundef %i.w)
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vfstraceFullPathname(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165  ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !257  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !261
  %i.g = lshr i32 %i.f, 19
  %i.h = trunc i32 %i.g to i8
  %i.i = and i8 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 %i.i, ptr %i.j, align 4, !tbaa !262
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !260
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.655, ptr noundef %i.l, ptr noundef %1)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !248
  %i.o = tail call i32 %i.n(ptr noundef %i.d, ptr noundef %1, i32 noundef %2, ptr noundef %3) #45 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.p = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.o) ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.b, label %vfstrace_print_errcode.exit

bb.b:                                             ; preds = %bb.a
  %i.r = and i32 %i.o, 255
  %i.s = tail call fastcc ptr @vfstrace_errcode_name(i32 noundef %i.r) ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = and i32 %i.o, 16776960
  %i.u = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.600, ptr noundef nonnull %i.s, i32 noundef %i.t) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

bb.d:                                             ; preds = %bb.b
  %i.v = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.601, i32 noundef %i.o, i32 noundef %i.o) #45 ; 0 uses
  br label %vfstrace_print_errcode.exit

vfstrace_print_errcode.exit:                      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.p, %bb.a ], [ %i.a, %bb.d ], [ %i.a, %bb.c ]
  call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull readonly %i.c, ptr noundef nonnull @.str.474, ptr noundef nonnull %.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.656, i32 noundef %2, ptr noundef %3)
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define internal ptr @vfstraceDlOpen(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !261
  %i.f = lshr i32 %i.e, 20
  %i.g = trunc i32 %i.f to i8
  %i.h = and i8 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 %i.h, ptr %i.i, align 4, !tbaa !262
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !260
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.657, ptr noundef %i.k, ptr noundef %1)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !286
  %i.n = tail call ptr %i.m(ptr noundef %i.c, ptr noundef %1) #45
  ret ptr %i.n
}

; Function Attrs: nounwind uwtable
define internal void @vfstraceDlError(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !261
  %i.f = lshr i32 %i.e, 21
  %i.g = trunc i32 %i.f to i8
  %i.h = and i8 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 %i.h, ptr %i.i, align 4, !tbaa !262
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !260
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.658, ptr noundef %i.k, i32 noundef %1)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !287
  tail call void %i.m(ptr noundef %i.c, i32 noundef %1, ptr noundef %2) #45
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.659, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @vfstraceDlSym(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !260
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.660, ptr noundef %i.e, ptr noundef %2)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !288
  %i.h = tail call ptr %i.g(ptr noundef %i.c, ptr noundef %1, ptr noundef %2) #45
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define internal void @vfstraceDlClose(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !261
  %i.f = lshr i32 %i.e, 23
  %i.g = trunc i32 %i.f to i8
  %i.h = and i8 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 %i.h, ptr %i.i, align 4, !tbaa !262
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !260
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.661, ptr noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !289
  tail call void %i.m(ptr noundef %i.c, ptr noundef %1) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @vfstraceRandomness(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257  ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 19
  %3 = load i8, ptr %i.d, align 1, !tbaa !261
  %i.e = and i8 %3, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 %i.e, ptr %i.f, align 4, !tbaa !262
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !260
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.662, ptr noundef %i.h, i32 noundef %1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !250
  %i.k = tail call i32 %i.j(ptr noundef %i.c, i32 noundef %1, ptr noundef %2) #45
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define internal i32 @vfstraceSleep(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !261
  %i.f = lshr i32 %i.e, 25
  %i.g = trunc nuw nsw i32 %i.f to i8
  %i.h = and i8 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 %i.h, ptr %i.i, align 4, !tbaa !262
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !260
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.663, ptr noundef %i.k, i32 noundef %1)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !251
  %i.n = tail call i32 %i.m(ptr noundef %i.c, i32 noundef %1) #45
  ret i32 %i.n
}

; Function Attrs: nounwind uwtable
define internal i32 @vfstraceCurrentTime(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !261
  %i.f = lshr i32 %i.e, 26
  %i.g = trunc nuw nsw i32 %i.f to i8
  %i.h = and i8 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 %i.h, ptr %i.i, align 4, !tbaa !262
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !260
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.664, ptr noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !252
  %i.n = tail call i32 %i.m(ptr noundef %i.c, ptr noundef %1) #45
  %i.o = load double, ptr %1, align 8, !tbaa !290
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.665, double noundef %i.o)
  ret i32 %i.n
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vfstraceGetLastError(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !261
  %i.f = lshr i32 %i.e, 27
  %i.g = trunc nuw nsw i32 %i.f to i8
  %i.h = and i8 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 %i.h, ptr %i.i, align 4, !tbaa !262
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !260
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.666, ptr noundef %i.k, i32 noundef %1)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %2, %bb.b ], [ @.str.48, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !253
  %i.o = tail call i32 %i.n(ptr noundef %i.c, i32 noundef %1, ptr noundef %2) #45 ; 2 uses
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.667, ptr noundef nonnull %i.l, i32 noundef %i.o)
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define internal i32 @vfstraceCurrentTimeInt64(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !261
  %i.f = lshr i32 %i.e, 26
  %i.g = trunc nuw nsw i32 %i.f to i8
  %i.h = and i8 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 %i.h, ptr %i.i, align 4, !tbaa !262
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !260
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.668, ptr noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !254
  %i.n = tail call i32 %i.m(ptr noundef %i.c, ptr noundef %1) #45
  %i.o = load i64, ptr %1, align 8, !tbaa !130
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.669, i64 noundef %i.o)
  ret i32 %i.n
}

; Function Attrs: nounwind uwtable
define internal i32 @vfstraceSetSystemCall(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !291
  %i.f = tail call i32 %i.e(ptr noundef %i.c, ptr noundef %1, ptr noundef %2) #45
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal ptr @vfstraceGetSystemCall(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !292
  %i.f = tail call ptr %i.e(ptr noundef %i.c, ptr noundef %1) #45
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal ptr @vfstraceNextSystemCall(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !255
  %i.f = tail call ptr %i.e(ptr noundef %i.c, ptr noundef %1) #45
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal void @vfstrace_printf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !tbaa !262
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call ptr @sqlite3_vmprintf(ptr noundef %1, ptr noundef nonnull %2) #45 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !258
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !259
  %i.h = call i32 %i.e(ptr noundef %i.c, ptr noundef %i.g) #45 ; 0 uses
  call void @sqlite3_free(ptr noundef %i.c) #45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret void
}

; Function Attrs: nounwind uwtable
define void @vfstrace_unregister(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_vfs_find(ptr noundef %0) #45 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !245
  %.not = icmp eq ptr %i.d, @vfstraceOpen
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @sqlite3_vfs_unregister(ptr noundef nonnull %i.a) #45 ; 0 uses
  tail call void @sqlite3_free(ptr noundef nonnull %i.a) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

declare i32 @sqlite3_vfs_unregister(ptr noundef) local_unnamed_addr #5

end_hunk_0
