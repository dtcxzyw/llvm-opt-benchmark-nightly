Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.12?download=true
inline.NumInlined: 193
inline.NumDeleted: 118
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemINtB5_3VecdENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs8lmMd0ZksV9_6statrs:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !35, !noalias !36, !nonnull !4, !noundef !4
  %i.u = load i64, ptr %i.p, align 8, !alias.scope !35, !noalias !36, !noundef !4 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0
  %i.v = shl nuw nsw i64 %i.u, 3
  br i1 %.not.i.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i.us
  %.sroa.0.030.i.us = phi ptr [ %i.ab, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i.us ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.029.i.us = phi i64 [ %i.aa, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i.us ], [ 1, %.lr.ph.i ]
  %storemerge28.i.us = phi i64 [ %i.ac, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i.us ], [ 0, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) 0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc14.i.us unwind label %.loopexit.i.split.us, !noalias !34

.noexc14.i.us:                                    ; preds = %.lr.ph.i.split.us
  %i.w = load i64, ptr %i.a, align 8, !range !7, !noalias !38, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = load i64, ptr %i.r, align 8, !range !8, !noalias !38, !noundef !4 ; 2 uses
  br i1 %i.x, label %.split.us, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i.us, !prof !6

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i.us: ; preds = %.noexc14.i.us
  %i.z = load ptr, ptr %i.s, align 8, !noalias !38, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38
  %i.aa = add nuw i64 %.sroa.03.029.i.us, 1       ; 2 uses
  store i64 %i.y, ptr %.sroa.0.030.i.us, align 8, !noalias !34
  %.sroa.4.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 8
  store ptr %i.z, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !34
  %.sroa.5.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !34
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 24 ; 2 uses
  %i.ac = add nuw i64 %storemerge28.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not.i.us, label %._crit_edge.thread.i, label %.lr.ph.i.split.us

.loopexit.i.split.us:                             ; preds = %.lr.ph.i.split.us
  %lpad.loopexit.i.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_dEE7reserveCs8lmMd0ZksV9_6statrs.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.thread.i

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i
  %.sroa.0.030.i = phi ptr [ %i.ak, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.029.i = phi i64 [ %i.aj, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i ], [ 1, %.lr.ph.i ]
  %storemerge28.i = phi i64 [ %i.al, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i ], [ 0, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.u, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc14.i unwind label %.loopexit.i.split, !noalias !34

.noexc14.i:                                       ; preds = %.lr.ph.i.split
  %i.ad = load i64, ptr %i.a, align 8, !range !7, !noalias !38, !noundef !4
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = load i64, ptr %i.r, align 8, !range !8, !noalias !38, !noundef !4 ; 3 uses
  br i1 %i.ae, label %.split.us, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i, !prof !6

.split.us:                                        ; preds = %.noexc14.i, %.noexc14.i.us
  %.us-phi16 = phi i64 [ %i.y, %.noexc14.i.us ], [ %i.af, %.noexc14.i ]
  %.us-phi17 = phi i64 [ %storemerge28.i.us, %.noexc14.i.us ], [ %storemerge28.i, %.noexc14.i ]
  %i.ag = load i64, ptr %i.s, align 8, !noalias !38
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.us-phi16, i64 %i.ag) #16
          to label %.noexc15.i unwind label %.loopexit.split-lp.i, !noalias !34

.noexc15.i:                                       ; preds = %.split.us
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i: ; preds = %.noexc14.i
  %i.ah = load ptr, ptr %i.s, align 8, !noalias !38, !nonnull !4, !noundef !4 ; 2 uses
  %i.ai = icmp ule i64 %i.u, %i.af
  tail call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull readonly align 8 %i.t, i64 %i.v, i1 false), !noalias !39
  %i.aj = add nuw i64 %.sroa.03.029.i, 1          ; 2 uses
  store i64 %i.af, ptr %.sroa.0.030.i, align 8, !noalias !34
  %.sroa.4.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i, align 8, !noalias !34
  %.sroa.5.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 16
  store i64 %i.u, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i, align 8, !noalias !34
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 24 ; 2 uses
  %i.al = add nuw i64 %storemerge28.i, 1
  %exitcond.not.i = icmp eq i64 %i.aj, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i.split

bb.c:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.n, align 8, !alias.scope !33, !noalias !34
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMs4_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_dEE11extend_withCs8lmMd0ZksV9_6statrs.exit unwind label %bb.e

._crit_edge.thread.i:                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i.us, %._crit_edge.i
  %.sroa.0.0.lcssa44.i = phi ptr [ %i.k, %._crit_edge.i ], [ %i.ab, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i.us ], [ %i.ak, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa44.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %2, ptr %i.n, align 8, !alias.scope !33, !noalias !34
  br label %_RNvMs4_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_dEE11extend_withCs8lmMd0ZksV9_6statrs.exit

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
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

.loopexit.i:                                      ; preds = %.loopexit.i.split, %.loopexit.i.split.us, %.loopexit.split-lp.i
  %storemerge28.i12 = phi i64 [ %.us-phi17, %.loopexit.split-lp.i ], [ %storemerge28.i, %.loopexit.i.split ], [ %storemerge28.i.us, %.loopexit.i.split.us ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i.split ], [ %lpad.loopexit.i.us, %.loopexit.i.split.us ]
  store i64 %storemerge28.i12, ptr %i.n, align 8, !alias.scope !33, !noalias !34
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.d

bb.e:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.e ], [ %lpad.phi.i, %.loopexit.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_dEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #17
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.f

_RNvMs4_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_dEE11extend_withCs8lmMd0ZksV9_6statrs.exit: ; preds = %._crit_edge.thread.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.g, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.g, %.body
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ap, %bb.g ]
  resume { ptr, i32 } %.pn8

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs2_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_5EntryINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE9or_insertB1l_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = load ptr, ptr %0, align 8, !noundef !4
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB1L_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !44, !noalias !43, !noundef !4
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load double, ptr %i.m, align 8, !alias.scope !44, !noalias !43, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3V_11VacantEntryB1D_yE12insert_entry0EB1M_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, double noundef %i.n, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o), !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45
  %.pre.i = load ptr, ptr %i.e, align 8, !alias.scope !44, !noalias !43
  br label %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE12insert_entryB1s_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.e, align 8, !alias.scope !44, !noalias !43, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = tail call { ptr, i64 } @_RINvMs8_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1B_(), !noalias !45 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 3 uses
  %2 = extractvalue { ptr, i64 } %i.q, 1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  store ptr %i.r, ptr %i.p, align 8, !noalias !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %2, ptr %i.s, align 8, !noalias !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.t, align 8, !noalias !45
  store ptr %i.r, ptr %i.b, align 8, !noalias !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = load double, ptr %i.u, align 8, !alias.scope !44, !noalias !43, !noundef !4
  call void @_RNvMsu_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB19_4LeafE16push_with_handleB1y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, double noundef %i.v, i64 noundef %1), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45
  br label %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE12insert_entryB1s_.exit

