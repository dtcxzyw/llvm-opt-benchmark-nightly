Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.07?download=true
inline.NumInlined: 1664
inline.NumDeleted: 903
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsileJQcQObtj_7hir_def:bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count17is_zero_slow_path() #52
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCscAsMj0W7j8b_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc4zero5InnerENCNvMs9_B10_BX_3new0ECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsileJQcQObtj_7hir_def(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCscAsMj0W7j8b_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count17is_zero_slow_path() #52
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCscAsMj0W7j8b_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc5waker5WakerENCNvMs9_B10_BX_3new0ECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCsileJQcQObtj_7hir_def3hirNtB5_7Literal6negate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i8, ptr %1, align 16, !range !40, !noundef !10 ; 2 uses
  %i.f = icmp eq i8 %i.e, 5
  br i1 %i.f, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i128, ptr %i.g, align 16, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !range !41, !noundef !10
  %i.k = sub i128 0, %i.h
  store i8 5, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.j, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %i.k, ptr %.sroa.51.0..sroa_idx, align 16
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir7LiteralEBF_.exit

bb.b:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  switch i8 %i.e, label %default.unreachable6.i [
    i8 0, label %bb.g
    i8 1, label %bb.k
    i8 2, label %bb.m
    i8 3, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir7LiteralEBF_.exit
    i8 4, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir7LiteralEBF_.exit
    i8 7, label %bb.c
    i8 6, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir7LiteralEBF_.exit
  ]

default.unreachable6.i:                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.l, align 8, !alias.scope !1181, !nonnull !10, !noundef !10 ; 2 uses
  %i.m = ptrtoint ptr %.val.i to i64
  %i.n = and i64 %i.m, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir7LiteralEBF_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %.val.i, i64 -1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.o), !noalias !1182
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.q ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1182
  store ptr %i.r, ptr %i.d, align 8, !noalias !1182
  %i.s = load atomic i64, ptr %i.r acquire, align 8, !noalias !1182
  %i.t = icmp eq i64 %i.s, 2
  br i1 %i.t, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !noalias !1182
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1182
  store ptr %i.r, ptr %i.c, align 8, !noalias !1182
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !1182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1182
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir7LiteralEBF_.exit

bb.g:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1184, !nonnull !10, !noundef !10 ; 2 uses
  %i.v = ptrtoint ptr %.val.i.i to i64
  %i.w = and i64 %i.v, 1
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir7LiteralEBF_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %.val.i.i, i64 -1  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.x), !noalias !1184
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %i.z ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1184
  store ptr %i.aa, ptr %i.b, align 8, !noalias !1184
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8, !noalias !1184
  %i.ac = icmp eq i64 %i.ab, 2
  br i1 %i.ac, label %bb.i, label %bb.j, !prof !22

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !1184
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1184
  store ptr %i.aa, ptr %i.a, align 8, !noalias !1184
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1184
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir7LiteralEBF_.exit

bb.k:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i = load i64, ptr %i.ad, align 16, !alias.scope !1180, !noundef !10 ; 2 uses
  %i.ae = icmp eq i64 %.val4.i, 0
  br i1 %i.ae, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir7LiteralEBF_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.af, align 8, !alias.scope !1180, !nonnull !10, !noundef !10
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef range(i64 1, 0) %.val4.i, i64 noundef 1) #46, !noalias !1180
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir7LiteralEBF_.exit

