Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/similar-f11129950cf102f8.similar.cde5bf76a4ae79f3-cgu.00?download=true
inline.NumInlined: 114
inline.NumDeleted: 17
begin_hunk_0_@_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers13diff_deadlineSReBZ_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_:bb.a
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECshFZddwsEKsN_7similar.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECshFZddwsEKsN_7similar.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit23 unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit23: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.l:                                             ; preds = %bb.f, %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers13diff_deadlineSReBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 576460752303423488) %6, i64 noundef %7, i64 noundef %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 %3)
  %.sroa.05.0 = tail call i64 @llvm.usub.sat.i64(i64 %8, i64 %7)
  %i.e = add i64 %.sroa.0.0, 1
  %i.f = add i64 %i.e, %.sroa.05.0
  %i.g = lshr i64 %i.f, 1
  %i.h = add nuw i64 %i.g, 1                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.i = shl i64 %i.h, 1                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !70
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZddwsEKsN_7similar(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.i, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !noalias !70
  %i.j = load i64, ptr %i.b, align 8, !range !9, !noalias !70, !noundef !10
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !11, !noalias !70, !noundef !10 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMNtNtCshFZddwsEKsN_7similar10algorithms5myersNtB2_1V3new.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !noalias !70
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #13, !noalias !70
  unreachable

_RNvMNtNtCshFZddwsEKsN_7similar10algorithms5myersNtB2_1V3new.exit: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !noalias !70, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !70
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %i.q, align 8, !alias.scope !67
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !67
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !67
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZddwsEKsN_7similar(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.i, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_RNvMNtNtCshFZddwsEKsN_7similar10algorithms5myersNtB2_1V3new.exit
  %i.r = load i64, ptr %i.a, align 8, !range !9, !noalias !76, !noundef !10
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !11, !noalias !76, !noundef !10 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.s, label %bb.c, label %bb.e, !prof !12

bb.c:                                             ; preds = %.noexc
  %i.w = load i64, ptr %i.v, align 8, !noalias !76
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.w) #13
          to label %.noexc18 unwind label %bb.d

.noexc18:                                         ; preds = %bb.c
  unreachable

.body:                                            ; preds = %bb.i, %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.x, %bb.d ], [ %i.ab, %bb.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_(ptr noalias noundef align 8 dereferenceable(32) %i.d) #14
          to label %common.resume unwind label %bb.m

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECshFZddwsEKsN_7similar.exit.i, %bb.c, %_RNvMNtNtCshFZddwsEKsN_7similar10algorithms5myersNtB2_1V3new.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %.noexc
  %i.y = load ptr, ptr %i.v, align 8, !noalias !76, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !76
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.h, ptr %i.z, align 8, !alias.scope !73
  store i64 %i.u, ptr %i.c, align 8, !alias.scope !73
  %.sroa.4.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx.i16, align 8, !alias.scope !73
  %.sroa.5.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx.i17, align 8, !alias.scope !73
  invoke fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerSReBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noalias noundef align 8 dereferenceable(32) %i.c, ptr noalias noundef align 8 dereferenceable(32) %i.d, i64 %9, i32 noundef %10)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_(ptr noalias noundef align 8 dereferenceable(32) %i.c) #14
          to label %.body unwind label %bb.m

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECshFZddwsEKsN_7similar.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECshFZddwsEKsN_7similar.exit.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECshFZddwsEKsN_7similar.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit23 unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable

common.resume:                                    ; preds = %.body, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit23: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.m:                                             ; preds = %bb.f, %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3                      ; 2 uses
  %i.b = sub nuw i64 %3, %2                       ; 2 uses
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 9 uses
  %i.c = icmp ult i64 %5, %6                      ; 2 uses
  %i.d = sub nuw i64 %6, %5                       ; 2 uses
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 5 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 5 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !10 ; 8 uses
  %i.i = add i64 %i.h, 1                          ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !10 ; 20 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !10, !noundef !10 ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !10 ; 8 uses
  %i.r = add i64 %i.q, 1                          ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !10 ; 20 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !10, !noundef !10 ; 11 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.025.0, 1
  %i.z = add i64 %i.y, %.sroa.037.0
  %i.aa = lshr i64 %i.z, 1                        ; 3 uses
  %i.ab = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not126.not = icmp samesign ugt i64 %i.k, %i.aa
  br i1 %.not126.not, label %bb.g, label %bb.f, !prof !79

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ac = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ac)
  %.not127.not = icmp samesign ugt i64 %i.t, %i.aa
  br i1 %.not127.not, label %.lr.ph220, label %bb.h, !prof !79

.lr.ph220:                                        ; preds = %bb.g
  %i.ad = add i64 %i.h, -1                        ; 2 uses
  %i.ae = add i64 %i.q, -1                        ; 2 uses
  %i.af = add i64 %.sroa.025.0, %2                ; 3 uses
  %i.ag = add i64 %.sroa.037.0, %5                ; 3 uses
  %i.ah = icmp ult i64 %i.i, %i.k
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  %i.aj = icmp ult i64 %i.r, %i.t
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13
  unreachable

bb.i:                                             ; preds = %.lr.ph220, %._crit_edge216
  %.sroa.047.0219 = phi i64 [ 0, %.lr.ph220 ], [ %i.al, %._crit_edge216 ] ; 25 uses
  %i.al = add nuw nsw i64 %.sroa.047.0219, 1
  %i.am = tail call noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.am, label %._crit_edge221, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %11 = sub nsw i64 0, %.sroa.047.0219            ; 10 uses
  %i.an = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.047.0219, i64 %11)
  switch i8 %i.an, label %.loopexit [
    i8 -1, label %.lr.ph215.preheader
    i8 0, label %bb.k
    i8 1, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.preheader
  %i.ao = add nsw i64 %.sroa.047.0219, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.preheader
  %.sroa.11.1.peel = phi i1 [ true, %.lr.ph.preheader ], [ false, %bb.j ]
  %.sroa.7.1.peel = phi i64 [ %.sroa.047.0219, %.lr.ph.preheader ], [ %i.ao, %bb.j ] ; 2 uses
  %i.ap = icmp eq i64 %.sroa.047.0219, 0
  br i1 %i.ap, label %._crit_edge307, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.pre324 = add i64 %i.ad, %.sroa.047.0219       ; 3 uses
  %i.aq = icmp ult i64 %.pre324, %i.k
  br i1 %i.aq, label %bb.m, label %.loopexit254

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre324
  %i.as = load i64, ptr %i.ar, align 8, !noundef !10
  %i.at = add i64 %i.as, 1
  br label %bb.o

._crit_edge307:                                   ; preds = %bb.k
  br i1 %i.ah, label %bb.n, label %.loopexit255

bb.n:                                             ; preds = %._crit_edge307
  %i.au = load i64, ptr %i.ai, align 8, !noundef !10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.04.0.peel = phi i64 [ %i.au, %bb.n ], [ %i.at, %bb.m ] ; 6 uses
  %i.av = sub i64 %.sroa.04.0.peel, %.sroa.047.0219 ; 3 uses
  %i.aw = icmp ult i64 %.sroa.04.0.peel, %i.b
  %.sroa.050.0.peel = select i1 %i.a, i1 %i.aw, i1 false
  %i.ax = icmp ult i64 %i.av, %i.d
  %i.ay = and i1 %i.c, %.sroa.050.0.peel
  %or.cond175.peel = select i1 %i.ay, i1 %i.ax, i1 false
  br i1 %or.cond175.peel, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = add i64 %.sroa.04.0.peel, %2
  %i.ba = add i64 %i.av, %5
  %i.bb = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.az, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.ba, i64 noundef %6)
  %i.bc = add i64 %i.bb, %.sroa.04.0.peel
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.04.1.peel = phi i64 [ %i.bc, %bb.p ], [ %.sroa.04.0.peel, %bb.o ] ; 2 uses
  %i.bd = add i64 %.sroa.047.0219, %i.h           ; 3 uses
  %i.be = icmp ult i64 %i.bd, %i.k
  br i1 %i.be, label %bb.r, label %.loopexit256

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bd
  store i64 %.sroa.04.1.peel, ptr %i.bf, align 8
  br i1 %.not, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = sub i64 %.sroa.047.0219, %i.e           ; 2 uses
  %.sroa.010.0.peel = tail call i64 @llvm.abs.i64(i64 %i.bg, i1 false)
  %.not132.not.peel = icmp slt i64 %.sroa.010.0.peel, %.sroa.047.0219
  br i1 %.not132.not.peel, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bh = sub i64 %i.q, %i.bg                     ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %i.t
  br i1 %i.bi, label %bb.u, label %.loopexit257

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bh
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !10
  %i.bl = add i64 %i.bk, %.sroa.04.1.peel
  %.not133.peel = icmp ult i64 %i.bl, %.sroa.025.0
  br i1 %.not133.peel, label %bb.v, label %.loopexit258

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.r
  %.not.i.peel = icmp slt i64 %.sroa.7.1.peel, %11
  %or.cond176.peel = select i1 %.sroa.11.1.peel, i1 true, i1 %.not.i.peel
  br i1 %or.cond176.peel, label %.lr.ph215.preheader, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.v, %bb.bl
  %.sroa.7.0208 = phi i64 [ %.sroa.7.1, %bb.bl ], [ %.sroa.7.1.peel, %bb.v ] ; 4 uses
  %i.bm = add nsw i64 %.sroa.7.0208, -1           ; 8 uses
  %i.bn = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.bm, i64 %11)
  switch i8 %i.bn, label %.loopexit [
    i8 -1, label %.lr.ph215.preheader
    i8 0, label %bb.x
    i8 1, label %bb.w
  ]

.loopexit:                                        ; preds = %.lr.ph.preheader, %.lr.ph.peel.next
  unreachable

bb.w:                                             ; preds = %.lr.ph.peel.next
  %i.bo = add i64 %.sroa.7.0208, -2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.peel.next
  %.sroa.11.1 = phi i1 [ true, %.lr.ph.peel.next ], [ false, %bb.w ]
  %.sroa.7.1 = phi i64 [ %i.bm, %.lr.ph.peel.next ], [ %i.bo, %bb.w ] ; 2 uses
  %i.bp = icmp eq i64 %i.bm, %11
  br i1 %i.bp, label %._crit_edge306, label %bb.bb

._crit_edge306:                                   ; preds = %bb.x
  %.pre320 = add i64 %i.h, %.sroa.7.0208
  br label %._crit_edge306.a

.lr.ph215.preheader:                              ; preds = %bb.bl, %.lr.ph.peel.next, %.lr.ph.preheader, %bb.v
  %i.bq = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.047.0219, i64 %11)
  switch i8 %i.bq, label %.loopexit276 [
    i8 -1, label %._crit_edge216
    i8 0, label %bb.z
    i8 1, label %bb.y
  ]

bb.y:                                             ; preds = %.lr.ph215.preheader
  %i.br = add nsw i64 %.sroa.047.0219, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph215.preheader
  %.sroa.7160.1.peel = phi i64 [ %.sroa.047.0219, %.lr.ph215.preheader ], [ %i.br, %bb.y ] ; 2 uses
  %.sroa.12.1.peel = phi i1 [ true, %.lr.ph215.preheader ], [ false, %bb.y ]
  %i.bs = icmp eq i64 %.sroa.047.0219, 0
  br i1 %i.bs, label %._crit_edge311, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.pre316 = add i64 %i.ae, %.sroa.047.0219       ; 3 uses
  %i.bt = icmp ult i64 %.pre316, %i.t
  br i1 %i.bt, label %bb.ab, label %.loopexit279

bb.ab:                                            ; preds = %bb.aa
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre316
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !10
  %i.bw = add i64 %i.bv, 1
  br label %bb.ad

._crit_edge311:                                   ; preds = %bb.z
  br i1 %i.aj, label %bb.ac, label %.loopexit280

bb.ac:                                            ; preds = %._crit_edge311
  %i.bx = load i64, ptr %i.ak, align 8, !noundef !10
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.014.0.peel = phi i64 [ %i.bx, %bb.ac ], [ %i.bw, %bb.ab ] ; 5 uses
  %i.by = sub i64 %.sroa.014.0.peel, %.sroa.047.0219 ; 4 uses
  %i.bz = icmp ult i64 %.sroa.014.0.peel, %.sroa.025.0
  %i.ca = icmp ult i64 %i.by, %.sroa.037.0
  %or.cond.peel = and i1 %i.bz, %i.ca
  br i1 %or.cond.peel, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cb = sub i64 %i.af, %.sroa.014.0.peel
  %i.cc = sub i64 %i.ag, %i.by
  %i.cd = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %i.cc) ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.014.0.peel
  %i.cf = add i64 %i.cd, %i.by
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.020.0.peel = phi i64 [ %i.cf, %bb.ae ], [ %i.by, %bb.ad ]
  %.sroa.014.1.peel = phi i64 [ %i.ce, %bb.ae ], [ %.sroa.014.0.peel, %bb.ad ] ; 3 uses
  %i.cg = add i64 %.sroa.047.0219, %i.q           ; 3 uses
  %i.ch = icmp ult i64 %i.cg, %i.t
  br i1 %i.ch, label %bb.ag, label %.loopexit281

bb.ag:                                            ; preds = %bb.af
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cg
  store i64 %.sroa.014.1.peel, ptr %i.ci, align 8
  br i1 %.not, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.cj = sub i64 %.sroa.047.0219, %i.e           ; 2 uses
  %.sroa.024.0.peel = tail call i64 @llvm.abs.i64(i64 %i.cj, i1 false)
  %.not129.peel = icmp sgt i64 %.sroa.024.0.peel, %.sroa.047.0219
  br i1 %.not129.peel, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ck = sub i64 %i.h, %i.cj                     ; 3 uses
  %i.cl = icmp ult i64 %i.ck, %i.k
  br i1 %i.cl, label %bb.aj, label %.loopexit282

bb.aj:                                            ; preds = %bb.ai
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ck
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !10
  %i.co = add i64 %i.cn, %.sroa.014.1.peel
  %.not130.peel = icmp ult i64 %i.co, %.sroa.025.0
  br i1 %.not130.peel, label %bb.ak, label %.loopexit283

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.ag
  %.not.i134.peel = icmp slt i64 %.sroa.7160.1.peel, %11
  %or.cond177.peel = select i1 %.sroa.12.1.peel, i1 true, i1 %.not.i134.peel
  br i1 %or.cond177.peel, label %._crit_edge216, label %.lr.ph215.peel.next

.lr.ph215.peel.next:                              ; preds = %bb.ak, %bb.ay
  %.sroa.7160.0212 = phi i64 [ %.sroa.7160.1, %bb.ay ], [ %.sroa.7160.1.peel, %bb.ak ] ; 4 uses
  %i.cp = add nsw i64 %.sroa.7160.0212, -1        ; 8 uses
  %i.cq = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.cp, i64 %11)
  switch i8 %i.cq, label %.loopexit276 [
    i8 -1, label %._crit_edge216
    i8 0, label %bb.am
    i8 1, label %bb.al
  ]

.loopexit276:                                     ; preds = %.lr.ph215.preheader, %.lr.ph215.peel.next
  unreachable

bb.al:                                            ; preds = %.lr.ph215.peel.next
  %i.cr = add i64 %.sroa.7160.0212, -2
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph215.peel.next
  %.sroa.7160.1 = phi i64 [ %i.cp, %.lr.ph215.peel.next ], [ %i.cr, %bb.al ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %.lr.ph215.peel.next ], [ false, %bb.al ]
  %i.cs = icmp eq i64 %i.cp, %11
  br i1 %i.cs, label %._crit_edge310, label %bb.an