_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE12insert_entryB1s_.exit: ; preds = %bb.d, %bb.e
  %i.w = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noalias !43, !noundef !4
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !noalias !43
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = load ptr, ptr %i.c, align 8, !noalias !45, !nonnull !4, !noundef !4
  store ptr %i.ab, ptr %i.d, align 8, !alias.scope !43, !noalias !44
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = load <2 x i64>, ptr %i.aa, align 8, !noalias !45
  store <2 x i64> %i.ac, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !43, !noalias !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.w, ptr %i.ad, align 8, !alias.scope !43, !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45
  %i.ae = call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB1L_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE12insert_entryB1s_.exit
  %.sroa.0.0 = phi ptr [ %i.i, %bb.b ], [ %i.ae, %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE12insert_entryB1s_.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdE11extend_withCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, double noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !50, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !5, !alias.scope !50, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 8)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = icmp ult i64 %i.f, 1152921504606846976
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f ; 4 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 5
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, -4                       ; 4 uses
  %i.m = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8
  store <2 x double> %broadcast.splat, ptr %i.q, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !48

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

._crit_edge:                                      ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa28 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa27 = phi i64 [ %i.t, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store double %2, ptr %.sroa.0.0.lcssa28, align 8
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
  store double %2, ptr %.sroa.0.021, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 8 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !49
}

