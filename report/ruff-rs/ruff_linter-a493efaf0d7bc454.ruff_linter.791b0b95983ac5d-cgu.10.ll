Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.10?download=true
inline.NumInlined: 4756
inline.NumDeleted: 1858
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 57
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2K_16SequenceElements16into_sorted_elts0E0INtNtB21_3vec3VecBZ_EEB2S_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 256, %bb.a ], [ %i.i, %bb.d ]
  %.pn = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.d ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2H_16SequenceElements16into_sorted_elts0E0EB2P_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.pn, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.n, %bb.k ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.g

bb.k:                                             ; preds = %.thread, %bb.c
  %i.n = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.a) #49
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNvMBY_BW_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1430 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cp, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cn, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNvMB15_B13_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.021.0 = phi i8 [ %i.bg, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNvMB15_B13_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNvMB15_B13_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNvMB14_B12_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = tail call noundef range(i8 -1, 2) i8 @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic19ruff_start_ordering(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n), !noalias !1431
  %i.r = icmp eq i8 %i.q, -1                      ; 2 uses
  %.not28.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.r, label %.preheader.i, label %.preheader17.i

.preheader17.i:                                   ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %bb.l
  %.sroa.01.0.i19.i = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader17.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i19.i ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = tail call noundef range(i8 -1, 2) i8 @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic19ruff_start_ordering(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t), !noalias !1431
  %i.v = icmp eq i8 %i.u, -1
  br i1 %i.v, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNvMB14_B12_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.w = add nuw nsw i64 %.sroa.01.0.i19.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNvMB14_B12_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i22.i = phi i64 [ %i.ab, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i22.i ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %i.z = tail call noundef range(i8 -1, 2) i8 @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic19ruff_start_ordering(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y), !noalias !1431
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNvMB14_B12_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit.i

bb.m:                                             ; preds = %.lr.ph23.i
  %i.ab = add nuw nsw i64 %.sroa.01.1.i22.i, 1    ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.ab, %i.m
  br i1 %exitcond31.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNvMB14_B12_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph23.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNvMB14_B12_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph23.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i22.i, %.lr.ph23.i ], [ %.sroa.01.0.i19.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ac)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNvMB14_B12_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7reverseCsEhZmuQNqkz_11ruff_linter.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i7.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i7.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNvMB15_B13_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i8.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNvMB17_B15_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i8.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i8.i, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNvMB15_B13_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7reverseCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, %middle.block, %.preheader17.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i14.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader17.i ], [ %.sroa.0.0.i394650.i, %middle.block ], [ %.sroa.0.0.i394650.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNvMB15_B13_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit

bb.q:                                             ; preds = %bb.n
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %.not.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.aj = phi i64 [ %i.ai, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i394650.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i394650.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i
  %n.vec = and i64 %i.aj, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = xor i64 %index, -1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.an = getelementptr [8 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !1434
  %wide.load56 = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !1434
  %i.ap = getelementptr i8, ptr %i.an, i64 -8     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.an, i64 -24    ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !1435
  %wide.load58 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !1435
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.am, align 8, !alias.scope !1434
  store <2 x i64> %reverse59, ptr %i.ao, align 8, !alias.scope !1434
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.ap, align 8, !alias.scope !1435
  store <2 x ptr> %reverse61, ptr %i.aq, align 8, !alias.scope !1435
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1428

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.ax, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader ] ; 3 uses
  %i.as = xor i64 %.sroa.0.016.i.i.i, -1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.ak, i64 %i.as ; 2 uses
  %i.av = load ptr, ptr %i.at, align 8, !alias.scope !1434, !nonnull !12, !noundef !12
  %i.aw = load i64, ptr %i.au, align 8, !alias.scope !1435
  store i64 %i.aw, ptr %i.at, align 8, !alias.scope !1434
  store ptr %i.av, ptr %i.au, align 8, !alias.scope !1435
  %i.ax = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ax, %i.aj
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, !llvm.loop !1429

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNvMB15_B13_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7reverseCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.ah, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7reverseCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.ay = lshr i64 %.sroa.023.0, 1
  %i.az = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ba = sub nsw i64 %factor, %i.ay
  %i.bb = add nuw nsw i64 %i.az, %factor
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNvMB18_B16_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.02.138 = phi i64 [ %i.bh, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNvMB18_B16_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNvMB18_B16_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bh = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.bj, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNvMB18_B16_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNvMB18_B16_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNvMB18_B16_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bl, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !12 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 5 uses
  %i.bp = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.bq = add nuw i64 %i.bo, %i.bp                ; 5 uses
  %i.br = sub i64 %.sroa.09.0, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.br ; 3 uses
  %i.bt = icmp samesign ugt i64 %i.bq, %3
  %i.bu = trunc i64 %.sroa.023.137 to i1
  %i.bv = or i64 %i.bn, %.sroa.023.137
  %i.bw = trunc i64 %i.bv to i1
  %or.cond3.i = or i1 %i.bt, %i.bw
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.by = shl nuw nsw i64 %i.bq, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNvMB18_B16_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bu, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bz = or i64 %i.bo, 1
  %i.ca = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNvMB17_B15_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %i.bs, i64 noundef range(i64 0, 1152921504606846976) %i.bo, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNvMBZ_BX_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %i.bs, i64 noundef range(i64 0, 1152921504606846976) %i.bq, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.bo, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.ce = shl nuw nsw i64 %i.bq, 1
  %i.cf = or disjoint i64 %i.ce, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNvMB18_B16_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit

bb.x:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bo
  %i.ch = or i64 %i.bp, 1
  %i.ci = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNvMB17_B15_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %i.cg, i64 noundef range(i64 0, 1152921504606846976) %i.bp, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNvMB18_B16_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cf, %bb.w ], [ %i.by, %bb.t ] ; 2 uses
  %i.cm = icmp ugt i64 %i.bh, 1
  br i1 %i.cm, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cn = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.co = lshr i64 %.sroa.018.0, 1
  %i.cp = add nuw i64 %i.co, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cq = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cq, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cr = or i64 %1, 1
  %i.cs = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true)
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 1
  %i.cv = xor i32 %i.cu, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNvMB17_B15_19ruff_start_orderingE0ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2v_ENCINvMNtB10_3fixNtB3s_3Fix10safe_editsABW_j1_E0E0ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1448 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [8 x i8], align 4                 ; 5 uses
  %i.d = alloca [8 x i8], align 4                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 4                 ; 5 uses
  %i.g = alloca [66 x i8], align 1                ; 4 uses
  %i.h = alloca [528 x i8], align 8               ; 4 uses
  %i.i = icmp samesign ult i64 %1, 2
  br i1 %i.i, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = udiv i64 4611686018427387904, %1
  %i.k = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.k, 0
  %i.l = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.j, %i.l         ; 2 uses
  %i.m = icmp samesign ult i64 %1, 4097
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i64 %1, 1
  %i.p = sub nuw nsw i64 %1, %i.o
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.p, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.n, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.de, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dc, %bb.y ] ; 3 uses
  %i.v = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2D_ENCINvMNtB17_3fixNtB3A_3Fix10safe_editsAB13_j1_E0E0ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.021.0 = phi i8 [ %i.bv, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2D_ENCINvMNtB17_3fixNtB3A_3Fix10safe_editsAB13_j1_E0E0ECsEhZmuQNqkz_11ruff_linter.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2D_ENCINvMNtB17_3fixNtB3A_3Fix10safe_editsAB13_j1_E0E0ECsEhZmuQNqkz_11ruff_linter.exit ], [ 1, %bb.f ] ; 2 uses
  %i.w = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting18StringSequenceItemNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCNvMs9_BY_NtBY_28MultilineStringSequenceValue23into_sorted_source_codes_0E0EB16_:bb.a

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting18StringSequenceItemNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCNvMs9_BZ_NtBZ_28MultilineStringSequenceValue23into_sorted_source_codes_0E0EB17_(ptr noalias noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 128102389400760776) %i.ci, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i64 noundef %i.cg, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.cw = shl nuw nsw i64 %i.ci, 1
  %i.cx = or disjoint i64 %i.cw, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting18StringSequenceItemNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs9_B18_NtB18_28MultilineStringSequenceValue23into_sorted_source_codes_0E0EB1g_.exit

bb.x:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw [72 x i8], ptr %i.ck, i64 %i.cg
  %i.cz = or i64 %i.ch, 1
  %i.da = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cz, i1 true)
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 1
  %i.dd = xor i32 %i.dc, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting18StringSequenceItemNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvMs9_B17_NtB17_28MultilineStringSequenceValue23into_sorted_source_codes_0E0EB1f_(ptr noalias noundef nonnull align 8 %i.cy, i64 noundef range(i64 0, 128102389400760776) %i.ch, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i32 noundef %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting18StringSequenceItemNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs9_B18_NtB18_28MultilineStringSequenceValue23into_sorted_source_codes_0E0EB1g_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cx, %bb.w ], [ %i.cq, %bb.t ] ; 2 uses
  %i.de = icmp ugt i64 %i.bz, 1
  br i1 %i.de, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.df = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dg = lshr i64 %.sroa.018.0, 1
  %i.dh = add nuw i64 %i.dg, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.di = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.di, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dj = or i64 %1, 1
  %i.dk = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting18StringSequenceItemNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvMs9_B17_NtB17_28MultilineStringSequenceValue23into_sorted_source_codes_0E0EB1f_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 128102389400760776) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i32 noundef %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2M_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2S_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2151 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ck, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ci, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2U_8SettingsNtNtBa_3fmt7Display3fmt0E0EB30_.exit
  %.sroa.021.0 = phi i8 [ %i.bb, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2U_8SettingsNtNtBa_3fmt7Display3fmt0E0EB30_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2U_8SettingsNtNtBa_3fmt7Display3fmt0E0EB30_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2152)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2T_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2Z_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !2152, !nonnull !12, !align !21, !noundef !12 ; 3 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !2152, !nonnull !12, !align !21, !noundef !12
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB1M_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt0E0B1S_(ptr nonnull %.val10.i, ptr nonnull %.val11.i), !noalias !2153 ; 2 uses
  %.not33.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.q, label %.preheader.i, label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.k
  br i1 %.not33.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not33.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, label %.lr.ph28.i

.lr.ph.i:                                         ; preds = %.preheader22.i, %bb.l
  %.val9.i = phi ptr [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader22.i ]
  %.sroa.01.0.i24.i = phi i64 [ %i.t, %bb.l ], [ 2, %.preheader22.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i24.i
  %.val8.i = load ptr, ptr %i.r, align 8, !alias.scope !2152, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.s = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB1M_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt0E0B1S_(ptr nonnull %.val8.i, ptr nonnull %.val9.i), !noalias !2153
  br i1 %i.s, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2T_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2Z_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %.sroa.01.0.i24.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2T_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2Z_.exit.i, label %.lr.ph.i

.lr.ph28.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi ptr [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i27.i = phi i64 [ %i.w, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i27.i
  %.val.i = load ptr, ptr %i.u, align 8, !alias.scope !2152, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.v = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB1M_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt0E0B1S_(ptr nonnull %.val.i, ptr nonnull %.val7.i), !noalias !2153
  br i1 %i.v, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2T_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2Z_.exit.i

bb.m:                                             ; preds = %.lr.ph28.i
  %i.w = add nuw nsw i64 %.sroa.01.1.i27.i, 1     ; 2 uses
  %exitcond36.not.i = icmp eq i64 %i.w, %i.m
  br i1 %exitcond36.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2T_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2Z_.exit.i, label %.lr.ph28.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2T_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2Z_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph28.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i27.i, %.lr.ph28.i ], [ %.sroa.01.0.i24.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.x = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.x)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2T_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2Z_.exit.i
  br i1 %i.q, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport7reverseCsEhZmuQNqkz_11ruff_linter.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i12.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.y = shl nuw nsw i64 %.sroa.0.0.i12.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2U_8SettingsNtNtBa_3fmt7Display3fmt0E0EB30_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i13.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2W_8SettingsNtNtBa_3fmt7Display3fmt0E0EB32_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i13.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i13.i, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2U_8SettingsNtNtBa_3fmt7Display3fmt0E0EB30_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport7reverseCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, %middle.block, %.preheader22.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i19.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader22.i ], [ %.sroa.0.0.i475458.i, %middle.block ], [ %.sroa.0.0.i475458.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ]
  %i.ab = shl nuw nsw i64 %.sroa.0.0.i19.i, 1
  %i.ac = or disjoint i64 %i.ab, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2U_8SettingsNtNtBa_3fmt7Display3fmt0E0EB30_.exit

bb.q:                                             ; preds = %bb.n
  %i.ad = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.ae = phi i64 [ %i.ad, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i475458.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i475458.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ae, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i
  %n.vec = and i64 %i.ae, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = xor i64 %index, -1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.ai = getelementptr [8 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.ah, align 8, !alias.scope !2156
  %wide.load56 = load <2 x ptr>, ptr %i.aj, align 8, !alias.scope !2156
  %i.ak = getelementptr i8, ptr %i.ai, i64 -8     ; 2 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 -24    ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !2157
  %wide.load58 = load <2 x i64>, ptr %i.al, align 8, !alias.scope !2157
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.ah, align 8, !alias.scope !2156
  store <2 x i64> %reverse59, ptr %i.aj, align 8, !alias.scope !2156
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.ak, align 8, !alias.scope !2157
  store <2 x ptr> %reverse61, ptr %i.al, align 8, !alias.scope !2157
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.as, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader ] ; 3 uses
  %i.an = xor i64 %.sroa.0.016.i.i.i, -1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.af, i64 %i.an ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !alias.scope !2156, !nonnull !12, !align !21, !noundef !12
  %i.ar = load i64, ptr %i.ap, align 8, !alias.scope !2157
  store i64 %i.ar, ptr %i.ao, align 8, !alias.scope !2156
  store ptr %i.aq, ptr %i.ap, align 8, !alias.scope !2157
  %i.as = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.as, %i.ae
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, !llvm.loop !2150

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2U_8SettingsNtNtBa_3fmt7Display3fmt0E0EB30_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport7reverseCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.ac, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport7reverseCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.aa, %bb.p ], [ %i.y, %bb.o ] ; 2 uses
  %i.at = lshr i64 %.sroa.023.0, 1
  %i.au = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.av = sub nsw i64 %factor, %i.at
  %i.aw = add nuw nsw i64 %i.au, %factor
  %i.ax = mul i64 %i.av, %.sroa.0.0
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.az, i1 false)
  %i.bb = trunc nuw nsw i64 %i.ba to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2X_8SettingsNtNtBa_3fmt7Display3fmt0E0EB33_.exit
  %.sroa.02.138 = phi i64 [ %i.bc, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2X_8SettingsNtNtBa_3fmt7Display3fmt0E0EB33_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2X_8SettingsNtNtBa_3fmt7Display3fmt0E0EB33_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bc = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.be, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2X_8SettingsNtNtBa_3fmt7Display3fmt0E0EB33_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2X_8SettingsNtNtBa_3fmt7Display3fmt0E0EB33_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2X_8SettingsNtNtBa_3fmt7Display3fmt0E0EB33_.exit ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bg, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bc
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !12 ; 3 uses
  %i.bj = lshr i64 %i.bi, 1                       ; 5 uses
  %i.bk = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.bl = add nuw i64 %i.bj, %i.bk                ; 5 uses
  %i.bm = sub i64 %.sroa.09.0, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bm ; 3 uses
  %i.bo = icmp samesign ugt i64 %i.bl, %3
  %i.bp = trunc i64 %.sroa.023.137 to i1
  %i.bq = or i64 %i.bi, %.sroa.023.137
  %i.br = trunc i64 %i.bq to i1
  %or.cond3.i = or i1 %i.bo, %i.br
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = trunc i64 %i.bi to i1
  br i1 %i.bs, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bt = shl nuw nsw i64 %i.bl, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2X_8SettingsNtNtBa_3fmt7Display3fmt0E0EB33_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bp, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bu = or i64 %i.bj, 1
  %i.bv = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = xor i32 %i.bx, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2W_8SettingsNtNtBa_3fmt7Display3fmt0E0EB32_(ptr noalias noundef nonnull align 8 %i.bn, i64 noundef range(i64 0, 1152921504606846976) %i.bj, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2N_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2T_(ptr noalias noundef nonnull align 8 %i.bn, i64 noundef range(i64 0, 1152921504606846976) %i.bl, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.bz = shl nuw nsw i64 %i.bl, 1
  %i.ca = or disjoint i64 %i.bz, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2X_8SettingsNtNtBa_3fmt7Display3fmt0E0EB33_.exit

bb.x:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bj
  %i.cc = or i64 %i.bk, 1
  %i.cd = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2W_8SettingsNtNtBa_3fmt7Display3fmt0E0EB32_(ptr noalias noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 1152921504606846976) %i.bk, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2X_8SettingsNtNtBa_3fmt7Display3fmt0E0EB33_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.ca, %bb.w ], [ %i.bt, %bb.t ] ; 2 uses
  %i.ch = icmp ugt i64 %i.bc, 1
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ci = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cj = lshr i64 %.sroa.018.0, 1
  %i.ck = add nuw i64 %i.cj, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cl = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cl, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = or i64 %1, 1
  %i.cn = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2W_8SettingsNtNtBa_3fmt7Display3fmt0E0EB32_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB11_5sliceSBW_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2a_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2g_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2169 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2o_.exit
  %.sroa.021.0 = phi i8 [ %i.ch, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2o_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2o_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2n_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !2170, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !2170, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !2171, !nonnull !12, !noundef !12 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !2171, !noundef !12 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2171, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !2171, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.x)
  %i.y = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.v, i64 %spec.store.select.i.i.i), !noalias !2171 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.t, %i.x
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i, 0      ; 2 uses
  %.not37.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ac, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, label %.lr.ph32.i

.lr.ph.i:                                         ; preds = %.preheader26.i, %bb.l
  %i.ad = phi i64 [ %i.aj, %bb.l ], [ %i.t, %.preheader26.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ah, %bb.l ], [ %i.r, %.preheader26.i ]
  %.sroa.01.0.i28.i = phi i64 [ %i.ap, %bb.l ], [ 2, %.preheader26.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i28.i
  %.val8.i = load ptr, ptr %i.af, align 8, !alias.scope !2170, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !2171, !nonnull !12, !noundef !12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !2171, !noundef !12 ; 3 uses
  %spec.store.select.i.i12.i = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ad)
  %i.ak = tail call i32 @memcmp(ptr nonnull %i.ah, ptr nonnull %i.ae, i64 %spec.store.select.i.i12.i), !noalias !2171 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %i.aj, %i.ad
  %spec.select.i.i13.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i13.i, 0
  br i1 %i.ao, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2n_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ap = add nuw nsw i64 %.sroa.01.0.i28.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2n_.exit.i, label %.lr.ph.i

.lr.ph32.i:                                       ; preds = %.preheader.i, %bb.m
  %i.aq = phi i64 [ %i.aw, %bb.m ], [ %i.t, %.preheader.i ] ; 2 uses
  %i.ar = phi ptr [ %i.au, %bb.m ], [ %i.r, %.preheader.i ]
  %.sroa.01.1.i31.i = phi i64 [ %i.bc, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i31.i
  %.val.i = load ptr, ptr %i.as, align 8, !alias.scope !2170, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !2171, !nonnull !12, !noundef !12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !2171, !noundef !12 ; 3 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.aq)
  %i.ax = tail call i32 @memcmp(ptr nonnull %i.au, ptr nonnull %i.ar, i64 %spec.store.select.i.i14.i), !noalias !2171 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %i.aw, %i.aq
  %spec.select.i.i15.i = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = icmp slt i64 %spec.select.i.i15.i, 0
  br i1 %i.bb, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2n_.exit.i

bb.m:                                             ; preds = %.lr.ph32.i
  %i.bc = add nuw nsw i64 %.sroa.01.1.i31.i, 1    ; 2 uses
  %exitcond40.not.i = icmp eq i64 %i.bc, %i.m
  br i1 %exitcond40.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2n_.exit.i, label %.lr.ph32.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2n_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph32.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i31.i, %.lr.ph32.i ], [ %.sroa.01.0.i28.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.bd = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.bd)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2n_.exit.i
  br i1 %i.ac, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i16.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.be = shl nuw nsw i64 %.sroa.0.0.i16.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2o_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i17.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2q_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i17.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.bf = shl nuw nsw i64 %.sroa.0.0.i17.i, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2o_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, %middle.block, %.preheader26.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i23.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader26.i ], [ %.sroa.0.0.i586569.i, %middle.block ], [ %.sroa.0.0.i586569.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ]
  %i.bh = shl nuw nsw i64 %.sroa.0.0.i23.i, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2o_.exit

