Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/exr-f2a8b2e207dae201.exr.9cd9361a9d216ccf-cgu.00?download=true
inline.NumInlined: 482
inline.NumDeleted: 291
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemINtB5_3VechENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsdsTQD3x2eOp_3exr:bb.a
.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !range !13, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !14, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecIBv_hEE7reserveCsdsTQD3x2eOp_3exr.exit.i, !prof !6

bb.b:                                             ; preds = %.noexc
  %i.j = load i64, ptr %i.i, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #18
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.b
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecIBv_hEE7reserveCsdsTQD3x2eOp_3exr.exit.i: ; preds = %.noexc
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.o = icmp ugt i64 %2, 1
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecIBv_hEE7reserveCsdsTQD3x2eOp_3exr.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !104, !noalias !105, !nonnull !4, !noundef !4
  %i.u = load i64, ptr %i.p, align 8, !alias.scope !104, !noalias !105, !noundef !4 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit.i.i.i.us
  %.sroa.0.030.i.us = phi ptr [ %i.aa, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit.i.i.i.us ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.029.i.us = phi i64 [ %i.z, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit.i.i.i.us ], [ 1, %.lr.ph.i ]
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
  %i.o = xor i64 %i.b, -1
  %i.p = add i64 %1, %i.o                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.p, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5 = icmp ult i64 %i.p, 16
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.p, 12
  %n.vec = and i64 %i.p, -16                      ; 5 uses
  %i.r = shl i64 %n.vec, 1
  %i.s = getelementptr i8, ptr %i.m, i64 %i.r     ; 2 uses
  %i.t = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2
  store <8 x i16> %broadcast.splat, ptr %i.v, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec7 = and i64 %i.p, -4                      ; 4 uses
  %i.x = shl i64 %n.vec7, 1
  %i.y = getelementptr i8, ptr %i.m, i64 %i.x     ; 2 uses
  %i.z = or disjoint i64 %n.vec7, 1
  %broadcast.splatinsert8 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat9 = shufflevector <4 x i16> %broadcast.splatinsert8, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 2 uses
  %i.aa = shl i64 %index10, 1
  %next.gep11 = getelementptr i8, ptr %i.m, i64 %i.aa
  store <4 x i16> %broadcast.splat9, ptr %next.gep11, align 2
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next12, %n.vec7
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %i.p, %n.vec7
  br i1 %cmp.n13, label %._crit_edge.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.021.i.ph = phi ptr [ %i.m, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  %.sroa.03.020.i.ph = phi i64 [ 1, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.y, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %i.ag, %.lr.ph.i ]
  %i.ac = add i64 %i.e, -1
  %i.ad = add i64 %i.ac, %i.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %.lcssa, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.ad, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.i ]
  store i16 %2, ptr %.sroa.0.0.lcssa28.i, align 2
  %i.ae = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE8truncateCsdsTQD3x2eOp_3exr.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.021.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.sroa.0.021.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.03.020.i = phi i64 [ %i.af, %.lr.ph.i ], [ %.sroa.03.020.i.ph, %.lr.ph.i.preheader ]
  %i.af = add nuw i64 %.sroa.03.020.i, 1          ; 2 uses
  store i16 %2, ptr %.sroa.0.021.i, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 2 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !121

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE8truncateCsdsTQD3x2eOp_3exr.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.ae, %._crit_edge.i ]
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
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE11extend_withBN_:bb.a
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %1, i64 noundef 8, i64 noundef 32)
          to label %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit_crit_edge unwind label %bb.c