; Function Attrs: nonlazybind uwtable
define hidden { double, i64 } @_RNvMs5_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE9remove_kvB1u_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMNtNtNtCs1xwejQucwHj_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB3S_13OccupiedEntryB1J_yE9remove_kv0NtNtB9_5alloc6GlobalEB1S_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull dereferenceable(1) %i.b)
  %i.c = load double, ptr %i.a, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8
  %i.k = load i8, ptr %i.b, align 1, !range !51, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.g, align 8, !noundef !4
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !6

bb.c:                                             ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.n = insertvalue { double, i64 } poison, double %i.c, 0
  %i.o = insertvalue { double, i64 } %i.n, i64 %i.e, 1
  ret { double, i64 } %i.o

bb.d:                                             ; preds = %bb.b
  call void @_RINvMss_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE5entryB1g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, double noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store double %2, ptr %i.b, align 8
  %i.c = load ptr, ptr %1, align 8, !noundef !4   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  call void @_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1i_14LeafOrInternalE11search_treeB1y_EB1H_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.f = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

end_hunk_0
begin_hunk_1_@_RNvXs0_NtCs1xwejQucwHj_5alloc5sliceSINtNtB7_3vec3VecdEINtB5_6ConcatdE6concatCs8lmMd0ZksV9_6statrs:bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #16
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1w_8adapters3map8map_foldRBQ_jjNCNvXs0_NtBV_5sliceSBQ_INtB2Y_6ConcatdE6concat0NCINvXsK_NtB1u_5accumjNtB3K_3Sum3sumINtB2g_3MapBF_B2Q_EE0E0ECs8lmMd0ZksV9_6statrs.exit
  %i.ac = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ad = icmp ule i64 %.sroa.0.0.i, %i.z
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.z, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store i64 0, ptr %i.af, align 8
  br i1 %i.d, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit.thread.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.e

.lr.ph:                                           ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit, %_RNvXs2_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VecdEINtB5_10SpecExtendRdINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdEE11spec_extendCs8lmMd0ZksV9_6statrs.exit
  %i.ah = phi i64 [ %i.au, %_RNvXs2_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VecdEINtB5_10SpecExtendRdINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdEE11spec_extendCs8lmMd0ZksV9_6statrs.exit ], [ %i.z, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit ] ; 2 uses
  %i.ai = phi i64 [ %i.aw, %_RNvXs2_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VecdEINtB5_10SpecExtendRdINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdEE11spec_extendCs8lmMd0ZksV9_6statrs.exit ], [ 0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit ] ; 5 uses
  %.sroa.0.09 = phi ptr [ %i.aj, %_RNvXs2_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VecdEINtB5_10SpecExtendRdINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdEE11spec_extendCs8lmMd0ZksV9_6statrs.exit ], [ %1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.09, i64 24 ; 2 uses
  %i.ak = getelementptr i8, ptr %.sroa.0.09, i64 8
  %.sroa.0.0.val = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.al = getelementptr i8, ptr %.sroa.0.09, i64 16
  %.sroa.0.0.val6 = load i64, ptr %i.al, align 8, !noundef !4 ; 5 uses
  %.idx7 = shl nuw nsw i64 %.sroa.0.0.val6, 3
  %i.am = sub i64 %i.ah, %i.ai
  %i.an = icmp ugt i64 %.sroa.0.0.val6, %i.am
  br i1 %i.an, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit.thread.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit.i.i, !prof !6

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit.thread.i.i: ; preds = %.lr.ph
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ai, i64 noundef %.sroa.0.0.val6, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit.thread.i.i
  %i.ao = load i64, ptr %i.af, align 8, !alias.scope !136, !noundef !4 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 1152921504606846976
  call void @llvm.assume(i1 %i.ap)
  br label %bb.d

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit.i.i: ; preds = %.lr.ph
  %i.aq = icmp ult i64 %i.ai, 1152921504606846976
  call void @llvm.assume(i1 %i.aq)
  %.not.i.i = icmp eq i64 %.sroa.0.0.val6, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VecdEINtB5_10SpecExtendRdINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdEE11spec_extendCs8lmMd0ZksV9_6statrs.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit.i.i, %.noexc
  %i.ar = phi i64 [ %i.ao, %.noexc ], [ %i.ai, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit.i.i ]
  %i.as = load ptr, ptr %i.ae, align 8, !alias.scope !136, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.at, ptr nonnull readonly align 8 %.sroa.0.0.val, i64 %.idx7, i1 false)
  %.pre.i.i = load i64, ptr %i.af, align 8, !alias.scope !136
  %.pre = load i64, ptr %i.b, align 8, !range !5, !alias.scope !137
  br label %_RNvXs2_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VecdEINtB5_10SpecExtendRdINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdEE11spec_extendCs8lmMd0ZksV9_6statrs.exit