bb.q:                                             ; preds = %bb.n
  %i.bj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.bk = phi i64 [ %i.bj, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i586569.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i586569.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bk, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i
  %n.vec = and i64 %i.bk, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = xor i64 %index, -1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !2174
  %wide.load56 = load <2 x ptr>, ptr %i.bp, align 8, !alias.scope !2174
  %i.bq = getelementptr i8, ptr %i.bo, i64 -8     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bo, i64 -24    ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !2175
  %wide.load58 = load <2 x i64>, ptr %i.br, align 8, !alias.scope !2175
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.bn, align 8, !alias.scope !2174
  store <2 x i64> %reverse59, ptr %i.bp, align 8, !alias.scope !2174
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.bq, align 8, !alias.scope !2175
  store <2 x ptr> %reverse61, ptr %i.br, align 8, !alias.scope !2175
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !2167

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.by, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader ] ; 3 uses
  %i.bt = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bl, i64 %i.bt ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !alias.scope !2174, !nonnull !12, !align !21, !noundef !12
  %i.bx = load i64, ptr %i.bv, align 8, !alias.scope !2175
  store i64 %i.bx, ptr %i.bu, align 8, !alias.scope !2174
  store ptr %i.bw, ptr %i.bv, align 8, !alias.scope !2175
  %i.by = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.bk
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, !llvm.loop !2168

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2o_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.bi, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.bg, %bb.p ], [ %i.be, %bb.o ] ; 2 uses
  %i.bz = lshr i64 %.sroa.023.0, 1
  %i.ca = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cb = sub nsw i64 %factor, %i.bz
  %i.cc = add nuw nsw i64 %i.ca, %factor
  %i.cd = mul i64 %i.cb, %.sroa.0.0
  %i.ce = mul i64 %i.cc, %.sroa.0.0
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 false)
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit
  %.sroa.02.138 = phi i64 [ %i.ci, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ci = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.ck, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cm, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ci
  %i.co = load i64, ptr %i.cn, align 8, !noundef !12 ; 3 uses
  %i.cp = lshr i64 %i.co, 1                       ; 5 uses
  %i.cq = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.cr = add nuw i64 %i.cp, %i.cq                ; 5 uses
  %i.cs = sub i64 %.sroa.09.0, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs ; 3 uses
  %i.cu = icmp samesign ugt i64 %i.cr, %3
  %i.cv = trunc i64 %.sroa.023.137 to i1
  %i.cw = or i64 %i.co, %.sroa.023.137
  %i.cx = trunc i64 %i.cw to i1
  %or.cond3.i = or i1 %i.cu, %i.cx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cy = trunc i64 %i.co to i1
  br i1 %i.cy, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cz = shl nuw nsw i64 %i.cr, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cv, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.da = or i64 %i.cp, 1
  %i.db = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2q_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cp, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB12_5sliceSBX_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2b_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2h_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cr, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cp, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.df = shl nuw nsw i64 %i.cr, 1
  %i.dg = or disjoint i64 %i.df, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit

bb.x:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cp
  %i.di = or i64 %i.cq, 1
  %i.dj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2q_(ptr noalias noundef nonnull align 8 %i.dh, i64 noundef range(i64 0, 1152921504606846976) %i.cq, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.dg, %bb.w ], [ %i.cz, %bb.t ] ; 2 uses
  %i.dn = icmp ugt i64 %i.ci, 1
  br i1 %i.dn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dp = lshr i64 %.sroa.018.0, 1
  %i.dq = add nuw i64 %i.dp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dr, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ds = or i64 %1, 1
  %i.dt = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = xor i32 %i.dv, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2q_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB11_5sliceSBW_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2a_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2g_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2187 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2o_.exit
  %.sroa.021.0 = phi i8 [ %i.ch, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2o_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2o_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2188)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts_0E0EB2n_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !2188, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !2188, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !2189, !nonnull !12, !noundef !12 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !2189, !noundef !12 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2189, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !2189, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.x)
  %i.y = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.v, i64 %spec.store.select.i.i.i), !noalias !2189 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.t, %i.x
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i, 0      ; 2 uses
  %.not37.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ac, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, label %.lr.ph32.i

.lr.ph.i:                                         ; preds = %.preheader26.i, %bb.l
  %i.ad = phi i64 [ %i.aj, %bb.l ], [ %i.t, %.preheader26.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ah, %bb.l ], [ %i.r, %.preheader26.i ]
  %.sroa.01.0.i28.i = phi i64 [ %i.ap, %bb.l ], [ 2, %.preheader26.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i28.i
  %.val8.i = load ptr, ptr %i.af, align 8, !alias.scope !2188, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !2189, !nonnull !12, !noundef !12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !2189, !noundef !12 ; 3 uses
  %spec.store.select.i.i12.i = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ad)
  %i.ak = tail call i32 @memcmp(ptr nonnull %i.ah, ptr nonnull %i.ae, i64 %spec.store.select.i.i12.i), !noalias !2189 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %i.aj, %i.ad
  %spec.select.i.i13.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i13.i, 0
  br i1 %i.ao, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts_0E0EB2n_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ap = add nuw nsw i64 %.sroa.01.0.i28.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts_0E0EB2n_.exit.i, label %.lr.ph.i

.lr.ph32.i:                                       ; preds = %.preheader.i, %bb.m
  %i.aq = phi i64 [ %i.aw, %bb.m ], [ %i.t, %.preheader.i ] ; 2 uses
  %i.ar = phi ptr [ %i.au, %bb.m ], [ %i.r, %.preheader.i ]
  %.sroa.01.1.i31.i = phi i64 [ %i.bc, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i31.i
  %.val.i = load ptr, ptr %i.as, align 8, !alias.scope !2188, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !2189, !nonnull !12, !noundef !12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !2189, !noundef !12 ; 3 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.aq)
  %i.ax = tail call i32 @memcmp(ptr nonnull %i.au, ptr nonnull %i.ar, i64 %spec.store.select.i.i14.i), !noalias !2189 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %i.aw, %i.aq
  %spec.select.i.i15.i = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = icmp slt i64 %spec.select.i.i15.i, 0
  br i1 %i.bb, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts_0E0EB2n_.exit.i

bb.m:                                             ; preds = %.lr.ph32.i
  %i.bc = add nuw nsw i64 %.sroa.01.1.i31.i, 1    ; 2 uses
  %exitcond40.not.i = icmp eq i64 %i.bc, %i.m
  br i1 %exitcond40.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts_0E0EB2n_.exit.i, label %.lr.ph32.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts_0E0EB2n_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph32.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i31.i, %.lr.ph32.i ], [ %.sroa.01.0.i28.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.bd = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.bd)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts_0E0EB2n_.exit.i
  br i1 %i.ac, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i16.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.be = shl nuw nsw i64 %.sroa.0.0.i16.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2o_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i17.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i17.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.bf = shl nuw nsw i64 %.sroa.0.0.i17.i, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2o_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, %middle.block, %.preheader26.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i23.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader26.i ], [ %.sroa.0.0.i586569.i, %middle.block ], [ %.sroa.0.0.i586569.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ]
  %i.bh = shl nuw nsw i64 %.sroa.0.0.i23.i, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2o_.exit

bb.q:                                             ; preds = %bb.n
  %i.bj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.bk = phi i64 [ %i.bj, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i586569.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i586569.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bk, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i
  %n.vec = and i64 %i.bk, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = xor i64 %index, -1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !2192
  %wide.load56 = load <2 x ptr>, ptr %i.bp, align 8, !alias.scope !2192
  %i.bq = getelementptr i8, ptr %i.bo, i64 -8     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bo, i64 -24    ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !2193
  %wide.load58 = load <2 x i64>, ptr %i.br, align 8, !alias.scope !2193
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.bn, align 8, !alias.scope !2192
  store <2 x i64> %reverse59, ptr %i.bp, align 8, !alias.scope !2192
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.bq, align 8, !alias.scope !2193
  store <2 x ptr> %reverse61, ptr %i.br, align 8, !alias.scope !2193
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !2185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.by, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader ] ; 3 uses
  %i.bt = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bl, i64 %i.bt ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !alias.scope !2192, !nonnull !12, !align !21, !noundef !12
  %i.bx = load i64, ptr %i.bv, align 8, !alias.scope !2193
  store i64 %i.bx, ptr %i.bu, align 8, !alias.scope !2192
  store ptr %i.bw, ptr %i.bv, align 8, !alias.scope !2193
  %i.by = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.bk
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, !llvm.loop !2186

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2o_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.bi, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.bg, %bb.p ], [ %i.be, %bb.o ] ; 2 uses
  %i.bz = lshr i64 %.sroa.023.0, 1
  %i.ca = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cb = sub nsw i64 %factor, %i.bz
  %i.cc = add nuw nsw i64 %i.ca, %factor
  %i.cd = mul i64 %i.cb, %.sroa.0.0
  %i.ce = mul i64 %i.cc, %.sroa.0.0
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 false)
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit
  %.sroa.02.138 = phi i64 [ %i.ci, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ci = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.ck, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cm, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ci
  %i.co = load i64, ptr %i.cn, align 8, !noundef !12 ; 3 uses
  %i.cp = lshr i64 %i.co, 1                       ; 5 uses
  %i.cq = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.cr = add nuw i64 %i.cp, %i.cq                ; 5 uses
  %i.cs = sub i64 %.sroa.09.0, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs ; 3 uses
  %i.cu = icmp samesign ugt i64 %i.cr, %3
  %i.cv = trunc i64 %.sroa.023.137 to i1
  %i.cw = or i64 %i.co, %.sroa.023.137
  %i.cx = trunc i64 %i.cw to i1
  %or.cond3.i = or i1 %i.cu, %i.cx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cy = trunc i64 %i.co to i1
  br i1 %i.cy, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cz = shl nuw nsw i64 %i.cr, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cv, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.da = or i64 %i.cp, 1
  %i.db = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cp, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB12_5sliceSBX_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2b_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2h_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cr, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cp, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.df = shl nuw nsw i64 %i.cr, 1
  %i.dg = or disjoint i64 %i.df, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit

bb.x:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cp
  %i.di = or i64 %i.cq, 1
  %i.dj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.dh, i64 noundef range(i64 0, 1152921504606846976) %i.cq, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.dg, %bb.w ], [ %i.cz, %bb.t ] ; 2 uses
  %i.dn = icmp ugt i64 %i.ci, 1
  br i1 %i.dn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dp = lshr i64 %.sroa.018.0, 1
  %i.dq = add nuw i64 %i.dp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dr, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ds = or i64 %1, 1
  %i.dt = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = xor i32 %i.dv, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2q_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB11_5sliceSBW_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2a_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2g_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2205 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2o_.exit
  %.sroa.021.0 = phi i8 [ %i.ch, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2o_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2o_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts0_0E0EB2n_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !2206, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !2206, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !2207, !nonnull !12, !noundef !12 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !2207, !noundef !12 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2207, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !2207, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.x)
  %i.y = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.v, i64 %spec.store.select.i.i.i), !noalias !2207 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.t, %i.x
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i, 0      ; 2 uses
  %.not37.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ac, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, label %.lr.ph32.i

