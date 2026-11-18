Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/quote-bad078e7cedec5ec.quote.e513c05fff2e679a-cgu.0?download=true
inline.NumInlined: 479
inline.NumDeleted: 206
begin_hunk_0_@_RINvXs7_NtCsluekWoTk8SK_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECsjFn5boE4uz6_5quote:bb.a
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.u, %bb.j ], [ %i.u, %bb.l ], [ %i.u, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load i32, ptr %1, align 8, !range !18, !alias.scope !448, !noundef !6
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsluekWoTk8SK_11proc_macro29TokenTreeECsjFn5boE4uz6_5quote(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.g:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i32, ptr %1, align 8 ; 2 uses
  %.not5 = icmp eq i32 %.sroa.0.0.copyload, -1
  br i1 %.not5, label %_RINvXsa_NtCsluekWoTk8SK_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB17_7sources4once4OnceB1T_EECsjFn5boE4uz6_5quote.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.sroa.0.0.copyload, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %i.l, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtCsluekWoTk8SK_11proc_macro23imp19into_compiler_token(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.o = load i64, ptr %i.m, align 8, !alias.scope !449, !noundef !6 ; 3 uses
  %i.p = load i64, ptr %0, align 8, !range !9, !alias.scope !449, !noundef !6
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCsluekWoTk8SK_11proc_macro29TokenTreeEECsjFn5boE4uz6_5quote.exit1.loopexit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCsluekWoTk8SK_11proc_macro29TokenTreeEECsjFn5boE4uz6_5quote.exit1.loopexit: ; preds = %bb.h, %bb.i
  %i.r = load ptr, ptr %i.n, align 8, !alias.scope !449, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %i.r, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(20) %i.b, i64 20, i1 false), !noalias !449
  %i.t = add i64 %i.o, 1
  store i64 %i.t, ptr %i.m, align 8, !alias.scope !449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvXsa_NtCsluekWoTk8SK_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB17_7sources4once4OnceB1T_EECsjFn5boE4uz6_5quote.exit

_RINvXsa_NtCsluekWoTk8SK_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB17_7sources4once4OnceB1T_EECsjFn5boE4uz6_5quote.exit: ; preds = %bb.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCsluekWoTk8SK_11proc_macro29TokenTreeEECsjFn5boE4uz6_5quote.exit1.loopexit, %.lr.ph.i.i.i, %bb.c
  ret void

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsiwvLk4GMN8X_10proc_macro9TokenTreeE8grow_oneCsjFn5boE4uz6_5quote(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCsluekWoTk8SK_11proc_macro29TokenTreeEECsjFn5boE4uz6_5quote.exit1.loopexit unwind label %bb.j, !noalias !450

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load i8, ptr %i.v, align 4, !range !8, !alias.scope !451, !noundef !6
  %i.x = icmp samesign ult i8 %i.w, 4
  br i1 %i.x, label %bb.k, label %common.resume

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !alias.scope !452, !noundef !6
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXs0_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.y)
          to label %common.resume unwind label %bb.m, !noalias !449

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20, !noalias !449
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsiwvLk4GMN8X_10proc_macro9TokenTreeE8grow_oneCsjFn5boE4uz6_5quote(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !455 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !9, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !456
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !456
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsjFn5boE4uz6_5quote(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 20), !noalias !456
  %i.f = load i64, ptr %i.a, align 8, !range !15, !noalias !456, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !16, !noalias !456, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !456
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !456, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !456
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !456
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !456
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsjFn5boE4uz6_5quote(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 33) %3) unnamed_addr #4 !guid !457 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !458
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !458

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #18
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.k = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #18
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMsh_NtCsbSS6DM8SDEO_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeEE8make_mutCsjFn5boE4uz6_5quote(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 personality ptr @rust_eh_personality !guid !474 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 10 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !6
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.q, label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 24
  %.val2 = load ptr, ptr %i.j, align 8            ; 2 uses
  %i.k = getelementptr i8, ptr %i.d, i64 32
  %.val3 = load i64, ptr %i.k, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.l = tail call { i64, i64 } @_RNvNtCsbSS6DM8SDEO_5alloc2rc32rc_inner_layout_for_value_layout(i64 noundef 8, i64 noundef 24), !noalias !475 ; 2 uses
  %i.m = tail call { i64, i64 } @_RNvNtCsbSS6DM8SDEO_5alloc2rc32rc_inner_layout_for_value_layout(i64 noundef 8, i64 noundef 24), !noalias !475 ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0        ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.m, 1        ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = inttoptr i64 %i.n to ptr
  br label %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsjFn5boE4uz6_5quote.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !475
  %i.r = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.n) #18, !noalias !475
  br label %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsjFn5boE4uz6_5quote.exit.i.i.i.i

_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsjFn5boE4uz6_5quote.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.r, %bb.e ] ; 8 uses
  %i.s = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i, null
  br i1 %i.s, label %bb.f, label %_RNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE3newCsjFn5boE4uz6_5quote.exit.i

bb.f:                                             ; preds = %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsjFn5boE4uz6_5quote.exit.i.i.i.i
  %i.t = extractvalue { i64, i64 } %i.l, 1
  %i.u = extractvalue { i64, i64 } %i.l, 0
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef %i.u, i64 noundef %i.t) #23, !noalias !475
  unreachable

_RNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE3newCsjFn5boE4uz6_5quote.exit.i: ; preds = %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsjFn5boE4uz6_5quote.exit.i.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !noalias !475
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.v, align 8, !noalias !475
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.w, align 8, !alias.scope !475
  store i64 8, ptr %i.c, align 8, !alias.scope !475
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 24, ptr %i.x, align 8, !alias.scope !475
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 1, ptr %i.y, align 8, !alias.scope !475
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !476
  %i.z = shl nuw nsw i64 %.val3, 5                ; 2 uses
  %i.aa = icmp eq i64 %.val3, 0
  br i1 %i.aa, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjFn5boE4uz6_5quote.exit.thread.i.i.i.i.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjFn5boE4uz6_5quote.exit.thread.i.i.i.i.i: ; preds = %_RNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE3newCsjFn5boE4uz6_5quote.exit.i
  store i64 0, ptr %i.b, align 8, !noalias !476
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ab, align 8, !noalias !476
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RNvMsd_NtCsbSS6DM8SDEO_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeEE17clone_from_ref_inCsjFn5boE4uz6_5quote.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE3newCsjFn5boE4uz6_5quote.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !477
  %i.ad = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.z, i64 noundef range(i64 4, 9) 8) #18, !noalias !477 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.g, label %.lr.ph.preheader.i.i.i.i.i

bb.g:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.z) #23
          to label %.noexc.i unwind label %.body.thread5.i

