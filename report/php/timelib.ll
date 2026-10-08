Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/timelib?download=true
inline.NumInlined: 2
begin_hunk_0_@timelib_rel_time_ctor:bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @timelib_rel_time_dtor(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_efree(ptr noundef nonnull %0) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @timelib_rel_time_clone(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(104) ptr @_ecalloc(i64 noundef 1, i64 noundef 104) #17 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @timelib_time_tz_abbr_update(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_efree(ptr noundef nonnull %i.c) #18
  store ptr null, ptr %i.b, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call noalias ptr @_estrdup(ptr noundef nonnull %1) #18
  store ptr %i.d, ptr %i.b, align 8, !tbaa !19
  %.not17 = icmp eq i64 %i.a, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.e = tail call ptr @__ctype_toupper_loc() #20
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !23
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !24
  %i.l = trunc i32 %i.k to i8
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  store i8 %i.l, ptr %i.n, align 1, !tbaa !23
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.o = and i64 %indvars.iv.next, 4294967295
  %i.p = icmp ugt i64 %i.a, %i.o
  br i1 %i.p, label %bb.d, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @timelib_time_offset_ctor() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @_ecalloc(i64 noundef 1, i64 noundef 32) #17
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @timelib_time_offset_dtor(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_efree(ptr noundef nonnull %i.b) #18
  store ptr null, ptr %i.a, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_efree(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @timelib_get_tz_abbr_ptr(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @timelib_update_ts(ptr noundef nonnull %0, ptr noundef null) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  ret ptr %i.d
}

declare void @timelib_update_ts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @timelib_error_container_dtor(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  tail call void @_efree(ptr noundef %i.h) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !39
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  tail call void @_efree(ptr noundef %i.m) #18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !43
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph15, label %._crit_edge16

.lr.ph15:                                         ; preds = %._crit_edge, %.lr.ph15
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %.lr.ph15 ], [ 0, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  tail call void @_efree(ptr noundef %i.t) #18
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.u = load i32, ptr %i.n, align 8, !tbaa !43
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next19, %i.v
  br i1 %i.w, label %.lr.ph15, label %._crit_edge16, !llvm.loop !36

._crit_edge16:                                    ; preds = %.lr.ph15, %._crit_edge
  %i.x = load ptr, ptr %0, align 8, !tbaa !44
  tail call void @_efree(ptr noundef %i.x) #18
  tail call void @_efree(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden i64 @timelib_date_to_int(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @timelib_decimal_hour_to_hms(double noundef %0, ptr nofree noundef captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = fcmp olt double %0, 0.000000e+00         ; 2 uses
  %i.b = tail call double @llvm.fabs.f64(double %0)
  %.012 = select i1 %i.a, double %i.b, double %0  ; 2 uses
  %i.c = tail call double @llvm.floor.f64(double %.012)
  %i.d = fptosi double %i.c to i32                ; 2 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !24
  %4 = uitofp nneg i32 %i.d to double
  %i.e = fsub double %.012, %4
  %i.f = fmul double %i.e, 3.600000e+03
  %i.g = tail call double @llvm.floor.f64(double %i.f)
  %i.h = fptosi double %i.g to i32                ; 2 uses
  %i.i = sdiv i32 %i.h, 60
  store i32 %i.i, ptr %2, align 4, !tbaa !24
  %i.j = srem i32 %i.h, 60
  store i32 %i.j, ptr %3, align 4, !tbaa !24
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %1, align 4, !tbaa !24
  %i.l = sub i32 0, %i.k
  store i32 %i.l, ptr %1, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @timelib_hms_to_decimal_hour(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  %i.b = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.c = insertelement <2 x i32> %i.b, i32 %2, i64 1
  %i.d = sitofp <2 x i32> %i.c to <2 x double>
  %i.e = fdiv <2 x double> %i.d, <double 6.000000e+01, double 3.600000e+03> ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = uitofp nneg i32 %0 to double
  %i.g = extractelement <2 x double> %i.e, i64 0
  %i.h = fadd double %i.g, %i.f
  %i.i = extractelement <2 x double> %i.e, i64 1
  %i.j = fadd double %i.h, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = sitofp i32 %0 to double
  %i.l = extractelement <2 x double> %i.e, i64 0
  %i.m = fsub double %i.k, %i.l
  %i.n = extractelement <2 x double> %i.e, i64 1
  %i.o = fsub double %i.m, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi double [ %i.o, %bb.c ], [ %i.j, %bb.b ]
  store double %storemerge, ptr %3, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @timelib_hmsf_to_decimal_hour(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  %i.b = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.c = insertelement <2 x i32> %i.b, i32 %2, i64 1
  %i.d = sitofp <2 x i32> %i.c to <2 x double>
  %i.e = fdiv <2 x double> %i.d, <double 6.000000e+01, double 3.600000e+03> ; 4 uses
  %i.f = sitofp i32 %3 to double
  %i.g = fdiv double %i.f, 3.600000e+09           ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = uitofp nneg i32 %0 to double
  %i.i = extractelement <2 x double> %i.e, i64 0
  %i.j = fadd double %i.i, %i.h
  %i.k = extractelement <2 x double> %i.e, i64 1
  %i.l = fadd double %i.j, %i.k
  %i.m = fadd double %i.l, %i.g
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = sitofp i32 %0 to double
  %i.o = extractelement <2 x double> %i.e, i64 0
  %i.p = fsub double %i.n, %i.o
  %i.q = extractelement <2 x double> %i.e, i64 1
  %i.r = fsub double %i.p, %i.q
  %i.s = fsub double %i.r, %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi double [ %i.s, %bb.c ], [ %i.m, %bb.b ]
  store double %storemerge, ptr %4, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @timelib_hms_to_seconds(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = mul i64 %0, 3600
  %i.b = mul i64 %1, 60
  %i.c = add i64 %i.b, %i.a
  %i.d = add i64 %i.c, %2
  ret i64 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden i32 @timelib_strcasecmp(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19 ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 2 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.b) ; 2 uses
  %.not33 = icmp eq i64 %i.d, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.e = add i64 %.036, -1                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01735, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %.01834, i64 1
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.036 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.b ]
  %.01735 = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ] ; 2 uses
  %.01834 = phi ptr [ %i.g, %bb.c ], [ %0, %bb.b ] ; 2 uses
  %i.h = load i8, ptr %.01834, align 1, !tbaa !23
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @timelib_tolower_map, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !23    ; 2 uses
  %i.l = load i8, ptr %.01735, align 1, !tbaa !23
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @timelib_tolower_map, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !23    ; 2 uses
  %.not24 = icmp eq i8 %i.k, %i.o
  br i1 %.not24, label %bb.c, label %bb.d, !llvm.loop !45

bb.d:                                             ; preds = %.lr.ph
  %i.p = zext i8 %i.o to i32
  %i.q = zext i8 %i.k to i32
  %i.r = sub nsw i32 %i.q, %i.p
  br label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.s = sub i64 %i.a, %i.b
  %i.t = trunc i64 %i.s to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge, %bb.d
  %.019 = phi i32 [ %i.t, %._crit_edge ], [ %i.r, %bb.d ], [ 0, %bb.a ]
  ret i32 %.019
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden i32 @timelib_strncasecmp(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19 ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 2 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.b)
  %. = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.d) ; 2 uses
  %.not47 = icmp eq i64 %., 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.e = add i64 %.050, -1                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.03049, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %.03148, i64 1
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !46

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.050 = phi i64 [ %i.e, %bb.c ], [ %., %bb.b ]
  %.03049 = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ] ; 2 uses
  %.03148 = phi ptr [ %i.g, %bb.c ], [ %0, %bb.b ] ; 2 uses
  %i.h = load i8, ptr %.03148, align 1, !tbaa !23
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @timelib_tolower_map, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !23    ; 2 uses
  %i.l = load i8, ptr %.03049, align 1, !tbaa !23
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @timelib_tolower_map, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !23    ; 2 uses
  %.not38 = icmp eq i8 %i.k, %i.o
  br i1 %.not38, label %bb.c, label %bb.d, !llvm.loop !46

bb.d:                                             ; preds = %.lr.ph
  %i.p = zext i8 %i.o to i32
  %i.q = zext i8 %i.k to i32
  %i.r = sub nsw i32 %i.q, %i.p
  br label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.s = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.a)
  %i.t = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.b)
end_hunk_0