.lr.ph.i:                                         ; preds = %.preheader26.i, %bb.l
  %i.ad = phi i64 [ %i.aj, %bb.l ], [ %i.t, %.preheader26.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ah, %bb.l ], [ %i.r, %.preheader26.i ]
  %.sroa.01.0.i28.i = phi i64 [ %i.ap, %bb.l ], [ 2, %.preheader26.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i28.i
  %.val8.i = load ptr, ptr %i.af, align 8, !alias.scope !2206, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !2207, !nonnull !12, !noundef !12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !2207, !noundef !12 ; 3 uses
  %spec.store.select.i.i12.i = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ad)
  %i.ak = tail call i32 @memcmp(ptr nonnull %i.ah, ptr nonnull %i.ae, i64 %spec.store.select.i.i12.i), !noalias !2207 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %i.aj, %i.ad
  %spec.select.i.i13.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i13.i, 0
  br i1 %i.ao, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts0_0E0EB2n_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ap = add nuw nsw i64 %.sroa.01.0.i28.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts0_0E0EB2n_.exit.i, label %.lr.ph.i

.lr.ph32.i:                                       ; preds = %.preheader.i, %bb.m
  %i.aq = phi i64 [ %i.aw, %bb.m ], [ %i.t, %.preheader.i ] ; 2 uses
  %i.ar = phi ptr [ %i.au, %bb.m ], [ %i.r, %.preheader.i ]
  %.sroa.01.1.i31.i = phi i64 [ %i.bc, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i31.i
  %.val.i = load ptr, ptr %i.as, align 8, !alias.scope !2206, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !2207, !nonnull !12, !noundef !12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !2207, !noundef !12 ; 3 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.aq)
  %i.ax = tail call i32 @memcmp(ptr nonnull %i.au, ptr nonnull %i.ar, i64 %spec.store.select.i.i14.i), !noalias !2207 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %i.aw, %i.aq
  %spec.select.i.i15.i = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = icmp slt i64 %spec.select.i.i15.i, 0
  br i1 %i.bb, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts0_0E0EB2n_.exit.i

bb.m:                                             ; preds = %.lr.ph32.i
  %i.bc = add nuw nsw i64 %.sroa.01.1.i31.i, 1    ; 2 uses
  %exitcond40.not.i = icmp eq i64 %i.bc, %i.m
  br i1 %exitcond40.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts0_0E0EB2n_.exit.i, label %.lr.ph32.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts0_0E0EB2n_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph32.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i31.i, %.lr.ph32.i ], [ %.sroa.01.0.i28.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.bd = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.bd)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts0_0E0EB2n_.exit.i
  br i1 %i.ac, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i16.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.be = shl nuw nsw i64 %.sroa.0.0.i16.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2o_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i17.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i17.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.bf = shl nuw nsw i64 %.sroa.0.0.i17.i, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2o_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, %middle.block, %.preheader26.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i23.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader26.i ], [ %.sroa.0.0.i586569.i, %middle.block ], [ %.sroa.0.0.i586569.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ]
  %i.bh = shl nuw nsw i64 %.sroa.0.0.i23.i, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2o_.exit

bb.q:                                             ; preds = %bb.n
  %i.bj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2209)
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.bk = phi i64 [ %i.bj, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i586569.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i586569.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bk, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i
  %n.vec = and i64 %i.bk, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = xor i64 %index, -1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !2210
  %wide.load56 = load <2 x ptr>, ptr %i.bp, align 8, !alias.scope !2210
  %i.bq = getelementptr i8, ptr %i.bo, i64 -8     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bo, i64 -24    ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !2211
  %wide.load58 = load <2 x i64>, ptr %i.br, align 8, !alias.scope !2211
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.bn, align 8, !alias.scope !2210
  store <2 x i64> %reverse59, ptr %i.bp, align 8, !alias.scope !2210
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.bq, align 8, !alias.scope !2211
  store <2 x ptr> %reverse61, ptr %i.br, align 8, !alias.scope !2211
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !2203

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.by, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader ] ; 3 uses
  %i.bt = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bl, i64 %i.bt ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !alias.scope !2210, !nonnull !12, !align !21, !noundef !12
  %i.bx = load i64, ptr %i.bv, align 8, !alias.scope !2211
  store i64 %i.bx, ptr %i.bu, align 8, !alias.scope !2210
  store ptr %i.bw, ptr %i.bv, align 8, !alias.scope !2211
  %i.by = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.bk
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, !llvm.loop !2204

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2o_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.bi, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.bg, %bb.p ], [ %i.be, %bb.o ] ; 2 uses
  %i.bz = lshr i64 %.sroa.023.0, 1
  %i.ca = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cb = sub nsw i64 %factor, %i.bz
  %i.cc = add nuw nsw i64 %i.ca, %factor
  %i.cd = mul i64 %i.cb, %.sroa.0.0
  %i.ce = mul i64 %i.cc, %.sroa.0.0
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 false)
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit
  %.sroa.02.138 = phi i64 [ %i.ci, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ci = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.ck, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cm, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ci
  %i.co = load i64, ptr %i.cn, align 8, !noundef !12 ; 3 uses
  %i.cp = lshr i64 %i.co, 1                       ; 5 uses
  %i.cq = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.cr = add nuw i64 %i.cp, %i.cq                ; 5 uses
  %i.cs = sub i64 %.sroa.09.0, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs ; 3 uses
  %i.cu = icmp samesign ugt i64 %i.cr, %3
  %i.cv = trunc i64 %.sroa.023.137 to i1
  %i.cw = or i64 %i.co, %.sroa.023.137
  %i.cx = trunc i64 %i.cw to i1
  %or.cond3.i = or i1 %i.cu, %i.cx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cy = trunc i64 %i.co to i1
  br i1 %i.cy, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cz = shl nuw nsw i64 %i.cr, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cv, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.da = or i64 %i.cp, 1
  %i.db = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cp, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB12_5sliceSBX_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2b_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2h_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cr, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cp, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.df = shl nuw nsw i64 %i.cr, 1
  %i.dg = or disjoint i64 %i.df, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit

bb.x:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cp
  %i.di = or i64 %i.cq, 1
  %i.dj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.dh, i64 noundef range(i64 0, 1152921504606846976) %i.cq, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.dg, %bb.w ], [ %i.cz, %bb.t ] ; 2 uses
  %i.dn = icmp ugt i64 %i.ci, 1
  br i1 %i.dn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dp = lshr i64 %.sroa.018.0, 1
  %i.dq = add nuw i64 %i.dp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dr, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ds = or i64 %1, 1
  %i.dt = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = xor i32 %i.dv, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2q_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB11_5sliceSBW_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2a_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2g_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2223 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2o_.exit
  %.sroa.021.0 = phi i8 [ %i.ch, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2o_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2o_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts1_0E0EB2n_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !2224, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !2224, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !2225, !nonnull !12, !noundef !12 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !2225, !noundef !12 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2225, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !2225, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.x)
  %i.y = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.v, i64 %spec.store.select.i.i.i), !noalias !2225 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.t, %i.x
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i, 0      ; 2 uses
  %.not37.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ac, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, label %.lr.ph32.i

.lr.ph.i:                                         ; preds = %.preheader26.i, %bb.l
  %i.ad = phi i64 [ %i.aj, %bb.l ], [ %i.t, %.preheader26.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ah, %bb.l ], [ %i.r, %.preheader26.i ]
  %.sroa.01.0.i28.i = phi i64 [ %i.ap, %bb.l ], [ 2, %.preheader26.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i28.i
  %.val8.i = load ptr, ptr %i.af, align 8, !alias.scope !2224, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !2225, !nonnull !12, !noundef !12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !2225, !noundef !12 ; 3 uses
  %spec.store.select.i.i12.i = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ad)
  %i.ak = tail call i32 @memcmp(ptr nonnull %i.ah, ptr nonnull %i.ae, i64 %spec.store.select.i.i12.i), !noalias !2225 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %i.aj, %i.ad
  %spec.select.i.i13.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i13.i, 0
  br i1 %i.ao, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts1_0E0EB2n_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ap = add nuw nsw i64 %.sroa.01.0.i28.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts1_0E0EB2n_.exit.i, label %.lr.ph.i

.lr.ph32.i:                                       ; preds = %.preheader.i, %bb.m
  %i.aq = phi i64 [ %i.aw, %bb.m ], [ %i.t, %.preheader.i ] ; 2 uses
  %i.ar = phi ptr [ %i.au, %bb.m ], [ %i.r, %.preheader.i ]
  %.sroa.01.1.i31.i = phi i64 [ %i.bc, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i31.i
  %.val.i = load ptr, ptr %i.as, align 8, !alias.scope !2224, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !2225, !nonnull !12, !noundef !12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !2225, !noundef !12 ; 3 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.aq)
  %i.ax = tail call i32 @memcmp(ptr nonnull %i.au, ptr nonnull %i.ar, i64 %spec.store.select.i.i14.i), !noalias !2225 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %i.aw, %i.aq
  %spec.select.i.i15.i = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = icmp slt i64 %spec.select.i.i15.i, 0
  br i1 %i.bb, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts1_0E0EB2n_.exit.i

bb.m:                                             ; preds = %.lr.ph32.i
  %i.bc = add nuw nsw i64 %.sroa.01.1.i31.i, 1    ; 2 uses
  %exitcond40.not.i = icmp eq i64 %i.bc, %i.m
  br i1 %exitcond40.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts1_0E0EB2n_.exit.i, label %.lr.ph32.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts1_0E0EB2n_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph32.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i31.i, %.lr.ph32.i ], [ %.sroa.01.0.i28.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.bd = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.bd)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts1_0E0EB2n_.exit.i
  br i1 %i.ac, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i16.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.be = shl nuw nsw i64 %.sroa.0.0.i16.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2o_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i17.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i17.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.bf = shl nuw nsw i64 %.sroa.0.0.i17.i, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2o_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, %middle.block, %.preheader26.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i23.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader26.i ], [ %.sroa.0.0.i586569.i, %middle.block ], [ %.sroa.0.0.i586569.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ]
  %i.bh = shl nuw nsw i64 %.sroa.0.0.i23.i, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2o_.exit

bb.q:                                             ; preds = %bb.n
  %i.bj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.bk = phi i64 [ %i.bj, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i586569.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i586569.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bk, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i
  %n.vec = and i64 %i.bk, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = xor i64 %index, -1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !2228
  %wide.load56 = load <2 x ptr>, ptr %i.bp, align 8, !alias.scope !2228
  %i.bq = getelementptr i8, ptr %i.bo, i64 -8     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bo, i64 -24    ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !2229
  %wide.load58 = load <2 x i64>, ptr %i.br, align 8, !alias.scope !2229
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.bn, align 8, !alias.scope !2228
  store <2 x i64> %reverse59, ptr %i.bp, align 8, !alias.scope !2228
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.bq, align 8, !alias.scope !2229
  store <2 x ptr> %reverse61, ptr %i.br, align 8, !alias.scope !2229
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !2221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.by, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader ] ; 3 uses
  %i.bt = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bl, i64 %i.bt ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !alias.scope !2228, !nonnull !12, !align !21, !noundef !12
  %i.bx = load i64, ptr %i.bv, align 8, !alias.scope !2229
  store i64 %i.bx, ptr %i.bu, align 8, !alias.scope !2228
  store ptr %i.bw, ptr %i.bv, align 8, !alias.scope !2229
  %i.by = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.bk
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, !llvm.loop !2222

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2o_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.bi, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.bg, %bb.p ], [ %i.be, %bb.o ] ; 2 uses
  %i.bz = lshr i64 %.sroa.023.0, 1
  %i.ca = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cb = sub nsw i64 %factor, %i.bz
  %i.cc = add nuw nsw i64 %i.ca, %factor
  %i.cd = mul i64 %i.cb, %.sroa.0.0
  %i.ce = mul i64 %i.cc, %.sroa.0.0
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 false)
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2r_.exit
  %.sroa.02.138 = phi i64 [ %i.ci, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2r_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2r_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ci = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.ck, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2r_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2r_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2r_.exit ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cm, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ci
  %i.co = load i64, ptr %i.cn, align 8, !noundef !12 ; 3 uses
  %i.cp = lshr i64 %i.co, 1                       ; 5 uses
  %i.cq = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.cr = add nuw i64 %i.cp, %i.cq                ; 5 uses
  %i.cs = sub i64 %.sroa.09.0, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs ; 3 uses
  %i.cu = icmp samesign ugt i64 %i.cr, %3
  %i.cv = trunc i64 %.sroa.023.137 to i1
  %i.cw = or i64 %i.co, %.sroa.023.137
  %i.cx = trunc i64 %i.cw to i1
  %or.cond3.i = or i1 %i.cu, %i.cx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cy = trunc i64 %i.co to i1
  br i1 %i.cy, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cz = shl nuw nsw i64 %i.cr, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2r_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cv, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.da = or i64 %i.cp, 1
  %i.db = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cp, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB12_5sliceSBX_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2b_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2h_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cr, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cp, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.df = shl nuw nsw i64 %i.cr, 1
  %i.dg = or disjoint i64 %i.df, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2r_.exit

bb.x:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cp
  %i.di = or i64 %i.cq, 1
  %i.dj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.dh, i64 noundef range(i64 0, 1152921504606846976) %i.cq, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2r_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.dg, %bb.w ], [ %i.cz, %bb.t ] ; 2 uses
  %i.dn = icmp ugt i64 %i.ci, 1
  br i1 %i.dn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dp = lshr i64 %.sroa.018.0, 1
  %i.dq = add nuw i64 %i.dp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dr, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ds = or i64 %1, 1
  %i.dt = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = xor i32 %i.dv, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts1_0E0EB2q_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB11_5sliceSBW_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2a_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2g_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2241 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2o_.exit
  %.sroa.021.0 = phi i8 [ %i.ch, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2o_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2o_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts2_0E0EB2n_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !2242, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !2242, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !2243, !nonnull !12, !noundef !12 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !2243, !noundef !12 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2243, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !2243, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.x)
  %i.y = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.v, i64 %spec.store.select.i.i.i), !noalias !2243 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.t, %i.x
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i, 0      ; 2 uses
  %.not37.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ac, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, label %.lr.ph32.i

.lr.ph.i:                                         ; preds = %.preheader26.i, %bb.l
  %i.ad = phi i64 [ %i.aj, %bb.l ], [ %i.t, %.preheader26.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ah, %bb.l ], [ %i.r, %.preheader26.i ]
  %.sroa.01.0.i28.i = phi i64 [ %i.ap, %bb.l ], [ 2, %.preheader26.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i28.i
  %.val8.i = load ptr, ptr %i.af, align 8, !alias.scope !2242, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !2243, !nonnull !12, !noundef !12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !2243, !noundef !12 ; 3 uses
  %spec.store.select.i.i12.i = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ad)
  %i.ak = tail call i32 @memcmp(ptr nonnull %i.ah, ptr nonnull %i.ae, i64 %spec.store.select.i.i12.i), !noalias !2243 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %i.aj, %i.ad
  %spec.select.i.i13.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i13.i, 0
  br i1 %i.ao, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts2_0E0EB2n_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ap = add nuw nsw i64 %.sroa.01.0.i28.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts2_0E0EB2n_.exit.i, label %.lr.ph.i

.lr.ph32.i:                                       ; preds = %.preheader.i, %bb.m
  %i.aq = phi i64 [ %i.aw, %bb.m ], [ %i.t, %.preheader.i ] ; 2 uses
  %i.ar = phi ptr [ %i.au, %bb.m ], [ %i.r, %.preheader.i ]
  %.sroa.01.1.i31.i = phi i64 [ %i.bc, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i31.i
  %.val.i = load ptr, ptr %i.as, align 8, !alias.scope !2242, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !2243, !nonnull !12, !noundef !12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !2243, !noundef !12 ; 3 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.aq)
  %i.ax = tail call i32 @memcmp(ptr nonnull %i.au, ptr nonnull %i.ar, i64 %spec.store.select.i.i14.i), !noalias !2243 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %i.aw, %i.aq
  %spec.select.i.i15.i = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = icmp slt i64 %spec.select.i.i15.i, 0
  br i1 %i.bb, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts2_0E0EB2n_.exit.i

