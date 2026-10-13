Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.13?download=true
inline.NumInlined: 2010
inline.NumDeleted: 1053
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish5input6decode16invalid_sequence:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2319
  store i64 0, ptr %i.c, align 8, !noalias !2319
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2319
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2319
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.bg, align 8, !noalias !2319
  store ptr %i.c, ptr %i.b, align 8, !noalias !2319
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @767, ptr %i.bh, align 8, !noalias !2319
  %i.bi = invoke noundef zeroext i1 @_RNvXs_NtNtCs8frGy5WneL6_4fish5input6decodeNtB4_12DisplayBytesNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.q unwind label %bb.p, !noalias !2320

bb.p:                                             ; preds = %bb.r, %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #48
          to label %.body unwind label %bb.s, !noalias !2319

bb.q:                                             ; preds = %bb.o
  br i1 %i.bi, label %bb.r, label %bb.t, !prof !16

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @768, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @770) #54
          to label %.noexc.i unwind label %bb.p, !noalias !2319

.noexc.i:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !2319
  unreachable

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !noalias !2321
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2321, !nonnull !12, !noundef !12 ; 3 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2321 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bl = icmp sgt i64 %.sroa.5.0.copyload, -1
  call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload
  store ptr %.sroa.4.0.copyload, ptr %i.d, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.0.0.copyload, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.4.0.copyload, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.bm, ptr %i.bp, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.u unwind label %bb.d

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bq = load i64, ptr %i.m, align 8, !alias.scope !2322, !noundef !12 ; 3 uses
  %i.br = load i64, ptr %i.j, align 8, !range !17, !alias.scope !2322, !noundef !12
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #47
          to label %bb.w unwind label %bb.d

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.bt = load ptr, ptr %i.l, align 8, !alias.scope !2322, !nonnull !12, !noundef !12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  store i8 10, ptr %i.bu, align 1
  %i.bv = add i64 %i.bq, 1                        ; 2 uses
  store i64 %i.bv, ptr %i.m, align 8, !alias.scope !2322
  %i.bw = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12
  invoke void @_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bv)
          to label %bb.x unwind label %bb.d

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %.body, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.bx, %bb.y ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.x
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.b

bb.aa:                                            ; preds = %bb.k
  unreachable