_RNvXs2_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VecdEINtB5_10SpecExtendRdINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdEE11spec_extendCs8lmMd0ZksV9_6statrs.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit.i.i, %bb.d
  %i.au = phi i64 [ %.pre, %bb.d ], [ %i.ah, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit.i.i ]
  %i.av = phi i64 [ %.pre.i.i, %bb.d ], [ %i.ai, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit.i.i ]
  %i.aw = add i64 %i.av, %.sroa.0.0.val6          ; 2 uses
  store i64 %i.aw, ptr %i.af, align 8
  %i.ax = icmp eq ptr %i.aj, %i.c
  br i1 %i.ax, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.ag

._crit_edge:                                      ; preds = %_RNvXs2_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VecdEINtB5_10SpecExtendRdINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdEE11spec_extendCs8lmMd0ZksV9_6statrs.exit, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecdEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuarddE13with_capacityCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !8, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #16
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecdEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuarddE19as_uninit_slice_mutCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.g = sub i64 %i.f, %i.d
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsX_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1d_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !145, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !145, !noundef !4 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.split.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %_RINvMs3_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE20perform_next_checkedNCNvMs1_B6_BY_12next_checked0TRB1F_RyEEB1O_.exit, label %bb.h

.split.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !145, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !145, !noundef !4
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %_RINvMs3_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE20perform_next_checkedNCNvMs1_B6_BY_12next_checked0TRB1F_RyEEB1O_.exit, label %bb.d

bb.d:                                             ; preds = %.split.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !147
  invoke void @_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeE7next_kvB20_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0)
          to label %.noexc.i.i unwind label %bb.g

.noexc.i.i:                                       ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8, !noalias !147, !noundef !4 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.f, !prof !6

bb.e:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !147
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #18
          to label %.noexc1.i.i unwind label %bb.g, !noalias !146

.noexc1.i.i:                                      ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i.i
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !147
  store ptr %i.n, ptr %i.a, align 8, !noalias !147
  %i.p = invoke { ptr, ptr } @_RNvMsP_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB1N_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i.i unwind label %bb.g, !noalias !146 ; 2 uses

.noexc2.i.i:                                      ; preds = %bb.f
  invoke void @_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB20_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeEINtNtCs3oUPovFnLWP_4core6option6OptionTRB1R_RyEENCINvMs3_NtB4_8navigateINtB4k_9LeafRangeB1w_B1R_yE20perform_next_checkedNCNvMs1_B4k_B4y_12next_checked0B41_E0EB20_.exit.i unwind label %bb.g, !noalias !146