bb.m:                                             ; preds = %.lr.ph32.i
  %i.bc = add nuw nsw i64 %.sroa.01.1.i31.i, 1    ; 2 uses
  %exitcond40.not.i = icmp eq i64 %i.bc, %i.m
  br i1 %exitcond40.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts2_0E0EB2n_.exit.i, label %.lr.ph32.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts2_0E0EB2n_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph32.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i31.i, %.lr.ph32.i ], [ %.sroa.01.0.i28.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.bd = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.bd)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts2_0E0EB2n_.exit.i
  br i1 %i.ac, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i16.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.be = shl nuw nsw i64 %.sroa.0.0.i16.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2o_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i17.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i17.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.bf = shl nuw nsw i64 %.sroa.0.0.i17.i, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2o_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, %middle.block, %.preheader26.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i23.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader26.i ], [ %.sroa.0.0.i586569.i, %middle.block ], [ %.sroa.0.0.i586569.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ]
  %i.bh = shl nuw nsw i64 %.sroa.0.0.i23.i, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2o_.exit

bb.q:                                             ; preds = %bb.n
  %i.bj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2245)
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.bk = phi i64 [ %i.bj, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i586569.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i586569.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bk, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i
  %n.vec = and i64 %i.bk, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = xor i64 %index, -1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !2246
  %wide.load56 = load <2 x ptr>, ptr %i.bp, align 8, !alias.scope !2246
  %i.bq = getelementptr i8, ptr %i.bo, i64 -8     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bo, i64 -24    ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !2247
  %wide.load58 = load <2 x i64>, ptr %i.br, align 8, !alias.scope !2247
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.bn, align 8, !alias.scope !2246
  store <2 x i64> %reverse59, ptr %i.bp, align 8, !alias.scope !2246
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.bq, align 8, !alias.scope !2247
  store <2 x ptr> %reverse61, ptr %i.br, align 8, !alias.scope !2247
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !2239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.by, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader ] ; 3 uses
  %i.bt = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bl, i64 %i.bt ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !alias.scope !2246, !nonnull !12, !align !21, !noundef !12
  %i.bx = load i64, ptr %i.bv, align 8, !alias.scope !2247
  store i64 %i.bx, ptr %i.bu, align 8, !alias.scope !2246
  store ptr %i.bw, ptr %i.bv, align 8, !alias.scope !2247
  %i.by = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.bk
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, !llvm.loop !2240

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2o_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.bi, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.bg, %bb.p ], [ %i.be, %bb.o ] ; 2 uses
  %i.bz = lshr i64 %.sroa.023.0, 1
  %i.ca = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cb = sub nsw i64 %factor, %i.bz
  %i.cc = add nuw nsw i64 %i.ca, %factor
  %i.cd = mul i64 %i.cb, %.sroa.0.0
  %i.ce = mul i64 %i.cc, %.sroa.0.0
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 false)
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2r_.exit
  %.sroa.02.138 = phi i64 [ %i.ci, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2r_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2r_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ci = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.ck, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2r_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2r_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2r_.exit ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cm, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ci
  %i.co = load i64, ptr %i.cn, align 8, !noundef !12 ; 3 uses
  %i.cp = lshr i64 %i.co, 1                       ; 5 uses
  %i.cq = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.cr = add nuw i64 %i.cp, %i.cq                ; 5 uses
  %i.cs = sub i64 %.sroa.09.0, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs ; 3 uses
  %i.cu = icmp samesign ugt i64 %i.cr, %3
  %i.cv = trunc i64 %.sroa.023.137 to i1
  %i.cw = or i64 %i.co, %.sroa.023.137
  %i.cx = trunc i64 %i.cw to i1
  %or.cond3.i = or i1 %i.cu, %i.cx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cy = trunc i64 %i.co to i1
  br i1 %i.cy, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cz = shl nuw nsw i64 %i.cr, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2r_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cv, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.da = or i64 %i.cp, 1
  %i.db = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cp, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB12_5sliceSBX_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2b_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2h_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cr, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cp, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.df = shl nuw nsw i64 %i.cr, 1
  %i.dg = or disjoint i64 %i.df, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2r_.exit

bb.x:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cp
  %i.di = or i64 %i.cq, 1
  %i.dj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.dh, i64 noundef range(i64 0, 1152921504606846976) %i.cq, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2r_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.dg, %bb.w ], [ %i.cz, %bb.t ] ; 2 uses
  %i.dn = icmp ugt i64 %i.ci, 1
  br i1 %i.dn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dp = lshr i64 %.sroa.018.0, 1
  %i.dq = add nuw i64 %i.dp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dr, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ds = or i64 %1, 1
  %i.dt = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = xor i32 %i.dv, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts2_0E0EB2q_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB11_5sliceSBW_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2a_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2g_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2259 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2o_.exit
  %.sroa.021.0 = phi i8 [ %i.ch, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2o_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2o_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2260)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts3_0E0EB2n_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !2260, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !2260, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !2261, !nonnull !12, !noundef !12 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !2261, !noundef !12 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2261, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !2261, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.x)
  %i.y = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.v, i64 %spec.store.select.i.i.i), !noalias !2261 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.t, %i.x
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i, 0      ; 2 uses
  %.not37.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ac, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, label %.lr.ph32.i

.lr.ph.i:                                         ; preds = %.preheader26.i, %bb.l
  %i.ad = phi i64 [ %i.aj, %bb.l ], [ %i.t, %.preheader26.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ah, %bb.l ], [ %i.r, %.preheader26.i ]
  %.sroa.01.0.i28.i = phi i64 [ %i.ap, %bb.l ], [ 2, %.preheader26.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i28.i
  %.val8.i = load ptr, ptr %i.af, align 8, !alias.scope !2260, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !2261, !nonnull !12, !noundef !12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !2261, !noundef !12 ; 3 uses
  %spec.store.select.i.i12.i = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ad)
  %i.ak = tail call i32 @memcmp(ptr nonnull %i.ah, ptr nonnull %i.ae, i64 %spec.store.select.i.i12.i), !noalias !2261 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %i.aj, %i.ad
  %spec.select.i.i13.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i13.i, 0
  br i1 %i.ao, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts3_0E0EB2n_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ap = add nuw nsw i64 %.sroa.01.0.i28.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts3_0E0EB2n_.exit.i, label %.lr.ph.i

.lr.ph32.i:                                       ; preds = %.preheader.i, %bb.m
  %i.aq = phi i64 [ %i.aw, %bb.m ], [ %i.t, %.preheader.i ] ; 2 uses
  %i.ar = phi ptr [ %i.au, %bb.m ], [ %i.r, %.preheader.i ]
  %.sroa.01.1.i31.i = phi i64 [ %i.bc, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i31.i
  %.val.i = load ptr, ptr %i.as, align 8, !alias.scope !2260, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !2261, !nonnull !12, !noundef !12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !2261, !noundef !12 ; 3 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.aq)
  %i.ax = tail call i32 @memcmp(ptr nonnull %i.au, ptr nonnull %i.ar, i64 %spec.store.select.i.i14.i), !noalias !2261 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %i.aw, %i.aq
  %spec.select.i.i15.i = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = icmp slt i64 %spec.select.i.i15.i, 0
  br i1 %i.bb, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts3_0E0EB2n_.exit.i

bb.m:                                             ; preds = %.lr.ph32.i
  %i.bc = add nuw nsw i64 %.sroa.01.1.i31.i, 1    ; 2 uses
  %exitcond40.not.i = icmp eq i64 %i.bc, %i.m
  br i1 %exitcond40.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts3_0E0EB2n_.exit.i, label %.lr.ph32.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts3_0E0EB2n_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph32.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i31.i, %.lr.ph32.i ], [ %.sroa.01.0.i28.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.bd = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.bd)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts3_0E0EB2n_.exit.i
  br i1 %i.ac, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i16.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.be = shl nuw nsw i64 %.sroa.0.0.i16.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2o_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i17.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i17.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.bf = shl nuw nsw i64 %.sroa.0.0.i17.i, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2o_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, %middle.block, %.preheader26.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i23.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader26.i ], [ %.sroa.0.0.i586569.i, %middle.block ], [ %.sroa.0.0.i586569.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ]
  %i.bh = shl nuw nsw i64 %.sroa.0.0.i23.i, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2o_.exit

bb.q:                                             ; preds = %bb.n
  %i.bj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2263)
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.bk = phi i64 [ %i.bj, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i586569.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i586569.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bk, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i
  %n.vec = and i64 %i.bk, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = xor i64 %index, -1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !2264
  %wide.load56 = load <2 x ptr>, ptr %i.bp, align 8, !alias.scope !2264
  %i.bq = getelementptr i8, ptr %i.bo, i64 -8     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bo, i64 -24    ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !2265
  %wide.load58 = load <2 x i64>, ptr %i.br, align 8, !alias.scope !2265
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.bn, align 8, !alias.scope !2264
  store <2 x i64> %reverse59, ptr %i.bp, align 8, !alias.scope !2264
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.bq, align 8, !alias.scope !2265
  store <2 x ptr> %reverse61, ptr %i.br, align 8, !alias.scope !2265
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !2257

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.by, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader ] ; 3 uses
  %i.bt = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bl, i64 %i.bt ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !alias.scope !2264, !nonnull !12, !align !21, !noundef !12
  %i.bx = load i64, ptr %i.bv, align 8, !alias.scope !2265
  store i64 %i.bx, ptr %i.bu, align 8, !alias.scope !2264
  store ptr %i.bw, ptr %i.bv, align 8, !alias.scope !2265
  %i.by = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.bk
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, !llvm.loop !2258

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2o_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.bi, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.bg, %bb.p ], [ %i.be, %bb.o ] ; 2 uses
  %i.bz = lshr i64 %.sroa.023.0, 1
  %i.ca = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cb = sub nsw i64 %factor, %i.bz
  %i.cc = add nuw nsw i64 %i.ca, %factor
  %i.cd = mul i64 %i.cb, %.sroa.0.0
  %i.ce = mul i64 %i.cc, %.sroa.0.0
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 false)
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2r_.exit
  %.sroa.02.138 = phi i64 [ %i.ci, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2r_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2r_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ci = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.ck, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2r_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2r_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2r_.exit ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cm, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ci
  %i.co = load i64, ptr %i.cn, align 8, !noundef !12 ; 3 uses
  %i.cp = lshr i64 %i.co, 1                       ; 5 uses
  %i.cq = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.cr = add nuw i64 %i.cp, %i.cq                ; 5 uses
  %i.cs = sub i64 %.sroa.09.0, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs ; 3 uses
  %i.cu = icmp samesign ugt i64 %i.cr, %3
  %i.cv = trunc i64 %.sroa.023.137 to i1
  %i.cw = or i64 %i.co, %.sroa.023.137
  %i.cx = trunc i64 %i.cw to i1
  %or.cond3.i = or i1 %i.cu, %i.cx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cy = trunc i64 %i.co to i1
  br i1 %i.cy, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cz = shl nuw nsw i64 %i.cr, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2r_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cv, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.da = or i64 %i.cp, 1
  %i.db = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cp, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB12_5sliceSBX_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2b_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2h_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cr, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cp, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.df = shl nuw nsw i64 %i.cr, 1
  %i.dg = or disjoint i64 %i.df, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2r_.exit

bb.x:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cp
  %i.di = or i64 %i.cq, 1
  %i.dj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.dh, i64 noundef range(i64 0, 1152921504606846976) %i.cq, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2r_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.dg, %bb.w ], [ %i.cz, %bb.t ] ; 2 uses
  %i.dn = icmp ugt i64 %i.ci, 1
  br i1 %i.dn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dp = lshr i64 %.sroa.018.0, 1
  %i.dq = add nuw i64 %i.dp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dr, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ds = or i64 %1, 1
  %i.dt = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = xor i32 %i.dv, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts3_0E0EB2q_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB11_5sliceSBW_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2a_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2g_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2277 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2o_.exit
  %.sroa.021.0 = phi i8 [ %i.ch, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2o_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2o_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2278)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts_0E0EB2n_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !2278, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !2278, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !2279, !nonnull !12, !noundef !12 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !2279, !noundef !12 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2279, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !2279, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.x)
  %i.y = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.v, i64 %spec.store.select.i.i.i), !noalias !2279 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.t, %i.x
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i, 0      ; 2 uses
  %.not37.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ac, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, label %.lr.ph32.i

.lr.ph.i:                                         ; preds = %.preheader26.i, %bb.l
  %i.ad = phi i64 [ %i.aj, %bb.l ], [ %i.t, %.preheader26.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ah, %bb.l ], [ %i.r, %.preheader26.i ]
  %.sroa.01.0.i28.i = phi i64 [ %i.ap, %bb.l ], [ 2, %.preheader26.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i28.i
  %.val8.i = load ptr, ptr %i.af, align 8, !alias.scope !2278, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !2279, !nonnull !12, !noundef !12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !2279, !noundef !12 ; 3 uses
  %spec.store.select.i.i12.i = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ad)
  %i.ak = tail call i32 @memcmp(ptr nonnull %i.ah, ptr nonnull %i.ae, i64 %spec.store.select.i.i12.i), !noalias !2279 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %i.aj, %i.ad
  %spec.select.i.i13.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i13.i, 0
  br i1 %i.ao, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts_0E0EB2n_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ap = add nuw nsw i64 %.sroa.01.0.i28.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts_0E0EB2n_.exit.i, label %.lr.ph.i

.lr.ph32.i:                                       ; preds = %.preheader.i, %bb.m
  %i.aq = phi i64 [ %i.aw, %bb.m ], [ %i.t, %.preheader.i ] ; 2 uses
  %i.ar = phi ptr [ %i.au, %bb.m ], [ %i.r, %.preheader.i ]
  %.sroa.01.1.i31.i = phi i64 [ %i.bc, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i31.i
  %.val.i = load ptr, ptr %i.as, align 8, !alias.scope !2278, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !2279, !nonnull !12, !noundef !12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !2279, !noundef !12 ; 3 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.aq)
  %i.ax = tail call i32 @memcmp(ptr nonnull %i.au, ptr nonnull %i.ar, i64 %spec.store.select.i.i14.i), !noalias !2279 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %i.aw, %i.aq
  %spec.select.i.i15.i = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = icmp slt i64 %spec.select.i.i15.i, 0
  br i1 %i.bb, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts_0E0EB2n_.exit.i

bb.m:                                             ; preds = %.lr.ph32.i
  %i.bc = add nuw nsw i64 %.sroa.01.1.i31.i, 1    ; 2 uses
  %exitcond40.not.i = icmp eq i64 %i.bc, %i.m
  br i1 %exitcond40.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts_0E0EB2n_.exit.i, label %.lr.ph32.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts_0E0EB2n_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph32.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i31.i, %.lr.ph32.i ], [ %.sroa.01.0.i28.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.bd = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.bd)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts_0E0EB2n_.exit.i
  br i1 %i.ac, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i16.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.be = shl nuw nsw i64 %.sroa.0.0.i16.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2o_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i17.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i17.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.bf = shl nuw nsw i64 %.sroa.0.0.i17.i, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2o_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, %middle.block, %.preheader26.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i23.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader26.i ], [ %.sroa.0.0.i586569.i, %middle.block ], [ %.sroa.0.0.i586569.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ]
  %i.bh = shl nuw nsw i64 %.sroa.0.0.i23.i, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2o_.exit

