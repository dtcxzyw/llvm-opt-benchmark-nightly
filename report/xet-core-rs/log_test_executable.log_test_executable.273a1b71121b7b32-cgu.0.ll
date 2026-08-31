Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/log_test_executable.log_test_executable.273a1b71121b7b32-cgu.0?download=true
inline.NumInlined: 119
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3mNRJm2NnC8_19log_test_executable:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !48
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i)
  %i.g = load i64, ptr %i.a, align 8, !range !51, !noalias !48, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !52, !noalias !48, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !48, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !48
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !48
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs3mNRJm2NnC8_19log_test_executable(ptr noundef nonnull %i.a) #23
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCs3mNRJm2NnC8_19log_test_executable(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs3mNRJm2NnC8_19log_test_executable(ptr noundef nonnull readonly %i.a) #23, !noalias !53
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCs3mNRJm2NnC8_19log_test_executable4main() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [128 x i8], align 8               ; 10 uses
  %i.l = alloca [976 x i8], align 8               ; 6 uses
  %i.m = alloca [64 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 16 uses
  %i.q = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvNtCsG258MDvU3F_3std3env4args(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !61
  invoke void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.c unwind label %bb.b, !noalias !56

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.d, align 8, !range !30, !noalias !61, !noundef !5 ; 4 uses
  %.not.i = icmp eq i64 %i.s, -1
  br i1 %.not.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.q, align 8, !alias.scope !56, !noalias !59
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !alias.scope !56, !noalias !59
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.u, align 8, !alias.scope !56, !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !61
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !77, !noalias !56, !nonnull !5, !noundef !5 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !77, !noalias !56, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = ptrtoint ptr %.val1.i.i.i.i.i.i to i64
  %i.y = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = udiv exact i64 %i.z, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.ab = icmp eq ptr %.val1.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.ad, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !78, !noalias !81 ; 2 uses
  %i.ae = icmp eq i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !78, !noalias !81, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !82
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %i.ag = icmp eq i64 %i.ad, %i.aa
  br i1 %i.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !77, !noalias !56, !noundef !5 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit.thread, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i
  %i.ak = load ptr, ptr %i.p, align 8, !alias.scope !77, !noalias !56, !nonnull !5, !noundef !5
  %i.al = mul nuw i64 %i.ai, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !81
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit.thread

bb.g:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = icmp eq i64 %i.s, 0
  br i1 %i.an, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !56
  br label %bb.x

bb.i:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !61 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !61
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val.i = load ptr, ptr %i.ao, align 8, !alias.scope !59, !noalias !56, !nonnull !5, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val4.i = load ptr, ptr %i.ap, align 8, !alias.scope !59, !noalias !56, !nonnull !5, !noundef !5
  %i.aq = ptrtoint ptr %.val4.i to i64
  %i.ar = ptrtoint ptr %.val.i to i64
  %i.as = sub nuw i64 %i.aq, %i.ar                ; 2 uses
  %i.at = udiv exact i64 %i.as, 24
  %i.au = call i64 @llvm.umax.i64(i64 %i.at, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.au, 1               ; 2 uses
  %i.av = mul i64 %..i.i, 24                      ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.as, 9223372036854775776
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.j, !prof !83

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.j
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !84
  %i.ax = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.av, i64 noundef range(i64 1, 9) 8) #21, !noalias !84 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.az = ptrtoint ptr %i.ax to i64
  br label %bb.m

bb.l:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.i ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.av) #22
          to label %.noexc.i unwind label %bb.g, !noalias !56

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %.sroa.10.0.i.i = phi i64 [ %i.az, %bb.k ], [ 8, %bb.j ]
  %.sroa.4.0.i.i = phi i64 [ %..i.i, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.ba = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 5 uses
  %i.bb = icmp samesign ult i64 %i.au, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.bb)
  store i64 %i.s, ptr %i.ba, align 8, !noalias !56
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !56
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !56
  store i64 %.sroa.4.0.i.i, ptr %i.e, align 8, !noalias !61
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !61
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !56
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i.i, %bb.m
  %i.be = phi ptr [ %i.ca, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i.i ], [ %i.ba, %bb.m ]
  %i.bf = phi i64 [ %i.cc, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i.i ], [ 1, %bb.m ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97
  invoke void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.p unwind label %bb.o, !noalias !98

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i: ; preds = %bb.v, %bb.u, %bb.o
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.cd, %bb.u ], [ %i.cd, %bb.v ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #24, !noalias !98
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #24, !noalias !56
  br label %common.resume

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bh = load i64, ptr %i.b, align 8, !range !30, !noalias !97, !noundef !5 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.bh, -1
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !97 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !97
  %i.bi = icmp samesign ult i64 %i.bf, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  %i.bj = load i64, ptr %i.e, align 8, !range !9, !alias.scope !99, !noalias !100, !noundef !5
  %i.bk = icmp eq i64 %i.bf, %i.bj
  br i1 %i.bk, label %bb.w, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !116, !noalias !117, !nonnull !5, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !116, !noalias !117, !nonnull !5, !noundef !5 ; 2 uses
  %i.bl = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %.val.i.i.i.i.i.i.i.i to i64
  %i.bn = sub nuw i64 %i.bl, %i.bm
  %i.bo = udiv exact i64 %i.bn, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.bp = icmp eq ptr %.val1.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i
  br i1 %i.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.br, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.r ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.br = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !118, !noalias !121 ; 2 uses
  %i.bs = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !118, !noalias !121, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !122
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bu = icmp eq i64 %i.br, %i.bo
  br i1 %i.bu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i.i, %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !116, !noalias !117, !noundef !5 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i
  %i.by = load ptr, ptr %i.c, align 8, !alias.scope !116, !noalias !117, !nonnull !5, !noundef !5
  %i.bz = mul nuw i64 %i.bw, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !121
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i.i: ; preds = %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i_crit_edge.i, %bb.q
  %i.ca = phi ptr [ %.pre.i, %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i_crit_edge.i ], [ %i.be, %bb.q ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.bf ; 3 uses
  store i64 %i.bh, ptr %i.cb, align 8, !noalias !98
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !98
  %.sroa.515.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.515.0..sroa_idx.i.i.i, align 8, !noalias !98
  %i.cc = add nuw nsw i64 %i.bf, 1                ; 2 uses
  store i64 %i.cc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !99, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  br label %bb.n

bb.u:                                             ; preds = %bb.w
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = icmp eq i64 %i.bh, 0
  br i1 %i.ce, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !98
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i

bb.w:                                             ; preds = %bb.q
  %.val3.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !123, !noalias !117, !nonnull !5, !noundef !5
  %i.cf = ptrtoint ptr %.val3.i.i.i to i64
  %.val.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !123, !noalias !117, !nonnull !5, !noundef !5
  %i.cg = ptrtoint ptr %.val.i.i.i to i64
  %i.ch = sub nuw i64 %i.cf, %i.cg
  %i.ci = udiv exact i64 %i.ch, 24
  %i.cj = add nuw nsw i64 %i.ci, 1
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.bf, i64 noundef range(i64 1, 0) %i.cj)
          to label %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i_crit_edge.i unwind label %bb.u

._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i_crit_edge.i: ; preds = %bb.w
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !99, !noalias !100
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i.i

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i, %bb.z, %.thread
  %common.resume.op = phi { ptr, i32 } [ %.pn45, %.thread ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i ], [ %.pn.ph.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i ], [ %.pn.ph.i, %bb.z ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %bb.h, %bb.g, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.r, %bb.b ], [ %i.am, %bb.g ], [ %i.am, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  call void @llvm.experimental.noalias.scope.decl(metadata !127), !noalias !56
  call void @llvm.experimental.noalias.scope.decl(metadata !130), !noalias !56
  call void @llvm.experimental.noalias.scope.decl(metadata !133), !noalias !56
  call void @llvm.experimental.noalias.scope.decl(metadata !136), !noalias !56
  %i.ck = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !139, !noalias !56, !nonnull !5, !noundef !5 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val1.i.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !139, !noalias !56, !nonnull !5, !noundef !5 ; 2 uses
  %i.cm = ptrtoint ptr %.val1.i.i.i.i.i to i64
  %i.cn = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.co = sub nuw i64 %i.cm, %i.cn
  %i.cp = udiv exact i64 %i.co, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !140), !noalias !56
  %i.cq = icmp eq ptr %.val1.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.cq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ %i.cs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i ], [ 0, %bb.x ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i ; 2 uses
  %i.cs = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.cr, align 8, !alias.scope !140, !noalias !143 ; 2 uses
  %i.ct = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.ct, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cu = getelementptr i8, ptr %i.cr, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !140, !noalias !143, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !144
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i: ; preds = %bb.y, %.lr.ph.i.i.i.i.i.i
  %i.cv = icmp eq i64 %i.cs, %i.cp
  br i1 %i.cv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i, %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !139, !noalias !56, !noundef !5 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %common.resume, label %bb.z

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i
  %i.cz = load ptr, ptr %i.p, align 8, !alias.scope !139, !noalias !56, !nonnull !5, !noundef !5
  %i.da = mul nuw i64 %i.cx, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cz, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !143
  br label %common.resume

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit.thread: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bi

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !61
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.db = icmp ult i64 %.pre, 384307168202282326
  call void @llvm.assume(i1 %i.db)
  switch i64 %.pre, label %bb.bh [
    i64 3, label %bb.ac
    i64 0, label %bb.bi
  ]

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %bb.bg, %bb.am, %bb.aa
  %.pn45 = phi { ptr, i32 } [ %i.dc, %bb.aa ], [ %.pn, %bb.am ], [ %i.fs, %bb.bg ], [ %lpad.loopexit, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #24
  br label %common.resume

bb.aa:                                            ; preds = %.loopexit, %bb.bj, %bb.bi, %bb.bh, %bb.ak
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ab:                                            ; preds = %bb.bj, %bb.bi, %bb.ao, %bb.ak
  unreachable

bb.ac:                                            ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !5, !noundef !5 ; 11 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.di = load i64, ptr %i.dh, align 8, !noundef !5 ; 2 uses
  switch i64 %i.di, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dj = load i8, ptr %i.dg, align 1, !alias.scope !145, !noalias !148, !noundef !5 ; 2 uses
  switch i8 %i.dj, label %bb.ae [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.ac
  %.pr.i = load i8, ptr %i.dg, align 1, !alias.scope !145, !noalias !148
  br label %bb.ae

bb.ae:                                            ; preds = %thread-pre-split.i, %bb.ad
  %i.dk = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.dj, %bb.ad ]
  %cond.i = icmp eq i8 %i.dk, 43                  ; 2 uses
  %i.dl = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.di, %i.dl        ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.dm = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.dm, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.ae
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %.loopexit88, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.ah
  %.not52.i = icmp eq i64 %i.do, 0
  br i1 %.not52.i, label %.loopexit88, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.ae, %.preheader56.i
  %.sroa.0.1.i144 = phi ptr [ %i.dn, %.preheader56.i ], [ %.sroa.0.0.i, %bb.ae ] ; 2 uses
  %.sroa.15.1.i143 = phi i64 [ %i.do, %.preheader56.i ], [ %.sroa.15.0.i, %bb.ae ]
  %.sroa.042.0.i142 = phi i64 [ %i.dz, %.preheader56.i ], [ 0, %bb.ae ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i144, i64 1
  %i.do = add nsw i64 %.sroa.15.1.i143, -1        ; 2 uses
  %i.dp = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i142, i64 10) ; 2 uses
  %i.dq = extractvalue { i64, i1 } %i.dp, 0       ; 2 uses
  %i.dr = extractvalue { i64, i1 } %i.dp, 1
  %i.ds = load i8, ptr %.sroa.0.1.i144, align 1, !alias.scope !145, !noalias !148, !noundef !5 ; 2 uses
  br i1 %i.dr, label %bb.ag, label %bb.af, !prof !150

bb.af:                                            ; preds = %.preheader56.i.preheader
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nsw i32 %i.dt, -48                  ; 2 uses
  %i.dv = icmp ult i32 %i.du, 10
  br i1 %i.dv, label %bb.ah, label %.loopexit

bb.ag:                                            ; preds = %.preheader56.i.preheader
  %i.dw = add i8 %i.ds, -48
  %i.dx = icmp ult i8 %i.dw, 10
  %spec.select = select i1 %i.dx, i8 2, i8 1
  br label %.loopexit

bb.ah:                                            ; preds = %bb.af
  %i.dy = zext nneg i32 %i.du to i64
  %i.dz = add i64 %i.dq, %i.dy                    ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.dq
  br i1 %i.ea, label %.loopexit, label %.preheader56.i, !prof !150

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.ai
  %.sroa.0.269.i = phi ptr [ %i.eh, %bb.ai ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.eg, %bb.ai ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ej, %bb.ai ], [ 0, %.preheader.i ]
  %i.eb = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !145, !noalias !148, !noundef !5
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nsw i32 %i.ec, -48                  ; 2 uses
  %i.ee = icmp ult i32 %i.ed, 10
  br i1 %i.ee, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %.lr.ph.i
  %i.ef = mul i64 %.sroa.042.267.i, 10
  %i.eg = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.ei = zext nneg i32 %i.ed to i64
  %i.ej = add i64 %i.ef, %i.ei                    ; 2 uses
  %.not53.i = icmp eq i64 %i.eg, 0
  br i1 %.not53.i, label %.loopexit88, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.af, %bb.ah, %.lr.ph.i, %bb.ag, %bb.ac, %bb.ad, %bb.ad
  %.sroa.4.0.ph = phi i8 [ 1, %bb.ad ], [ %spec.select, %bb.ag ], [ 1, %bb.ad ], [ 0, %bb.ac ], [ 1, %.lr.ph.i ], [ 1, %bb.af ], [ 2, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !151
  store i8 %.sroa.4.0.ph, ptr %i.a, align 1, !noalias !151
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %.loopexit
  unreachable

.loopexit88:                                      ; preds = %.preheader56.i, %bb.ai, %.preheader.i
  %.sroa.1158.0 = phi i64 [ %i.ej, %bb.ai ], [ 0, %.preheader.i ], [ %i.dz, %.preheader56.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !5, !noundef !5
  %i.em = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.en = load i64, ptr %i.em, align 8, !noundef !5 ; 7 uses
  %.not.i50 = icmp slt i64 %i.en, 0
  br i1 %.not.i50, label %bb.ak, label %bb.aj, !prof !83

bb.aj:                                            ; preds = %.loopexit88
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3mNRJm2NnC8_19log_test_executable.exit.thread75, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.aj
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !154
  %i.ep = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.en, i64 noundef range(i64 1, 9) 1) #21, !noalias !154 ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit88, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i
  %.sroa.461.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i ], [ 0, %.loopexit88 ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.461.0.ph, i64 %i.en) #22
          to label %bb.ab unwind label %bb.aa

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3mNRJm2NnC8_19log_test_executable.exit.thread75: ; preds = %bb.aj, %bb.al
  %0 = phi ptr [ %i.ep, %bb.al ], [ inttoptr (i64 1 to ptr), %bb.aj ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.en, ptr %i.er, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %0, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %i.en, ptr %.sroa.525.0..sroa_idx, align 8
  store i64 0, ptr %i.n, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !157
  %i.es = call noundef dereferenceable_or_null(4) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, 9) 1) #21, !noalias !157 ; 5 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.ao, label %bb.ap

bb.al:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ep, ptr nonnull align 1 %i.el, i64 %i.en, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3mNRJm2NnC8_19log_test_executable.exit.thread75

bb.am:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit, %bb.an
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.an ], [ %i.ev, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime7logging6config11LoggingModeECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #24
  br label %.thread

bb.an:                                            ; preds = %bb.ao
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3mNRJm2NnC8_19log_test_executable.exit.thread75
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #22
          to label %bb.ab unwind label %bb.an

bb.ap:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3mNRJm2NnC8_19log_test_executable.exit.thread75
  store i32 1953719668, ptr %i.es, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_configNtB2_9XetConfig3new(ptr noalias nofree noundef nonnull sret([976 x i8]) align 8 captures(none) dereferenceable(976) %i.l)
          to label %bb.aq unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit: ; preds = %bb.ap
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.es, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %bb.am

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime7logging6configNtB2_12LogDirConfig11from_config(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(976) %i.l)
          to label %bb.ar unwind label %bb.bg

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_config9XetConfigECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef align 8 dereferenceable(976) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 4, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.es, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 4, ptr %.sroa.6.0..sroa_idx105, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store i8 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.k, i64 121
  store i8 1, ptr %.sroa.9.0..sroa_idx106, align 1
  invoke void @_RNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init4init(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.k)
          to label %bb.as unwind label %.thread.loopexit.split-lp

.thread.loopexit:                                 ; preds = %bb.az, %bb.ba, %bb.be, %bb.bd
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %._crit_edge, %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %exitcond.not145 = icmp eq i64 %.sroa.1158.0, 0
  br i1 %exitcond.not145, label %._crit_edge, label %.lr.ph

bb.at:                                            ; preds = %bb.bd
  %exitcond.not = icmp eq i64 %i.fi, %.sroa.1158.0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.at, %bb.as
  invoke void @_RNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init30wait_for_log_directory_cleanup()
          to label %.lr.ph.i.i.i unwind label %.thread.loopexit.split-lp

.lr.ph.i.i.i:                                     ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %.val8.i.i.i = load i64, ptr %i.de, align 8, !alias.scope !163, !noalias !160 ; 2 uses
  %i.ey = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.ey, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i
  %i.ez = getelementptr i8, ptr %i.de, i64 8
  %.val9.i.i.i = load ptr, ptr %i.ez, align 8, !alias.scope !163, !noalias !160, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !166
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57: ; preds = %bb.au, %.lr.ph.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %.val8.i.i.i.1 = load i64, ptr %i.fa, align 8, !alias.scope !163, !noalias !160 ; 2 uses
  %i.fb = icmp eq i64 %.val8.i.i.i.1, 0
  br i1 %i.fb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.1, label %bb.av

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57
  %i.fc = getelementptr i8, ptr %i.de, i64 32
  %.val9.i.i.i.1 = load ptr, ptr %i.fc, align 8, !alias.scope !163, !noalias !160, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.1, i64 noundef %.val8.i.i.i.1, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !166
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.1: ; preds = %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57
  %i.fd = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %.val8.i.i.i.2 = load i64, ptr %i.fd, align 8, !alias.scope !163, !noalias !160 ; 2 uses
  %i.fe = icmp eq i64 %.val8.i.i.i.2, 0
  br i1 %i.fe, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.2, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.1
  %i.ff = getelementptr i8, ptr %i.de, i64 56
  %.val9.i.i.i.2 = load ptr, ptr %i.ff, align 8, !alias.scope !163, !noalias !160, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.2, i64 noundef %.val8.i.i.i.2, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !166
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.2: ; preds = %bb.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.1
  %.val2.i = load i64, ptr %i.q, align 8, !range !9, !alias.scope !160, !noundef !5 ; 2 uses
  %i.fg = icmp eq i64 %.val2.i, 0
  br i1 %i.fg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.2
  %i.fh = mul nuw i64 %.val2.i, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.de, i64 noundef %i.fh, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !160
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.2, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

.lr.ph:                                           ; preds = %bb.as, %bb.at
  %.sroa.029.0146 = phi i64 [ %i.fi, %bb.at ], [ 0, %bb.as ]
  %i.fi = add i64 %.sroa.029.0146, 1              ; 3 uses
  %i.fj = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.fk = icmp ult i64 %i.fj, 3
  br i1 %i.fk, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %.lr.ph
  %i.fl = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs3mNRJm2NnC8_19log_test_executable4main10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.fl, label %bb.az [
    i8 0, label %bb.bd
    i8 1, label %bb.ba
    i8 2, label %bb.ba
  ], !prof !167

bb.az:                                            ; preds = %bb.ay
  %i.fm = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvCs3mNRJm2NnC8_19log_test_executable4main10___CALLSITE)
          to label %bb.bb unwind label %.thread.loopexit ; 2 uses

bb.ba:                                            ; preds = %bb.ay, %bb.ay, %bb.bb
  %.sroa.07.0 = phi i8 [ %i.fm, %bb.bb ], [ %i.fl, %bb.ay ], [ %i.fl, %bb.ay ]
  %i.fn = load ptr, ptr @_RNvNvCs3mNRJm2NnC8_19log_test_executable4main10___CALLSITE, align 8, !nonnull !5, !align !168, !noundef !5
  %i.fo = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fn, i8 noundef %.sroa.07.0)
          to label %bb.bc unwind label %.thread.loopexit

bb.bb:                                            ; preds = %bb.az
  %i.fp = icmp eq i8 %i.fm, 0
  br i1 %i.fp, label %bb.bd, label %bb.ba

bb.bc:                                            ; preds = %bb.ba
  br i1 %i.fo, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.ay, %.lr.ph, %bb.bf, %bb.bc
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread9functions5sleep(i64 noundef 0, i32 noundef 50000)
          to label %bb.at unwind label %.thread.loopexit

bb.be:                                            ; preds = %bb.bc
  %i.fq = load ptr, ptr @_RNvNvCs3mNRJm2NnC8_19log_test_executable4main10___CALLSITE, align 8, !nonnull !5, !align !168, !noundef !5 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.fi, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.435.0..sroa_idx, align 8
  store ptr @4, ptr %i.i, align 8
  store ptr %i.g, ptr %i.ew, align 8
  store ptr %i.i, ptr %i.j, align 8
  store ptr @5, ptr %i.ex, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  store ptr %i.j, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.09.sroa.5.0..sroa_idx, align 8
  store ptr %i.fr, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.bf unwind label %.thread.loopexit

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bd

bb.bg:                                            ; preds = %bb.aq
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.es, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime7logging6config11LoggingModeECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #24
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_config9XetConfigECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef align 8 dereferenceable(976) %i.l) #24
  br label %.thread