bb.ab:                                            ; preds = %.body
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs8frGy5WneL6_4fish5input6decode9parse_hex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = and i64 %2, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = lshr exact i64 %2, 1                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2328
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 4611686018427387904) %i.e, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !2328
  %i.f = load i64, ptr %i.a, align 8, !range !27, !noalias !2328, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !28, !noalias !2328, !noundef !12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !noalias !2328
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #53, !noalias !2328
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.j, align 8, !noalias !2328, !nonnull !12, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2328
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !2328
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !2328
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.e, ptr %i.n, align 8, !alias.scope !2328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2330)
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i
  %.sroa.01.028.i = phi i64 [ %i.ao, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i ], [ 0, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.028.i
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !2330, !noalias !2329, !noundef !12 ; 2 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = icmp ugt i8 %i.q, 57
  %i.t = add nsw i32 %i.r, -65
  %i.u = and i32 %i.t, -33
  %i.v = add nuw nsw i32 %i.u, 10
  %i.w = add nsw i32 %i.r, -48
  %.sroa.02.0.i.i = select i1 %i.s, i32 %i.v, i32 %i.w ; 2 uses
  %i.x = icmp ult i32 %.sroa.02.0.i.i, 16
  br i1 %i.x, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = or disjoint i64 %.sroa.01.028.i, 1       ; 3 uses
  %i.z = icmp samesign ult i64 %i.y, %2
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !2330, !noalias !2329, !noundef !12 ; 2 uses
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = icmp ugt i8 %i.ab, 57
  %i.ae = add nsw i32 %i.ac, -65
  %i.af = and i32 %i.ae, -33
  %i.ag = add nuw nsw i32 %i.af, 10
  %i.ah = add nsw i32 %i.ac, -48
  %.sroa.02.0.i21.i = select i1 %i.ad, i32 %i.ag, i32 %i.ah ; 2 uses
  %i.ai = icmp ult i32 %.sroa.02.0.i21.i, 16
  br i1 %i.ai, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i, label %bb.j

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #54
          to label %.noexc1 unwind label %bb.i

.noexc1:                                          ; preds = %bb.g
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i: ; preds = %bb.f
  %i.aj = lshr exact i64 %.sroa.01.028.i, 1
  %i.ak = shl nuw nsw i32 %.sroa.02.0.i.i, 4
  %i.al = or disjoint i32 %.sroa.02.0.i21.i, %i.ak
  %i.am = trunc nuw i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aj
  store i8 %i.am, ptr %i.an, align 1, !alias.scope !2329, !noalias !2330
  %i.ao = add nuw i64 %.sroa.01.028.i, 2          ; 2 uses
  %.not.i = icmp ult i64 %i.ao, %2
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit

bb.h:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #48
          to label %common.resume unwind label %bb.n

.loopexit:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph.i, %bb.f
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.ap, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit, %.loopexit, %bb.h
  ret void

bb.n:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define range(i64 0, 8589934594) i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins6random6random(ptr noalias nofree noundef align 8 dereferenceable(432) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [72 x i8], align 8                ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [1 x i8], align 1                 ; 3 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [72 x i8], align 8                ; 11 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [72 x i8], align 8               ; 9 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [16 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 11 uses
  %i.al = alloca [72 x i8], align 8               ; 11 uses
  %i.am = alloca [136 x i8], align 8              ; 27 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = load ptr, ptr %2, align 8, !nonnull !12, !align !32, !noundef !12 ; 13 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !12 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr @314, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 4, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 104, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %2, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 %3, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store ptr null, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr @357, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i64 2, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store ptr %i.an, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store i64 1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store i64 0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 104 ; 5 uses
  store i64 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  store i32 63, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 134
  store i8 1, ptr %i.bc, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 132
  store i8 0, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 133
  store i8 0, ptr %i.bf, align 1
  store i64 0, ptr %i.am, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 0, ptr %.sroa.526.0..sroa_idx, align 8
  %i.bg = invoke noundef i32 @_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter8next_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.am)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @356) #54
  unreachable

.body:                                            ; preds = %bb.dg, %bb.dc, %bb.cp, %bb.by, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %bb.aj, %bb.d, %bb.an, %bb.cc, %bb.dk, %bb.cy, %bb.cn, %bb.bo
  %.pn51 = phi { ptr, i32 } [ %.pn47, %bb.bo ], [ %i.ii, %bb.cy ], [ %i.jf, %bb.dk ], [ %i.hw, %bb.cn ], [ %i.hc, %bb.cc ], [ %i.dx, %bb.an ], [ %i.in, %bb.dc ], [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i ], [ %i.hx, %bb.cp ], [ %i.dr, %bb.aj ], [ %i.gs, %bb.by ], [ %i.bh, %bb.d ], [ %i.iw, %bb.dg ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(136) %i.am) #48
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.invoke147, %.invoke, %bb.dp, %bb.dn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %bb.cx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.ch, %bb.cf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit9.i, %bb.bb, %bb.as, %bb.aq, %bb.ag, %bb.aa, %bb.x, %bb.ds, %bb.dr, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0ECs8frGy5WneL6_4fish.exit94, %bb.ct, %bb.cl, %bb.ck, %bb.cj, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0ECs8frGy5WneL6_4fish.exit, %bb.bj, %bb.bq, %bb.ad, %bb.av, %bb.ac, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0ECs8frGy5WneL6_4fish.exit74, %bb.ab, %bb.z, %bb.r, %bb.p, %bb.n, %bb.h, %bb.g, %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b
  switch i32 %i.bg, label %bb.g [
    i32 -1, label %bb.f
    i32 104, label %bb.h
    i32 58, label %bb.i
    i32 59, label %bb.j
    i32 63, label %bb.k
  ], !prof !2365

bb.f:                                             ; preds = %bb.e
  %i.bi = load i64, ptr %i.ba, align 8, !noundef !12 ; 6 uses
  %i.bj = sub nuw nsw i64 %3, %i.bi               ; 3 uses
  %i.bk = icmp ult i64 %3, %i.bi
  br i1 %i.bk, label %.invoke147, label %bb.v

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @364, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @365) #53
          to label %bb.m unwind label %bb.d

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc18builtin_print_help(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ao, i64 noundef %i.aq)
          to label %bb.s unwind label %bb.d

bb.i:                                             ; preds = %bb.e
  %i.bl = load i64, ptr %i.ba, align 8, !noundef !12 ; 2 uses
  %i.bm = add i64 %i.bl, -1                       ; 3 uses
  %i.bn = icmp eq i64 %i.bl, 0
  br i1 %i.bn, label %.invoke147, label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.bo = load i64, ptr %i.ba, align 8, !noundef !12 ; 2 uses
  %i.bp = add i64 %i.bo, -1                       ; 3 uses
  %i.bq = icmp eq i64 %i.bo, 0
  br i1 %i.bq, label %.invoke147, label %bb.o

bb.k:                                             ; preds = %bb.e
end_hunk_0
