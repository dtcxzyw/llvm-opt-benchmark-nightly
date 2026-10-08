Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/int?download=true
inline.NumInlined: 304
inline.NumDeleted: 29
begin_hunk_0_@int24div:bb.a
  %i.f = tail call i32 @errcode(i32 noundef 33816706) #11 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1068, ptr noundef nonnull @__func__.int24div) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i16
  %i.k = sext i16 %i.j to i32
  %i.l = sdiv i32 %i.k, %i.c
  %i.m = sext i32 %i.l to i64
  ret i64 %i.m
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @int42pl(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i16
  %i.g = sext i16 %i.f to i32
  %i.h = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.c, i32 %i.g) ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.j = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.k = tail call i32 @errcode(i32 noundef 50331778) #11 ; 0 uses
  %i.l = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1087, ptr noundef nonnull @__func__.int42pl) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = extractvalue { i32, i1 } %i.h, 0
  %i.n = sext i32 %i.m to i64
  ret i64 %i.n
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @int42mi(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i16
  %i.g = sext i16 %i.f to i32
  %i.h = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.c, i32 %i.g) ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.j = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.k = tail call i32 @errcode(i32 noundef 50331778) #11 ; 0 uses
  %i.l = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1101, ptr noundef nonnull @__func__.int42mi) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = extractvalue { i32, i1 } %i.h, 0
  %i.n = sext i32 %i.m to i64
  ret i64 %i.n
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @int42mul(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i16
  %i.g = sext i16 %i.f to i32
  %i.h = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.c, i32 %i.g) ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.j = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.k = tail call i32 @errcode(i32 noundef 50331778) #11 ; 0 uses
  %i.l = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1115, ptr noundef nonnull @__func__.int42mul) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = extractvalue { i32, i1 } %i.h, 0
  %i.n = sext i32 %i.m to i64
  ret i64 %i.n
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @int42div(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i16                    ; 2 uses
  switch i16 %i.f, label %bb.f [
    i16 0, label %bb.b
    i16 -1, label %bb.c
  ], !prof !7

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.h = tail call i32 @errcode(i32 noundef 33816706) #11 ; 0 uses
  %i.i = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1130, ptr noundef nonnull @__func__.int42div) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %i.c, -2147483648
  br i1 %i.j, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.l = tail call i32 @errcode(i32 noundef 50331778) #11 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1146, ptr noundef nonnull @__func__.int42div) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %.neg = mul i64 %i.b, -4294967296
  %i.n = ashr exact i64 %.neg, 32
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.o = sext i16 %i.f to i32
  %i.p = sdiv i32 %i.c, %i.o
  %i.q = sext i32 %i.p to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i64 [ %i.n, %bb.e ], [ %i.q, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483647, 2147483648) i64 @int4mod(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  switch i32 %i.c, label %bb.c [
    i32 0, label %bb.b
    i32 -1, label %bb.d
  ], !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.e = tail call i32 @errcode(i32 noundef 33816706) #11 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1168, ptr noundef nonnull @__func__.int4mod) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8
  %i.i = trunc i64 %i.h to i32
  %i.j = srem i32 %i.i, %i.c
  %i.k = sext i32 %i.j to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -32767, 32768) i64 @int2mod(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i16                    ; 2 uses
  switch i16 %i.c, label %bb.c [
    i16 0, label %bb.b
    i16 -1, label %bb.d
  ], !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.e = tail call i32 @errcode(i32 noundef 33816706) #11 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1196, ptr noundef nonnull @__func__.int2mod) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = sext i16 %i.c to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i16
  %i.k = sext i16 %i.j to i32
  %i.l = srem i32 %i.k, %i.g
  %1 = zext i32 %i.l to i64
  %sext = shl i64 %1, 48
  %2 = ashr exact i64 %sext, 48
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i64 [ %2, %bb.c ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2147483648) i64 @int4abs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = icmp eq i32 %i.c, -2147483648
  br i1 %i.d, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.f = tail call i32 @errcode(i32 noundef 50331778) #11 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1229, ptr noundef nonnull @__func__.int4abs) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true)
  %i.i = zext nneg i32 %i.h to i64
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 32768) i64 @int2abs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i16                    ; 2 uses
  %i.d = icmp eq i16 %i.c, -32768
  br i1 %i.d, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.f = tail call i32 @errcode(i32 noundef 50331778) #11 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1243, ptr noundef nonnull @__func__.int2abs) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i16 @llvm.abs.i16(i16 %i.c, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @int4gcd(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  %i.g = tail call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.h = sub i32 0, %i.g
  %i.i = tail call i32 @llvm.abs.i32(i32 %i.f, i1 false)
  %i.j = sub i32 0, %i.i
  %i.k = icmp sgt i32 %i.h, %i.j                  ; 2 uses
  %spec.select.i = select i1 %i.k, i32 %i.f, i32 %i.c ; 3 uses
  %spec.select28.i = select i1 %i.k, i32 %i.c, i32 %i.f ; 4 uses
  %i.l = icmp eq i32 %spec.select.i, -2147483648
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = and i32 %spec.select28.i, 2147483647
  %or.cond.i = icmp eq i32 %i.m, 0
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.o = tail call i32 @errcode(i32 noundef 50331778) #11 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1293, ptr noundef nonnull @__func__.int4gcd_internal) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %cond.i = icmp eq i32 %spec.select28.i, -1
  br i1 %cond.i, label %int4gcd_internal.exit, label %.lr.ph.i.preheader

