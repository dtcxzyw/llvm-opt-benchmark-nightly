Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/syntax_bridge-f554fdf21f9d0e88.syntax_bridge.ff67f30c0022ab53-cgu.2?download=true
inline.NumInlined: 139
inline.NumDeleted: 67
begin_hunk_0_@_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslVwgvvnzcNb_13syntax_bridge:bb.a
bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !5, !alias.scope !122, !noundef !4 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !122
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !122
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !122
  %i.j = load i64, ptr %i.a, align 8, !range !124, !noalias !122, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !125, !noalias !122, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !122
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #23
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !122, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !122
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !122
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !122
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslVwgvvnzcNb_13syntax_bridge(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !7
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #20
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.k = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #20
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

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslVwgvvnzcNb_13syntax_bridge(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !7
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  br i1 %2, label %bb.g, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %bb.h

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCslVwgvvnzcNb_13syntax_bridge15to_parser_input15to_parser_input(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [48 x i8], align 4                ; 5 uses
  %i.t = alloca [28 x i8], align 4                ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 12 uses
  %i.v = alloca [48 x i8], align 8                ; 9 uses
  %i.w = alloca [32 x i8], align 8                ; 11 uses
  %i.x = alloca [72 x i8], align 8                ; 15 uses
  %i.y = alloca [96 x i8], align 8                ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !4 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !274
  %i.z = shl i64 %.sroa.0.0, 1                    ; 6 uses
  %i.aa = icmp slt i64 %.sroa.0.0, 0
  %.not.i.i = icmp ugt i64 %i.z, 9223372036854775806
  %or.cond.i.i = or i1 %i.aa, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.ab = icmp eq i64 %i.z, 0                     ; 2 uses
  br i1 %i.ab, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslVwgvvnzcNb_13syntax_bridge.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !275
  %i.ac = tail call noundef align 2 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.z, i64 noundef range(i64 1, -9223372036854775807) 2) #20, !noalias !275 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = ptrtoint ptr %i.ac to i64
  br label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslVwgvvnzcNb_13syntax_bridge.exit.i

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 2, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.z) #23, !noalias !274
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslVwgvvnzcNb_13syntax_bridge.exit.i: ; preds = %bb.d, %bb.b
  %.sroa.10.0.i = phi i64 [ %i.ae, %bb.d ], [ 2, %bb.b ]
  %.sroa.4.0.i = phi i64 [ %.sroa.0.0, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.af = inttoptr i64 %.sroa.10.0.i to ptr
  %i.ag = icmp samesign ule i64 %.sroa.0.0, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.ag)
  store i64 %.sroa.4.0.i, ptr %i.o, align 8, !noalias !274
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.af, ptr %i.ah, align 8, !noalias !274
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.ai, align 8, !noalias !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !274
  %i.aj = add nuw i64 %.sroa.0.0, 63
  %.sroa.0.0.i = lshr i64 %i.aj, 6                ; 3 uses
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i, 3         ; 2 uses
  %i.al = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.al, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslVwgvvnzcNb_13syntax_bridge.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !276
  %i.am = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !276 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = ptrtoint ptr %i.am to i64
  br label %bb.k

bb.h:                                             ; preds = %bb.m, %bb.i
  %.pn5.i = phi { ptr, i32 } [ %i.ap, %bb.i ], [ %.pn.i, %bb.m ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindEECslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #21
          to label %common.resume unwind label %bb.s, !noalias !274

bb.i:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.f
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ak) #23
          to label %bb.r unwind label %bb.i, !noalias !274

bb.k:                                             ; preds = %bb.g, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslVwgvvnzcNb_13syntax_bridge.exit.i
  %.sroa.1023.0.i = phi i64 [ %i.ao, %bb.g ], [ 8, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslVwgvvnzcNb_13syntax_bridge.exit.i ]
  %i.aq = inttoptr i64 %.sroa.1023.0.i to ptr
  store i64 %.sroa.0.0.i, ptr %i.n, align 8, !noalias !274
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !noalias !274
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %i.as, align 8, !noalias !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !274
  br i1 %i.ab, label %.thread60.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !277
  %i.at = tail call noundef align 2 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.z, i64 noundef range(i64 1, -9223372036854775807) 2) #20, !noalias !277 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslVwgvvnzcNb_13syntax_bridge.exit14.i, label %bb.o

