Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.000?download=true
inline.NumInlined: 13187
inline.NumDeleted: 6664
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtB5_3VecfENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs607s0NAIaWN_7segment:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !range !1363, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !5334, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_fEE7reserveCs607s0NAIaWN_7segment.exit.i, !prof !14

bb.b:                                             ; preds = %.noexc
  %i.j = load i64, ptr %i.i, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #37
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.b
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_fEE7reserveCs607s0NAIaWN_7segment.exit.i: ; preds = %.noexc
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5366)
  %i.o = icmp ugt i64 %2, 1
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_fEE7reserveCs607s0NAIaWN_7segment.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !5368, !noalias !5371, !nonnull !4, !noundef !4
  %i.u = load i64, ptr %i.p, align 8, !alias.scope !5368, !noalias !5371, !noundef !4 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0
  %i.v = shl nuw nsw i64 %i.u, 2
  br i1 %.not.i.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us
  %.sroa.0.030.i.us = phi ptr [ %i.ab, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.029.i.us = phi i64 [ %i.aa, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us ], [ 1, %.lr.ph.i ]
  %storemerge28.i.us = phi i64 [ %i.ac, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us ], [ 0, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5373)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5374
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) 0, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc14.i.us unwind label %.loopexit.i.split.us, !noalias !5366

.noexc14.i.us:                                    ; preds = %.lr.ph.i.split.us
  %i.w = load i64, ptr %i.a, align 8, !range !1363, !noalias !5374, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = load i64, ptr %i.r, align 8, !range !5334, !noalias !5374, !noundef !4 ; 2 uses
  br i1 %i.x, label %.split.us, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us, !prof !14

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us: ; preds = %.noexc14.i.us
  %i.z = load ptr, ptr %i.s, align 8, !noalias !5374, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5374
  %i.aa = add nuw i64 %.sroa.03.029.i.us, 1       ; 2 uses
  store i64 %i.y, ptr %.sroa.0.030.i.us, align 8, !noalias !5366
  %.sroa.4.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 8
  store ptr %i.z, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !5366
  %.sroa.5.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !5366
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 24 ; 2 uses
  %i.ac = add nuw i64 %storemerge28.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not.i.us, label %._crit_edge.thread.i, label %.lr.ph.i.split.us

.loopexit.i.split.us:                             ; preds = %.lr.ph.i.split.us
  %lpad.loopexit.i.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_fEE7reserveCs607s0NAIaWN_7segment.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.thread.i

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i
  %.sroa.0.030.i = phi ptr [ %i.ak, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.029.i = phi i64 [ %i.aj, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i ], [ 1, %.lr.ph.i ]
  %storemerge28.i = phi i64 [ %i.al, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i ], [ 0, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5373)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5374
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %i.u, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc14.i unwind label %.loopexit.i.split, !noalias !5366

.noexc14.i:                                       ; preds = %.lr.ph.i.split
  %i.ad = load i64, ptr %i.a, align 8, !range !1363, !noalias !5374, !noundef !4
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = load i64, ptr %i.r, align 8, !range !5334, !noalias !5374, !noundef !4 ; 3 uses
  br i1 %i.ae, label %.split.us, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i, !prof !14

.split.us:                                        ; preds = %.noexc14.i, %.noexc14.i.us
  %.us-phi16 = phi i64 [ %i.y, %.noexc14.i.us ], [ %i.af, %.noexc14.i ]
  %.us-phi17 = phi i64 [ %storemerge28.i.us, %.noexc14.i.us ], [ %storemerge28.i, %.noexc14.i ]
  %i.ag = load i64, ptr %i.s, align 8, !noalias !5374
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.us-phi16, i64 %i.ag) #37
          to label %.noexc15.i unwind label %.loopexit.split-lp.i, !noalias !5366

.noexc15.i:                                       ; preds = %.split.us
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i: ; preds = %.noexc14.i
  %i.ah = load ptr, ptr %i.s, align 8, !noalias !5374, !nonnull !4, !noundef !4 ; 2 uses
  %i.ai = icmp ule i64 %i.u, %i.af
  tail call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5374
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr nonnull readonly align 4 %i.t, i64 %i.v, i1 false), !noalias !5378
  %i.aj = add nuw i64 %.sroa.03.029.i, 1          ; 2 uses
  store i64 %i.af, ptr %.sroa.0.030.i, align 8, !noalias !5366
  %.sroa.4.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i, align 8, !noalias !5366
  %.sroa.5.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 16
  store i64 %i.u, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i, align 8, !noalias !5366
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 24 ; 2 uses
  %i.al = add nuw i64 %storemerge28.i, 1
  %exitcond.not.i = icmp eq i64 %i.aj, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i.split

bb.c:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.n, align 8, !alias.scope !5363, !noalias !5366
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_fEE11extend_withCs607s0NAIaWN_7segment.exit unwind label %bb.e

._crit_edge.thread.i:                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us, %._crit_edge.i
  %.sroa.0.0.lcssa44.i = phi ptr [ %i.k, %._crit_edge.i ], [ %i.ab, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us ], [ %i.ak, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa44.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %2, ptr %i.n, align 8, !alias.scope !5363, !noalias !5366
  br label %_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_fEE11extend_withCs607s0NAIaWN_7segment.exit

.loopexit.i.split:                                ; preds = %.lr.ph.i.split
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i:                             ; preds = %.split.us
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

bb.d:                                             ; preds = %.loopexit.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

.loopexit.i:                                      ; preds = %.loopexit.i.split, %.loopexit.i.split.us, %.loopexit.split-lp.i
  %storemerge28.i12 = phi i64 [ %.us-phi17, %.loopexit.split-lp.i ], [ %storemerge28.i, %.loopexit.i.split ], [ %storemerge28.i.us, %.loopexit.i.split.us ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i.split ], [ %lpad.loopexit.i.us, %.loopexit.i.split.us ]
  store i64 %storemerge28.i12, ptr %i.n, align 8, !alias.scope !5363, !noalias !5366
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.d

bb.e:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.e ], [ %lpad.phi.i, %.loopexit.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_fEEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs607s0NAIaWN_7segment.exit unwind label %bb.f

_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_fEE11extend_withCs607s0NAIaWN_7segment.exit: ; preds = %._crit_edge.thread.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.g, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs607s0NAIaWN_7segment.exit: ; preds = %bb.g, %.body
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ap, %bb.g ]
  resume { ptr, i32 } %.pn8

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs607s0NAIaWN_7segment.exit unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetINtNtCsexYYUdYSQU6_5alloc3vec3VecReEINtB3_6KeySetB17_E28par_retain_keys_with_indicesNCINvMs1_NtB5_8functionINtB25_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB17_uBA_Es0_0NCB1Y_s1_0NCB1Y_s2_0NCB1Y_s3_0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i = alloca ptr, align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.j = icmp ult i64 %i.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.j)
  %i.k = tail call noundef i64 @_RNvXs8_NtCs7coRFmVf0D6_4bitm6bitvecSyNtB5_9BitAccess14count_bit_ones(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5)
  %i.l = sub i64 %i.i, %i.k                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.l, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.m = load i64, ptr %i.f, align 8, !range !1363, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !5334, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.t = icmp ule i64 %i.l, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.p, ptr %i.g, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.v, align 8
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs607s0NAIaWN_7segment(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef 3)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5383)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5379
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5383
  call void @_RINvXs0_NtNtCseW0emhgbqwB_5rayon4iter10filter_mapINtB6_9FilterMapINtNtB8_9enumerate9EnumerateINtNtBa_3vec8IntoIterReEENCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetINtNtCsexYYUdYSQU6_5alloc3vec3VecB1O_EINtB1Y_6KeySetB1O_E28par_retain_keys_with_indicesNCINvMs1_NtB20_8functionINtB43_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1O_uB2v_Es0_0NCB3W_s1_0NCB3W_s2_0NCB3W_s3_0E0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d), !noalias !5379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5379
  %i.x = load ptr, ptr %i.e, align 8, !noalias !5379, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !5379, !noundef !4 ; 4 uses
  store ptr %i.x, ptr %.sroa.0.i, align 8, !noalias !5379
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit
  %xtraiter = and i64 %i.z, 3                     ; 3 uses
  %i.ab = icmp ult i64 %i.z, 4
  br i1 %i.ab, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.z, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.av, %.lr.ph.i.i ]
  %.in.i.i = phi ptr [ %.sroa.0.i, %.lr.ph.i.i.preheader.new ], [ %i.as, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.ac = load ptr, ptr %.in.i.i, align 1, !noalias !5379 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %.val.i.i = load i64, ptr %i.ae, align 8, !noalias !5384, !noundef !4 ; 2 uses
  %i.af = icmp ult i64 %.val.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.af)
  %i.ag = add i64 %.val.i.i, %.sroa.0.08.i.i
  %i.ah = load ptr, ptr %i.ad, align 8, !noalias !5379 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val.i.i.1 = load i64, ptr %i.aj, align 8, !noalias !5384, !noundef !4 ; 2 uses
  %i.ak = icmp ult i64 %.val.i.i.1, 576460752303423488
  call void @llvm.assume(i1 %i.ak)
  %i.al = add i64 %.val.i.i.1, %i.ag
  %i.am = load ptr, ptr %i.ai, align 8, !noalias !5379 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = getelementptr i8, ptr %i.am, i64 16
  %.val.i.i.2 = load i64, ptr %i.ao, align 8, !noalias !5384, !noundef !4 ; 2 uses
  %i.ap = icmp ult i64 %.val.i.i.2, 576460752303423488
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add i64 %.val.i.i.2, %i.al
  %i.ar = load ptr, ptr %i.an, align 8, !noalias !5379 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 16
  %.val.i.i.3 = load i64, ptr %i.at, align 8, !noalias !5384, !noundef !4 ; 2 uses
  %i.au = icmp ult i64 %.val.i.i.3, 576460752303423488
  call void @llvm.assume(i1 %i.au)
  %i.av = add i64 %.val.i.i.3, %i.aq              ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa, label %.lr.ph.i.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.av, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa ]
  %.in.i.i.epil.init = phi ptr [ %.sroa.0.i, %.lr.ph.i.i.preheader ], [ %i.as, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod6)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.08.i.i.epil = phi i64 [ %i.ba, %.lr.ph.i.i.epil ], [ %.sroa.0.08.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.in.i.i.epil = phi ptr [ %i.ax, %.lr.ph.i.i.epil ], [ %.in.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.aw = load ptr, ptr %.in.i.i.epil, align 1, !noalias !5379 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = getelementptr i8, ptr %i.aw, i64 16
  %.val.i.i.epil = load i64, ptr %i.ay, align 8, !noalias !5384, !noundef !4 ; 2 uses
  %i.az = icmp ult i64 %.val.i.i.epil, 576460752303423488
  call void @llvm.assume(i1 %i.az)
  %i.ba = add i64 %.val.i.i.epil, %.sroa.0.08.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !5387

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i: ; preds = %.lr.ph.i.i.epil, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa
  %.lcssa = phi i64 [ %i.av, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa ], [ %i.ba, %.lr.ph.i.i.epil ] ; 2 uses
  %i.bb = load i64, ptr %i.h, align 8, !alias.scope !5388, !noalias !5391, !noundef !4 ; 2 uses
  %i.bc = load i64, ptr %0, align 8, !range !8, !alias.scope !5388, !noalias !5391, !noundef !4
  %i.bd = sub i64 %i.bc, %i.bb
  %i.be = icmp ugt i64 %.lcssa, %i.bd
  br i1 %i.be, label %bb.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i, !prof !5392

bb.e:                                             ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bb, i64 noundef %.lcssa, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i unwind label %bb.n, !noalias !5391

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit, %bb.e, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !5379
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit15.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5379
  invoke void @_RNvMs6_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecReEE9pop_frontCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.g, !noalias !5391

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit.i: ; preds = %bb.k, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.bi, %bb.g ], [ %i.bx, %bb.k ]
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecReEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread.i unwind label %bb.m, !noalias !5391

bb.g:                                             ; preds = %bb.l, %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bj = load i64, ptr %i.b, align 8, !range !523, !noalias !5379, !noundef !4
  %.not.i = icmp eq i64 %i.bj, -1
  br i1 %.not.i, label %_RINvXsv_NtNtCseW0emhgbqwB_5rayon4iter6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecReEINtB8_14ParallelExtendB1d_E10par_extendINtNtB8_10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtBa_3vec8IntoIterB1d_EENCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBG_INtB3m_6KeySetB1d_E28par_retain_keys_with_indicesNCINvMs1_NtB3o_8functionINtB4S_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1d_uBG_Es0_0NCB4L_s1_0NCB4L_s2_0NCB4L_s3_0E0EECs607s0NAIaWN_7segment.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !5379
  %i.bk = load ptr, ptr %i.bf, align 8, !noalias !5379, !nonnull !4, !noundef !4
  %i.bl = load i64, ptr %i.bg, align 8, !noalias !5379, !noundef !4 ; 5 uses
  %i.bm = load i64, ptr %i.h, align 8, !alias.scope !5393, !noalias !5391, !noundef !4 ; 5 uses
  %i.bn = load i64, ptr %0, align 8, !range !8, !alias.scope !5393, !noalias !5391, !noundef !4
  %i.bo = sub i64 %i.bn, %i.bm
  %i.bp = icmp ugt i64 %i.bl, %i.bo
  br i1 %i.bp, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.thread.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i.i, !prof !14

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.thread.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bm, i64 noundef %i.bl, i64 noundef 8, i64 noundef 16)
          to label %.noexc10.i unwind label %bb.k, !noalias !5391