._crit_edge310:                                   ; preds = %bb.am
  %.pre312 = add i64 %i.q, %.sroa.7160.0212
  br label %._crit_edge310.a

._crit_edge216:                                   ; preds = %bb.ay, %.lr.ph215.peel.next, %.lr.ph215.preheader, %bb.ak
  %exitcond.not = icmp eq i64 %.sroa.047.0219, %i.aa
  br i1 %exitcond.not, label %._crit_edge221, label %bb.i

bb.an:                                            ; preds = %bb.am
  %.not128 = icmp eq i64 %i.cp, %.sroa.047.0219
  %.pre314 = add i64 %i.ae, %i.cp                 ; 6 uses
  br i1 %.not128, label %._crit_edge309, label %bb.ao

._crit_edge310.a:                                 ; preds = %._crit_edge310, %bb.aq
  %.pre-phi313 = phi i64 [ %.pre312, %._crit_edge310 ], [ %i.cw, %bb.aq ] ; 3 uses
  %i.ct = icmp ult i64 %.pre-phi313, %i.t
  br i1 %i.ct, label %bb.at, label %.loopexit280

._crit_edge309:                                   ; preds = %bb.an, %bb.aq
  %i.cu = icmp ult i64 %.pre314, %i.t
  br i1 %i.cu, label %bb.ar, label %.loopexit279

bb.ao:                                            ; preds = %bb.an
  %i.cv = icmp ult i64 %.pre314, %i.t
  br i1 %i.cv, label %bb.ap, label %.loopexit277

bb.ap:                                            ; preds = %bb.ao
  %i.cw = add i64 %i.q, %.sroa.7160.0212          ; 4 uses
  %i.cx = icmp ult i64 %i.cw, %i.t
  br i1 %i.cx, label %bb.aq, label %.loopexit278

.loopexit277:                                     ; preds = %bb.ao
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre314, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre314
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !10
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cw
  %i.db = load i64, ptr %i.da, align 8, !noundef !10
  %i.dc = icmp ult i64 %i.cz, %i.db
  br i1 %i.dc, label %._crit_edge310.a, label %._crit_edge309

.loopexit278:                                     ; preds = %bb.ap
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cw, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13
  unreachable

bb.ar:                                            ; preds = %._crit_edge309
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre314
  %i.de = load i64, ptr %i.dd, align 8, !noundef !10
  %i.df = add i64 %i.de, 1
  br label %bb.as

.loopexit279:                                     ; preds = %bb.aa, %._crit_edge309
  %.lcssa240 = phi i64 [ %.pre314, %._crit_edge309 ], [ %.pre316, %bb.aa ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa240, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #13
  unreachable

bb.as:                                            ; preds = %bb.at, %bb.ar
  %.sroa.014.0 = phi i64 [ %i.dk, %bb.at ], [ %i.df, %bb.ar ] ; 5 uses
  %i.dg = sub i64 %.sroa.014.0, %i.cp             ; 4 uses
  %i.dh = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.di = icmp ult i64 %i.dg, %.sroa.037.0
  %or.cond = and i1 %i.dh, %i.di
  br i1 %or.cond, label %bb.av, label %bb.au

bb.at:                                            ; preds = %._crit_edge310.a
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi313
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !10
  br label %bb.as

.loopexit280:                                     ; preds = %._crit_edge311, %._crit_edge310.a
  %.lcssa241 = phi i64 [ %.pre-phi313, %._crit_edge310.a ], [ %i.r, %._crit_edge311 ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa241, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
  unreachable

bb.au:                                            ; preds = %bb.as, %bb.av
  %.sroa.020.0 = phi i64 [ %i.dr, %bb.av ], [ %i.dg, %bb.as ]
  %.sroa.014.1 = phi i64 [ %i.dq, %bb.av ], [ %.sroa.014.0, %bb.as ] ; 3 uses
  %i.dl = add i64 %i.cp, %i.q                     ; 3 uses
  %i.dm = icmp ult i64 %i.dl, %i.t
  br i1 %i.dm, label %bb.aw, label %.loopexit281

bb.av:                                            ; preds = %bb.as
  %i.dn = sub i64 %i.af, %.sroa.014.0
  %i.do = sub i64 %i.ag, %i.dg
  %i.dp = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %i.dn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %i.do) ; 2 uses
  %i.dq = add i64 %i.dp, %.sroa.014.0
  %i.dr = add i64 %i.dp, %i.dg
  br label %bb.au

bb.aw:                                            ; preds = %bb.au
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.dl
  store i64 %.sroa.014.1, ptr %i.ds, align 8
  br i1 %.not, label %bb.ax, label %bb.ay

.loopexit281:                                     ; preds = %bb.af, %bb.au
  %.lcssa242 = phi i64 [ %i.dl, %bb.au ], [ %i.cg, %bb.af ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa242, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.dt = sub i64 %i.cp, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.dt, i1 false)
  %.not129 = icmp sgt i64 %.sroa.024.0, %.sroa.047.0219
  br i1 %.not129, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %bb.ba, %bb.aw
  %.not.i134 = icmp slt i64 %.sroa.7160.1, %11
  %or.cond177 = or i1 %.sroa.12.1, %.not.i134
  br i1 %or.cond177, label %._crit_edge216, label %.lr.ph215.peel.next, !llvm.loop !80

bb.az:                                            ; preds = %bb.ax
  %i.du = sub i64 %i.h, %i.dt                     ; 3 uses
  %i.dv = icmp ult i64 %i.du, %i.k
  br i1 %i.dv, label %bb.ba, label %.loopexit282

bb.ba:                                            ; preds = %bb.az
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.du
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !10
  %i.dy = add i64 %i.dx, %.sroa.014.1
  %.not130 = icmp ult i64 %i.dy, %.sroa.025.0
  br i1 %.not130, label %bb.ay, label %.loopexit283

.loopexit282:                                     ; preds = %bb.ai, %bb.az
  %.lcssa249 = phi i64 [ %i.du, %bb.az ], [ %i.ck, %bb.ai ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa249, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #13
  unreachable

.loopexit283:                                     ; preds = %bb.aj, %bb.ba
  %.sroa.020.0.lcssa248 = phi i64 [ %.sroa.020.0, %bb.ba ], [ %.sroa.020.0.peel, %bb.aj ]
  %.sroa.014.1.lcssa246 = phi i64 [ %.sroa.014.1, %bb.ba ], [ %.sroa.014.1.peel, %bb.aj ]
  %i.dz = sub i64 %i.af, %.sroa.014.1.lcssa246
  %i.ea = sub i64 %i.ag, %.sroa.020.0.lcssa248
  br label %._crit_edge221.sink.split

bb.bb:                                            ; preds = %bb.x
  %.not131 = icmp eq i64 %i.bm, %.sroa.047.0219
  %.pre322 = add i64 %i.ad, %i.bm                 ; 6 uses
  br i1 %.not131, label %._crit_edge305, label %bb.bc

._crit_edge306.a:                                 ; preds = %._crit_edge306, %bb.be
  %.pre-phi321 = phi i64 [ %.pre320, %._crit_edge306 ], [ %i.ee, %bb.be ] ; 3 uses
  %i.eb = icmp ult i64 %.pre-phi321, %i.k
  br i1 %i.eb, label %bb.bh, label %.loopexit255

._crit_edge305:                                   ; preds = %bb.bb, %bb.be
  %i.ec = icmp ult i64 %.pre322, %i.k
  br i1 %i.ec, label %bb.bf, label %.loopexit254

bb.bc:                                            ; preds = %bb.bb
  %i.ed = icmp ult i64 %.pre322, %i.k
  br i1 %i.ed, label %bb.bd, label %.loopexit252

bb.bd:                                            ; preds = %bb.bc
  %i.ee = add i64 %i.h, %.sroa.7.0208             ; 4 uses
  %i.ef = icmp ult i64 %i.ee, %i.k
  br i1 %i.ef, label %bb.be, label %.loopexit253

.loopexit252:                                     ; preds = %bb.bc
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre322, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #13
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre322
  %i.eh = load i64, ptr %i.eg, align 8, !noundef !10
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ee
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !10
  %i.ek = icmp ult i64 %i.eh, %i.ej
  br i1 %i.ek, label %._crit_edge306.a, label %._crit_edge305

.loopexit253:                                     ; preds = %bb.bd
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ee, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #13
  unreachable

bb.bf:                                            ; preds = %._crit_edge305
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre322
  %i.em = load i64, ptr %i.el, align 8, !noundef !10
  %i.en = add i64 %i.em, 1
  br label %bb.bg

.loopexit254:                                     ; preds = %bb.l, %._crit_edge305
  %.lcssa225 = phi i64 [ %.pre322, %._crit_edge305 ], [ %.pre324, %bb.l ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa225, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #13
  unreachable

bb.bg:                                            ; preds = %bb.bh, %bb.bf
  %.sroa.04.0 = phi i64 [ %i.et, %bb.bh ], [ %i.en, %bb.bf ] ; 6 uses
  %i.eo = sub i64 %.sroa.04.0, %i.bm              ; 3 uses
  %i.ep = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.050.0 = select i1 %i.a, i1 %i.ep, i1 false
  %i.eq = icmp ult i64 %i.eo, %i.d
  %i.er = and i1 %i.c, %.sroa.050.0
  %or.cond175 = select i1 %i.er, i1 %i.eq, i1 false
  br i1 %or.cond175, label %bb.bj, label %bb.bi

bb.bh:                                            ; preds = %._crit_edge306.a
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi321
  %i.et = load i64, ptr %i.es, align 8, !noundef !10
  br label %bb.bg

.loopexit255:                                     ; preds = %._crit_edge307, %._crit_edge306.a
  %.lcssa226 = phi i64 [ %.pre-phi321, %._crit_edge306.a ], [ %i.i, %._crit_edge307 ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa226, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #13
  unreachable

bb.bi:                                            ; preds = %bb.bg, %bb.bj
  %.sroa.04.1 = phi i64 [ %i.ez, %bb.bj ], [ %.sroa.04.0, %bb.bg ] ; 2 uses
  %i.eu = add i64 %i.bm, %i.h                     ; 3 uses
  %i.ev = icmp ult i64 %i.eu, %i.k
  br i1 %i.ev, label %bb.bk, label %.loopexit256

bb.bj:                                            ; preds = %bb.bg
  %i.ew = add i64 %.sroa.04.0, %2
  %i.ex = add i64 %i.eo, %5
  %i.ey = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.ew, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.ex, i64 noundef %6)
  %i.ez = add i64 %i.ey, %.sroa.04.0
  br label %bb.bi

bb.bk:                                            ; preds = %bb.bi
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.eu
  store i64 %.sroa.04.1, ptr %i.fa, align 8
  br i1 %.not, label %bb.bl, label %bb.bm

.loopexit256:                                     ; preds = %bb.q, %bb.bi
  %.lcssa232 = phi i64 [ %i.eu, %bb.bi ], [ %i.bd, %bb.q ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa232, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #13
  unreachable

bb.bl:                                            ; preds = %bb.bm, %bb.bo, %bb.bk
  %.not.i = icmp slt i64 %.sroa.7.1, %11
  %or.cond176 = or i1 %.sroa.11.1, %.not.i
  br i1 %or.cond176, label %.lr.ph215.preheader, label %.lr.ph.peel.next, !llvm.loop !82

bb.bm:                                            ; preds = %bb.bk
  %i.fb = sub i64 %i.bm, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.fb, i1 false)
  %.not132.not = icmp slt i64 %.sroa.010.0, %.sroa.047.0219
  br i1 %.not132.not, label %bb.bn, label %bb.bl

bb.bn:                                            ; preds = %bb.bm
  %i.fc = sub i64 %i.q, %i.fb                     ; 3 uses
  %i.fd = icmp ult i64 %i.fc, %i.t
  br i1 %i.fd, label %bb.bo, label %.loopexit257

bb.bo:                                            ; preds = %bb.bn
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.fc
  %i.ff = load i64, ptr %i.fe, align 8, !noundef !10
  %i.fg = add i64 %i.ff, %.sroa.04.1
  %.not133 = icmp ult i64 %i.fg, %.sroa.025.0
  br i1 %.not133, label %bb.bl, label %.loopexit258

.loopexit257:                                     ; preds = %bb.t, %bb.bn
  %.lcssa235 = phi i64 [ %i.fc, %bb.bn ], [ %i.bh, %bb.t ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa235, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #13
  unreachable

.loopexit258:                                     ; preds = %bb.u, %bb.bo
  %.sroa.04.0.lcssa231 = phi i64 [ %.sroa.04.0, %bb.bo ], [ %.sroa.04.0.peel, %bb.u ]
  %.lcssa229 = phi i64 [ %i.eo, %bb.bo ], [ %i.av, %bb.u ]
  %i.fh = add i64 %.sroa.04.0.lcssa231, %2
  %i.fi = add i64 %.lcssa229, %5
  br label %._crit_edge221.sink.split

._crit_edge221.sink.split:                        ; preds = %.loopexit258, %.loopexit283
  %.sink478.a = phi i64 [ %i.dz, %.loopexit283 ], [ %i.fh, %.loopexit258 ]
  %.sink476 = phi i64 [ %i.ea, %.loopexit283 ], [ %i.fi, %.loopexit258 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink478.a, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink476, ptr %i.fk, align 8
  br label %._crit_edge221

._crit_edge221:                                   ; preds = %bb.i, %._crit_edge216, %._crit_edge221.sink.split
  %.sink = phi i64 [ 1, %._crit_edge221.sink.split ], [ 0, %._crit_edge216 ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeSReB13_EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 576460752303423488) %6, i64 noundef %7, i64 noundef %8, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %9, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %10, i64 %11, i32 noundef range(i32 -1, 1000000000) %12) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %3, %4                      ; 2 uses
  %i.b = sub nuw i64 %4, %3                       ; 2 uses
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 %3) ; 9 uses
  %i.c = icmp ult i64 %7, %8                      ; 2 uses
  %i.d = sub nuw i64 %8, %7                       ; 2 uses
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %8, i64 %7) ; 5 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 5 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !10 ; 8 uses
  %i.i = add i64 %i.h, 1                          ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !10 ; 20 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !10, !noundef !10 ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !10 ; 8 uses
  %i.r = add i64 %i.q, 1                          ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !10 ; 20 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !10, !noundef !10 ; 11 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.025.0, 1
  %i.z = add i64 %i.y, %.sroa.037.0
  %i.aa = lshr i64 %i.z, 1                        ; 3 uses
  %i.ab = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not126.not = icmp samesign ugt i64 %i.k, %i.aa
  br i1 %.not126.not, label %bb.g, label %bb.f, !prof !79

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ac = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ac)
  %.not127.not = icmp samesign ugt i64 %i.t, %i.aa
  br i1 %.not127.not, label %.lr.ph220, label %bb.h, !prof !79

.lr.ph220:                                        ; preds = %bb.g
  %i.ad = add i64 %i.h, -1                        ; 2 uses
  %i.ae = add i64 %i.q, -1                        ; 2 uses
  %i.af = add i64 %.sroa.025.0, %3                ; 3 uses
  %i.ag = add i64 %.sroa.037.0, %7                ; 3 uses
  %i.ah = icmp ult i64 %i.i, %i.k
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  %i.aj = icmp ult i64 %i.r, %i.t
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13
  unreachable

bb.i:                                             ; preds = %.lr.ph220, %._crit_edge216
  %.sroa.047.0219 = phi i64 [ 0, %.lr.ph220 ], [ %i.al, %._crit_edge216 ] ; 25 uses
  %i.al = add nuw nsw i64 %.sroa.047.0219, 1
  %i.am = tail call noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %11, i32 noundef %12)
  br i1 %i.am, label %._crit_edge221, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %13 = sub nsw i64 0, %.sroa.047.0219            ; 10 uses
  %i.an = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.047.0219, i64 %13)
  switch i8 %i.an, label %.loopexit [
    i8 -1, label %.lr.ph215.preheader
    i8 0, label %bb.k
    i8 1, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.preheader
  %i.ao = add nsw i64 %.sroa.047.0219, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.preheader
  %.sroa.11.1.peel = phi i1 [ true, %.lr.ph.preheader ], [ false, %bb.j ]
  %.sroa.7.1.peel = phi i64 [ %.sroa.047.0219, %.lr.ph.preheader ], [ %i.ao, %bb.j ] ; 2 uses
  %i.ap = icmp eq i64 %.sroa.047.0219, 0
  br i1 %i.ap, label %._crit_edge307, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.pre324 = add i64 %i.ad, %.sroa.047.0219       ; 3 uses
  %i.aq = icmp ult i64 %.pre324, %i.k
  br i1 %i.aq, label %bb.m, label %.loopexit254

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre324
  %i.as = load i64, ptr %i.ar, align 8, !noundef !10
  %i.at = add i64 %i.as, 1
  br label %bb.o

._crit_edge307:                                   ; preds = %bb.k
  br i1 %i.ah, label %bb.n, label %.loopexit255

bb.n:                                             ; preds = %._crit_edge307
  %i.au = load i64, ptr %i.ai, align 8, !noundef !10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.04.0.peel = phi i64 [ %i.au, %bb.n ], [ %i.at, %bb.m ] ; 6 uses
  %i.av = sub i64 %.sroa.04.0.peel, %.sroa.047.0219 ; 3 uses
  %i.aw = icmp ult i64 %.sroa.04.0.peel, %i.b
  %.sroa.050.0.peel = select i1 %i.a, i1 %i.aw, i1 false
  %i.ax = icmp ult i64 %i.av, %i.d
  %i.ay = and i1 %i.c, %.sroa.050.0.peel
  %or.cond175.peel = select i1 %i.ay, i1 %i.ax, i1 false
  br i1 %or.cond175.peel, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = add i64 %.sroa.04.0.peel, %3
  %i.ba = add i64 %i.av, %7
  %i.bb = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenSReB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.az, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.ba, i64 noundef %8)
  %i.bc = add i64 %i.bb, %.sroa.04.0.peel
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.04.1.peel = phi i64 [ %i.bc, %bb.p ], [ %.sroa.04.0.peel, %bb.o ] ; 2 uses
  %i.bd = add i64 %.sroa.047.0219, %i.h           ; 3 uses
  %i.be = icmp ult i64 %i.bd, %i.k
  br i1 %i.be, label %bb.r, label %.loopexit256

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bd
  store i64 %.sroa.04.1.peel, ptr %i.bf, align 8
  br i1 %.not, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = sub i64 %.sroa.047.0219, %i.e           ; 2 uses
  %.sroa.010.0.peel = tail call i64 @llvm.abs.i64(i64 %i.bg, i1 false)
  %.not132.not.peel = icmp slt i64 %.sroa.010.0.peel, %.sroa.047.0219
  br i1 %.not132.not.peel, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bh = sub i64 %i.q, %i.bg                     ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %i.t
  br i1 %i.bi, label %bb.u, label %.loopexit257

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bh
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !10
  %i.bl = add i64 %i.bk, %.sroa.04.1.peel
  %.not133.peel = icmp ult i64 %i.bl, %.sroa.025.0
  br i1 %.not133.peel, label %bb.v, label %.loopexit258

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.r
  %.not.i.peel = icmp slt i64 %.sroa.7.1.peel, %13
  %or.cond176.peel = select i1 %.sroa.11.1.peel, i1 true, i1 %.not.i.peel
  br i1 %or.cond176.peel, label %.lr.ph215.preheader, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.v, %bb.bl
  %.sroa.7.0208 = phi i64 [ %.sroa.7.1, %bb.bl ], [ %.sroa.7.1.peel, %bb.v ] ; 4 uses
  %i.bm = add nsw i64 %.sroa.7.0208, -1           ; 8 uses
  %i.bn = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.bm, i64 %13)
  switch i8 %i.bn, label %.loopexit [
    i8 -1, label %.lr.ph215.preheader
    i8 0, label %bb.x
    i8 1, label %bb.w
  ]

