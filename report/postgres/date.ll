Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/date?download=true
inline.NumInlined: 507
inline.NumDeleted: 47
begin_hunk_0_@timetz_part_common:bb.a
  %i.ba = ashr exact i64 %sext59, 32
  %i.bb = mul nsw i64 %i.ba, 1000000
  %sext60 = shl i64 %i.am, 32
  %i.bc = ashr exact i64 %sext60, 32
  %i.bd = add nsw i64 %i.bc, %i.bb
  br label %bb.z

bb.m:                                             ; preds = %bb.h
  br i1 %1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %sext57 = shl i64 %i.ak, 32
  %i.be = ashr exact i64 %sext57, 32
  %i.bf = mul nsw i64 %i.be, 1000000
  %sext58 = shl i64 %i.am, 32
  %i.bg = ashr exact i64 %sext58, 32
  %i.bh = add nsw i64 %i.bg, %i.bf
  %i.bi = call ptr @int64_div_fast_to_numeric(i64 noundef %i.bh, i32 noundef 3) #13
  %i.bj = ptrtoint ptr %i.bi to i64
  br label %bb.ac

bb.o:                                             ; preds = %bb.m
  %i.bk = sitofp i32 %i.al to double
  %i.bl = sitofp i32 %i.an to double
  %i.bm = fdiv double %i.bl, 1.000000e+03
  %i.bn = call double @llvm.fmuladd.f64(double %i.bk, double 1.000000e+03, double %i.bm)
  %i.bo = bitcast double %i.bn to i64
  br label %bb.ac

bb.p:                                             ; preds = %bb.h
  br i1 %1, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %sext55 = shl i64 %i.ak, 32
  %i.bp = ashr exact i64 %sext55, 32
  %i.bq = mul nsw i64 %i.bp, 1000000
  %sext56 = shl i64 %i.am, 32
  %i.br = ashr exact i64 %sext56, 32
  %i.bs = add nsw i64 %i.br, %i.bq
  %i.bt = call ptr @int64_div_fast_to_numeric(i64 noundef %i.bs, i32 noundef 6) #13
  %i.bu = ptrtoint ptr %i.bt to i64
  br label %bb.ac

bb.r:                                             ; preds = %bb.p
  %i.bv = sitofp i32 %i.al to double
  %i.bw = sitofp i32 %i.an to double
  %i.bx = fdiv double %i.bw, 1.000000e+06
  %i.by = fadd double %i.bx, %i.bv
  %i.bz = bitcast double %i.by to i64
  br label %bb.ac

bb.s:                                             ; preds = %bb.h
  br label %bb.z

bb.t:                                             ; preds = %bb.h
  %i.ca = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.cb = call i32 @errcode(i32 noundef 1088) #13 ; 0 uses
  %i.cc = call ptr @format_type_be(i32 noundef 1266) #13
  %i.cd = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.17, ptr noundef %i.y, ptr noundef %i.cc) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 3139, ptr noundef nonnull @__func__.timetz_part_common) #13
  unreachable

bb.u:                                             ; preds = %bb.g
  %i.ce = icmp eq i32 %.035, 0
  %i.cf = load i32, ptr %i.a, align 4
  %i.cg = icmp eq i32 %i.cf, 11
  %or.cond = select i1 %i.ce, i1 %i.cg, i1 false
  br i1 %or.cond, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ch = load i64, ptr %i.h, align 8             ; 2 uses
  br i1 %1, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.ck, 1000000
  %i.cm = add i64 %i.cl, %i.ch
  %i.cn = call ptr @int64_div_fast_to_numeric(i64 noundef %i.cm, i32 noundef 6) #13
  %i.co = ptrtoint ptr %i.cn to i64
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.cp = sitofp i64 %i.ch to double
  %i.cq = fdiv double %i.cp, 1.000000e+06
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = sitofp i32 %i.cs to double
  %i.cu = fadd double %i.cq, %i.ct
  %i.cv = bitcast double %i.cu to i64
  br label %bb.ac

bb.y:                                             ; preds = %bb.u
  %i.cw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.cx = call i32 @errcode(i32 noundef 50856066) #13 ; 0 uses
  %i.cy = call ptr @format_type_be(i32 noundef 1266) #13
  %i.cz = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.18, ptr noundef %i.y, ptr noundef %i.cy) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 3159, ptr noundef nonnull @__func__.timetz_part_common) #13
  unreachable