.noexc10.i:                                       ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.thread.i.i
  %i.bq = load i64, ptr %i.h, align 8, !alias.scope !5398, !noalias !5391, !noundef !4 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 576460752303423488
  call void @llvm.assume(i1 %i.br)
  br label %bb.j

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i.i: ; preds = %bb.i
  %i.bs = icmp ult i64 %i.bm, 576460752303423488
  call void @llvm.assume(i1 %i.bs)
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i.i, %.noexc10.i
  %i.bt = phi i64 [ %i.bq, %.noexc10.i ], [ %i.bm, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i.i ]
  %i.bu = load ptr, ptr %i.bh, align 8, !alias.scope !5398, !noalias !5391, !nonnull !4, !noundef !4
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = shl nuw nsw i64 %i.bl, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr nonnull readonly align 8 %i.bk, i64 %i.bw, i1 false), !noalias !5391
  %.pre.i.i = load i64, ptr %i.h, align 8, !alias.scope !5398, !noalias !5391
  br label %bb.l

bb.k:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.thread.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit.i unwind label %bb.m, !noalias !5391

bb.l:                                             ; preds = %bb.j, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i.i
  %i.by = phi i64 [ %.pre.i.i, %bb.j ], [ %i.bm, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i.i ]
  %i.bz = add i64 %i.by, %i.bl
  store i64 %i.bz, ptr %i.h, align 8, !alias.scope !5398, !noalias !5391
  store i64 0, ptr %i.bg, align 8, !noalias !5379
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit15.i unwind label %bb.g, !noalias !5391

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit15.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5379
  br label %bb.f

bb.m:                                             ; preds = %bb.n, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit.i
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !5391
  unreachable

bb.n:                                             ; preds = %bb.e
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecReEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread.i unwind label %bb.m, !noalias !5391

.thread.i:                                        ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit.i
  %.pn7.i = phi { ptr, i32 } [ %i.cb, %bb.n ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit.i ]
  resume { ptr, i32 } %.pn7.i

_RINvXsv_NtNtCseW0emhgbqwB_5rayon4iter6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecReEINtB8_14ParallelExtendB1d_E10par_extendINtNtB8_10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtBa_3vec8IntoIterB1d_EENCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBG_INtB3m_6KeySetB1d_E28par_retain_keys_with_indicesNCINvMs1_NtB3o_8functionINtB4S_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1d_uBG_Es0_0NCB4L_s1_0NCB4L_s2_0NCB4L_s3_0E0EECs607s0NAIaWN_7segment.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5379
  call void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecReEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !5391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5379
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEINtB3_6KeySetB17_E28par_retain_keys_with_indicesNCINvMs1_NtB5_8functionINtB25_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB17_uBA_Es0_0NCB1Y_s1_0NCB1Y_s2_0NCB1Y_s3_0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i = alloca ptr, align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  %i.k = tail call noundef i64 @_RNvXs8_NtCs7coRFmVf0D6_4bitm6bitvecSyNtB5_9BitAccess14count_bit_ones(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5)
  %i.l = sub i64 %i.i, %i.k                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.l, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.m = load i64, ptr %i.f, align 8, !range !1363, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !5334, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.t = icmp ule i64 %i.l, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.p, ptr %i.g, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.v, align 8
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs607s0NAIaWN_7segment(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef 3)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5399
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5403)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5399
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5403
  call void @_RINvXs0_NtNtCseW0emhgbqwB_5rayon4iter10filter_mapINtB6_9FilterMapINtNtB8_9enumerate9EnumerateINtNtBa_3vec8IntoIterRoEENCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetINtNtCsexYYUdYSQU6_5alloc3vec3VecB1O_EINtB1Y_6KeySetB1O_E28par_retain_keys_with_indicesNCINvMs1_NtB20_8functionINtB43_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1O_uB2v_Es0_0NCB3W_s1_0NCB3W_s2_0NCB3W_s3_0E0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d), !noalias !5399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5399
  %i.x = load ptr, ptr %i.e, align 8, !noalias !5399, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !5399, !noundef !4 ; 4 uses
  store ptr %i.x, ptr %.sroa.0.i, align 8, !noalias !5399
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit
  %xtraiter = and i64 %i.z, 3                     ; 3 uses
  %i.ab = icmp ult i64 %i.z, 4
  br i1 %i.ab, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.z, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.av, %.lr.ph.i.i ]
  %.in.i.i = phi ptr [ %.sroa.0.i, %.lr.ph.i.i.preheader.new ], [ %i.as, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.ac = load ptr, ptr %.in.i.i, align 1, !noalias !5399 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %.val.i.i = load i64, ptr %i.ae, align 8, !noalias !5404, !noundef !4 ; 2 uses
  %i.af = icmp ult i64 %.val.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.af)
  %i.ag = add i64 %.val.i.i, %.sroa.0.08.i.i
  %i.ah = load ptr, ptr %i.ad, align 8, !noalias !5399 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val.i.i.1 = load i64, ptr %i.aj, align 8, !noalias !5404, !noundef !4 ; 2 uses
  %i.ak = icmp ult i64 %.val.i.i.1, 1152921504606846976
  call void @llvm.assume(i1 %i.ak)
  %i.al = add i64 %.val.i.i.1, %i.ag
  %i.am = load ptr, ptr %i.ai, align 8, !noalias !5399 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = getelementptr i8, ptr %i.am, i64 16
  %.val.i.i.2 = load i64, ptr %i.ao, align 8, !noalias !5404, !noundef !4 ; 2 uses
  %i.ap = icmp ult i64 %.val.i.i.2, 1152921504606846976
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add i64 %.val.i.i.2, %i.al
  %i.ar = load ptr, ptr %i.an, align 8, !noalias !5399 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 16
  %.val.i.i.3 = load i64, ptr %i.at, align 8, !noalias !5404, !noundef !4 ; 2 uses
  %i.au = icmp ult i64 %.val.i.i.3, 1152921504606846976
  call void @llvm.assume(i1 %i.au)
  %i.av = add i64 %.val.i.i.3, %i.aq              ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa, label %.lr.ph.i.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.av, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa ]
  %.in.i.i.epil.init = phi ptr [ %.sroa.0.i, %.lr.ph.i.i.preheader ], [ %i.as, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod6)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.08.i.i.epil = phi i64 [ %i.ba, %.lr.ph.i.i.epil ], [ %.sroa.0.08.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.in.i.i.epil = phi ptr [ %i.ax, %.lr.ph.i.i.epil ], [ %.in.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.aw = load ptr, ptr %.in.i.i.epil, align 1, !noalias !5399 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = getelementptr i8, ptr %i.aw, i64 16
  %.val.i.i.epil = load i64, ptr %i.ay, align 8, !noalias !5404, !noundef !4 ; 2 uses
  %i.az = icmp ult i64 %.val.i.i.epil, 1152921504606846976
  call void @llvm.assume(i1 %i.az)
  %i.ba = add i64 %.val.i.i.epil, %.sroa.0.08.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !5407

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i: ; preds = %.lr.ph.i.i.epil, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa
  %.lcssa = phi i64 [ %i.av, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa ], [ %i.ba, %.lr.ph.i.i.epil ] ; 2 uses
  %i.bb = load i64, ptr %i.h, align 8, !alias.scope !5408, !noalias !5411, !noundef !4 ; 2 uses
  %i.bc = load i64, ptr %0, align 8, !range !8, !alias.scope !5408, !noalias !5411, !noundef !4
  %i.bd = sub i64 %i.bc, %i.bb
  %i.be = icmp ugt i64 %.lcssa, %i.bd
  br i1 %i.be, label %bb.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i, !prof !5392

bb.e:                                             ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bb, i64 noundef %.lcssa, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i unwind label %bb.n, !noalias !5411

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit, %bb.e, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5399
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !5399
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit15.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5399
  invoke void @_RNvMs6_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecRoEE9pop_frontCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.g, !noalias !5411

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit.i: ; preds = %bb.k, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.bi, %bb.g ], [ %i.bx, %bb.k ]
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecRoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread.i unwind label %bb.m, !noalias !5411

bb.g:                                             ; preds = %bb.l, %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bj = load i64, ptr %i.b, align 8, !range !523, !noalias !5399, !noundef !4
  %.not.i = icmp eq i64 %i.bj, -1
  br i1 %.not.i, label %_RINvXsv_NtNtCseW0emhgbqwB_5rayon4iter6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEINtB8_14ParallelExtendB1d_E10par_extendINtNtB8_10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtBa_3vec8IntoIterB1d_EENCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBG_INtB3m_6KeySetB1d_E28par_retain_keys_with_indicesNCINvMs1_NtB3o_8functionINtB4S_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1d_uBG_Es0_0NCB4L_s1_0NCB4L_s2_0NCB4L_s3_0E0EECs607s0NAIaWN_7segment.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5399
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !5399
  %i.bk = load ptr, ptr %i.bf, align 8, !noalias !5399, !nonnull !4, !noundef !4
  %i.bl = load i64, ptr %i.bg, align 8, !noalias !5399, !noundef !4 ; 5 uses
  %i.bm = load i64, ptr %i.h, align 8, !alias.scope !5412, !noalias !5411, !noundef !4 ; 5 uses
  %i.bn = load i64, ptr %0, align 8, !range !8, !alias.scope !5412, !noalias !5411, !noundef !4
  %i.bo = sub i64 %i.bn, %i.bm
  %i.bp = icmp ugt i64 %i.bl, %i.bo
  br i1 %i.bp, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.thread.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i.i, !prof !14

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.thread.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bm, i64 noundef %i.bl, i64 noundef 8, i64 noundef 8)
          to label %.noexc10.i unwind label %bb.k, !noalias !5411