bb.g:                                             ; preds = %.noexc2.i.i, %bb.f, %bb.e, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeEINtNtCs3oUPovFnLWP_4core6option6OptionTRB1R_RyEENCINvMs3_NtB4_8navigateINtB4k_9LeafRangeB1w_B1R_yE20perform_next_checkedNCNvMs1_B4k_B4y_12next_checked0B41_E0EB20_.exit.i: ; preds = %.noexc2.i.i
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !146
  br label %_RINvMs3_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE20perform_next_checkedNCNvMs1_B6_BY_12next_checked0TRB1F_RyEEB1O_.exit

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18, !noalias !145
  unreachable

_RINvMs3_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE20perform_next_checkedNCNvMs1_B6_BY_12next_checked0TRB1F_RyEEB1O_.exit: ; preds = %bb.c, %.split.i, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeEINtNtCs3oUPovFnLWP_4core6option6OptionTRB1R_RyEENCINvMs3_NtB4_8navigateINtB4k_9LeafRangeB1w_B1R_yE20perform_next_checkedNCNvMs1_B4k_B4y_12next_checked0B41_E0EB20_.exit.i
  %.sroa.3.0.i = phi ptr [ %i.r, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeEINtNtCs3oUPovFnLWP_4core6option6OptionTRB1R_RyEENCINvMs3_NtB4_8navigateINtB4k_9LeafRangeB1w_B1R_yE20perform_next_checkedNCNvMs1_B4k_B4y_12next_checked0B41_E0EB20_.exit.i ], [ undef, %bb.c ], [ undef, %.split.i ]
  %.sroa.0.0.i = phi ptr [ %i.s, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeEINtNtCs3oUPovFnLWP_4core6option6OptionTRB1R_RyEENCINvMs3_NtB4_8navigateINtB4k_9LeafRangeB1w_B1R_yE20perform_next_checkedNCNvMs1_B4k_B4y_12next_checked0B41_E0EB20_.exit.i ], [ null, %bb.c ], [ null, %.split.i ]
  %i.t = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.u = insertvalue { ptr, ptr } %i.t, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB6_3VecdEINtB4_12SpecFromIterdINtNtB6_9into_iter8IntoIterdEE9from_iterCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.pre = ptrtoint ptr %i.f to i64
  %.pre67 = sub nuw i64 %.sroa.8.0.copyload, %.pre
  %.pre69 = lshr exact i64 %.pre67, 3
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val52 = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.h = ptrtoint ptr %.val52 to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub nuw i64 %i.h, %i.i                   ; 2 uses
  %i.k = lshr exact i64 %i.j, 3                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.n = lshr i64 %i.m, 1
  %.not46 = icmp samesign ult i64 %i.k, %i.n
  br i1 %.not46, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.q = invoke { ptr, i64 } @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterdE8as_sliceCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %bb.e unwind label %bb.g, !noalias !153 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 4 uses
  %.not66 = icmp eq i64 %i.s, 0
  br i1 %.not66, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8lmMd0ZksV9_6statrs.exit.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit.thread.i.i, !prof !155

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit.thread.i.i: ; preds = %bb.e
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %i.s, i64 noundef 8, i64 noundef 8)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit.thread.i.i
  %i.t = load i64, ptr %i.p, align 8, !alias.scope !156, !noalias !154, !noundef !4 ; 2 uses
  %i.u = icmp ult i64 %i.t, 1152921504606846976
  call void @llvm.assume(i1 %i.u)
  %i.v = load ptr, ptr %i.o, align 8, !alias.scope !156, !noalias !154, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  %i.x = shl nuw nsw i64 %i.s, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr readonly align 8 %i.r, i64 %i.x, i1 false)
  %.pre.i.i = load i64, ptr %i.p, align 8, !alias.scope !156, !noalias !154
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8lmMd0ZksV9_6statrs.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8lmMd0ZksV9_6statrs.exit.i: ; preds = %bb.e, %bb.f
  %i.y = phi i64 [ %.pre.i.i, %bb.f ], [ 0, %bb.e ]
  %i.z = add i64 %i.y, %i.s
  store i64 %i.z, ptr %i.p, align 8, !alias.scope !156, !noalias !154
  %i.aa = load ptr, ptr %i.b, align 8, !alias.scope !154, !noalias !153, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !154, !noalias !153, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !157
  store i64 %i.ac, ptr %i.a, align 8, !noalias !157
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aa, ptr %i.ad, align 8, !noalias !157
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecdE7reserveCs8lmMd0ZksV9_6statrs.exit.thread.i.i, %bb.d
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8lmMd0ZksV9_6statrs.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.i ], [ %lpad.thr_comm.i, %bb.g ]
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread unwind label %bb.l

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  ret void