bb.bh:                                            ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.fu, ptr %i.o, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio7__eprint(ptr noundef nonnull @7, ptr noundef nonnull %i.o)
          to label %bb.bj unwind label %bb.aa

bb.bi:                                            ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit.thread, %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.ab unwind label %bb.aa

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvNtCsG258MDvU3F_3std7process4exit(i32 noundef 1) #22
          to label %bb.ab unwind label %bb.aa
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3mNRJm2NnC8_19log_test_executable(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = mul i64 %1, 24                           ; 6 uses
  %or.cond.not = icmp ugt i64 %1, 384307168202282325
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.c = mul nuw i64 %.0.val, 24                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = icmp uge i64 %i.a, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.c, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #21
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.a, 0
  br i1 %i.f, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.g = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, 9) 8) #21
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = icmp eq ptr %.pn8, null
  br i1 %i.h, label %bb.e, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.i, align 8
  br label %bb.f

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.k, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !169, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3mNRJm2NnC8_19log_test_executable, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3mNRJm2NnC8_19log_test_executable.37, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs94TQx44N27d_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !168, !noundef !5
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs94TQx44N27d_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs3mNRJm2NnC8_19log_test_executable(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @24, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsG258MDvU3F_3std3env4args(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_configNtB2_9XetConfig3new(ptr dead_on_unwind noalias nofree noundef writable sret([976 x i8]) align 8 captures(none) dereferenceable(976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime7logging6configNtB2_12LogDirConfig11from_config(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init4init(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init30wait_for_log_directory_cleanup() unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCs94TQx44N27d_12tracing_core5fieldNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std6thread9functions5sleep(i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std2io5stdio7__eprint(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: noreturn nonlazybind uwtable
declare void @_RNvNtCsG258MDvU3F_3std7process4exit(i32 noundef) unnamed_addr #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

end_hunk_0