bb.e:                                             ; preds = %bb.a
  %.not30.i = icmp eq i32 %spec.select28.i, 0
  br i1 %.not30.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e, %bb.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.132.i = phi i32 [ %i.q, %.lr.ph.i ], [ %spec.select28.i, %.lr.ph.i.preheader ] ; 3 uses
  %.12631.i = phi i32 [ %.132.i, %.lr.ph.i ], [ %spec.select.i, %.lr.ph.i.preheader ]
  %i.q = srem i32 %.12631.i, %.132.i              ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.126.lcssa.i = phi i32 [ %spec.select.i, %bb.e ], [ %.132.i, %.lr.ph.i ]
  %spec.select29.i = tail call i32 @llvm.abs.i32(i32 %.126.lcssa.i, i1 false)
  %i.r = sext i32 %spec.select29.i to i64
  br label %int4gcd_internal.exit

int4gcd_internal.exit:                            ; preds = %bb.d, %._crit_edge.i
  %.027.i = phi i64 [ %i.r, %._crit_edge.i ], [ 1, %bb.d ]
  ret i64 %.027.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2147483648) i64 @int4lcm(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32                    ; 5 uses
  %i.g = icmp eq i32 %i.c, 0
  %i.h = icmp eq i32 %i.f, 0
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.j = sub i32 0, %i.i
  %i.k = tail call i32 @llvm.abs.i32(i32 %i.f, i1 false)
  %i.l = sub i32 0, %i.k
  %i.m = icmp samesign ugt i32 %i.j, %i.l         ; 2 uses
  %spec.select.i = select i1 %i.m, i32 %i.f, i32 %i.c ; 2 uses
  %spec.select28.i = select i1 %i.m, i32 %i.c, i32 %i.f ; 3 uses
  %i.n = icmp eq i32 %spec.select.i, -2147483648
  br i1 %i.n, label %bb.c, label %.lr.ph.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.o = and i32 %spec.select28.i, 2147483647
  %or.cond.i = icmp eq i32 %i.o, 0
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.q = tail call i32 @errcode(i32 noundef 50331778) #11 ; 0 uses
  %i.r = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1293, ptr noundef nonnull @__func__.int4gcd_internal) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %cond.i = icmp eq i32 %spec.select28.i, -1
  br i1 %cond.i, label %int4gcd_internal.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b, %bb.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.132.i = phi i32 [ %i.s, %.lr.ph.i ], [ %spec.select28.i, %.lr.ph.i.preheader ] ; 3 uses
  %.12631.i = phi i32 [ %.132.i, %.lr.ph.i ], [ %spec.select.i, %.lr.ph.i.preheader ]
  %i.s = srem i32 %.12631.i, %.132.i              ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %spec.select29.i = tail call i32 @llvm.abs.i32(i32 %.132.i, i1 false)
  br label %int4gcd_internal.exit