.loopexit:                                        ; preds = %.lr.ph.preheader, %.lr.ph.peel.next
  unreachable

bb.w:                                             ; preds = %.lr.ph.peel.next
  %i.bo = add i64 %.sroa.7.0208, -2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.peel.next
  %.sroa.11.1 = phi i1 [ true, %.lr.ph.peel.next ], [ false, %bb.w ]
  %.sroa.7.1 = phi i64 [ %i.bm, %.lr.ph.peel.next ], [ %i.bo, %bb.w ] ; 2 uses
  %i.bp = icmp eq i64 %i.bm, %13
  br i1 %i.bp, label %._crit_edge306, label %bb.bb

._crit_edge306:                                   ; preds = %bb.x
  %.pre320 = add i64 %i.h, %.sroa.7.0208
  br label %._crit_edge306.a

.lr.ph215.preheader:                              ; preds = %bb.bl, %.lr.ph.peel.next, %.lr.ph.preheader, %bb.v
  %i.bq = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.047.0219, i64 %13)
  switch i8 %i.bq, label %.loopexit276 [
    i8 -1, label %._crit_edge216
    i8 0, label %bb.z
    i8 1, label %bb.y
  ]

bb.y:                                             ; preds = %.lr.ph215.preheader
  %i.br = add nsw i64 %.sroa.047.0219, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph215.preheader
  %.sroa.7160.1.peel = phi i64 [ %.sroa.047.0219, %.lr.ph215.preheader ], [ %i.br, %bb.y ] ; 2 uses
  %.sroa.12.1.peel = phi i1 [ true, %.lr.ph215.preheader ], [ false, %bb.y ]
  %i.bs = icmp eq i64 %.sroa.047.0219, 0
  br i1 %i.bs, label %._crit_edge311, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.pre316 = add i64 %i.ae, %.sroa.047.0219       ; 3 uses
  %i.bt = icmp ult i64 %.pre316, %i.t
  br i1 %i.bt, label %bb.ab, label %.loopexit279

bb.ab:                                            ; preds = %bb.aa
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre316
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !10
  %i.bw = add i64 %i.bv, 1
  br label %bb.ad

._crit_edge311:                                   ; preds = %bb.z
  br i1 %i.aj, label %bb.ac, label %.loopexit280

bb.ac:                                            ; preds = %._crit_edge311
  %i.bx = load i64, ptr %i.ak, align 8, !noundef !10
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.014.0.peel = phi i64 [ %i.bx, %bb.ac ], [ %i.bw, %bb.ab ] ; 5 uses
  %i.by = sub i64 %.sroa.014.0.peel, %.sroa.047.0219 ; 4 uses
  %i.bz = icmp ult i64 %.sroa.014.0.peel, %.sroa.025.0
  %i.ca = icmp ult i64 %i.by, %.sroa.037.0
  %or.cond.peel = and i1 %i.bz, %i.ca
  br i1 %or.cond.peel, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cb = sub i64 %i.af, %.sroa.014.0.peel
  %i.cc = sub i64 %i.ag, %i.by
  %i.cd = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %i.cc) ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.014.0.peel
  %i.cf = add i64 %i.cd, %i.by
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.020.0.peel = phi i64 [ %i.cf, %bb.ae ], [ %i.by, %bb.ad ]
  %.sroa.014.1.peel = phi i64 [ %i.ce, %bb.ae ], [ %.sroa.014.0.peel, %bb.ad ] ; 3 uses
  %i.cg = add i64 %.sroa.047.0219, %i.q           ; 3 uses
  %i.ch = icmp ult i64 %i.cg, %i.t
  br i1 %i.ch, label %bb.ag, label %.loopexit281

bb.ag:                                            ; preds = %bb.af
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cg
  store i64 %.sroa.014.1.peel, ptr %i.ci, align 8
  br i1 %.not, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.cj = sub i64 %.sroa.047.0219, %i.e           ; 2 uses
  %.sroa.024.0.peel = tail call i64 @llvm.abs.i64(i64 %i.cj, i1 false)
  %.not129.peel = icmp sgt i64 %.sroa.024.0.peel, %.sroa.047.0219
  br i1 %.not129.peel, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ck = sub i64 %i.h, %i.cj                     ; 3 uses
  %i.cl = icmp ult i64 %i.ck, %i.k
  br i1 %i.cl, label %bb.aj, label %.loopexit282

bb.aj:                                            ; preds = %bb.ai
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ck
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !10
  %i.co = add i64 %i.cn, %.sroa.014.1.peel
  %.not130.peel = icmp ult i64 %i.co, %.sroa.025.0
  br i1 %.not130.peel, label %bb.ak, label %.loopexit283

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.ag
  %.not.i134.peel = icmp slt i64 %.sroa.7160.1.peel, %13
  %or.cond177.peel = select i1 %.sroa.12.1.peel, i1 true, i1 %.not.i134.peel
  br i1 %or.cond177.peel, label %._crit_edge216, label %.lr.ph215.peel.next

.lr.ph215.peel.next:                              ; preds = %bb.ak, %bb.ay
  %.sroa.7160.0212 = phi i64 [ %.sroa.7160.1, %bb.ay ], [ %.sroa.7160.1.peel, %bb.ak ] ; 4 uses
  %i.cp = add nsw i64 %.sroa.7160.0212, -1        ; 8 uses
  %i.cq = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.cp, i64 %13)
  switch i8 %i.cq, label %.loopexit276 [
    i8 -1, label %._crit_edge216
    i8 0, label %bb.am
    i8 1, label %bb.al
  ]

.loopexit276:                                     ; preds = %.lr.ph215.preheader, %.lr.ph215.peel.next
  unreachable

bb.al:                                            ; preds = %.lr.ph215.peel.next
  %i.cr = add i64 %.sroa.7160.0212, -2
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph215.peel.next
  %.sroa.7160.1 = phi i64 [ %i.cp, %.lr.ph215.peel.next ], [ %i.cr, %bb.al ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %.lr.ph215.peel.next ], [ false, %bb.al ]
  %i.cs = icmp eq i64 %i.cp, %13
  br i1 %i.cs, label %._crit_edge310, label %bb.an

._crit_edge310:                                   ; preds = %bb.am
  %.pre312 = add i64 %i.q, %.sroa.7160.0212
  br label %._crit_edge310.a

._crit_edge216:                                   ; preds = %bb.ay, %.lr.ph215.peel.next, %.lr.ph215.preheader, %bb.ak
  %exitcond.not = icmp eq i64 %.sroa.047.0219, %i.aa
  br i1 %exitcond.not, label %._crit_edge221, label %bb.i

bb.an:                                            ; preds = %bb.am
  %.not128 = icmp eq i64 %i.cp, %.sroa.047.0219
  %.pre314 = add i64 %i.ae, %i.cp                 ; 6 uses
  br i1 %.not128, label %._crit_edge309, label %bb.ao

._crit_edge310.a:                                 ; preds = %._crit_edge310, %bb.aq
  %.pre-phi313 = phi i64 [ %.pre312, %._crit_edge310 ], [ %i.cw, %bb.aq ] ; 3 uses
  %i.ct = icmp ult i64 %.pre-phi313, %i.t
  br i1 %i.ct, label %bb.at, label %.loopexit280

._crit_edge309:                                   ; preds = %bb.an, %bb.aq
  %i.cu = icmp ult i64 %.pre314, %i.t
  br i1 %i.cu, label %bb.ar, label %.loopexit279

bb.ao:                                            ; preds = %bb.an
  %i.cv = icmp ult i64 %.pre314, %i.t
  br i1 %i.cv, label %bb.ap, label %.loopexit277

bb.ap:                                            ; preds = %bb.ao
  %i.cw = add i64 %i.q, %.sroa.7160.0212          ; 4 uses
  %i.cx = icmp ult i64 %i.cw, %i.t
  br i1 %i.cx, label %bb.aq, label %.loopexit278

.loopexit277:                                     ; preds = %bb.ao
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre314, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre314
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !10
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cw
  %i.db = load i64, ptr %i.da, align 8, !noundef !10
  %i.dc = icmp ult i64 %i.cz, %i.db
  br i1 %i.dc, label %._crit_edge310.a, label %._crit_edge309

.loopexit278:                                     ; preds = %bb.ap
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cw, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13
  unreachable

bb.ar:                                            ; preds = %._crit_edge309
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre314
  %i.de = load i64, ptr %i.dd, align 8, !noundef !10
  %i.df = add i64 %i.de, 1
  br label %bb.as