.noexc10.i:                                       ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.thread.i.i
  %i.bq = load i64, ptr %i.h, align 8, !alias.scope !5417, !noalias !5411, !noundef !4 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 1152921504606846976
  call void @llvm.assume(i1 %i.br)
  br label %bb.j

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i.i: ; preds = %bb.i
  %i.bs = icmp ult i64 %i.bm, 1152921504606846976
  call void @llvm.assume(i1 %i.bs)
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i.i, %.noexc10.i
  %i.bt = phi i64 [ %i.bq, %.noexc10.i ], [ %i.bm, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i.i ]
  %i.bu = load ptr, ptr %i.bh, align 8, !alias.scope !5417, !noalias !5411, !nonnull !4, !noundef !4
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = shl nuw nsw i64 %i.bl, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr nonnull readonly align 8 %i.bk, i64 %i.bw, i1 false), !noalias !5411
  %.pre.i.i = load i64, ptr %i.h, align 8, !alias.scope !5417, !noalias !5411
  br label %bb.l

bb.k:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.thread.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit.i unwind label %bb.m, !noalias !5411

bb.l:                                             ; preds = %bb.j, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i.i
  %i.by = phi i64 [ %.pre.i.i, %bb.j ], [ %i.bm, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i.i ]
  %i.bz = add i64 %i.by, %i.bl
  store i64 %i.bz, ptr %i.h, align 8, !alias.scope !5417, !noalias !5411
  store i64 0, ptr %i.bg, align 8, !noalias !5399
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit15.i unwind label %bb.g, !noalias !5411

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit15.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5399
  br label %bb.f

bb.m:                                             ; preds = %bb.n, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit.i
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !5411
  unreachable

bb.n:                                             ; preds = %bb.e
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecRoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread.i unwind label %bb.m, !noalias !5411

.thread.i:                                        ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit.i
  %.pn7.i = phi { ptr, i32 } [ %i.cb, %bb.n ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit.i ]
  resume { ptr, i32 } %.pn7.i

_RINvXsv_NtNtCseW0emhgbqwB_5rayon4iter6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEINtB8_14ParallelExtendB1d_E10par_extendINtNtB8_10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtBa_3vec8IntoIterB1d_EENCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBG_INtB3m_6KeySetB1d_E28par_retain_keys_with_indicesNCINvMs1_NtB3o_8functionINtB4S_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1d_uBG_Es0_0NCB4L_s1_0NCB4L_s2_0NCB4L_s3_0E0EECs607s0NAIaWN_7segment.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5399
  call void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecRoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !5411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5399
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEINtB3_6KeySetB17_E28par_retain_keys_with_indicesNCINvMs1_NtB5_8functionINtB25_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB17_uBA_Es0_0NCB1Y_s1_0NCB1Y_s2_0NCB1Y_s3_0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i = alloca ptr, align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  %i.k = tail call noundef i64 @_RNvXs8_NtCs7coRFmVf0D6_4bitm6bitvecSyNtB5_9BitAccess14count_bit_ones(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5)
  %i.l = sub i64 %i.i, %i.k                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.l, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.m = load i64, ptr %i.f, align 8, !range !1363, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !5334, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.t = icmp ule i64 %i.l, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.p, ptr %i.g, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.v, align 8
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs607s0NAIaWN_7segment(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef 3)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5422)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5418
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5422
  call void @_RINvXs0_NtNtCseW0emhgbqwB_5rayon4iter10filter_mapINtB6_9FilterMapINtNtB8_9enumerate9EnumerateINtNtBa_3vec8IntoIterRxEENCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetINtNtCsexYYUdYSQU6_5alloc3vec3VecB1O_EINtB1Y_6KeySetB1O_E28par_retain_keys_with_indicesNCINvMs1_NtB20_8functionINtB43_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1O_uB2v_Es0_0NCB3W_s1_0NCB3W_s2_0NCB3W_s3_0E0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d), !noalias !5418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5418
  %i.x = load ptr, ptr %i.e, align 8, !noalias !5418, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !5418, !noundef !4 ; 4 uses
  store ptr %i.x, ptr %.sroa.0.i, align 8, !noalias !5418
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit
  %xtraiter = and i64 %i.z, 3                     ; 3 uses
  %i.ab = icmp ult i64 %i.z, 4
  br i1 %i.ab, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.z, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.av, %.lr.ph.i.i ]
  %.in.i.i = phi ptr [ %.sroa.0.i, %.lr.ph.i.i.preheader.new ], [ %i.as, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.ac = load ptr, ptr %.in.i.i, align 1, !noalias !5418 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %.val.i.i = load i64, ptr %i.ae, align 8, !noalias !5423, !noundef !4 ; 2 uses
  %i.af = icmp ult i64 %.val.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.af)
  %i.ag = add i64 %.val.i.i, %.sroa.0.08.i.i
  %i.ah = load ptr, ptr %i.ad, align 8, !noalias !5418 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val.i.i.1 = load i64, ptr %i.aj, align 8, !noalias !5423, !noundef !4 ; 2 uses
  %i.ak = icmp ult i64 %.val.i.i.1, 1152921504606846976
  call void @llvm.assume(i1 %i.ak)
  %i.al = add i64 %.val.i.i.1, %i.ag
  %i.am = load ptr, ptr %i.ai, align 8, !noalias !5418 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = getelementptr i8, ptr %i.am, i64 16
  %.val.i.i.2 = load i64, ptr %i.ao, align 8, !noalias !5423, !noundef !4 ; 2 uses
  %i.ap = icmp ult i64 %.val.i.i.2, 1152921504606846976
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add i64 %.val.i.i.2, %i.al
  %i.ar = load ptr, ptr %i.an, align 8, !noalias !5418 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 16
  %.val.i.i.3 = load i64, ptr %i.at, align 8, !noalias !5423, !noundef !4 ; 2 uses
  %i.au = icmp ult i64 %.val.i.i.3, 1152921504606846976
  call void @llvm.assume(i1 %i.au)
  %i.av = add i64 %.val.i.i.3, %i.aq              ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa, label %.lr.ph.i.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.av, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa ]
  %.in.i.i.epil.init = phi ptr [ %.sroa.0.i, %.lr.ph.i.i.preheader ], [ %i.as, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod6)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.08.i.i.epil = phi i64 [ %i.ba, %.lr.ph.i.i.epil ], [ %.sroa.0.08.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.in.i.i.epil = phi ptr [ %i.ax, %.lr.ph.i.i.epil ], [ %.in.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.aw = load ptr, ptr %.in.i.i.epil, align 1, !noalias !5418 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = getelementptr i8, ptr %i.aw, i64 16
  %.val.i.i.epil = load i64, ptr %i.ay, align 8, !noalias !5423, !noundef !4 ; 2 uses
  %i.az = icmp ult i64 %.val.i.i.epil, 1152921504606846976
  call void @llvm.assume(i1 %i.az)
  %i.ba = add i64 %.val.i.i.epil, %.sroa.0.08.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !5426

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i: ; preds = %.lr.ph.i.i.epil, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa
  %.lcssa = phi i64 [ %i.av, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa ], [ %i.ba, %.lr.ph.i.i.epil ] ; 2 uses
  %i.bb = load i64, ptr %i.h, align 8, !alias.scope !5427, !noalias !5430, !noundef !4 ; 2 uses
  %i.bc = load i64, ptr %0, align 8, !range !8, !alias.scope !5427, !noalias !5430, !noundef !4
  %i.bd = sub i64 %i.bc, %i.bb
  %i.be = icmp ugt i64 %.lcssa, %i.bd
  br i1 %i.be, label %bb.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i, !prof !5392

bb.e:                                             ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bb, i64 noundef %.lcssa, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i unwind label %bb.n, !noalias !5430

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit, %bb.e, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !5418
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit15.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5418
  invoke void @_RNvMs6_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecRxEE9pop_frontCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.g, !noalias !5430

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit.i: ; preds = %bb.k, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.bi, %bb.g ], [ %i.bx, %bb.k ]
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecRxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread.i unwind label %bb.m, !noalias !5430

bb.g:                                             ; preds = %bb.l, %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bj = load i64, ptr %i.b, align 8, !range !523, !noalias !5418, !noundef !4
  %.not.i = icmp eq i64 %i.bj, -1
  br i1 %.not.i, label %_RINvXsv_NtNtCseW0emhgbqwB_5rayon4iter6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEINtB8_14ParallelExtendB1d_E10par_extendINtNtB8_10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtBa_3vec8IntoIterB1d_EENCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBG_INtB3m_6KeySetB1d_E28par_retain_keys_with_indicesNCINvMs1_NtB3o_8functionINtB4S_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1d_uBG_Es0_0NCB4L_s1_0NCB4L_s2_0NCB4L_s3_0E0EECs607s0NAIaWN_7segment.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !5418
  %i.bk = load ptr, ptr %i.bf, align 8, !noalias !5418, !nonnull !4, !noundef !4
  %i.bl = load i64, ptr %i.bg, align 8, !noalias !5418, !noundef !4 ; 5 uses
  %i.bm = load i64, ptr %i.h, align 8, !alias.scope !5431, !noalias !5430, !noundef !4 ; 5 uses
  %i.bn = load i64, ptr %0, align 8, !range !8, !alias.scope !5431, !noalias !5430, !noundef !4
  %i.bo = sub i64 %i.bn, %i.bm
  %i.bp = icmp ugt i64 %i.bl, %i.bo
  br i1 %i.bp, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.thread.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i.i, !prof !14

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.thread.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bm, i64 noundef %i.bl, i64 noundef 8, i64 noundef 8)
          to label %.noexc10.i unwind label %bb.k, !noalias !5430