bb.q:                                             ; preds = %bb.n
  %i.bj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2281)
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.bk = phi i64 [ %i.bj, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i586569.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i586569.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bk, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i
  %n.vec = and i64 %i.bk, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = xor i64 %index, -1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !2282
  %wide.load56 = load <2 x ptr>, ptr %i.bp, align 8, !alias.scope !2282
  %i.bq = getelementptr i8, ptr %i.bo, i64 -8     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bo, i64 -24    ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !2283
  %wide.load58 = load <2 x i64>, ptr %i.br, align 8, !alias.scope !2283
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.bn, align 8, !alias.scope !2282
  store <2 x i64> %reverse59, ptr %i.bp, align 8, !alias.scope !2282
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.bq, align 8, !alias.scope !2283
  store <2 x ptr> %reverse61, ptr %i.br, align 8, !alias.scope !2283
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !2275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.by, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader ] ; 3 uses
  %i.bt = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bl, i64 %i.bt ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !alias.scope !2282, !nonnull !12, !align !21, !noundef !12
  %i.bx = load i64, ptr %i.bv, align 8, !alias.scope !2283
  store i64 %i.bx, ptr %i.bu, align 8, !alias.scope !2282
  store ptr %i.bw, ptr %i.bv, align 8, !alias.scope !2283
  %i.by = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.bk
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, !llvm.loop !2276

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2o_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.bi, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.bg, %bb.p ], [ %i.be, %bb.o ] ; 2 uses
  %i.bz = lshr i64 %.sroa.023.0, 1
  %i.ca = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cb = sub nsw i64 %factor, %i.bz
  %i.cc = add nuw nsw i64 %i.ca, %factor
  %i.cd = mul i64 %i.cb, %.sroa.0.0
  %i.ce = mul i64 %i.cc, %.sroa.0.0
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 false)
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit
  %.sroa.02.138 = phi i64 [ %i.ci, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ci = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.ck, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cm, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ci
  %i.co = load i64, ptr %i.cn, align 8, !noundef !12 ; 3 uses
  %i.cp = lshr i64 %i.co, 1                       ; 5 uses
  %i.cq = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.cr = add nuw i64 %i.cp, %i.cq                ; 5 uses
  %i.cs = sub i64 %.sroa.09.0, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs ; 3 uses
  %i.cu = icmp samesign ugt i64 %i.cr, %3
  %i.cv = trunc i64 %.sroa.023.137 to i1
  %i.cw = or i64 %i.co, %.sroa.023.137
  %i.cx = trunc i64 %i.cw to i1
  %or.cond3.i = or i1 %i.cu, %i.cx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cy = trunc i64 %i.co to i1
  br i1 %i.cy, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cz = shl nuw nsw i64 %i.cr, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cv, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.da = or i64 %i.cp, 1
  %i.db = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cp, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB12_5sliceSBX_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2b_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2h_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cr, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cp, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.df = shl nuw nsw i64 %i.cr, 1
  %i.dg = or disjoint i64 %i.df, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit

bb.x:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cp
  %i.di = or i64 %i.cq, 1
  %i.dj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.dh, i64 noundef range(i64 0, 1152921504606846976) %i.cq, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2r_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.dg, %bb.w ], [ %i.cz, %bb.t ] ; 2 uses
  %i.dn = icmp ugt i64 %i.ci, 1
  br i1 %i.dn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dp = lshr i64 %.sroa.018.0, 1
  %i.dq = add nuw i64 %i.dp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dr, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ds = or i64 %1, 1
  %i.dt = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = xor i32 %i.dv, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB2q_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB11_5sliceSBW_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2a_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2g_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2295 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2o_.exit
  %.sroa.021.0 = phi i8 [ %i.ch, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2o_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2o_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2296)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2n_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !2296, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !2296, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !2297, !nonnull !12, !noundef !12 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !2297, !noundef !12 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2297, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !2297, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.x)
  %i.y = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.v, i64 %spec.store.select.i.i.i), !noalias !2297 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.t, %i.x
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i, 0      ; 2 uses
  %.not37.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ac, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, label %.lr.ph32.i

.lr.ph.i:                                         ; preds = %.preheader26.i, %bb.l
  %i.ad = phi i64 [ %i.aj, %bb.l ], [ %i.t, %.preheader26.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ah, %bb.l ], [ %i.r, %.preheader26.i ]
  %.sroa.01.0.i28.i = phi i64 [ %i.ap, %bb.l ], [ 2, %.preheader26.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i28.i
  %.val8.i = load ptr, ptr %i.af, align 8, !alias.scope !2296, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !2297, !nonnull !12, !noundef !12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !2297, !noundef !12 ; 3 uses
  %spec.store.select.i.i12.i = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ad)
  %i.ak = tail call i32 @memcmp(ptr nonnull %i.ah, ptr nonnull %i.ae, i64 %spec.store.select.i.i12.i), !noalias !2297 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %i.aj, %i.ad
  %spec.select.i.i13.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i13.i, 0
  br i1 %i.ao, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2n_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ap = add nuw nsw i64 %.sroa.01.0.i28.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2n_.exit.i, label %.lr.ph.i

.lr.ph32.i:                                       ; preds = %.preheader.i, %bb.m
  %i.aq = phi i64 [ %i.aw, %bb.m ], [ %i.t, %.preheader.i ] ; 2 uses
  %i.ar = phi ptr [ %i.au, %bb.m ], [ %i.r, %.preheader.i ]
  %.sroa.01.1.i31.i = phi i64 [ %i.bc, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i31.i
  %.val.i = load ptr, ptr %i.as, align 8, !alias.scope !2296, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !2297, !nonnull !12, !noundef !12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !2297, !noundef !12 ; 3 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.aq)
  %i.ax = tail call i32 @memcmp(ptr nonnull %i.au, ptr nonnull %i.ar, i64 %spec.store.select.i.i14.i), !noalias !2297 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %i.aw, %i.aq
  %spec.select.i.i15.i = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = icmp slt i64 %spec.select.i.i15.i, 0
  br i1 %i.bb, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2n_.exit.i

bb.m:                                             ; preds = %.lr.ph32.i
  %i.bc = add nuw nsw i64 %.sroa.01.1.i31.i, 1    ; 2 uses
  %exitcond40.not.i = icmp eq i64 %i.bc, %i.m
  br i1 %exitcond40.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2n_.exit.i, label %.lr.ph32.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2n_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph32.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i31.i, %.lr.ph32.i ], [ %.sroa.01.0.i28.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.bd = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.bd)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmt0E0EB2n_.exit.i
  br i1 %i.ac, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i16.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.be = shl nuw nsw i64 %.sroa.0.0.i16.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2o_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i17.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2q_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i17.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.bf = shl nuw nsw i64 %.sroa.0.0.i17.i, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2o_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, %middle.block, %.preheader26.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i23.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader26.i ], [ %.sroa.0.0.i586569.i, %middle.block ], [ %.sroa.0.0.i586569.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ]
  %i.bh = shl nuw nsw i64 %.sroa.0.0.i23.i, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2o_.exit

bb.q:                                             ; preds = %bb.n
  %i.bj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2299)
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.bk = phi i64 [ %i.bj, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i586569.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i586569.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bk, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i
  %n.vec = and i64 %i.bk, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = xor i64 %index, -1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !2300
  %wide.load56 = load <2 x ptr>, ptr %i.bp, align 8, !alias.scope !2300
  %i.bq = getelementptr i8, ptr %i.bo, i64 -8     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bo, i64 -24    ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !2301
  %wide.load58 = load <2 x i64>, ptr %i.br, align 8, !alias.scope !2301
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.bn, align 8, !alias.scope !2300
  store <2 x i64> %reverse59, ptr %i.bp, align 8, !alias.scope !2300
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.bq, align 8, !alias.scope !2301
  store <2 x ptr> %reverse61, ptr %i.br, align 8, !alias.scope !2301
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !2293

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.by, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader ] ; 3 uses
  %i.bt = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bl, i64 %i.bt ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !alias.scope !2300, !nonnull !12, !align !21, !noundef !12
  %i.bx = load i64, ptr %i.bv, align 8, !alias.scope !2301
  store i64 %i.bx, ptr %i.bu, align 8, !alias.scope !2300
  store ptr %i.bw, ptr %i.bv, align 8, !alias.scope !2301
  %i.by = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.bk
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, !llvm.loop !2294

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2o_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.bi, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.bg, %bb.p ], [ %i.be, %bb.o ] ; 2 uses
  %i.bz = lshr i64 %.sroa.023.0, 1
  %i.ca = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cb = sub nsw i64 %factor, %i.bz
  %i.cc = add nuw nsw i64 %i.ca, %factor
  %i.cd = mul i64 %i.cb, %.sroa.0.0
  %i.ce = mul i64 %i.cc, %.sroa.0.0
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 false)
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit
  %.sroa.02.138 = phi i64 [ %i.ci, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ci = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.ck, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cm, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ci
  %i.co = load i64, ptr %i.cn, align 8, !noundef !12 ; 3 uses
  %i.cp = lshr i64 %i.co, 1                       ; 5 uses
  %i.cq = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.cr = add nuw i64 %i.cp, %i.cq                ; 5 uses
  %i.cs = sub i64 %.sroa.09.0, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs ; 3 uses
  %i.cu = icmp samesign ugt i64 %i.cr, %3
  %i.cv = trunc i64 %.sroa.023.137 to i1
  %i.cw = or i64 %i.co, %.sroa.023.137
  %i.cx = trunc i64 %i.cw to i1
  %or.cond3.i = or i1 %i.cu, %i.cx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cy = trunc i64 %i.co to i1
  br i1 %i.cy, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cz = shl nuw nsw i64 %i.cr, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cv, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.da = or i64 %i.cp, 1
  %i.db = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2q_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cp, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB12_5sliceSBX_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2b_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2h_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cr, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cp, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.df = shl nuw nsw i64 %i.cr, 1
  %i.dg = or disjoint i64 %i.df, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit

bb.x:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cp
  %i.di = or i64 %i.cq, 1
  %i.dj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2q_(ptr noalias noundef nonnull align 8 %i.dh, i64 noundef range(i64 0, 1152921504606846976) %i.cq, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2r_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.dg, %bb.w ], [ %i.cz, %bb.t ] ; 2 uses
  %i.dn = icmp ugt i64 %i.ci, 1
  br i1 %i.dn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dp = lshr i64 %.sroa.018.0, 1
  %i.dq = add nuw i64 %i.dp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dr, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ds = or i64 %1, 1
  %i.dt = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = xor i32 %i.dv, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2q_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB11_5sliceSBW_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2a_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2g_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2313 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2o_.exit
  %.sroa.021.0 = phi i8 [ %i.ch, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2o_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2o_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts0_0E0EB2n_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !2314, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !2314, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !2315, !nonnull !12, !noundef !12 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !2315, !noundef !12 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2315, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !2315, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.x)
  %i.y = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.v, i64 %spec.store.select.i.i.i), !noalias !2315 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.t, %i.x
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i, 0      ; 2 uses
  %.not37.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ac, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not37.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, label %.lr.ph32.i

.lr.ph.i:                                         ; preds = %.preheader26.i, %bb.l
  %i.ad = phi i64 [ %i.aj, %bb.l ], [ %i.t, %.preheader26.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ah, %bb.l ], [ %i.r, %.preheader26.i ]
  %.sroa.01.0.i28.i = phi i64 [ %i.ap, %bb.l ], [ 2, %.preheader26.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i28.i
  %.val8.i = load ptr, ptr %i.af, align 8, !alias.scope !2314, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !2315, !nonnull !12, !noundef !12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !2315, !noundef !12 ; 3 uses
  %spec.store.select.i.i12.i = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ad)
  %i.ak = tail call i32 @memcmp(ptr nonnull %i.ah, ptr nonnull %i.ae, i64 %spec.store.select.i.i12.i), !noalias !2315 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %i.aj, %i.ad
  %spec.select.i.i13.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i13.i, 0
  br i1 %i.ao, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts0_0E0EB2n_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ap = add nuw nsw i64 %.sroa.01.0.i28.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts0_0E0EB2n_.exit.i, label %.lr.ph.i

.lr.ph32.i:                                       ; preds = %.preheader.i, %bb.m
  %i.aq = phi i64 [ %i.aw, %bb.m ], [ %i.t, %.preheader.i ] ; 2 uses
  %i.ar = phi ptr [ %i.au, %bb.m ], [ %i.r, %.preheader.i ]
  %.sroa.01.1.i31.i = phi i64 [ %i.bc, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i31.i
  %.val.i = load ptr, ptr %i.as, align 8, !alias.scope !2314, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !2315, !nonnull !12, !noundef !12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !2315, !noundef !12 ; 3 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.aq)
  %i.ax = tail call i32 @memcmp(ptr nonnull %i.au, ptr nonnull %i.ar, i64 %spec.store.select.i.i14.i), !noalias !2315 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %i.aw, %i.aq
  %spec.select.i.i15.i = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = icmp slt i64 %spec.select.i.i15.i, 0
  br i1 %i.bb, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts0_0E0EB2n_.exit.i

bb.m:                                             ; preds = %.lr.ph32.i
  %i.bc = add nuw nsw i64 %.sroa.01.1.i31.i, 1    ; 2 uses
  %exitcond40.not.i = icmp eq i64 %i.bc, %i.m
  br i1 %exitcond40.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts0_0E0EB2n_.exit.i, label %.lr.ph32.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts0_0E0EB2n_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph32.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i31.i, %.lr.ph32.i ], [ %.sroa.01.0.i28.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.bd = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.bd)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB17_5sliceSB12_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2h_8SettingsNtNtB8_3fmt7Display3fmts0_0E0EB2n_.exit.i
  br i1 %i.ac, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i16.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.be = shl nuw nsw i64 %.sroa.0.0.i16.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2o_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i17.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i17.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.bf = shl nuw nsw i64 %.sroa.0.0.i17.i, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2o_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, %middle.block, %.preheader26.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i23.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader26.i ], [ %.sroa.0.0.i586569.i, %middle.block ], [ %.sroa.0.0.i586569.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ]
  %i.bh = shl nuw nsw i64 %.sroa.0.0.i23.i, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2o_.exit

bb.q:                                             ; preds = %bb.n
  %i.bj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.bk = phi i64 [ %i.bj, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i586569.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i586569.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bk, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i
  %n.vec = and i64 %i.bk, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = xor i64 %index, -1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !2318
  %wide.load56 = load <2 x ptr>, ptr %i.bp, align 8, !alias.scope !2318
  %i.bq = getelementptr i8, ptr %i.bo, i64 -8     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bo, i64 -24    ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !2319
  %wide.load58 = load <2 x i64>, ptr %i.br, align 8, !alias.scope !2319
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.bn, align 8, !alias.scope !2318
  store <2 x i64> %reverse59, ptr %i.bp, align 8, !alias.scope !2318
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.bq, align 8, !alias.scope !2319
  store <2 x ptr> %reverse61, ptr %i.br, align 8, !alias.scope !2319
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !2311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.by, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader ] ; 3 uses
  %i.bt = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bl, i64 %i.bt ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !alias.scope !2318, !nonnull !12, !align !21, !noundef !12
  %i.bx = load i64, ptr %i.bv, align 8, !alias.scope !2319
  store i64 %i.bx, ptr %i.bu, align 8, !alias.scope !2318
  store ptr %i.bw, ptr %i.bv, align 8, !alias.scope !2319
  %i.by = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.bk
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, !llvm.loop !2312

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB18_5sliceSB13_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2i_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2o_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.bi, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.bg, %bb.p ], [ %i.be, %bb.o ] ; 2 uses
  %i.bz = lshr i64 %.sroa.023.0, 1
  %i.ca = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cb = sub nsw i64 %factor, %i.bz
  %i.cc = add nuw nsw i64 %i.ca, %factor
  %i.cd = mul i64 %i.cb, %.sroa.0.0
  %i.ce = mul i64 %i.cc, %.sroa.0.0
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 false)
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit
  %.sroa.02.138 = phi i64 [ %i.ci, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ci = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.ck, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cm, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ci
  %i.co = load i64, ptr %i.cn, align 8, !noundef !12 ; 3 uses
  %i.cp = lshr i64 %i.co, 1                       ; 5 uses
  %i.cq = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.cr = add nuw i64 %i.cp, %i.cq                ; 5 uses
  %i.cs = sub i64 %.sroa.09.0, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs ; 3 uses
  %i.cu = icmp samesign ugt i64 %i.cr, %3
  %i.cv = trunc i64 %.sroa.023.137 to i1
  %i.cw = or i64 %i.co, %.sroa.023.137
  %i.cx = trunc i64 %i.cw to i1
  %or.cond3.i = or i1 %i.cu, %i.cx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cy = trunc i64 %i.co to i1
  br i1 %i.cy, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cz = shl nuw nsw i64 %i.cr, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cv, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.da = or i64 %i.cp, 1
  %i.db = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cp, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB12_5sliceSBX_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2b_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2h_(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 1152921504606846976) %i.cr, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cp, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.df = shl nuw nsw i64 %i.cr, 1
  %i.dg = or disjoint i64 %i.df, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit

bb.x:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cp
  %i.di = or i64 %i.cq, 1
  %i.dj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2q_(ptr noalias noundef nonnull align 8 %i.dh, i64 noundef range(i64 0, 1152921504606846976) %i.cq, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1b_5sliceSB16_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2l_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2r_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.dg, %bb.w ], [ %i.cz, %bb.t ] ; 2 uses
  %i.dn = icmp ugt i64 %i.ci, 1
  br i1 %i.dn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dp = lshr i64 %.sroa.018.0, 1
  %i.dq = add nuw i64 %i.dp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dr, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ds = or i64 %1, 1
  %i.dt = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = xor i32 %i.dv, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB1a_5sliceSB15_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2k_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2q_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtCscdodAO9FK5_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2349 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.de, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dc, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.021.0 = phi i8 [ %i.bv, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2350)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !2350, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !2350, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.q = getelementptr i8, ptr %.val10.i, i64 8
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !noalias !2351, !nonnull !12, !noundef !12 ; 3 uses
  %i.r = getelementptr i8, ptr %.val10.i, i64 16
  %.val1.i.i.i = load i64, ptr %i.r, align 8, !noalias !2351, !noundef !12 ; 4 uses
  %i.s = getelementptr i8, ptr %.val11.i, i64 8
  %.val2.i.i.i = load ptr, ptr %i.s, align 8, !noalias !2351, !nonnull !12, !noundef !12
  %i.t = getelementptr i8, ptr %.val11.i, i64 16
  %.val3.i.i.i = load i64, ptr %i.t, align 8, !noalias !2351, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i), !alias.scope !2352, !noalias !2351 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub nsw i64 %.val1.i.i.i, %.val3.i.i.i
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp slt i64 %spec.select.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %.not45.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.y, label %.preheader.i, label %.preheader34.i