bb.z:                                             ; preds = %bb.h, %bb.s, %bb.l, %bb.k, %bb.j, %bb.i
  %.134.ph = phi i64 [ %i.af, %bb.s ], [ %i.as, %bb.i ], [ %i.bd, %bb.l ], [ %i.az, %bb.k ], [ %i.aw, %bb.j ], [ %i.ai, %bb.h ] ; 2 uses
  br i1 %1, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.da = call ptr @int64_to_numeric(i64 noundef %.134.ph) #13
  %i.db = ptrtoint ptr %i.da to i64
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.dc = sitofp i64 %.134.ph to double
  %i.dd = bitcast double %i.dc to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.n, %bb.o, %bb.q, %bb.r, %bb.ab, %bb.aa, %bb.x, %bb.w
  %.1 = phi i64 [ %i.db, %bb.aa ], [ %i.dd, %bb.ab ], [ %i.cv, %bb.x ], [ %i.co, %bb.w ], [ %i.bz, %bb.r ], [ %i.bj, %bb.n ], [ %i.bo, %bb.o ], [ %i.bu, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define dso_local i64 @extract_timetz(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @timetz_part_common(ptr noundef %0, i1 noundef zeroext true)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @timetz_zone(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %1 = alloca %struct.pg_tm, align 8              ; 3 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.i) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @text_to_cstring_buffer(ptr noundef %i.j, ptr noundef nonnull %i.b, i64 noundef 256) #13
  %i.m = call i32 @DecodeTimezoneName(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #13
  switch i32 %i.m, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.c, align 4
  %i.o = sub i32 0, %i.n
  store i32 %i.o, ptr %i.a, align 4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.p = call i64 @GetCurrentTransactionStartTimestamp() #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = call i32 @DetermineTimeZoneAbbrevOffsetTS(i64 noundef %i.p, ptr noundef nonnull %i.b, ptr noundef %i.q, ptr noundef nonnull %i.e) #13
  store i32 %i.r, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.s = call i64 @GetCurrentTransactionStartTimestamp() #13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = call i32 @timestamp2tm(i64 noundef %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef null, ptr noundef %i.t) #13
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.w = call i32 @errcode(i32 noundef 134217858) #13 ; 0 uses
  %i.x = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 3229, ptr noundef nonnull @__func__.timetz_zone) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.b
  %i.y = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.z = call ptr @palloc(i64 noundef 16) #13     ; 3 uses
  %i.aa = load i64, ptr %i.y, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ae = sub i32 %i.ac, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %i.af, 1000000              ; 3 uses
  %i.ah = add i64 %i.ag, %i.aa
  %smax = call i64 @llvm.smax.i64(i64 %i.ah, i64 0)
  %2 = add nuw i64 %smax, 86399999999
  %3 = add i64 %i.aa, %i.ag
  %i.ai = sub i64 %2, %3
  %.fr = freeze i64 %i.ai                         ; 2 uses
  %4 = urem i64 %.fr, 86400000000
  %5 = sub nuw i64 %.fr, %4
  %i.aj = add i64 %i.aa, %5
  %i.ak = add i64 %i.aj, %i.ag                    ; 3 uses
  %i.al = icmp samesign ugt i64 %i.ak, 86399999999
  %i.am = urem i64 %i.ak, 86400000000
  %storemerge17 = select i1 %i.al, i64 %i.am, i64 %i.ak
  store i64 %storemerge17, ptr %i.z, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %i.ad, ptr %i.an, align 8
  %i.ao = ptrtoint ptr %i.z to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i64 %i.ao
}

declare void @text_to_cstring_buffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @DecodeTimezoneName(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @GetCurrentTransactionStartTimestamp() local_unnamed_addr #3

declare i32 @DetermineTimeZoneAbbrevOffsetTS(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @timetz_izone(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.g = load i32, ptr %i.f, align 4
  switch i32 %i.g, label %.thread25 [
    i32 -2147483648, label %bb.b
    i32 2147483647, label %bb.d
    i32 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, -2147483648
  br i1 %i.j, label %bb.c, label %.thread25

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.c, align 8
  %i.l = icmp eq i64 %i.k, -9223372036854775808
  br i1 %i.l, label %bb.f, label %.thread25

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, 2147483647
  br i1 %i.o, label %bb.e, label %.thread25

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.c, align 8
  %i.q = icmp eq i64 %i.p, 9223372036854775807
  br i1 %i.q, label %bb.f, label %.thread25

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.r = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.s = tail call i32 @errcode(i32 noundef 50856066) #13 ; 0 uses
  %i.t = tail call i64 @DirectFunctionCall1Coll(ptr noundef nonnull @interval_out, i32 noundef 0, i64 noundef %i.b) #13
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.29, ptr noundef %i.u) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 3263, ptr noundef nonnull @__func__.timetz_izone) #13
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %.not23 = icmp eq i32 %i.x, 0
  br i1 %.not23, label %bb.h, label %.thread25

.thread25:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.g
  %i.y = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.z = tail call i32 @errcode(i32 noundef 50856066) #13 ; 0 uses
  %i.aa = tail call i64 @DirectFunctionCall1Coll(ptr noundef nonnull @interval_out, i32 noundef 0, i64 noundef %i.b) #13
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.30, ptr noundef %i.ab) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 3270, ptr noundef nonnull @__func__.timetz_izone) #13
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ad = inttoptr i64 %i.e to ptr                ; 2 uses
  %i.ae = load i64, ptr %i.c, align 8
  %.neg = sdiv i64 %i.ae, -1000000
  %i.af = trunc i64 %.neg to i32                  ; 2 uses
  %i.ag = tail call ptr @palloc(i64 noundef 16) #13 ; 3 uses
  %i.ah = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = sub i32 %i.aj, %i.af
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, 1000000              ; 3 uses
  %i.an = add i64 %i.am, %i.ah
  %smax = tail call i64 @llvm.smax.i64(i64 %i.an, i64 0)
  %1 = add nuw i64 %smax, 86399999999
  %2 = add i64 %i.ah, %i.am
  %i.ao = sub i64 %1, %2
  %.fr = freeze i64 %i.ao                         ; 2 uses
  %3 = urem i64 %.fr, 86400000000
  %4 = sub nuw i64 %.fr, %3
  %i.ap = add i64 %i.ah, %4
  %i.aq = add i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = icmp samesign ugt i64 %i.aq, 86399999999
  %i.as = urem i64 %i.aq, 86400000000
  %storemerge28 = select i1 %i.ar, i64 %i.as, i64 %i.aq
  store i64 %storemerge28, ptr %i.ag, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %i.af, ptr %i.at, align 8
  %i.au = ptrtoint ptr %i.ag to i64
  ret i64 %i.au
}

