Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/grep_regex-342b229b6101d80c.grep_regex.9c5453b099169300-cgu.2?download=true
inline.NumInlined: 179
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsdq8xsXUia3c_10grep_regex5error5ErrorEEEB1o_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !36
  unreachable, !dbg !36
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !41 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !42, !nonnull !13, !noundef !13 ; 7 uses
  invoke void @_RNvXsm_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !43, !inline_history !46

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #18
          to label %bb.d unwind label %bb.f, !dbg !43, !inline_history !46

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !43, !inline_history !46

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !43
  %.val2.i = load ptr, ptr %i.c, align 8, !dbg !43, !alias.scope !47, !nonnull !13, !noundef !13
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 80, i64 noundef 8) #19, !dbg !50, !inline_history !46
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #19, !dbg !76
  resume { ptr, i32 } %.pn.i, !dbg !42

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !43, !inline_history !46
  unreachable, !dbg !43

bb.g:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !43
  %.val.i = load ptr, ptr %i.f, align 8, !dbg !43, !alias.scope !47, !nonnull !13, !noundef !13
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 80, i64 noundef 8) #19, !dbg !85, !inline_history !46
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #19, !dbg !93
  ret void, !dbg !42
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 !dbg !99 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !100, !alias.scope !107, !noundef !13
  %i.b = tail call noundef i64 @_RNvMNtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirE3lenCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0), !dbg !110
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 %i.a, i64 noundef %i.b), !dbg !111
  ret void, !dbg !119
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNtNtBO_5alloc6GlobalEECsdq8xsXUia3c_10grep_regex(ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 !dbg !120 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32, !dbg !121 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !121, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0, !dbg !121
  br i1 %.not.i, label %_RNvXNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB8_5DrainppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNtNtBc_5alloc6GlobalEBV_4dropCsdq8xsXUia3c_10grep_regex.exit, label %bb.b, !dbg !121

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !129
  %i.d = load ptr, ptr %i.c, align 8, !dbg !129, !nonnull !13, !noundef !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !135 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !135, !noundef !13 ; 4 uses
  %i.g = icmp ult i64 %i.f, 288230376151711744, !dbg !141
  tail call void @llvm.assume(i1 %i.g), !dbg !143
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24, !dbg !144
  %i.i = load i64, ptr %i.h, align 8, !dbg !144, !noundef !13 ; 2 uses
  %.not3.i = icmp eq i64 %i.i, %i.f, !dbg !146
  br i1 %.not3.i, label %bb.c, label %bb.d, !dbg !146

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi i64 [ %.pre.i, %bb.d ], [ %i.b, %bb.b ], !dbg !148
  %i.k = add i64 %i.j, %i.f, !dbg !149
  store i64 %i.k, ptr %i.e, align 8, !dbg !150
  br label %_RNvXNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB8_5DrainppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNtNtBc_5alloc6GlobalEBV_4dropCsdq8xsXUia3c_10grep_regex.exit, !dbg !153

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !154
  %i.m = load ptr, ptr %i.l, align 8, !dbg !154, !nonnull !13, !noundef !13 ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.i, !dbg !167
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.f, !dbg !173
  %i.p = shl nuw nsw i64 %i.b, 5, !dbg !177
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false), !dbg !177
  %.pre.i = load i64, ptr %i.a, align 8, !dbg !148
  br label %bb.c, !dbg !181

_RNvXNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB8_5DrainppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralNtNtBc_5alloc6GlobalEBV_4dropCsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.a, %bb.c
  ret void, !dbg !182
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !44 {
bb.a:
  invoke void @_RNvXsm_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b, !dbg !183

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #18
          to label %bb.g unwind label %bb.f, !dbg !183

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(40) %0)
          to label %bb.e unwind label %bb.d, !dbg !183

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !183
  %.val = load ptr, ptr %i.c, align 8, !dbg !183, !nonnull !13, !noundef !13
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 80, i64 noundef 8) #19, !dbg !184
  ret void, !dbg !183

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !183
  unreachable, !dbg !183

bb.g:                                             ; preds = %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !183
  %.val2 = load ptr, ptr %i.e, align 8, !dbg !183, !nonnull !13, !noundef !13
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 80, i64 noundef 8) #19, !dbg !192
  resume { ptr, i32 } %.pn, !dbg !183
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !200 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !201, !range !202, !noundef !13 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4, !dbg !201
  tail call void @llvm.assume(i1 %i.b), !dbg !201
  %i.c = add nsw i64 %i.a, -2, !dbg !201
  %.inv = icmp samesign ult i64 %i.a, 2, !dbg !201
  %i.d = select i1 %.inv, i64 2, i64 %i.c, !dbg !201
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit
    i64 1, label %bb.e
    i64 2, label %bb.g
    i64 3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit
    i64 4, label %bb.n
    i64 5, label %bb.o
    i64 6, label %bb.q
  ], !dbg !201

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !201 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.c, !dbg !203

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.d, !dbg !206

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !203
  unreachable, !dbg !203

common.resume:                                    ; preds = %bb.r, %bb.i, %bb.l, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.l ], [ %i.f, %bb.c ], [ %i.l, %bb.i ], [ %i.w, %bb.r ]
  resume { ptr, i32 } %common.resume.op, !dbg !201

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !209
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit, !dbg !201

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir10ClassBytesECsdq8xsXUia3c_10grep_regex.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir12ClassUnicodeECsdq8xsXUia3c_10grep_regex.exit.i, %bb.f, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex.exit3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7CaptureECsdq8xsXUia3c_10grep_regex.exit, %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex.exit, %bb.a, %bb.a
  ret void, !dbg !201

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !201
  %.val1 = load i64, ptr %i.h, align 8, !dbg !201, !noundef !13 ; 2 uses
  %i.i = icmp eq i64 %.val1, 0, !dbg !211
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit, label %bb.f, !dbg !211

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !201
  %.val = load ptr, ptr %i.j, align 8, !dbg !201, !nonnull !13, !noundef !13
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #19, !dbg !220
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit, !dbg !225

bb.g:                                             ; preds = %bb.a
  %1 = icmp eq i64 %i.a, 0, !dbg !226
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !226 ; 6 uses
  br i1 %1, label %bb.h, label %bb.k, !dbg !226

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir12ClassUnicodeECsdq8xsXUia3c_10grep_regex.exit.i unwind label %bb.i, !dbg !229

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %common.resume unwind label %bb.j, !dbg !236

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !229
  unreachable, !dbg !229

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir12ClassUnicodeECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %bb.h
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k), !dbg !239
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit, !dbg !226

bb.k:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir10ClassBytesECsdq8xsXUia3c_10grep_regex.exit.i unwind label %bb.l, !dbg !241

bb.l:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %common.resume unwind label %bb.m, !dbg !248

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !241
  unreachable, !dbg !241

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir10ClassBytesECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %bb.k
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k), !dbg !251
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit, !dbg !226

bb.n:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !253
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(8) %i.p), !dbg !253, !inline_history !256
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit, !dbg !201

bb.o:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257), !dbg !201
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !260
  %.val.i = load ptr, ptr %i.r, align 8, !dbg !260, !alias.scope !257, !noundef !13 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !260
  %.val1.i = load i64, ptr %i.s, align 8, !dbg !260, !alias.scope !257 ; 2 uses
  %i.t = icmp eq ptr %.val.i, null, !dbg !263
  %i.u = icmp eq i64 %.val1.i, 0
  %or.cond.i = select i1 %i.t, i1 true, i1 %i.u, !dbg !263
  br i1 %or.cond.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7CaptureECsdq8xsXUia3c_10grep_regex.exit, label %bb.p, !dbg !263

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ], !noalias !257
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #19, !dbg !266, !noalias !257
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7CaptureECsdq8xsXUia3c_10grep_regex.exit, !dbg !277

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7CaptureECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.p, %bb.o
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q), !dbg !260, !inline_history !278
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit, !dbg !201