.noexc10.i:                                       ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.thread.i.i
  %i.bq = load i64, ptr %i.h, align 8, !alias.scope !5436, !noalias !5430, !noundef !4 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 1152921504606846976
  call void @llvm.assume(i1 %i.br)
  br label %bb.j

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i.i: ; preds = %bb.i
  %i.bs = icmp ult i64 %i.bm, 1152921504606846976
  call void @llvm.assume(i1 %i.bs)
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i.i, %.noexc10.i
  %i.bt = phi i64 [ %i.bq, %.noexc10.i ], [ %i.bm, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i.i ]
  %i.bu = load ptr, ptr %i.bh, align 8, !alias.scope !5436, !noalias !5430, !nonnull !4, !noundef !4
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = shl nuw nsw i64 %i.bl, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr nonnull readonly align 8 %i.bk, i64 %i.bw, i1 false), !noalias !5430
  %.pre.i.i = load i64, ptr %i.h, align 8, !alias.scope !5436, !noalias !5430
  br label %bb.l

bb.k:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.thread.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRxENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit.i unwind label %bb.m, !noalias !5430

bb.l:                                             ; preds = %bb.j, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i.i
  %i.by = phi i64 [ %.pre.i.i, %bb.j ], [ %i.bm, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i.i ]
  %i.bz = add i64 %i.by, %i.bl
  store i64 %i.bz, ptr %i.h, align 8, !alias.scope !5436, !noalias !5430
  store i64 0, ptr %i.bg, align 8, !noalias !5418
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRxENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit15.i unwind label %bb.g, !noalias !5430

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit15.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5418
  br label %bb.f

bb.m:                                             ; preds = %bb.n, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit.i
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !5430
  unreachable

bb.n:                                             ; preds = %bb.e
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecRxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread.i unwind label %bb.m, !noalias !5430

.thread.i:                                        ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit.i
  %.pn7.i = phi { ptr, i32 } [ %i.cb, %bb.n ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit.i ]
  resume { ptr, i32 } %.pn7.i