declare i64 @interval_out(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i64 @timetz_at_local(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = load ptr, ptr @session_timezone, align 8
  %i.d = tail call ptr @pg_get_timezone_name(ptr noundef %i.c) #13
  %i.e = tail call ptr @cstring_to_text(ptr noundef %i.d) #13
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @timetz_zone, i32 noundef 0, i64 noundef %i.f, i64 noundef %i.b) #13
  ret i64 %i.g
}

declare ptr @pg_get_timezone_name(ptr noundef) local_unnamed_addr #3

declare ptr @cstring_to_text(ptr noundef) local_unnamed_addr #3

declare void @enlargeStringInfo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #9

declare i32 @hash_bytes_uint32(i32 noundef) local_unnamed_addr #3

declare i64 @hash_bytes_uint32_extended(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

declare ptr @ArrayGetIntegerTypmods(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @psprintf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #9

declare ptr @int64_div_fast_to_numeric(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i64 -1, 2) i64 @llvm.scmp.i64.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i64 -1, 2) i64 @llvm.scmp.i64.i64(i64, i64) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"pq_writeint32: argument 0"}
!6 = distinct !{!6, !"pq_writeint32"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!10}
!10 = distinct !{!10, !11, !"pq_writeint64: argument 0"}
!11 = distinct !{!11, !"pq_writeint64"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"pq_writeint64: argument 0"}
!14 = distinct !{!14, !"pq_writeint64"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"pq_writeint32: argument 0"}
!17 = distinct !{!17, !"pq_writeint32"}
end_hunk_0