bb.m:                                             ; preds = %bb.p, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.av, %bb.n ], [ %i.bc, %bb.p ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecyEECslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #21
          to label %bb.h unwind label %bb.s, !noalias !274

bb.n:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslVwgvvnzcNb_13syntax_bridge.exit14.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslVwgvvnzcNb_13syntax_bridge.exit14.i: ; preds = %bb.l
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 2, i64 %i.z) #23
          to label %bb.r unwind label %bb.n, !noalias !274

.thread60.i:                                      ; preds = %bb.k
  %i.aw = icmp eq i64 %.sroa.0.0, 0
  tail call void @llvm.assume(i1 %i.aw)
  store i64 0, ptr %i.m, align 8, !noalias !274
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.ax, align 8, !noalias !274
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.ay, align 8, !noalias !274
  br label %_RNvMNtCsdVrXiLXuAnx_6parser5inputNtB2_5Input13with_capacity.exit

bb.o:                                             ; preds = %bb.l
  store i64 %.sroa.0.0, ptr %i.m, align 8, !noalias !274
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.at, ptr %i.az, align 8, !noalias !274
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.ba, align 8, !noalias !274
  %i.bb = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.bb, label %_RNvMNtCsdVrXiLXuAnx_6parser5inputNtB2_5Input13with_capacity.exit, label %4

4:                                                ; preds = %bb.o
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !278
  %5 = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !278 ; 2 uses
  %6 = icmp eq ptr %5, null
  br i1 %6, label %bb.q, label %7

7:                                                ; preds = %4
  %8 = ptrtoint ptr %5 to i64
  br label %_RNvMNtCsdVrXiLXuAnx_6parser5inputNtB2_5Input13with_capacity.exit

bb.p:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindEECslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #21
          to label %bb.m unwind label %bb.s, !noalias !274

bb.q:                                             ; preds = %4
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.0.0) #23
          to label %bb.r unwind label %bb.p, !noalias !274

bb.r:                                             ; preds = %bb.q, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslVwgvvnzcNb_13syntax_bridge.exit14.i, %bb.j
  unreachable

bb.s:                                             ; preds = %bb.p, %bb.m, %bb.h
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #22, !noalias !274
  unreachable

common.resume:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt6buffer6CursorECslVwgvvnzcNb_13syntax_bridge.exit, %bb.hk, %.split, %bb.hh, %bb.hg, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %.pn5.i, %bb.h ], [ %.pn59, %.split ], [ %.pn59, %bb.hk ], [ %.pn59, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt6buffer6CursorECslVwgvvnzcNb_13syntax_bridge.exit ], [ %i.sk, %bb.hg ], [ %i.sk, %bb.hh ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsdVrXiLXuAnx_6parser5inputNtB2_5Input13with_capacity.exit: ; preds = %.thread60.i, %bb.o, %7
  %.sroa.1031.0.i = phi i64 [ %8, %7 ], [ 1, %bb.o ], [ 1, %.thread60.i ]
  %9 = inttoptr i64 %.sroa.1031.0.i to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 21 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 21 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 21 uses
  store i64 %.sroa.0.0, ptr %i.bg, align 8, !alias.scope !274
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 7 uses
  store ptr %9, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !274
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 88 ; 17 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  store i64 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 7 uses
  store i64 0, ptr %i.bi, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 44 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.57.0..sroa_idx.i221 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 32 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 22 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 12 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 10 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 20 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 10 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.57.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.sroa.4.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.57.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 37
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.57.0..sroa_idx.i125 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.v, i64 44 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %.sroa.5266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.57.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.u

default.unreachable383:                           ; preds = %bb.bs, %bb.be
  unreachable

default.unreachable:                              ; preds = %bb.bu
  unreachable

bb.t:                                             ; preds = %bb.bt
  unreachable

bb.u:                                             ; preds = %.backedge, %_RNvMNtCsdVrXiLXuAnx_6parser5inputNtB2_5Input13with_capacity.exit
  %i.ch = phi i64 [ %.pre, %.backedge ], [ 0, %_RNvMNtCsdVrXiLXuAnx_6parser5inputNtB2_5Input13with_capacity.exit ]
  %i.ci = load i64, ptr %i.bj, align 8, !noundef !4
  %i.cj = icmp eq i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ck = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.cl = icmp ult i64 %i.ck, 1152921504606846976
  call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp eq i64 %i.ck, 0
  br i1 %i.cm, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  invoke void @_RNvMNtCs4dcH4YgJDq_2tt6bufferNtB2_6Cursor10token_tree(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.x)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.y, i64 96, i1 false)
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextNtCs3gTr8JIMkcl_7edition7EditionEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextNtCs3gTr8JIMkcl_7edition7EditionNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECslVwgvvnzcNb_13syntax_bridge.exit unwind label %bb.hf