.loopexit279:                                     ; preds = %bb.aa, %._crit_edge309
  %.lcssa240 = phi i64 [ %.pre314, %._crit_edge309 ], [ %.pre316, %bb.aa ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa240, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #13
  unreachable

bb.as:                                            ; preds = %bb.at, %bb.ar
  %.sroa.014.0 = phi i64 [ %i.dk, %bb.at ], [ %i.df, %bb.ar ] ; 5 uses
  %i.dg = sub i64 %.sroa.014.0, %i.cp             ; 4 uses
  %i.dh = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.di = icmp ult i64 %i.dg, %.sroa.037.0
  %or.cond = and i1 %i.dh, %i.di
  br i1 %or.cond, label %bb.av, label %bb.au

bb.at:                                            ; preds = %._crit_edge310.a
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi313
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !10
  br label %bb.as

.loopexit280:                                     ; preds = %._crit_edge311, %._crit_edge310.a
  %.lcssa241 = phi i64 [ %.pre-phi313, %._crit_edge310.a ], [ %i.r, %._crit_edge311 ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa241, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
  unreachable

bb.au:                                            ; preds = %bb.as, %bb.av
  %.sroa.020.0 = phi i64 [ %i.dr, %bb.av ], [ %i.dg, %bb.as ]
  %.sroa.014.1 = phi i64 [ %i.dq, %bb.av ], [ %.sroa.014.0, %bb.as ] ; 3 uses
  %i.dl = add i64 %i.cp, %i.q                     ; 3 uses
  %i.dm = icmp ult i64 %i.dl, %i.t
  br i1 %i.dm, label %bb.aw, label %.loopexit281

bb.av:                                            ; preds = %bb.as
  %i.dn = sub i64 %i.af, %.sroa.014.0
  %i.do = sub i64 %i.ag, %i.dg
  %i.dp = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.dn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %i.do) ; 2 uses
  %i.dq = add i64 %i.dp, %.sroa.014.0
  %i.dr = add i64 %i.dp, %i.dg
  br label %bb.au

bb.aw:                                            ; preds = %bb.au
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.dl
  store i64 %.sroa.014.1, ptr %i.ds, align 8
  br i1 %.not, label %bb.ax, label %bb.ay

.loopexit281:                                     ; preds = %bb.af, %bb.au
  %.lcssa242 = phi i64 [ %i.dl, %bb.au ], [ %i.cg, %bb.af ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa242, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.dt = sub i64 %i.cp, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.dt, i1 false)
  %.not129 = icmp sgt i64 %.sroa.024.0, %.sroa.047.0219
  br i1 %.not129, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %bb.ba, %bb.aw
  %.not.i134 = icmp slt i64 %.sroa.7160.1, %13
  %or.cond177 = or i1 %.sroa.12.1, %.not.i134
  br i1 %or.cond177, label %._crit_edge216, label %.lr.ph215.peel.next, !llvm.loop !83

bb.az:                                            ; preds = %bb.ax
  %i.du = sub i64 %i.h, %i.dt                     ; 3 uses
  %i.dv = icmp ult i64 %i.du, %i.k
  br i1 %i.dv, label %bb.ba, label %.loopexit282

bb.ba:                                            ; preds = %bb.az
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.du
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !10
  %i.dy = add i64 %i.dx, %.sroa.014.1
  %.not130 = icmp ult i64 %i.dy, %.sroa.025.0
  br i1 %.not130, label %bb.ay, label %.loopexit283

.loopexit282:                                     ; preds = %bb.ai, %bb.az
  %.lcssa249 = phi i64 [ %i.du, %bb.az ], [ %i.ck, %bb.ai ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa249, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #13
  unreachable

.loopexit283:                                     ; preds = %bb.aj, %bb.ba
  %.sroa.020.0.lcssa248 = phi i64 [ %.sroa.020.0, %bb.ba ], [ %.sroa.020.0.peel, %bb.aj ]
  %.sroa.014.1.lcssa246 = phi i64 [ %.sroa.014.1, %bb.ba ], [ %.sroa.014.1.peel, %bb.aj ]
  %i.dz = sub i64 %i.af, %.sroa.014.1.lcssa246
  %i.ea = sub i64 %i.ag, %.sroa.020.0.lcssa248
  br label %._crit_edge221.sink.split

bb.bb:                                            ; preds = %bb.x
  %.not131 = icmp eq i64 %i.bm, %.sroa.047.0219
  %.pre322 = add i64 %i.ad, %i.bm                 ; 6 uses
  br i1 %.not131, label %._crit_edge305, label %bb.bc

._crit_edge306.a:                                 ; preds = %._crit_edge306, %bb.be
  %.pre-phi321 = phi i64 [ %.pre320, %._crit_edge306 ], [ %i.ee, %bb.be ] ; 3 uses
  %i.eb = icmp ult i64 %.pre-phi321, %i.k
  br i1 %i.eb, label %bb.bh, label %.loopexit255

._crit_edge305:                                   ; preds = %bb.bb, %bb.be
  %i.ec = icmp ult i64 %.pre322, %i.k
  br i1 %i.ec, label %bb.bf, label %.loopexit254

bb.bc:                                            ; preds = %bb.bb
  %i.ed = icmp ult i64 %.pre322, %i.k
  br i1 %i.ed, label %bb.bd, label %.loopexit252

bb.bd:                                            ; preds = %bb.bc
  %i.ee = add i64 %i.h, %.sroa.7.0208             ; 4 uses
  %i.ef = icmp ult i64 %i.ee, %i.k
  br i1 %i.ef, label %bb.be, label %.loopexit253

.loopexit252:                                     ; preds = %bb.bc
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre322, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #13
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre322
  %i.eh = load i64, ptr %i.eg, align 8, !noundef !10
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ee
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !10
  %i.ek = icmp ult i64 %i.eh, %i.ej
  br i1 %i.ek, label %._crit_edge306.a, label %._crit_edge305

.loopexit253:                                     ; preds = %bb.bd
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ee, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #13
  unreachable

bb.bf:                                            ; preds = %._crit_edge305
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre322
  %i.em = load i64, ptr %i.el, align 8, !noundef !10
  %i.en = add i64 %i.em, 1
  br label %bb.bg

.loopexit254:                                     ; preds = %bb.l, %._crit_edge305
  %.lcssa225 = phi i64 [ %.pre322, %._crit_edge305 ], [ %.pre324, %bb.l ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa225, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #13
  unreachable

bb.bg:                                            ; preds = %bb.bh, %bb.bf
  %.sroa.04.0 = phi i64 [ %i.et, %bb.bh ], [ %i.en, %bb.bf ] ; 6 uses
  %i.eo = sub i64 %.sroa.04.0, %i.bm              ; 3 uses
  %i.ep = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.050.0 = select i1 %i.a, i1 %i.ep, i1 false
  %i.eq = icmp ult i64 %i.eo, %i.d
  %i.er = and i1 %i.c, %.sroa.050.0
  %or.cond175 = select i1 %i.er, i1 %i.eq, i1 false
  br i1 %or.cond175, label %bb.bj, label %bb.bi

bb.bh:                                            ; preds = %._crit_edge306.a
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi321
  %i.et = load i64, ptr %i.es, align 8, !noundef !10
  br label %bb.bg

.loopexit255:                                     ; preds = %._crit_edge307, %._crit_edge306.a
  %.lcssa226 = phi i64 [ %.pre-phi321, %._crit_edge306.a ], [ %i.i, %._crit_edge307 ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa226, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #13
  unreachable

bb.bi:                                            ; preds = %bb.bg, %bb.bj
  %.sroa.04.1 = phi i64 [ %i.ez, %bb.bj ], [ %.sroa.04.0, %bb.bg ] ; 2 uses
  %i.eu = add i64 %i.bm, %i.h                     ; 3 uses
  %i.ev = icmp ult i64 %i.eu, %i.k
  br i1 %i.ev, label %bb.bk, label %.loopexit256

bb.bj:                                            ; preds = %bb.bg
  %i.ew = add i64 %.sroa.04.0, %3
  %i.ex = add i64 %i.eo, %7
  %i.ey = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenSReB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ew, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.ex, i64 noundef %8)
  %i.ez = add i64 %i.ey, %.sroa.04.0
  br label %bb.bi

bb.bk:                                            ; preds = %bb.bi
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.eu
  store i64 %.sroa.04.1, ptr %i.fa, align 8
  br i1 %.not, label %bb.bl, label %bb.bm

.loopexit256:                                     ; preds = %bb.q, %bb.bi
  %.lcssa232 = phi i64 [ %i.eu, %bb.bi ], [ %i.bd, %bb.q ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa232, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #13
  unreachable

bb.bl:                                            ; preds = %bb.bm, %bb.bo, %bb.bk
  %.not.i = icmp slt i64 %.sroa.7.1, %13
  %or.cond176 = or i1 %.sroa.11.1, %.not.i
  br i1 %or.cond176, label %.lr.ph215.preheader, label %.lr.ph.peel.next, !llvm.loop !84

bb.bm:                                            ; preds = %bb.bk
  %i.fb = sub i64 %i.bm, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.fb, i1 false)
  %.not132.not = icmp slt i64 %.sroa.010.0, %.sroa.047.0219
  br i1 %.not132.not, label %bb.bn, label %bb.bl

bb.bn:                                            ; preds = %bb.bm
  %i.fc = sub i64 %i.q, %i.fb                     ; 3 uses
  %i.fd = icmp ult i64 %i.fc, %i.t
  br i1 %i.fd, label %bb.bo, label %.loopexit257

bb.bo:                                            ; preds = %bb.bn
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.fc
  %i.ff = load i64, ptr %i.fe, align 8, !noundef !10
  %i.fg = add i64 %i.ff, %.sroa.04.1
  %.not133 = icmp ult i64 %i.fg, %.sroa.025.0
  br i1 %.not133, label %bb.bl, label %.loopexit258

.loopexit257:                                     ; preds = %bb.t, %bb.bn
  %.lcssa235 = phi i64 [ %i.fc, %bb.bn ], [ %i.bh, %bb.t ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa235, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #13
  unreachable

.loopexit258:                                     ; preds = %bb.u, %bb.bo
  %.sroa.04.0.lcssa231 = phi i64 [ %.sroa.04.0, %bb.bo ], [ %.sroa.04.0.peel, %bb.u ]
  %.lcssa229 = phi i64 [ %i.eo, %bb.bo ], [ %i.av, %bb.u ]
  %i.fh = add i64 %.sroa.04.0.lcssa231, %3
  %i.fi = add i64 %.lcssa229, %7
  br label %._crit_edge221.sink.split

._crit_edge221.sink.split:                        ; preds = %.loopexit258, %.loopexit283
  %.sink478.a = phi i64 [ %i.dz, %.loopexit283 ], [ %i.fh, %.loopexit258 ]
  %.sink476 = phi i64 [ %i.ea, %.loopexit283 ], [ %i.fi, %.loopexit258 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink478.a, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink476, ptr %i.fk, align 8
  br label %._crit_edge221

._crit_edge221:                                   ; preds = %bb.i, %._crit_edge216, %._crit_edge221.sink.split
  %.sink = phi i64 [ 1, %._crit_edge221.sink.split ], [ 0, %._crit_edge216 ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit, %bb.a
  %i.c = add i64 %i.b, %2                         ; 10 uses
  %i.d = add i64 %i.b, %5                         ; 10 uses
  %i.e = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.d, i64 noundef %6) ; 4 uses
  %i.f = sub i64 %3, %i.e                         ; 6 uses
  %i.g = sub i64 %6, %i.e                         ; 6 uses
  %.not16 = icmp ult i64 %i.c, %i.f               ; 2 uses
  %.not17 = icmp ult i64 %i.d, %i.g               ; 2 uses
  %or.cond = or i1 %.not16, %.not17
  br i1 %or.cond, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !91, !nonnull !10, !align !92, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !93, !noalias !91, !nonnull !10, !align !92, !noundef !10 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 136 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !96, !noalias !99, !noundef !10 ; 3 uses
  %i.m = load i64, ptr %i.j, align 8, !range !101, !alias.scope !96, !noalias !99, !noundef !10
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !99
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit: ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !96, !noalias !99, !nonnull !10, !noundef !10
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l ; 4 uses
  store i64 0, ptr %i.q, align 8, !noalias !102
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !102
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %5, ptr %.sroa.547.0..sroa_idx, align 8, !noalias !102
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.b, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !102
  %i.r = add i64 %i.l, 1
  store i64 %i.r, ptr %i.k, align 8, !alias.scope !96, !noalias !99
  br label %bb.b

bb.e:                                             ; preds = %bb.b
  br i1 %.not17, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.b, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit31, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit34, %bb.o
  %.not19 = icmp eq i64 %i.e, 0
  br i1 %.not19, label %bb.t, label %bb.r

bb.g:                                             ; preds = %bb.e
  br i1 %.not16, label %bb.j, label %bb.p

bb.h:                                             ; preds = %bb.e
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.s = load ptr, ptr %0, align 8, !alias.scope !109, !nonnull !10, !align !92, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !110, !noalias !109, !nonnull !10, !align !92, !noundef !10 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 120 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 136 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !113, !noalias !116, !noundef !10 ; 3 uses
  %i.x = load i64, ptr %i.u, align 8, !range !101, !alias.scope !113, !noalias !116, !noundef !10
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.i, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit31

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u), !noalias !116
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit31

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit31: ; preds = %bb.h, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !113, !noalias !116, !nonnull !10, !noundef !10
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.w ; 4 uses
  store i64 1, ptr %i.ab, align 8, !noalias !118
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.c, ptr %.sroa.459.0..sroa_idx, align 8, !noalias !118
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.sroa.0.0, ptr %.sroa.560.0..sroa_idx, align 8, !noalias !118
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 %i.d, ptr %.sroa.661.0..sroa_idx, align 8, !noalias !118
  %i.ac = add i64 %i.w, 1
  store i64 %i.ac, ptr %i.v, align 8, !alias.scope !113, !noalias !116
  br label %bb.f

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_EB6_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.d, i64 noundef %i.g, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.ad = load i64, ptr %i.a, align 8, !range !9, !noundef !10
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !10 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !10 ; 2 uses
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.d, i64 noundef %i.ai, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.ag, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.ai, i64 noundef %i.g, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.aj = sub i64 %i.f, %i.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !125, !nonnull !10, !align !92, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !126, !noalias !125, !nonnull !10, !align !92, !noundef !10 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 120 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 136 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !129, !noalias !132, !noundef !10 ; 3 uses
  %i.ap = load i64, ptr %i.am, align 8, !range !101, !alias.scope !129, !noalias !132, !noundef !10
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.m, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am), !noalias !132
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32: ; preds = %bb.l, %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !129, !noalias !132, !nonnull !10, !noundef !10
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.ao ; 4 uses
  store i64 1, ptr %i.at, align 8, !noalias !134
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.c, ptr %.sroa.454.0..sroa_idx, align 8, !noalias !134
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.aj, ptr %.sroa.555.0..sroa_idx, align 8, !noalias !134
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %i.d, ptr %.sroa.656.0..sroa_idx, align 8, !noalias !134
  %i.au = add i64 %i.ao, 1
  store i64 %i.au, ptr %i.an, align 8, !alias.scope !129, !noalias !132
  %i.av = sub i64 %i.g, %i.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.aw = load ptr, ptr %i.ak, align 8, !alias.scope !135, !noalias !138, !nonnull !10, !align !92, !noundef !10 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 120 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 136 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !143, !noalias !146, !noundef !10 ; 3 uses
  %i.ba = load i64, ptr %i.ax, align 8, !range !101, !alias.scope !143, !noalias !146, !noundef !10
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.n, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit33

bb.n:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax), !noalias !146
end_hunk_0
begin_hunk_1_@_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !186, !noalias !189, !noundef !10 ; 3 uses
  %i.t = load i64, ptr %i.q, align 8, !range !101, !alias.scope !186, !noalias !189, !noundef !10
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.i, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit31

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q), !noalias !189
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit31

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit31: ; preds = %bb.h, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !186, !noalias !189, !nonnull !10, !noundef !10
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %i.s ; 4 uses
  store i64 1, ptr %i.x, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.c, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.0.0, ptr %.sroa.555.0..sroa_idx, align 8
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %i.d, ptr %.sroa.656.0..sroa_idx, align 8
  %i.y = add i64 %i.s, 1
  store i64 %i.y, ptr %i.r, align 8, !alias.scope !186, !noalias !189
  br label %bb.f

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_EB6_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.d, i64 noundef %i.g, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.z = load i64, ptr %i.a, align 8, !range !9, !noundef !10
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !10 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !10 ; 2 uses
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.d, i64 noundef %i.ae, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.ac, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.ae, i64 noundef %i.g, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.af = sub i64 %i.f, %i.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !191, !noalias !194, !noundef !10 ; 4 uses
  %i.aj = load i64, ptr %i.ag, align 8, !range !101, !alias.scope !191, !noalias !194, !noundef !10
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.m, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag), !noalias !194
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32: ; preds = %bb.l, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !191, !noalias !194, !nonnull !10, !noundef !10
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.ai ; 4 uses
  store i64 1, ptr %i.an, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.c, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.af, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %i.d, ptr %.sroa.661.0..sroa_idx, align 8
  %i.ao = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.ao, ptr %i.ah, align 8, !alias.scope !191, !noalias !194
  %i.ap = sub i64 %i.g, %i.d
  %i.aq = load i64, ptr %i.ag, align 8, !range !101, !alias.scope !196, !noalias !199, !noundef !10
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.n, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit33

