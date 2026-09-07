Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/exr-f2a8b2e207dae201.exr.9cd9361a9d216ccf-cgu.00?download=true
inline.NumInlined: 482
inline.NumDeleted: 291
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemINtB5_3VechENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsdsTQD3x2eOp_3exr:bb.a
  %storemerge28.i.us = phi i64 [ %i.ab, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit.i.i.i.us ], [ 0, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !107
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc14.i.us unwind label %.loopexit.i.split.us, !noalias !103

.noexc14.i.us:                                    ; preds = %.lr.ph.i.split.us
  %i.v = load i64, ptr %i.a, align 8, !range !13, !noalias !107, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = load i64, ptr %i.r, align 8, !range !14, !noalias !107, !noundef !4 ; 2 uses
  br i1 %i.w, label %.split.us, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit.i.i.i.us, !prof !6

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit.i.i.i.us: ; preds = %.noexc14.i.us
  %i.y = load ptr, ptr %i.s, align 8, !noalias !107, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !107
  %i.z = add nuw i64 %.sroa.03.029.i.us, 1        ; 2 uses
  store i64 %i.x, ptr %.sroa.0.030.i.us, align 8, !noalias !103
  %.sroa.4.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 8
  store ptr %i.y, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !103
  %.sroa.5.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !103
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 24 ; 2 uses
  %i.ab = add nuw i64 %storemerge28.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %i.z, %2
  br i1 %exitcond.not.i.us, label %._crit_edge.thread.i, label %.lr.ph.i.split.us

.loopexit.i.split.us:                             ; preds = %.lr.ph.i.split.us
  %lpad.loopexit.i.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecIBv_hEE7reserveCsdsTQD3x2eOp_3exr.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.thread.i

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit.i.i.i
  %.sroa.0.030.i = phi ptr [ %i.aj, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit.i.i.i ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.029.i = phi i64 [ %i.ai, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit.i.i.i ], [ 1, %.lr.ph.i ]
  %storemerge28.i = phi i64 [ %i.ak, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit.i.i.i ], [ 0, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !107
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.u, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc14.i unwind label %.loopexit.i.split, !noalias !103

.noexc14.i:                                       ; preds = %.lr.ph.i.split
  %i.ac = load i64, ptr %i.a, align 8, !range !13, !noalias !107, !noundef !4
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = load i64, ptr %i.r, align 8, !range !14, !noalias !107, !noundef !4 ; 3 uses
  br i1 %i.ad, label %.split.us, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit.i.i.i, !prof !6

.split.us:                                        ; preds = %.noexc14.i, %.noexc14.i.us
  %.us-phi16 = phi i64 [ %i.x, %.noexc14.i.us ], [ %i.ae, %.noexc14.i ]
  %.us-phi17 = phi i64 [ %storemerge28.i.us, %.noexc14.i.us ], [ %storemerge28.i, %.noexc14.i ]
  %i.af = load i64, ptr %i.s, align 8, !noalias !107
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.us-phi16, i64 %i.af) #18
          to label %.noexc15.i unwind label %.loopexit.split-lp.i, !noalias !103

.noexc15.i:                                       ; preds = %.split.us
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit.i.i.i: ; preds = %.noexc14.i
  %i.ag = load ptr, ptr %i.s, align 8, !noalias !107, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = icmp ule i64 %i.u, %i.ae
  tail call void @llvm.assume(i1 %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !107
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.t, i64 range(i64 0, -9223372036854775808) %i.u, i1 false), !noalias !108
  %i.ai = add nuw i64 %.sroa.03.029.i, 1          ; 2 uses
  store i64 %i.ae, ptr %.sroa.0.030.i, align 8, !noalias !103
  %.sroa.4.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 8
  store ptr %i.ag, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i, align 8, !noalias !103
  %.sroa.5.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 16
  store i64 %i.u, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i, align 8, !noalias !103
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 24 ; 2 uses
  %i.ak = add nuw i64 %storemerge28.i, 1
  %exitcond.not.i = icmp eq i64 %i.ai, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i.split

bb.c:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.n, align 8, !alias.scope !102, !noalias !103
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_hEE11extend_withCsdsTQD3x2eOp_3exr.exit unwind label %bb.e

._crit_edge.thread.i:                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit.i.i.i.us, %._crit_edge.i
  %.sroa.0.0.lcssa44.i = phi ptr [ %i.k, %._crit_edge.i ], [ %i.aa, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit.i.i.i.us ], [ %i.aj, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit.i.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa44.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %2, ptr %i.n, align 8, !alias.scope !102, !noalias !103
  br label %_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_hEE11extend_withCsdsTQD3x2eOp_3exr.exit

.loopexit.i.split:                                ; preds = %.lr.ph.i.split
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i:                             ; preds = %.split.us
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

bb.d:                                             ; preds = %.loopexit.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

.loopexit.i:                                      ; preds = %.loopexit.i.split, %.loopexit.i.split.us, %.loopexit.split-lp.i
  %storemerge28.i12 = phi i64 [ %.us-phi17, %.loopexit.split-lp.i ], [ %storemerge28.i, %.loopexit.i.split ], [ %storemerge28.i.us, %.loopexit.i.split.us ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i.split ], [ %lpad.loopexit.i.us, %.loopexit.i.split.us ]
  store i64 %storemerge28.i12, ptr %i.n, align 8, !alias.scope !102, !noalias !103
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.d

bb.e:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.e ], [ %lpad.phi.i, %.loopexit.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_hEEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit unwind label %bb.f

_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_hEE11extend_withCsdsTQD3x2eOp_3exr.exit: ; preds = %._crit_edge.thread.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.g, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.g, %.body
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ao, %bb.g ]
  resume { ptr, i32 } %.pn8

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 6 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCsdsTQD3x2eOp_3exr.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !5, !alias.scope !113, !noundef !4
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr.exit.i, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !114
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !114, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr i8, ptr %i.k, i64 %i.i     ; 2 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr.exit.i
  %i.o = add i64 %i.e, -1                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 %2, i64 %i.o, i1 false)
  %i.p = add i64 %i.o, %i.i                       ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.p
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %scevgep.i, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.p, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr.exit.i ]
  store i8 %2, ptr %.sroa.0.0.lcssa28.i, align 1
  %i.q = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCsdsTQD3x2eOp_3exr.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCsdsTQD3x2eOp_3exr.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.q, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE6resizeCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i16 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 7 uses
  %i.c = icmp ult i64 %i.b, 4611686018427387904
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE8truncateCsdsTQD3x2eOp_3exr.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 5 uses
  %i.f = load i64, ptr %0, align 8, !range !5, !alias.scope !122, !noundef !4
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.i, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 2, i64 noundef 2)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !123
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !123, !nonnull !4, !noundef !4
  %i.l = icmp ult i64 %i.i, 4611686018427387904
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.i ; 6 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.i
  %3 = xor i64 %i.b, -1
  %i.o = add i64 %1, %3                           ; 7 uses
  %min.iters.check = icmp ult i64 %i.o, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5 = icmp ult i64 %i.o, 16
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.o, 12
  %n.vec = and i64 %i.o, -16                      ; 5 uses
  %i.q = shl i64 %n.vec, 1
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q     ; 2 uses
  %i.s = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2
  store <8 x i16> %broadcast.splat, ptr %i.u, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec7 = and i64 %i.o, -4                      ; 4 uses
  %i.w = shl i64 %n.vec7, 1
  %i.x = getelementptr i8, ptr %i.m, i64 %i.w     ; 2 uses
  %i.y = or disjoint i64 %n.vec7, 1
  %broadcast.splatinsert8 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat9 = shufflevector <4 x i16> %broadcast.splatinsert8, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 2 uses
  %i.z = shl i64 %index10, 1
  %next.gep11 = getelementptr i8, ptr %i.m, i64 %i.z
  store <4 x i16> %broadcast.splat9, ptr %next.gep11, align 2
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next12, %n.vec7
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %i.o, %n.vec7
  br i1 %cmp.n13, label %._crit_edge.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.021.i.ph = phi ptr [ %i.m, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  %.sroa.03.020.i.ph = phi i64 [ 1, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.x, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %i.af, %.lr.ph.i ]
  %i.ab = add i64 %i.e, -1
  %i.ac = add i64 %i.ab, %i.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %.lcssa, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.ac, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.i ]
  store i16 %2, ptr %.sroa.0.0.lcssa28.i, align 2
  %i.ad = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE8truncateCsdsTQD3x2eOp_3exr.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.021.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.sroa.0.021.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.03.020.i = phi i64 [ %i.ae, %.lr.ph.i ], [ %.sroa.03.020.i.ph, %.lr.ph.i.preheader ]
  %i.ae = add nuw i64 %.sroa.03.020.i, 1          ; 2 uses
  store i16 %2, ptr %.sroa.0.021.i, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 2 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !121

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE8truncateCsdsTQD3x2eOp_3exr.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.ad, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAAfj40_j3_E11extend_withCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(768) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !127, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !5, !alias.scope !127, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAAfj40_j3_E7reserveCsdsTQD3x2eOp_3exr.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 4, i64 noundef 768)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAAfj40_j3_E7reserveCsdsTQD3x2eOp_3exr.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAAfj40_j3_E7reserveCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = icmp ult i64 %i.f, 12009599006321323
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [768 x i8], ptr %i.h, i64 %i.f ; 3 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAAfj40_j3_E7reserveCsdsTQD3x2eOp_3exr.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %i.m = add i64 %1, -2
  %xtraiter = and i64 %i.l, 3                     ; 3 uses
  %i.n = icmp ult i64 %i.m, 3
  br i1 %i.n, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.l, -4
  br label %.lr.ph