bb.q:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !201 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex.exit3 unwind label %bb.r, !dbg !279

bb.r:                                             ; preds = %bb.q
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.s, !dbg !281

bb.s:                                             ; preds = %bb.r
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !279
  unreachable, !dbg !279

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex.exit3: ; preds = %bb.q
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v), !dbg !283
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit, !dbg !201
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf813Utf8SequencesECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !285 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf811ScalarRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf811ScalarRangeEECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.b, !dbg !286

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf811ScalarRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf811ScalarRangeEECsdq8xsXUia3c_10grep_regex.exit.i unwind label %bb.c, !dbg !289

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !286
  unreachable, !dbg !286

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf811ScalarRangeEECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !286

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf811ScalarRangeEECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf811ScalarRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !292
  ret void, !dbg !294
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !295 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.b, !dbg !296

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsdq8xsXUia3c_10grep_regex.exit.i unwind label %bb.c, !dbg !298

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !296
  unreachable, !dbg !296

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !296

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !300
  ret void, !dbg !302
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !303 {
bb.a:
  %i.a = icmp eq i64 %1, 0, !dbg !304
  br i1 %i.a, label %._crit_edge, label %.lr.ph, !dbg !304

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit
  %.sroa.0.010 = phi i64 [ %i.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.010, !dbg !304 ; 5 uses
  %i.c = add nuw nsw i64 %.sroa.0.010, 1, !dbg !304 ; 4 uses
  invoke void @_RNvXsm_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %bb.c unwind label %bb.b, !dbg !305, !inline_history !46

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #18
          to label %.body unwind label %bb.e, !dbg !305, !inline_history !46

bb.c:                                             ; preds = %.lr.ph
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.d, !dbg !305, !inline_history !46

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !305, !inline_history !46
  unreachable, !dbg !305

.body:                                            ; preds = %bb.d, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.d, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !305
  %.val2.i = load ptr, ptr %i.g, align 8, !dbg !305, !alias.scope !307, !nonnull !13, !noundef !13
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 80, i64 noundef 8) #19, !dbg !310, !inline_history !46
  %i.h = icmp eq i64 %i.c, %1, !dbg !304
  br i1 %i.h, label %._crit_edge29, label %.lr.ph28, !dbg !304

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !305
  %.val.i = load ptr, ptr %i.i, align 8, !dbg !305, !alias.scope !307, !nonnull !13, !noundef !13
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 80, i64 noundef 8) #19, !dbg !318, !inline_history !46
  %i.j = icmp eq i64 %i.c, %1, !dbg !304
  br i1 %i.j, label %._crit_edge, label %.lr.ph, !dbg !304

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit, %bb.a
  ret void, !dbg !304

bb.f:                                             ; preds = %.lr.ph28
  %i.k = add i64 %.sroa.0.127, 1, !dbg !304       ; 2 uses
  %i.l = icmp eq i64 %i.k, %1, !dbg !304
  br i1 %i.l, label %._crit_edge29, label %.lr.ph28, !dbg !304

.lr.ph28:                                         ; preds = %.body, %bb.f
  %.sroa.0.127 = phi i64 [ %i.k, %bb.f ], [ %i.c, %.body ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis23from_ast_class_set_item:bb.a
  store i8 1, ptr %i.c, align 1, !dbg !736, !alias.scope !733
  %i.l = add nsw i32 %.val5, -65
  %or.cond.i = icmp ult i32 %i.l, 26
  %or.cond1.i = select i1 %i.b, i1 true, i1 %or.cond.i, !dbg !738
  br i1 %or.cond1.i, label %_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis16from_ast_literal.exit, label %bb.e, !dbg !738

bb.e:                                             ; preds = %bb.d
  %i.m = icmp samesign ult i32 %.val5, 192, !dbg !739
  br i1 %i.m, label %_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis16from_ast_literal.exit, label %bb.f, !dbg !739

bb.f:                                             ; preds = %bb.e
  %i.n = tail call noundef zeroext i1 @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data9uppercase6lookup(i32 noundef %.val5), !dbg !741, !noalias !733
  %i.o = zext i1 %i.n to i8, !dbg !741
  br label %_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis16from_ast_literal.exit, !dbg !741

_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis16from_ast_literal.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i = phi i8 [ %i.o, %bb.f ], [ 1, %bb.d ], [ 0, %bb.e ], !dbg !742
  store i8 %.sroa.0.0.i, ptr %0, align 1, !dbg !743, !alias.scope !733
  br label %.loopexit, !dbg !744

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !745
  %.val4 = load i32, ptr %i.p, align 8, !dbg !745 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747), !dbg !745
  store i8 1, ptr %i.c, align 1, !dbg !750, !alias.scope !747
  %i.q = add nsw i32 %.val4, -65
  %or.cond.i6 = icmp ult i32 %i.q, 26
  %or.cond1.i7 = select i1 %i.b, i1 true, i1 %or.cond.i6, !dbg !752
  br i1 %or.cond1.i7, label %_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis16from_ast_literal.exit13, label %bb.h, !dbg !752

bb.h:                                             ; preds = %bb.g
  %i.r = icmp samesign ult i32 %.val4, 192, !dbg !753
  br i1 %i.r, label %_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis16from_ast_literal.exit9, label %bb.i, !dbg !753

bb.i:                                             ; preds = %bb.h
  %i.s = tail call noundef zeroext i1 @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data9uppercase6lookup(i32 noundef %.val4), !dbg !755, !noalias !747
  %i.t = zext i1 %i.s to i8, !dbg !755
  br label %_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis16from_ast_literal.exit9, !dbg !755

_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis16from_ast_literal.exit9: ; preds = %bb.h, %bb.i
  %.sroa.0.0.i8 = phi i8 [ %i.t, %bb.i ], [ 0, %bb.h ], !dbg !756 ; 2 uses
  store i8 %.sroa.0.0.i8, ptr %0, align 1, !dbg !757, !alias.scope !747
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758), !dbg !761
  store i8 1, ptr %i.c, align 1, !dbg !762, !alias.scope !758
  %i.u = trunc nuw i8 %.sroa.0.0.i8 to i1, !dbg !764
  %i.v = add nsw i32 %i.g, -65
  %or.cond.i10 = icmp ult i32 %i.v, 26
  %or.cond1.i11 = select i1 %i.u, i1 true, i1 %or.cond.i10, !dbg !764
  br i1 %or.cond1.i11, label %_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis16from_ast_literal.exit13, label %bb.j, !dbg !764

bb.j:                                             ; preds = %_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis16from_ast_literal.exit9
  %i.w = icmp samesign ult i32 %i.g, 192, !dbg !765
  br i1 %i.w, label %_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis16from_ast_literal.exit13, label %bb.k, !dbg !765

bb.k:                                             ; preds = %bb.j
  %i.x = tail call noundef zeroext i1 @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data9uppercase6lookup(i32 noundef %i.g), !dbg !767, !noalias !758
  %i.y = zext i1 %i.x to i8, !dbg !767
  br label %_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis16from_ast_literal.exit13, !dbg !767

_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis16from_ast_literal.exit13: ; preds = %bb.g, %_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis16from_ast_literal.exit9, %bb.j, %bb.k
  %.sroa.0.0.i12 = phi i8 [ %i.y, %bb.k ], [ 1, %_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis16from_ast_literal.exit9 ], [ 0, %bb.j ], [ 1, %bb.g ], !dbg !768
  store i8 %.sroa.0.0.i12, ptr %0, align 1, !dbg !769, !alias.scope !758
  br label %.loopexit, !dbg !770

bb.l:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %1, align 8, !dbg !771, !nonnull !13, !noundef !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48, !dbg !771
  tail call fastcc void @_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis18from_ast_class_set(ptr noalias nofree noundef dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.aa), !dbg !773
  br label %.loopexit, !dbg !774