._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %i.b, align 8
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit: ; preds = %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit_crit_edge, %bb.a
  %i.h = phi i64 [ %.pre, %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit_crit_edge ], [ %i.c, %bb.a ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = icmp ult i64 %i.h, 288230376151711744
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.h ; 2 uses
  %i.m = icmp ugt i64 %1, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = add i64 %i.h, %1
  %i.t = add i64 %i.s, -1
  br label %bb.d

._crit_edge:                                      ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.k, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  %.sroa.0.029 = phi ptr [ %i.l, %.lr.ph ], [ %i.aj, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ] ; 5 uses
  %.sroa.03.028 = phi i64 [ 1, %.lr.ph ], [ %i.ai, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ]
  %storemerge27 = phi i64 [ %i.h, %.lr.ph ], [ %i.ak, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.u = load i32, ptr %2, align 8, !range !16, !alias.scope !156, !noalias !157, !noundef !4 ; 2 uses
  switch i32 %i.u, label %default.unreachable [
    i32 0, label %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.r, align 4, !alias.scope !156, !noalias !157, !noundef !4
  %i.w = load i8, ptr %i.n, align 8, !alias.scope !156, !noalias !157, !noundef !4
  br label %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.x = load i64, ptr %i.o, align 8, !alias.scope !159, !noalias !160, !noundef !4 ; 2 uses
  %i.y = icmp ugt i64 %i.x, 2
  %i.z = load ptr, ptr %i.n, align 8, !alias.scope !159, !noalias !160, !noundef !4 ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.p, align 8, !alias.scope !159, !noalias !160, !noundef !4
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ab = icmp eq ptr %i.z, null
  call void @llvm.assume(i1 %i.ab)
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.i.i

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.i.i: ; preds = %bb.h, %bb.g
  %.sink13.i.i.i = phi ptr [ %i.z, %bb.g ], [ %i.p, %bb.h ] ; 3 uses
  %.sink12.i.i.i = phi i64 [ %i.aa, %bb.g ], [ %i.x, %bb.h ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink13.i.i.i) ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sink13.i.i.i, i64 %.sink12.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !161
  store i64 0, ptr %i.q, align 8, !noalias !161
  store ptr null, ptr %i.a, align 8, !noalias !161
  invoke void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAmj2_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendmE6extendINtNtNtBV_8adapters6cloned6ClonedINtNtNtBX_5slice4iter4ItermEEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %.sink13.i.i.i, ptr noundef nonnull %i.ac)
          to label %_RNvXsw_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsdsTQD3x2eOp_3exr.exit.i unwind label %bb.i, !noalias !162

bb.i:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.j, !noalias !162

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !162
  unreachable

_RNvXsw_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsdsTQD3x2eOp_3exr.exit.i: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.i.i
  %.sroa.722.8.copyload = load i8, ptr %i.a, align 8, !noalias !156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.8..sroa_idx, i64 23, i1 false), !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !161
  br label %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.k:                                             ; preds = %._crit_edge
  store i64 %i.h, ptr %i.b, align 8
  %i.af = load i32, ptr %2, align 8, !range !16, !alias.scope !163, !noundef !4
  %switch.i = icmp samesign ult i32 %i.af, 2
  br i1 %switch.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeEBJ_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeEBJ_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeEBJ_.exit: ; preds = %bb.l, %bb.k, %._crit_edge.thread
  ret void

._crit_edge.thread:                               ; preds = %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %._crit_edge
  %.sroa.0.0.lcssa40 = phi ptr [ %i.l, %._crit_edge ], [ %i.aj, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ]
  %storemerge.lcssa39 = phi i64 [ %i.h, %._crit_edge ], [ %i.t, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.lcssa40, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.ah = add i64 %storemerge.lcssa39, 1
  store i64 %i.ah, ptr %i.b, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeEBJ_.exit

.body:                                            ; preds = %bb.i
  store i64 %storemerge27, ptr %i.b, align 8
  br label %bb.n

_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %_RNvXsw_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsdsTQD3x2eOp_3exr.exit.i, %bb.e, %bb.d
  %.sroa.722.0 = phi i8 [ %.sroa.722.8.copyload, %_RNvXsw_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsdsTQD3x2eOp_3exr.exit.i ], [ %i.w, %bb.e ], [ undef, %bb.d ]
  %.sroa.6.0 = phi i32 [ undef, %_RNvXsw_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsdsTQD3x2eOp_3exr.exit.i ], [ %i.v, %bb.e ], [ undef, %bb.d ]
  %i.ai = add nuw i64 %.sroa.03.028, 1            ; 2 uses
  store i32 %i.u, ptr %.sroa.0.029, align 8
  %.sroa.6.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 4
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa.0.0.sroa_idx, align 4
  %.sroa.722.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 8
  store i8 %.sroa.722.0, ptr %.sroa.722.0..sroa.0.0.sroa_idx, align 8
  %.sroa.9.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.0..sroa.0.0.sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 32 ; 2 uses
  %i.ak = add i64 %storemerge27, 1
  %exitcond.not = icmp eq i64 %i.ai, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.d

bb.m:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

.noexc15:                                         ; preds = %bb.o, %bb.n
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.c, %.body
  %.pn = phi { ptr, i32 } [ %i.ad, %.body ], [ %i.g, %bb.c ]
  %i.am = load i32, ptr %2, align 8, !range !16, !alias.scope !164, !noundef !4
  %switch.i14 = icmp samesign ult i32 %i.am, 2
  br i1 %switch.i14, label %.noexc15, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.noexc15 unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecbE11extend_withCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i1 %2 to i8                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !167, !noundef !4 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !5, !alias.scope !167, !noundef !4
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecbE7reserveCsdsTQD3x2eOp_3exr.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  %.pre = load i64, ptr %i.b, align 8
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecbE7reserveCsdsTQD3x2eOp_3exr.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecbE7reserveCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr i8, ptr %i.i, i64 %i.g     ; 2 uses
  %i.l = icmp ugt i64 %1, 1
  br i1 %i.l, label %._crit_edge.thread, label %._crit_edge

._crit_edge.thread:                               ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecbE7reserveCsdsTQD3x2eOp_3exr.exit
  %i.m = add i64 %1, -1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 %i.a, i64 %i.m, i1 false)
  %i.n = add i64 %i.g, %1
  %i.o = add i64 %i.n, -1                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.o
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecbE7reserveCsdsTQD3x2eOp_3exr.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa28 = phi ptr [ %scevgep, %._crit_edge.thread ], [ %i.k, %._crit_edge ]
  %storemerge.lcssa27 = phi i64 [ %i.o, %._crit_edge.thread ], [ %i.g, %._crit_edge ]
  store i8 %i.a, ptr %.sroa.0.0.lcssa28, align 1
  %i.p = add i64 %storemerge.lcssa27, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge18 = phi i64 [ %i.p, %bb.c ], [ %i.g, %._crit_edge ]
  store i64 %storemerge18, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfE11extend_withCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, float noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !172, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !5, !alias.scope !172, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecfE7reserveCsdsTQD3x2eOp_3exr.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 4, i64 noundef 4)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecfE7reserveCsdsTQD3x2eOp_3exr.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecfE7reserveCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = icmp ult i64 %i.f, 2305843009213693952
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 4 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecfE7reserveCsdsTQD3x2eOp_3exr.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 9
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.m = shl i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4
  store <4 x float> %broadcast.splat, ptr %i.q, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.021.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.sroa.03.020.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %i.n, %middle.block ], [ %i.w, %.lr.ph ]
  %i.s = add i64 %i.f, %1
  %i.t = add i64 %i.s, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecfE7reserveCsdsTQD3x2eOp_3exr.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa28 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa27 = phi i64 [ %i.t, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store float %2, ptr %.sroa.0.0.lcssa28, align 4
  %i.u = add i64 %storemerge.lcssa27, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge18 = phi i64 [ %i.u, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge18, ptr %i.a, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %.lr.ph
  %.sroa.0.021 = phi ptr [ %i.w, %.lr.ph ], [ %.sroa.0.021.ph, %.lr.ph.preheader30 ] ; 2 uses
  %.sroa.03.020 = phi i64 [ %i.v, %.lr.ph ], [ %.sroa.03.020.ph, %.lr.ph.preheader30 ]
  %i.v = add nuw i64 %.sroa.03.020, 1             ; 2 uses
  store float %2, ptr %.sroa.0.021, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 4 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !171
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjE11extend_withCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !177, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !5, !alias.scope !177, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecjE7reserveCsdsTQD3x2eOp_3exr.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 8)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecjE7reserveCsdsTQD3x2eOp_3exr.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecjE7reserveCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = icmp ult i64 %i.f, 1152921504606846976
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f ; 4 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecjE7reserveCsdsTQD3x2eOp_3exr.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 5
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, -4                       ; 4 uses
  %i.m = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.q, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.021.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.sroa.03.020.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %i.n, %middle.block ], [ %i.w, %.lr.ph ]
  %i.s = add i64 %i.f, %1
  %i.t = add i64 %i.s, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecjE7reserveCsdsTQD3x2eOp_3exr.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa28 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa27 = phi i64 [ %i.t, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store i64 %2, ptr %.sroa.0.0.lcssa28, align 8
  %i.u = add i64 %storemerge.lcssa27, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge18 = phi i64 [ %i.u, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge18, ptr %i.a, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %.lr.ph
  %.sroa.0.021 = phi ptr [ %i.w, %.lr.ph ], [ %.sroa.0.021.ph, %.lr.ph.preheader30 ] ; 2 uses
  %.sroa.03.020 = phi i64 [ %i.v, %.lr.ph ], [ %.sroa.03.020.ph, %.lr.ph.preheader30 ]
  %i.v = add nuw i64 %.sroa.03.020, 1             ; 2 uses
  store i64 %2, ptr %.sroa.0.021, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 8 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !176
}
end_hunk_1