.thread280:                                       ; preds = %.thread384, %bb.eu, %bb.dk, %bb.hb, %bb.ad, %bb.y
  %.pn57 = phi { ptr, i32 } [ %i.cn, %bb.y ], [ %.pn54, %bb.hb ], [ %.pn54, %bb.ad ], [ %i.ld, %bb.eu ], [ %lpad.phi297, %bb.dk ], [ %lpad.loopexit.split-lp, %.thread384 ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextNtCs3gTr8JIMkcl_7edition7EditionEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextNtCs3gTr8JIMkcl_7edition7EditionNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECslVwgvvnzcNb_13syntax_bridge.exit80 unwind label %bb.bb

bb.y:                                             ; preds = %bb.az, %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.thread280

bb.z:                                             ; preds = %bb.w
  %i.co = load i8, ptr %i.bk, align 4, !range !279, !noundef !4 ; 3 uses
  %.not43 = icmp eq i8 %i.co, -2
  br i1 %.not43, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not44 = icmp eq i8 %i.co, -1                  ; 2 uses
  %i.cp = load i32, ptr %i.u, align 8             ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 1
  %or.cond = select i1 %.not44, i1 %i.cq, i1 false
  %i.cr = load i32, ptr %i.bl, align 4            ; 3 uses
  %i.cs = icmp eq i32 %i.cr, 39
  %or.cond65 = select i1 %or.cond, i1 %i.cs, i1 false
  br i1 %or.cond65, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not44, label %bb.bt, label %bb.bs

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvMNtCs4dcH4YgJDq_2tt6bufferNtB2_6Cursor4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.x)
          to label %bb.ae unwind label %.loopexit