bb.n:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag), !noalias !199
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit33

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit33: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32, %bb.n
  %i.as = load ptr, ptr %i.al, align 8, !alias.scope !196, !noalias !199, !nonnull !10, !noundef !10
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.ao ; 4 uses
  store i64 2, ptr %i.at, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.c, ptr %.sroa.469.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.d, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %i.ap, ptr %.sroa.671.0..sroa_idx, align 8
  %i.au = add i64 %i.ai, 2
  store i64 %i.au, ptr %i.ah, align 8, !alias.scope !196, !noalias !199
  br label %bb.o

bb.o:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit33, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.p:                                             ; preds = %bb.g
  %i.av = sub i64 %i.g, %i.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !201, !noalias !204, !noundef !10 ; 3 uses
  %i.az = load i64, ptr %i.aw, align 8, !range !101, !alias.scope !201, !noalias !204, !noundef !10
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.q, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit34

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw), !noalias !204
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit34

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit34: ; preds = %bb.p, %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !201, !noalias !204, !nonnull !10, !noundef !10
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.bc, i64 %i.ay ; 4 uses
  store i64 2, ptr %i.bd, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.c, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %i.d, ptr %.sroa.565.0..sroa_idx, align 8
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 %i.av, ptr %.sroa.666.0..sroa_idx, align 8
  %i.be = add i64 %i.ay, 1
  store i64 %i.be, ptr %i.ax, align 8, !alias.scope !201, !noalias !204
  br label %bb.f

bb.r:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !206, !noalias !209, !noundef !10 ; 3 uses
  %i.bi = load i64, ptr %i.bf, align 8, !range !101, !alias.scope !206, !noalias !209, !noundef !10
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.s, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit35

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf), !noalias !209
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit35

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit35: ; preds = %bb.r, %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !206, !noalias !209, !nonnull !10, !noundef !10
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %i.bl, i64 %i.bh ; 4 uses
  store i64 0, ptr %i.bm, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 %i.g, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i64 %i.e, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bn = add i64 %i.bh, 1
  store i64 %i.bn, ptr %i.bg, align 8, !alias.scope !206, !noalias !209
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit35
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 16 uses
  %i.d = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 8 uses
  %.not16 = icmp ult i64 %i.b, %i.e               ; 2 uses
  %.not17 = icmp ult i64 %i.c, %i.f               ; 2 uses
  %or.cond = or i1 %.not16, %.not17
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %2, i64 noundef %5, i64 noundef %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not17, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bu, %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_EB6_.exit, %bb.b, %bb.g, %bb.bv
  %.not19 = icmp eq i64 %i.d, 0
  br i1 %.not19, label %bb.bx, label %bb.bw

bb.f:                                             ; preds = %bb.d
  br i1 %.not16, label %bb.h, label %bb.bv

bb.g:                                             ; preds = %bb.d
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b)
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0, i64 noundef %i.c)
  br label %bb.e

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.g = sub nuw i64 %i.e, %i.b                   ; 11 uses
  %i.h = sub i64 %i.f, %i.c                       ; 3 uses
  %.sroa.037.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.c) ; 5 uses
  %i.i = sub i64 %i.g, %.sroa.037.0.i             ; 5 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !211, !noalias !216, !noundef !10 ; 8 uses
  %i.m = add i64 %i.l, 1                          ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !211, !noalias !216, !noundef !10 ; 19 uses
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !211, !noalias !216, !nonnull !10, !noundef !10 ; 10 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.m ; 2 uses
  store i64 0, ptr %i.s, align 8, !noalias !220
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !214, !noalias !221, !noundef !10 ; 8 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !214, !noalias !221, !noundef !10 ; 19 uses
  %i.y = icmp ult i64 %i.v, %i.x
  br i1 %i.y, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #13, !noalias !220
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !214, !noalias !221, !nonnull !10, !noundef !10 ; 10 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.v ; 2 uses
  store i64 0, ptr %i.ab, align 8, !noalias !220
  %i.ac = add i64 %i.g, 1
  %i.ad = add i64 %i.ac, %.sroa.037.0.i
  %i.ae = lshr i64 %i.ad, 1                       ; 3 uses
  %i.af = icmp ult i64 %i.o, 1152921504606846976
  tail call void @llvm.assume(i1 %i.af)
  %.not126.not.i = icmp samesign ugt i64 %i.o, %i.ae
  br i1 %.not126.not.i, label %bb.n, label %bb.m, !prof !79

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #13, !noalias !220
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13, !noalias !220
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ag = icmp ult i64 %i.x, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ag)
  %.not127.not.i = icmp samesign ugt i64 %i.x, %i.ae
  br i1 %.not127.not.i, label %.lr.ph220.i, label %bb.o, !prof !79

.lr.ph220.i:                                      ; preds = %bb.n
  %i.ah = add i64 %i.l, -1                        ; 2 uses
  %i.ai = add i64 %i.u, -1                        ; 2 uses
  %i.aj = add i64 %.sroa.037.0.i, %i.c            ; 3 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13, !noalias !220
  unreachable

bb.p:                                             ; preds = %._crit_edge216.i, %.lr.ph220.i
  %.sroa.047.0219.i = phi i64 [ 0, %.lr.ph220.i ], [ %i.ak, %._crit_edge216.i ] ; 23 uses
  %i.ak = add nuw nsw i64 %.sroa.047.0219.i, 1
  %i.al = tail call noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !220
  br i1 %i.al, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_EB6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.p
  %11 = sub nsw i64 0, %.sroa.047.0219.i          ; 9 uses
  %i.am = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.047.0219.i, i64 %11) ; 2 uses
  switch i8 %i.am, label %.loopexit.i [
    i8 -1, label %._crit_edge216.i
    i8 0, label %bb.r
    i8 1, label %bb.q
  ]

bb.q:                                             ; preds = %.lr.ph.preheader.i
  %i.an = add nsw i64 %.sroa.047.0219.i, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.preheader.i
  %.sroa.11.1.peel.i = phi i1 [ true, %.lr.ph.preheader.i ], [ false, %bb.q ]
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.047.0219.i, %.lr.ph.preheader.i ], [ %i.an, %bb.q ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.047.0219.i, 0        ; 2 uses
  br i1 %i.ao, label %._crit_edge307.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.pre324.i = add i64 %.sroa.047.0219.i, %i.ah   ; 3 uses
  %i.ap = icmp ult i64 %.pre324.i, %i.o
  br i1 %i.ap, label %bb.t, label %.loopexit254.i

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre324.i
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !220, !noundef !10
  %i.as = add i64 %i.ar, 1
  br label %bb.u

._crit_edge307.i:                                 ; preds = %bb.r
  %i.at = load i64, ptr %i.s, align 8, !noalias !220, !noundef !10
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge307.i, %bb.t
  %.sroa.04.0.peel.i = phi i64 [ %i.at, %._crit_edge307.i ], [ %i.as, %bb.t ] ; 6 uses
  %i.au = sub i64 %.sroa.04.0.peel.i, %.sroa.047.0219.i ; 3 uses
  %i.av = icmp ult i64 %.sroa.04.0.peel.i, %i.g
  %i.aw = icmp ult i64 %i.au, %i.h
  %or.cond175.peel.i = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond175.peel.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ax = add i64 %.sroa.04.0.peel.i, %i.b
  %i.ay = add i64 %i.au, %i.c
  %i.az = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.ax, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.ay, i64 noundef %i.f), !noalias !220
  %i.ba = add i64 %i.az, %.sroa.04.0.peel.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.04.1.peel.i = phi i64 [ %i.ba, %bb.v ], [ %.sroa.04.0.peel.i, %bb.u ] ; 2 uses
  %i.bb = add i64 %.sroa.047.0219.i, %i.l         ; 3 uses
  %i.bc = icmp ult i64 %i.bb, %i.o
  br i1 %i.bc, label %bb.x, label %.loopexit256.i

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bb
  store i64 %.sroa.04.1.peel.i, ptr %i.bd, align 8, !noalias !220
  br i1 %.not.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = sub i64 %.sroa.047.0219.i, %i.i         ; 2 uses
  %.sroa.010.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.be, i1 false)
  %.not132.not.peel.i = icmp slt i64 %.sroa.010.0.peel.i, %.sroa.047.0219.i
  br i1 %.not132.not.peel.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.bf = sub i64 %i.u, %i.be                     ; 3 uses
  %i.bg = icmp ult i64 %i.bf, %i.x
  br i1 %i.bg, label %bb.aa, label %.loopexit257.i

bb.aa:                                            ; preds = %bb.z
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !220, !noundef !10
  %i.bj = add i64 %i.bi, %.sroa.04.1.peel.i
  %.not133.peel.i = icmp ult i64 %i.bj, %i.g
  br i1 %.not133.peel.i, label %bb.ab, label %.loopexit258.i

bb.ab:                                            ; preds = %bb.aa, %bb.y, %bb.x
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %11
  %or.cond176.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond176.peel.i, label %.lr.ph215.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.ab, %bb.bq
  %.sroa.7.0208.i = phi i64 [ %.sroa.7.1.i, %bb.bq ], [ %.sroa.7.1.peel.i, %bb.ab ] ; 4 uses
  %i.bk = add nsw i64 %.sroa.7.0208.i, -1         ; 8 uses
  %i.bl = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.bk, i64 %11)
  switch i8 %i.bl, label %.loopexit.i [
    i8 -1, label %.lr.ph215.preheader.i
    i8 0, label %bb.ad
    i8 1, label %bb.ac
  ]

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i, %.lr.ph.peel.next.i
  unreachable

bb.ac:                                            ; preds = %.lr.ph.peel.next.i
  %i.bm = add i64 %.sroa.7.0208.i, -2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.peel.next.i
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.ac ]
  %.sroa.7.1.i = phi i64 [ %i.bk, %.lr.ph.peel.next.i ], [ %i.bm, %bb.ac ] ; 2 uses
  %i.bn = icmp eq i64 %i.bk, %11
  br i1 %i.bn, label %._crit_edge306.i, label %bb.bg

._crit_edge306.i:                                 ; preds = %bb.ad
  %.pre320.i = add i64 %.sroa.7.0208.i, %i.l
  br label %._crit_edge306.i.a

.lr.ph215.preheader.i:                            ; preds = %bb.bq, %.lr.ph.peel.next.i, %bb.ab
  switch i8 %i.am, label %.loopexit276.i [
    i8 -1, label %._crit_edge216.i
    i8 0, label %bb.af
    i8 1, label %bb.ae
  ]

bb.ae:                                            ; preds = %.lr.ph215.preheader.i
  %i.bo = add nsw i64 %.sroa.047.0219.i, -1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph215.preheader.i
  %.sroa.7160.1.peel.i = phi i64 [ %.sroa.047.0219.i, %.lr.ph215.preheader.i ], [ %i.bo, %bb.ae ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph215.preheader.i ], [ false, %bb.ae ]
  br i1 %i.ao, label %._crit_edge311.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.pre316.i = add i64 %.sroa.047.0219.i, %i.ai   ; 3 uses
  %i.bp = icmp ult i64 %.pre316.i, %i.x
  br i1 %i.bp, label %bb.ah, label %.loopexit279.i

bb.ah:                                            ; preds = %bb.ag
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre316.i
  %i.br = load i64, ptr %i.bq, align 8, !noalias !220, !noundef !10
  %i.bs = add i64 %i.br, 1
  br label %bb.ai

._crit_edge311.i:                                 ; preds = %bb.af
  %i.bt = load i64, ptr %i.ab, align 8, !noalias !220, !noundef !10
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge311.i, %bb.ah
  %.sroa.014.0.peel.i = phi i64 [ %i.bt, %._crit_edge311.i ], [ %i.bs, %bb.ah ] ; 5 uses
  %i.bu = sub i64 %.sroa.014.0.peel.i, %.sroa.047.0219.i ; 4 uses
  %i.bv = icmp ult i64 %.sroa.014.0.peel.i, %i.g
  %i.bw = icmp ult i64 %i.bu, %.sroa.037.0.i
  %or.cond.peel.i = and i1 %i.bv, %i.bw
  br i1 %or.cond.peel.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bx = sub i64 %i.e, %.sroa.014.0.peel.i
  %i.by = sub i64 %i.aj, %i.bu
  %i.bz = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.by), !noalias !220 ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.014.0.peel.i
  %i.cb = add i64 %i.bz, %i.bu
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.020.0.peel.i = phi i64 [ %i.cb, %bb.aj ], [ %i.bu, %bb.ai ]
  %.sroa.014.1.peel.i = phi i64 [ %i.ca, %bb.aj ], [ %.sroa.014.0.peel.i, %bb.ai ] ; 3 uses
  %i.cc = add i64 %.sroa.047.0219.i, %i.u         ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %i.x
  br i1 %i.cd, label %bb.al, label %.loopexit281.i

bb.al:                                            ; preds = %bb.ak
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cc
  store i64 %.sroa.014.1.peel.i, ptr %i.ce, align 8, !noalias !220
  br i1 %.not.i, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.cf = sub i64 %.sroa.047.0219.i, %i.i         ; 2 uses
  %.sroa.024.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.cf, i1 false)
  %.not129.peel.i = icmp sgt i64 %.sroa.024.0.peel.i, %.sroa.047.0219.i
  br i1 %.not129.peel.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cg = sub i64 %i.l, %i.cf                     ; 3 uses
  %i.ch = icmp ult i64 %i.cg, %i.o
  br i1 %i.ch, label %bb.ao, label %.loopexit282.i

bb.ao:                                            ; preds = %bb.an
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cg
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !220, !noundef !10
  %i.ck = add i64 %i.cj, %.sroa.014.1.peel.i
  %.not130.peel.i = icmp ult i64 %i.ck, %i.g
  br i1 %.not130.peel.i, label %bb.ap, label %.loopexit283.i

bb.ap:                                            ; preds = %bb.ao, %bb.am, %bb.al
  %.not.i134.peel.i = icmp slt i64 %.sroa.7160.1.peel.i, %11
  %or.cond177.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i134.peel.i
  br i1 %or.cond177.peel.i, label %._crit_edge216.i, label %.lr.ph215.peel.next.i

.lr.ph215.peel.next.i:                            ; preds = %bb.ap, %bb.bd
  %.sroa.7160.0212.i = phi i64 [ %.sroa.7160.1.i, %bb.bd ], [ %.sroa.7160.1.peel.i, %bb.ap ] ; 4 uses
  %i.cl = add nsw i64 %.sroa.7160.0212.i, -1      ; 8 uses
  %i.cm = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.cl, i64 %11)
  switch i8 %i.cm, label %.loopexit276.i [
    i8 -1, label %._crit_edge216.i
    i8 0, label %bb.ar
    i8 1, label %bb.aq
  ]

.loopexit276.i:                                   ; preds = %.lr.ph215.preheader.i, %.lr.ph215.peel.next.i
  unreachable

bb.aq:                                            ; preds = %.lr.ph215.peel.next.i
  %i.cn = add i64 %.sroa.7160.0212.i, -2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph215.peel.next.i
  %.sroa.7160.1.i = phi i64 [ %i.cl, %.lr.ph215.peel.next.i ], [ %i.cn, %bb.aq ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph215.peel.next.i ], [ false, %bb.aq ]
  %i.co = icmp eq i64 %i.cl, %11
  br i1 %i.co, label %._crit_edge310.i, label %bb.as

._crit_edge310.i:                                 ; preds = %bb.ar
  %.pre312.i = add i64 %.sroa.7160.0212.i, %i.u
  br label %._crit_edge310.i.a