.preheader34.i:                                   ; preds = %bb.k
  br i1 %.not45.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not45.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, label %.lr.ph40.i

.lr.ph.i:                                         ; preds = %.preheader34.i, %bb.l
  %.val3.i.i15.i = phi i64 [ %.val1.i.i13.i, %bb.l ], [ %.val1.i.i.i, %.preheader34.i ] ; 2 uses
  %.val2.i.i14.i = phi ptr [ %.val.i.i12.i, %bb.l ], [ %.val.i.i.i, %.preheader34.i ]
  %.sroa.01.0.i36.i = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader34.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i36.i
  %.val8.i = load ptr, ptr %i.z, align 8, !alias.scope !2350, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.aa = getelementptr i8, ptr %.val8.i, i64 8
  %.val.i.i12.i = load ptr, ptr %i.aa, align 8, !noalias !2351, !nonnull !12, !noundef !12 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val8.i, i64 16
  %.val1.i.i13.i = load i64, ptr %i.ab, align 8, !noalias !2351, !noundef !12 ; 3 uses
  %spec.store.select.i.i.i.i.i.i.i16.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i13.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i15.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i12.i, ptr nonnull readonly %.val2.i.i14.i, i64 %spec.store.select.i.i.i.i.i.i.i16.i), !alias.scope !2353, !noalias !2351 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub nsw i64 %.val1.i.i13.i, %.val3.i.i15.i
  %spec.select.i.i.i.i.i.i.i17.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i.i.i.i.i.i17.i, 0
  br i1 %i.ag, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ah = add nuw nsw i64 %.sroa.01.0.i36.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ah, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.lr.ph40.i:                                       ; preds = %.preheader.i, %bb.m
  %.val3.i.i21.i = phi i64 [ %.val1.i.i19.i, %bb.m ], [ %.val1.i.i.i, %.preheader.i ] ; 2 uses
  %.val2.i.i20.i = phi ptr [ %.val.i.i18.i, %bb.m ], [ %.val.i.i.i, %.preheader.i ]
  %.sroa.01.1.i39.i = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i39.i
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !2350, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.aj = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i18.i = load ptr, ptr %i.aj, align 8, !noalias !2351, !nonnull !12, !noundef !12 ; 2 uses
  %i.ak = getelementptr i8, ptr %.val.i, i64 16
  %.val1.i.i19.i = load i64, ptr %i.ak, align 8, !noalias !2351, !noundef !12 ; 3 uses
  %spec.store.select.i.i.i.i.i.i.i22.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i19.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i21.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i18.i, ptr nonnull readonly %.val2.i.i20.i, i64 %spec.store.select.i.i.i.i.i.i.i22.i), !alias.scope !2354, !noalias !2351 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub nsw i64 %.val1.i.i19.i, %.val3.i.i21.i
  %spec.select.i.i.i.i.i.i.i23.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i.i.i.i.i.i23.i, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i

bb.m:                                             ; preds = %.lr.ph40.i
  %i.aq = add nuw nsw i64 %.sroa.01.1.i39.i, 1    ; 2 uses
  %exitcond48.not.i = icmp eq i64 %i.aq, %i.m
  br i1 %exitcond48.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph40.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph40.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i39.i, %.lr.ph40.i ], [ %.sroa.01.0.i36.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ar)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCscdodAO9FK5_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i
  br i1 %i.y, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i24.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %.sroa.0.0.i24.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i25.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i25.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  %i.at = shl nuw nsw i64 %.sroa.0.0.i25.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, %middle.block, %.preheader34.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i31.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader34.i ], [ %.sroa.0.0.i677478.i, %middle.block ], [ %.sroa.0.0.i677478.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i31.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.q:                                             ; preds = %bb.n
  %i.ax = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2356)
  %.not.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.ay = phi i64 [ %i.ax, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i677478.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i677478.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ay, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i
  %n.vec = and i64 %i.ay, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = xor i64 %index, -1
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.bc = getelementptr [8 x i8], ptr %i.az, i64 %i.ba ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.bb, align 8, !alias.scope !2357
  %wide.load56 = load <2 x ptr>, ptr %i.bd, align 8, !alias.scope !2357
  %i.be = getelementptr i8, ptr %i.bc, i64 -8     ; 2 uses
  %i.bf = getelementptr i8, ptr %i.bc, i64 -24    ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.be, align 8, !alias.scope !2358
  %wide.load58 = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !2358
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.bb, align 8, !alias.scope !2357
  store <2 x i64> %reverse59, ptr %i.bd, align 8, !alias.scope !2357
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.be, align 8, !alias.scope !2358
  store <2 x ptr> %reverse61, ptr %i.bf, align 8, !alias.scope !2358
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !2347

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.bm, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader ] ; 3 uses
  %i.bh = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %i.az, i64 %i.bh ; 2 uses
  %i.bk = load ptr, ptr %i.bi, align 8, !alias.scope !2357, !nonnull !12, !align !21, !noundef !12
  %i.bl = load i64, ptr %i.bj, align 8, !alias.scope !2358
  store i64 %i.bl, ptr %i.bi, align 8, !alias.scope !2357
  store ptr %i.bk, ptr %i.bj, align 8, !alias.scope !2358
  %i.bm = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bm, %i.ay
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, !llvm.loop !2348

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtCscdodAO9FK5_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.aw, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCscdodAO9FK5_5alloc6string6String7reverseCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.bn = lshr i64 %.sroa.023.0, 1
  %i.bo = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bp = sub nsw i64 %factor, %i.bn
  %i.bq = add nuw nsw i64 %i.bo, %factor
  %i.br = mul i64 %i.bp, %.sroa.0.0
  %i.bs = mul i64 %i.bq, %.sroa.0.0
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bt, i1 false)
  %i.bv = trunc nuw nsw i64 %i.bu to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.02.138 = phi i64 [ %i.bw, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bw = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.by, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ca, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bw
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !12 ; 3 uses
  %i.cd = lshr i64 %i.cc, 1                       ; 5 uses
  %i.ce = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.cf = add nuw i64 %i.cd, %i.ce                ; 5 uses
  %i.cg = sub i64 %.sroa.09.0, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cg ; 3 uses
  %i.ci = icmp samesign ugt i64 %i.cf, %3
  %i.cj = trunc i64 %.sroa.023.137 to i1
  %i.ck = or i64 %i.cc, %.sroa.023.137
  %i.cl = trunc i64 %i.ck to i1
  %or.cond3.i = or i1 %i.ci, %i.cl
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cm = trunc i64 %i.cc to i1
  br i1 %i.cm, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cn = shl nuw nsw i64 %i.cf, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cj, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.co = or i64 %i.cd, 1
  %i.cp = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %i.ch, i64 noundef range(i64 0, 1152921504606846976) %i.cd, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %i.ch, i64 noundef range(i64 0, 1152921504606846976) %i.cf, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cd, ptr noalias noundef nonnull %5)
  %i.ct = shl nuw nsw i64 %i.cf, 1
  %i.cu = or disjoint i64 %i.ct, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.x:                                             ; preds = %bb.u
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cd
  %i.cw = or i64 %i.ce, 1
  %i.cx = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = xor i32 %i.cz, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %i.cv, i64 noundef range(i64 0, 1152921504606846976) %i.ce, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.da, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cu, %bb.w ], [ %i.cn, %bb.t ] ; 2 uses
  %i.db = icmp ugt i64 %i.bw, 1
  br i1 %i.db, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dc = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dd = lshr i64 %.sroa.018.0, 1
  %i.de = add nuw i64 %i.dd, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.df = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.df, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dg = or i64 %1, 1
  %i.dh = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dg, i1 true)
  %i.di = trunc nuw nsw i64 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 1
  %i.dk = xor i32 %i.dj, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCNvXs1_NtB11_8settingsNtB2Z_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB15_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2379 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ah, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ah ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fi, %bb.ah ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fg, %bb.ah ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtB18_8settingsNtB37_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1c_.exit
  %.sroa.021.0 = phi i8 [ %i.dz, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtB18_8settingsNtB37_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1c_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtB18_8settingsNtB37_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1c_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2380)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtB17_8settingsNtB36_8SettingsNtNtB8_3fmt7Display3fmts4_0E0EB1b_.exit.i, %bb.h
  br i1 %4, label %bb.y, label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCNvXs1_NtB11_8settingsNtB2Z_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB15_:bb.a
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ae)
  %i.af = tail call i32 @memcmp(ptr nonnull %i.y, ptr nonnull %i.ac, i64 %spec.store.select.i.i.i.i), !noalias !2384 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %i.aa, %i.ae
  %spec.select.i.i.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ag
  %i.aj = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.assume(i1 %i.u)
  %i.ak = load i8, ptr %i.x, align 8, !range !41, !alias.scope !2381, !noalias !2383, !noundef !12
  %i.al = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.am = load i8, ptr %i.al, align 8, !range !41, !alias.scope !2382, !noalias !2383, !noundef !12
  %i.an = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ak, i8 %i.am)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i: ; preds = %bb.n, %bb.m, %bb.k
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.aj, %bb.m ], [ %i.an, %bb.n ], [ %i.v, %bb.k ]
  %i.ao = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 2 uses
  %.not43.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ao, label %.preheader.i, label %.preheader34.i

.preheader34.i:                                   ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i
  br i1 %.not43.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i
  br i1 %.not43.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i, label %.lr.ph39.i

.lr.ph.i:                                         ; preds = %.preheader34.i, %bb.r
  %i.ap = phi i64 [ %i.at, %bb.r ], [ %i.q, %.preheader34.i ]
  %.val9.i = phi ptr [ %.val8.i, %bb.r ], [ %.val10.i, %.preheader34.i ] ; 3 uses
  %.sroa.01.0.i36.i = phi i64 [ %i.br, %bb.r ], [ 2, %.preheader34.i ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i36.i
  %i.ar = add nsw i64 %.sroa.01.0.i36.i, -1
  %i.as = icmp samesign ult i64 %i.ar, %i.m
  tail call void @llvm.assume(i1 %i.as)
  %.val8.i = load ptr, ptr %i.aq, align 8, !alias.scope !2380, !nonnull !12, !align !21, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  %i.at = load i64, ptr %.val8.i, align 8, !range !14, !alias.scope !2385, !noalias !2383, !noundef !12 ; 2 uses
  %i.au = icmp ne i64 %i.at, -1                   ; 3 uses
  %i.av = zext i1 %i.au to i8
  %i.aw = icmp eq i64 %i.ap, -1                   ; 3 uses
  %not..i.i.i12.i = xor i1 %i.aw, true            ; 2 uses
  %.neg.i.i.i13.i = sext i1 %not..i.i.i12.i to i8
  %i.ax = add nsw i8 %i.av, %.neg.i.i.i13.i
  %i.ay = xor i1 %i.aw, %i.au
  br i1 %i.ay, label %bb.o, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit17.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8 ; 2 uses
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %not..i.i.i12.i)
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !2385, !noalias !2383, !nonnull !12, !noundef !12
  %i.bb = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !2385, !noalias !2383, !noundef !12 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !2386, !noalias !2383, !nonnull !12, !noundef !12
  %i.bf = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !2386, !noalias !2383, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.bg)
  %i.bh = tail call i32 @memcmp(ptr nonnull %i.ba, ptr nonnull %i.be, i64 %spec.store.select.i.i.i15.i), !noalias !2387 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp eq i32 %i.bh, 0
  %i.bk = sub i64 %i.bc, %i.bg
  %spec.select.i.i.i16.i = select i1 %i.bj, i64 %i.bk, i64 %i.bi
  %i.bl = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i16.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit17.i

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.aw)
  %i.bm = load i8, ptr %i.az, align 8, !range !41, !alias.scope !2385, !noalias !2383, !noundef !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.bo = load i8, ptr %i.bn, align 8, !range !41, !alias.scope !2386, !noalias !2383, !noundef !12
  %i.bp = tail call i8 @llvm.ucmp.i8.i8(i8 %i.bm, i8 %i.bo)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit17.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit17.i: ; preds = %bb.q, %bb.p, %.lr.ph.i
  %.sroa.0.0.i.i.i14.i = phi i8 [ %i.bl, %bb.p ], [ %i.bp, %bb.q ], [ %i.ax, %.lr.ph.i ]
  %i.bq = icmp eq i8 %.sroa.0.0.i.i.i14.i, -1
  br i1 %i.bq, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtB17_8settingsNtB36_8SettingsNtNtB8_3fmt7Display3fmts4_0E0EB1b_.exit.i, label %bb.r

bb.r:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit17.i
  %i.br = add nuw nsw i64 %.sroa.01.0.i36.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.br, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtB17_8settingsNtB36_8SettingsNtNtB8_3fmt7Display3fmts4_0E0EB1b_.exit.i, label %.lr.ph.i

.lr.ph39.i:                                       ; preds = %.preheader.i, %bb.v
  %i.bs = phi i64 [ %i.bw, %bb.v ], [ %i.q, %.preheader.i ]
  %.val7.i = phi ptr [ %.val.i, %bb.v ], [ %.val10.i, %.preheader.i ] ; 3 uses
  %.sroa.01.1.i38.i = phi i64 [ %i.cu, %bb.v ], [ 2, %.preheader.i ] ; 4 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i38.i
  %i.bu = add nsw i64 %.sroa.01.1.i38.i, -1
  %i.bv = icmp samesign ult i64 %i.bu, %i.m
  tail call void @llvm.assume(i1 %i.bv)
  %.val.i = load ptr, ptr %i.bt, align 8, !alias.scope !2380, !nonnull !12, !align !21, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  %i.bw = load i64, ptr %.val.i, align 8, !range !14, !alias.scope !2388, !noalias !2383, !noundef !12 ; 2 uses
  %i.bx = icmp ne i64 %i.bw, -1                   ; 3 uses
  %i.by = zext i1 %i.bx to i8
  %i.bz = icmp eq i64 %i.bs, -1                   ; 3 uses
  %not..i.i.i18.i = xor i1 %i.bz, true            ; 2 uses
  %.neg.i.i.i19.i = sext i1 %not..i.i.i18.i to i8
  %i.ca = add nsw i8 %i.by, %.neg.i.i.i19.i
  %i.cb = xor i1 %i.bz, %i.bx
  br i1 %i.cb, label %bb.s, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit23.i