int4gcd_internal.exit:                            ; preds = %bb.e, %._crit_edge.i
  %.027.i = phi i32 [ %spec.select29.i, %._crit_edge.i ], [ 1, %bb.e ]
  %i.t = sdiv i32 %i.c, %.027.i
  %i.u = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.t, i32 %i.f) ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 1
  %i.w = extractvalue { i32, i1 } %i.u, 0         ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g, !prof !6

bb.f:                                             ; preds = %int4gcd_internal.exit
  %i.x = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.y = tail call i32 @errcode(i32 noundef 50331778) #11 ; 0 uses
  %i.z = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1361, ptr noundef nonnull @__func__.int4lcm) #11
  unreachable

bb.g:                                             ; preds = %int4gcd_internal.exit
  %i.aa = icmp eq i32 %i.w, -2147483648
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.ac = tail call i32 @errcode(i32 noundef 50331778) #11 ; 0 uses
  %i.ad = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1367, ptr noundef nonnull @__func__.int4lcm) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %spec.select = tail call i32 @llvm.abs.i32(i32 %i.w, i1 true)
  %i.ae = zext nneg i32 %spec.select to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.0 = phi i64 [ %i.ae, %bb.i ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -32768, 32768) i64 @int2larger(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
end_hunk_0
begin_hunk_1_@int2larger:bb.a
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -32768, 32768) i64 @int2smaller(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i16
  %i.g = tail call i16 @llvm.smin.i16(i16 %i.c, i16 %i.f)
  %i.h = sext i16 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @int4larger(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %i.f)
  %i.h = sext i32 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @int4smaller(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.f)
  %i.h = sext i32 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @int4and(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, %i.b
  %sext = shl i64 %i.e, 32
  %i.f = ashr exact i64 %sext, 32
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @int4or(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = or i64 %i.d, %i.b
  %sext = shl i64 %i.e, 32
  %i.f = ashr exact i64 %sext, 32
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @int4xor(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = xor i64 %i.d, %i.b
  %sext = shl i64 %i.e, 32
  %i.f = ashr exact i64 %sext, 32
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @int4shl(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = shl i32 %i.c, %i.f
  %i.h = sext i32 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @int4shr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = ashr i32 %i.c, %i.f
  %i.h = sext i32 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @int4not(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = xor i64 %i.b, -1
  %sext = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext, 32
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -32768, 32768) i64 @int2and(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, %i.b
  %sext = shl i64 %i.e, 48
  %i.f = ashr exact i64 %sext, 48
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -32768, 32768) i64 @int2or(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = or i64 %i.d, %i.b
  %sext = shl i64 %i.e, 48
  %i.f = ashr exact i64 %sext, 48
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -32768, 32768) i64 @int2xor(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = xor i64 %i.d, %i.b
  %sext = shl i64 %i.e, 48
  %i.f = ashr exact i64 %sext, 48
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -32768, 32768) i64 @int2not(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = xor i64 %i.b, -1
  %sext = shl i64 %i.c, 48
  %i.d = ashr exact i64 %sext, 48
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -32768, 32768) i64 @int2shl(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = shl i32 %i.c, %i.f
  %i.h = zext i32 %i.g to i64
  %sext = shl i64 %i.h, 48
  %i.i = ashr exact i64 %sext, 48
  ret i64 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -32768, 32768) i64 @int2shr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = sext i16 %i.c to i32
  %i.h = ashr i32 %i.g, %i.f
  %1 = zext i32 %i.h to i64
  %sext = shl i64 %1, 48
  %2 = ashr exact i64 %sext, 48
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @generate_series_int4(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @generate_series_step_int4(ptr noundef %0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @generate_series_step_int4(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.l = load i16, ptr %i.k, align 2
  %i.m = icmp eq i16 %i.l, 3
  br i1 %i.m, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.r = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.s = tail call i32 @errcode(i32 noundef 50856066) #11 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1559, ptr noundef nonnull @__func__.generate_series_step_int4) #11
  unreachable

.thread:                                          ; preds = %bb.b, %bb.c
  %.04043 = phi i32 [ %i.p, %bb.c ], [ 1, %bb.b ]
  %i.u = tail call ptr @init_MultiFuncCall(ptr noundef nonnull %0) #11 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.w, ptr @CurrentMemoryContext, align 8
  %i.y = tail call ptr @palloc(i64 noundef 12) #11 ; 4 uses
  store i32 %i.g, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.j, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %.04043, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.y, ptr %i.ab, align 8
  store ptr %i.x, ptr @CurrentMemoryContext, align 8
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.a
  %i.ac = tail call ptr @per_MultiFuncCall(ptr noundef nonnull %0) #11 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8            ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4            ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4            ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %.not = icmp sgt i32 %i.af, %i.ak
  br i1 %.not, label %.thread44, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.al = icmp slt i32 %i.ah, 0
  br i1 %i.al, label %bb.h, label %.thread44

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.an = load i32, ptr %i.am, align 4
  %.not41 = icmp slt i32 %i.af, %i.an
  br i1 %.not41, label %.thread44, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ao = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.af, i32 %i.ah) ; 2 uses
  %i.ap = extractvalue { i32, i1 } %i.ao, 1
  %i.aq = extractvalue { i32, i1 } %i.ao, 0
  store i32 %i.aq, ptr %i.ae, align 4
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ag, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ar = load i64, ptr %i.ac, align 8
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.ac, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i32 1, ptr %i.av, align 8
  %i.aw = sext i32 %i.af to i64
  br label %bb.l

.thread44:                                        ; preds = %bb.f, %bb.g, %bb.h
  tail call void @end_MultiFuncCall(ptr noundef nonnull %0, ptr noundef nonnull %i.ac) #11
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i32 2, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.ba, align 4
  br label %bb.l

bb.l:                                             ; preds = %.thread44, %bb.k
  %.0 = phi i64 [ %i.aw, %bb.k ], [ 0, %.thread44 ]
  ret i64 %.0
}

declare ptr @init_MultiFuncCall(ptr noundef) local_unnamed_addr #2

declare ptr @per_MultiFuncCall(ptr noundef) local_unnamed_addr #2

declare void @end_MultiFuncCall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @generate_series_int4_support(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 483
  br i1 %i.e, label %bb.b, label %is_funcclause.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %is_funcclause.exit.thread, label %is_funcclause.exit

is_funcclause.exit:                               ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 15
  br i1 %i.i, label %list_length.exit, label %is_funcclause.exit.thread

list_length.exit:                                 ; preds = %is_funcclause.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.k, i64 16       ; 3 uses
  %.val40 = load ptr, ptr %i.n, align 8
  %i.o = load ptr, ptr %.val40, align 8
  %i.p = tail call ptr @estimate_expression_value(ptr noundef %i.m, ptr noundef %i.o) #11 ; 3 uses
  %i.q = load ptr, ptr %i.l, align 8
  %.val39 = load ptr, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.val39, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call ptr @estimate_expression_value(ptr noundef %i.q, ptr noundef %i.s) #11 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp sgt i32 %i.v, 2
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %list_length.exit
  %i.x = load ptr, ptr %i.l, align 8
  %.val = load ptr, ptr %i.n, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call ptr @estimate_expression_value(ptr noundef %i.x, ptr noundef %i.z) #11
  br label %bb.d

bb.d:                                             ; preds = %list_length.exit, %bb.c
  %.0 = phi ptr [ %i.aa, %bb.c ], [ null, %list_length.exit ] ; 5 uses
  %i.ab = load i32, ptr %i.p, align 4
  %i.ac = icmp ne i32 %i.ab, 7                    ; 3 uses
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ae = load i8, ptr %i.ad, align 8, !range !18, !noundef !19
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %is_funcclause.exit.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = load i32, ptr %i.t, align 4
  %i.ah = icmp ne i32 %i.ag, 7                    ; 3 uses
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aj = load i8, ptr %i.ai, align 8, !range !18, !noundef !19
  %i.ak = trunc nuw i8 %i.aj to i1
end_hunk_1