_RINvXsv_NtNtCseW0emhgbqwB_5rayon4iter6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEINtB8_14ParallelExtendB1d_E10par_extendINtNtB8_10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtBa_3vec8IntoIterB1d_EENCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBG_INtB3m_6KeySetB1d_E28par_retain_keys_with_indicesNCINvMs1_NtB3o_8functionINtB4S_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1d_uBG_Es0_0NCB4L_s1_0NCB4L_s2_0NCB4L_s3_0E0EECs607s0NAIaWN_7segment.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5418
  call void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecRxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !5430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5418
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCslmvYCXbQjWR_6common3extINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCs4ByaKcm8ifS_6sparse5index23compressed_posting_list21CompressedPostingListNtNtCseUPaKcRZYeZ_4half8binary163f16EEEINtB6_6VecExtB14_E18transform_in_placeB1G_NvMB17_B14_6unwrapECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp ult i64 %i.e, 115292150460684698
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %i.e
  %i.h = load i64, ptr %1, align 8, !range !8, !noundef !4
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptionINtNtNtCs4ByaKcm8ifS_6sparse5index23compressed_posting_list21CompressedPostingListNtNtCseUPaKcRZYeZ_4half8binary163f16EEENvMB2o_B2l_6unwrapEB2I_ECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCslmvYCXbQjWR_6common3extINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCs4ByaKcm8ifS_6sparse5index23compressed_posting_list21CompressedPostingListNtNtNtB1N_6common5types11QuantizedU8EEEINtB6_6VecExtB14_E18transform_in_placeB1G_NvMB17_B14_6unwrapECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp ult i64 %i.e, 104811045873349726
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw [88 x i8], ptr %i.c, i64 %i.e
  %i.h = load i64, ptr %1, align 8, !range !8, !noundef !4
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptionINtNtNtCs4ByaKcm8ifS_6sparse5index23compressed_posting_list21CompressedPostingListNtNtNtB2P_6common5types11QuantizedU8EEENvMB2o_B2l_6unwrapEB2I_ECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCslmvYCXbQjWR_6common3extINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCs4ByaKcm8ifS_6sparse5index23compressed_posting_list21CompressedPostingListfEEEINtB6_6VecExtB14_E18transform_in_placeB1G_NvMB17_B14_6unwrapECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp ult i64 %i.e, 115292150460684698
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %i.e
  %i.h = load i64, ptr %1, align 8, !range !8, !noundef !4
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptionINtNtNtCs4ByaKcm8ifS_6sparse5index23compressed_posting_list21CompressedPostingListfEEENvMB2o_B2l_6unwrapEB2I_ECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtCs9XvERIT2X68_9itertools12combinationsINtNtCsexYYUdYSQU6_5alloc3vec3VecjEINtB5_9PoolIndexRNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationE12extract_itemINtNtNtCskKLDkoKarTP_4core5slice4iter4IterB1z_EEB1F_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  tail call void @_RNvMs_NtCs9XvERIT2X68_9itertools11lazy_bufferINtB4_10LazyBufferINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationEE6get_atB1L_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecIBK_fEENtB8_11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB1Y_4read9SliceReadEECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorIB2H_fEEECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEENtB8_11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB2A_4read9SliceReadEECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeQINtNtCs8jn5zD2RXga_10serde_cbor2de12DeserializerNtNtB2d_4read9SliceReadEECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs2_NtCs8jn5zD2RXga_10serde_cbor2deINtB6_12DeserializerNtNtB8_4read9SliceReadE11parse_valueINtNvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1G_11Deserialize11deserialize10VecVisitorNtNtB2m_6string6StringEECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9xXWl5j4IME_12quantization12vector_stats18VectorElementStatsENtB8_11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB2W_4read9SliceReadEECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorNtNtCs9xXWl5j4IME_12quantization12vector_stats18VectorElementStatsEECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs607s0NAIaWN_7segment5index14payload_config20FullPayloadIndexTypeENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content19ContentDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEEB1m_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsr_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1Z_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1Z_11Deserialize11deserialize10VecVisitorNtNtNtCs607s0NAIaWN_7segment5index14payload_config20FullPayloadIndexTypeEEB4H_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12entry_points10EntryPointENtB8_11Deserialize11deserializeQINtNtCsdCrN8tpH0az_7bincode2de12DeserializerNtNtB32_4read11SliceReaderINtNtB34_6config14WithOtherLimitINtB4a_17WithOtherTrailingINtB4a_20WithOtherIntEncodingNtB4a_14DefaultOptionsNtNtB4a_3int14FixintEncodingENtNtB4a_8trailing13AllowTrailingENtNtB4a_5limit8InfiniteEEEB1o_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs1_NtCsdCrN8tpH0az_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config14WithOtherLimitINtB1k_17WithOtherTrailingINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_8trailing13AllowTrailingENtNtB1k_5limit8InfiniteEENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB4s_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB4s_11Deserialize11deserialize10VecVisitorNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12entry_points10EntryPointEEB7c_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecTINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdENtNtB1o_9histogram6CountsEENtB8_11Deserialize11deserializeQINtNtCsdCrN8tpH0az_7bincode2de12DeserializerNtNtB3A_4read11SliceReaderINtNtB3C_6config14WithOtherLimitINtB4I_17WithOtherTrailingINtB4I_20WithOtherIntEncodingNtB4I_14DefaultOptionsNtNtB4I_3int14FixintEncodingENtNtB4I_8trailing13AllowTrailingENtNtB4I_5limit8InfiniteEEEB1s_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs1_NtCsdCrN8tpH0az_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config14WithOtherLimitINtB1k_17WithOtherTrailingINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_8trailing13AllowTrailingENtNtB1k_5limit8InfiniteEENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB4s_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB4s_11Deserialize11deserialize10VecVisitorTINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdENtNtB7c_9histogram6CountsEEEB7g_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecTINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointxENtNtB1o_9histogram6CountsEENtB8_11Deserialize11deserializeQINtNtCsdCrN8tpH0az_7bincode2de12DeserializerNtNtB3A_4read11SliceReaderINtNtB3C_6config14WithOtherLimitINtB4I_17WithOtherTrailingINtB4I_20WithOtherIntEncodingNtB4I_14DefaultOptionsNtNtB4I_3int14FixintEncodingENtNtB4I_8trailing13AllowTrailingENtNtB4I_5limit8InfiniteEEEB1s_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs1_NtCsdCrN8tpH0az_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config14WithOtherLimitINtB1k_17WithOtherTrailingINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_8trailing13AllowTrailingENtNtB1k_5limit8InfiniteEENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB4s_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB4s_11Deserialize11deserialize10VecVisitorTINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointxENtNtB7c_9histogram6CountsEEEB7g_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecfENtB8_11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB1T_4read9SliceReadEECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorfEECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecfENtB8_11Deserialize11deserializeQINtNtCsdCrN8tpH0az_7bincode2de12DeserializerNtNtB1R_4read11SliceReaderINtNtB1T_6config14WithOtherLimitINtB2Z_17WithOtherTrailingINtB2Z_20WithOtherIntEncodingNtB2Z_14DefaultOptionsNtNtB2Z_3int14FixintEncodingENtNtB2Z_8trailing13AllowTrailingENtNtB2Z_5limit8InfiniteEEECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs1_NtCsdCrN8tpH0az_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config14WithOtherLimitINtB1k_17WithOtherTrailingINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_8trailing13AllowTrailingENtNtB1k_5limit8InfiniteEENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB4s_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB4s_11Deserialize11deserialize10VecVisitorfEECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB8_11Deserialize11deserializeQINtNtCsdCrN8tpH0az_7bincode2de12DeserializerNtNtB1R_4read11SliceReaderINtNtB1T_6config14WithOtherLimitINtB2Z_17WithOtherTrailingINtB2Z_20WithOtherIntEncodingNtB2Z_14DefaultOptionsNtNtB2Z_3int14FixintEncodingENtNtB2Z_8trailing13AllowTrailingENtNtB2Z_5limit8InfiniteEEECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs1_NtCsdCrN8tpH0az_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config14WithOtherLimitINtB1k_17WithOtherTrailingINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_8trailing13AllowTrailingENtNtB1k_5limit8InfiniteEENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB4s_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB4s_11Deserialize11deserialize10VecVisitorhEECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsv_NtNtCseW0emhgbqwB_5rayon4iter6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecReEINtB8_14ParallelExtendB1d_E10par_extendINtNtB8_6filter6FilterINtNtBa_3vec8IntoIterB1d_ENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2O_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1d_uBG_Es4_0EECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca ptr, align 8                  ; 3 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  call void @_RINvXs0_NtNtCseW0emhgbqwB_5rayon4iter6filterINtB6_6FilterINtNtBa_3vec8IntoIterReENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1q_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1e_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1e_EEs4_0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 4 uses
  store ptr %i.f, ptr %.sroa.0, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.j = icmp ult i64 %i.h, 4
  br i1 %i.j, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.h, -4
  br label %.lr.ph.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.thread: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ]
  %.in.i = phi ptr [ %.sroa.0, %.lr.ph.i.preheader.new ], [ %i.ab, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.l = load ptr, ptr %.in.i, align 1            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = getelementptr i8, ptr %i.l, i64 16
  %.val.i = load i64, ptr %i.n, align 8, !noalias !5437, !noundef !4 ; 2 uses
  %i.o = icmp ult i64 %.val.i, 576460752303423488
  call void @llvm.assume(i1 %i.o)
  %i.p = add i64 %.val.i, %.sroa.0.08.i
  %i.q = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr i8, ptr %i.q, i64 16
  %.val.i.1 = load i64, ptr %i.s, align 8, !noalias !5437, !noundef !4 ; 2 uses
  %i.t = icmp ult i64 %.val.i.1, 576460752303423488
  call void @llvm.assume(i1 %i.t)
  %i.u = add i64 %.val.i.1, %i.p
  %i.v = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val.i.2 = load i64, ptr %i.x, align 8, !noalias !5437, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %.val.i.2, 576460752303423488
  call void @llvm.assume(i1 %i.y)
  %i.z = add i64 %.val.i.2, %i.u
  %i.aa = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val.i.3 = load i64, ptr %i.ac, align 8, !noalias !5437, !noundef !4 ; 2 uses
  %i.ad = icmp ult i64 %.val.i.3, 576460752303423488
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add i64 %.val.i.3, %i.z                 ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa, label %.lr.ph.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ae, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ]
  %.in.i.epil.init = phi ptr [ %.sroa.0, %.lr.ph.i.preheader ], [ %i.ab, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod26)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.08.i.epil = phi i64 [ %i.aj, %.lr.ph.i.epil ], [ %.sroa.0.08.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.in.i.epil = phi ptr [ %i.ag, %.lr.ph.i.epil ], [ %.in.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.af = load ptr, ptr %.in.i.epil, align 1      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = getelementptr i8, ptr %i.af, i64 16
  %.val.i.epil = load i64, ptr %i.ah, align 8, !noalias !5437, !noundef !4 ; 2 uses
  %i.ai = icmp ult i64 %.val.i.epil, 576460752303423488
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add i64 %.val.i.epil, %.sroa.0.08.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit, label %.lr.ph.i.epil, !llvm.loop !5440

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit: ; preds = %.lr.ph.i.epil, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa
  %.lcssa = phi i64 [ %i.ae, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ], [ %i.aj, %.lr.ph.i.epil ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !5441, !noundef !4 ; 2 uses
  %i.am = load i64, ptr %0, align 8, !range !8, !alias.scope !5441, !noundef !4
  %i.an = sub i64 %i.am, %i.al
  %i.ao = icmp ugt i64 %.lcssa, %i.an
  br i1 %i.ao, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit, !prof !5392

bb.b:                                             ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.al, i64 noundef %.lcssa, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit unwind label %bb.k

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit: ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.thread, %bb.b
  %i.ap = phi ptr [ %i.k, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.thread ], [ %i.ak, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit ], [ %i.ak, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit15, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs6_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecReEE9pop_frontCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit: ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.at, %bb.d ], [ %i.bi, %bb.h ]
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecReEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread unwind label %bb.j

bb.d:                                             ; preds = %bb.i, %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit

bb.e:                                             ; preds = %bb.c
  %i.au = load i64, ptr %i.b, align 8, !range !523, !noundef !4
  %.not = icmp eq i64 %i.au, -1
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecReEEECs607s0NAIaWN_7segment.exit12, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.av = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  %i.aw = load i64, ptr %i.ar, align 8, !noundef !4 ; 5 uses
  %i.ax = load i64, ptr %i.ap, align 8, !alias.scope !5444, !noundef !4 ; 5 uses
  %i.ay = load i64, ptr %0, align 8, !range !8, !alias.scope !5444, !noundef !4
  %i.az = sub i64 %i.ay, %i.ax
  %i.ba = icmp ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i, !prof !14

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.thread.i: ; preds = %bb.f
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ax, i64 noundef %i.aw, i64 noundef 8, i64 noundef 16)
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.thread.i
  %i.bb = load i64, ptr %i.ap, align 8, !alias.scope !5449, !noundef !4 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 576460752303423488
  call void @llvm.assume(i1 %i.bc)
  br label %bb.g

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i: ; preds = %bb.f
  %i.bd = icmp ult i64 %i.ax, 576460752303423488
  call void @llvm.assume(i1 %i.bd)
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i, %.noexc10
  %i.be = phi i64 [ %i.bb, %.noexc10 ], [ %i.ax, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i ]
  %i.bf = load ptr, ptr %i.as, align 8, !alias.scope !5449, !nonnull !4, !noundef !4
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.be
  %i.bh = shl nuw nsw i64 %i.aw, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull readonly align 8 %i.av, i64 %i.bh, i1 false)
  %.pre.i = load i64, ptr %i.ap, align 8, !alias.scope !5449
  br label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecReEEECs607s0NAIaWN_7segment.exit12: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecReEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.h:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.thread.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i
  %i.bj = phi i64 [ %.pre.i, %bb.g ], [ %i.ax, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i ]
  %i.bk = add i64 %i.bj, %i.aw
  store i64 %i.bk, ptr %i.ap, align 8, !alias.scope !5449
  store i64 0, ptr %i.ar, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit15 unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit15: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.j:                                             ; preds = %bb.k, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecReEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread unwind label %bb.j

.thread:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit, %bb.k
  %.pn7 = phi { ptr, i32 } [ %i.bm, %bb.k ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit ]
  resume { ptr, i32 } %.pn7
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsv_NtNtCseW0emhgbqwB_5rayon4iter6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEINtB8_14ParallelExtendB1d_E10par_extendINtNtB8_6filter6FilterINtNtBa_3vec8IntoIterB1d_ENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2O_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1d_uBG_Es4_0EECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca ptr, align 8                  ; 3 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  call void @_RINvXs0_NtNtCseW0emhgbqwB_5rayon4iter6filterINtB6_6FilterINtNtBa_3vec8IntoIterRoENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1q_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1e_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1e_EEs4_0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 4 uses
  store ptr %i.f, ptr %.sroa.0, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.j = icmp ult i64 %i.h, 4
  br i1 %i.j, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.h, -4
  br label %.lr.ph.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.thread: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ]
  %.in.i = phi ptr [ %.sroa.0, %.lr.ph.i.preheader.new ], [ %i.ab, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.l = load ptr, ptr %.in.i, align 1            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = getelementptr i8, ptr %i.l, i64 16
  %.val.i = load i64, ptr %i.n, align 8, !noalias !5450, !noundef !4 ; 2 uses
  %i.o = icmp ult i64 %.val.i, 1152921504606846976
  call void @llvm.assume(i1 %i.o)
  %i.p = add i64 %.val.i, %.sroa.0.08.i
  %i.q = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr i8, ptr %i.q, i64 16
  %.val.i.1 = load i64, ptr %i.s, align 8, !noalias !5450, !noundef !4 ; 2 uses
  %i.t = icmp ult i64 %.val.i.1, 1152921504606846976
  call void @llvm.assume(i1 %i.t)
  %i.u = add i64 %.val.i.1, %i.p
  %i.v = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val.i.2 = load i64, ptr %i.x, align 8, !noalias !5450, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %.val.i.2, 1152921504606846976
  call void @llvm.assume(i1 %i.y)
  %i.z = add i64 %.val.i.2, %i.u
  %i.aa = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val.i.3 = load i64, ptr %i.ac, align 8, !noalias !5450, !noundef !4 ; 2 uses
  %i.ad = icmp ult i64 %.val.i.3, 1152921504606846976
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add i64 %.val.i.3, %i.z                 ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa, label %.lr.ph.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ae, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ]
  %.in.i.epil.init = phi ptr [ %.sroa.0, %.lr.ph.i.preheader ], [ %i.ab, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod26)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.08.i.epil = phi i64 [ %i.aj, %.lr.ph.i.epil ], [ %.sroa.0.08.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.in.i.epil = phi ptr [ %i.ag, %.lr.ph.i.epil ], [ %.in.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.af = load ptr, ptr %.in.i.epil, align 1      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = getelementptr i8, ptr %i.af, i64 16
  %.val.i.epil = load i64, ptr %i.ah, align 8, !noalias !5450, !noundef !4 ; 2 uses
  %i.ai = icmp ult i64 %.val.i.epil, 1152921504606846976
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add i64 %.val.i.epil, %.sroa.0.08.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit, label %.lr.ph.i.epil, !llvm.loop !5453

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit: ; preds = %.lr.ph.i.epil, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa
  %.lcssa = phi i64 [ %i.ae, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ], [ %i.aj, %.lr.ph.i.epil ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !5454, !noundef !4 ; 2 uses
  %i.am = load i64, ptr %0, align 8, !range !8, !alias.scope !5454, !noundef !4
  %i.an = sub i64 %i.am, %i.al
  %i.ao = icmp ugt i64 %.lcssa, %i.an
  br i1 %i.ao, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit, !prof !5392

bb.b:                                             ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.al, i64 noundef %.lcssa, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit unwind label %bb.k

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit: ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.thread, %bb.b
  %i.ap = phi ptr [ %i.k, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.thread ], [ %i.ak, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRoEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit ], [ %i.ak, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit15, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs6_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecRoEE9pop_frontCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit: ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.at, %bb.d ], [ %i.bi, %bb.h ]
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecRoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread unwind label %bb.j

bb.d:                                             ; preds = %bb.i, %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit

bb.e:                                             ; preds = %bb.c
  %i.au = load i64, ptr %i.b, align 8, !range !523, !noundef !4
  %.not = icmp eq i64 %i.au, -1
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecRoEEECs607s0NAIaWN_7segment.exit12, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.av = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  %i.aw = load i64, ptr %i.ar, align 8, !noundef !4 ; 5 uses
  %i.ax = load i64, ptr %i.ap, align 8, !alias.scope !5457, !noundef !4 ; 5 uses
  %i.ay = load i64, ptr %0, align 8, !range !8, !alias.scope !5457, !noundef !4
  %i.az = sub i64 %i.ay, %i.ax
  %i.ba = icmp ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i, !prof !14

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.thread.i: ; preds = %bb.f
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ax, i64 noundef %i.aw, i64 noundef 8, i64 noundef 8)
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.thread.i
  %i.bb = load i64, ptr %i.ap, align 8, !alias.scope !5462, !noundef !4 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 1152921504606846976
  call void @llvm.assume(i1 %i.bc)
  br label %bb.g

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i: ; preds = %bb.f
  %i.bd = icmp ult i64 %i.ax, 1152921504606846976
  call void @llvm.assume(i1 %i.bd)
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i, %.noexc10
  %i.be = phi i64 [ %i.bb, %.noexc10 ], [ %i.ax, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i ]
  %i.bf = load ptr, ptr %i.as, align 8, !alias.scope !5462, !nonnull !4, !noundef !4
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  %i.bh = shl nuw nsw i64 %i.aw, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull readonly align 8 %i.av, i64 %i.bh, i1 false)
  %.pre.i = load i64, ptr %i.ap, align 8, !alias.scope !5462
  br label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecRoEEECs607s0NAIaWN_7segment.exit12: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecRoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.h:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.thread.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i
  %i.bj = phi i64 [ %.pre.i, %bb.g ], [ %i.ax, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRoE7reserveCs607s0NAIaWN_7segment.exit.i ]
  %i.bk = add i64 %i.bj, %i.aw
  store i64 %i.bk, ptr %i.ap, align 8, !alias.scope !5462
  store i64 0, ptr %i.ar, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit15 unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit15: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.j:                                             ; preds = %bb.k, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecRoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread unwind label %bb.j

.thread:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit, %bb.k
  %.pn7 = phi { ptr, i32 } [ %i.bm, %bb.k ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRoEECs607s0NAIaWN_7segment.exit ]
  resume { ptr, i32 } %.pn7
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsv_NtNtCseW0emhgbqwB_5rayon4iter6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEINtB8_14ParallelExtendB1d_E10par_extendINtNtB8_6filter6FilterINtNtBa_3vec8IntoIterB1d_ENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2O_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1d_uBG_Es4_0EECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca ptr, align 8                  ; 3 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  call void @_RINvXs0_NtNtCseW0emhgbqwB_5rayon4iter6filterINtB6_6FilterINtNtBa_3vec8IntoIterRxENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1q_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1e_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1e_EEs4_0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 4 uses
  store ptr %i.f, ptr %.sroa.0, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.j = icmp ult i64 %i.h, 4
  br i1 %i.j, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.h, -4
  br label %.lr.ph.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.thread: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ]
  %.in.i = phi ptr [ %.sroa.0, %.lr.ph.i.preheader.new ], [ %i.ab, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.l = load ptr, ptr %.in.i, align 1            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = getelementptr i8, ptr %i.l, i64 16
  %.val.i = load i64, ptr %i.n, align 8, !noalias !5463, !noundef !4 ; 2 uses
  %i.o = icmp ult i64 %.val.i, 1152921504606846976
  call void @llvm.assume(i1 %i.o)
  %i.p = add i64 %.val.i, %.sroa.0.08.i
  %i.q = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr i8, ptr %i.q, i64 16
  %.val.i.1 = load i64, ptr %i.s, align 8, !noalias !5463, !noundef !4 ; 2 uses
  %i.t = icmp ult i64 %.val.i.1, 1152921504606846976
  call void @llvm.assume(i1 %i.t)
  %i.u = add i64 %.val.i.1, %i.p
  %i.v = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val.i.2 = load i64, ptr %i.x, align 8, !noalias !5463, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %.val.i.2, 1152921504606846976
  call void @llvm.assume(i1 %i.y)
  %i.z = add i64 %.val.i.2, %i.u
  %i.aa = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val.i.3 = load i64, ptr %i.ac, align 8, !noalias !5463, !noundef !4 ; 2 uses
  %i.ad = icmp ult i64 %.val.i.3, 1152921504606846976
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add i64 %.val.i.3, %i.z                 ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa, label %.lr.ph.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ae, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ]
  %.in.i.epil.init = phi ptr [ %.sroa.0, %.lr.ph.i.preheader ], [ %i.ab, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod26)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.08.i.epil = phi i64 [ %i.aj, %.lr.ph.i.epil ], [ %.sroa.0.08.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.in.i.epil = phi ptr [ %i.ag, %.lr.ph.i.epil ], [ %.in.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.af = load ptr, ptr %.in.i.epil, align 1      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = getelementptr i8, ptr %i.af, i64 16
  %.val.i.epil = load i64, ptr %i.ah, align 8, !noalias !5463, !noundef !4 ; 2 uses
  %i.ai = icmp ult i64 %.val.i.epil, 1152921504606846976
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add i64 %.val.i.epil, %.sroa.0.08.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit, label %.lr.ph.i.epil, !llvm.loop !5466

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit: ; preds = %.lr.ph.i.epil, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa
  %.lcssa = phi i64 [ %i.ae, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ], [ %i.aj, %.lr.ph.i.epil ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !5467, !noundef !4 ; 2 uses
  %i.am = load i64, ptr %0, align 8, !range !8, !alias.scope !5467, !noundef !4
  %i.an = sub i64 %i.am, %i.al
  %i.ao = icmp ugt i64 %.lcssa, %i.an
  br i1 %i.ao, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit, !prof !5392

bb.b:                                             ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.al, i64 noundef %.lcssa, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit unwind label %bb.k

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit: ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.thread, %bb.b
  %i.ap = phi ptr [ %i.k, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.thread ], [ %i.ak, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecRxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit ], [ %i.ak, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit15, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs6_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecRxEE9pop_frontCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit: ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.at, %bb.d ], [ %i.bi, %bb.h ]
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecRxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread unwind label %bb.j

bb.d:                                             ; preds = %bb.i, %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit

bb.e:                                             ; preds = %bb.c
  %i.au = load i64, ptr %i.b, align 8, !range !523, !noundef !4
  %.not = icmp eq i64 %i.au, -1
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecRxEEECs607s0NAIaWN_7segment.exit12, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.av = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  %i.aw = load i64, ptr %i.ar, align 8, !noundef !4 ; 5 uses
  %i.ax = load i64, ptr %i.ap, align 8, !alias.scope !5470, !noundef !4 ; 5 uses
  %i.ay = load i64, ptr %0, align 8, !range !8, !alias.scope !5470, !noundef !4
  %i.az = sub i64 %i.ay, %i.ax
  %i.ba = icmp ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i, !prof !14

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.thread.i: ; preds = %bb.f
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ax, i64 noundef %i.aw, i64 noundef 8, i64 noundef 8)
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.thread.i
  %i.bb = load i64, ptr %i.ap, align 8, !alias.scope !5475, !noundef !4 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 1152921504606846976
  call void @llvm.assume(i1 %i.bc)
  br label %bb.g

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i: ; preds = %bb.f
  %i.bd = icmp ult i64 %i.ax, 1152921504606846976
  call void @llvm.assume(i1 %i.bd)
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i, %.noexc10
  %i.be = phi i64 [ %i.bb, %.noexc10 ], [ %i.ax, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i ]
  %i.bf = load ptr, ptr %i.as, align 8, !alias.scope !5475, !nonnull !4, !noundef !4
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  %i.bh = shl nuw nsw i64 %i.aw, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull readonly align 8 %i.av, i64 %i.bh, i1 false)
  %.pre.i = load i64, ptr %i.ap, align 8, !alias.scope !5475
  br label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecRxEEECs607s0NAIaWN_7segment.exit12: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecRxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.h:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.thread.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRxENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i
  %i.bj = phi i64 [ %.pre.i, %bb.g ], [ %i.ax, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRxE7reserveCs607s0NAIaWN_7segment.exit.i ]
  %i.bk = add i64 %i.bj, %i.aw
  store i64 %i.bk, ptr %i.ap, align 8, !alias.scope !5475
  store i64 0, ptr %i.ar, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRxENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit15 unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit15: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.j:                                             ; preds = %bb.k, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecRxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread unwind label %bb.j

.thread:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit, %bb.k
  %.pn7 = phi { ptr, i32 } [ %i.bm, %bb.k ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRxEECs607s0NAIaWN_7segment.exit ]
  resume { ptr, i32 } %.pn7
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsv_NtNtCseW0emhgbqwB_5rayon4iter6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecjEINtB8_14ParallelExtendjE10par_extendINtNtB8_3map3MapINtNtBa_5slice4IterReENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2A_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB2o_uIBH_B2o_EE0EECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca ptr, align 8                  ; 3 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !5476
  %i.g = call { i64, i64 } @_RNvXs0_NtNtCseW0emhgbqwB_5rayon4iter3mapINtB5_3MapINtNtB9_5slice4IterReENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1h_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB15_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB15_EE0ENtB7_16ParallelIterator7opt_lenCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, i64 } %i.g, 1
  call void @_RINvNtNtCseW0emhgbqwB_5rayon4iter7collect21collect_with_consumerjNCINvB2_14special_extendINtNtB4_3map3MapINtNtB6_5slice4IterReENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2a_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1Y_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1Y_EE0EjE0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @_RINvXs0_NtNtCseW0emhgbqwB_5rayon4iter3mapINtB6_3MapINtNtBa_5slice4IterReENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB16_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB16_EE0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = load ptr, ptr %i.e, align 8, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 4 uses
  store ptr %i.k, ptr %.sroa.0, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.o = icmp ult i64 %i.m, 4
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.m, -4
  br label %.lr.ph.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.thread: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.aj, %.lr.ph.i ]
  %.in.i = phi ptr [ %.sroa.0, %.lr.ph.i.preheader.new ], [ %i.ag, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.q = load ptr, ptr %.in.i, align 1            ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr i8, ptr %i.q, i64 16
  %.val.i = load i64, ptr %i.s, align 8, !noalias !5480, !noundef !4 ; 2 uses
  %i.t = icmp ult i64 %.val.i, 1152921504606846976
  call void @llvm.assume(i1 %i.t)
  %i.u = add i64 %.val.i, %.sroa.0.08.i
  %i.v = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val.i.1 = load i64, ptr %i.x, align 8, !noalias !5480, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %.val.i.1, 1152921504606846976
  call void @llvm.assume(i1 %i.y)
  %i.z = add i64 %.val.i.1, %i.u
  %i.aa = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val.i.2 = load i64, ptr %i.ac, align 8, !noalias !5480, !noundef !4 ; 2 uses
  %i.ad = icmp ult i64 %.val.i.2, 1152921504606846976
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add i64 %.val.i.2, %i.z
  %i.af = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 16
  %.val.i.3 = load i64, ptr %i.ah, align 8, !noalias !5480, !noundef !4 ; 2 uses
  %i.ai = icmp ult i64 %.val.i.3, 1152921504606846976
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add i64 %.val.i.3, %i.ae                ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa, label %.lr.ph.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aj, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ]
  %.in.i.epil.init = phi ptr [ %.sroa.0, %.lr.ph.i.preheader ], [ %i.ag, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.sroa.0.08.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.in.i.epil = phi ptr [ %i.al, %.lr.ph.i.epil ], [ %.in.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ak = load ptr, ptr %.in.i.epil, align 1      ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = getelementptr i8, ptr %i.ak, i64 16
  %.val.i.epil = load i64, ptr %i.am, align 8, !noalias !5480, !noundef !4 ; 2 uses
  %i.an = icmp ult i64 %.val.i.epil, 1152921504606846976
  call void @llvm.assume(i1 %i.an)
  %i.ao = add i64 %.val.i.epil, %.sroa.0.08.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit, label %.lr.ph.i.epil, !llvm.loop !5483

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit: ; preds = %.lr.ph.i.epil, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa
  %.lcssa = phi i64 [ %i.aj, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ], [ %i.ao, %.lr.ph.i.epil ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !5484, !noundef !4 ; 2 uses
  %i.ar = load i64, ptr %0, align 8, !range !8, !alias.scope !5484, !noundef !4
  %i.as = sub i64 %i.ar, %i.aq
  %i.at = icmp ugt i64 %.lcssa, %i.as
  br i1 %i.at, label %bb.d, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit, !prof !5392

bb.d:                                             ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aq, i64 noundef %.lcssa, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit unwind label %bb.n

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit: ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.thread, %bb.d
  %i.au = phi ptr [ %i.p, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.thread ], [ %i.ap, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit ], [ %i.ap, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit13, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs6_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecjEE9pop_frontCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit: ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.f ], [ %i.bn, %bb.k ]
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread unwind label %bb.m

bb.f:                                             ; preds = %bb.l, %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit

bb.g:                                             ; preds = %bb.e
  %i.az = load i64, ptr %i.b, align 8, !range !523, !noundef !4
  %.not = icmp eq i64 %i.az, -1
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecjEEECs607s0NAIaWN_7segment.exit10, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ba = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4
  %i.bb = load i64, ptr %i.aw, align 8, !noundef !4 ; 5 uses
  %i.bc = load i64, ptr %i.au, align 8, !alias.scope !5487, !noundef !4 ; 5 uses
  %i.bd = load i64, ptr %0, align 8, !range !8, !alias.scope !5487, !noundef !4
  %i.be = sub i64 %i.bd, %i.bc
  %i.bf = icmp ugt i64 %i.bb, %i.be
  br i1 %i.bf, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i, !prof !14

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i: ; preds = %bb.h
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bc, i64 noundef %i.bb, i64 noundef 8, i64 noundef 8)
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i
  %i.bg = load i64, ptr %i.au, align 8, !alias.scope !5492, !noundef !4 ; 2 uses
  %i.bh = icmp ult i64 %i.bg, 1152921504606846976
  call void @llvm.assume(i1 %i.bh)
  br label %bb.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i: ; preds = %bb.h
  %i.bi = icmp ult i64 %i.bc, 1152921504606846976
  call void @llvm.assume(i1 %i.bi)
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i, %.noexc8
  %i.bj = phi i64 [ %i.bg, %.noexc8 ], [ %i.bc, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i ]
  %i.bk = load ptr, ptr %i.ax, align 8, !alias.scope !5492, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = shl nuw nsw i64 %i.bb, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr nonnull readonly align 8 %i.ba, i64 %i.bm, i1 false)
  %.pre.i = load i64, ptr %i.au, align 8, !alias.scope !5492
  br label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecjEEECs607s0NAIaWN_7segment.exit10: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecjEEECs607s0NAIaWN_7segment.exit10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.k:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i
  %i.bo = phi i64 [ %.pre.i, %bb.i ], [ %i.bc, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i ]
  %i.bp = add i64 %i.bo, %i.bb
  store i64 %i.bp, ptr %i.au, align 8, !alias.scope !5492
  store i64 0, ptr %i.aw, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit13 unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit13: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.m:                                             ; preds = %bb.n, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.n:                                             ; preds = %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread unwind label %bb.m

.thread:                                          ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit
  %.pn.pn17 = phi { ptr, i32 } [ %i.br, %bb.n ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit ]
  resume { ptr, i32 } %.pn.pn17
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsv_NtNtCseW0emhgbqwB_5rayon4iter6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecjEINtB8_14ParallelExtendjE10par_extendINtNtB8_3map3MapINtNtBa_5slice4IterRoENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2A_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB2o_uIBH_B2o_EE0EECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca ptr, align 8                  ; 3 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !5493
  %i.g = call { i64, i64 } @_RNvXs0_NtNtCseW0emhgbqwB_5rayon4iter3mapINtB5_3MapINtNtB9_5slice4IterRoENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1h_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB15_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB15_EE0ENtB7_16ParallelIterator7opt_lenCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, i64 } %i.g, 1
  call void @_RINvNtNtCseW0emhgbqwB_5rayon4iter7collect21collect_with_consumerjNCINvB2_14special_extendINtNtB4_3map3MapINtNtB6_5slice4IterRoENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2a_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1Y_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1Y_EE0EjE0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @_RINvXs0_NtNtCseW0emhgbqwB_5rayon4iter3mapINtB6_3MapINtNtBa_5slice4IterRoENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB16_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB16_EE0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = load ptr, ptr %i.e, align 8, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 4 uses
  store ptr %i.k, ptr %.sroa.0, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.o = icmp ult i64 %i.m, 4
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.m, -4
  br label %.lr.ph.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.thread: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.aj, %.lr.ph.i ]
  %.in.i = phi ptr [ %.sroa.0, %.lr.ph.i.preheader.new ], [ %i.ag, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.q = load ptr, ptr %.in.i, align 1            ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr i8, ptr %i.q, i64 16
  %.val.i = load i64, ptr %i.s, align 8, !noalias !5497, !noundef !4 ; 2 uses
  %i.t = icmp ult i64 %.val.i, 1152921504606846976
  call void @llvm.assume(i1 %i.t)
  %i.u = add i64 %.val.i, %.sroa.0.08.i
  %i.v = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val.i.1 = load i64, ptr %i.x, align 8, !noalias !5497, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %.val.i.1, 1152921504606846976
  call void @llvm.assume(i1 %i.y)
  %i.z = add i64 %.val.i.1, %i.u
  %i.aa = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val.i.2 = load i64, ptr %i.ac, align 8, !noalias !5497, !noundef !4 ; 2 uses
  %i.ad = icmp ult i64 %.val.i.2, 1152921504606846976
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add i64 %.val.i.2, %i.z
  %i.af = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 16
  %.val.i.3 = load i64, ptr %i.ah, align 8, !noalias !5497, !noundef !4 ; 2 uses
  %i.ai = icmp ult i64 %.val.i.3, 1152921504606846976
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add i64 %.val.i.3, %i.ae                ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa, label %.lr.ph.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aj, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ]
  %.in.i.epil.init = phi ptr [ %.sroa.0, %.lr.ph.i.preheader ], [ %i.ag, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.sroa.0.08.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.in.i.epil = phi ptr [ %i.al, %.lr.ph.i.epil ], [ %.in.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ak = load ptr, ptr %.in.i.epil, align 1      ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = getelementptr i8, ptr %i.ak, i64 16
  %.val.i.epil = load i64, ptr %i.am, align 8, !noalias !5497, !noundef !4 ; 2 uses
  %i.an = icmp ult i64 %.val.i.epil, 1152921504606846976
  call void @llvm.assume(i1 %i.an)
  %i.ao = add i64 %.val.i.epil, %.sroa.0.08.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit, label %.lr.ph.i.epil, !llvm.loop !5500

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit: ; preds = %.lr.ph.i.epil, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa
  %.lcssa = phi i64 [ %i.aj, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ], [ %i.ao, %.lr.ph.i.epil ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !5501, !noundef !4 ; 2 uses
  %i.ar = load i64, ptr %0, align 8, !range !8, !alias.scope !5501, !noundef !4
  %i.as = sub i64 %i.ar, %i.aq
  %i.at = icmp ugt i64 %.lcssa, %i.as
  br i1 %i.at, label %bb.d, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit, !prof !5392

bb.d:                                             ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aq, i64 noundef %.lcssa, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit unwind label %bb.n

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit: ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.thread, %bb.d
  %i.au = phi ptr [ %i.p, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.thread ], [ %i.ap, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit ], [ %i.ap, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit13, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs6_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecjEE9pop_frontCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit: ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.f ], [ %i.bn, %bb.k ]
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread unwind label %bb.m

bb.f:                                             ; preds = %bb.l, %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit

bb.g:                                             ; preds = %bb.e
  %i.az = load i64, ptr %i.b, align 8, !range !523, !noundef !4
  %.not = icmp eq i64 %i.az, -1
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecjEEECs607s0NAIaWN_7segment.exit10, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ba = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4
  %i.bb = load i64, ptr %i.aw, align 8, !noundef !4 ; 5 uses
  %i.bc = load i64, ptr %i.au, align 8, !alias.scope !5504, !noundef !4 ; 5 uses
  %i.bd = load i64, ptr %0, align 8, !range !8, !alias.scope !5504, !noundef !4
  %i.be = sub i64 %i.bd, %i.bc
  %i.bf = icmp ugt i64 %i.bb, %i.be
  br i1 %i.bf, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i, !prof !14

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i: ; preds = %bb.h
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bc, i64 noundef %i.bb, i64 noundef 8, i64 noundef 8)
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i
  %i.bg = load i64, ptr %i.au, align 8, !alias.scope !5509, !noundef !4 ; 2 uses
  %i.bh = icmp ult i64 %i.bg, 1152921504606846976
  call void @llvm.assume(i1 %i.bh)
  br label %bb.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i: ; preds = %bb.h
  %i.bi = icmp ult i64 %i.bc, 1152921504606846976
  call void @llvm.assume(i1 %i.bi)
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i, %.noexc8
  %i.bj = phi i64 [ %i.bg, %.noexc8 ], [ %i.bc, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i ]
  %i.bk = load ptr, ptr %i.ax, align 8, !alias.scope !5509, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = shl nuw nsw i64 %i.bb, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr nonnull readonly align 8 %i.ba, i64 %i.bm, i1 false)
  %.pre.i = load i64, ptr %i.au, align 8, !alias.scope !5509
  br label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecjEEECs607s0NAIaWN_7segment.exit10: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecjEEECs607s0NAIaWN_7segment.exit10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.k:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i
  %i.bo = phi i64 [ %.pre.i, %bb.i ], [ %i.bc, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i ]
  %i.bp = add i64 %i.bo, %i.bb
  store i64 %i.bp, ptr %i.au, align 8, !alias.scope !5509
  store i64 0, ptr %i.aw, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit13 unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit13: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.m:                                             ; preds = %bb.n, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.n:                                             ; preds = %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread unwind label %bb.m

.thread:                                          ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit
  %.pn.pn17 = phi { ptr, i32 } [ %i.br, %bb.n ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit ]
  resume { ptr, i32 } %.pn.pn17
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsv_NtNtCseW0emhgbqwB_5rayon4iter6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecjEINtB8_14ParallelExtendjE10par_extendINtNtB8_3map3MapINtNtBa_5slice4IterRxENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2A_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB2o_uIBH_B2o_EE0EECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca ptr, align 8                  ; 3 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !5510
  %i.g = call { i64, i64 } @_RNvXs0_NtNtCseW0emhgbqwB_5rayon4iter3mapINtB5_3MapINtNtB9_5slice4IterRxENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1h_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB15_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB15_EE0ENtB7_16ParallelIterator7opt_lenCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, i64 } %i.g, 1
  call void @_RINvNtNtCseW0emhgbqwB_5rayon4iter7collect21collect_with_consumerjNCINvB2_14special_extendINtNtB4_3map3MapINtNtB6_5slice4IterRxENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2a_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1Y_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1Y_EE0EjE0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @_RINvXs0_NtNtCseW0emhgbqwB_5rayon4iter3mapINtB6_3MapINtNtBa_5slice4IterRxENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB16_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB16_EE0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = load ptr, ptr %i.e, align 8, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 4 uses
  store ptr %i.k, ptr %.sroa.0, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.o = icmp ult i64 %i.m, 4
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.m, -4
  br label %.lr.ph.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.thread: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.aj, %.lr.ph.i ]
  %.in.i = phi ptr [ %.sroa.0, %.lr.ph.i.preheader.new ], [ %i.ag, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.q = load ptr, ptr %.in.i, align 1            ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr i8, ptr %i.q, i64 16
  %.val.i = load i64, ptr %i.s, align 8, !noalias !5514, !noundef !4 ; 2 uses
  %i.t = icmp ult i64 %.val.i, 1152921504606846976
  call void @llvm.assume(i1 %i.t)
  %i.u = add i64 %.val.i, %.sroa.0.08.i
  %i.v = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val.i.1 = load i64, ptr %i.x, align 8, !noalias !5514, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %.val.i.1, 1152921504606846976
  call void @llvm.assume(i1 %i.y)
  %i.z = add i64 %.val.i.1, %i.u
  %i.aa = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val.i.2 = load i64, ptr %i.ac, align 8, !noalias !5514, !noundef !4 ; 2 uses
  %i.ad = icmp ult i64 %.val.i.2, 1152921504606846976
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add i64 %.val.i.2, %i.z
  %i.af = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 16
  %.val.i.3 = load i64, ptr %i.ah, align 8, !noalias !5514, !noundef !4 ; 2 uses
  %i.ai = icmp ult i64 %.val.i.3, 1152921504606846976
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add i64 %.val.i.3, %i.ae                ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa, label %.lr.ph.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aj, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ]
  %.in.i.epil.init = phi ptr [ %.sroa.0, %.lr.ph.i.preheader ], [ %i.ag, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.sroa.0.08.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.in.i.epil = phi ptr [ %i.al, %.lr.ph.i.epil ], [ %.in.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ak = load ptr, ptr %.in.i.epil, align 1      ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = getelementptr i8, ptr %i.ak, i64 16
  %.val.i.epil = load i64, ptr %i.am, align 8, !noalias !5514, !noundef !4 ; 2 uses
  %i.an = icmp ult i64 %.val.i.epil, 1152921504606846976
  call void @llvm.assume(i1 %i.an)
  %i.ao = add i64 %.val.i.epil, %.sroa.0.08.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit, label %.lr.ph.i.epil, !llvm.loop !5517

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit: ; preds = %.lr.ph.i.epil, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa
  %.lcssa = phi i64 [ %i.aj, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.unr-lcssa ], [ %i.ao, %.lr.ph.i.epil ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !5518, !noundef !4 ; 2 uses
  %i.ar = load i64, ptr %0, align 8, !range !8, !alias.scope !5518, !noundef !4
  %i.as = sub i64 %i.ar, %i.aq
  %i.at = icmp ugt i64 %.lcssa, %i.as
  br i1 %i.at, label %bb.d, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit, !prof !5392

bb.d:                                             ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aq, i64 noundef %.lcssa, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit unwind label %bb.n

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit: ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.thread, %bb.d
  %i.au = phi ptr [ %i.p, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit.thread ], [ %i.ap, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecjEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1o_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1m_5accumjNtB3n_3Sum3sumINtB2o_3MapB3_B2Y_EE0E0ECs607s0NAIaWN_7segment.exit ], [ %i.ap, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit13, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs6_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecjEE9pop_frontCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit: ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.f ], [ %i.bn, %bb.k ]
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread unwind label %bb.m

bb.f:                                             ; preds = %bb.l, %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit

bb.g:                                             ; preds = %bb.e
  %i.az = load i64, ptr %i.b, align 8, !range !523, !noundef !4
  %.not = icmp eq i64 %i.az, -1
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecjEEECs607s0NAIaWN_7segment.exit10, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ba = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4
  %i.bb = load i64, ptr %i.aw, align 8, !noundef !4 ; 5 uses
  %i.bc = load i64, ptr %i.au, align 8, !alias.scope !5521, !noundef !4 ; 5 uses
  %i.bd = load i64, ptr %0, align 8, !range !8, !alias.scope !5521, !noundef !4
  %i.be = sub i64 %i.bd, %i.bc
  %i.bf = icmp ugt i64 %i.bb, %i.be
  br i1 %i.bf, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i, !prof !14

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i: ; preds = %bb.h
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bc, i64 noundef %i.bb, i64 noundef 8, i64 noundef 8)
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i
  %i.bg = load i64, ptr %i.au, align 8, !alias.scope !5526, !noundef !4 ; 2 uses
  %i.bh = icmp ult i64 %i.bg, 1152921504606846976
  call void @llvm.assume(i1 %i.bh)
  br label %bb.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i: ; preds = %bb.h
  %i.bi = icmp ult i64 %i.bc, 1152921504606846976
  call void @llvm.assume(i1 %i.bi)
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i, %.noexc8
  %i.bj = phi i64 [ %i.bg, %.noexc8 ], [ %i.bc, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i ]
  %i.bk = load ptr, ptr %i.ax, align 8, !alias.scope !5526, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = shl nuw nsw i64 %i.bb, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr nonnull readonly align 8 %i.ba, i64 %i.bm, i1 false)
  %.pre.i = load i64, ptr %i.au, align 8, !alias.scope !5526
  br label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecjEEECs607s0NAIaWN_7segment.exit10: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecjEEECs607s0NAIaWN_7segment.exit10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.k:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i
  %i.bo = phi i64 [ %.pre.i, %bb.i ], [ %i.bc, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i ]
  %i.bp = add i64 %i.bo, %i.bb
  store i64 %i.bp, ptr %i.au, align 8, !alias.scope !5526
  store i64 0, ptr %i.aw, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit13 unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit13: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.m:                                             ; preds = %bb.n, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.n:                                             ; preds = %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread unwind label %bb.m

.thread:                                          ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit
  %.pn.pn17 = phi { ptr, i32 } [ %i.br, %bb.n ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit ]
end_hunk_0