bb.l:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.m:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.f, i64 %i.j, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.b
  %.pre-phi70 = phi i64 [ %i.k, %bb.m ], [ %.pre69, %bb.b ]
  %.sroa.7.0 = phi i64 [ %i.m, %bb.m ], [ %.sroa.7.0.copyload, %bb.b ]
  store i64 %.sroa.7.0, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.pre-phi70, ptr %i.ai, align 8
  br label %bb.k

.thread:                                          ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecdEINtB4_18SpecFromIterNesteddINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0EE9from_iterB2T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.d, align 8, !alias.scope !167, !noalias !168, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2 = load i64, ptr %i.e, align 8, !alias.scope !168, !noalias !167, !noundef !4
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val2, i64 %.val) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.f = load i64, ptr %i.b, align 8, !range !7, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !8, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecdE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0EEB2l_.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #16
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecdE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0EEB2l_.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = icmp ule i64 %spec.select.i.i, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !169
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.p, align 8, !noalias !169
  store ptr %i.o, ptr %i.a, align 8, !noalias !169
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.q, align 8, !noalias !169
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3q_3VecdE14extend_trustedBN_E0E0EB1v_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecdE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0EEB2l_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecdE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0EEB2l_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEE9from_iterCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %spec.select.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !8, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8lmMd0ZksV9_6statrs.exit.i.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #16
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8lmMd0ZksV9_6statrs.exit.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = icmp ule i64 %spec.select.i, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = icmp ult i64 %1, %2
  br i1 %i.j, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8lmMd0ZksV9_6statrs.exit.i.i
  %i.k = sub nuw i64 %2, %1                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.k, -4                       ; 5 uses
  %i.l = add i64 %1, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %1, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x i64> %vec.ind, ptr %i.m, align 8, !noalias !180
  store <2 x i64> %step.add, ptr %i.n, align 8, !noalias !180
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.preheader7

.lr.ph.i.i.i.i.preheader7:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.0.010.i.i.i.i.ph = phi i64 [ %1, %.lr.ph.i.i.i.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader7, %.lr.ph.i.i.i.i
  %i.p = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.preheader7 ] ; 2 uses
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader7 ] ; 2 uses
  %i.q = add nuw i64 %.sroa.0.010.i.i.i.i, 1      ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.p
  store i64 %.sroa.0.010.i.i.i.i, ptr %i.r, align 8, !noalias !180
  %i.s = add nuw i64 %i.p, 1                      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.q, %2
  br i1 %exitcond.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !179

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %middle.block, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8lmMd0ZksV9_6statrs.exit.i.i
  %.val6.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8lmMd0ZksV9_6statrs.exit.i.i ], [ %n.vec, %middle.block ], [ %i.s, %.lr.ph.i.i.i.i ]
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val6.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterIBU_dEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0EE9from_iterB30_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.h = load i64, ptr %i.b, align 8, !range !7, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !8, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterIBx_dEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0EEB2s_.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #16
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterIBx_dEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0EEB2s_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !185
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !185
  store ptr %i.q, ptr %i.a, align 8, !noalias !185
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !185
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB30_8for_each4calljNCINvMsk_B1q_IB1o_jE14extend_trustedBN_E0E0EB25_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterIBx_dEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0EEB2s_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterIBx_dEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0EEB2s_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !190
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !190
  %i.f = load i64, ptr %i.a, align 8, !range !7, !noalias !190, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !8, !noalias !190, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !190
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #16, !noalias !190
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !190, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !190
  store i64 %i.i, ptr %0, align 8, !alias.scope !189, !noalias !191
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !189, !noalias !191
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !189, !noalias !191
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8lmMd0ZksV9_6statrs.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i
  %i.p = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull readonly align 8 %i.d, i64 %i.p, i1 false), !noalias !189
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !189, !noalias !191
  br label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8lmMd0ZksV9_6statrs.exit