bb.m:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !775
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !775, !nonnull !13, !noundef !13 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !791
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !791, !noundef !13 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ae, 160, !dbg !792
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx, !dbg !792
  %i.ag = icmp eq i64 %i.ae, 0, !dbg !801
  br i1 %i.ag, label %.loopexit, label %.lr.ph, !dbg !803

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %.sroa.0.018 = phi ptr [ %i.ah, %.lr.ph ], [ %i.ac, %bb.m ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 160, !dbg !810 ; 2 uses
  tail call fastcc void @_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis23from_ast_class_set_item(ptr noalias nofree noundef dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.0.018), !dbg !813
  %i.ai = icmp eq ptr %i.ah, %i.af, !dbg !801
  br i1 %i.ai, label %.loopexit, label %.lr.ph, !dbg !803
}

; Function Attrs: nonlazybind uwtable
define { i1, i1 } @_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis8from_ast(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 !dbg !815 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !816
  store i8 0, ptr %i.a, align 1, !dbg !817
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !817 ; 2 uses
  store i8 0, ptr %i.b, align 1, !dbg !817
  call fastcc void @_RNvMNtCsdq8xsXUia3c_10grep_regex3astNtB2_11AstAnalysis13from_ast_impl(ptr noalias nofree noundef dereferenceable(2) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0), !dbg !820
  %i.c = load i8, ptr %i.a, align 1, !dbg !822, !range !586, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !822
  %i.e = load i8, ptr %i.b, align 1, !dbg !822, !range !586, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1, !dbg !822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !823
  %i.g = insertvalue { i1, i1 } poison, i1 %i.d, 0, !dbg !824
  %i.h = insertvalue { i1, i1 } %i.g, i1 %i.f, 1, !dbg !824
  ret { i1, i1 } %i.h, !dbg !824
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirE32forget_allocation_drop_remainingCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 !dbg !825 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !827 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !dbg !827, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !827 ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8, !dbg !827, !nonnull !13, !noundef !13
  %i.d = ptrtoint ptr %.val1 to i64, !dbg !828
  %i.e = ptrtoint ptr %.val to i64, !dbg !828
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !828
  %i.g = udiv exact i64 %i.f, 48, !dbg !828
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !849
  store i64 0, ptr %i.h, align 8, !dbg !849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !851
  store i64 0, ptr %i.a, align 8, !dbg !852
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !852
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !dbg !852
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !dbg !856
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !859
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !dbg !860
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !dbg !861
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 %.val, i64 noundef %i.g), !dbg !862
  ret void, !dbg !865
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsdq8xsXUia3c_10grep_regex12non_matching18non_matching_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 !dbg !866 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !869
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 -1, i64 32, i1 false), !dbg !870
  call fastcc void @_RNvNtCsdq8xsXUia3c_10grep_regex12non_matching21remove_matching_bytes(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %i.a), !dbg !876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !879
  ret void, !dbg !880
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsdq8xsXUia3c_10grep_regex12non_matching21remove_matching_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !881 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 12 uses
  %i.b = alloca [9 x i8], align 1                 ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 11 uses
  %i.e = load i64, ptr %.tr, align 8, !dbg !882, !range !202, !noundef !13 ; 4 uses
  %i.f = icmp ne i64 %i.e, 4, !dbg !882
  tail call void @llvm.assume(i1 %i.f), !dbg !882
  %i.g = add nsw i64 %i.e, -2, !dbg !882
  %.inv = icmp samesign ult i64 %i.e, 2, !dbg !882
  %i.h = select i1 %.inv, i64 2, i64 %i.g, !dbg !882
  switch i64 %i.h, label %bb.b [
    i64 0, label %.loopexit
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %tailrecurse.backedge
    i64 6, label %bb.g
    i64 7, label %bb.h
  ], !dbg !883

default.unreachable86:                            ; preds = %bb.e
  unreachable

bb.b:                                             ; preds = %tailrecurse
  unreachable, !dbg !884

.loopexit.sink.split:                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.s
  %.sink106 = phi i64 [ -9217, %bb.s ], [ -1025, %bb.e ], [ -1025, %bb.e ], [ -1025, %bb.e ], [ -1025, %bb.e ]
  %i.i = load i64, ptr %1, align 8, !dbg !886, !noundef !13
  %i.j = and i64 %i.i, %.sink106, !dbg !886
  store i64 %i.j, ptr %1, align 8, !dbg !886
  br label %.loopexit, !dbg !889

.loopexit:                                        ; preds = %tailrecurse, %.lr.ph, %.lr.ph46, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf813Utf8SequencesECsdq8xsXUia3c_10grep_regex.exit, %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit25, %.lr.ph57.prol.loopexit, %.lr.ph57, %.loopexit.sink.split, %bb.h, %bb.g, %bb.j, %bb.i, %bb.c, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  ret void, !dbg !889

bb.c:                                             ; preds = %tailrecurse
  %i.k = getelementptr inbounds nuw i8, ptr %.tr, i64 8, !dbg !890
  %i.l = load ptr, ptr %i.k, align 8, !dbg !890, !nonnull !13, !noundef !13 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.tr, i64 16, !dbg !890
  %i.n = load i64, ptr %i.m, align 8, !dbg !890, !noundef !13 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n, !dbg !892
  %i.p = icmp samesign eq i64 %i.n, 0, !dbg !903
  br i1 %i.p, label %.loopexit, label %.lr.ph57.preheader, !dbg !905

.lr.ph57.preheader:                               ; preds = %bb.c
  %xtraiter143 = and i64 %i.n, 1, !dbg !905
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0, !dbg !905
  br i1 %lcmp.mod144.not, label %.lr.ph57.prol.loopexit, label %.lr.ph57.prol, !dbg !905

.lr.ph57.prol:                                    ; preds = %.lr.ph57.preheader
  %i.q = load i8, ptr %i.l, align 1, !dbg !912, !noundef !13 ; 2 uses
  %i.r = lshr i8 %i.q, 6, !dbg !913
  %i.s = zext nneg i8 %i.r to i64, !dbg !916
  %i.t = and i8 %i.q, 63, !dbg !926
  %i.u = zext nneg i8 %i.t to i64, !dbg !927
  %i.v = shl nuw i64 1, %i.u, !dbg !927
  %i.w = xor i64 %i.v, -1, !dbg !928
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 1, !dbg !929
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.s, !dbg !932 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !dbg !932, !noundef !13
  %i.aa = and i64 %i.z, %i.w, !dbg !932
  store i64 %i.aa, ptr %i.y, align 8, !dbg !932
  br label %.lr.ph57.prol.loopexit, !dbg !905

.lr.ph57.prol.loopexit:                           ; preds = %.lr.ph57.prol, %.lr.ph57.preheader
  %.sroa.0.055.unr = phi ptr [ %i.l, %.lr.ph57.preheader ], [ %i.x, %.lr.ph57.prol ]
  %i.ab = icmp eq i64 %i.n, 1, !dbg !905
  br i1 %i.ab, label %.loopexit, label %.lr.ph57, !dbg !905

bb.d:                                             ; preds = %tailrecurse
  %i.ac = trunc nuw i64 %i.e to i1, !dbg !883
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr, i64 16, !dbg !888
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !888, !nonnull !13, !noundef !13 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.tr, i64 24, !dbg !888
  %i.ag = load i64, ptr %i.af, align 8, !dbg !888, !noundef !13 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !888         ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.j, !dbg !883