._crit_edge.thread.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.thread.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.020.epil.init = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.v, %._crit_edge.thread.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.020.epil = phi ptr [ %i.o, %.lr.ph.epil ], [ %.sroa.0.020.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(768) %.sroa.0.020.epil, ptr noundef nonnull align 4 dereferenceable(768) %2, i64 768, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.020.epil, i64 768 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread, label %.lr.ph.epil, !llvm.loop !126

._crit_edge.thread:                               ; preds = %.lr.ph.epil, %._crit_edge.thread.unr-lcssa
  %.lcssa = phi ptr [ %i.v, %._crit_edge.thread.unr-lcssa ], [ %i.o, %.lr.ph.epil ]
  %i.p = add i64 %i.f, %1
  %i.q = add i64 %i.p, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAAfj40_j3_E7reserveCsdsTQD3x2eOp_3exr.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa27 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa26 = phi i64 [ %i.q, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(768) %.sroa.0.0.lcssa27, ptr noundef nonnull align 4 dereferenceable(768) %2, i64 768, i1 false)
  %i.r = add i64 %storemerge.lcssa26, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge17 = phi i64 [ %i.r, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge17, ptr %i.a, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.020 = phi ptr [ %i.j, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(768) %.sroa.0.020, ptr noundef nonnull align 4 dereferenceable(768) %2, i64 768, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 768
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(768) %i.s, ptr noundef nonnull align 4 dereferenceable(768) %2, i64 768, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 1536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(768) %i.t, ptr noundef nonnull align 4 dereferenceable(768) %2, i64 768, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 2304
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(768) %i.u, ptr noundef nonnull align 4 dereferenceable(768) %2, i64 768, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 3072 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.thread.unr-lcssa, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAbj3_E11extend_withCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i24 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !131, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !5, !alias.scope !131, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAbj3_E7reserveCsdsTQD3x2eOp_3exr.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 3)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAbj3_E7reserveCsdsTQD3x2eOp_3exr.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecAbj3_E7reserveCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = icmp ult i64 %i.f, 3074457345618258603
end_hunk_0