bb.s:                                             ; preds = %.lr.ph39.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  br i1 %i.bx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.assume(i1 %not..i.i.i18.i)
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !2388, !noalias !2383, !nonnull !12, !noundef !12
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !2388, !noalias !2383, !noundef !12 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !2389, !noalias !2383, !nonnull !12, !noundef !12
  %i.ci = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !2389, !noalias !2383, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i21.i = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.cj)
  %i.ck = tail call i32 @memcmp(ptr nonnull %i.cd, ptr nonnull %i.ch, i64 %spec.store.select.i.i.i21.i), !noalias !2390 ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp eq i32 %i.ck, 0
  %i.cn = sub i64 %i.cf, %i.cj
  %spec.select.i.i.i22.i = select i1 %i.cm, i64 %i.cn, i64 %i.cl
  %i.co = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i22.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit23.i

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.assume(i1 %i.bz)
  %i.cp = load i8, ptr %i.cc, align 8, !range !41, !alias.scope !2388, !noalias !2383, !noundef !12
  %i.cq = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.cr = load i8, ptr %i.cq, align 8, !range !41, !alias.scope !2389, !noalias !2383, !noundef !12
  %i.cs = tail call i8 @llvm.ucmp.i8.i8(i8 %i.cp, i8 %i.cr)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit23.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit23.i: ; preds = %bb.u, %bb.t, %.lr.ph39.i
  %.sroa.0.0.i.i.i20.i = phi i8 [ %i.co, %bb.t ], [ %i.cs, %bb.u ], [ %i.ca, %.lr.ph39.i ]
  %i.ct = icmp eq i8 %.sroa.0.0.i.i.i20.i, -1
  br i1 %i.ct, label %bb.v, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtB17_8settingsNtB36_8SettingsNtNtB8_3fmt7Display3fmts4_0E0EB1b_.exit.i

bb.v:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit23.i
  %i.cu = add nuw nsw i64 %.sroa.01.1.i38.i, 1    ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.cu, %i.m
  br i1 %exitcond47.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtB17_8settingsNtB36_8SettingsNtNtB8_3fmt7Display3fmts4_0E0EB1b_.exit.i, label %.lr.ph39.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtB17_8settingsNtB36_8SettingsNtNtB8_3fmt7Display3fmts4_0E0EB1b_.exit.i: ; preds = %bb.r, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit17.i, %bb.v, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit23.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.v ], [ %.sroa.01.1.i38.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit23.i ], [ %.sroa.01.0.i36.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit17.i ], [ %i.m, %bb.r ] ; 6 uses
  %i.cv = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.cv)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.w

bb.w:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtB17_8settingsNtB36_8SettingsNtNtB8_3fmt7Display3fmts4_0E0EB1b_.exit.i
  br i1 %i.ao, label %bb.z, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i

bb.x:                                             ; preds = %bb.i
  %.sroa.0.0.i24.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.cw = shl nuw nsw i64 %.sroa.0.0.i24.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtB18_8settingsNtB37_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1c_.exit

bb.y:                                             ; preds = %bb.i
  %.sroa.0.0.i25.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvXs1_NtB1a_8settingsNtB39_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1e_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i25.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.cx = shl nuw nsw i64 %.sroa.0.0.i25.i, 1
  %i.cy = or disjoint i64 %i.cx, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtB18_8settingsNtB37_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1c_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i, %middle.block, %.preheader34.i, %bb.z, %bb.w, %bb.j
  %.sroa.0.0.i31.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.w ], [ %.sroa.0.0.i.i, %bb.z ], [ 2, %.preheader34.i ], [ %.sroa.0.0.i596670.i, %middle.block ], [ %.sroa.0.0.i596670.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i ]
  %i.cz = shl nuw nsw i64 %.sroa.0.0.i31.i, 1
  %i.da = or disjoint i64 %i.cz, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtB18_8settingsNtB37_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1c_.exit

bb.z:                                             ; preds = %bb.w
  %i.db = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2392)
  %.not.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.z
  %i.dc = phi i64 [ %i.db, %bb.z ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i596670.i = phi i64 [ %.sroa.0.0.i.i, %bb.z ], [ 2, %.preheader.i ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i596670.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.dc, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i
  %n.vec = and i64 %i.dc, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.de = xor i64 %index, -1
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.dg = getelementptr [8 x i8], ptr %i.dd, i64 %i.de ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.df, align 8, !alias.scope !2393
  %wide.load56 = load <2 x ptr>, ptr %i.dh, align 8, !alias.scope !2393
  %i.di = getelementptr i8, ptr %i.dg, i64 -8     ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dg, i64 -24    ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.di, align 8, !alias.scope !2394
  %wide.load58 = load <2 x i64>, ptr %i.dj, align 8, !alias.scope !2394
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.df, align 8, !alias.scope !2393
  store <2 x i64> %reverse59, ptr %i.dh, align 8, !alias.scope !2393
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.di, align 8, !alias.scope !2394
  store <2 x ptr> %reverse61, ptr %i.dj, align 8, !alias.scope !2394
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !2377

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.dq, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i.preheader ] ; 3 uses
  %i.dl = xor i64 %.sroa.0.016.i.i.i, -1
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %i.dd, i64 %i.dl ; 2 uses
  %i.do = load ptr, ptr %i.dm, align 8, !alias.scope !2393, !nonnull !12, !align !21, !noundef !12
  %i.dp = load i64, ptr %i.dn, align 8, !alias.scope !2394
  store i64 %i.dp, ptr %i.dm, align 8, !alias.scope !2393
  store ptr %i.do, ptr %i.dn, align 8, !alias.scope !2394
  %i.dq = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dq, %i.dc
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i, !llvm.loop !2378

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtB18_8settingsNtB37_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1c_.exit: ; preds = %bb.x, %bb.y, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.da, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i ], [ %i.cy, %bb.y ], [ %i.cw, %bb.x ] ; 2 uses
  %i.dr = lshr i64 %.sroa.023.0, 1
  %i.ds = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.dt = sub nsw i64 %factor, %i.dr
  %i.du = add nuw nsw i64 %i.ds, %factor
  %i.dv = mul i64 %i.dt, %.sroa.0.0
  %i.dw = mul i64 %i.du, %.sroa.0.0
  %i.dx = xor i64 %i.dw, %i.dv
  %i.dy = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dx, i1 false)
  %i.dz = trunc nuw nsw i64 %i.dy to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit
  %.sroa.02.138 = phi i64 [ %i.ea, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ea = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.ec, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.aa

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ee, align 1
  br i1 %i.k, label %bb.ah, label %bb.ai

bb.aa:                                            ; preds = %.lr.ph
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ea
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !12 ; 3 uses
  %i.eh = lshr i64 %i.eg, 1                       ; 5 uses
  %i.ei = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.ej = add nuw i64 %i.eh, %i.ei                ; 5 uses
  %i.ek = sub i64 %.sroa.09.0, %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ek ; 3 uses
  %i.em = icmp samesign ugt i64 %i.ej, %3
  %i.en = trunc i64 %.sroa.023.137 to i1
  %i.eo = or i64 %i.eg, %.sroa.023.137
  %i.ep = trunc i64 %i.eo to i1
  %or.cond3.i = or i1 %i.em, %i.ep
  br i1 %or.cond3.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = trunc i64 %i.eg to i1
  br i1 %i.eq, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.er = shl nuw nsw i64 %i.ej, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit

bb.ad:                                            ; preds = %bb.ae, %bb.ab
  br i1 %i.en, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.es = or i64 %i.eh, 1
  %i.et = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.es, i1 true)
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 1
  %i.ew = xor i32 %i.ev, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvXs1_NtB1a_8settingsNtB39_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1e_(ptr noalias noundef nonnull align 8 %i.el, i64 noundef range(i64 0, 1152921504606846976) %i.eh, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ew, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ad

bb.af:                                            ; preds = %bb.ag, %bb.ad
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCNvXs1_NtB12_8settingsNtB30_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB16_(ptr noalias noundef nonnull align 8 %i.el, i64 noundef range(i64 0, 1152921504606846976) %i.ej, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.eh, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.ex = shl nuw nsw i64 %i.ej, 1
  %i.ey = or disjoint i64 %i.ex, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit

bb.ag:                                            ; preds = %bb.ad
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.eh
  %i.fa = or i64 %i.ei, 1
  %i.fb = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.fa, i1 true)
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 1
  %i.fe = xor i32 %i.fd, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvXs1_NtB1a_8settingsNtB39_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1e_(ptr noalias noundef nonnull align 8 %i.ez, i64 noundef range(i64 0, 1152921504606846976) %i.ei, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.fe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.af

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit: ; preds = %bb.ac, %bb.af
  %.sroa.0.0.i = phi i64 [ %i.ey, %bb.af ], [ %i.er, %bb.ac ] ; 2 uses
  %i.ff = icmp ugt i64 %i.ea, 1
  br i1 %i.ff, label %.lr.ph, label %._crit_edge

bb.ah:                                            ; preds = %._crit_edge
  %i.fg = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fh = lshr i64 %.sroa.018.0, 1
  %i.fi = add nuw i64 %i.fh, %.sroa.09.0
  br label %bb.f

bb.ai:                                            ; preds = %._crit_edge
  %i.fj = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fj, 0
  br i1 %.not31, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fk = or i64 %1, 1
  %i.fl = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.fk, i1 true)
  %i.fm = trunc nuw nsw i64 %i.fl to i32
  %i.fn = shl nuw nsw i32 %i.fm, 1
  %i.fo = xor i32 %i.fn, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvXs1_NtB1a_8settingsNtB39_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1e_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.fo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.al

bb.al:                                            ; preds = %bb.a, %bb.ak
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYBW_NtNtBa_3cmp10PartialOrd2ltEB15_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2424 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ac, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ac ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ev, %bb.ac ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.et, %bb.ac ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.021.0 = phi i8 [ %i.dm, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2425)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1b_.exit.i, %bb.h
  br i1 %4, label %bb.t, label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYBW_NtNtBa_3cmp10PartialOrd2ltEB15_:bb.a
  br i1 %i.r, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not70.i, label %.preheader39.i, label %.split.i

bb.m:                                             ; preds = %bb.k
  br i1 %.not70.i, label %.split24.i, label %.preheader.i

.split24.i:                                       ; preds = %bb.m
  %i.t = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.u = load i8, ptr %i.t, align 8, !range !41, !alias.scope !2430, !noalias !2431, !noundef !12
  %i.v = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.w = load i8, ptr %i.v, align 8, !range !41, !alias.scope !2432, !noalias !2431, !noundef !12
  %i.x = icmp samesign ult i8 %i.u, %i.w
  br i1 %i.x, label %.preheader.i, label %.preheader39.i

.preheader.i:                                     ; preds = %bb.m, %.split.i, %.split24.i
  %.not54.i = icmp eq i64 %i.m, 2
  br i1 %.not54.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1b_.exit.i, label %.lr.ph47.i

.split.i:                                         ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2430, !noalias !2431, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !2430, !noalias !2431, !noundef !12 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !2432, !noalias !2431, !nonnull !12, !noundef !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !2432, !noalias !2431, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.af)
  %i.ag = tail call i32 @memcmp(ptr nonnull %i.z, ptr nonnull %i.ad, i64 %spec.store.select.i.i.i.i.i), !noalias !2433 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp eq i32 %i.ag, 0
  %i.aj = sub i64 %i.ab, %i.af
  %spec.select.i.i.i.i.i = select i1 %i.ai, i64 %i.aj, i64 %i.ah
  %i.ak = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.ak, label %.preheader.i, label %.preheader39.i

.preheader39.i:                                   ; preds = %.split.i, %.split24.i, %bb.l
  %.not53.i = icmp eq i64 %i.m, 2
  br i1 %.not53.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1b_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader39.i, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit15.thread.i
  %i.al = phi i64 [ %i.ap, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit15.thread.i ], [ %i.q, %.preheader39.i ]
  %.val9.i = phi ptr [ %.val8.i, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit15.thread.i ], [ %.val10.i, %.preheader39.i ] ; 3 uses
  %.sroa.01.0.i41.i = phi i64 [ %i.bj, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit15.thread.i ], [ 2, %.preheader39.i ] ; 6 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i41.i
  %i.an = add nsw i64 %.sroa.01.0.i41.i, -1
  %i.ao = icmp samesign ult i64 %i.an, %i.m
  tail call void @llvm.assume(i1 %i.ao)
  %.val8.i = load ptr, ptr %i.am, align 8, !alias.scope !2425, !nonnull !12, !align !21, !noundef !12 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2437)
  %i.ap = load i64, ptr %.val8.i, align 8, !range !14, !alias.scope !2438, !noalias !2431, !noundef !12 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, -1
  %.not37.i = icmp eq i64 %i.al, -1               ; 2 uses
  br i1 %i.aq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  br i1 %.not37.i, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit15.thread.i, label %.split25.i

bb.o:                                             ; preds = %.lr.ph.i
  br i1 %.not37.i, label %.split26.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1b_.exit.i

.split26.i:                                       ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !range !41, !alias.scope !2438, !noalias !2431, !noundef !12
  %i.at = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.au = load i8, ptr %i.at, align 8, !range !41, !alias.scope !2439, !noalias !2431, !noundef !12
  %i.av = icmp samesign ult i8 %i.as, %i.au
  br i1 %i.av, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1b_.exit.i, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit15.thread.i

.split25.i:                                       ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !2438, !noalias !2431, !nonnull !12, !noundef !12
  %i.ay = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !2438, !noalias !2431, !noundef !12 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !2439, !noalias !2431, !nonnull !12, !noundef !12
  %i.bc = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !2439, !noalias !2431, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i.i13.i = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.bd)
  %i.be = tail call i32 @memcmp(ptr nonnull %i.ax, ptr nonnull %i.bb, i64 %spec.store.select.i.i.i.i13.i), !noalias !2440 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp eq i32 %i.be, 0
  %i.bh = sub i64 %i.az, %i.bd
  %spec.select.i.i.i.i14.i = select i1 %i.bg, i64 %i.bh, i64 %i.bf
  %i.bi = icmp slt i64 %spec.select.i.i.i.i14.i, 0
  br i1 %i.bi, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1b_.exit.i, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit15.thread.i

_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit15.thread.i: ; preds = %.split25.i, %.split26.i, %bb.n
  %i.bj = add nuw nsw i64 %.sroa.01.0.i41.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1b_.exit.i, label %.lr.ph.i

.lr.ph47.i:                                       ; preds = %.preheader.i, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit19.i
  %i.bk = phi i64 [ %i.bo, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit19.i ], [ %i.q, %.preheader.i ]
  %.val7.i = phi ptr [ %.val.i, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit19.i ], [ %.val10.i, %.preheader.i ] ; 3 uses
  %.sroa.01.1.i46.i = phi i64 [ %i.ci, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit19.i ], [ 2, %.preheader.i ] ; 6 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i46.i
  %i.bm = add nsw i64 %.sroa.01.1.i46.i, -1
  %i.bn = icmp samesign ult i64 %i.bm, %i.m
  tail call void @llvm.assume(i1 %i.bn)
  %.val.i = load ptr, ptr %i.bl, align 8, !alias.scope !2425, !nonnull !12, !align !21, !noundef !12 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2444)
  %i.bo = load i64, ptr %.val.i, align 8, !range !14, !alias.scope !2445, !noalias !2431, !noundef !12 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, -1
  %.not38.i = icmp eq i64 %i.bk, -1               ; 2 uses
  br i1 %i.bp, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph47.i
  br i1 %.not38.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1b_.exit.i, label %.split27.i

bb.q:                                             ; preds = %.lr.ph47.i
  br i1 %.not38.i, label %.split28.i, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit19.i

