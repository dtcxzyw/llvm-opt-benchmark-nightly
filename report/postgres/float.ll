Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/float?download=true
inline.NumInlined: 560
inline.NumDeleted: 51
begin_hunk_0_@float48eq:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @float48ne(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = bitcast i32 %i.c to float                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load double, ptr %i.e, align 8           ; 2 uses
  %i.g = fpext float %i.d to double
  %i.h = fcmp uno float %i.d, 0.000000e+00
  %i.i = fcmp ord double %i.f, 0.000000e+00
  %i.j = fcmp une double %i.f, %i.g
  %.in.i = select i1 %i.h, i1 %i.i, i1 %i.j
  %i.k = zext i1 %.in.i to i64
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @float48lt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = bitcast i32 %i.c to float                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load double, ptr %i.e, align 8           ; 2 uses
  %i.g = fpext float %i.d to double
  %i.h = fcmp ord float %i.d, 0.000000e+00
  %i.i = fcmp uno double %i.f, 0.000000e+00
  %i.j = fcmp ogt double %i.f, %i.g
  %i.k = or i1 %i.i, %i.j
  %i.l = and i1 %i.h, %i.k
  %i.m = zext i1 %i.l to i64
  ret i64 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @float48le(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = bitcast i32 %i.c to float
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load double, ptr %i.e, align 8           ; 2 uses
  %i.g = fpext float %i.d to double
  %i.h = fcmp uno double %i.f, 0.000000e+00
  %i.i = fcmp oge double %i.f, %i.g
  %spec.select.i = or i1 %i.h, %i.i
  %i.j = zext i1 %spec.select.i to i64
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @float48gt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = bitcast i32 %i.c to float                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load double, ptr %i.e, align 8           ; 2 uses
  %i.g = fpext float %i.d to double
  %i.h = fcmp ord double %i.f, 0.000000e+00
  %i.i = fcmp uno float %i.d, 0.000000e+00
  %i.j = fcmp olt double %i.f, %i.g
  %i.k = or i1 %i.i, %i.j
  %i.l = and i1 %i.h, %i.k
  %i.m = zext i1 %i.l to i64
  ret i64 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @float48ge(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = bitcast i32 %i.c to float                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load double, ptr %i.e, align 8
  %i.g = fpext float %i.d to double
  %i.h = fcmp uno float %i.d, 0.000000e+00
  %i.i = fcmp ole double %i.f, %i.g
  %spec.select.i = or i1 %i.h, %i.i
  %i.j = zext i1 %spec.select.i to i64
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @float84eq(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load double, ptr %i.a, align 8           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = bitcast i32 %i.e to float                ; 2 uses
  %i.g = fpext float %i.f to double
  %i.h = fcmp uno double %i.b, 0.000000e+00
  %i.i = fcmp uno float %i.f, 0.000000e+00
  %i.j = fcmp oeq double %i.b, %i.g
  %.in.i = select i1 %i.h, i1 %i.i, i1 %i.j
  %i.k = zext i1 %.in.i to i64
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @float84ne(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load double, ptr %i.a, align 8           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = bitcast i32 %i.e to float                ; 2 uses
  %i.g = fpext float %i.f to double
  %i.h = fcmp uno double %i.b, 0.000000e+00
  %i.i = fcmp ord float %i.f, 0.000000e+00
  %i.j = fcmp une double %i.b, %i.g
  %.in.i = select i1 %i.h, i1 %i.i, i1 %i.j
  %i.k = zext i1 %.in.i to i64
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @float84lt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load double, ptr %i.a, align 8           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = bitcast i32 %i.e to float                ; 2 uses
  %i.g = fpext float %i.f to double
  %i.h = fcmp ord double %i.b, 0.000000e+00
  %i.i = fcmp uno float %i.f, 0.000000e+00
  %i.j = fcmp olt double %i.b, %i.g
  %i.k = or i1 %i.i, %i.j
  %i.l = and i1 %i.h, %i.k
  %i.m = zext i1 %i.l to i64
  ret i64 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @float84le(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load double, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = bitcast i32 %i.e to float                ; 2 uses
  %i.g = fpext float %i.f to double
  %i.h = fcmp uno float %i.f, 0.000000e+00
  %i.i = fcmp ole double %i.b, %i.g
  %spec.select.i = or i1 %i.h, %i.i
  %i.j = zext i1 %spec.select.i to i64
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @float84gt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load double, ptr %i.a, align 8           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = bitcast i32 %i.e to float                ; 2 uses
  %i.g = fpext float %i.f to double
  %i.h = fcmp ord float %i.f, 0.000000e+00
  %i.i = fcmp uno double %i.b, 0.000000e+00
  %i.j = fcmp ogt double %i.b, %i.g
  %i.k = or i1 %i.i, %i.j
  %i.l = and i1 %i.h, %i.k
  %i.m = zext i1 %i.l to i64
  ret i64 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @float84ge(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load double, ptr %i.a, align 8           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = bitcast i32 %i.e to float
  %i.g = fpext float %i.f to double
  %i.h = fcmp uno double %i.b, 0.000000e+00
  %i.i = fcmp oge double %i.b, %i.g
  %spec.select.i = or i1 %i.h, %i.i
  %i.j = zext i1 %spec.select.i to i64
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483647, 2147483648) i64 @width_bucket_float8(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load double, ptr %i.a, align 8           ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load double, ptr %i.c, align 8           ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load double, ptr %i.e, align 8
  %.fr = freeze double %i.f                       ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i64, ptr %i.g, align 8
  %i.i = trunc i64 %i.h to i32                    ; 9 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.l = tail call i32 @errcode(i32 noundef 386138242) #19 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.46) #19 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 4308, ptr noundef nonnull @__func__.width_bucket_float8) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %or.cond = fcmp uno double %i.d, %.fr
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.o = tail call i32 @errcode(i32 noundef 386138242) #19 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.47) #19 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 4313, ptr noundef nonnull @__func__.width_bucket_float8) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = tail call double @llvm.fabs.f64(double %i.d)
  %i.r = fcmp oeq double %i.q, +inf
  %i.s = tail call double @llvm.fabs.f64(double %.fr)
  %i.t = fcmp oeq double %i.s, +inf
  %or.cond62 = or i1 %i.r, %i.t
  br i1 %or.cond62, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.v = tail call i32 @errcode(i32 noundef 386138242) #19 ; 0 uses
  %i.w = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.48) #19 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 4318, ptr noundef nonnull @__func__.width_bucket_float8) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = fcmp olt double %i.d, %.fr
  br i1 %i.x, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.y = fcmp ord double %i.b, 0.000000e+00
  %i.z = fcmp ult double %i.b, %.fr
  %or.cond63 = and i1 %i.y, %i.z
  br i1 %or.cond63, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %1 = icmp eq i32 %i.i, 2147483647
  %2 = add nuw nsw i32 %i.i, 1
  br i1 %1, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.ab = tail call i32 @errcode(i32 noundef 50331778) #19 ; 0 uses
  %i.ac = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.17) #19 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 4327, ptr noundef nonnull @__func__.width_bucket_float8) #19
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ad = fcmp olt double %i.b, %i.d
  br i1 %i.ad, label %bb.z, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = fsub double %.fr, %i.d                  ; 2 uses
  %i.af = tail call double @llvm.fabs.f64(double %i.ae)
  %i.ag = fcmp oeq double %i.af, +inf
  %i.ah = uitofp nneg i32 %i.i to double
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = fsub nnan double %i.b, %i.d
  %i.aj = fdiv double %i.ai, %i.ae
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ak = fmul nnan double %i.b, 5.000000e-01
  %i.al = fmul nnan double %i.d, 5.000000e-01     ; 2 uses
  %i.am = fsub nnan double %i.ak, %i.al
  %i.an = fmul nnan double %.fr, 5.000000e-01
  %i.ao = fsub nnan double %i.an, %i.al
  %i.ap = fdiv double %i.am, %i.ao
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink = phi double [ %i.ap, %bb.n ], [ %i.aj, %bb.m ]
  %i.aq = fmul double %.sink, %i.ah
  %storemerge58 = fptosi double %i.aq to i32
  %i.ar = add nsw i32 %i.i, -1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %storemerge58, i32 %i.ar)
  %i.as = add nsw i32 %spec.select, 1
  br label %bb.z

bb.p:                                             ; preds = %bb.g
  %i.at = fcmp ogt double %i.d, %.fr
  br i1 %i.at, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.au = fcmp uno double %i.b, 0.000000e+00
  %i.av = fcmp ogt double %i.b, %i.d
  %or.cond64 = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond64, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = fcmp ugt double %i.b, %.fr
  br i1 %i.aw, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %3 = icmp eq i32 %i.i, 2147483647
  %4 = add nuw nsw i32 %i.i, 1
  br i1 %3, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.ax = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.ay = tail call i32 @errcode(i32 noundef 50331778) #19 ; 0 uses
  %i.az = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.17) #19 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 4367, ptr noundef nonnull @__func__.width_bucket_float8) #19
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.ba = fsub double %i.d, %.fr                  ; 2 uses
  %i.bb = tail call double @llvm.fabs.f64(double %i.ba)
  %i.bc = fcmp oeq double %i.bb, +inf
  %i.bd = uitofp nneg i32 %i.i to double
  br i1 %i.bc, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = fsub nnan double %i.d, %i.b
  %i.bf = fdiv double %i.be, %i.ba
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bg = fmul nnan double %i.d, 5.000000e-01     ; 2 uses
  %i.bh = fmul nnan double %i.b, 5.000000e-01
  %i.bi = fsub nnan double %i.bg, %i.bh
  %i.bj = fmul nnan double %.fr, 5.000000e-01
  %i.bk = fsub nnan double %i.bg, %i.bj
  %i.bl = fdiv double %i.bi, %i.bk
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink69 = phi double [ %i.bl, %bb.w ], [ %i.bf, %bb.v ]
  %i.bm = fmul double %.sink69, %i.bd
  %storemerge = fptosi double %i.bm to i32
  %i.bn = add nsw i32 %i.i, -1
  %spec.select65 = tail call i32 @llvm.smin.i32(i32 %storemerge, i32 %i.bn)
  %i.bo = add nsw i32 %spec.select65, 1
  br label %bb.z

bb.y:                                             ; preds = %bb.p
  %i.bp = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.bq = tail call i32 @errcode(i32 noundef 386138242) #19 ; 0 uses
  %i.br = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.49) #19 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 4384, ptr noundef nonnull @__func__.width_bucket_float8) #19
  unreachable

bb.z:                                             ; preds = %bb.q, %bb.k, %bb.x, %bb.s, %bb.i, %bb.o
  %.0 = phi i32 [ %4, %bb.s ], [ %i.as, %bb.o ], [ %2, %bb.i ], [ 0, %bb.k ], [ %i.bo, %bb.x ], [ 0, %bb.q ]
  %i.bs = sext i32 %.0 to i64
  ret i64 %i.bs
}

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #6

attributes #0 = { cold noinline noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
end_hunk_0