._crit_edge216.i:                                 ; preds = %bb.bd, %.lr.ph215.peel.next.i, %.lr.ph.preheader.i, %bb.ap, %.lr.ph215.preheader.i
  %exitcond.not.i = icmp eq i64 %.sroa.047.0219.i, %i.ae
  br i1 %exitcond.not.i, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_EB6_.exit, label %bb.p

bb.as:                                            ; preds = %bb.ar
  %.not128.i = icmp eq i64 %i.cl, %.sroa.047.0219.i
  %.pre314.i = add i64 %i.cl, %i.ai               ; 6 uses
  br i1 %.not128.i, label %._crit_edge309.i, label %bb.at

._crit_edge310.i.a:                               ; preds = %bb.av, %._crit_edge310.i
  %.pre-phi313.i = phi i64 [ %.pre312.i, %._crit_edge310.i ], [ %i.cs, %bb.av ] ; 3 uses
  %i.cp = icmp ult i64 %.pre-phi313.i, %i.x
  br i1 %i.cp, label %bb.ay, label %.loopexit280.i

._crit_edge309.i:                                 ; preds = %bb.av, %bb.as
  %i.cq = icmp ult i64 %.pre314.i, %i.x
  br i1 %i.cq, label %bb.aw, label %.loopexit279.i

bb.at:                                            ; preds = %bb.as
  %i.cr = icmp ult i64 %.pre314.i, %i.x
  br i1 %i.cr, label %bb.au, label %.loopexit277.i

bb.au:                                            ; preds = %bb.at
  %i.cs = add i64 %.sroa.7160.0212.i, %i.u        ; 4 uses
  %i.ct = icmp ult i64 %i.cs, %i.x
  br i1 %i.ct, label %bb.av, label %.loopexit278.i

.loopexit277.i:                                   ; preds = %bb.at
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre314.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13, !noalias !220
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre314.i
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !220, !noundef !10
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cs
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !220, !noundef !10
  %i.cy = icmp ult i64 %i.cv, %i.cx
  br i1 %i.cy, label %._crit_edge310.i.a, label %._crit_edge309.i

.loopexit278.i:                                   ; preds = %bb.au
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13, !noalias !220
  unreachable

bb.aw:                                            ; preds = %._crit_edge309.i
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre314.i
  %i.da = load i64, ptr %i.cz, align 8, !noalias !220, !noundef !10
  %i.db = add i64 %i.da, 1
  br label %bb.ax

.loopexit279.i:                                   ; preds = %bb.ag, %._crit_edge309.i
  %.lcssa240.i = phi i64 [ %.pre314.i, %._crit_edge309.i ], [ %.pre316.i, %bb.ag ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa240.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #13, !noalias !220
  unreachable

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %.sroa.014.0.i = phi i64 [ %i.dg, %bb.ay ], [ %i.db, %bb.aw ] ; 5 uses
  %i.dc = sub i64 %.sroa.014.0.i, %i.cl           ; 4 uses
  %i.dd = icmp ult i64 %.sroa.014.0.i, %i.g
  %i.de = icmp ult i64 %i.dc, %.sroa.037.0.i
  %or.cond.i = and i1 %i.dd, %i.de
  br i1 %or.cond.i, label %bb.ba, label %bb.az

bb.ay:                                            ; preds = %._crit_edge310.i.a
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre-phi313.i
  %i.dg = load i64, ptr %i.df, align 8, !noalias !220, !noundef !10
  br label %bb.ax

.loopexit280.i:                                   ; preds = %._crit_edge310.i.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi313.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13, !noalias !220
  unreachable

bb.az:                                            ; preds = %bb.ba, %bb.ax
  %.sroa.020.0.i = phi i64 [ %i.dn, %bb.ba ], [ %i.dc, %bb.ax ]
  %.sroa.014.1.i = phi i64 [ %i.dm, %bb.ba ], [ %.sroa.014.0.i, %bb.ax ] ; 3 uses
  %i.dh = add i64 %i.cl, %i.u                     ; 3 uses
  %i.di = icmp ult i64 %i.dh, %i.x
  br i1 %i.di, label %bb.bb, label %.loopexit281.i

bb.ba:                                            ; preds = %bb.ax
  %i.dj = sub i64 %i.e, %.sroa.014.0.i
  %i.dk = sub i64 %i.aj, %i.dc
  %i.dl = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.dk), !noalias !220 ; 2 uses
  %i.dm = add i64 %i.dl, %.sroa.014.0.i
  %i.dn = add i64 %i.dl, %i.dc
  br label %bb.az

bb.bb:                                            ; preds = %bb.az
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.dh
  store i64 %.sroa.014.1.i, ptr %i.do, align 8, !noalias !220
  br i1 %.not.i, label %bb.bc, label %bb.bd

.loopexit281.i:                                   ; preds = %bb.ak, %bb.az
  %.lcssa242.i = phi i64 [ %i.dh, %bb.az ], [ %i.cc, %bb.ak ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa242.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13, !noalias !220
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.dp = sub i64 %i.cl, %i.i                     ; 2 uses
  %.sroa.024.0.i = tail call i64 @llvm.abs.i64(i64 %i.dp, i1 false)
  %.not129.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.047.0219.i
  br i1 %.not129.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bf, %bb.bc, %bb.bb
  %.not.i134.i = icmp slt i64 %.sroa.7160.1.i, %11
  %or.cond177.i = or i1 %.sroa.12.1.i, %.not.i134.i
  br i1 %or.cond177.i, label %._crit_edge216.i, label %.lr.ph215.peel.next.i, !llvm.loop !222

bb.be:                                            ; preds = %bb.bc
  %i.dq = sub i64 %i.l, %i.dp                     ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.o
  br i1 %i.dr, label %bb.bf, label %.loopexit282.i

bb.bf:                                            ; preds = %bb.be
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dq
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !220, !noundef !10
  %i.du = add i64 %i.dt, %.sroa.014.1.i
  %.not130.i = icmp ult i64 %i.du, %i.g
  br i1 %.not130.i, label %bb.bd, label %.loopexit283.i

.loopexit282.i:                                   ; preds = %bb.an, %bb.be
  %.lcssa249.i = phi i64 [ %i.dq, %bb.be ], [ %i.cg, %bb.an ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa249.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #13, !noalias !220
  unreachable

.loopexit283.i:                                   ; preds = %bb.ao, %bb.bf
  %.sroa.020.0.lcssa248.i = phi i64 [ %.sroa.020.0.i, %bb.bf ], [ %.sroa.020.0.peel.i, %bb.ao ]
  %.sroa.014.1.lcssa246.i = phi i64 [ %.sroa.014.1.i, %bb.bf ], [ %.sroa.014.1.peel.i, %bb.ao ]
  %i.dv = sub i64 %i.e, %.sroa.014.1.lcssa246.i
  %i.dw = sub i64 %i.aj, %.sroa.020.0.lcssa248.i
  br label %bb.bu

bb.bg:                                            ; preds = %bb.ad
  %.not131.i = icmp eq i64 %i.bk, %.sroa.047.0219.i
  %.pre322.i = add i64 %i.bk, %i.ah               ; 6 uses
  br i1 %.not131.i, label %._crit_edge305.i, label %bb.bh

._crit_edge306.i.a:                               ; preds = %bb.bj, %._crit_edge306.i
  %.pre-phi321.i = phi i64 [ %.pre320.i, %._crit_edge306.i ], [ %i.ea, %bb.bj ] ; 3 uses
  %i.dx = icmp ult i64 %.pre-phi321.i, %i.o
  br i1 %i.dx, label %bb.bm, label %.loopexit255.i

._crit_edge305.i:                                 ; preds = %bb.bj, %bb.bg
  %i.dy = icmp ult i64 %.pre322.i, %i.o
  br i1 %i.dy, label %bb.bk, label %.loopexit254.i

bb.bh:                                            ; preds = %bb.bg
  %i.dz = icmp ult i64 %.pre322.i, %i.o
  br i1 %i.dz, label %bb.bi, label %.loopexit252.i

bb.bi:                                            ; preds = %bb.bh
  %i.ea = add i64 %.sroa.7.0208.i, %i.l           ; 4 uses
  %i.eb = icmp ult i64 %i.ea, %i.o
  br i1 %i.eb, label %bb.bj, label %.loopexit253.i

.loopexit252.i:                                   ; preds = %bb.bh
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre322.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #13, !noalias !220
  unreachable

bb.bj:                                            ; preds = %bb.bi
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre322.i
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !220, !noundef !10
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ea
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !220, !noundef !10
  %i.eg = icmp ult i64 %i.ed, %i.ef
  br i1 %i.eg, label %._crit_edge306.i.a, label %._crit_edge305.i

.loopexit253.i:                                   ; preds = %bb.bi
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #13, !noalias !220
  unreachable

bb.bk:                                            ; preds = %._crit_edge305.i
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre322.i
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !220, !noundef !10
  %i.ej = add i64 %i.ei, 1
  br label %bb.bl

.loopexit254.i:                                   ; preds = %bb.s, %._crit_edge305.i
  %.lcssa225.i = phi i64 [ %.pre322.i, %._crit_edge305.i ], [ %.pre324.i, %bb.s ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa225.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #13, !noalias !220
  unreachable

bb.bl:                                            ; preds = %bb.bm, %bb.bk
  %.sroa.04.0.i = phi i64 [ %i.eo, %bb.bm ], [ %i.ej, %bb.bk ] ; 6 uses
  %i.ek = sub i64 %.sroa.04.0.i, %i.bk            ; 3 uses
  %i.el = icmp ult i64 %.sroa.04.0.i, %i.g
  %i.em = icmp ult i64 %i.ek, %i.h
  %or.cond175.i = and i1 %i.el, %i.em
  br i1 %or.cond175.i, label %bb.bo, label %bb.bn

bb.bm:                                            ; preds = %._crit_edge306.i.a
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi321.i
  %i.eo = load i64, ptr %i.en, align 8, !noalias !220, !noundef !10
  br label %bb.bl

.loopexit255.i:                                   ; preds = %._crit_edge306.i.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi321.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #13, !noalias !220
  unreachable

bb.bn:                                            ; preds = %bb.bo, %bb.bl
  %.sroa.04.1.i = phi i64 [ %i.eu, %bb.bo ], [ %.sroa.04.0.i, %bb.bl ] ; 2 uses
  %i.ep = add i64 %i.bk, %i.l                     ; 3 uses
  %i.eq = icmp ult i64 %i.ep, %i.o
  br i1 %i.eq, label %bb.bp, label %.loopexit256.i

bb.bo:                                            ; preds = %bb.bl
  %i.er = add i64 %.sroa.04.0.i, %i.b
  %i.es = add i64 %i.ek, %i.c
  %i.et = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.er, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.es, i64 noundef %i.f), !noalias !220
  %i.eu = add i64 %i.et, %.sroa.04.0.i
  br label %bb.bn

bb.bp:                                            ; preds = %bb.bn
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ep
  store i64 %.sroa.04.1.i, ptr %i.ev, align 8, !noalias !220
  br i1 %.not.i, label %bb.bq, label %bb.br

.loopexit256.i:                                   ; preds = %bb.w, %bb.bn
  %.lcssa232.i = phi i64 [ %i.ep, %bb.bn ], [ %i.bb, %bb.w ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa232.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #13, !noalias !220
  unreachable

bb.bq:                                            ; preds = %bb.bt, %bb.br, %bb.bp
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %11
  %or.cond176.i = or i1 %.sroa.11.1.i, %.not.i.i
  br i1 %or.cond176.i, label %.lr.ph215.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !223

bb.br:                                            ; preds = %bb.bp
  %i.ew = sub i64 %i.bk, %i.i                     ; 2 uses
  %.sroa.010.0.i = tail call i64 @llvm.abs.i64(i64 %i.ew, i1 false)
  %.not132.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.047.0219.i
  br i1 %.not132.not.i, label %bb.bs, label %bb.bq

bb.bs:                                            ; preds = %bb.br
  %i.ex = sub i64 %i.u, %i.ew                     ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %i.x
  br i1 %i.ey, label %bb.bt, label %.loopexit257.i

bb.bt:                                            ; preds = %bb.bs
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ex
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !220, !noundef !10
  %i.fb = add i64 %i.fa, %.sroa.04.1.i
  %.not133.i = icmp ult i64 %i.fb, %i.g
  br i1 %.not133.i, label %bb.bq, label %.loopexit258.i

.loopexit257.i:                                   ; preds = %bb.z, %bb.bs
  %.lcssa235.i = phi i64 [ %i.ex, %bb.bs ], [ %i.bf, %bb.z ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa235.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #13, !noalias !220
  unreachable

.loopexit258.i:                                   ; preds = %bb.aa, %bb.bt
  %.sroa.04.0.lcssa231.i = phi i64 [ %.sroa.04.0.i, %bb.bt ], [ %.sroa.04.0.peel.i, %bb.aa ]
  %.lcssa229.i = phi i64 [ %i.ek, %bb.bt ], [ %i.au, %bb.aa ]
  %i.fc = add i64 %.sroa.04.0.lcssa231.i, %i.b
  %i.fd = add i64 %.lcssa229.i, %i.c
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit258.i, %.loopexit283.i
  %.sroa.6.0.ph = phi i64 [ %i.fd, %.loopexit258.i ], [ %i.dw, %.loopexit283.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.fc, %.loopexit258.i ], [ %i.dv, %.loopexit283.i ] ; 2 uses
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.6.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.6.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_EB6_.exit: ; preds = %._crit_edge216.i, %bb.p
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %i.b, i64 noundef %i.g, i64 noundef %i.c)
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %i.b, i64 noundef %i.c, i64 noundef %i.h)
  br label %bb.e

bb.bv:                                            ; preds = %bb.f
  %i.fe = sub i64 %i.f, %i.c
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %i.b, i64 noundef %i.c, i64 noundef %i.fe)
  br label %bb.e

bb.bw:                                            ; preds = %bb.e
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %i.e, i64 noundef %i.f, i64 noundef %i.d)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.e, %bb.bw
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemSReEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB1X_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemSReEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 16 uses
  %i.d = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemSReEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 8 uses
  %.not16 = icmp ult i64 %i.b, %i.e               ; 2 uses
  %.not17 = icmp ult i64 %i.c, %i.f               ; 2 uses
  %or.cond = or i1 %.not16, %.not17
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceSReB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %2, i64 noundef %5, i64 noundef %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not17, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bu, %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemSReEEB13_EB6_.exit, %bb.b, %bb.g, %bb.bv
  %.not19 = icmp eq i64 %i.d, 0
  br i1 %.not19, label %bb.bx, label %bb.bw

bb.f:                                             ; preds = %bb.d
  br i1 %.not16, label %bb.h, label %bb.bv