.split28.i:                                       ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.br = load i8, ptr %i.bq, align 8, !range !41, !alias.scope !2445, !noalias !2431, !noundef !12
  %i.bs = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.bt = load i8, ptr %i.bs, align 8, !range !41, !alias.scope !2446, !noalias !2431, !noundef !12
  %i.bu = icmp samesign ult i8 %i.br, %i.bt
  br i1 %i.bu, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit19.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1b_.exit.i

.split27.i:                                       ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !2445, !noalias !2431, !nonnull !12, !noundef !12
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !2445, !noalias !2431, !noundef !12 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !2446, !noalias !2431, !nonnull !12, !noundef !12
  %i.cb = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !2446, !noalias !2431, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i.i17.i = tail call i64 @llvm.umin.i64(i64 %i.by, i64 %i.cc)
  %i.cd = tail call i32 @memcmp(ptr nonnull %i.bw, ptr nonnull %i.ca, i64 %spec.store.select.i.i.i.i17.i), !noalias !2447 ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp eq i32 %i.cd, 0
  %i.cg = sub i64 %i.by, %i.cc
  %spec.select.i.i.i.i18.i = select i1 %i.cf, i64 %i.cg, i64 %i.ce
  %i.ch = icmp slt i64 %spec.select.i.i.i.i18.i, 0
  br i1 %i.ch, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit19.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1b_.exit.i

_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit19.i: ; preds = %.split27.i, %.split28.i, %bb.q
  %i.ci = add nuw nsw i64 %.sroa.01.1.i46.i, 1    ; 2 uses
  %exitcond58.not.i = icmp eq i64 %i.ci, %i.m
  br i1 %exitcond58.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1b_.exit.i, label %.lr.ph47.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1b_.exit.i: ; preds = %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit15.thread.i, %.split25.i, %.split26.i, %bb.o, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit19.i, %.split27.i, %.split28.i, %bb.p, %.preheader39.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ true, %.preheader.i ], [ true, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit19.i ], [ false, %.preheader39.i ], [ true, %bb.p ], [ true, %.split28.i ], [ true, %.split27.i ], [ false, %bb.o ], [ false, %.split26.i ], [ false, %.split25.i ], [ false, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit15.thread.i ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader.i ], [ %i.m, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit19.i ], [ 2, %.preheader39.i ], [ %.sroa.01.1.i46.i, %.split27.i ], [ %.sroa.01.1.i46.i, %.split28.i ], [ %.sroa.01.1.i46.i, %bb.p ], [ %i.m, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit15.thread.i ], [ %.sroa.01.0.i41.i, %.split25.i ], [ %.sroa.01.0.i41.i, %.split26.i ], [ %.sroa.01.0.i41.i, %bb.o ] ; 9 uses
  %i.cj = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.cj)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltEB1b_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.u, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i

bb.s:                                             ; preds = %bb.i
  %.sroa.0.0.i20.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.ck = shl nuw nsw i64 %.sroa.0.0.i20.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.t:                                             ; preds = %bb.i
  %.sroa.0.0.i21.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i21.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  %i.cl = shl nuw nsw i64 %.sroa.0.0.i21.i, 1
  %i.cm = or disjoint i64 %i.cl, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i, %middle.block, %bb.u, %bb.r, %bb.j
  %.sroa.0.0.i34.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i.i, %middle.block ], [ %.sroa.0.0.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i ]
  %i.cn = shl nuw nsw i64 %.sroa.0.0.i34.i, 1
  %i.co = or disjoint i64 %i.cn, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.u:                                             ; preds = %bb.r
  %i.cp = lshr i64 %.sroa.0.0.i.i, 1              ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2449)
  %.not.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i: ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i.i, 8
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i
  %n.vec = and i64 %i.cp, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cr = xor i64 %index, -1
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.ct = getelementptr [8 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.cs, align 8, !alias.scope !2450
  %wide.load56 = load <2 x ptr>, ptr %i.cu, align 8, !alias.scope !2450
  %i.cv = getelementptr i8, ptr %i.ct, i64 -8     ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ct, i64 -24    ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.cv, align 8, !alias.scope !2451
  %wide.load58 = load <2 x i64>, ptr %i.cw, align 8, !alias.scope !2451
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.cs, align 8, !alias.scope !2450
  store <2 x i64> %reverse59, ptr %i.cu, align 8, !alias.scope !2450
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.cv, align 8, !alias.scope !2451
  store <2 x ptr> %reverse61, ptr %i.cw, align 8, !alias.scope !2451
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !2422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.dd, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i.preheader ] ; 3 uses
  %i.cy = xor i64 %.sroa.0.016.i.i.i, -1
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %i.cq, i64 %i.cy ; 2 uses
  %i.db = load ptr, ptr %i.cz, align 8, !alias.scope !2450, !nonnull !12, !align !21, !noundef !12
  %i.dc = load i64, ptr %i.da, align 8, !alias.scope !2451
  store i64 %i.dc, ptr %i.cz, align 8, !alias.scope !2450
  store ptr %i.db, ptr %i.da, align 8, !alias.scope !2451
  %i.dd = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dd, %i.cp
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i, !llvm.loop !2423

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %bb.s, %bb.t, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.co, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i ], [ %i.cm, %bb.t ], [ %i.ck, %bb.s ] ; 2 uses
  %i.de = lshr i64 %.sroa.023.0, 1
  %i.df = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.dg = sub nsw i64 %factor, %i.de
  %i.dh = add nuw nsw i64 %i.df, %factor
  %i.di = mul i64 %i.dg, %.sroa.0.0
  %i.dj = mul i64 %i.dh, %.sroa.0.0
  %i.dk = xor i64 %i.dj, %i.di
  %i.dl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dk, i1 false)
  %i.dm = trunc nuw nsw i64 %i.dl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit
  %.sroa.02.138 = phi i64 [ %i.dn, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.dn = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.dp, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.dr, align 1
  br i1 %i.k, label %bb.ac, label %bb.ad

bb.v:                                             ; preds = %.lr.ph
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dn
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !12 ; 3 uses
  %i.du = lshr i64 %i.dt, 1                       ; 5 uses
  %i.dv = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.dw = add nuw i64 %i.du, %i.dv                ; 5 uses
  %i.dx = sub i64 %.sroa.09.0, %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dx ; 3 uses
  %i.dz = icmp samesign ugt i64 %i.dw, %3
  %i.ea = trunc i64 %.sroa.023.137 to i1
  %i.eb = or i64 %i.dt, %.sroa.023.137
  %i.ec = trunc i64 %i.eb to i1
  %or.cond3.i = or i1 %i.dz, %i.ec
  br i1 %or.cond3.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ed = trunc i64 %i.dt to i1
  br i1 %i.ed, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.ee = shl nuw nsw i64 %i.dw, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit

bb.y:                                             ; preds = %bb.z, %bb.w
  br i1 %i.ea, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.ef = or i64 %i.du, 1
  %i.eg = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ef, i1 true)
  %i.eh = trunc nuw nsw i64 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = xor i32 %i.ei, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noalias noundef nonnull align 8 %i.dy, i64 noundef range(i64 0, 1152921504606846976) %i.du, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ej, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  br label %bb.y

bb.aa:                                            ; preds = %bb.ab, %bb.y
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYBX_NtNtBa_3cmp10PartialOrd2ltEB16_(ptr noalias noundef nonnull align 8 %i.dy, i64 noundef range(i64 0, 1152921504606846976) %i.dw, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.du, ptr noalias noundef nonnull %5)
  %i.ek = shl nuw nsw i64 %i.dw, 1
  %i.el = or disjoint i64 %i.ek, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit

bb.ab:                                            ; preds = %bb.y
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.du
  %i.en = or i64 %i.dv, 1
  %i.eo = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.en, i1 true)
  %i.ep = trunc nuw nsw i64 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 1
  %i.er = xor i32 %i.eq, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noalias noundef nonnull align 8 %i.em, i64 noundef range(i64 0, 1152921504606846976) %i.dv, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.er, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  br label %bb.aa

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit: ; preds = %bb.x, %bb.aa
  %.sroa.0.0.i = phi i64 [ %i.el, %bb.aa ], [ %i.ee, %bb.x ] ; 2 uses
  %i.es = icmp ugt i64 %i.dn, 1
  br i1 %i.es, label %.lr.ph, label %._crit_edge

bb.ac:                                            ; preds = %._crit_edge
  %i.et = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eu = lshr i64 %.sroa.018.0, 1
  %i.ev = add nuw i64 %i.eu, %.sroa.09.0
  br label %bb.f

bb.ad:                                            ; preds = %._crit_edge
  %i.ew = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ew, 0
  br i1 %.not31, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ex = or i64 %1, 1
  %i.ey = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ex, i1 true)
  %i.ez = trunc nuw nsw i64 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 1
  %i.fb = xor i32 %i.fa, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.fb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %bb.af
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRcNvYBW_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2470 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.co, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRcNvYB13_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.021.0 = phi i8 [ %i.bh, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRcNvYB13_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRcNvYB13_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRcNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !2471, !nonnull !12, !align !42, !noundef !12
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !2471, !nonnull !12, !align !42, !noundef !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  %i.q = load i32, ptr %.val10.i, align 4, !range !43, !alias.scope !2472, !noalias !2474, !noundef !12 ; 3 uses
  %i.r = load i32, ptr %.val11.i, align 4, !range !43, !alias.scope !2473, !noalias !2474, !noundef !12
  %i.s = icmp samesign ult i32 %i.q, %i.r         ; 2 uses
  %.not33.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.s, label %.preheader.i, label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.k
  br i1 %.not33.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not33.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, label %.lr.ph28.i

.lr.ph.i:                                         ; preds = %.preheader22.i, %bb.l
  %i.t = phi i32 [ %i.v, %bb.l ], [ %i.q, %.preheader22.i ]
  %.sroa.01.0.i24.i = phi i64 [ %i.x, %bb.l ], [ 2, %.preheader22.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i24.i
  %.val8.i = load ptr, ptr %i.u, align 8, !alias.scope !2471, !nonnull !12, !align !42, !noundef !12
  %i.v = load i32, ptr %.val8.i, align 4, !range !43, !alias.scope !2475, !noalias !2474, !noundef !12 ; 2 uses
  %i.w = icmp samesign ult i32 %i.v, %i.t
  br i1 %i.w, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRcNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.x = add nuw nsw i64 %.sroa.01.0.i24.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.x, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRcNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.lr.ph28.i:                                       ; preds = %.preheader.i, %bb.m
  %i.y = phi i32 [ %i.aa, %bb.m ], [ %i.q, %.preheader.i ]
  %.sroa.01.1.i27.i = phi i64 [ %i.ac, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i27.i
  %.val.i = load ptr, ptr %i.z, align 8, !alias.scope !2471, !nonnull !12, !align !42, !noundef !12
  %i.aa = load i32, ptr %.val.i, align 4, !range !43, !alias.scope !2476, !noalias !2474, !noundef !12 ; 2 uses
  %i.ab = icmp samesign ult i32 %i.aa, %i.y
  br i1 %i.ab, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRcNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i

bb.m:                                             ; preds = %.lr.ph28.i
  %i.ac = add nuw nsw i64 %.sroa.01.1.i27.i, 1    ; 2 uses
  %exitcond36.not.i = icmp eq i64 %i.ac, %i.m
  br i1 %exitcond36.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRcNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph28.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRcNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph28.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i27.i, %.lr.ph28.i ], [ %.sroa.01.0.i24.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.ad = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ad)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRcNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc7reverseCsEhZmuQNqkz_11ruff_linter.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i12.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i12.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRcNvYB13_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i13.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRcNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i13.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  %i.af = shl nuw nsw i64 %.sroa.0.0.i13.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRcNvYB13_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc7reverseCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, %middle.block, %.preheader22.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i19.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader22.i ], [ %.sroa.0.0.i515862.i, %middle.block ], [ %.sroa.0.0.i515862.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ]
  %i.ah = shl nuw nsw i64 %.sroa.0.0.i19.i, 1
  %i.ai = or disjoint i64 %i.ah, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRcNvYB13_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.q:                                             ; preds = %bb.n
  %i.aj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  %.not.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.ak = phi i64 [ %i.aj, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i515862.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i515862.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ak, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i
  %n.vec = and i64 %i.ak, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = xor i64 %index, -1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.ao = getelementptr [8 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.an, align 8, !alias.scope !2479
  %wide.load59 = load <2 x ptr>, ptr %i.ap, align 8, !alias.scope !2479
  %i.aq = getelementptr i8, ptr %i.ao, i64 -8     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ao, i64 -24    ; 2 uses
  %wide.load60 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !2480
  %wide.load61 = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !2480
  %reverse = shufflevector <2 x i64> %wide.load60, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse62 = shufflevector <2 x i64> %wide.load61, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.an, align 8, !alias.scope !2479
  store <2 x i64> %reverse62, ptr %i.ap, align 8, !alias.scope !2479
  %reverse63 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse64 = shufflevector <2 x ptr> %wide.load59, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse63, ptr %i.aq, align 8, !alias.scope !2480
  store <2 x ptr> %reverse64, ptr %i.ar, align 8, !alias.scope !2480
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !2468

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.ay, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.preheader ] ; 3 uses
  %i.at = xor i64 %.sroa.0.016.i.i.i, -1
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.al, i64 %i.at ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !alias.scope !2479, !nonnull !12, !align !42, !noundef !12
  %i.ax = load i64, ptr %i.av, align 8, !alias.scope !2480
  store i64 %i.ax, ptr %i.au, align 8, !alias.scope !2479
  store ptr %i.aw, ptr %i.av, align 8, !alias.scope !2480
  %i.ay = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.ak
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, !llvm.loop !2469

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRcNvYB13_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc7reverseCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.ai, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRc7reverseCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.ag, %bb.p ], [ %i.ae, %bb.o ] ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1
  %i.ba = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az
  %i.bc = add nuw nsw i64 %i.ba, %factor
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false)
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRcNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.02.138 = phi i64 [ %i.bi, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRcNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRcNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bi = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRcNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRcNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRcNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !12 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 5 uses
  %i.bq = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 5 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs ; 3 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.137 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.137
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bz = shl nuw nsw i64 %i.br, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRcNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bv, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRcNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 1152921504606846976) %i.bp, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ce, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRcNvYBX_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.bp, ptr noalias noundef nonnull %5)
  %i.cf = shl nuw nsw i64 %i.br, 1
  %i.cg = or disjoint i64 %i.cf, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRcNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.x:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp
  %i.ci = or i64 %i.bq, 1
  %i.cj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRcNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %i.ch, i64 noundef range(i64 0, 1152921504606846976) %i.bq, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRcNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cg, %bb.w ], [ %i.bz, %bb.t ] ; 2 uses
  %i.cn = icmp ugt i64 %i.bi, 1
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.co = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cp = lshr i64 %.sroa.018.0, 1
  %i.cq = add nuw i64 %i.cp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cr = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cr, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cs = or i64 %1, 1
  %i.ct = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRcNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_comment13IgnoredReasonENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyNtNtB11_4size8TextSizeNCNvMs_B1N_NtB1N_26UselessSuppressionComments4sort0E0EB1V_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 768614336404564651) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2494 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cb, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_comment13IgnoredReasonENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyNtNtB18_4size8TextSizeNCNvMs_B1U_NtB1U_26UselessSuppressionComments4sort0E0EB22_.exit
  %.sroa.021.0 = phi i8 [ %i.au, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_comment13IgnoredReasonENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyNtNtB18_4size8TextSizeNCNvMs_B1U_NtB1U_26UselessSuppressionComments4sort0E0EB22_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_comment13IgnoredReasonENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyNtNtB18_4size8TextSizeNCNvMs_B1U_NtB1U_26UselessSuppressionComments4sort0E0EB22_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_comment13IgnoredReasonENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtB17_4size8TextSizeNCNvMs_B1T_NtB1T_26UselessSuppressionComments4sort0E0EB21_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_comment13IgnoredReasonE7reverseB1t_.exit.i, label %bb.k
end_hunk_3