.body.thread5.i:                                  ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.noexc.i:                                         ; preds = %bb.g
  unreachable

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  store i64 %.val3, ptr %i.b, align 8, !noalias !476
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ad, ptr %i.ag, align 8, !noalias !476
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i
  %.sroa.012.023.i.i.i.i.i = phi ptr [ %i.aj, %bb.h ], [ %.val2, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.7.022.i.i.i.i.i = phi i64 [ %i.ai, %bb.h ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.sroa.10.021.i.i.i.i.i = phi i64 [ %1, %bb.h ], [ %.val3, %.lr.ph.preheader.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !476
  invoke fastcc void @_RNvXsO_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.012.023.i.i.i.i.i)
          to label %bb.h unwind label %bb.j, !noalias !478

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = add nuw nsw i64 %.sroa.7.022.i.i.i.i.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i.i.i.i, i64 32
  %1 = add nsw i64 %.sroa.10.021.i.i.i.i.i, -1    ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %.sroa.7.022.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !476
  %i.al = icmp eq i64 %1, 0
  br i1 %i.al, label %_RNvMsd_NtCsbSS6DM8SDEO_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeEE17clone_from_ref_inCsjFn5boE4uz6_5quote.exit, label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20, !noalias !478
  unreachable

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i.i.i.i, ptr %i.ah, align 8, !noalias !476
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeEECsjFn5boE4uz6_5quote(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #21
          to label %.body.thread.i unwind label %bb.i, !noalias !478

common.resume:                                    ; preds = %.body.thread.i, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.r ], [ %eh.lpad-body4.i, %.body.thread.i ]
  resume { ptr, i32 } %common.resume.op

.body.thread.i:                                   ; preds = %bb.j, %.body.thread5.i
  %eh.lpad-body4.i = phi { ptr, i32 } [ %i.af, %.body.thread5.i ], [ %lpad.loopexit.i.i.i.i.i, %bb.j ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc2rc14UniqueRcUninitINtNtBG_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtBG_5alloc6GlobalEECsjFn5boE4uz6_5quote(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #21
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %.body.thread.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMsd_NtCsbSS6DM8SDEO_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeEE17clone_from_ref_inCsjFn5boE4uz6_5quote.exit: ; preds = %bb.h, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjFn5boE4uz6_5quote.exit.thread.i.i.i.i.i
  %2 = phi ptr [ %i.ac, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjFn5boE4uz6_5quote.exit.thread.i.i.i.i.i ], [ %i.ah, %bb.h ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 16
  store i64 %.val3, ptr %2, align 8, !noalias !476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ap = load i64, ptr %i.d, align 8, !noalias !479, !noundef !6
  %i.aq = add i64 %i.ap, -1                       ; 2 uses
  store i64 %i.aq, ptr %i.d, align 8, !noalias !479
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %_RNvMsd_NtCsbSS6DM8SDEO_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeEE17clone_from_ref_inCsjFn5boE4uz6_5quote.exit
  invoke void @_RNvMs6_NtCsbSS6DM8SDEO_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #22
          to label %.sink.split unwind label %bb.r

bb.m:                                             ; preds = %bb.b
  %i.as = tail call { i64, i64 } @_RNvNtCsbSS6DM8SDEO_5alloc2rc32rc_inner_layout_for_value_layout(i64 noundef 8, i64 noundef 24), !noalias !480 ; 2 uses
  %i.at = tail call { i64, i64 } @_RNvNtCsbSS6DM8SDEO_5alloc2rc32rc_inner_layout_for_value_layout(i64 noundef 8, i64 noundef 24), !noalias !480 ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.at, 0      ; 2 uses
  %i.av = extractvalue { i64, i64 } %i.at, 1      ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = inttoptr i64 %i.au to ptr
  br label %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsjFn5boE4uz6_5quote.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !480
  %i.ay = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) %i.au) #18, !noalias !480
  br label %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsjFn5boE4uz6_5quote.exit.i.i.i

_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsjFn5boE4uz6_5quote.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ax, %bb.n ], [ %i.ay, %bb.o ] ; 5 uses
  %i.az = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  br i1 %i.az, label %bb.p, label %_RNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE7into_rcCsjFn5boE4uz6_5quote.exit

bb.p:                                             ; preds = %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsjFn5boE4uz6_5quote.exit.i.i.i
  %i.ba = extractvalue { i64, i64 } %i.as, 1
  %i.bb = extractvalue { i64, i64 } %i.as, 0
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef %i.bb, i64 noundef %i.ba) #23, !noalias !480
  unreachable

_RNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE7into_rcCsjFn5boE4uz6_5quote.exit: ; preds = %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CsjFn5boE4uz6_5quote.exit.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !480
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.bc, align 8, !noalias !480
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  %i.bf = load <2 x i64>, ptr %i.d, align 8
  %i.bg = add <2 x i64> %i.bf, splat (i64 -1)
  store <2 x i64> %i.bg, ptr %i.d, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %_RNvMsd_NtCsbSS6DM8SDEO_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeEE17clone_from_ref_inCsjFn5boE4uz6_5quote.exit, %_RNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE7into_rcCsjFn5boE4uz6_5quote.exit
  %.sroa.0.0.i.i.i.i.i.i.sink = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE7into_rcCsjFn5boE4uz6_5quote.exit ], [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvMsd_NtCsbSS6DM8SDEO_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeEE17clone_from_ref_inCsjFn5boE4uz6_5quote.exit ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.l ] ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i.i.i.sink, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.b
  %i.bh = phi ptr [ %i.d, %bb.b ], [ %.sroa.0.0.i.i.i.i.i.i.sink, %.sink.split ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  ret ptr %i.bi

bb.r:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %0, align 8
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvNtCsjFn5boE4uz6_5quote7spanned10join_spans(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !494 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 13 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 12 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXs0_NtCsluekWoTk8SK_11proc_macro212token_streamNtB7_11TokenStreamNtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXNtCsluekWoTk8SK_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %bb.b unwind label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.e, align 8, !range !18, !noundef !6
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.i = load i32, ptr %i.d, align 8, !range !13, !alias.scope !495, !noundef !6
  switch i32 %i.i, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.r, %bb.l, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i32, ptr %i.j, align 8, !range !11, !alias.scope !495, !noundef !6
  %i.l = trunc nuw i32 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.n = load i32, ptr %i.m, align 4, !range !19, !alias.scope !495
  %.sroa.03.0.i.i = select i1 %i.l, i32 0, i32 %i.n
  br label %_RNvMsk_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTree4span.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.p = load i8, ptr %i.o, align 8, !range !14, !alias.scope !495, !noundef !6
  %.not4.i.i = icmp eq i8 %i.p, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.r = load i32, ptr %i.q, align 4, !range !19, !alias.scope !495
  %.sroa.02.0.i.i = select i1 %.not4.i.i, i32 %i.r, i32 0
  br label %_RNvMsk_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTree4span.exit.i

bb.f:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i32, ptr %i.s, align 8, !alias.scope !495, !noundef !6
  br label %_RNvMsk_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTree4span.exit.i

bb.g:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !10, !alias.scope !495, !noundef !6
  %.not.i.i = icmp eq i64 %i.v, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.x = load i32, ptr %i.w, align 4, !range !19, !alias.scope !495
  %.sroa.01.0.i.i = select i1 %.not.i.i, i32 %i.x, i32 0
  br label %_RNvMsk_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTree4span.exit.i

_RNvMsk_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTree4span.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i32 [ %.sroa.03.0.i.i, %bb.d ], [ %.sroa.02.0.i.i, %bb.e ], [ %i.t, %bb.f ], [ %.sroa.01.0.i.i, %bb.g ] ; 3 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsluekWoTk8SK_11proc_macro29TokenTreeECsjFn5boE4uz6_5quote(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RNCNvNtCsjFn5boE4uz6_5quote7spanned10join_spans0B5_.exit unwind label %bb.z

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.y = invoke noundef i32 @_RNvMsi_CsluekWoTk8SK_11proc_macro2NtB5_4Span9call_site()
          to label %bb.i unwind label %bb.z

bb.i:                                             ; preds = %bb.h
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro212token_stream8IntoIterECsjFn5boE4uz6_5quote(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.y, %bb.i
  %.sroa.0.0 = phi i32 [ %.sroa.0.1, %bb.y ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i32 %.sroa.0.0

_RNCNvNtCsjFn5boE4uz6_5quote7spanned10join_spans0B5_.exit: ; preds = %_RNvMsk_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTree4span.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.sroa.0.0.i.i, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !496
  invoke void @_RNvXNtCsluekWoTk8SK_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.k unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %_RNCNvNtCsjFn5boE4uz6_5quote7spanned10join_spans0B5_.exit
  %i.ad = load i32, ptr %i.b, align 8, !range !18, !noalias !496, !noundef !6
  %.not.peel.i.not = icmp eq i32 %i.ad, -1
  br i1 %.not.peel.i.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !496
  %i.ae = load i32, ptr %i.a, align 8, !range !13, !alias.scope !498, !noalias !497, !noundef !6
  switch i32 %i.ae, label %default.unreachable [
    i32 0, label %bb.p
    i32 1, label %bb.o
    i32 2, label %bb.n
    i32 3, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.af = load i64, ptr %i.z, align 8, !range !10, !alias.scope !498, !noalias !497, !noundef !6
  %.not.i.i.i.peel.i = icmp eq i64 %i.af, -1
  %i.ag = load i32, ptr %i.aa, align 4, !range !19, !alias.scope !498, !noalias !497
  %.sroa.01.0.i.i.i.peel.i = select i1 %.not.i.i.i.peel.i, i32 %i.ag, i32 0
  br label %_RNCNvNtCsjFn5boE4uz6_5quote7spanned10join_spans0B5_.exit.i.peel.i

bb.n:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.z, align 8, !alias.scope !498, !noalias !497, !noundef !6
  br label %_RNCNvNtCsjFn5boE4uz6_5quote7spanned10join_spans0B5_.exit.i.peel.i

bb.o:                                             ; preds = %bb.l
  %i.ai = load i8, ptr %i.ab, align 8, !range !14, !alias.scope !498, !noalias !497, !noundef !6
end_hunk_0
begin_hunk_1_@_RNvXsp_NtCsjFn5boE4uz6_5quote9to_tokensNtCsluekWoTk8SK_11proc_macro25GroupNtB5_8ToTokens9to_tokens:bb.a
bb.e:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvXsF_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit: ; preds = %bb.b, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i
  %.sroa.5.0 = phi ptr [ %i.s, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i ], [ %i.g, %bb.b ]
  %.sroa.8.sroa.5.sroa.0.0 = phi i32 [ %.sroa.8.sroa.5.0.extract.shift, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i ], [ 0, %bb.b ]
  %.sroa.8.sroa.0.0 = phi i8 [ %.sroa.8.sroa.0.0.extract.trunc, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i ], [ %i.f, %bb.b ]
  %.sroa.10.0 = phi i8 [ %i.n, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i ], [ undef, %bb.b ]
  %.sroa.4.0 = phi i32 [ %.val2.i.i.i, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i ], [ undef, %bb.b ]
  %storemerge.i = phi i32 [ 0, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i ], [ 1, %bb.b ]
  %.sroa.8.sroa.0.0.insert.ext = zext i8 %.sroa.8.sroa.0.0 to i32
  %.sroa.8.sroa.0.0.insert.insert = or disjoint i32 %.sroa.8.sroa.5.sroa.0.0, %.sroa.8.sroa.0.0.insert.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1783
  store i32 0, ptr %i.a, align 8, !noalias !1783
  %.sroa.4.i.sroa.3.0..sroa.46.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %storemerge.i, ptr %.sroa.4.i.sroa.3.0..sroa.46.0..sroa_idx.i.sroa_idx, align 8, !noalias !1783
  %.sroa.4.i.sroa.4.0..sroa.46.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.sroa.4.0, ptr %.sroa.4.i.sroa.4.0..sroa.46.0..sroa_idx.i.sroa_idx, align 4, !noalias !1783
  %.sroa.4.i.sroa.5.0..sroa.46.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0, ptr %.sroa.4.i.sroa.5.0..sroa.46.0..sroa_idx.i.sroa_idx, align 8, !noalias !1783
  %.sroa.4.i.sroa.6.0..sroa.46.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %.sroa.8.sroa.0.0.insert.insert, ptr %.sroa.4.i.sroa.6.0..sroa.46.0..sroa_idx.i.sroa_idx, align 8, !noalias !1783
  %.sroa.4.i.sroa.7.0..sroa.46.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i8 %.sroa.10.0, ptr %.sroa.4.i.sroa.7.0..sroa.46.0..sroa_idx.i.sroa_idx, align 4, !noalias !1783
  call fastcc void @_RINvXs7_NtCsluekWoTk8SK_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECsjFn5boE4uz6_5quote(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a), !noalias !1784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1783
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsq_NtCsjFn5boE4uz6_5quote9to_tokensNtCsluekWoTk8SK_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1790 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !14, !noundef !6 ; 2 uses
  %.not = icmp eq i8 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { ptr, i64 } @_RNvXsf_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxeENtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val1.i = load i64, ptr %0, align 8, !alias.scope !1791
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i8, ptr %i.g, align 8, !range !5, !alias.scope !1791, !noundef !6
  %i.i = inttoptr i64 %.val1.i to ptr
  %.sroa.0.sroa.5.0.insert.ext = zext nneg i8 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.i, %bb.c ]
  %.sroa.0.sroa.5.0 = phi i64 [ %i.f, %bb.b ], [ %.sroa.0.sroa.5.0.insert.ext, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1792
  store i32 1, ptr %i.a, align 8, !noalias !1792
  %.sroa.4.i.sroa.3.0..sroa.46.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.0.sroa.0.0, ptr %.sroa.4.i.sroa.3.0..sroa.46.0..sroa_idx.i.sroa_idx, align 8, !noalias !1792
  %.sroa.4.i.sroa.4.0..sroa.46.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.0.sroa.5.0, ptr %.sroa.4.i.sroa.4.0..sroa.46.0..sroa_idx.i.sroa_idx, align 8, !noalias !1792
  %.sroa.4.i.sroa.5.0..sroa.46.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %i.c, ptr %.sroa.4.i.sroa.5.0..sroa.46.0..sroa_idx.i.sroa_idx, align 8, !noalias !1792
  call fastcc void @_RINvXs7_NtCsluekWoTk8SK_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECsjFn5boE4uz6_5quote(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a), !noalias !1793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1792
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsr_NtCsjFn5boE4uz6_5quote9to_tokensNtCsluekWoTk8SK_11proc_macro25PunctNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 !guid !1797 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 4, !range !5, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1798
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load <2 x i32>, ptr %0, align 4
  store <2 x i32> %i.d, ptr %.sroa.48.0..sroa_idx.i, align 4, !noalias !1799
  %.sroa.5.0..sroa.48.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %i.c, ptr %.sroa.5.0..sroa.48.0..sroa_idx.i.sroa_idx, align 4, !noalias !1799
  store i32 2, ptr %i.a, align 8, !noalias !1798
  call fastcc void @_RINvXs7_NtCsluekWoTk8SK_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECsjFn5boE4uz6_5quote(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a), !noalias !1800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1798
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXss_NtCsjFn5boE4uz6_5quote9to_tokensNtCsluekWoTk8SK_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1806 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = load i64, ptr %0, align 8, !range !10, !noundef !6
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  %.sroa.03.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load <2 x i32>, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.sroa.5.0.copyload = load i32, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.4.sroa.6.0.copyload = load i8, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  %.sroa.4.sroa.7.0.copyload = load i8, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %.sroa.4.sroa.8.0.copyload = load i16, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i8, ptr %i.f, align 4, !range !22, !alias.scope !1807, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !1807
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !1807, !noundef !6
  %i.l = load <2 x i32>, ptr %i.e, align 8, !alias.scope !1807
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.5.sroa.6.0 = phi i32 [ %i.k, %bb.c ], [ %.sroa.4.sroa.5.0.copyload, %bb.b ]
  %.sroa.5.sroa.7.0 = phi i8 [ %i.g, %bb.c ], [ %.sroa.4.sroa.6.0.copyload, %bb.b ]
  %.sroa.5.sroa.8.0 = phi i8 [ %i.i, %bb.c ], [ %.sroa.4.sroa.7.0.copyload, %bb.b ]
  %.sroa.5.sroa.9.0 = phi i16 [ undef, %bb.c ], [ %.sroa.4.sroa.8.0.copyload, %bb.b ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %.sroa.03.0.copyload, %bb.b ]
  %i.m = phi <2 x i32> [ %i.l, %bb.c ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1808
  store i32 3, ptr %i.a, align 8, !noalias !1808
  %.sroa.4.i.sroa.3.0..sroa.46.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4.i.sroa.3.0..sroa.46.0..sroa_idx.i.sroa_idx, align 8, !noalias !1808
  %.sroa.4.i.sroa.4.0..sroa.46.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x i32> %i.m, ptr %.sroa.4.i.sroa.4.0..sroa.46.0..sroa_idx.i.sroa_idx, align 8, !noalias !1808
  %.sroa.4.i.sroa.6.0..sroa.46.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %.sroa.5.sroa.6.0, ptr %.sroa.4.i.sroa.6.0..sroa.46.0..sroa_idx.i.sroa_idx, align 8, !noalias !1808
  %.sroa.4.i.sroa.7.0..sroa.46.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i8 %.sroa.5.sroa.7.0, ptr %.sroa.4.i.sroa.7.0..sroa.46.0..sroa_idx.i.sroa_idx, align 4, !noalias !1808
  %.sroa.4.i.sroa.8.0..sroa.46.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  store i8 %.sroa.5.sroa.8.0, ptr %.sroa.4.i.sroa.8.0..sroa.46.0..sroa_idx.i.sroa_idx, align 1, !noalias !1808
  %.sroa.4.i.sroa.9.0..sroa.46.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i16 %.sroa.5.sroa.9.0, ptr %.sroa.4.i.sroa.9.0..sroa.46.0..sroa_idx.i.sroa_idx, align 2, !noalias !1808
  call fastcc void @_RINvXs7_NtCsluekWoTk8SK_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECsjFn5boE4uz6_5quote(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a), !noalias !1809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1808
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXst_NtCsjFn5boE4uz6_5quote9to_tokensNtCsluekWoTk8SK_11proc_macro29TokenTreeNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 !guid !1813 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1814
  call fastcc void @_RNvXsO_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #24
  call fastcc void @_RINvXs7_NtCsluekWoTk8SK_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECsjFn5boE4uz6_5quote(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a), !noalias !1815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1814
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsu_NtCsjFn5boE4uz6_5quote9to_tokensNtCsluekWoTk8SK_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1839 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  %i.d = load i64, ptr %0, align 8, !range !10, !alias.scope !1840, !noundef !6
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1840, !nonnull !6, !noundef !6 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !noalias !1841, !noundef !6 ; 2 uses
  %i.i = icmp ne i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.j, ptr %i.g, align 8, !noalias !1841
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.s, label %_RNvXsz_NtCsluekWoTk8SK_11proc_macro23impNtB5_11TokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit, !prof !20

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1843
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !alias.scope !1844, !noundef !6
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noundef i32 @_RNvXsa_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.l), !noalias !1845
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i32 [ %i.n, %bb.d ], [ 0, %bb.c ]    ; 3 uses
  store i32 %i.o, ptr %i.b, align 4, !noalias !1843
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !1844, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i.i = load i64, ptr %i.q, align 8, !alias.scope !1844, !noundef !6 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1847
  %i.r = mul nuw nsw i64 %.val2.i.i, 20           ; 2 uses
  %i.s = icmp eq i64 %.val2.i.i, 0
  br i1 %i.s, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjFn5boE4uz6_5quote.exit.thread.i.i.i.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjFn5boE4uz6_5quote.exit.thread.i.i.i.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RNvXsA_NtCsluekWoTk8SK_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.e
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1848
  %i.u = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 4, 9) 4) #18, !noalias !1848 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %.lr.ph.preheader.i.i.i.i

bb.f:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.r) #23
          to label %.noexc.i.i unwind label %bb.p, !noalias !1845

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

.lr.ph.preheader.i.i.i.i:                         ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  store i64 %.val2.i.i, ptr %i.a, align 8, !noalias !1847
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.u, ptr %i.w, align 8, !noalias !1847
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.sroa.013.048.i.i.i.i = phi ptr [ %i.y, %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.val.i.i, %.lr.ph.preheader.i.i.i.i ] ; 13 uses
  %.sroa.7.046.i.i.i.i = phi i64 [ %i.z, %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.sroa.10.045.i.i.i.i = phi i64 [ %2, %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.val2.i.i, %.lr.ph.preheader.i.i.i.i ]
  %2 = add nsw i64 %.sroa.10.045.i.i.i.i, -1      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i, i64 20
  %i.z = add nuw nsw i64 %.sroa.7.046.i.i.i.i, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i, i64 16
  %i.ab = load i8, ptr %i.aa, align 4, !range !8, !alias.scope !1849, !noalias !1850, !noundef !6 ; 3 uses
  %i.ac = icmp samesign ugt i8 %i.ab, 3
  %i.ad = zext nneg i8 %i.ab to i64
  %i.ae = add nsw i64 %i.ad, -3
  %i.af = select i1 %i.ac, i64 %i.ae, i64 0
  switch i64 %i.af, label %bb.h [
    i64 0, label %bb.i
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i, i64 12 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !1851, !noalias !1850, !noundef !6
  %.not.i.i12.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i12.i.i.i.i, label %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = invoke noundef i32 @_RNvXsa_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ag)
          to label %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i.i.i.i.i unwind label %bb.o, !noalias !1852

_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %storemerge.i.i.i.i.i.i = phi i32 [ 0, %bb.i ], [ %i.ai, %bb.j ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i, i64 4
  %.val1.i.i.i.i.i.i.i = load i32, ptr %i.aj, align 4, !range !19, !alias.scope !1853, !noalias !1850, !noundef !6
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.ak, align 4, !range !19, !alias.scope !1853, !noalias !1850, !noundef !6 ; 2 uses
  %.sroa.1017.sroa.0.0.extract.trunc18.i.i.i.i = trunc i32 %.val.i.i.i.i.i.i.i to i8
  %.sroa.1017.sroa.6.0.extract.shift19.i.i.i.i = and i32 %.val.i.i.i.i.i.i.i, -256
  %.sroa.13.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %storemerge.i.i.i.i.i.i to i8
  %.sroa.13.sroa.5.0.extract.shift.i.i.i.i = lshr i32 %storemerge.i.i.i.i.i.i, 8
  %.sroa.13.sroa.5.0.extract.trunc.i.i.i.i = trunc i32 %.sroa.13.sroa.5.0.extract.shift.i.i.i.i to i8
  %.sroa.13.sroa.6.0.extract.shift.i.i.i.i = and i32 %storemerge.i.i.i.i.i.i, -65536
  br label %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i

bb.k:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i, i64 8
  %i.am = load i8, ptr %i.al, align 4, !range !5, !alias.scope !1854, !noalias !1850, !noundef !6
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i, i64 4
  %.val.i.i.i.i.i.i = load i32, ptr %i.an, align 4, !range !19, !alias.scope !1854, !noalias !1850, !noundef !6
  br label %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i

bb.l:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i, i64 4
  %i.ap = load i16, ptr %i.ao, align 4, !alias.scope !1849, !noalias !1850
  %.sroa.014.sroa.7.0.extract.trunc.i.i.i.i = zext i16 %i.ap to i32
  br label %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i

bb.m:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i, i64 12
  %i.ar = load i8, ptr %i.aq, align 4, !range !22, !alias.scope !1855, !noalias !1850, !noundef !6
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i, i64 13
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !1855, !noalias !1850
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i, i64 8
  %i.av = load i32, ptr %i.au, align 4, !alias.scope !1855, !noalias !1850, !noundef !6 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i, i64 4
  %.val.i3.i.i.i.i.i = load i32, ptr %i.aw, align 4, !range !19, !alias.scope !1855, !noalias !1850, !noundef !6
  %.sroa.1017.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.av to i8
  %.sroa.1017.sroa.6.0.extract.shift.i.i.i.i = and i32 %i.av, -256
  br label %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i.i.i.i.i
  %.sroa.014.sroa.7.0.i.i.i.i = phi i32 [ %.val1.i.i.i.i.i.i.i, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %bb.k ], [ %.sroa.014.sroa.7.0.extract.trunc.i.i.i.i, %bb.l ], [ %.val.i3.i.i.i.i.i, %bb.m ]
  %.sroa.1017.sroa.6.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.1017.sroa.6.0.extract.shift19.i.i.i.i, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i.i.i.i.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ %.sroa.1017.sroa.6.0.extract.shift.i.i.i.i, %bb.m ]
  %.sroa.1017.sroa.0.0.i.i.i.i = phi i8 [ %.sroa.1017.sroa.0.0.extract.trunc18.i.i.i.i, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i.i.i.i.i ], [ %i.am, %bb.k ], [ undef, %bb.l ], [ %.sroa.1017.sroa.0.0.extract.trunc.i.i.i.i, %bb.m ]
  %.sroa.13.sroa.6.0.i.i.i.i = phi i32 [ %.sroa.13.sroa.6.0.extract.shift.i.i.i.i, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i.i.i.i.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ]
  %.sroa.13.sroa.5.0.i.i.i.i = phi i8 [ %.sroa.13.sroa.5.0.extract.trunc.i.i.i.i, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i.i.i.i.i ], [ undef, %bb.k ], [ undef, %bb.l ], [ %i.at, %bb.m ]
  %.sroa.13.sroa.0.0.i.i.i.i = phi i8 [ %.sroa.13.sroa.0.0.extract.trunc.i.i.i.i, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i.i.i.i.i ], [ undef, %bb.k ], [ undef, %bb.l ], [ %i.ar, %bb.m ]
  %.sink.i.i.i.i.i = phi i8 [ %i.ab, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsjFn5boE4uz6_5quote.exit.i.i.i.i.i ], [ 4, %bb.k ], [ 5, %bb.l ], [ 6, %bb.m ]
  %.sroa.014.sroa.0.0.i.i.i.i = load i32, ptr %.sroa.013.048.i.i.i.i, align 4, !range !19, !alias.scope !1849, !noalias !1850, !noundef !6
  %i.ax = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %.sroa.7.046.i.i.i.i ; 4 uses
  %.sroa.014.sroa.7.0.insert.ext.i.i.i.i = zext i32 %.sroa.014.sroa.7.0.i.i.i.i to i64
  %.sroa.014.sroa.7.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.014.sroa.7.0.insert.ext.i.i.i.i, 32
  %.sroa.014.sroa.0.0.insert.ext.i.i.i.i = zext i32 %.sroa.014.sroa.0.0.i.i.i.i to i64
  %.sroa.014.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.014.sroa.7.0.insert.shift.i.i.i.i, %.sroa.014.sroa.0.0.insert.ext.i.i.i.i
  %.sroa.1017.sroa.0.0.insert.ext.i.i.i.i = zext i8 %.sroa.1017.sroa.0.0.i.i.i.i to i32
  %.sroa.1017.sroa.0.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.1017.sroa.6.sroa.0.0.i.i.i.i, %.sroa.1017.sroa.0.0.insert.ext.i.i.i.i
  %.sroa.13.sroa.5.0.insert.ext.i.i.i.i = zext i8 %.sroa.13.sroa.5.0.i.i.i.i to i32
  %.sroa.13.sroa.5.0.insert.shift.i.i.i.i = shl nuw nsw i32 %.sroa.13.sroa.5.0.insert.ext.i.i.i.i, 8
  %.sroa.13.sroa.5.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.shift.i.i.i.i, %.sroa.13.sroa.6.0.i.i.i.i
  %.sroa.13.sroa.0.0.insert.ext.i.i.i.i = zext i8 %.sroa.13.sroa.0.0.i.i.i.i to i32
  %.sroa.13.sroa.0.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.insert.i.i.i.i, %.sroa.13.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.014.sroa.0.0.insert.insert.i.i.i.i, ptr %i.ax, align 4, !noalias !1852
  %.sroa.431.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %.sroa.1017.sroa.0.0.insert.insert.i.i.i.i, ptr %.sroa.431.0..sroa_idx.i.i.i.i, align 4, !noalias !1852
  %.sroa.532.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 %.sroa.13.sroa.0.0.insert.insert.i.i.i.i, ptr %.sroa.532.0..sroa_idx.i.i.i.i, align 4, !noalias !1852
  %.sroa.633.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i8 %.sink.i.i.i.i.i, ptr %.sroa.633.0..sroa_idx.i.i.i.i, align 4, !noalias !1852
  %i.ay = icmp eq i64 %2, 0
  br i1 %i.ay, label %_RNvXsA_NtCsluekWoTk8SK_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, label %bb.g

bb.n:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20, !noalias !1852
  unreachable

bb.o:                                             ; preds = %bb.j
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.046.i.i.i.i, ptr %i.x, align 8, !noalias !1847
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsiwvLk4GMN8X_10proc_macro9TokenTreeEECsjFn5boE4uz6_5quote(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #21
          to label %.body.i.i unwind label %bb.n, !noalias !1852

bb.p:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.p, %bb.o
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ba, %bb.p ], [ %lpad.loopexit.i.i.i.i, %bb.o ]
  %i.bb = icmp eq i32 %i.o, 0
  br i1 %i.bb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsiwvLk4GMN8X_10proc_macro11TokenStreamECsjFn5boE4uz6_5quote.exit.i.i, label %bb.q

bb.q:                                             ; preds = %.body.i.i
  invoke void @_RNvXs0_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsiwvLk4GMN8X_10proc_macro11TokenStreamECsjFn5boE4uz6_5quote.exit.i.i unwind label %bb.r, !noalias !1845

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20, !noalias !1845
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsiwvLk4GMN8X_10proc_macro11TokenStreamECsjFn5boE4uz6_5quote.exit.i.i: ; preds = %bb.q, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvXsA_NtCsluekWoTk8SK_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjFn5boE4uz6_5quote.exit.thread.i.i.i.i
  %3 = phi ptr [ inttoptr (i64 4 to ptr), %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjFn5boE4uz6_5quote.exit.thread.i.i.i.i ], [ %i.u, %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i ]
  %4 = phi ptr [ %i.t, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjFn5boE4uz6_5quote.exit.thread.i.i.i.i ], [ %i.x, %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i ]
  store i64 %.val2.i.i, ptr %4, align 8, !noalias !1847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1843
  br label %_RNvXsz_NtCsluekWoTk8SK_11proc_macro23impNtB5_11TokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit

bb.s:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvXsz_NtCsluekWoTk8SK_11proc_macro23impNtB5_11TokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit: ; preds = %bb.b, %_RNvXsA_NtCsluekWoTk8SK_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i
  %.sroa.66.0 = phi i32 [ %i.o, %_RNvXsA_NtCsluekWoTk8SK_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i ], [ undef, %bb.b ]
  %.sroa.6.0 = phi i64 [ %.val2.i.i, %_RNvXsA_NtCsluekWoTk8SK_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i ], [ undef, %bb.b ]
  %.sroa.5.0 = phi ptr [ %3, %_RNvXsA_NtCsluekWoTk8SK_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i ], [ %i.g, %bb.b ]
  %.sroa.0.0 = phi i64 [ %.val2.i.i, %_RNvXsA_NtCsluekWoTk8SK_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i ], [ -1, %bb.b ]
  store i64 %.sroa.0.0, ptr %i.c, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.523.0..sroa_idx, align 8
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %.sroa.66.0, ptr %.sroa.624.0..sroa_idx, align 8
  call fastcc void @_RINvXs5_CsluekWoTk8SK_11proc_macro2NtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBx_E6extendINtNtNtBW_7sources4once4OnceBx_EECsjFn5boE4uz6_5quote(ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCsjFn5boE4uz6_5quote(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 !guid !1857 {
_RNvXs_NvNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtQNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCsjFn5boE4uz6_5quote.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @14, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !1856
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtCsbSS6DM8SDEO_5alloc2rc32rc_inner_layout_for_value_layout(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsluekWoTk8SK_11proc_macro23imp19into_compiler_token(ptr dead_on_unwind noalias nofree noundef writable sret([20 x i8]) align 4 captures(none) dereferenceable(20), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsluekWoTk8SK_11proc_macro23impNtB2_19DeferredTokenStream12evaluate_now(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsi_CsiwvLk4GMN8X_10proc_macroNtB5_19ConcatStreamsHelper3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsi_CsiwvLk4GMN8X_10proc_macroNtB5_19ConcatStreamsHelper9append_to(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCsluekWoTk8SK_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsluekWoTk8SK_11proc_macro28fallback26push_token_from_proc_macro(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsi_CsiwvLk4GMN8X_10proc_macroNtB5_19ConcatStreamsHelper4push(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #11

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsf_CsluekWoTk8SK_11proc_macro2NtB5_8LexErrorNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsluekWoTk8SK_11proc_macro212token_streamNtB7_11TokenStreamNtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMsi_CsluekWoTk8SK_11proc_macro2NtB5_4Span9call_site() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMsi_CsluekWoTk8SK_11proc_macro2NtB5_4Span4join(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_CsluekWoTk8SK_11proc_macro2NtB5_5Punct3new(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i32 noundef range(i32 0, 1114112), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsr_CsluekWoTk8SK_11proc_macro2NtB5_5Group3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i8 noundef range(i8 0, 4), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_CsluekWoTk8SK_11proc_macro2NtB5_11TokenStreamNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsx_CsluekWoTk8SK_11proc_macro2NtB5_5Ident3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsx_CsluekWoTk8SK_11proc_macro2NtB5_5Ident7new_raw(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsluekWoTk8SK_11proc_macro2NtB2_11TokenStream3new(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsr_CsluekWoTk8SK_11proc_macro2NtB5_5Group6stream(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsr_CsluekWoTk8SK_11proc_macro2NtB5_5Group8set_span(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsk_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTree8set_span(ptr noalias nofree noundef align 8 dereferenceable(32), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCshzWfHUSfYae_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsG_CsluekWoTk8SK_11proc_macro2NtB5_7Literal6string(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCshzWfHUSfYae_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCshzWfHUSfYae_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsG_CsluekWoTk8SK_11proc_macro2NtB5_7Literal11i8_suffixed(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsG_CsluekWoTk8SK_11proc_macro2NtB5_7Literal12i16_suffixed(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsG_CsluekWoTk8SK_11proc_macro2NtB5_7Literal12i32_suffixed(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 1, 0) i32 @_RNvXsa_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_CsluekWoTk8SK_11proc_macro2NtB5_5IdentNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXsf_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxeENtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCshzWfHUSfYae_4core3fmt3numoNtB4_7Display3fmt(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsG_CsluekWoTk8SK_11proc_macro2NtB5_7Literal12i64_suffixed(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_1