bb.g:                                             ; preds = %bb.d
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b)
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceSReB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0, i64 noundef %i.c)
  br label %bb.e

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.g = sub nuw i64 %i.e, %i.b                   ; 11 uses
  %i.h = sub i64 %i.f, %i.c                       ; 3 uses
  %.sroa.037.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.c) ; 5 uses
  %i.i = sub i64 %i.g, %.sroa.037.0.i             ; 5 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !224, !noalias !229, !noundef !10 ; 8 uses
  %i.m = add i64 %i.l, 1                          ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !224, !noalias !229, !noundef !10 ; 19 uses
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !224, !noalias !229, !nonnull !10, !noundef !10 ; 10 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.m ; 2 uses
  store i64 0, ptr %i.s, align 8, !noalias !233
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !227, !noalias !234, !noundef !10 ; 8 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !227, !noalias !234, !noundef !10 ; 19 uses
  %i.y = icmp ult i64 %i.v, %i.x
  br i1 %i.y, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #13, !noalias !233
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !227, !noalias !234, !nonnull !10, !noundef !10 ; 10 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.v ; 2 uses
  store i64 0, ptr %i.ab, align 8, !noalias !233
  %i.ac = add i64 %i.g, 1
  %i.ad = add i64 %i.ac, %.sroa.037.0.i
  %i.ae = lshr i64 %i.ad, 1                       ; 3 uses
  %i.af = icmp ult i64 %i.o, 1152921504606846976
  tail call void @llvm.assume(i1 %i.af)
  %.not126.not.i = icmp samesign ugt i64 %i.o, %i.ae
  br i1 %.not126.not.i, label %bb.n, label %bb.m, !prof !79

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #13, !noalias !233
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13, !noalias !233
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ag = icmp ult i64 %i.x, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ag)
  %.not127.not.i = icmp samesign ugt i64 %i.x, %i.ae
  br i1 %.not127.not.i, label %.lr.ph220.i, label %bb.o, !prof !79

.lr.ph220.i:                                      ; preds = %bb.n
  %i.ah = add i64 %i.l, -1                        ; 2 uses
  %i.ai = add i64 %i.u, -1                        ; 2 uses
  %i.aj = add i64 %.sroa.037.0.i, %i.c            ; 3 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13, !noalias !233
  unreachable

bb.p:                                             ; preds = %._crit_edge216.i, %.lr.ph220.i
  %.sroa.047.0219.i = phi i64 [ 0, %.lr.ph220.i ], [ %i.ak, %._crit_edge216.i ] ; 23 uses
  %i.ak = add nuw nsw i64 %.sroa.047.0219.i, 1
  %i.al = tail call noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !233
  br i1 %i.al, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemSReEEB13_EB6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.p
  %11 = sub nsw i64 0, %.sroa.047.0219.i          ; 9 uses
  %i.am = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.047.0219.i, i64 %11) ; 2 uses
  switch i8 %i.am, label %.loopexit.i [
    i8 -1, label %._crit_edge216.i
    i8 0, label %bb.r
    i8 1, label %bb.q
  ]

bb.q:                                             ; preds = %.lr.ph.preheader.i
  %i.an = add nsw i64 %.sroa.047.0219.i, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.preheader.i
  %.sroa.11.1.peel.i = phi i1 [ true, %.lr.ph.preheader.i ], [ false, %bb.q ]
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.047.0219.i, %.lr.ph.preheader.i ], [ %i.an, %bb.q ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.047.0219.i, 0        ; 2 uses
  br i1 %i.ao, label %._crit_edge307.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.pre324.i = add i64 %.sroa.047.0219.i, %i.ah   ; 3 uses
  %i.ap = icmp ult i64 %.pre324.i, %i.o
  br i1 %i.ap, label %bb.t, label %.loopexit254.i

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre324.i
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !233, !noundef !10
  %i.as = add i64 %i.ar, 1
  br label %bb.u

._crit_edge307.i:                                 ; preds = %bb.r
  %i.at = load i64, ptr %i.s, align 8, !noalias !233, !noundef !10
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge307.i, %bb.t
  %.sroa.04.0.peel.i = phi i64 [ %i.at, %._crit_edge307.i ], [ %i.as, %bb.t ] ; 6 uses
  %i.au = sub i64 %.sroa.04.0.peel.i, %.sroa.047.0219.i ; 3 uses
  %i.av = icmp ult i64 %.sroa.04.0.peel.i, %i.g
  %i.aw = icmp ult i64 %i.au, %i.h
  %or.cond175.peel.i = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond175.peel.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ax = add i64 %.sroa.04.0.peel.i, %i.b
  %i.ay = add i64 %i.au, %i.c
  %i.az = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemSReEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.ax, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.ay, i64 noundef %i.f), !noalias !233
  %i.ba = add i64 %i.az, %.sroa.04.0.peel.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.04.1.peel.i = phi i64 [ %i.ba, %bb.v ], [ %.sroa.04.0.peel.i, %bb.u ] ; 2 uses
  %i.bb = add i64 %.sroa.047.0219.i, %i.l         ; 3 uses
  %i.bc = icmp ult i64 %i.bb, %i.o
  br i1 %i.bc, label %bb.x, label %.loopexit256.i

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bb
  store i64 %.sroa.04.1.peel.i, ptr %i.bd, align 8, !noalias !233
  br i1 %.not.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = sub i64 %.sroa.047.0219.i, %i.i         ; 2 uses
  %.sroa.010.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.be, i1 false)
  %.not132.not.peel.i = icmp slt i64 %.sroa.010.0.peel.i, %.sroa.047.0219.i
  br i1 %.not132.not.peel.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.bf = sub i64 %i.u, %i.be                     ; 3 uses
  %i.bg = icmp ult i64 %i.bf, %i.x
  br i1 %i.bg, label %bb.aa, label %.loopexit257.i

bb.aa:                                            ; preds = %bb.z
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !233, !noundef !10
  %i.bj = add i64 %i.bi, %.sroa.04.1.peel.i
  %.not133.peel.i = icmp ult i64 %i.bj, %i.g
  br i1 %.not133.peel.i, label %bb.ab, label %.loopexit258.i

bb.ab:                                            ; preds = %bb.aa, %bb.y, %bb.x
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %11
  %or.cond176.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond176.peel.i, label %.lr.ph215.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.ab, %bb.bq
  %.sroa.7.0208.i = phi i64 [ %.sroa.7.1.i, %bb.bq ], [ %.sroa.7.1.peel.i, %bb.ab ] ; 4 uses
  %i.bk = add nsw i64 %.sroa.7.0208.i, -1         ; 8 uses
  %i.bl = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.bk, i64 %11)
  switch i8 %i.bl, label %.loopexit.i [
    i8 -1, label %.lr.ph215.preheader.i
    i8 0, label %bb.ad
    i8 1, label %bb.ac
  ]

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i, %.lr.ph.peel.next.i
  unreachable

bb.ac:                                            ; preds = %.lr.ph.peel.next.i
  %i.bm = add i64 %.sroa.7.0208.i, -2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.peel.next.i
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.ac ]
  %.sroa.7.1.i = phi i64 [ %i.bk, %.lr.ph.peel.next.i ], [ %i.bm, %bb.ac ] ; 2 uses
  %i.bn = icmp eq i64 %i.bk, %11
  br i1 %i.bn, label %._crit_edge306.i, label %bb.bg

._crit_edge306.i:                                 ; preds = %bb.ad
  %.pre320.i = add i64 %.sroa.7.0208.i, %i.l
  br label %._crit_edge306.i.a

.lr.ph215.preheader.i:                            ; preds = %bb.bq, %.lr.ph.peel.next.i, %bb.ab
  switch i8 %i.am, label %.loopexit276.i [
    i8 -1, label %._crit_edge216.i
    i8 0, label %bb.af
    i8 1, label %bb.ae
  ]

bb.ae:                                            ; preds = %.lr.ph215.preheader.i
  %i.bo = add nsw i64 %.sroa.047.0219.i, -1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph215.preheader.i
  %.sroa.7160.1.peel.i = phi i64 [ %.sroa.047.0219.i, %.lr.ph215.preheader.i ], [ %i.bo, %bb.ae ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph215.preheader.i ], [ false, %bb.ae ]
  br i1 %i.ao, label %._crit_edge311.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.pre316.i = add i64 %.sroa.047.0219.i, %i.ai   ; 3 uses
  %i.bp = icmp ult i64 %.pre316.i, %i.x
  br i1 %i.bp, label %bb.ah, label %.loopexit279.i

bb.ah:                                            ; preds = %bb.ag
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre316.i
  %i.br = load i64, ptr %i.bq, align 8, !noalias !233, !noundef !10
  %i.bs = add i64 %i.br, 1
  br label %bb.ai

._crit_edge311.i:                                 ; preds = %bb.af
  %i.bt = load i64, ptr %i.ab, align 8, !noalias !233, !noundef !10
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge311.i, %bb.ah
  %.sroa.014.0.peel.i = phi i64 [ %i.bt, %._crit_edge311.i ], [ %i.bs, %bb.ah ] ; 5 uses
  %i.bu = sub i64 %.sroa.014.0.peel.i, %.sroa.047.0219.i ; 4 uses
  %i.bv = icmp ult i64 %.sroa.014.0.peel.i, %i.g
  %i.bw = icmp ult i64 %i.bu, %.sroa.037.0.i
  %or.cond.peel.i = and i1 %i.bv, %i.bw
  br i1 %or.cond.peel.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bx = sub i64 %i.e, %.sroa.014.0.peel.i
  %i.by = sub i64 %i.aj, %i.bu
  %i.bz = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemSReEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.by), !noalias !233 ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.014.0.peel.i
  %i.cb = add i64 %i.bz, %i.bu
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.020.0.peel.i = phi i64 [ %i.cb, %bb.aj ], [ %i.bu, %bb.ai ]
  %.sroa.014.1.peel.i = phi i64 [ %i.ca, %bb.aj ], [ %.sroa.014.0.peel.i, %bb.ai ] ; 3 uses
  %i.cc = add i64 %.sroa.047.0219.i, %i.u         ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %i.x
  br i1 %i.cd, label %bb.al, label %.loopexit281.i

bb.al:                                            ; preds = %bb.ak
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cc
  store i64 %.sroa.014.1.peel.i, ptr %i.ce, align 8, !noalias !233
  br i1 %.not.i, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.cf = sub i64 %.sroa.047.0219.i, %i.i         ; 2 uses
  %.sroa.024.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.cf, i1 false)
  %.not129.peel.i = icmp sgt i64 %.sroa.024.0.peel.i, %.sroa.047.0219.i
  br i1 %.not129.peel.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cg = sub i64 %i.l, %i.cf                     ; 3 uses
  %i.ch = icmp ult i64 %i.cg, %i.o
  br i1 %i.ch, label %bb.ao, label %.loopexit282.i

bb.ao:                                            ; preds = %bb.an
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cg
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !233, !noundef !10
  %i.ck = add i64 %i.cj, %.sroa.014.1.peel.i
  %.not130.peel.i = icmp ult i64 %i.ck, %i.g
  br i1 %.not130.peel.i, label %bb.ap, label %.loopexit283.i

bb.ap:                                            ; preds = %bb.ao, %bb.am, %bb.al
  %.not.i134.peel.i = icmp slt i64 %.sroa.7160.1.peel.i, %11
  %or.cond177.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i134.peel.i
  br i1 %or.cond177.peel.i, label %._crit_edge216.i, label %.lr.ph215.peel.next.i

.lr.ph215.peel.next.i:                            ; preds = %bb.ap, %bb.bd
  %.sroa.7160.0212.i = phi i64 [ %.sroa.7160.1.i, %bb.bd ], [ %.sroa.7160.1.peel.i, %bb.ap ] ; 4 uses
  %i.cl = add nsw i64 %.sroa.7160.0212.i, -1      ; 8 uses
  %i.cm = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.cl, i64 %11)
  switch i8 %i.cm, label %.loopexit276.i [
    i8 -1, label %._crit_edge216.i
    i8 0, label %bb.ar
    i8 1, label %bb.aq
  ]

.loopexit276.i:                                   ; preds = %.lr.ph215.preheader.i, %.lr.ph215.peel.next.i
  unreachable

bb.aq:                                            ; preds = %.lr.ph215.peel.next.i
  %i.cn = add i64 %.sroa.7160.0212.i, -2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph215.peel.next.i
  %.sroa.7160.1.i = phi i64 [ %i.cl, %.lr.ph215.peel.next.i ], [ %i.cn, %bb.aq ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph215.peel.next.i ], [ false, %bb.aq ]
  %i.co = icmp eq i64 %i.cl, %11
  br i1 %i.co, label %._crit_edge310.i, label %bb.as

._crit_edge310.i:                                 ; preds = %bb.ar
  %.pre312.i = add i64 %.sroa.7160.0212.i, %i.u
  br label %._crit_edge310.i.a

._crit_edge216.i:                                 ; preds = %bb.bd, %.lr.ph215.peel.next.i, %.lr.ph.preheader.i, %bb.ap, %.lr.ph215.preheader.i
  %exitcond.not.i = icmp eq i64 %.sroa.047.0219.i, %i.ae
  br i1 %exitcond.not.i, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemSReEEB13_EB6_.exit, label %bb.p

bb.as:                                            ; preds = %bb.ar
  %.not128.i = icmp eq i64 %i.cl, %.sroa.047.0219.i
  %.pre314.i = add i64 %i.cl, %i.ai               ; 6 uses
  br i1 %.not128.i, label %._crit_edge309.i, label %bb.at

._crit_edge310.i.a:                               ; preds = %bb.av, %._crit_edge310.i
  %.pre-phi313.i = phi i64 [ %.pre312.i, %._crit_edge310.i ], [ %i.cs, %bb.av ] ; 3 uses
  %i.cp = icmp ult i64 %.pre-phi313.i, %i.x
  br i1 %i.cp, label %bb.ay, label %.loopexit280.i

._crit_edge309.i:                                 ; preds = %bb.av, %bb.as
  %i.cq = icmp ult i64 %.pre314.i, %i.x
  br i1 %i.cq, label %bb.aw, label %.loopexit279.i

bb.at:                                            ; preds = %bb.as
  %i.cr = icmp ult i64 %.pre314.i, %i.x
  br i1 %i.cr, label %bb.au, label %.loopexit277.i

bb.au:                                            ; preds = %bb.at
  %i.cs = add i64 %.sroa.7160.0212.i, %i.u        ; 4 uses
  %i.ct = icmp ult i64 %i.cs, %i.x
  br i1 %i.ct, label %bb.av, label %.loopexit278.i

.loopexit277.i:                                   ; preds = %bb.at
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre314.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13, !noalias !233
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre314.i
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !233, !noundef !10
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cs
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !233, !noundef !10
  %i.cy = icmp ult i64 %i.cv, %i.cx
  br i1 %i.cy, label %._crit_edge310.i.a, label %._crit_edge309.i

.loopexit278.i:                                   ; preds = %bb.au
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13, !noalias !233
  unreachable

bb.aw:                                            ; preds = %._crit_edge309.i
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre314.i
  %i.da = load i64, ptr %i.cz, align 8, !noalias !233, !noundef !10
  %i.db = add i64 %i.da, 1
  br label %bb.ax