bb.ad:                                            ; preds = %.loopexit, %bb.bd, %.thread388, %bb.ax
  %.pn54 = phi { ptr, i32 } [ %.pn, %bb.ax ], [ %.pn391, %.thread388 ], [ %.pn391, %bb.bd ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %.sroa.028.0 = phi i1 [ true, %bb.ax ], [ true, %.thread388 ], [ true, %bb.bd ], [ %.sroa.028.1.ph, %.loopexit ]
  %i.ct = load i8, ptr %i.bk, align 4, !range !279, !noundef !4
  %i.cu = icmp eq i8 %i.ct, -1
  %or.cond14 = and i1 %.sroa.028.0, %i.cu
  br i1 %or.cond14, label %bb.hb, label %.thread280

.loopexit:                                        ; preds = %bb.ac, %bb.ae, %.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECslVwgvvnzcNb_13syntax_bridge.exit, %bb.ha, %bb.ba, %bb.bh, %bb.bi, %.noexc99, %bb.bm, %bb.bn, %bb.bo, %bb.bq, %bb.du, %bb.dv, %.noexc145, %bb.ef, %bb.eg, %.noexc157, %bb.ek, %bb.el, %bb.em, %bb.eo, %bb.gm, %bb.gn, %.noexc216, %bb.gq, %bb.gr, %.noexc227, %bb.gv, %bb.gw, %bb.gx, %bb.gz
  %.sroa.028.1.ph = phi i1 [ true, %bb.gx ], [ true, %bb.gw ], [ true, %bb.gv ], [ true, %bb.gr ], [ true, %bb.gq ], [ false, %bb.gn ], [ false, %bb.gm ], [ false, %bb.em ], [ false, %bb.el ], [ false, %bb.ek ], [ false, %bb.eg ], [ false, %bb.ef ], [ false, %bb.dv ], [ false, %bb.du ], [ true, %bb.bn ], [ true, %bb.bm ], [ true, %bb.bi ], [ true, %bb.bh ], [ true, %.thread ], [ true, %.noexc99 ], [ true, %bb.bq ], [ false, %.noexc216 ], [ true, %bb.bo ], [ false, %.noexc157 ], [ false, %bb.eo ], [ false, %.noexc145 ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECslVwgvvnzcNb_13syntax_bridge.exit ], [ true, %.noexc227 ], [ true, %bb.gz ], [ true, %bb.ha ], [ true, %bb.ac ], [ true, %bb.ae ], [ true, %bb.ba ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.thread384:                                       ; preds = %bb.et, %_RNvMNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB2_10SyntaxKind9from_char.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread280

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvMNtCs4dcH4YgJDq_2tt6bufferNtB2_6Cursor10token_tree(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.x)
          to label %bb.af unwind label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.cv = load i8, ptr %i.cb, align 4, !range !279, !noundef !4 ; 3 uses
  %.not49 = icmp eq i8 %i.cv, -2
  br i1 %.not49, label %bb.ah, label %bb.ag, !prof !6

bb.ag:                                            ; preds = %bb.af
  %.not50 = icmp eq i8 %i.cv, -1
  %i.cw = load i32, ptr %i.v, align 8, !range !280
  %i.cx = icmp eq i32 %i.cw, 2
  %or.cond6 = select i1 %.not50, i1 %i.cx, i1 false, !prof !281
  br i1 %or.cond6, label %bb.ai, label %bb.ah, !prof !281

bb.ah:                                            ; preds = %bb.ag, %bb.af
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23
          to label %bb.bc unwind label %.loopexit.split-lp299

bb.ai:                                            ; preds = %bb.ag
  %.sroa.0264.0.copyload = load ptr, ptr %i.cc, align 8 ; 5 uses
  %.sroa.5266.0.copyload = load i32, ptr %.sroa.5266.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !282
  invoke void @_RNvMNtCsfjX3T6UU9IB_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextNtCs3gTr8JIMkcl_7edition7EditionNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entryCslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %.sroa.5266.0.copyload)
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %bb.ai
  %i.cy = load ptr, ptr %i.l, align 8, !noalias !282, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.cy, null
  br i1 %.not.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.noexc
  %.sroa.46.0.copyload.i = load i64, ptr %i.cd, align 8, !noalias !282
  %.sroa.57.0.copyload.i = load ptr, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !282
  %i.cz = invoke noundef range(i8 0, 4) i8 %i.bp(ptr noundef nonnull %2, i32 noundef %.sroa.5266.0.copyload) #24
          to label %.noexc81 unwind label %bb.al, !inline_history !138

.noexc81:                                         ; preds = %bb.aj
  %i.da = ptrtoint ptr %.sroa.57.0.copyload.i to i64
  %.sroa.8.16.extract.trunc.i = trunc i64 %i.da to i32
  %i.db = invoke noundef nonnull ptr @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextNtCs3gTr8JIMkcl_7edition7EditionEE14insert_no_growCslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cy, i64 noundef %.sroa.46.0.copyload.i, i32 noundef %.sroa.8.16.extract.trunc.i, i8 noundef %i.cz)
          to label %bb.am unwind label %bb.al

bb.ak:                                            ; preds = %.noexc
  %i.dc = load ptr, ptr %i.cd, align 8, !noalias !282, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !282
  br label %bb.am

bb.al:                                            ; preds = %bb.as, %bb.aq, %bb.ap, %bb.ao, %.noexc81, %bb.aj, %bb.ai, %bb.at
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0264.0.copyload) ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECslVwgvvnzcNb_13syntax_bridge(ptr nonnull %.sroa.0264.0.copyload) #21
          to label %.thread388 unwind label %bb.bb

bb.am:                                            ; preds = %bb.ak, %.noexc81
  %.pn.i.i = phi ptr [ %i.dc, %bb.ak ], [ %i.db, %.noexc81 ]
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -4
end_hunk_0