bb.e:                                             ; preds = %tailrecurse
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr, i64 8, !dbg !882
  %i.aj = load i32, ptr %i.ai, align 8, !dbg !882, !range !933, !noundef !13
  %i.ak = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aj, i1 true), !dbg !883
  switch i32 %i.ak, label %default.unreachable86 [
    i32 0, label %.loopexit.sink.split
    i32 1, label %.loopexit.sink.split
    i32 2, label %.loopexit.sink.split
    i32 3, label %.loopexit.sink.split
    i32 4, label %bb.s
    i32 5, label %bb.s
    i32 6, label %.loopexit
    i32 7, label %.loopexit
    i32 8, label %.loopexit
    i32 9, label %.loopexit
    i32 10, label %.loopexit
    i32 11, label %.loopexit
    i32 12, label %.loopexit
    i32 13, label %.loopexit
    i32 14, label %.loopexit
    i32 15, label %.loopexit
    i32 16, label %.loopexit
    i32 17, label %.loopexit
  ], !dbg !883

bb.f:                                             ; preds = %tailrecurse
  br label %tailrecurse.backedge, !dbg !934

tailrecurse.backedge:                             ; preds = %tailrecurse, %bb.f
  %.sink = phi i64 [ 16, %bb.f ], [ 8, %tailrecurse ]
  %i.al = getelementptr inbounds nuw i8, ptr %.tr, i64 %.sink, !dbg !888
  %.tr.be = load ptr, ptr %i.al, align 8, !dbg !888, !nonnull !13, !noundef !13
  br label %tailrecurse, !dbg !882

bb.g:                                             ; preds = %tailrecurse
  %i.am = getelementptr inbounds nuw i8, ptr %.tr, i64 16, !dbg !936
  %i.an = load ptr, ptr %i.am, align 8, !dbg !936, !nonnull !13, !noundef !13 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr, i64 24, !dbg !958
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !958, !noundef !13 ; 2 uses
  %.idx58 = mul nuw nsw i64 %i.ap, 48, !dbg !959
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx58, !dbg !959
  %i.ar = icmp eq i64 %i.ap, 0, !dbg !970
  br i1 %i.ar, label %.loopexit, label %.lr.ph46, !dbg !980

bb.h:                                             ; preds = %tailrecurse
  %i.as = getelementptr inbounds nuw i8, ptr %.tr, i64 16, !dbg !981
  %i.at = load ptr, ptr %i.as, align 8, !dbg !981, !nonnull !13, !noundef !13 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.tr, i64 24, !dbg !990
  %i.av = load i64, ptr %i.au, align 8, !dbg !990, !noundef !13 ; 2 uses
  %.idx = mul nuw nsw i64 %i.av, 48, !dbg !991
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx, !dbg !991
  %i.ax = icmp eq i64 %i.av, 0, !dbg !997
  br i1 %i.ax, label %.loopexit, label %.lr.ph, !dbg !1005

.lr.ph57:                                         ; preds = %.lr.ph57.prol.loopexit, %.lr.ph57
  %.sroa.0.055 = phi ptr [ %i.bq, %.lr.ph57 ], [ %.sroa.0.055.unr, %.lr.ph57.prol.loopexit ] ; 3 uses
  %i.ay = load i8, ptr %.sroa.0.055, align 1, !dbg !912, !noundef !13 ; 2 uses
  %i.az = lshr i8 %i.ay, 6, !dbg !913
  %i.ba = zext nneg i8 %i.az to i64, !dbg !916
  %i.bb = and i8 %i.ay, 63, !dbg !926
  %i.bc = zext nneg i8 %i.bb to i64, !dbg !927
  %i.bd = shl nuw i64 1, %i.bc, !dbg !927
  %i.be = xor i64 %i.bd, -1, !dbg !928
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.055, i64 1, !dbg !929
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ba, !dbg !932 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !dbg !932, !noundef !13
  %i.bi = and i64 %i.bh, %i.be, !dbg !932
  store i64 %i.bi, ptr %i.bg, align 8, !dbg !932
  %i.bj = load i8, ptr %i.bf, align 1, !dbg !912, !noundef !13 ; 2 uses
  %i.bk = lshr i8 %i.bj, 6, !dbg !913
  %i.bl = zext nneg i8 %i.bk to i64, !dbg !916
  %i.bm = and i8 %i.bj, 63, !dbg !926
  %i.bn = zext nneg i8 %i.bm to i64, !dbg !927
  %i.bo = shl nuw i64 1, %i.bn, !dbg !927
  %i.bp = xor i64 %i.bo, -1, !dbg !928
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.055, i64 2, !dbg !929 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bl, !dbg !932 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !dbg !932, !noundef !13
  %i.bt = and i64 %i.bs, %i.bp, !dbg !932
  store i64 %i.bt, ptr %i.br, align 8, !dbg !932
  %i.bu = icmp eq ptr %i.bq, %i.o, !dbg !903
  br i1 %i.bu, label %.loopexit, label %.lr.ph57, !dbg !905

bb.i:                                             ; preds = %bb.d
  %.idx60 = shl nuw nsw i64 %i.ag, 1, !dbg !1006
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx60, !dbg !1006
  br i1 %i.ah, label %.loopexit, label %.lr.ph54, !dbg !1029

bb.j:                                             ; preds = %bb.d
  %.idx59 = shl nuw nsw i64 %i.ag, 3, !dbg !1043
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx59, !dbg !1043
  br i1 %i.ah, label %.loopexit, label %.lr.ph51, !dbg !1061

.lr.ph51:                                         ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.k, !dbg !1061

bb.k:                                             ; preds = %.lr.ph51, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf813Utf8SequencesECsdq8xsXUia3c_10grep_regex.exit
  %.sroa.016.049 = phi ptr [ %i.ae, %.lr.ph51 ], [ %i.cf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf813Utf8SequencesECsdq8xsXUia3c_10grep_regex.exit ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.016.049, i64 8, !dbg !1073 ; 2 uses
  %i.cg = load i32, ptr %.sroa.016.049, align 4, !dbg !1077, !range !1082, !noundef !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.016.049, i64 4, !dbg !1083
  %i.ci = load i32, ptr %i.ch, align 4, !dbg !1083, !range !1082, !noundef !13
  call void @_RNvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax4utf8NtB5_13Utf8Sequences3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i32 noundef %i.cg, i32 noundef %i.ci), !dbg !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !1086
  br label %bb.l, !dbg !1087

bb.l:                                             ; preds = %._crit_edge, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1089
  invoke void @_RNvXs5_NtCs2G6gJ0Mq9lu_12regex_syntax4utf8NtB5_13Utf8SequencesNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([9 x i8]) align 1 captures(none) dereferenceable(9) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.n unwind label %bb.m, !dbg !1089

bb.m:                                             ; preds = %bb.l
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf813Utf8SequencesECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #18
          to label %common.resume unwind label %bb.r, !dbg !1090

bb.n:                                             ; preds = %bb.l
  %i.ck = load i8, ptr %i.b, align 1, !dbg !1089, !range !15, !noundef !13
  %.not = icmp eq i8 %i.ck, -1, !dbg !1089
  br i1 %.not, label %bb.o, label %switch.lookup, !dbg !1089

switch.lookup:                                    ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) %i.b, i64 9, i1 false), !dbg !1091
  %i.cl = load i8, ptr %i.a, align 1, !dbg !1092, !range !1099, !noundef !13 ; 3 uses
  %i.cm = load i8, ptr %i.bx, align 1, !dbg !1100, !noundef !13 ; 7 uses
  %i.cn = load i8, ptr %i.by, align 1, !dbg !1103, !noundef !13 ; 4 uses
  %.not.i7.i = icmp ugt i8 %i.cm, %i.cn
  br i1 %.not.i7.i, label %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit, label %.lr.ph.i.preheader, !dbg !1104

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1118
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf811ScalarRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf813Utf8SequencesECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.p, !dbg !1119

bb.p:                                             ; preds = %bb.o
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf811ScalarRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.q, !dbg !1122

bb.q:                                             ; preds = %bb.p
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !1119
  unreachable, !dbg !1119