.loopexit279.i:                                   ; preds = %bb.ag, %._crit_edge309.i
  %.lcssa240.i = phi i64 [ %.pre314.i, %._crit_edge309.i ], [ %.pre316.i, %bb.ag ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa240.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #13, !noalias !233
  unreachable

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %.sroa.014.0.i = phi i64 [ %i.dg, %bb.ay ], [ %i.db, %bb.aw ] ; 5 uses
  %i.dc = sub i64 %.sroa.014.0.i, %i.cl           ; 4 uses
  %i.dd = icmp ult i64 %.sroa.014.0.i, %i.g
  %i.de = icmp ult i64 %i.dc, %.sroa.037.0.i
  %or.cond.i = and i1 %i.dd, %i.de
  br i1 %or.cond.i, label %bb.ba, label %bb.az

bb.ay:                                            ; preds = %._crit_edge310.i.a
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre-phi313.i
  %i.dg = load i64, ptr %i.df, align 8, !noalias !233, !noundef !10
  br label %bb.ax

.loopexit280.i:                                   ; preds = %._crit_edge310.i.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi313.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13, !noalias !233
  unreachable

bb.az:                                            ; preds = %bb.ba, %bb.ax
  %.sroa.020.0.i = phi i64 [ %i.dn, %bb.ba ], [ %i.dc, %bb.ax ]
  %.sroa.014.1.i = phi i64 [ %i.dm, %bb.ba ], [ %.sroa.014.0.i, %bb.ax ] ; 3 uses
  %i.dh = add i64 %i.cl, %i.u                     ; 3 uses
  %i.di = icmp ult i64 %i.dh, %i.x
  br i1 %i.di, label %bb.bb, label %.loopexit281.i

bb.ba:                                            ; preds = %bb.ax
  %i.dj = sub i64 %i.e, %.sroa.014.0.i
  %i.dk = sub i64 %i.aj, %i.dc
  %i.dl = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemSReEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.dk), !noalias !233 ; 2 uses
  %i.dm = add i64 %i.dl, %.sroa.014.0.i
  %i.dn = add i64 %i.dl, %i.dc
  br label %bb.az

bb.bb:                                            ; preds = %bb.az
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.dh
  store i64 %.sroa.014.1.i, ptr %i.do, align 8, !noalias !233
  br i1 %.not.i, label %bb.bc, label %bb.bd

.loopexit281.i:                                   ; preds = %bb.ak, %bb.az
  %.lcssa242.i = phi i64 [ %i.dh, %bb.az ], [ %i.cc, %bb.ak ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa242.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13, !noalias !233
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.dp = sub i64 %i.cl, %i.i                     ; 2 uses
  %.sroa.024.0.i = tail call i64 @llvm.abs.i64(i64 %i.dp, i1 false)
  %.not129.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.047.0219.i
  br i1 %.not129.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bf, %bb.bc, %bb.bb
  %.not.i134.i = icmp slt i64 %.sroa.7160.1.i, %11
  %or.cond177.i = or i1 %.sroa.12.1.i, %.not.i134.i
  br i1 %or.cond177.i, label %._crit_edge216.i, label %.lr.ph215.peel.next.i, !llvm.loop !235

bb.be:                                            ; preds = %bb.bc
  %i.dq = sub i64 %i.l, %i.dp                     ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.o
  br i1 %i.dr, label %bb.bf, label %.loopexit282.i

bb.bf:                                            ; preds = %bb.be
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dq
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !233, !noundef !10
  %i.du = add i64 %i.dt, %.sroa.014.1.i
  %.not130.i = icmp ult i64 %i.du, %i.g
  br i1 %.not130.i, label %bb.bd, label %.loopexit283.i

.loopexit282.i:                                   ; preds = %bb.an, %bb.be
  %.lcssa249.i = phi i64 [ %i.dq, %bb.be ], [ %i.cg, %bb.an ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa249.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #13, !noalias !233
  unreachable

.loopexit283.i:                                   ; preds = %bb.ao, %bb.bf
  %.sroa.020.0.lcssa248.i = phi i64 [ %.sroa.020.0.i, %bb.bf ], [ %.sroa.020.0.peel.i, %bb.ao ]
  %.sroa.014.1.lcssa246.i = phi i64 [ %.sroa.014.1.i, %bb.bf ], [ %.sroa.014.1.peel.i, %bb.ao ]
  %i.dv = sub i64 %i.e, %.sroa.014.1.lcssa246.i
  %i.dw = sub i64 %i.aj, %.sroa.020.0.lcssa248.i
  br label %bb.bu

bb.bg:                                            ; preds = %bb.ad
  %.not131.i = icmp eq i64 %i.bk, %.sroa.047.0219.i
  %.pre322.i = add i64 %i.bk, %i.ah               ; 6 uses
  br i1 %.not131.i, label %._crit_edge305.i, label %bb.bh

._crit_edge306.i.a:                               ; preds = %bb.bj, %._crit_edge306.i
  %.pre-phi321.i = phi i64 [ %.pre320.i, %._crit_edge306.i ], [ %i.ea, %bb.bj ] ; 3 uses
  %i.dx = icmp ult i64 %.pre-phi321.i, %i.o
  br i1 %i.dx, label %bb.bm, label %.loopexit255.i

._crit_edge305.i:                                 ; preds = %bb.bj, %bb.bg
  %i.dy = icmp ult i64 %.pre322.i, %i.o
  br i1 %i.dy, label %bb.bk, label %.loopexit254.i

bb.bh:                                            ; preds = %bb.bg
  %i.dz = icmp ult i64 %.pre322.i, %i.o
  br i1 %i.dz, label %bb.bi, label %.loopexit252.i

bb.bi:                                            ; preds = %bb.bh
  %i.ea = add i64 %.sroa.7.0208.i, %i.l           ; 4 uses
  %i.eb = icmp ult i64 %i.ea, %i.o
  br i1 %i.eb, label %bb.bj, label %.loopexit253.i

.loopexit252.i:                                   ; preds = %bb.bh
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre322.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #13, !noalias !233
  unreachable

bb.bj:                                            ; preds = %bb.bi
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre322.i
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !233, !noundef !10
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ea
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !233, !noundef !10
  %i.eg = icmp ult i64 %i.ed, %i.ef
  br i1 %i.eg, label %._crit_edge306.i.a, label %._crit_edge305.i

.loopexit253.i:                                   ; preds = %bb.bi
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #13, !noalias !233
  unreachable

bb.bk:                                            ; preds = %._crit_edge305.i
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre322.i
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !233, !noundef !10
  %i.ej = add i64 %i.ei, 1
  br label %bb.bl

.loopexit254.i:                                   ; preds = %bb.s, %._crit_edge305.i
  %.lcssa225.i = phi i64 [ %.pre322.i, %._crit_edge305.i ], [ %.pre324.i, %bb.s ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa225.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #13, !noalias !233
  unreachable

bb.bl:                                            ; preds = %bb.bm, %bb.bk
  %.sroa.04.0.i = phi i64 [ %i.eo, %bb.bm ], [ %i.ej, %bb.bk ] ; 6 uses
  %i.ek = sub i64 %.sroa.04.0.i, %i.bk            ; 3 uses
  %i.el = icmp ult i64 %.sroa.04.0.i, %i.g
  %i.em = icmp ult i64 %i.ek, %i.h
  %or.cond175.i = and i1 %i.el, %i.em
  br i1 %or.cond175.i, label %bb.bo, label %bb.bn

bb.bm:                                            ; preds = %._crit_edge306.i.a
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi321.i
  %i.eo = load i64, ptr %i.en, align 8, !noalias !233, !noundef !10
  br label %bb.bl

.loopexit255.i:                                   ; preds = %._crit_edge306.i.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi321.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #13, !noalias !233
  unreachable

bb.bn:                                            ; preds = %bb.bo, %bb.bl
  %.sroa.04.1.i = phi i64 [ %i.eu, %bb.bo ], [ %.sroa.04.0.i, %bb.bl ] ; 2 uses
  %i.ep = add i64 %i.bk, %i.l                     ; 3 uses
  %i.eq = icmp ult i64 %i.ep, %i.o
  br i1 %i.eq, label %bb.bp, label %.loopexit256.i

bb.bo:                                            ; preds = %bb.bl
  %i.er = add i64 %.sroa.04.0.i, %i.b
  %i.es = add i64 %i.ek, %i.c
  %i.et = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemSReEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.er, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.es, i64 noundef %i.f), !noalias !233
  %i.eu = add i64 %i.et, %.sroa.04.0.i
  br label %bb.bn

bb.bp:                                            ; preds = %bb.bn
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ep
  store i64 %.sroa.04.1.i, ptr %i.ev, align 8, !noalias !233
  br i1 %.not.i, label %bb.bq, label %bb.br

.loopexit256.i:                                   ; preds = %bb.w, %bb.bn
  %.lcssa232.i = phi i64 [ %i.ep, %bb.bn ], [ %i.bb, %bb.w ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa232.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #13, !noalias !233
  unreachable

bb.bq:                                            ; preds = %bb.bt, %bb.br, %bb.bp
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %11
  %or.cond176.i = or i1 %.sroa.11.1.i, %.not.i.i
  br i1 %or.cond176.i, label %.lr.ph215.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !236

bb.br:                                            ; preds = %bb.bp
  %i.ew = sub i64 %i.bk, %i.i                     ; 2 uses
  %.sroa.010.0.i = tail call i64 @llvm.abs.i64(i64 %i.ew, i1 false)
  %.not132.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.047.0219.i
  br i1 %.not132.not.i, label %bb.bs, label %bb.bq

bb.bs:                                            ; preds = %bb.br
  %i.ex = sub i64 %i.u, %i.ew                     ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %i.x
  br i1 %i.ey, label %bb.bt, label %.loopexit257.i

bb.bt:                                            ; preds = %bb.bs
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ex
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !233, !noundef !10
  %i.fb = add i64 %i.fa, %.sroa.04.1.i
  %.not133.i = icmp ult i64 %i.fb, %i.g
  br i1 %.not133.i, label %bb.bq, label %.loopexit258.i

.loopexit257.i:                                   ; preds = %bb.z, %bb.bs
  %.lcssa235.i = phi i64 [ %i.ex, %bb.bs ], [ %i.bf, %bb.z ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa235.i, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #13, !noalias !233
  unreachable

.loopexit258.i:                                   ; preds = %bb.aa, %bb.bt
  %.sroa.04.0.lcssa231.i = phi i64 [ %.sroa.04.0.i, %bb.bt ], [ %.sroa.04.0.peel.i, %bb.aa ]
  %.lcssa229.i = phi i64 [ %i.ek, %bb.bt ], [ %i.au, %bb.aa ]
  %i.fc = add i64 %.sroa.04.0.lcssa231.i, %i.b
  %i.fd = add i64 %.lcssa229.i, %i.c
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit258.i, %.loopexit283.i
  %.sroa.6.0.ph = phi i64 [ %i.fd, %.loopexit258.i ], [ %i.dw, %.loopexit283.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.fc, %.loopexit258.i ], [ %i.dv, %.loopexit283.i ] ; 2 uses
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemSReEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB1X_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.6.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemSReEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB1X_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.6.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemSReEEB13_EB6_.exit: ; preds = %._crit_edge216.i, %bb.p
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceSReB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %i.b, i64 noundef %i.g, i64 noundef %i.c)
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceSReB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %i.b, i64 noundef %i.c, i64 noundef %i.h)
  br label %bb.e

bb.bv:                                            ; preds = %bb.f
  %i.fe = sub i64 %i.f, %i.c
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceSReB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %i.b, i64 noundef %i.c, i64 noundef %i.fe)
  br label %bb.e

bb.bw:                                            ; preds = %bb.e
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceSReB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %i.e, i64 noundef %i.f, i64 noundef %i.d)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.e, %bb.bw
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerSReBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 576460752303423488) %6, i64 noundef %7, i64 noundef %8, ptr noalias noundef nonnull align 8 dereferenceable(32) %9, ptr noalias noundef nonnull align 8 dereferenceable(32) %10, i64 %11, i32 noundef range(i32 -1, 1000000000) %12) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenSReB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit, %bb.a
  %i.c = add i64 %i.b, %3                         ; 10 uses
  %i.d = add i64 %i.b, %7                         ; 10 uses
  %i.e = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.c, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.d, i64 noundef %8) ; 4 uses
  %i.f = sub i64 %4, %i.e                         ; 6 uses
  %i.g = sub i64 %8, %i.e                         ; 6 uses
  %.not16 = icmp ult i64 %i.c, %i.f               ; 2 uses
  %.not17 = icmp ult i64 %i.d, %i.g               ; 2 uses
  %or.cond = or i1 %.not16, %.not17
  br i1 %or.cond, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !243, !nonnull !10, !align !92, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !244, !noalias !243, !nonnull !10, !align !92, !noundef !10 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 136 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !247, !noalias !250, !noundef !10 ; 3 uses
  %i.m = load i64, ptr %i.j, align 8, !range !101, !alias.scope !247, !noalias !250, !noundef !10
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !250
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit: ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !247, !noalias !250, !nonnull !10, !noundef !10
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l ; 4 uses
  store i64 0, ptr %i.q, align 8, !noalias !252
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !252
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %7, ptr %.sroa.547.0..sroa_idx, align 8, !noalias !252
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.b, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !252
  %i.r = add i64 %i.l, 1
  store i64 %i.r, ptr %i.k, align 8, !alias.scope !247, !noalias !250
  br label %bb.b

bb.e:                                             ; preds = %bb.b
  br i1 %.not17, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.b, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit31, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit34, %bb.o
  %.not19 = icmp eq i64 %i.e, 0
  br i1 %.not19, label %bb.t, label %bb.r

bb.g:                                             ; preds = %bb.e
  br i1 %.not16, label %bb.j, label %bb.p

bb.h:                                             ; preds = %bb.e
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.s = load ptr, ptr %0, align 8, !alias.scope !259, !nonnull !10, !align !92, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !260, !noalias !259, !nonnull !10, !align !92, !noundef !10 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 120 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 136 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !263, !noalias !266, !noundef !10 ; 3 uses
  %i.x = load i64, ptr %i.u, align 8, !range !101, !alias.scope !263, !noalias !266, !noundef !10
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.i, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit31

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u), !noalias !266
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit31

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit31: ; preds = %bb.h, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !263, !noalias !266, !nonnull !10, !noundef !10
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.w ; 4 uses
  store i64 1, ptr %i.ab, align 8, !noalias !268
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.c, ptr %.sroa.459.0..sroa_idx, align 8, !noalias !268
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.sroa.0.0, ptr %.sroa.560.0..sroa_idx, align 8, !noalias !268
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 %i.d, ptr %.sroa.661.0..sroa_idx, align 8, !noalias !268
  %i.ac = add i64 %i.w, 1
  store i64 %i.ac, ptr %i.v, align 8, !alias.scope !263, !noalias !266
  br label %bb.f

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeSReB13_EB6_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.c, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.d, i64 noundef %i.g, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  %i.ad = load i64, ptr %i.a, align 8, !range !9, !noundef !10
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !10 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !10 ; 2 uses
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerSReBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.c, i64 noundef %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.d, i64 noundef %i.ai, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerSReBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ag, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.ai, i64 noundef %i.g, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.aj = sub i64 %i.f, %i.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !275, !nonnull !10, !align !92, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !276, !noalias !275, !nonnull !10, !align !92, !noundef !10 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 120 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 136 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !279, !noalias !282, !noundef !10 ; 3 uses
  %i.ap = load i64, ptr %i.am, align 8, !range !101, !alias.scope !279, !noalias !282, !noundef !10
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.m, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am), !noalias !282
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32: ; preds = %bb.l, %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !279, !noalias !282, !nonnull !10, !noundef !10
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.ao ; 4 uses
  store i64 1, ptr %i.at, align 8, !noalias !284
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.c, ptr %.sroa.454.0..sroa_idx, align 8, !noalias !284
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.aj, ptr %.sroa.555.0..sroa_idx, align 8, !noalias !284
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %i.d, ptr %.sroa.656.0..sroa_idx, align 8, !noalias !284
  %i.au = add i64 %i.ao, 1
  store i64 %i.au, ptr %i.an, align 8, !alias.scope !279, !noalias !282
  %i.av = sub i64 %i.g, %i.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
end_hunk_1