bb.m:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.ag, align 16, !alias.scope !1180, !noundef !10 ; 2 uses
  %i.ah = icmp eq i64 %.val2.i, 0
  br i1 %i.ah, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir7LiteralEBF_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.ai, align 8, !alias.scope !1180, !nonnull !10, !noundef !10
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef range(i64 1, 0) %.val2.i, i64 noundef 1) #46, !noalias !1180
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir7LiteralEBF_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir7LiteralEBF_.exit: ; preds = %.thread, %bb.b, %bb.b, %bb.b, %bb.c, %bb.f, %bb.g, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsileJQcQObtj_7hir_def9find_pathNtB4_6Choice10try_select(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %1, i1 noundef zeroext %2, ptr noundef nonnull %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !23, !noundef !10 ; 3 uses
  %.not.not = icmp eq i8 %i.g, 2
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i8, ptr %i.h, align 8, !range !20, !noundef !10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load i8, ptr %i.j, align 8, !range !20, !noundef !10 ; 2 uses
  %5 = sub nsw i8 %i.i, %4
  %6 = icmp eq i8 %i.i, %4
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 49
  %.val.a = load i8, ptr %7, align 1, !range !20  ; 2 uses
  %8 = select i1 %2, i8 %.val.a, i8 %i.g
  %9 = select i1 %2, i8 %i.g, i8 %.val.a
  %i.k = sub nsw i8 %8, %9
  %.sroa.0.0 = select i1 %6, i8 %i.k, i8 %5       ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.l = icmp eq i8 %.sroa.0.0, 0
  br i1 %i.l, label %bb.f, label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  %i.m = ptrtoint ptr %3 to i64
  %i.n = and i64 %i.m, 1
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr i8, ptr %3, i64 %i.o       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !1193, !noundef !10
  %i.s = load i64, ptr %i.d, align 8, !alias.scope !1192, !noundef !10
  %i.t = add i64 %i.s, %i.r
  store i64 %i.t, ptr %i.d, align 8, !alias.scope !1192
  %i.u = icmp eq ptr %3, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols7prelude10SYMBOL_STR
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 49 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !range !20, !alias.scope !1192, !noundef !10
  %i.x = zext i1 %i.u to i8
  %i.y = or i8 %i.w, %i.x
  store i8 %i.y, ptr %i.v, align 1, !alias.scope !1192
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  invoke void @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath12push_segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull %3)
          to label %bb.t unwind label %bb.d, !noalias !1194

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def9find_path6ChoiceEBF_.exit15 unwind label %bb.e, !noalias !1194

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !1194
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = invoke noundef i64 @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath3len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac)
          to label %bb.g unwind label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.ae = invoke noundef i64 @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath3len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %10)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.af = add i64 %i.ae, 1
  %i.ag = tail call i8 @llvm.ucmp.i8.i64(i64 %i.ad, i64 %i.af)
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.sroa.0.1 = phi i8 [ %i.ag, %bb.h ], [ %.sroa.0.0, %bb.b ]
  %.pre = ptrtoint ptr %3 to i64
  %.pre46 = and i64 %.pre, 1                      ; 3 uses
  switch i8 %.sroa.0.1, label %bb.j [
    i8 -1, label %._crit_edge
    i8 0, label %bb.m
    i8 1, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  unreachable

._crit_edge:                                      ; preds = %bb.i, %bb.m
  %.not.i.i.i.i = icmp eq i64 %.pre46, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ah = getelementptr i8, ptr %3, i64 -1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  %i.ai = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.ah)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.k
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.aj ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1195
  store ptr %i.ak, ptr %i.b, align 8, !noalias !1195
  %i.al = load atomic i64, ptr %i.ak acquire, align 8, !noalias !1195
  %i.am = icmp eq i64 %i.al, 2
  br i1 %i.am, label %bb.l, label %.noexc10, !prof !22

bb.l:                                             ; preds = %.noexc
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc10 unwind label %bb.o

.noexc10:                                         ; preds = %bb.l, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1195
  store ptr %i.ak, ptr %i.a, align 8, !noalias !1195
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc11 unwind label %bb.o

.noexc11:                                         ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1195
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit

bb.m:                                             ; preds = %bb.i
  %i.an = sub nsw i64 0, %.pre46
  %i.ao = getelementptr i8, ptr %3, i64 %i.an     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !10
  %i.ar = load i64, ptr %1, align 8, !noundef !10
  %i.as = add i64 %i.ar, %i.aq                    ; 2 uses
  store i64 %i.as, ptr %1, align 8
  %i.at = load i64, ptr %0, align 8, !noundef !10
  %i.au = icmp ugt i64 %i.at, %i.as
  br i1 %i.au, label %bb.q, label %._crit_edge