common.resume:                                    ; preds = %bb.m, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.co, %bb.p ], [ %i.cj, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !888

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf813Utf8SequencesECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.o
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax4utf811ScalarRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !1124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1090
  %i.cq = icmp eq ptr %i.cf, %i.bw, !dbg !1126
  br i1 %i.cq, label %.loopexit, label %bb.k, !dbg !1061

.lr.ph.i.preheader:                               ; preds = %switch.lookup
  %2 = add i8 %i.cn, %i.cm, !dbg !1104
  %3 = and i8 %2, 1, !dbg !1104
  %lcmp.mod.not.not = icmp eq i8 %3, 0, !dbg !1104
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit, !dbg !1104

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.cr = add i8 %i.cm, 1, !dbg !1129
  %i.cs = lshr i8 %i.cm, 6, !dbg !1137
  %i.ct = zext nneg i8 %i.cs to i64, !dbg !1141
  %i.cu = and i8 %i.cm, 63, !dbg !1146
  %i.cv = zext nneg i8 %i.cu to i64, !dbg !1147
  %i.cw = shl nuw i64 1, %i.cv, !dbg !1147
  %i.cx = xor i64 %i.cw, -1, !dbg !1148
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ct, !dbg !1149 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !1149, !alias.scope !1150, !noundef !13
  %i.da = and i64 %i.cz, %i.cx, !dbg !1149
  store i64 %i.da, ptr %i.cy, align 8, !dbg !1149, !alias.scope !1150
  br label %.lr.ph.i.prol.loopexit, !dbg !1104

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.5.08.i.unr = phi i8 [ %i.cm, %.lr.ph.i.preheader ], [ %i.cr, %.lr.ph.i.prol ]
  %i.db = icmp eq i8 %i.cn, %i.cm, !dbg !1104
  br i1 %i.db, label %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit, label %.lr.ph.i, !dbg !1104

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.5.08.i = phi i8 [ %i.dm, %.lr.ph.i ], [ %.sroa.5.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.dc = add i8 %.sroa.5.08.i, 1, !dbg !1129     ; 3 uses
  %i.dd = lshr i8 %.sroa.5.08.i, 6, !dbg !1137
  %i.de = zext nneg i8 %i.dd to i64, !dbg !1141
  %i.df = and i8 %.sroa.5.08.i, 63, !dbg !1146
  %i.dg = zext nneg i8 %i.df to i64, !dbg !1147
  %i.dh = shl nuw i64 1, %i.dg, !dbg !1147
  %i.di = xor i64 %i.dh, -1, !dbg !1148
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.de, !dbg !1149 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !dbg !1149, !alias.scope !1150, !noundef !13
  %i.dl = and i64 %i.dk, %i.di, !dbg !1149
  store i64 %i.dl, ptr %i.dj, align 8, !dbg !1149, !alias.scope !1150
  %i.dm = add i8 %.sroa.5.08.i, 2, !dbg !1129
  %i.dn = lshr i8 %i.dc, 6, !dbg !1137
  %i.do = zext nneg i8 %i.dn to i64, !dbg !1141
  %i.dp = and i8 %i.dc, 63, !dbg !1146
  %i.dq = zext nneg i8 %i.dp to i64, !dbg !1147
  %i.dr = shl nuw i64 1, %i.dq, !dbg !1147
  %i.ds = xor i64 %i.dr, -1, !dbg !1148
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.do, !dbg !1149 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !dbg !1149, !alias.scope !1150, !noundef !13
  %i.dv = and i64 %i.du, %i.ds, !dbg !1149
  store i64 %i.dv, ptr %i.dt, align 8, !dbg !1149, !alias.scope !1150
  %exitcond.not.i.1 = icmp eq i8 %i.dc, %i.cn, !dbg !1104
  br i1 %exitcond.not.i.1, label %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit, label %.lr.ph.i, !dbg !1104

._crit_edge:                                      ; preds = %.lr.ph48.3, %.lr.ph.i.3, %.lr.ph.i.prol.loopexit.3, %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit.2, %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit.1, %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1118
  br label %bb.l, !dbg !1087

_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %switch.lookup
  %i.dw = icmp eq i8 %i.cl, 0, !dbg !1153
  br i1 %i.dw, label %._crit_edge, label %.lr.ph48.1, !dbg !1162

.lr.ph48.1:                                       ; preds = %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit
  %i.dx = load i8, ptr %i.bz, align 1, !dbg !1100, !noundef !13 ; 7 uses
  %i.dy = load i8, ptr %i.ca, align 1, !dbg !1103, !noundef !13 ; 4 uses
  %.not.i7.i.1 = icmp ugt i8 %i.dx, %i.dy
  br i1 %.not.i7.i.1, label %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit.1, label %.lr.ph.i.preheader.1, !dbg !1104

.lr.ph.i.preheader.1:                             ; preds = %.lr.ph48.1
  %4 = add i8 %i.dy, %i.dx, !dbg !1104
  %5 = and i8 %4, 1, !dbg !1104
  %lcmp.mod.1.not.not = icmp eq i8 %5, 0, !dbg !1104
  br i1 %lcmp.mod.1.not.not, label %.lr.ph.i.prol.1, label %.lr.ph.i.prol.loopexit.1, !dbg !1104

.lr.ph.i.prol.1:                                  ; preds = %.lr.ph.i.preheader.1
  %i.dz = add i8 %i.dx, 1, !dbg !1129
  %i.ea = lshr i8 %i.dx, 6, !dbg !1137
  %i.eb = zext nneg i8 %i.ea to i64, !dbg !1141
  %i.ec = and i8 %i.dx, 63, !dbg !1146
  %i.ed = zext nneg i8 %i.ec to i64, !dbg !1147
  %i.ee = shl nuw i64 1, %i.ed, !dbg !1147
  %i.ef = xor i64 %i.ee, -1, !dbg !1148
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.eb, !dbg !1149 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !dbg !1149, !alias.scope !1150, !noundef !13
  %i.ei = and i64 %i.eh, %i.ef, !dbg !1149
  store i64 %i.ei, ptr %i.eg, align 8, !dbg !1149, !alias.scope !1150
  br label %.lr.ph.i.prol.loopexit.1, !dbg !1104

.lr.ph.i.prol.loopexit.1:                         ; preds = %.lr.ph.i.prol.1, %.lr.ph.i.preheader.1
  %.sroa.5.08.i.unr.1 = phi i8 [ %i.dx, %.lr.ph.i.preheader.1 ], [ %i.dz, %.lr.ph.i.prol.1 ]
  %i.ej = icmp eq i8 %i.dy, %i.dx, !dbg !1104
  br i1 %i.ej, label %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit.1, label %.lr.ph.i.1, !dbg !1104

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.prol.loopexit.1, %.lr.ph.i.1
  %.sroa.5.08.i.1 = phi i8 [ %i.eu, %.lr.ph.i.1 ], [ %.sroa.5.08.i.unr.1, %.lr.ph.i.prol.loopexit.1 ] ; 4 uses
  %i.ek = add i8 %.sroa.5.08.i.1, 1, !dbg !1129   ; 3 uses
  %i.el = lshr i8 %.sroa.5.08.i.1, 6, !dbg !1137
  %i.em = zext nneg i8 %i.el to i64, !dbg !1141
  %i.en = and i8 %.sroa.5.08.i.1, 63, !dbg !1146
  %i.eo = zext nneg i8 %i.en to i64, !dbg !1147
  %i.ep = shl nuw i64 1, %i.eo, !dbg !1147
  %i.eq = xor i64 %i.ep, -1, !dbg !1148
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.em, !dbg !1149 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !dbg !1149, !alias.scope !1150, !noundef !13
  %i.et = and i64 %i.es, %i.eq, !dbg !1149
  store i64 %i.et, ptr %i.er, align 8, !dbg !1149, !alias.scope !1150
  %i.eu = add i8 %.sroa.5.08.i.1, 2, !dbg !1129
  %i.ev = lshr i8 %i.ek, 6, !dbg !1137
  %i.ew = zext nneg i8 %i.ev to i64, !dbg !1141
  %i.ex = and i8 %i.ek, 63, !dbg !1146
  %i.ey = zext nneg i8 %i.ex to i64, !dbg !1147
  %i.ez = shl nuw i64 1, %i.ey, !dbg !1147
  %i.fa = xor i64 %i.ez, -1, !dbg !1148
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ew, !dbg !1149 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !dbg !1149, !alias.scope !1150, !noundef !13
  %i.fd = and i64 %i.fc, %i.fa, !dbg !1149
  store i64 %i.fd, ptr %i.fb, align 8, !dbg !1149, !alias.scope !1150
  %exitcond.not.i.1.1 = icmp eq i8 %i.ek, %i.dy, !dbg !1104
  br i1 %exitcond.not.i.1.1, label %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit.1, label %.lr.ph.i.1, !dbg !1104

_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit.1: ; preds = %.lr.ph.i.prol.loopexit.1, %.lr.ph.i.1, %.lr.ph48.1
  %i.fe = icmp eq i8 %i.cl, 1, !dbg !1153
  br i1 %i.fe, label %._crit_edge, label %.lr.ph48.2, !dbg !1162

.lr.ph48.2:                                       ; preds = %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit.1
  %i.ff = load i8, ptr %i.cb, align 1, !dbg !1100, !noundef !13 ; 7 uses
  %i.fg = load i8, ptr %i.cc, align 1, !dbg !1103, !noundef !13 ; 4 uses
  %.not.i7.i.2 = icmp ugt i8 %i.ff, %i.fg
  br i1 %.not.i7.i.2, label %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit.2, label %.lr.ph.i.preheader.2, !dbg !1104

.lr.ph.i.preheader.2:                             ; preds = %.lr.ph48.2
  %6 = add i8 %i.fg, %i.ff, !dbg !1104
  %7 = and i8 %6, 1, !dbg !1104
  %lcmp.mod.2.not.not = icmp eq i8 %7, 0, !dbg !1104
  br i1 %lcmp.mod.2.not.not, label %.lr.ph.i.prol.2, label %.lr.ph.i.prol.loopexit.2, !dbg !1104

.lr.ph.i.prol.2:                                  ; preds = %.lr.ph.i.preheader.2
  %i.fh = add i8 %i.ff, 1, !dbg !1129
  %i.fi = lshr i8 %i.ff, 6, !dbg !1137
  %i.fj = zext nneg i8 %i.fi to i64, !dbg !1141
  %i.fk = and i8 %i.ff, 63, !dbg !1146
  %i.fl = zext nneg i8 %i.fk to i64, !dbg !1147
  %i.fm = shl nuw i64 1, %i.fl, !dbg !1147
  %i.fn = xor i64 %i.fm, -1, !dbg !1148
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fj, !dbg !1149 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !dbg !1149, !alias.scope !1150, !noundef !13
  %i.fq = and i64 %i.fp, %i.fn, !dbg !1149
  store i64 %i.fq, ptr %i.fo, align 8, !dbg !1149, !alias.scope !1150
  br label %.lr.ph.i.prol.loopexit.2, !dbg !1104

.lr.ph.i.prol.loopexit.2:                         ; preds = %.lr.ph.i.prol.2, %.lr.ph.i.preheader.2
  %.sroa.5.08.i.unr.2 = phi i8 [ %i.ff, %.lr.ph.i.preheader.2 ], [ %i.fh, %.lr.ph.i.prol.2 ]
  %i.fr = icmp eq i8 %i.fg, %i.ff, !dbg !1104
  br i1 %i.fr, label %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit.2, label %.lr.ph.i.2, !dbg !1104

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.prol.loopexit.2, %.lr.ph.i.2
  %.sroa.5.08.i.2 = phi i8 [ %i.gc, %.lr.ph.i.2 ], [ %.sroa.5.08.i.unr.2, %.lr.ph.i.prol.loopexit.2 ] ; 4 uses
  %i.fs = add i8 %.sroa.5.08.i.2, 1, !dbg !1129   ; 3 uses
  %i.ft = lshr i8 %.sroa.5.08.i.2, 6, !dbg !1137
  %i.fu = zext nneg i8 %i.ft to i64, !dbg !1141
  %i.fv = and i8 %.sroa.5.08.i.2, 63, !dbg !1146
  %i.fw = zext nneg i8 %i.fv to i64, !dbg !1147
  %i.fx = shl nuw i64 1, %i.fw, !dbg !1147
  %i.fy = xor i64 %i.fx, -1, !dbg !1148
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fu, !dbg !1149 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !dbg !1149, !alias.scope !1150, !noundef !13
  %i.gb = and i64 %i.ga, %i.fy, !dbg !1149
  store i64 %i.gb, ptr %i.fz, align 8, !dbg !1149, !alias.scope !1150
  %i.gc = add i8 %.sroa.5.08.i.2, 2, !dbg !1129
  %i.gd = lshr i8 %i.fs, 6, !dbg !1137
  %i.ge = zext nneg i8 %i.gd to i64, !dbg !1141
  %i.gf = and i8 %i.fs, 63, !dbg !1146
  %i.gg = zext nneg i8 %i.gf to i64, !dbg !1147
  %i.gh = shl nuw i64 1, %i.gg, !dbg !1147
  %i.gi = xor i64 %i.gh, -1, !dbg !1148
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ge, !dbg !1149 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !1149, !alias.scope !1150, !noundef !13
  %i.gl = and i64 %i.gk, %i.gi, !dbg !1149
  store i64 %i.gl, ptr %i.gj, align 8, !dbg !1149, !alias.scope !1150
  %exitcond.not.i.1.2 = icmp eq i8 %i.fs, %i.fg, !dbg !1104
  br i1 %exitcond.not.i.1.2, label %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit.2, label %.lr.ph.i.2, !dbg !1104

_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit.2: ; preds = %.lr.ph.i.prol.loopexit.2, %.lr.ph.i.2, %.lr.ph48.2
  %i.gm = icmp eq i8 %i.cl, 2, !dbg !1153
  br i1 %i.gm, label %._crit_edge, label %.lr.ph48.3, !dbg !1162

.lr.ph48.3:                                       ; preds = %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit.2
  %i.gn = load i8, ptr %i.cd, align 1, !dbg !1100, !noundef !13 ; 7 uses
  %i.go = load i8, ptr %i.ce, align 1, !dbg !1103, !noundef !13 ; 4 uses
  %.not.i7.i.3 = icmp ugt i8 %i.gn, %i.go
  br i1 %.not.i7.i.3, label %._crit_edge, label %.lr.ph.i.preheader.3, !dbg !1104

.lr.ph.i.preheader.3:                             ; preds = %.lr.ph48.3
  %8 = add i8 %i.go, %i.gn, !dbg !1104
  %9 = and i8 %8, 1, !dbg !1104
  %lcmp.mod.3.not.not = icmp eq i8 %9, 0, !dbg !1104
  br i1 %lcmp.mod.3.not.not, label %.lr.ph.i.prol.3, label %.lr.ph.i.prol.loopexit.3, !dbg !1104

.lr.ph.i.prol.3:                                  ; preds = %.lr.ph.i.preheader.3
  %i.gp = add i8 %i.gn, 1, !dbg !1129
  %i.gq = lshr i8 %i.gn, 6, !dbg !1137
  %i.gr = zext nneg i8 %i.gq to i64, !dbg !1141
  %i.gs = and i8 %i.gn, 63, !dbg !1146
  %i.gt = zext nneg i8 %i.gs to i64, !dbg !1147
  %i.gu = shl nuw i64 1, %i.gt, !dbg !1147
  %i.gv = xor i64 %i.gu, -1, !dbg !1148
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gr, !dbg !1149 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !dbg !1149, !alias.scope !1150, !noundef !13
  %i.gy = and i64 %i.gx, %i.gv, !dbg !1149
  store i64 %i.gy, ptr %i.gw, align 8, !dbg !1149, !alias.scope !1150
  br label %.lr.ph.i.prol.loopexit.3, !dbg !1104

.lr.ph.i.prol.loopexit.3:                         ; preds = %.lr.ph.i.prol.3, %.lr.ph.i.preheader.3
  %.sroa.5.08.i.unr.3 = phi i8 [ %i.gn, %.lr.ph.i.preheader.3 ], [ %i.gp, %.lr.ph.i.prol.3 ]
  %i.gz = icmp eq i8 %i.go, %i.gn, !dbg !1104
  br i1 %i.gz, label %._crit_edge, label %.lr.ph.i.3, !dbg !1104

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.prol.loopexit.3, %.lr.ph.i.3
  %.sroa.5.08.i.3 = phi i8 [ %i.hk, %.lr.ph.i.3 ], [ %.sroa.5.08.i.unr.3, %.lr.ph.i.prol.loopexit.3 ] ; 4 uses
  %i.ha = add i8 %.sroa.5.08.i.3, 1, !dbg !1129   ; 3 uses
  %i.hb = lshr i8 %.sroa.5.08.i.3, 6, !dbg !1137
  %i.hc = zext nneg i8 %i.hb to i64, !dbg !1141
  %i.hd = and i8 %.sroa.5.08.i.3, 63, !dbg !1146
  %i.he = zext nneg i8 %i.hd to i64, !dbg !1147
  %i.hf = shl nuw i64 1, %i.he, !dbg !1147
  %i.hg = xor i64 %i.hf, -1, !dbg !1148
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.hc, !dbg !1149 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !dbg !1149, !alias.scope !1150, !noundef !13
  %i.hj = and i64 %i.hi, %i.hg, !dbg !1149
  store i64 %i.hj, ptr %i.hh, align 8, !dbg !1149, !alias.scope !1150
  %i.hk = add i8 %.sroa.5.08.i.3, 2, !dbg !1129
  %i.hl = lshr i8 %i.ha, 6, !dbg !1137
  %i.hm = zext nneg i8 %i.hl to i64, !dbg !1141
  %i.hn = and i8 %i.ha, 63, !dbg !1146
  %i.ho = zext nneg i8 %i.hn to i64, !dbg !1147
  %i.hp = shl nuw i64 1, %i.ho, !dbg !1147
  %i.hq = xor i64 %i.hp, -1, !dbg !1148
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.hm, !dbg !1149 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !dbg !1149, !alias.scope !1150, !noundef !13
  %i.ht = and i64 %i.hs, %i.hq, !dbg !1149
  store i64 %i.ht, ptr %i.hr, align 8, !dbg !1149, !alias.scope !1150
  %exitcond.not.i.1.3 = icmp eq i8 %i.ha, %i.go, !dbg !1104
  br i1 %exitcond.not.i.1.3, label %._crit_edge, label %.lr.ph.i.3, !dbg !1104

bb.r:                                             ; preds = %bb.m
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !1163
  unreachable, !dbg !1163

.lr.ph54:                                         ; preds = %bb.i, %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit25
  %.sroa.018.052 = phi ptr [ %i.hv, %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit25 ], [ %i.ae, %bb.i ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.018.052, i64 2, !dbg !1164 ; 2 uses
  %i.hw = load i8, ptr %.sroa.018.052, align 1, !dbg !1168, !noundef !13 ; 7 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.018.052, i64 1, !dbg !1173
  %i.hy = load i8, ptr %i.hx, align 1, !dbg !1173, !noundef !13 ; 4 uses
  %.not.i7.i21 = icmp ugt i8 %i.hw, %i.hy
  br i1 %.not.i7.i21, label %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit25, label %.lr.ph.i22.preheader, !dbg !1176

.lr.ph.i22.preheader:                             ; preds = %.lr.ph54
  %10 = add i8 %i.hy, %i.hw, !dbg !1176
  %11 = and i8 %10, 1, !dbg !1176
  %lcmp.mod142.not.not = icmp eq i8 %11, 0, !dbg !1176
  br i1 %lcmp.mod142.not.not, label %.lr.ph.i22.prol, label %.lr.ph.i22.prol.loopexit, !dbg !1176

.lr.ph.i22.prol:                                  ; preds = %.lr.ph.i22.preheader
  %i.hz = add i8 %i.hw, 1, !dbg !1180
  %i.ia = lshr i8 %i.hw, 6, !dbg !1183
  %i.ib = zext nneg i8 %i.ia to i64, !dbg !1185
  %i.ic = and i8 %i.hw, 63, !dbg !1187
  %i.id = zext nneg i8 %i.ic to i64, !dbg !1188
  %i.ie = shl nuw i64 1, %i.id, !dbg !1188
  %i.if = xor i64 %i.ie, -1, !dbg !1189
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ib, !dbg !1190 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !dbg !1190, !alias.scope !1191, !noundef !13
  %i.ii = and i64 %i.ih, %i.if, !dbg !1190
  store i64 %i.ii, ptr %i.ig, align 8, !dbg !1190, !alias.scope !1191
  br label %.lr.ph.i22.prol.loopexit, !dbg !1176

.lr.ph.i22.prol.loopexit:                         ; preds = %.lr.ph.i22.prol, %.lr.ph.i22.preheader
  %.sroa.5.08.i23.unr = phi i8 [ %i.hw, %.lr.ph.i22.preheader ], [ %i.hz, %.lr.ph.i22.prol ]
  %i.ij = icmp eq i8 %i.hy, %i.hw, !dbg !1176
  br i1 %i.ij, label %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit25, label %.lr.ph.i22, !dbg !1176

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22
  %.sroa.5.08.i23 = phi i8 [ %i.iu, %.lr.ph.i22 ], [ %.sroa.5.08.i23.unr, %.lr.ph.i22.prol.loopexit ] ; 4 uses
  %i.ik = add i8 %.sroa.5.08.i23, 1, !dbg !1180   ; 3 uses
  %i.il = lshr i8 %.sroa.5.08.i23, 6, !dbg !1183
  %i.im = zext nneg i8 %i.il to i64, !dbg !1185
  %i.in = and i8 %.sroa.5.08.i23, 63, !dbg !1187
  %i.io = zext nneg i8 %i.in to i64, !dbg !1188
  %i.ip = shl nuw i64 1, %i.io, !dbg !1188
  %i.iq = xor i64 %i.ip, -1, !dbg !1189
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.im, !dbg !1190 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !dbg !1190, !alias.scope !1191, !noundef !13
  %i.it = and i64 %i.is, %i.iq, !dbg !1190
  store i64 %i.it, ptr %i.ir, align 8, !dbg !1190, !alias.scope !1191
  %i.iu = add i8 %.sroa.5.08.i23, 2, !dbg !1180
  %i.iv = lshr i8 %i.ik, 6, !dbg !1183
  %i.iw = zext nneg i8 %i.iv to i64, !dbg !1185
  %i.ix = and i8 %i.ik, 63, !dbg !1187
  %i.iy = zext nneg i8 %i.ix to i64, !dbg !1188
  %i.iz = shl nuw i64 1, %i.iy, !dbg !1188
  %i.ja = xor i64 %i.iz, -1, !dbg !1189
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.iw, !dbg !1190 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !dbg !1190, !alias.scope !1191, !noundef !13
  %i.jd = and i64 %i.jc, %i.ja, !dbg !1190
  store i64 %i.jd, ptr %i.jb, align 8, !dbg !1190, !alias.scope !1191
  %exitcond.not.i24.1 = icmp eq i8 %i.ik, %i.hy, !dbg !1176
  br i1 %exitcond.not.i24.1, label %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit25, label %.lr.ph.i22, !dbg !1176

_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit25: ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22, %.lr.ph54
  %i.je = icmp eq ptr %i.hv, %i.bv, !dbg !1194
  br i1 %i.je, label %.loopexit, label %.lr.ph54, !dbg !1029

bb.s:                                             ; preds = %bb.e, %bb.e
  br label %.loopexit.sink.split, !dbg !1197

.lr.ph46:                                         ; preds = %bb.g, %.lr.ph46
  %.sroa.010.045 = phi ptr [ %i.jf, %.lr.ph46 ], [ %i.an, %bb.g ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.010.045, i64 48, !dbg !1198 ; 2 uses
  tail call fastcc void @_RNvNtCsdq8xsXUia3c_10grep_regex12non_matching21remove_matching_bytes(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.010.045, ptr noalias nofree noundef align 8 dereferenceable(32) %1), !dbg !1201
  %i.jg = icmp eq ptr %i.jf, %i.aq, !dbg !970
  br i1 %i.jg, label %.loopexit, label %.lr.ph46, !dbg !980

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.sroa.013.044 = phi ptr [ %i.jh, %.lr.ph ], [ %i.at, %bb.h ] ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.013.044, i64 48, !dbg !1203 ; 2 uses
  tail call fastcc void @_RNvNtCsdq8xsXUia3c_10grep_regex12non_matching21remove_matching_bytes(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.013.044, ptr noalias nofree noundef align 8 dereferenceable(32) %1), !dbg !1205
  %i.ji = icmp eq ptr %i.jh, %i.aw, !dbg !997
  br i1 %i.ji, label %.loopexit, label %.lr.ph, !dbg !1005
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsdq8xsXUia3c_10grep_regex3ban5check(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1207 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = icmp sgt i8 %2, -1, !dbg !1210
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !1214, !prof !1215

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !dbg !1216
  unreachable, !dbg !1216

bb.c:                                             ; preds = %bb.a
  %i.f = zext nneg i8 %2 to i32, !dbg !1217       ; 2 uses
  %i.g = load i64, ptr %1, align 8, !dbg !1223, !range !202, !noundef !13 ; 4 uses
  %i.h = icmp ne i64 %i.g, 4, !dbg !1223
  tail call void @llvm.assume(i1 %i.h), !dbg !1223
  %i.i = add nsw i64 %i.g, -2, !dbg !1223
  %.inv = icmp samesign ult i64 %i.g, 2, !dbg !1223
  %i.j = select i1 %.inv, i64 2, i64 %i.i, !dbg !1223
  switch i64 %i.j, label %bb.d [
    i64 0, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread
    i64 1, label %bb.e
    i64 2, label %bb.g
    i64 3, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %bb.j
    i64 7, label %bb.k
  ], !dbg !1226

bb.d:                                             ; preds = %bb.c
  unreachable, !dbg !1227

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread: ; preds = %bb.u, %bb.s, %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks1_0B5_.exit.thread.i, %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks3_0B5_.exit.thread.i, %bb.f, %bb.e, %bb.k, %bb.j, %bb.m, %bb.l, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks0_0NCINvXsK_NtB1O_5accumjNtB43_3Sum3sumINtB2A_3MapBF_B3a_EE0E0EB3g_.exit, %bb.q, %bb.o, %bb.c, %bb.c
  store i8 -1, ptr %0, align 8, !dbg !1229
  br label %bb.v, !dbg !1230

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1231
  %i.l = load ptr, ptr %i.k, align 8, !dbg !1231, !nonnull !13, !noundef !13 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1231
  %i.n = load i64, ptr %i.m, align 8, !dbg !1231, !noundef !13 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n, !dbg !1233
  %i.p = icmp samesign eq i64 %i.n, 0, !dbg !1242
  br i1 %i.p, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, label %.lr.ph92, !dbg !1252

bb.f:                                             ; preds = %.lr.ph92
  %i.q = getelementptr inbounds nuw i8, ptr %i.s, i64 1, !dbg !1253 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.o, !dbg !1242
  br i1 %i.r, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, label %.lr.ph92, !dbg !1252

.lr.ph92:                                         ; preds = %bb.e, %bb.f
  %i.s = phi ptr [ %i.q, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !dbg !1256, !noalias !1260, !noundef !13
  %i.u = icmp eq i8 %i.t, %2, !dbg !1264
  br i1 %i.u, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks_0EB1I_.exit, label %bb.f, !dbg !1266

bb.g:                                             ; preds = %bb.c
  %i.v = trunc nuw i64 %i.g to i1, !dbg !1226
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1267
  %i.x = load ptr, ptr %i.w, align 8, !dbg !1267, !nonnull !13, !noundef !13 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !1267
  %i.z = load i64, ptr %i.y, align 8, !dbg !1267, !noundef !13 ; 5 uses
  %i.aa = icmp eq i64 %i.z, 0, !dbg !1267         ; 2 uses
  br i1 %i.v, label %bb.l, label %bb.m, !dbg !1226

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1268
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1270
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !1270, !nonnull !13, !noundef !13
  call void @_RNvNtCsdq8xsXUia3c_10grep_regex3ban5check(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, i8 noundef %2), !dbg !1268
  %i.ad = load i8, ptr %i.d, align 8, !dbg !1271, !range !15, !noundef !13
  %.not23 = icmp eq i8 %i.ad, -1, !dbg !1271
  br i1 %.not23, label %bb.o, label %bb.n, !dbg !1273

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1274
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1276
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !1276, !nonnull !13, !noundef !13
  call void @_RNvNtCsdq8xsXUia3c_10grep_regex3ban5check(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.af, i8 noundef %2), !dbg !1274
  %i.ag = load i8, ptr %i.c, align 8, !dbg !1277, !range !15, !noundef !13
  %.not22 = icmp eq i8 %i.ag, -1, !dbg !1277
  br i1 %.not22, label %bb.q, label %bb.p, !dbg !1278

bb.j:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1279
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !1279, !nonnull !13, !noundef !13 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !1298
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !1298, !noundef !13 ; 2 uses
  %.idx68 = mul nuw nsw i64 %i.ak, 48, !dbg !1299
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx68, !dbg !1299
  %i.am = icmp eq i64 %i.ak, 0, !dbg !1310
  br i1 %i.am, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, label %.lr.ph66, !dbg !1312

bb.k:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1319
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !1319, !nonnull !13, !noundef !13 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !1327
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !1327, !noundef !13 ; 2 uses
  %.idx67 = mul nuw nsw i64 %i.aq, 48, !dbg !1328
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx67, !dbg !1328
  %i.as = icmp eq i64 %i.aq, 0, !dbg !1336
  br i1 %i.as, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, label %.lr.ph, !dbg !1344

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks_0EB1I_.exit: ; preds = %.lr.ph92
  store i8 3, ptr %0, align 8, !dbg !1345
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !1345
  store i8 %2, ptr %.sroa.47.0..sroa_idx, align 1, !dbg !1345
  br label %bb.v, !dbg !1348

bb.l:                                             ; preds = %bb.g
  %.idx57 = shl nuw nsw i64 %i.z, 1, !dbg !1350
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx57, !dbg !1350
  br i1 %i.aa, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, label %.preheader, !dbg !1362

.preheader:                                       ; preds = %bb.l, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.ax, %.preheader ], [ 0, %bb.l ], !dbg !1380 ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.aw, %.preheader ], [ 0, %bb.l ], !dbg !1382
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %.sroa.04.0.i, !dbg !1383
  %i.av = tail call noundef i64 @_RNvMsi_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_15ClassBytesRange3len(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.au), !dbg !1388
  %i.aw = add i64 %i.av, %.sroa.02.0.i, !dbg !1393 ; 2 uses
  %i.ax = add nuw i64 %.sroa.04.0.i, 1, !dbg !1397 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.z, !dbg !1400
  br i1 %i.ay, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit, label %.preheader, !dbg !1400

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit: ; preds = %.preheader
  %i.az = icmp eq i64 %i.aw, 1, !dbg !1401
  br i1 %i.az, label %.lr.ph.i34, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, !dbg !1401
end_hunk_1