_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8lmMd0ZksV9_6statrs.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.h = load i64, ptr %0, align 8, !range !7, !alias.scope !200, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !200, !noundef !4
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE10init_frontB1S_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !200, !noundef !4 ; 5 uses
  %.sroa.013.015.i = load ptr, ptr %i.l, align 8, !alias.scope !200, !nonnull !4, !noundef !4 ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.013.017.i.prol = phi ptr [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ], [ %.sroa.013.015.i, %.lr.ph.i.preheader ]
  %.sroa.011.016.i.prol = phi i64 [ %i.q, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.prol, i64 192
  %i.q = add i64 %.sroa.011.016.i.prol, -1        ; 2 uses
  %.sroa.013.0.i.prol = load ptr, ptr %i.p, align 8, !noalias !200, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !194

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.013.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.013.017.i.unr = phi ptr [ %.sroa.013.015.i, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.011.016.i.unr = phi i64 [ %i.n, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.r = icmp ult i64 %i.n, 8
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.sroa.013.0.lcssa.i = phi ptr [ %.sroa.013.015.i, %bb.d ], [ %.sroa.013.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.013.0.i.7, %.lr.ph.i ]
  store i64 1, ptr %0, align 8, !alias.scope !200
  store ptr %.sroa.013.0.lcssa.i, ptr %i.j, align 8, !alias.scope !200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !200
  br label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE10init_frontB1S_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.013.017.i = phi ptr [ %.sroa.013.0.i.7, %.lr.ph.i ], [ %.sroa.013.017.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.011.016.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %.sroa.011.016.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i, i64 192
  %.sroa.013.0.i = load ptr, ptr %i.s, align 8, !noalias !200, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 192
  %.sroa.013.0.i.1 = load ptr, ptr %i.t, align 8, !noalias !200, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.1, i64 192
  %.sroa.013.0.i.2 = load ptr, ptr %i.u, align 8, !noalias !200, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.2, i64 192
  %.sroa.013.0.i.3 = load ptr, ptr %i.v, align 8, !noalias !200, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.3, i64 192
  %.sroa.013.0.i.4 = load ptr, ptr %i.w, align 8, !noalias !200, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.4, i64 192
  %.sroa.013.0.i.5 = load ptr, ptr %i.x, align 8, !noalias !200, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.5, i64 192
  %.sroa.013.0.i.6 = load ptr, ptr %i.y, align 8, !noalias !200, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.6, i64 192
  %i.aa = add i64 %.sroa.011.016.i, -8            ; 2 uses
  %.sroa.013.0.i.7 = load ptr, ptr %i.z, align 8, !noalias !200, !nonnull !4, !noundef !4 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i

_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE10init_frontB1S_.exit: ; preds = %bb.c, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !202
  invoke void @_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeE7next_kvB20_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeETRB1R_RyENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB20_.exit
  %.sroa.3.0 = phi ptr [ %i.aj, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeETRB1R_RyENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB20_.exit ], [ undef, %bb.a ]
end_hunk_1