bb.n:                                             ; preds = %bb.i
  %i.av = sub nsw i64 0, %.pre46
  %i.aw = getelementptr i8, ptr %3, i64 %i.av     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !10
  %i.az = load i64, ptr %1, align 8, !noundef !10
  %i.ba = add i64 %i.az, %i.ay
  store i64 %i.ba, ptr %1, align 8
  br label %bb.q

bb.o:                                             ; preds = %bb.q, %.noexc10, %bb.l, %bb.k
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit: ; preds = %.noexc11, %._crit_edge
  call void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %10)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9find_path6ChoiceEEB11_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def9find_path6ChoiceEBF_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit
  ret void

bb.q:                                             ; preds = %bb.m, %bb.n
  invoke void @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath12push_segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %3)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bc)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def9find_path6ChoiceEBF_.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def9find_path6ChoiceEBF_.exit15.sink.split

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def9find_path6ChoiceEBF_.exit: ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.t:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.be = load i8, ptr %i.f, align 1, !range !23, !alias.scope !1196, !noundef !10
  %i.bf = icmp eq i8 %i.be, 2
  br i1 %i.bf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9find_path6ChoiceEEB11_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bg)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9find_path6ChoiceEEB11_.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def9find_path6ChoiceEBF_.exit15.sink.split

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9find_path6ChoiceEEB11_.exit: ; preds = %bb.t, %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.w:                                             ; preds = %bb.g, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr nonnull %3) #53
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def9find_path6ChoiceEBF_.exit15.sink.split: ; preds = %bb.s, %bb.v
  %.sink = phi ptr [ %i.e, %bb.v ], [ %i.c, %bb.s ]
  %.pn741.ph = phi { ptr, i32 } [ %i.bh, %bb.v ], [ %i.bd, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sink, i64 56, i1 false)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def9find_path6ChoiceEBF_.exit15

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def9find_path6ChoiceEBF_.exit15: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def9find_path6ChoiceEBF_.exit15.sink.split, %bb.d, %bb.y
  %.pn741 = phi { ptr, i32 } [ %i.aa, %bb.d ], [ %.pn7.ph, %bb.y ], [ %.pn741.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def9find_path6ChoiceEBF_.exit15.sink.split ]
  resume { ptr, i32 } %.pn741

