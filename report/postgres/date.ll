Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/date?download=true
inline.NumInlined: 507
inline.NumDeleted: 47
begin_hunk_0_@timestamptz2date_safe:bb.a
    i64 -9223372036854775808, label %bb.g
    i64 9223372036854775807, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = call i32 @timestamp2tm(i64 noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #13
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp slt i64 %0, 0
  %. = select i1 %i.d, i32 -2147483648, i32 2147483647 ; 2 uses
  %i.e = call zeroext i1 @errsave_start(ptr noundef %1, ptr noundef null) #13
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = call i32 @errcode(i32 noundef 134217858) #13 ; 0 uses
  %i.g = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19) #13 ; 0 uses
  call void @errsave_finish(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 1460, ptr noundef nonnull @__func__.timestamptz2date_safe) #13
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = call i32 @date2j(i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m) #13
  %i.o = add i32 %i.n, -2451545
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.a, %bb.d, %bb.e
  %.013 = phi i32 [ %., %bb.d ], [ %., %bb.e ], [ %i.o, %bb.f ], [ 2147483647, %bb.b ], [ -2147483648, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define dso_local i64 @time_in(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %struct.pg_tm, align 8              ; 6 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [129 x i8], align 16              ; 3 uses
  %i.e = alloca [25 x ptr], align 16              ; 4 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca [25 x i32], align 16              ; 4 uses
  %2 = alloca %struct.DateTimeErrorExtra, align 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.p = call i32 @ParseDateTime(ptr noundef %i.j, ptr noundef nonnull %i.d, i64 noundef 129, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, i32 noundef 25, ptr noundef nonnull %i.c) #13 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.c, align 4
  %i.s = call i32 @DecodeTimeOnly(ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, i32 noundef %i.r, ptr noundef nonnull %i.f, ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %2) #13 ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.019 = phi i32 [ %i.s, %bb.b ], [ %i.p, %bb.a ]
  call void @DateTimeParseError(i32 noundef %.019, ptr noundef nonnull %2, ptr noundef %i.j, ptr noundef nonnull @.str.20, ptr noundef %i.o) #13
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.t, align 4
  br label %AdjustTimeForTypmod.exit

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.a, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 8
  %i.x = mul i32 %i.w, 60
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add i32 %i.x, %i.z
  %i.ab = mul i32 %i.aa, 60
  %i.ac = load i32, ptr %1, align 8
  %i.ad = add i32 %i.ab, %i.ac
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.ae, 1000000
  %i.ag = sext i32 %i.u to i64
  %i.ah = add nsw i64 %i.af, %i.ag                ; 4 uses
  %or.cond.i = icmp ult i32 %i.m, 7
  br i1 %or.cond.i, label %bb.d, label %AdjustTimeForTypmod.exit

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp sgt i64 %i.ah, -1
  %i.aj = and i64 %i.l, 7                         ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @AdjustTimeForTypmod.TimeOffsets, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @AdjustTimeForTypmod.TimeScales, i64 %i.aj
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = add i64 %i.al, %i.ah
  %.fr14.i = freeze i64 %i.ao                     ; 2 uses
  %i.ap = srem i64 %.fr14.i, %i.an
  %i.aq = sub nsw i64 %.fr14.i, %i.ap
  br label %AdjustTimeForTypmod.exit

bb.f:                                             ; preds = %bb.d
  %i.ar = sub i64 %i.al, %i.ah
  %.fr.i = freeze i64 %i.ar                       ; 2 uses
  %i.as = srem i64 %.fr.i, %i.an
  %.neg.i = sub i64 %i.as, %.fr.i
  br label %AdjustTimeForTypmod.exit

AdjustTimeForTypmod.exit:                         ; preds = %bb.c, %bb.f, %bb.e, %.thread
  %.013 = phi i64 [ 0, %.thread ], [ %i.ah, %bb.c ], [ %i.aq, %bb.e ], [ %.neg.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i64 %.013
}

declare i32 @DecodeTimeOnly(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @time_overflows(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %or.cond = icmp ugt i32 %0, 24
  %i.a = icmp ugt i32 %1, 59
  %or.cond5 = or i1 %or.cond, %i.a
  %i.b = icmp ugt i32 %2, 60
  %or.cond9 = or i1 %or.cond5, %i.b
  %i.c = icmp ugt i32 %3, 1000000
  %or.cond14 = or i1 %or.cond9, %i.c
  br i1 %or.cond14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %3 to i64
  %i.e = mul nuw nsw i32 %0, 60
  %i.f = add nuw nsw i32 %i.e, %1
  %i.g = mul nuw nsw i32 %i.f, 60
  %i.h = add nuw nsw i32 %i.g, %2
  %i.i = zext nneg i32 %i.h to i64
  %i.j = mul nuw nsw i64 %i.i, 1000000
  %i.k = add nuw nsw i64 %i.j, %i.d
  %i.l = icmp samesign ugt i64 %i.k, 86400000000
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %i.l, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @float_time_overflows(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #8 {
bb.a:
  %or.cond = icmp ugt i32 %0, 24
  %i.a = icmp ugt i32 %1, 59
  %or.cond5 = or i1 %or.cond, %i.a
  %i.b = fcmp uno double %2, 0.000000e+00
  %or.cond21 = or i1 %or.cond5, %i.b
  br i1 %or.cond21, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fmul nnan double %2, 1.000000e+06
  %i.d = tail call double @llvm.rint.f64(double %i.c) ; 3 uses
  %i.e = fcmp olt double %i.d, 0.000000e+00
  %i.f = fcmp ogt double %i.d, 6.000000e+07
  %or.cond7 = or i1 %i.e, %i.f
  br i1 %or.cond7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = mul nuw nsw i32 %0, 60
  %i.h = add nuw nsw i32 %i.g, %1
  %i.i = mul nuw nsw i32 %i.h, 60
  %i.j = zext nneg i32 %i.i to i64
  %i.k = mul nuw nsw i64 %i.j, 1000000
  %i.l = fptosi double %i.d to i64
  %i.m = add i64 %i.k, %i.l
  %i.n = icmp sgt i64 %i.m, 86400000000
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.n, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @time2tm(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = sdiv i64 %0, 3600000000                  ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.b, ptr %i.c, align 8
  %sext = shl i64 %i.a, 32
  %i.d = ashr exact i64 %sext, 32
  %.neg = mul nsw i64 %i.d, -3600000000
  %i.e = add i64 %.neg, %0                        ; 2 uses
  %i.f = sdiv i64 %i.e, 60000000                  ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.g, ptr %i.h, align 4
  %sext13 = shl i64 %i.f, 32
  %i.i = ashr exact i64 %sext13, 32
  %.neg14 = mul nsw i64 %i.i, -60000000
  %i.j = add i64 %.neg14, %i.e                    ; 2 uses
  %i.k = sdiv i64 %i.j, 1000000                   ; 2 uses
  %i.l = trunc i64 %i.k to i32
  store i32 %i.l, ptr %1, align 8
  %.neg16 = mul i64 %i.k, 4293967296
  %i.m = add i64 %.neg16, %i.j
  %i.n = trunc i64 %i.m to i32
  store i32 %i.n, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @time_out(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.pg_tm, align 8              ; 6 uses
  %i.a = alloca [129 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = sdiv i64 %i.c, 3600000000                ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.e, ptr %i.f, align 8
  %sext.i = shl i64 %i.d, 32
  %i.g = ashr exact i64 %sext.i, 32
  %.neg.i = mul nsw i64 %i.g, -3600000000
  %i.h = add i64 %.neg.i, %i.c                    ; 2 uses
  %i.i = sdiv i64 %i.h, 60000000                  ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.j, ptr %i.k, align 4
  %sext13.i = shl i64 %i.i, 32
  %i.l = ashr exact i64 %sext13.i, 32
  %.neg14.i = mul nsw i64 %i.l, -60000000
  %i.m = add i64 %.neg14.i, %i.h                  ; 2 uses
  %i.n = sdiv i64 %i.m, 1000000                   ; 2 uses
  %i.o = trunc i64 %i.n to i32
  store i32 %i.o, ptr %1, align 8
  %.neg16.i = mul i64 %i.n, 4293967296
  %i.p = add i64 %.neg16.i, %i.m
  %i.q = trunc i64 %i.p to i32
  %i.r = load i32, ptr @DateStyle, align 4
  call void @EncodeTimeOnly(ptr noundef nonnull %1, i32 noundef %i.q, i1 noundef zeroext false, i32 noundef 0, i32 noundef %i.r, ptr noundef nonnull %i.a) #13
  %i.s = call ptr @pstrdup(ptr noundef nonnull %i.a) #13
  %i.t = ptrtoint ptr %i.s to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i64 %i.t
}

declare void @EncodeTimeOnly(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @time_recv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = tail call i64 @pq_getmsgint64(ptr noundef %i.c) #13 ; 3 uses
  %or.cond = icmp ugt i64 %i.f, 86400000000
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.h = tail call i32 @errcode(i32 noundef 134217858) #13 ; 0 uses
  %i.i = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.21) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1641, ptr noundef nonnull @__func__.time_recv) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.e to i32
  %or.cond.i = icmp ult i32 %i.j, 7
  br i1 %or.cond.i, label %.sink.split.i, label %AdjustTimeForTypmod.exit

.sink.split.i:                                    ; preds = %bb.c
  %i.k = and i64 %i.e, 7                          ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @AdjustTimeForTypmod.TimeOffsets, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @AdjustTimeForTypmod.TimeScales, i64 %i.k
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.m, %i.f
  %.fr14.i = freeze i64 %i.p                      ; 2 uses
  %i.q = srem i64 %.fr14.i, %i.o
  %i.r = sub nsw i64 %.fr14.i, %i.q
  br label %AdjustTimeForTypmod.exit

AdjustTimeForTypmod.exit:                         ; preds = %bb.c, %.sink.split.i
  %.0 = phi i64 [ %i.r, %.sink.split.i ], [ %i.f, %bb.c ]
  ret i64 %.0
}

declare i64 @pq_getmsgint64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @time_send(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @pq_begintypsend(ptr noundef nonnull %1) #13
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 8) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.c = call i64 @llvm.bswap.i64(i64 %i.b)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !11 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  store i64 %i.c, ptr %i.h, align 1, !noalias !11
  %i.i = add i32 %i.f, 8
  store i32 %i.i, ptr %i.e, align 8, !alias.scope !11
  %i.j = call ptr @pq_endtypsend(ptr noundef nonnull %1) #13
  %i.k = ptrtoint ptr %i.j to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 7) i64 @timetypmodin(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @pg_detoast_datum(ptr noundef %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.f = call ptr @ArrayGetIntegerTypmods(ptr noundef %i.e, ptr noundef nonnull %i.a) #13
  %i.g = load i32, ptr %i.a, align 4
  %.not.i = icmp eq i32 %i.g, 1
  br i1 %.not.i, label %anytime_typmodin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.i = call i32 @errcode(i32 noundef 50856066) #13 ; 0 uses
  %i.j = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.31) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 58, ptr noundef nonnull @__func__.anytime_typmodin) #13
  unreachable

anytime_typmodin.exit:                            ; preds = %bb.a
  %i.k = load i32, ptr %i.f, align 4
  %i.l = call range(i32 0, 7) i32 @anytime_typmod_check(i1 noundef zeroext false, i32 noundef %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.m = zext nneg i32 %i.l to i64
  ret i64 %i.m
}

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @timetypmodout(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.34, i32 noundef %i.c, ptr noundef nonnull @.str.33) #13
  br label %anytime_typmodout.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @pstrdup(ptr noundef nonnull @.str.33) #13
  br label %anytime_typmodout.exit

anytime_typmodout.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.g = ptrtoint ptr %.0.i to i64
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -9223372036854775808, 86400000001) i64 @make_time(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load double, ptr %i.g, align 8           ; 3 uses
  %or.cond.i = icmp ugt i32 %i.c, 24
  %i.i = icmp ugt i32 %i.f, 59
  %or.cond5.i = or i1 %or.cond.i, %i.i
  %i.j = fcmp uno double %i.h, 0.000000e+00
  %or.cond21.i = or i1 %i.j, %or.cond5.i
  br i1 %or.cond21.i, label %float_time_overflows.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fmul nnan double %i.h, 1.000000e+06
  %i.l = tail call double @llvm.rint.f64(double %i.k) ; 3 uses
  %i.m = fcmp olt double %i.l, 0.000000e+00
  %i.n = fcmp ogt double %i.l, 6.000000e+07
  %or.cond7.i = or i1 %i.m, %i.n
  br i1 %or.cond7.i, label %float_time_overflows.exit.thread, label %float_time_overflows.exit

float_time_overflows.exit:                        ; preds = %bb.b
  %i.o = mul i64 %i.b, 60
  %i.p = add i64 %i.o, %i.e
  %i.q = mul i64 %i.p, 60
  %i.r = and i64 %i.q, 4294967292
  %i.s = mul nuw nsw i64 %i.r, 1000000
  %i.t = fptosi double %i.l to i64
  %i.u = add i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 86400000000
  br i1 %i.v, label %float_time_overflows.exit.thread, label %bb.c

float_time_overflows.exit.thread:                 ; preds = %bb.a, %bb.b, %float_time_overflows.exit
  %i.w = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.x = tail call i32 @errcode(i32 noundef 134217858) #13 ; 0 uses
  %i.y = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.22, i32 noundef %i.c, i32 noundef %i.f, double noundef %i.h) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1694, ptr noundef nonnull @__func__.make_time) #13
  unreachable

bb.c:                                             ; preds = %float_time_overflows.exit
  ret i64 %i.u
}

; Function Attrs: nounwind uwtable
define dso_local i64 @time_support(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 478
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @TemporalSimplify(i32 noundef 6, ptr noundef %i.g) #13
  %i.i = ptrtoint ptr %i.h to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

declare ptr @TemporalSimplify(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @time_scale(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %or.cond.i = icmp ult i32 %i.e, 7
  br i1 %or.cond.i, label %bb.b, label %AdjustTimeForTypmod.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i64 %i.b, -1
  %i.g = and i64 %i.d, 7                          ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @AdjustTimeForTypmod.TimeOffsets, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @AdjustTimeForTypmod.TimeScales, i64 %i.g
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %i.i, %i.b
  %.fr14.i = freeze i64 %i.l                      ; 2 uses
  %i.m = srem i64 %.fr14.i, %i.k
  %i.n = sub nsw i64 %.fr14.i, %i.m
  br label %AdjustTimeForTypmod.exit

bb.d:                                             ; preds = %bb.b
  %i.o = sub i64 %i.i, %i.b
  %.fr.i = freeze i64 %i.o                        ; 2 uses
  %i.p = srem i64 %.fr.i, %i.k
  %.neg.i = sub i64 %i.p, %.fr.i
  br label %AdjustTimeForTypmod.exit

AdjustTimeForTypmod.exit:                         ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ %i.b, %bb.a ], [ %i.n, %bb.c ], [ %.neg.i, %bb.d ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @time_eq(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = zext i1 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @time_ne(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ne i64 %i.b, %i.d
  %i.f = zext i1 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @time_lt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp slt i64 %i.b, %i.d
  %i.f = zext i1 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @time_le(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp sle i64 %i.b, %i.d
  %i.f = zext i1 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @time_gt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp sgt i64 %i.b, %i.d
  %i.f = zext i1 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @time_ge(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp sge i64 %i.b, %i.d
  %i.f = zext i1 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -1, 2) i64 @time_cmp(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %.0 = tail call i64 @llvm.scmp.i64.i64(i64 %i.b, i64 %i.d)
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @time_hash(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @hashint8(ptr noundef %0) #13
  ret i64 %i.a
}

declare i64 @hashint8(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i64 @time_hash_extended(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @hashint8extended(ptr noundef %0) #13
  ret i64 %i.a
}

declare i64 @hashint8extended(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @time_larger(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call i64 @llvm.smax.i64(i64 %i.b, i64 %i.d)
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @time_smaller(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %i.d)
  ret i64 %i.e
}

end_hunk_0
