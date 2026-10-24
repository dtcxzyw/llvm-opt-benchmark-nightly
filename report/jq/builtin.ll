Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/builtin?download=true
inline.NumInlined: 163
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@sin
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sinh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tanh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tgamma(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare double @y0(double noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare double @y1(double noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare double @jn(i32 noundef, double noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare double @yn(i32 noundef, double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #3

; Function Attrs: nounwind
declare double @drem(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @erf(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare double @erfc(double noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare double @exp10(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @expm1(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fdim(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare double @gamma(double noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare double @lgamma(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log1p(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @logb(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.nearbyint.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @nextafter(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @nexttoward(double noundef, x86_fp80 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #3

; Function Attrs: nounwind
declare double @scalb(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @scalbln(double noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare double @significand(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind
declare double @lgamma_r(double noundef, ptr noundef) local_unnamed_addr #7

declare { i64, ptr } @jv_number_negate(i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @jv_dump_string(i64, ptr, i32 noundef) local_unnamed_addr #1

declare { i64, ptr } @jv_parse_sized(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @jv_string_value(i64, ptr) local_unnamed_addr #1

declare i32 @jv_string_length_bytes(i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare { i64, ptr } @jv_number_with_literal(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

declare { i64, ptr } @jv_keys(i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @jv_keys_unsorted(i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @jv_string_explode(i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @jv_string_empty(i32 noundef) local_unnamed_addr #1

declare i32 @jvp_number_is_nan(i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @jv_string_append_codepoint(i64, ptr, i32 noundef) local_unnamed_addr #1

declare { i64, ptr } @jv_string_indexes(i64, ptr, i64, ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc { i64, ptr } @string_trim(i64 %0, ptr %1, i32 noundef range(i32 1, 4) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = tail call i32 @jv_get_kind(i64 %0, ptr %1) #17
  %.not = icmp eq i32 %i.b, 5
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, ptr } @jv_string(ptr noundef nonnull @.str.178) #17 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = extractvalue { i64, ptr } %i.c, 1
  tail call void @jv_free(i64 %0, ptr %1) #17
  %i.f = tail call { i64, ptr } @jv_invalid_with_msg(i64 %i.d, ptr %i.e) #17
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = tail call { i64, ptr } @jv_copy(i64 %0, ptr %1) #17 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1
  %i.j = tail call i32 @jv_string_length_bytes(i64 %i.h, ptr %i.i) #17
  %i.k = tail call ptr @jv_string_value(i64 %0, ptr %1) #17 ; 4 uses
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.n = and i32 %2, 1
  %.not49 = icmp eq i32 %i.n, 0
  br i1 %.not49, label %.thread, label %.preheader60

.preheader60:                                     ; preds = %bb.c, %bb.d
  %.041 = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.o = call ptr @jvp_utf8_next(ptr noundef %.041, ptr noundef %i.m, ptr noundef nonnull %i.a) #17 ; 2 uses
  %.not50 = icmp eq ptr %i.o, null
  br i1 %.not50, label %.thread, label %bb.d

bb.d:                                             ; preds = %.preheader60
  %i.p = load i32, ptr %i.a, align 4, !tbaa !15
  %i.q = call i32 @jvp_codepoint_is_whitespace(i32 noundef %i.p) #17
  %.not51 = icmp eq i32 %i.q, 0
  br i1 %.not51, label %.thread, label %.preheader60

.thread:                                          ; preds = %bb.d, %.preheader60, %bb.c
  %.243 = phi ptr [ %i.k, %bb.c ], [ %.041, %.preheader60 ], [ %.041, %bb.d ] ; 6 uses
  %.not52 = icmp samesign ugt i32 %2, 1
  %i.r = icmp ugt ptr %i.m, %.243
  %or.cond = select i1 %.not52, i1 %i.r, i1 false
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.thread, %.preheader
  %.039 = phi ptr [ %i.t, %.preheader ], [ %i.m, %.thread ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.039, i64 -1
  %i.t = call ptr @jvp_utf8_backtrack(ptr noundef nonnull %i.s, ptr noundef %.243, ptr noundef null) #17 ; 4 uses
  %i.u = call ptr @jvp_utf8_next(ptr noundef %i.t, ptr noundef %.039, ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !15
  %i.w = call i32 @jvp_codepoint_is_whitespace(i32 noundef %i.v) #17
  %.not53 = icmp ne i32 %i.w, 0                   ; 2 uses
  %i.x = icmp ne ptr %i.t, %.243
  %.not59 = select i1 %.not53, i1 %i.x, i1 false
  br i1 %.not59, label %.preheader, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.preheader
  %.140.le = select i1 %.not53, ptr %i.t, ptr %.039
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.thread
  %.2 = phi ptr [ %i.m, %.thread ], [ %.140.le, %.loopexit.loopexit ] ; 2 uses
  %i.y = icmp eq ptr %.243, %i.k
  %i.z = icmp eq ptr %.2, %i.m
  %or.cond54 = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond54, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.aa = insertvalue { i64, ptr } poison, i64 %0, 0
  %i.ab = insertvalue { i64, ptr } %i.aa, ptr %1, 1
  br label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.ac = ptrtoint ptr %.2 to i64
  %i.ad = ptrtoint ptr %.243 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %i.ag = call { i64, ptr } @jv_string_sized(ptr noundef %.243, i32 noundef %i.af) #17
  call void @jv_free(i64 %0, ptr %1) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.merged = phi { i64, ptr } [ %i.ab, %bb.e ], [ %i.ag, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.fca.1.insert.merged = phi { i64, ptr } [ %i.f, %bb.b ], [ %.merged, %bb.g ]
  ret { i64, ptr } %.fca.1.insert.merged
}

declare ptr @jvp_utf8_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @jvp_codepoint_is_whitespace(i32 noundef) local_unnamed_addr #1

declare ptr @jvp_utf8_backtrack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare { i64, ptr } @jv_string_sized(ptr noundef, i32 noundef) local_unnamed_addr #1

declare { i64, ptr } @jv_setpath(i64, ptr, i64, ptr, i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @_jq_path_append(ptr noundef, i64, ptr, i64, ptr, ptr noundef byval(%struct.jv) align 8) local_unnamed_addr #1

declare { i64, ptr } @jv_getpath(i64, ptr, i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @jv_delpaths(i64, ptr, i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @jv_has(i64, ptr, i64, ptr) local_unnamed_addr #1

declare i32 @jv_contains(i64, ptr, i64, ptr) local_unnamed_addr #1

declare i32 @jv_object_length(i64, ptr) local_unnamed_addr #1

declare i32 @jv_string_length_codepoints(i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @jv_number_abs(i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @jv_sort(i64, ptr, i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @jv_group(i64, ptr, i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @jv_unique(i64, ptr, i64, ptr) local_unnamed_addr #1

declare { i64, ptr } @jv_invalid() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc { i64, ptr } @minmax_by(i64 %0, ptr %1, i64 %2, ptr %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [30 x i8], align 16               ; 3 uses
  %i.b = alloca [30 x i8], align 16               ; 3 uses
  %i.c = alloca [30 x i8], align 16               ; 3 uses
  %i.d = alloca [30 x i8], align 16               ; 3 uses
  %i.e = alloca [30 x i8], align 16               ; 3 uses
  %i.f = alloca [30 x i8], align 16               ; 3 uses
  %i.g = tail call i32 @jv_get_kind(i64 %0, ptr %1) #17
  %.not = icmp eq i32 %i.g, 6
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.h = tail call i32 @jv_get_kind(i64 %0, ptr %1) #17
  %i.i = tail call ptr @jv_kind_name(i32 noundef %i.h) #17
  %i.j = tail call i32 @jv_get_kind(i64 %2, ptr %3) #17
  %i.k = tail call ptr @jv_kind_name(i32 noundef %i.j) #17
  %i.l = call ptr @jv_dump_string_trunc(i64 %0, ptr %1, ptr noundef nonnull %i.e, i64 noundef 30) #17
  %i.m = call ptr @jv_dump_string_trunc(i64 %2, ptr %3, ptr noundef nonnull %i.f, i64 noundef 30) #17
  %i.n = call { i64, ptr } (ptr, ...) @jv_string_fmt(ptr noundef nonnull @.str.11, ptr noundef %i.i, ptr noundef %i.l, ptr noundef %i.k, ptr noundef %i.m, ptr noundef nonnull @.str.186) #17 ; 2 uses
  %i.o = extractvalue { i64, ptr } %i.n, 0
  %i.p = extractvalue { i64, ptr } %i.n, 1
  %i.q = call { i64, ptr } @jv_invalid_with_msg(i64 %i.o, ptr %i.p) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.r = tail call i32 @jv_get_kind(i64 %2, ptr %3) #17
  %.not93 = icmp eq i32 %i.r, 6
  br i1 %.not93, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.s = tail call i32 @jv_get_kind(i64 %0, ptr %1) #17
  %i.t = tail call ptr @jv_kind_name(i32 noundef %i.s) #17
  %i.u = tail call i32 @jv_get_kind(i64 %2, ptr %3) #17
  %i.v = tail call ptr @jv_kind_name(i32 noundef %i.u) #17
  %i.w = call ptr @jv_dump_string_trunc(i64 %0, ptr %1, ptr noundef nonnull %i.c, i64 noundef 30) #17
  %i.x = call ptr @jv_dump_string_trunc(i64 %2, ptr %3, ptr noundef nonnull %i.d, i64 noundef 30) #17
  %i.y = call { i64, ptr } (ptr, ...) @jv_string_fmt(ptr noundef nonnull @.str.11, ptr noundef %i.t, ptr noundef %i.w, ptr noundef %i.v, ptr noundef %i.x, ptr noundef nonnull @.str.186) #17 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0
  %i.aa = extractvalue { i64, ptr } %i.y, 1
  %i.ab = call { i64, ptr } @jv_invalid_with_msg(i64 %i.z, ptr %i.aa) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.ac = tail call { i64, ptr } @jv_copy(i64 %0, ptr %1) #17 ; 2 uses
  %i.ad = extractvalue { i64, ptr } %i.ac, 0
  %i.ae = extractvalue { i64, ptr } %i.ac, 1
  %i.af = tail call i32 @jv_array_length(i64 %i.ad, ptr %i.ae) #17
  %i.ag = tail call { i64, ptr } @jv_copy(i64 %2, ptr %3) #17 ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0
  %i.ai = extractvalue { i64, ptr } %i.ag, 1
  %i.aj = tail call i32 @jv_array_length(i64 %i.ah, ptr %i.ai) #17
  %.not94 = icmp eq i32 %i.af, %i.aj
  br i1 %.not94, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ak = tail call i32 @jv_get_kind(i64 %0, ptr %1) #17
  %i.al = tail call ptr @jv_kind_name(i32 noundef %i.ak) #17
  %i.am = tail call i32 @jv_get_kind(i64 %2, ptr %3) #17
  %i.an = tail call ptr @jv_kind_name(i32 noundef %i.am) #17
  %i.ao = call ptr @jv_dump_string_trunc(i64 %0, ptr %1, ptr noundef nonnull %i.a, i64 noundef 30) #17
  %i.ap = call ptr @jv_dump_string_trunc(i64 %2, ptr %3, ptr noundef nonnull %i.b, i64 noundef 30) #17
  %i.aq = call { i64, ptr } (ptr, ...) @jv_string_fmt(ptr noundef nonnull @.str.11, ptr noundef %i.al, ptr noundef %i.ao, ptr noundef %i.an, ptr noundef %i.ap, ptr noundef nonnull @.str.187) #17 ; 2 uses
  %i.ar = extractvalue { i64, ptr } %i.aq, 0
  %i.as = extractvalue { i64, ptr } %i.aq, 1
  %i.at = call { i64, ptr } @jv_invalid_with_msg(i64 %i.ar, ptr %i.as) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.au = tail call { i64, ptr } @jv_copy(i64 %0, ptr %1) #17 ; 2 uses
  %i.av = extractvalue { i64, ptr } %i.au, 0
  %i.aw = extractvalue { i64, ptr } %i.au, 1
  %i.ax = tail call i32 @jv_array_length(i64 %i.av, ptr %i.aw) #17
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @jv_free(i64 %0, ptr %1) #17
  tail call void @jv_free(i64 %2, ptr %3) #17
  %i.az = tail call { i64, ptr } @jv_null() #17
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ba = tail call { i64, ptr } @jv_copy(i64 %0, ptr %1) #17 ; 2 uses
  %i.bb = extractvalue { i64, ptr } %i.ba, 0
  %i.bc = extractvalue { i64, ptr } %i.ba, 1
  %i.bd = tail call { i64, ptr } @jv_array_get(i64 %i.bb, ptr %i.bc, i32 noundef 0) #17 ; 3 uses
  %i.be = tail call { i64, ptr } @jv_copy(i64 %2, ptr %3) #17 ; 2 uses
  %i.bf = extractvalue { i64, ptr } %i.be, 0
  %i.bg = extractvalue { i64, ptr } %i.be, 1
  %i.bh = tail call { i64, ptr } @jv_array_get(i64 %i.bf, ptr %i.bg, i32 noundef 0) #17 ; 2 uses
  %i.bi = extractvalue { i64, ptr } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bh, 1      ; 2 uses
  %i.bk = tail call { i64, ptr } @jv_copy(i64 %0, ptr %1) #17 ; 2 uses
  %i.bl = extractvalue { i64, ptr } %i.bk, 0
  %i.bm = extractvalue { i64, ptr } %i.bk, 1
  %i.bn = tail call i32 @jv_array_length(i64 %i.bl, ptr %i.bm) #17
  %.not96121 = icmp sgt i32 %i.bn, 1
  br i1 %.not96121, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.bo = extractvalue { i64, ptr } %i.bd, 1
  %i.bp = extractvalue { i64, ptr } %i.bd, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.sroa.738.0126 = phi ptr [ %.sroa.738.2.ph, %bb.m ], [ %i.bo, %.lr.ph.preheader ] ; 3 uses
  %.sroa.036.0125 = phi i64 [ %.sroa.036.2.ph, %bb.m ], [ %i.bp, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0124 = phi ptr [ %.sroa.8.2.ph, %bb.m ], [ %i.bj, %.lr.ph.preheader ] ; 4 uses
  %.sroa.027.0123 = phi i64 [ %.sroa.027.2.ph, %bb.m ], [ %i.bi, %.lr.ph.preheader ] ; 4 uses
  %.0122 = phi i32 [ %i.co, %bb.m ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %i.bq = tail call { i64, ptr } @jv_copy(i64 %2, ptr %3) #17 ; 2 uses
  %i.br = extractvalue { i64, ptr } %i.bq, 0
  %i.bs = extractvalue { i64, ptr } %i.bq, 1
  %i.bt = tail call { i64, ptr } @jv_array_get(i64 %i.br, ptr %i.bs, i32 noundef %.0122) #17 ; 2 uses
  %i.bu = extractvalue { i64, ptr } %i.bt, 0      ; 4 uses
  %i.bv = extractvalue { i64, ptr } %i.bt, 1      ; 4 uses
  %i.bw = tail call { i64, ptr } @jv_copy(i64 %i.bu, ptr %i.bv) #17 ; 2 uses
  %i.bx = extractvalue { i64, ptr } %i.bw, 0
  %i.by = extractvalue { i64, ptr } %i.bw, 1
  %i.bz = tail call { i64, ptr } @jv_copy(i64 %.sroa.027.0123, ptr %.sroa.8.0124) #17 ; 2 uses
  %i.ca = extractvalue { i64, ptr } %i.bz, 0
  %i.cb = extractvalue { i64, ptr } %i.bz, 1
  %i.cc = tail call i32 @jv_cmp(i64 %i.bx, ptr %i.by, i64 %i.ca, ptr %i.cb) #17 ; 2 uses
end_hunk_0