bb.y:                                             ; preds = %bb.o, %bb.w
  %.pn7.ph = phi { ptr, i32 } [ %i.bb, %bb.o ], [ %lpad.thr_comm, %bb.w ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %10)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def9find_path6ChoiceEBF_.exit15 unwind label %bb.x
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB4_10ExprScopes21resolve_name_in_scope(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
.lr.ph.i:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.a, align 8, !alias.scope !1212 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !1212, !nonnull !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %2, align 8, !alias.scope !1213, !nonnull !10
  br label %bb.a

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataERNtB1M_10ScopeEntryNCNvMs_B1M_NtB1M_10ExprScopes21resolve_name_in_scope0E0B1Q_.exit.loopexit.i: ; preds = %bb.c, %_RNvMs_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB4_10ExprScopes7entries.exit.i.i.i
  %i.g = trunc nuw i32 %i.l to i1
  br i1 %i.g, label %bb.a, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataENCNvMs_B1C_NtB1C_10ExprScopes11scope_chain0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3d_8find_map5checkB16_RNtB1C_10ScopeEntryNCNvB2z_21resolve_name_in_scope0E0INtNtNtBc_3ops12control_flow11ControlFlowB4p_EEB1G_.exit

bb.a:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataERNtB1M_10ScopeEntryNCNvMs_B1M_NtB1M_10ExprScopes21resolve_name_in_scope0E0B1Q_.exit.loopexit.i, %.lr.ph.i
  %i.h = phi i32 [ %1, %.lr.ph.i ], [ %i.n, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataERNtB1M_10ScopeEntryNCNvMs_B1M_NtB1M_10ExprScopes21resolve_name_in_scope0E0B1Q_.exit.loopexit.i ]
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %_RNvMs_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB4_10ExprScopes7entries.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #55, !noalias !1214
  unreachable

_RNvMs_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB4_10ExprScopes7entries.exit.i.i.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.i ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !range !36, !noalias !1214, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !noalias !1214
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.val.i.i.i.i = load i32, ptr %i.o, align 8, !alias.scope !1215, !noalias !1216, !noundef !10
  %i.p = getelementptr i8, ptr %i.k, i64 28
  %.val2.i.i.i.i = load i32, ptr %i.p, align 4, !alias.scope !1217, !noalias !1216, !noundef !10
  %i.q = tail call { ptr, i64 } @_RNvXsr_Csbq3eHDLgq0Z_8la_arenaINtB5_5ArenaNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope10ScopeEntryEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtB5_8IdxRangeBE_EE5indexBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, i32 noundef %.val.i.i.i.i, i32 noundef %.val2.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86), !noalias !1218 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 3 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %.idx = shl nuw nsw i64 %i.s, 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataERNtB1M_10ScopeEntryNCNvMs_B1M_NtB1M_10ExprScopes21resolve_name_in_scope0E0B1Q_.exit.loopexit.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.t
  br i1 %i.w, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataERNtB1M_10ScopeEntryNCNvMs_B1M_NtB1M_10ExprScopes21resolve_name_in_scope0E0B1Q_.exit.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB4_10ExprScopes7entries.exit.i.i.i, %bb.c
  %i.x = phi ptr [ %i.v, %bb.c ], [ %i.r, %_RNvMs_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB4_10ExprScopes7entries.exit.i.i.i ] ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !noalias !1219, !nonnull !10, !noundef !10
  %i.z = icmp eq ptr %i.y, %i.f
  br i1 %i.z, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataENCNvMs_B1C_NtB1C_10ExprScopes11scope_chain0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3d_8find_map5checkB16_RNtB1C_10ScopeEntryNCNvB2z_21resolve_name_in_scope0E0INtNtNtBc_3ops12control_flow11ControlFlowB4p_EEB1G_.exit, label %bb.c

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataENCNvMs_B1C_NtB1C_10ExprScopes11scope_chain0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3d_8find_map5checkB16_RNtB1C_10ScopeEntryNCNvB2z_21resolve_name_in_scope0E0INtNtNtBc_3ops12control_flow11ControlFlowB4p_EEB1G_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataERNtB1M_10ScopeEntryNCNvMs_B1M_NtB1M_10ExprScopes21resolve_name_in_scope0E0B1Q_.exit.loopexit.i, %.lr.ph
  %.sroa.0.0.i = phi ptr [ %i.x, %.lr.ph ], [ null, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataERNtB1M_10ScopeEntryNCNvMs_B1M_NtB1M_10ExprScopes21resolve_name_in_scope0E0B1Q_.exit.loopexit.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB4_10ExprScopes7entries(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, i32 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 2 uses
  %i.d = icmp ugt i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.a ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.val = load i32, ptr %i.i, align 4, !alias.scope !1224, !noundef !10
  %i.j = getelementptr i8, ptr %i.h, i64 28
  %.val2 = load i32, ptr %i.j, align 4, !alias.scope !1225, !noundef !10
  %i.k = tail call { ptr, i64 } @_RNvXsr_Csbq3eHDLgq0Z_8la_arenaINtB5_5ArenaNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope10ScopeEntryEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtB5_8IdxRangeBE_EE5indexBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, i32 noundef %.val, i32 noundef %.val2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86)
  ret { ptr, i64 } %i.k

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #55
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsileJQcQObtj_7hir_def7nameres15path_resolutionNtNtB8_6per_ns5PerNs12filter_macro(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 4 captures(none) dereferenceable(128) initializes((0, 128)) %0, ptr noalias nofree noundef align 4 captures(none) dead_on_return dereferenceable(128) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, i8 noundef range(i8 0, 3) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %.sroa.6.sroa.4 = alloca [28 x i8], align 4     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.4)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %.sroa.03.0.copyload = load i32, ptr %i.b, align 4 ; 3 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.65.sroa.0.0.copyload = load i64, ptr %.sroa.65.0..sroa_idx, align 4 ; 2 uses
  %.sroa.65.sroa.5.0..sroa.65.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.03.0.copyload, -1
  br i1 %.not.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtBN_7MacroIdNtNtBN_10item_scope19ImportOrExternCrateEE6filterNCNvMs_NtNtBN_7nameres15path_resolutionNtBL_5PerNs12filter_macro0EBN_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1233
  store i32 %.sroa.03.0.copyload, ptr %i.a, align 4, !noalias !1234
  %.sroa.65.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i64 %.sroa.65.sroa.0.0.copyload, ptr %.sroa.65.0..sroa_idx6, align 4, !noalias !1234
  %i.c = call noundef zeroext i1 @_RNvNtCsileJQcQObtj_7hir_def7nameres19sub_namespace_match(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.a, i8 noundef %4), !noalias !1233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1233
  br i1 %i.c, label %bb.c, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtBN_7MacroIdNtNtBN_10item_scope19ImportOrExternCrateEE6filterNCNvMs_NtNtBN_7nameres15path_resolutionNtBL_5PerNs12filter_macro0EBN_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.sroa.4, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.65.sroa.5.0..sroa.65.0..sroa_idx.sroa_idx, i64 28, i1 false)
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtBN_7MacroIdNtNtBN_10item_scope19ImportOrExternCrateEE6filterNCNvMs_NtNtBN_7nameres15path_resolutionNtBL_5PerNs12filter_macro0EBN_.exit

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtBN_7MacroIdNtNtBN_10item_scope19ImportOrExternCrateEE6filterNCNvMs_NtNtBN_7nameres15path_resolutionNtBL_5PerNs12filter_macro0EBN_.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.6.sroa.0.0 = phi i64 [ undef, %bb.a ], [ %.sroa.65.sroa.0.0.copyload, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i32 [ -1, %bb.a ], [ %.sroa.03.0.copyload, %bb.c ], [ -1, %bb.b ]
  store i32 %.sroa.0.0, ptr %i.b, align 4
  store i64 %.sroa.6.sroa.0.0, ptr %.sroa.65.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.65.sroa.5.0..sroa.65.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.sroa.4, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %1, i64 128, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10start_recvCsileJQcQObtj_7hir_def(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32, %bb.a
  %.sroa.0.038 = phi i32 [ 0, %bb.a ], [ %.sroa.0.1, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32 ] ; 12 uses
  %.sroa.02.0 = phi i64 [ %i.a, %bb.a ], [ %i.al, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32 ] ; 7 uses
  %umin = tail call i32 @llvm.umin.i32(i32 %.sroa.0.038, i32 6) ; 2 uses
  %i.h = mul nuw nsw i32 %umin, %umin             ; 2 uses
  %i.i = load i64, ptr %i.b, align 16, !noundef !10
  %i.j = add i64 %i.i, -1
  %i.k = and i64 %i.j, %.sroa.02.0                ; 3 uses
  %i.l = load i64, ptr %i.c, align 8, !noundef !10
  %i.m = sub i64 0, %i.l
  %i.n = and i64 %.sroa.02.0, %i.m
  %i.o = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10
  %i.p = load i64, ptr %i.e, align 32, !noundef !10
  %i.q = icmp ult i64 %i.k, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.k ; 2 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 3 uses
  %i.t = add i64 %.sroa.02.0, 1
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp eq i64 %i.s, %.sroa.02.0
  br i1 %i.v, label %bb.g, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.w = add nuw i64 %i.k, 1
  %i.x = load i64, ptr %i.g, align 128, !noundef !10
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.z = icmp ult i32 %.sroa.0.038, 7
  br i1 %i.z, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i: ; preds = %bb.e
  %.not.i = icmp eq i32 %.sroa.0.038, 0
  br i1 %.not.i, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i
  %i.aa = mul nuw i32 %.sroa.0.038, %.sroa.0.038  ; 2 uses
  %xtraiter = and i32 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i32 %.sroa.0.038, 3
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.aa, 56
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
end_hunk_0
