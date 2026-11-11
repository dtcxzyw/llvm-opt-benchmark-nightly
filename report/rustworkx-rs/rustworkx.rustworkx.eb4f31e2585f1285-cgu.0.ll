Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 141
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 400
begin_hunk_0_@_RINvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerINtNtB8_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE12fix_position0ECskcxRuJ53GpR_9rustworkx
define internal fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerINtNtB8_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE12fix_position0ECskcxRuJ53GpR_9rustworkx(ptr noalias noundef nonnull align 8 captures(address, ret: address, provenance) %0, i64 %.24.val, i64 %.32.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !56
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %.24.val, i64 noundef %.32.val)
          to label %_RNCNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB7_12DeserializerINtNtB9_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE12fix_position0CskcxRuJ53GpR_9rustworkx.exit unwind label %bb.d

_RNCNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB7_12DeserializerINtNtB9_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE12fix_position0CskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #59
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_RNCNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB7_12DeserializerINtNtB9_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE12fix_position0CskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.0 = phi ptr [ %i.d, %_RNCNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB7_12DeserializerINtNtB9_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE12fix_position0CskcxRuJ53GpR_9rustworkx.exit ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #59
  resume { ptr, i32 } %i.e
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECskcxRuJ53GpR_9rustworkx(ptr noalias noundef nonnull align 8 captures(address, ret: address, provenance) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !56
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0)
          to label %_RNCNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0CskcxRuJ53GpR_9rustworkx.exit unwind label %bb.d

_RNCNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0CskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #59
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_RNCNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0CskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.0 = phi ptr [ %i.d, %_RNCNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0CskcxRuJ53GpR_9rustworkx.exit ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #59
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtCshByAT0BfsDP_7ndarray17impl_constructorsINtB8_9ArrayBaseINtNtB8_9data_repr9OwnedReprdEINtNtNtB8_9dimension3dim3DimAjj2_EdE9from_elemTjjEECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, double noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %1, i64 1) ; 2 uses
  %.not.i.i.1.i = icmp ne i64 %2, 0               ; 2 uses
  br i1 %.not.i.i.1.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CskcxRuJ53GpR_9rustworkx.exit.i.1.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CskcxRuJ53GpR_9rustworkx.exit.thread.i.1.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CskcxRuJ53GpR_9rustworkx.exit.i.1.i: ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %spec.select.i, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %bb.b, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CskcxRuJ53GpR_9rustworkx.exit.thread.i.1.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CskcxRuJ53GpR_9rustworkx.exit.thread.i.1.i: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CskcxRuJ53GpR_9rustworkx.exit.i.1.i, %bb.a
  %.3.i15.i.1.i = phi i64 [ %i.c, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CskcxRuJ53GpR_9rustworkx.exit.i.1.i ], [ %spec.select.i, %bb.a ]
  %i.d = icmp slt i64 %.3.i15.i.1.i, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CskcxRuJ53GpR_9rustworkx.exit.i.1.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CskcxRuJ53GpR_9rustworkx.exit.thread.i.1.i
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 149 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #60
  unreachable

bb.c:                                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldRjjINtNtBa_6option6OptionjENCINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB1B_3dim3DimAjj2_EE0NCB1y_s_0E0CskcxRuJ53GpR_9rustworkx.exit.thread.i.1.i
  %i.e = mul i64 %2, %1                           ; 12 uses
  %i.f = tail call i1 @llvm.is.fpclass.f64(double %3, /* (pzero) */ i32 64)
  %i.g = shl i64 %i.e, 3                          ; 7 uses
  %i.h = icmp ugt i64 %i.e, 2305843009213693951
  %.not.i6.i = icmp ugt i64 %i.g, 9223372036854775800
  %or.cond.i7.i = or i1 %i.h, %.not.i6.i          ; 2 uses
  br i1 %i.f, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %or.cond.i7.i, label %bb.l, label %bb.e, !prof !62

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !382
  %i.j = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !382 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = ptrtoint ptr %i.j to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.h:                                             ; preds = %bb.c
  br i1 %or.cond.i7.i, label %bb.m, label %bb.i, !prof !62

bb.i:                                             ; preds = %bb.h
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !383
  %i.n = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 17) 8) #59, !noalias !383 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = ptrtoint ptr %i.n to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i

bb.l:                                             ; preds = %bb.f, %bb.d
  %.sroa.414.0.ph.i = phi i64 [ 8, %bb.f ], [ 0, %bb.d ]
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.414.0.ph.i, i64 %i.g) #61, !noalias !384
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.g, %bb.e
  %.sroa.414.0.i = phi i64 [ %i.e, %bb.g ], [ 0, %bb.e ] ; 3 uses
  %.sroa.1016.0.i = phi i64 [ %i.l, %bb.g ], [ 8, %bb.e ]
  %i.q = inttoptr i64 %.sroa.1016.0.i to ptr      ; 6 uses
  %i.r = icmp samesign ule i64 %i.e, %.sroa.414.0.i
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp samesign ugt i64 %i.e, 1
  br i1 %i.s, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.t = add nsw i64 %i.e, -1                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.t, -4                       ; 4 uses
  %i.u = shl i64 %n.vec, 3
  %i.v = getelementptr i8, ptr %i.q, i64 %i.u     ; 2 uses
  %i.w = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !noalias !385
  store <2 x double> %broadcast.splat, ptr %i.y, align 8, !noalias !385
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader21

.lr.ph.i.i.preheader21:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.020.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.04.019.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.not.i10.i = icmp eq i64 %i.e, 0
  br i1 %.not.i10.i, label %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i, %middle.block, %._crit_edge.i.i
  %.sroa.0.0.lcssa27.i.i = phi ptr [ %i.q, %._crit_edge.i.i ], [ %i.v, %middle.block ], [ %i.ab, %.lr.ph.i.i ]
  store double %3, ptr %.sroa.0.0.lcssa27.i.i, align 8, !noalias !385
  br label %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader21, %.lr.ph.i.i
  %.sroa.0.020.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.0.020.i.i.ph, %.lr.ph.i.i.preheader21 ] ; 2 uses
  %.sroa.04.019.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.sroa.04.019.i.i.ph, %.lr.ph.i.i.preheader21 ]
  %i.aa = add nuw nsw i64 %.sroa.04.019.i.i, 1    ; 2 uses
  store double %3, ptr %.sroa.0.020.i.i, align 8, !noalias !385
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 8 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aa, %i.e
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !375

bb.m:                                             ; preds = %bb.j, %bb.h
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.j ], [ 0, %bb.h ]
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #61, !noalias !384
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i: ; preds = %bb.k, %bb.i
  %.sroa.10.0.i = phi i64 [ %i.p, %bb.k ], [ 8, %bb.i ]
  %.sroa.4.0.i = phi i64 [ %i.e, %bb.k ], [ 0, %bb.i ]
  %i.ac = inttoptr i64 %.sroa.10.0.i to ptr
  br label %_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit

_RINvXs_NtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit: ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i
  %.sroa.4.0.sink.i = phi i64 [ %.sroa.4.0.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i ], [ %.sroa.414.0.i, %._crit_edge.thread.i.i ], [ %.sroa.414.0.i, %._crit_edge.i.i ]
  %.sink.i2 = phi ptr [ %i.ac, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit9.i ], [ %i.q, %._crit_edge.thread.i.i ], [ %i.q, %._crit_edge.i.i ] ; 3 uses
  %i.ad = icmp ne i64 %1, 0                       ; 2 uses
  %or.cond.not.i.i.i = and i1 %i.ad, %.not.i.i.1.i
  %spec.select.i.i.i = select i1 %i.ad, i64 %2, i64 0 ; 3 uses
  %spec.select1.i.i.i = zext i1 %or.cond.not.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i2) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.ae = icmp slt i64 %spec.select.i.i.i, 0
  %i.af = icmp ugt i64 %1, 1
  %or.cond.i.i.i.i.i = and i1 %i.af, %i.ae
  %.neg.i.i.i = sub i64 1, %1
  %.neg1.i.i.i = mul i64 %spec.select.i.i.i, %.neg.i.i.i
  %.neg2.i.i.i = select i1 %or.cond.i.i.i.i.i, i64 %.neg1.i.i.i, i64 0
  %i.ag = icmp samesign ult i64 %i.e, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sink.i2, i64 %.neg2.i.i.i
  store ptr %.sink.i2, ptr %0, align 8, !alias.scope !388
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !388
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.sink.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !388
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !alias.scope !388
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !389
  %.sroa.516.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %2, ptr %.sroa.516.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !389
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %spec.select.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !390
  %.sroa.7.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %spec.select1.i.i.i, ptr %.sroa.7.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !390
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RINvMs0_NtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planarINtB6_8IntervalTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1b_EE8conflictRINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2T_5types3any5PyAnyEB2O_NtB1f_10UndirectedEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(416) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !65, !noundef !56
  %i.b = trunc nuw i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit57

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val20 = load i64, ptr %i.c, align 4           ; 3 uses
  %i.d = trunc i64 %.val20 to i32
  %i.e = lshr i64 %.val20, 32
  %i.f = trunc nuw i64 %i.e to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !429, !noundef !56
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit57, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val.i = load i64, ptr %i.k, align 8, !alias.scope !430, !noundef !56 ; 3 uses
  %i.l = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !431, !noundef !56
  %i.m = xor i64 %.val.i, %.val20
  %i.n = zext i64 %i.m to i128
  %i.o = zext i64 %i.l to i128                    ; 3 uses
  %i.p = mul nuw i128 %i.o, %i.n                  ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !434, !noundef !56 ; 6 uses
  %i.x = load ptr, ptr %i.j, align 8, !alias.scope !434, !nonnull !56, !noundef !56 ; 6 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.011.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.as, %bb.f ]
  %.pn.i.i = phi i64 [ %i.s, %bb.c ], [ %i.at, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.w      ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.aa, align 1, !noalias !435 ; 2 uses
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.z
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.05.0.i31.i.i = phi i16 [ %i.ar, %bb.e ], [ %i.ac, %bb.d ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.01.0.i.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.w
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %.val2.i.i.i = load i32, ptr %i.aj, align 4, !noalias !436, !noundef !56
  %i.ak = getelementptr i8, ptr %i.ai, i64 -12
  %.val3.i.i.i = load i32, ptr %i.ak, align 4, !noalias !436
  %i.al = icmp eq i32 %.val2.i.i.i, %i.d
  %i.am = icmp eq i32 %.val3.i.i.i, %i.f
  %spec.select.i.i.i.i.i.i = select i1 %i.al, i1 %i.am, i1 false
  br i1 %spec.select.i.i.i.i.i.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit, label %bb.e, !prof !66

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.j, !prof !60

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aq = add i16 %.sroa.05.0.i31.i.i, -1
  %i.ar = and i16 %i.aq, %.sroa.05.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.as = add i64 %.sroa.011.0.i.i.i, 16          ; 2 uses
  %i.at = add i64 %.sroa.01.0.i.i.i, %i.as
  br label %bb.d

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.lr.ph.i.i
  %i.au = zext i32 %2 to i64
  %i.av = zext i32 %3 to i64
  %i.aw = shl nuw i64 %i.av, 32
  %i.ax = or disjoint i64 %i.aw, %i.au
  %i.ay = xor i64 %.val.i, %i.ax
  %i.az = zext i64 %i.ay to i128
  %i.ba = mul nuw i128 %i.o, %i.az                ; 2 uses
  %i.bb = lshr i128 %i.ba, 64
  %i.bc = xor i128 %i.bb, %i.ba
  %i.bd = trunc i128 %i.bc to i64                 ; 2 uses
  %i.be = lshr i64 %i.bd, 57
  %i.bf = trunc nuw nsw i64 %i.be to i8
  %i.bg = insertelement <16 x i8> poison, i8 %i.bf, i64 0
  %i.bh = shufflevector <16 x i8> %i.bg, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.011.0.i.i.i23 = phi i64 [ 0, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit ], [ %i.ca, %bb.i ]
  %.pn.i.i24 = phi i64 [ %i.bd, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit ], [ %i.cb, %bb.i ]
  %.sroa.01.0.i.i.i25 = and i64 %.pn.i.i24, %i.w  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.01.0.i.i.i25
  %.sroa.0.0.copyload.i24.i.i26 = load <16 x i8>, ptr %i.bi, align 1, !noalias !437 ; 2 uses
  %i.bj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i26, %i.bh
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %.not.i.not30.i.i27 = icmp eq i16 %i.bk, 0
  br i1 %.not.i.not30.i.i27, label %._crit_edge.i.i34, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %bb.g, %bb.h
  %.sroa.05.0.i31.i.i29 = phi i16 [ %i.bz, %bb.h ], [ %i.bk, %bb.g ] ; 3 uses
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i29, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = add i64 %.sroa.01.0.i.i.i25, %i.bm
  %i.bo = and i64 %i.bn, %i.w
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.bp ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -16
  %.val2.i.i.i30 = load i32, ptr %i.br, align 4, !noalias !438, !noundef !56
  %i.bs = getelementptr i8, ptr %i.bq, i64 -12
  %.val3.i.i.i31 = load i32, ptr %i.bs, align 4, !noalias !438
  %i.bt = icmp eq i32 %2, %.val2.i.i.i30
  %i.bu = icmp eq i32 %3, %.val3.i.i.i31
  %spec.select.i.i.i.i.i.i32 = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %spec.select.i.i.i.i.i.i32, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit39, label %bb.h, !prof !66

._crit_edge.i.i34:                                ; preds = %bb.h, %bb.g
  %i.bv = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i26, splat (i8 -1)
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %i.bx = icmp eq i16 %i.bw, 0
  br i1 %i.bx, label %bb.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit57, !prof !60

bb.h:                                             ; preds = %.lr.ph.i.i28
  %i.by = add i16 %.sroa.05.0.i31.i.i29, -1
  %i.bz = and i16 %i.by, %.sroa.05.0.i31.i.i29    ; 2 uses
  %.not.i.not.i.i33 = icmp eq i16 %i.bz, 0
  br i1 %.not.i.not.i.i33, label %._crit_edge.i.i34, label %.lr.ph.i.i28

bb.i:                                             ; preds = %._crit_edge.i.i34
  %i.ca = add i64 %.sroa.011.0.i.i.i23, 16        ; 2 uses
  %i.cb = add i64 %.sroa.01.0.i.i.i25, %i.ca
  br label %bb.g

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.cc = zext i32 %2 to i64
  %i.cd = zext i32 %3 to i64
  %i.ce = shl nuw i64 %i.cd, 32
  %i.cf = or disjoint i64 %i.ce, %i.cc
  %i.cg = xor i64 %.val.i, %i.cf
  %i.ch = zext i64 %i.cg to i128
  %i.ci = mul nuw i128 %i.o, %i.ch                ; 2 uses
  %i.cj = lshr i128 %i.ci, 64
  %i.ck = xor i128 %i.cj, %i.ci
  %i.cl = trunc i128 %i.ck to i64                 ; 2 uses
  %i.cm = lshr i64 %i.cl, 57
  %i.cn = trunc nuw nsw i64 %i.cm to i8
  %i.co = insertelement <16 x i8> poison, i8 %i.cn, i64 0
  %i.cp = shufflevector <16 x i8> %i.co, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.sroa.011.0.i.i.i41 = phi i64 [ 0, %bb.j ], [ %i.di, %bb.m ]
  %.pn.i.i42 = phi i64 [ %i.cl, %bb.j ], [ %i.dj, %bb.m ]
  %.sroa.01.0.i.i.i43 = and i64 %.pn.i.i42, %i.w  ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.01.0.i.i.i43
  %.sroa.0.0.copyload.i24.i.i44 = load <16 x i8>, ptr %i.cq, align 1, !noalias !439 ; 2 uses
  %i.cr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i44, %i.cp
  %i.cs = bitcast <16 x i1> %i.cr to i16          ; 2 uses
  %.not.i.not30.i.i45 = icmp eq i16 %i.cs, 0
  br i1 %.not.i.not30.i.i45, label %._crit_edge.i.i52, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.k, %bb.l
end_hunk_0
begin_hunk_1_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCINvBL_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4l_5types3any5PyAnyEB4g_NtB3g_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4l_3err5PyErrE0E0EB5K_:bb.a
_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i9.i: ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit5.i
  %i.je = fcmp ult double %i.io, %i.ir
  br i1 %i.je, label %bb.r, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0Es0_0B5S_.exit

bb.r:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i9.i, %.split.i7.i
  %i.jf = add nuw nsw i64 %.sroa.0.10, 1
  br label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0Es0_0B5S_.exit

bb.s:                                             ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit14.i
  %i.jg = lshr i64 %.sroa.20.0239, 1
  %i.jh = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240, i64 %.sroa.20.0239
  call void @llvm.experimental.noalias.scope.decl(metadata !26863)
  call void @llvm.experimental.noalias.scope.decl(metadata !26864)
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i, %bb.s
  %.sroa.0.016.i.i = phi i64 [ %i.jv, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i ], [ 0, %bb.s ] ; 3 uses
  %i.ji = xor i64 %.sroa.0.016.i.i, -1
  %i.jj = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240, i64 %.sroa.0.016.i.i ; 4 uses
  %i.jk = getelementptr [48 x i8], ptr %i.jh, i64 %i.ji ; 4 uses
  %i.jl = load <2 x i64>, ptr %i.jj, align 1, !alias.scope !26865
  %i.jm = load <2 x i64>, ptr %i.jk, align 1, !alias.scope !26866
  store <2 x i64> %i.jm, ptr %i.jj, align 1, !alias.scope !26865
  store <2 x i64> %i.jl, ptr %i.jk, align 1, !alias.scope !26866
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 16 ; 2 uses
  %i.jp = load <2 x i64>, ptr %i.jn, align 1, !alias.scope !26865
  %i.jq = load <2 x i64>, ptr %i.jo, align 1, !alias.scope !26866
  store <2 x i64> %i.jq, ptr %i.jn, align 1, !alias.scope !26865
  store <2 x i64> %i.jp, ptr %i.jo, align 1, !alias.scope !26866
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jj, i64 32 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 32 ; 2 uses
  %i.jt = load <2 x i64>, ptr %i.jr, align 1, !alias.scope !26865
  %i.ju = load <2 x i64>, ptr %i.js, align 1, !alias.scope !26866
  store <2 x i64> %i.ju, ptr %i.jr, align 1, !alias.scope !26865
  store <2 x i64> %i.jt, ptr %i.js, align 1, !alias.scope !26866
  %i.jv = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.jv, %i.jg
  br i1 %exitcond.not.i.i, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4r_5types3any5PyAnyEB4m_NtB3m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4r_3err5PyErrE0E0EB5Q_.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

.split392:                                        ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i13.i, %.split.i11.i
  %i.jw = icmp eq i64 %.sroa.0.2, 0
  %i.jx = and i1 %or.cond, %i.jw
  br i1 %i.jx, label %bb.t, label %.split392.thread, !prof !121

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4r_5types3any5PyAnyEB4m_NtB3m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4r_3err5PyErrE0E0EB5Q_.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i
  %i.jy = xor i64 %i.aw, -1
  %i.jz = add i64 %.sroa.20.0239, %i.jy           ; 2 uses
  br i1 %or.cond, label %bb.t, label %.split392.thread, !prof !68

.split392.thread:                                 ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit14.i, %.split392, %bb.t, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4r_5types3any5PyAnyEB4m_NtB3m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4r_3err5PyErrE0E0EB5Q_.exit
  %.sroa.0.0.i393 = phi i64 [ %.sroa.0.0.i394, %bb.t ], [ %i.jz, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4r_5types3any5PyAnyEB4m_NtB3m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4r_3err5PyErrE0E0EB5Q_.exit ], [ %i.bs, %.split392 ], [ %i.aw, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit14.i ] ; 6 uses
  %i.ka = phi i32 [ %.pre, %bb.t ], [ %i.u, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4r_5types3any5PyAnyEB4m_NtB3m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4r_3err5PyErrE0E0EB5Q_.exit ], [ %i.u, %.split392 ], [ %i.u, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit14.i ] ; 3 uses
  br i1 %.not, label %bb.v, label %bb.u

bb.t:                                             ; preds = %.split392, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4r_5types3any5PyAnyEB4m_NtB3m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4r_3err5PyErrE0E0EB5Q_.exit
  %.sroa.0.0.i394 = phi i64 [ %i.bs, %.split392 ], [ %i.jz, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4r_5types3any5PyAnyEB4m_NtB3m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4r_3err5PyErrE0E0EB5Q_.exit ]
  %i.kb = call fastcc noundef zeroext i1 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort22partial_insertion_sortNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBZ_INtB4_16ParallelSliceMutBZ_E20par_sort_unstable_byNCINvB11_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtB3x_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4C_3err5PyErrE0E0EB61_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0240, i64 noundef %.sroa.20.0239)
  %.pre = load i32, ptr %i.k, align 4
  br i1 %i.kb, label %.loopexit, label %.split392.thread

bb.u:                                             ; preds = %.split392.thread
  %i.kc = icmp ult i64 %.sroa.0.0.i393, %.sroa.20.0239
  br i1 %i.kc, label %bb.ak, label %bb.al

bb.v:                                             ; preds = %.split, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit, %.split392.thread
  %.sroa.0.0240.lcssa270 = phi ptr [ %.sroa.0.0240, %.split ], [ %.sroa.0.0240, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit ], [ %.sroa.0.0.ph248, %.split392.thread ] ; 16 uses
  %.sroa.20.0239.lcssa261 = phi i64 [ %.sroa.20.0239, %.split ], [ %.sroa.20.0239, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit ], [ %.sroa.20.0.ph247, %.split392.thread ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26867)
  %i.kd = icmp ult i64 %.sroa.0.0.i393, %.sroa.20.0239.lcssa261
  br i1 %i.kd, label %.lr.ph.preheader.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i393, i64 noundef range(i64 21, 192153584101141163) %.sroa.20.0239.lcssa261, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @595) #60, !noalias !26867
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.ke = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240.lcssa270, i64 %.sroa.0.0.i393 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0240.lcssa270, i64 48, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0240.lcssa270, ptr noundef nonnull align 8 dereferenceable(48) %i.ke, i64 48, i1 false), !alias.scope !26868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ke, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0.0240.lcssa270, i64 48 ; 3 uses
  %i.kg = add nsw i64 %.sroa.20.0239.lcssa261, -1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0240.lcssa270, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0240.lcssa270, i64 24 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !26867 ; 9 uses
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0240.lcssa270, i64 32 ; 2 uses
  %.sroa.524.0.copyload.i = load i64, ptr %.sroa.524.0..sroa_idx.i, align 8, !alias.scope !26867 ; 5 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0240.lcssa270, i64 40 ; 2 uses
  %.sroa.6.0.copyload.i = load double, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !26867 ; 9 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i
  %.sroa.0.030.i = phi i64 [ %i.ks, %bb.x ], [ 0, %.lr.ph.preheader.i ] ; 8 uses
  %i.kh = getelementptr inbounds nuw [48 x i8], ptr %i.kf, i64 %.sroa.0.030.i ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 40
  %i.kj = load double, ptr %i.ki, align 8, !alias.scope !26869, !noundef !56 ; 2 uses
  %.not1.i.i = fcmp une double %i.kj, %.sroa.6.0.copyload.i
  br i1 %.not1.i.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i, label %.split.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kl = load i64, ptr %i.kk, align 8, !alias.scope !26869, !noundef !56
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kn = load i64, ptr %i.km, align 8, !alias.scope !26869, !noundef !56 ; 2 uses
  %i.ko = icmp eq i64 %i.kn, %.sroa.4.0.copyload.i
  %i.kp = icmp ult i64 %i.kn, %.sroa.4.0.copyload.i
  %i.kq = icmp ult i64 %i.kl, %.sroa.524.0.copyload.i
  %spec.select.i.i = select i1 %i.ko, i1 %i.kq, i1 %i.kp
  br i1 %spec.select.i.i, label %bb.x, label %.lr.ph35.i.preheader

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i: ; preds = %.lr.ph.i
  %i.kr = fcmp ult double %i.kj, %.sroa.6.0.copyload.i
  br i1 %i.kr, label %bb.x, label %.lr.ph35.i.preheader

.lr.ph35.i.preheader:                             ; preds = %.split.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i
  br label %.lr.ph35.i

bb.x:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i, %.split.i
  %i.ks = add nuw nsw i64 %.sroa.0.030.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ks, %i.kg
  br i1 %exitcond.not.i, label %.split25._crit_edge.thread.i, label %.lr.ph.i

.lr.ph35.i:                                       ; preds = %.lr.ph35.i.preheader, %.backedge.i
  %.sroa.07.033.i = phi i64 [ %i.kt, %.backedge.i ], [ %i.kg, %.lr.ph35.i.preheader ] ; 5 uses
  %i.kt = add nsw i64 %.sroa.07.033.i, -1         ; 3 uses
  %i.ku = icmp ult i64 %i.kt, %i.kg
  call void @llvm.assume(i1 %i.ku)
  %i.kv = getelementptr [48 x i8], ptr %.sroa.0.0240.lcssa270, i64 %.sroa.07.033.i ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  %i.kx = load double, ptr %i.kw, align 8, !alias.scope !26870, !noundef !56 ; 2 uses
  %.not1.i21.i = fcmp une double %i.kx, %.sroa.6.0.copyload.i
  br i1 %.not1.i21.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit24.i, label %.split25.i

.split25.i:                                       ; preds = %.lr.ph35.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.kz = load i64, ptr %i.ky, align 8, !alias.scope !26870, !noundef !56
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.lb = load i64, ptr %i.la, align 8, !alias.scope !26870, !noundef !56 ; 2 uses
  %i.lc = icmp eq i64 %i.lb, %.sroa.4.0.copyload.i
  %i.ld = icmp ult i64 %i.lb, %.sroa.4.0.copyload.i
  %i.le = icmp ult i64 %i.kz, %.sroa.524.0.copyload.i
  %spec.select.i22.i = select i1 %i.lc, i1 %i.le, i1 %i.ld
  br i1 %spec.select.i22.i, label %.split25._crit_edge.i, label %.backedge.i

.split25._crit_edge.i:                            ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit24.i, %.split25.i
  %i.lf = icmp ult i64 %.sroa.07.033.i, %.sroa.0.030.i
  br i1 %i.lf, label %bb.ai, label %.split25._crit_edge.thread.i, !prof !122

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit24.i: ; preds = %.lr.ph35.i
  %i.lg = fcmp ult double %i.kx, %.sroa.6.0.copyload.i
  br i1 %i.lg, label %.split25._crit_edge.i, label %.backedge.i

.backedge.i:                                      ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit24.i, %.split25.i
  %i.lh = icmp ult i64 %.sroa.0.030.i, %i.kt
  br i1 %i.lh, label %.lr.ph35.i, label %.split25._crit_edge.thread.i

.split25._crit_edge.thread.i:                     ; preds = %bb.x, %.backedge.i, %.split25._crit_edge.i
  %.sroa.07.0.lcssa66.i = phi i64 [ %.sroa.07.033.i, %.split25._crit_edge.i ], [ %.sroa.0.030.i, %.backedge.i ], [ %i.kg, %bb.x ] ; 2 uses
  %.sroa.0.0.lcssa.ph6265.i = phi i64 [ %.sroa.0.030.i, %.split25._crit_edge.i ], [ %.sroa.0.030.i, %.backedge.i ], [ %i.kg, %bb.x ] ; 3 uses
  %i.li = getelementptr inbounds nuw [48 x i8], ptr %i.kf, i64 %.sroa.0.0.lcssa.ph6265.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26871)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !26872
  %i.lj = getelementptr inbounds nuw [48 x i8], ptr %i.kf, i64 %.sroa.07.0.lcssa66.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !26872
  br label %bb.y

bb.y:                                             ; preds = %bb.ae, %.split25._crit_edge.thread.i
  %.sroa.084.0.i.i = phi ptr [ null, %.split25._crit_edge.thread.i ], [ %.sroa.084.1.i.i, %bb.ae ] ; 3 uses
  %.sroa.068.0.i.i = phi ptr [ null, %.split25._crit_edge.thread.i ], [ %.sroa.068.1.i.i, %bb.ae ] ; 3 uses
  %.sroa.046.0.i.i = phi ptr [ null, %.split25._crit_edge.thread.i ], [ %.sroa.046.2.i.i, %bb.ae ] ; 3 uses
  %.sroa.044.0.i.i = phi i64 [ 128, %.split25._crit_edge.thread.i ], [ %.sroa.044.1.i.i, %bb.ae ] ; 2 uses
  %.sroa.032.0.i.i = phi ptr [ %i.lj, %.split25._crit_edge.thread.i ], [ %.sroa.032.1.i.i, %bb.ae ] ; 7 uses
  %.sroa.018.0.i.i = phi ptr [ null, %.split25._crit_edge.thread.i ], [ %.sroa.018.2.i.i, %bb.ae ] ; 3 uses
  %.sroa.015.0.i.i = phi i64 [ 128, %.split25._crit_edge.thread.i ], [ %.sroa.015.1.i.i, %bb.ae ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.li, %.split25._crit_edge.thread.i ], [ %spec.select.i25.i, %bb.ae ] ; 6 uses
  %i.lk = ptrtoint ptr %.sroa.032.0.i.i to i64
  %i.ll = ptrtoint ptr %.sroa.01.0.i.i to i64
  %i.lm = sub i64 %i.lk, %i.ll                    ; 2 uses
  %i.ln = icmp ult i64 %i.lm, 12336               ; 2 uses
  br i1 %i.ln, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.aa, %bb.y
  %.sroa.044.1.i.i = phi i64 [ %.sroa.044.0.i.i, %bb.y ], [ %.sroa.060.0.mux.i.i, %bb.aa ], [ %i.lu, %bb.ab ] ; 4 uses
  %.sroa.015.1.i.i = phi i64 [ %.sroa.015.0.i.i, %bb.y ], [ %.sroa.015.0.mux.i.i, %bb.aa ], [ %i.lt, %bb.ab ] ; 4 uses
  %i.lo = icmp eq ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i
  br i1 %i.lo, label %.preheader6.i.i, label %.loopexit7.i.i

.preheader6.i.i:                                  ; preds = %bb.z
  %.not26.i.i = icmp eq i64 %.sroa.015.1.i.i, 0
  br i1 %.not26.i.i, label %.loopexit7.i.i, label %.lr.ph.i.i

bb.aa:                                            ; preds = %bb.y
  %.lhs.trunc.i.i = trunc nuw nsw i64 %i.lm to i16
  %i.lp = udiv i16 %.lhs.trunc.i.i, 48
  %.zext.i.i = zext nneg i16 %i.lp to i64         ; 4 uses
  %i.lq = icmp ult ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i ; 3 uses
  %i.lr = icmp ult ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i
  %or.cond.i.i = select i1 %i.lq, i1 true, i1 %i.lr ; 2 uses
  %i.ls = add nsw i64 %.zext.i.i, -128            ; 2 uses
  %.sroa.060.0.i.i = select i1 %or.cond.i.i, i64 %i.ls, i64 %.zext.i.i
  %.sroa.060.0.mux.i.i = select i1 %i.lq, i64 %i.ls, i64 %.sroa.044.0.i.i
  %.sroa.015.0.mux.i.i = select i1 %i.lq, i64 %.sroa.015.0.i.i, i64 %.sroa.060.0.i.i
  br i1 %or.cond.i.i, label %bb.z, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.lt = lshr i64 %.zext.i.i, 1                  ; 2 uses
  %i.lu = sub nsw i64 %.zext.i.i, %i.lt
  br label %bb.z

.loopexit7.i.i:                                   ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65, %.preheader6.i.i, %bb.z
  %.sroa.068.1.i.i = phi ptr [ %.sroa.068.0.i.i, %bb.z ], [ %i.i, %.preheader6.i.i ], [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65 ] ; 7 uses
  %.sroa.018.1.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.z ], [ %i.i, %.preheader6.i.i ], [ %i.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65 ] ; 6 uses
  %i.lv = icmp eq ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i
  br i1 %i.lv, label %.preheader5.i.i, label %.loopexit.i.i

.preheader5.i.i:                                  ; preds = %.loopexit7.i.i
  %.not27.i.i = icmp eq i64 %.sroa.044.1.i.i, 0
  br i1 %.not27.i.i, label %.loopexit.i.i, label %.lr.ph14.i.i

.lr.ph.i.i:                                       ; preds = %.preheader6.i.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65
  %.sroa.065.010.i.i = phi ptr [ %i.mj, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65 ], [ %.sroa.01.0.i.i, %.preheader6.i.i ] ; 4 uses
  %.sroa.068.29.i.i = phi ptr [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65 ], [ %i.i, %.preheader6.i.i ] ; 2 uses
  %.sroa.0105.08.i.i = phi i64 [ %i.lw, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65 ], [ 0, %.preheader6.i.i ] ; 2 uses
  %i.lw = add nuw i64 %.sroa.0105.08.i.i, 1       ; 2 uses
  %i.lx = trunc i64 %.sroa.0105.08.i.i to i8
  store i8 %i.lx, ptr %.sroa.068.29.i.i, align 1, !noalias !26872
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 40
  %i.lz = load double, ptr %i.ly, align 8, !alias.scope !26873, !noundef !56 ; 2 uses
  %i.ma = fcmp ult double %i.lz, %.sroa.6.0.copyload.i
  %.not1.i.i.i63 = fcmp une double %i.lz, %.sroa.6.0.copyload.i
  br i1 %.not1.i.i.i63, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 32
  %i.mc = load i64, ptr %i.mb, align 8, !alias.scope !26873, !noundef !56
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 24
  %i.me = load i64, ptr %i.md, align 8, !alias.scope !26873, !noundef !56 ; 2 uses
  %i.mf = icmp eq i64 %i.me, %.sroa.4.0.copyload.i
  %i.mg = icmp ult i64 %i.me, %.sroa.4.0.copyload.i
  %i.mh = icmp ult i64 %i.mc, %.sroa.524.0.copyload.i
  %spec.select.i.i.i64 = select i1 %i.mf, i1 %i.mh, i1 %i.mg
  br label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65: ; preds = %bb.ac, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i.i = phi i1 [ %i.ma, %.lr.ph.i.i ], [ %spec.select.i.i.i64, %bb.ac ]
  %i.mi = xor i1 %.sroa.0.0.i.i.i.i.i, true
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.mi to i64
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.068.29.i.i, i64 %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 48
  %exitcond.not.i.i66 = icmp eq i64 %i.lw, %.sroa.015.1.i.i
  br i1 %exitcond.not.i.i66, label %.loopexit7.i.i, label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i, %.preheader5.i.i, %.loopexit7.i.i
  %.sroa.084.1.i.i = phi ptr [ %.sroa.084.0.i.i, %.loopexit7.i.i ], [ %i.h, %.preheader5.i.i ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i ] ; 7 uses
  %.sroa.046.1.i.i = phi ptr [ %.sroa.046.0.i.i, %.loopexit7.i.i ], [ %i.h, %.preheader5.i.i ], [ %i.h, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i ] ; 5 uses
  %i.mk = ptrtoint ptr %.sroa.068.1.i.i to i64
  %i.ml = ptrtoint ptr %.sroa.018.1.i.i to i64
  %i.mm = sub i64 %i.mk, %i.ml
  %i.mn = ptrtoint ptr %.sroa.084.1.i.i to i64
  %i.mo = ptrtoint ptr %.sroa.046.1.i.i to i64
  %i.mp = sub i64 %i.mn, %i.mo
  %i.mq = call i64 @llvm.umin.i64(i64 %i.mm, i64 %i.mp) ; 3 uses
  %.not.i.i = icmp eq i64 %i.mq, 0
  br i1 %.not.i.i, label %bb.ae, label %bb.af

.lr.ph14.i.i:                                     ; preds = %.preheader5.i.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i
  %.sroa.079.013.i.i = phi ptr [ %i.ms, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i ], [ %.sroa.032.0.i.i, %.preheader5.i.i ] ; 4 uses
  %.sroa.084.212.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i ], [ %i.h, %.preheader5.i.i ] ; 2 uses
  %.sroa.0107.011.i.i = phi i64 [ %i.mr, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i ], [ 0, %.preheader5.i.i ] ; 2 uses
  %i.mr = add nuw i64 %.sroa.0107.011.i.i, 1      ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -48
  %i.mt = trunc i64 %.sroa.0107.011.i.i to i8
  store i8 %i.mt, ptr %.sroa.084.212.i.i, align 1, !noalias !26872
  %i.mu = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -8
  %i.mv = load double, ptr %i.mu, align 8, !alias.scope !26874, !noundef !56 ; 2 uses
  %i.mw = fcmp ult double %i.mv, %.sroa.6.0.copyload.i
  %.not1.i115.i.i = fcmp une double %i.mv, %.sroa.6.0.copyload.i
  br i1 %.not1.i115.i.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph14.i.i
  %i.mx = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -16
  %i.my = load i64, ptr %i.mx, align 8, !alias.scope !26874, !noundef !56
  %i.mz = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -24
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !26874, !noundef !56 ; 2 uses
  %i.nb = icmp eq i64 %i.na, %.sroa.4.0.copyload.i
  %i.nc = icmp ult i64 %i.na, %.sroa.4.0.copyload.i
  %i.nd = icmp ult i64 %i.my, %.sroa.524.0.copyload.i
  %spec.select.i116.i.i = select i1 %i.nb, i1 %i.nd, i1 %i.nc
  br label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i: ; preds = %bb.ad, %.lr.ph14.i.i
  %.sroa.0.0.i.i.i117.i.i = phi i1 [ %i.mw, %.lr.ph14.i.i ], [ %spec.select.i116.i.i, %bb.ad ]
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %.sroa.0.0.i.i.i117.i.i to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.212.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %exitcond32.not.i.i = icmp eq i64 %i.mr, %.sroa.044.1.i.i
  br i1 %exitcond32.not.i.i, label %.loopexit.i.i, label %.lr.ph14.i.i

bb.ae:                                            ; preds = %._crit_edge.i.i, %.loopexit.i.i
  %.sroa.046.2.i.i = phi ptr [ %i.nt, %._crit_edge.i.i ], [ %.sroa.046.1.i.i, %.loopexit.i.i ] ; 5 uses
  %.sroa.018.2.i.i = phi ptr [ %i.ns, %._crit_edge.i.i ], [ %.sroa.018.1.i.i, %.loopexit.i.i ] ; 5 uses
  %i.ne = icmp eq ptr %.sroa.018.2.i.i, %.sroa.068.1.i.i
  %spec.select.idx.i.i = select i1 %i.ne, i64 %.sroa.015.1.i.i, i64 0
  %spec.select.i25.i = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %spec.select.idx.i.i ; 9 uses
  %i.nf = icmp eq ptr %.sroa.046.2.i.i, %.sroa.084.1.i.i
  %i.ng = sub nsw i64 0, %.sroa.044.1.i.i
  %.sroa.032.1.idx.i.i = select i1 %i.nf, i64 %i.ng, i64 0
  %.sroa.032.1.i.i = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %.sroa.032.1.idx.i.i ; 6 uses
  br i1 %i.ln, label %bb.ag, label %bb.y

bb.af:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.nh = load i8, ptr %.sroa.018.1.i.i, align 1, !noalias !26872, !noundef !56
  %i.ni = zext i8 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %i.ni
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.nj, i64 48, i1 false), !noalias !26875
  %i.nk = load i8, ptr %.sroa.046.1.i.i, align 1, !noalias !26872, !noundef !56 ; 2 uses
  %i.nl = zext i8 %i.nk to i64
  %i.nm = xor i64 %i.nl, -1                       ; 2 uses
  %i.nn = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %i.nm
  %i.no = load i8, ptr %.sroa.018.1.i.i, align 1, !noalias !26872, !noundef !56
  %i.np = zext i8 %i.no to i64
  %i.nq = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %i.np
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nq, ptr noundef nonnull align 8 dereferenceable(48) %i.nn, i64 48, i1 false), !alias.scope !26876
  %.not28.i.i = icmp eq i64 %i.mq, 1
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph19.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph19.i.i, %bb.af
  %.pre-phi47.i = phi i64 [ %i.nm, %bb.af ], [ %i.og, %.lr.ph19.i.i ]
  %.sroa.046.3.lcssa.i.i = phi ptr [ %.sroa.046.1.i.i, %bb.af ], [ %i.od, %.lr.ph19.i.i ]
  %.sroa.018.3.lcssa.i.i = phi ptr [ %.sroa.018.1.i.i, %bb.af ], [ %i.nw, %.lr.ph19.i.i ]
  %i.nr = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %.pre-phi47.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nr, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !26875
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.018.3.lcssa.i.i, i64 1
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.046.3.lcssa.i.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

.lr.ph19.i.i:                                     ; preds = %bb.af, %.lr.ph19.i.i
  %i.nu = phi i8 [ %i.oe, %.lr.ph19.i.i ], [ %i.nk, %bb.af ]
  %.sroa.018.318.i.i = phi ptr [ %i.nw, %.lr.ph19.i.i ], [ %.sroa.018.1.i.i, %bb.af ]
  %.sroa.046.317.i.i = phi ptr [ %i.od, %.lr.ph19.i.i ], [ %.sroa.046.1.i.i, %bb.af ]
  %.sroa.0109.016.i.i = phi i64 [ %i.nv, %.lr.ph19.i.i ], [ 1, %bb.af ]
  %i.nv = add nuw i64 %.sroa.0109.016.i.i, 1      ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.018.318.i.i, i64 1 ; 3 uses
  %i.nx = load i8, ptr %i.nw, align 1, !noalias !26872, !noundef !56
  %i.ny = zext i8 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %i.ny ; 2 uses
  %i.oa = zext i8 %i.nu to i64
  %i.ob = xor i64 %i.oa, -1
  %i.oc = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %i.ob
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.oc, ptr noundef nonnull align 8 dereferenceable(48) %i.nz, i64 48, i1 false), !alias.scope !26876
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.046.317.i.i, i64 1 ; 3 uses
  %i.oe = load i8, ptr %i.od, align 1, !noalias !26872, !noundef !56 ; 2 uses
  %i.of = zext i8 %i.oe to i64
  %i.og = xor i64 %i.of, -1                       ; 2 uses
  %i.oh = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %i.og
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nz, ptr noundef nonnull align 8 dereferenceable(48) %i.oh, i64 48, i1 false), !alias.scope !26876
  %exitcond33.not.i.i = icmp eq i64 %i.nv, %i.mq
  br i1 %exitcond33.not.i.i, label %._crit_edge.i.i, label %.lr.ph19.i.i

bb.ag:                                            ; preds = %bb.ae
  %.sroa.084.1.i.i.lcssa608609 = ptrtoaddr ptr %.sroa.084.1.i.i to i64 ; 2 uses
  %.sroa.046.2.i.i.lcssa610611 = ptrtoaddr ptr %.sroa.046.2.i.i to i64 ; 2 uses
  %i.oi = icmp ult ptr %.sroa.018.2.i.i, %.sroa.068.1.i.i
  br i1 %i.oi, label %.preheader.i.i.preheader, label %bb.ah

.preheader.i.i.preheader:                         ; preds = %bb.ag
  %.sroa.018.2.i.i.lcssa614615 = ptrtoaddr ptr %.sroa.018.2.i.i to i64 ; 2 uses
  %.sroa.068.1.i.i.lcssa612613 = ptrtoaddr ptr %.sroa.068.1.i.i to i64 ; 2 uses
  %i.oj = sub i64 %.sroa.068.1.i.i.lcssa612613, %.sroa.018.2.i.i.lcssa614615
  %xtraiter616 = and i64 %i.oj, 1
  %lcmp.mod617.not = icmp eq i64 %xtraiter616, 0
  br i1 %lcmp.mod617.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader
  %i.ok = getelementptr inbounds i8, ptr %.sroa.068.1.i.i, i64 -1 ; 2 uses
  %i.ol = load i8, ptr %i.ok, align 1, !noalias !26872, !noundef !56
  %i.om = zext i8 %i.ol to i64
  %i.on = getelementptr inbounds nuw [48 x i8], ptr %spec.select.i25.i, i64 %i.om ; 2 uses
  %i.oo = getelementptr inbounds i8, ptr %.sroa.032.1.i.i, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.on, i64 48, i1 false), !noalias !26875
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.on, ptr noundef nonnull align 8 dereferenceable(48) %i.oo, i64 48, i1 false), !alias.scope !26876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.oo, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !26875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.sroa.032.225.i.i.unr = phi ptr [ %.sroa.032.1.i.i, %.preheader.i.i.preheader ], [ %i.oo, %.preheader.i.i.prol ]
  %.sroa.068.324.i.i.unr = phi ptr [ %.sroa.068.1.i.i, %.preheader.i.i.preheader ], [ %i.ok, %.preheader.i.i.prol ]
  %.lcssa577.unr = phi ptr [ poison, %.preheader.i.i.preheader ], [ %i.oo, %.preheader.i.i.prol ]
  %i.op = add i64 %.sroa.068.1.i.i.lcssa612613, -1
  %i.oq = icmp eq i64 %i.op, %.sroa.018.2.i.i.lcssa614615
  br i1 %i.oq, label %.loopexit.i, label %.preheader.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.or = icmp ult ptr %.sroa.046.2.i.i, %.sroa.084.1.i.i
  br i1 %i.or, label %.preheader4.i.i.preheader, label %.loopexit.i

.preheader4.i.i.preheader:                        ; preds = %bb.ah
end_hunk_1
begin_hunk_2_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCINvBL_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4q_5types3any5PyAnyEB4l_NtB3l_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4q_3err5PyErrEs4_0E0EB5P_:bb.a
_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i5.i84: ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit4.i
  %i.jq = icmp ult i64 %i.iz, %i.jc
  br i1 %i.jq, label %bb.r, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0Es0_0B5X_.exit

bb.r:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i5.i84, %.split.i6.i86
  %i.jr = add nuw nsw i64 %.sroa.0.10, 1
  br label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0Es0_0B5X_.exit

bb.s:                                             ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit12.i
  %i.js = lshr i64 %.sroa.20.0237, 1
  %i.jt = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238, i64 %.sroa.20.0237
  call void @llvm.experimental.noalias.scope.decl(metadata !27154)
  call void @llvm.experimental.noalias.scope.decl(metadata !27155)
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i, %bb.s
  %.sroa.0.016.i.i = phi i64 [ %i.kh, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i ], [ 0, %bb.s ] ; 3 uses
  %i.ju = xor i64 %.sroa.0.016.i.i, -1
  %i.jv = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238, i64 %.sroa.0.016.i.i ; 4 uses
  %i.jw = getelementptr [48 x i8], ptr %i.jt, i64 %i.ju ; 4 uses
  %i.jx = load <2 x i64>, ptr %i.jv, align 1, !alias.scope !27156
  %i.jy = load <2 x i64>, ptr %i.jw, align 1, !alias.scope !27157
  store <2 x i64> %i.jy, ptr %i.jv, align 1, !alias.scope !27156
  store <2 x i64> %i.jx, ptr %i.jw, align 1, !alias.scope !27157
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 16 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 2 uses
  %i.kb = load <2 x i64>, ptr %i.jz, align 1, !alias.scope !27156
  %i.kc = load <2 x i64>, ptr %i.ka, align 1, !alias.scope !27157
  store <2 x i64> %i.kc, ptr %i.jz, align 1, !alias.scope !27156
  store <2 x i64> %i.kb, ptr %i.ka, align 1, !alias.scope !27157
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 32 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jw, i64 32 ; 2 uses
  %i.kf = load <2 x i64>, ptr %i.kd, align 1, !alias.scope !27156
  %i.kg = load <2 x i64>, ptr %i.ke, align 1, !alias.scope !27157
  store <2 x i64> %i.kg, ptr %i.kd, align 1, !alias.scope !27156
  store <2 x i64> %i.kf, ptr %i.ke, align 1, !alias.scope !27157
  %i.kh = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.kh, %i.js
  br i1 %exitcond.not.i.i, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4w_5types3any5PyAnyEB4r_NtB3r_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4w_3err5PyErrEs4_0E0EB5V_.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

.split391:                                        ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i9.i, %.split.i10.i
  %i.ki = icmp eq i64 %.sroa.0.2, 0
  %i.kj = and i1 %or.cond, %i.ki
  br i1 %i.kj, label %bb.t, label %.split391.thread, !prof !121

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4w_5types3any5PyAnyEB4r_NtB3r_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4w_3err5PyErrEs4_0E0EB5V_.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i
  %i.kk = xor i64 %i.ax, -1
  %i.kl = add i64 %.sroa.20.0237, %i.kk           ; 2 uses
  br i1 %or.cond, label %bb.t, label %.split391.thread, !prof !68

.split391.thread:                                 ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit12.i, %.split391, %bb.t, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4w_5types3any5PyAnyEB4r_NtB3r_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4w_3err5PyErrEs4_0E0EB5V_.exit
  %.sroa.0.0.i392 = phi i64 [ %.sroa.0.0.i393, %bb.t ], [ %i.kl, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4w_5types3any5PyAnyEB4r_NtB3r_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4w_3err5PyErrEs4_0E0EB5V_.exit ], [ %i.bu, %.split391 ], [ %i.ax, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit12.i ] ; 6 uses
  %i.km = phi i32 [ %.pre, %bb.t ], [ %i.u, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4w_5types3any5PyAnyEB4r_NtB3r_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4w_3err5PyErrEs4_0E0EB5V_.exit ], [ %i.u, %.split391 ], [ %i.u, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit12.i ] ; 3 uses
  br i1 %.not, label %bb.v, label %bb.u

bb.t:                                             ; preds = %.split391, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4w_5types3any5PyAnyEB4r_NtB3r_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4w_3err5PyErrEs4_0E0EB5V_.exit
  %.sroa.0.0.i393 = phi i64 [ %i.bu, %.split391 ], [ %i.kl, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4w_5types3any5PyAnyEB4r_NtB3r_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4w_3err5PyErrEs4_0E0EB5V_.exit ]
  %i.kn = call fastcc noundef zeroext i1 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort22partial_insertion_sortNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBZ_INtB4_16ParallelSliceMutBZ_E20par_sort_unstable_byNCINvB11_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4H_5types3any5PyAnyEB4C_NtB3C_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4H_3err5PyErrEs4_0E0EB66_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0238, i64 noundef %.sroa.20.0237)
  %.pre = load i32, ptr %i.k, align 4
  br i1 %i.kn, label %.loopexit, label %.split391.thread

bb.u:                                             ; preds = %.split391.thread
  %i.ko = icmp ult i64 %.sroa.0.0.i392, %.sroa.20.0237
  br i1 %i.ko, label %bb.ak, label %bb.al

bb.v:                                             ; preds = %.split, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit, %.split391.thread
  %.sroa.0.0238.lcssa268 = phi ptr [ %.sroa.0.0238, %.split ], [ %.sroa.0.0238, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit ], [ %.sroa.0.0.ph246, %.split391.thread ] ; 16 uses
  %.sroa.20.0237.lcssa259 = phi i64 [ %.sroa.20.0237, %.split ], [ %.sroa.20.0237, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit ], [ %.sroa.20.0.ph245, %.split391.thread ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27158)
  %i.kp = icmp ult i64 %.sroa.0.0.i392, %.sroa.20.0237.lcssa259
  br i1 %i.kp, label %.lr.ph.preheader.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i392, i64 noundef range(i64 21, 192153584101141163) %.sroa.20.0237.lcssa259, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @595) #60, !noalias !27158
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.kq = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238.lcssa268, i64 %.sroa.0.0.i392 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0238.lcssa268, i64 48, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0238.lcssa268, ptr noundef nonnull align 8 dereferenceable(48) %i.kq, i64 48, i1 false), !alias.scope !27159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kq, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0.0238.lcssa268, i64 48 ; 3 uses
  %i.ks = add nsw i64 %.sroa.20.0237.lcssa259, -1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0238.lcssa268, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0238.lcssa268, i64 24 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !27158 ; 9 uses
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0238.lcssa268, i64 32 ; 2 uses
  %.sroa.524.0.copyload.i = load i64, ptr %.sroa.524.0..sroa_idx.i, align 8, !alias.scope !27158 ; 9 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0238.lcssa268, i64 40 ; 2 uses
  %.sroa.6.0.copyload.i = load double, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !27158 ; 5 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i
  %.sroa.0.030.i = phi i64 [ %i.lf, %bb.x ], [ 0, %.lr.ph.preheader.i ] ; 8 uses
  %i.kt = getelementptr inbounds nuw [48 x i8], ptr %i.kr, i64 %.sroa.0.030.i ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load i64, ptr %i.ku, align 8, !alias.scope !27160, !noundef !56 ; 2 uses
  %i.kw = icmp eq i64 %i.kv, %.sroa.4.0.copyload.i
  br i1 %i.kw, label %.split.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 40
  %i.ky = load double, ptr %i.kx, align 8, !alias.scope !27160, !noundef !56
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.la = load i64, ptr %i.kz, align 8, !alias.scope !27160, !noundef !56 ; 2 uses
  %i.lb = icmp eq i64 %i.la, %.sroa.524.0.copyload.i
  %i.lc = icmp ult i64 %i.la, %.sroa.524.0.copyload.i
  %i.ld = fcmp ult double %i.ky, %.sroa.6.0.copyload.i
  %spec.select.i.i = select i1 %i.lb, i1 %i.ld, i1 %i.lc
  br i1 %spec.select.i.i, label %bb.x, label %.lr.ph35.i.preheader

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i: ; preds = %.lr.ph.i
  %i.le = icmp ult i64 %i.kv, %.sroa.4.0.copyload.i
  br i1 %i.le, label %bb.x, label %.lr.ph35.i.preheader

.lr.ph35.i.preheader:                             ; preds = %.split.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i
  br label %.lr.ph35.i

bb.x:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i, %.split.i
  %i.lf = add nuw nsw i64 %.sroa.0.030.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.lf, %i.ks
  br i1 %exitcond.not.i, label %.split25._crit_edge.thread.i, label %.lr.ph.i

.lr.ph35.i:                                       ; preds = %.lr.ph35.i.preheader, %.backedge.i
  %.sroa.07.033.i = phi i64 [ %i.lg, %.backedge.i ], [ %i.ks, %.lr.ph35.i.preheader ] ; 5 uses
  %i.lg = add nsw i64 %.sroa.07.033.i, -1         ; 3 uses
  %i.lh = icmp ult i64 %i.lg, %i.ks
  call void @llvm.assume(i1 %i.lh)
  %i.li = getelementptr [48 x i8], ptr %.sroa.0.0238.lcssa268, i64 %.sroa.07.033.i ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load i64, ptr %i.lj, align 8, !alias.scope !27161, !noundef !56 ; 2 uses
  %i.ll = icmp eq i64 %i.lk, %.sroa.4.0.copyload.i
  br i1 %i.ll, label %.split25.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit23.i

.split25.i:                                       ; preds = %.lr.ph35.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 40
  %i.ln = load double, ptr %i.lm, align 8, !alias.scope !27161, !noundef !56
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.lp = load i64, ptr %i.lo, align 8, !alias.scope !27161, !noundef !56 ; 2 uses
  %i.lq = icmp eq i64 %i.lp, %.sroa.524.0.copyload.i
  %i.lr = icmp ult i64 %i.lp, %.sroa.524.0.copyload.i
  %i.ls = fcmp ult double %i.ln, %.sroa.6.0.copyload.i
  %spec.select.i22.i = select i1 %i.lq, i1 %i.ls, i1 %i.lr
  br i1 %spec.select.i22.i, label %.split25._crit_edge.i, label %.backedge.i

.split25._crit_edge.i:                            ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit23.i, %.split25.i
  %i.lt = icmp ult i64 %.sroa.07.033.i, %.sroa.0.030.i
  br i1 %i.lt, label %bb.ai, label %.split25._crit_edge.thread.i, !prof !122

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit23.i: ; preds = %.lr.ph35.i
  %i.lu = icmp ult i64 %i.lk, %.sroa.4.0.copyload.i
  br i1 %i.lu, label %.split25._crit_edge.i, label %.backedge.i

.backedge.i:                                      ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit23.i, %.split25.i
  %i.lv = icmp ult i64 %.sroa.0.030.i, %i.lg
  br i1 %i.lv, label %.lr.ph35.i, label %.split25._crit_edge.thread.i

.split25._crit_edge.thread.i:                     ; preds = %bb.x, %.backedge.i, %.split25._crit_edge.i
  %.sroa.07.0.lcssa66.i = phi i64 [ %.sroa.07.033.i, %.split25._crit_edge.i ], [ %.sroa.0.030.i, %.backedge.i ], [ %i.ks, %bb.x ] ; 2 uses
  %.sroa.0.0.lcssa.ph6265.i = phi i64 [ %.sroa.0.030.i, %.split25._crit_edge.i ], [ %.sroa.0.030.i, %.backedge.i ], [ %i.ks, %bb.x ] ; 3 uses
  %i.lw = getelementptr inbounds nuw [48 x i8], ptr %i.kr, i64 %.sroa.0.0.lcssa.ph6265.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !27163
  %i.lx = getelementptr inbounds nuw [48 x i8], ptr %i.kr, i64 %.sroa.07.0.lcssa66.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !27163
  br label %bb.y

bb.y:                                             ; preds = %bb.ae, %.split25._crit_edge.thread.i
  %.sroa.084.0.i.i = phi ptr [ null, %.split25._crit_edge.thread.i ], [ %.sroa.084.1.i.i, %bb.ae ] ; 3 uses
  %.sroa.068.0.i.i = phi ptr [ null, %.split25._crit_edge.thread.i ], [ %.sroa.068.1.i.i, %bb.ae ] ; 3 uses
  %.sroa.046.0.i.i = phi ptr [ null, %.split25._crit_edge.thread.i ], [ %.sroa.046.2.i.i, %bb.ae ] ; 3 uses
  %.sroa.044.0.i.i = phi i64 [ 128, %.split25._crit_edge.thread.i ], [ %.sroa.044.1.i.i, %bb.ae ] ; 2 uses
  %.sroa.032.0.i.i = phi ptr [ %i.lx, %.split25._crit_edge.thread.i ], [ %.sroa.032.1.i.i, %bb.ae ] ; 7 uses
  %.sroa.018.0.i.i = phi ptr [ null, %.split25._crit_edge.thread.i ], [ %.sroa.018.2.i.i, %bb.ae ] ; 3 uses
  %.sroa.015.0.i.i = phi i64 [ 128, %.split25._crit_edge.thread.i ], [ %.sroa.015.1.i.i, %bb.ae ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.lw, %.split25._crit_edge.thread.i ], [ %spec.select.i24.i, %bb.ae ] ; 6 uses
  %i.ly = ptrtoint ptr %.sroa.032.0.i.i to i64
  %i.lz = ptrtoint ptr %.sroa.01.0.i.i to i64
  %i.ma = sub i64 %i.ly, %i.lz                    ; 2 uses
  %i.mb = icmp ult i64 %i.ma, 12336               ; 2 uses
  br i1 %i.mb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.aa, %bb.y
  %.sroa.044.1.i.i = phi i64 [ %.sroa.044.0.i.i, %bb.y ], [ %.sroa.060.0.mux.i.i, %bb.aa ], [ %i.mi, %bb.ab ] ; 4 uses
  %.sroa.015.1.i.i = phi i64 [ %.sroa.015.0.i.i, %bb.y ], [ %.sroa.015.0.mux.i.i, %bb.aa ], [ %i.mh, %bb.ab ] ; 4 uses
  %i.mc = icmp eq ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i
  br i1 %i.mc, label %.preheader6.i.i, label %.loopexit7.i.i

.preheader6.i.i:                                  ; preds = %bb.z
  %.not26.i.i = icmp eq i64 %.sroa.015.1.i.i, 0
  br i1 %.not26.i.i, label %.loopexit7.i.i, label %.lr.ph.i.i

bb.aa:                                            ; preds = %bb.y
  %.lhs.trunc.i.i = trunc nuw nsw i64 %i.ma to i16
  %i.md = udiv i16 %.lhs.trunc.i.i, 48
  %.zext.i.i = zext nneg i16 %i.md to i64         ; 4 uses
  %i.me = icmp ult ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i ; 3 uses
  %i.mf = icmp ult ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i
  %or.cond.i.i = select i1 %i.me, i1 true, i1 %i.mf ; 2 uses
  %i.mg = add nsw i64 %.zext.i.i, -128            ; 2 uses
  %.sroa.060.0.i.i = select i1 %or.cond.i.i, i64 %i.mg, i64 %.zext.i.i
  %.sroa.060.0.mux.i.i = select i1 %i.me, i64 %i.mg, i64 %.sroa.044.0.i.i
  %.sroa.015.0.mux.i.i = select i1 %i.me, i64 %.sroa.015.0.i.i, i64 %.sroa.060.0.i.i
  br i1 %or.cond.i.i, label %bb.z, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mh = lshr i64 %.zext.i.i, 1                  ; 2 uses
  %i.mi = sub nsw i64 %.zext.i.i, %i.mh
  br label %bb.z

.loopexit7.i.i:                                   ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63, %.preheader6.i.i, %bb.z
  %.sroa.068.1.i.i = phi ptr [ %.sroa.068.0.i.i, %bb.z ], [ %i.i, %.preheader6.i.i ], [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63 ] ; 7 uses
  %.sroa.018.1.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.z ], [ %i.i, %.preheader6.i.i ], [ %i.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63 ] ; 6 uses
  %i.mj = icmp eq ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i
  br i1 %i.mj, label %.preheader5.i.i, label %.loopexit.i.i

.preheader5.i.i:                                  ; preds = %.loopexit7.i.i
  %.not27.i.i = icmp eq i64 %.sroa.044.1.i.i, 0
  br i1 %.not27.i.i, label %.loopexit.i.i, label %.lr.ph14.i.i

.lr.ph.i.i:                                       ; preds = %.preheader6.i.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63
  %.sroa.065.010.i.i = phi ptr [ %i.my, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63 ], [ %.sroa.01.0.i.i, %.preheader6.i.i ] ; 4 uses
  %.sroa.068.29.i.i = phi ptr [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63 ], [ %i.i, %.preheader6.i.i ] ; 2 uses
  %.sroa.0105.08.i.i = phi i64 [ %i.mk, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63 ], [ 0, %.preheader6.i.i ] ; 2 uses
  %i.mk = add nuw i64 %.sroa.0105.08.i.i, 1       ; 2 uses
  %i.ml = trunc i64 %.sroa.0105.08.i.i to i8
  store i8 %i.ml, ptr %.sroa.068.29.i.i, align 1, !noalias !27163
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 24
  %i.mn = load i64, ptr %i.mm, align 8, !alias.scope !27164, !noundef !56 ; 2 uses
  %i.mo = icmp eq i64 %i.mn, %.sroa.4.0.copyload.i
  %i.mp = icmp ult i64 %i.mn, %.sroa.4.0.copyload.i
  br i1 %i.mo, label %bb.ac, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 40
  %i.mr = load double, ptr %i.mq, align 8, !alias.scope !27164, !noundef !56
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 32
  %i.mt = load i64, ptr %i.ms, align 8, !alias.scope !27164, !noundef !56 ; 2 uses
  %i.mu = icmp eq i64 %i.mt, %.sroa.524.0.copyload.i
  %i.mv = icmp ult i64 %i.mt, %.sroa.524.0.copyload.i
  %i.mw = fcmp ult double %i.mr, %.sroa.6.0.copyload.i
  %spec.select.i.i.i65 = select i1 %i.mu, i1 %i.mw, i1 %i.mv
  br label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63: ; preds = %bb.ac, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i.i = phi i1 [ %i.mp, %.lr.ph.i.i ], [ %spec.select.i.i.i65, %bb.ac ]
  %i.mx = xor i1 %.sroa.0.0.i.i.i.i.i, true
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.mx to i64
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.068.29.i.i, i64 %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 48
  %exitcond.not.i.i64 = icmp eq i64 %i.mk, %.sroa.015.1.i.i
  br i1 %exitcond.not.i.i64, label %.loopexit7.i.i, label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i, %.preheader5.i.i, %.loopexit7.i.i
  %.sroa.084.1.i.i = phi ptr [ %.sroa.084.0.i.i, %.loopexit7.i.i ], [ %i.h, %.preheader5.i.i ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i ] ; 7 uses
  %.sroa.046.1.i.i = phi ptr [ %.sroa.046.0.i.i, %.loopexit7.i.i ], [ %i.h, %.preheader5.i.i ], [ %i.h, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i ] ; 5 uses
  %i.mz = ptrtoint ptr %.sroa.068.1.i.i to i64
  %i.na = ptrtoint ptr %.sroa.018.1.i.i to i64
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = ptrtoint ptr %.sroa.084.1.i.i to i64
  %i.nd = ptrtoint ptr %.sroa.046.1.i.i to i64
  %i.ne = sub i64 %i.nc, %i.nd
  %i.nf = call i64 @llvm.umin.i64(i64 %i.nb, i64 %i.ne) ; 3 uses
  %.not.i.i = icmp eq i64 %i.nf, 0
  br i1 %.not.i.i, label %bb.ae, label %bb.af

.lr.ph14.i.i:                                     ; preds = %.preheader5.i.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i
  %.sroa.079.013.i.i = phi ptr [ %i.nh, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i ], [ %.sroa.032.0.i.i, %.preheader5.i.i ] ; 4 uses
  %.sroa.084.212.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i ], [ %i.h, %.preheader5.i.i ] ; 2 uses
  %.sroa.0107.011.i.i = phi i64 [ %i.ng, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i ], [ 0, %.preheader5.i.i ] ; 2 uses
  %i.ng = add nuw i64 %.sroa.0107.011.i.i, 1      ; 2 uses
  %i.nh = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -48
  %i.ni = trunc i64 %.sroa.0107.011.i.i to i8
  store i8 %i.ni, ptr %.sroa.084.212.i.i, align 1, !noalias !27163
  %i.nj = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -24
  %i.nk = load i64, ptr %i.nj, align 8, !alias.scope !27165, !noundef !56 ; 2 uses
  %i.nl = icmp eq i64 %i.nk, %.sroa.4.0.copyload.i
  %i.nm = icmp ult i64 %i.nk, %.sroa.4.0.copyload.i
  br i1 %i.nl, label %bb.ad, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i

bb.ad:                                            ; preds = %.lr.ph14.i.i
  %i.nn = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -8
  %i.no = load double, ptr %i.nn, align 8, !alias.scope !27165, !noundef !56
  %i.np = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -16
  %i.nq = load i64, ptr %i.np, align 8, !alias.scope !27165, !noundef !56 ; 2 uses
  %i.nr = icmp eq i64 %i.nq, %.sroa.524.0.copyload.i
  %i.ns = icmp ult i64 %i.nq, %.sroa.524.0.copyload.i
  %i.nt = fcmp ult double %i.no, %.sroa.6.0.copyload.i
  %spec.select.i116.i.i = select i1 %i.nr, i1 %i.nt, i1 %i.ns
  br label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i: ; preds = %bb.ad, %.lr.ph14.i.i
  %.sroa.0.0.i.i.i115.i.i = phi i1 [ %i.nm, %.lr.ph14.i.i ], [ %spec.select.i116.i.i, %bb.ad ]
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %.sroa.0.0.i.i.i115.i.i to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.212.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %exitcond32.not.i.i = icmp eq i64 %i.ng, %.sroa.044.1.i.i
  br i1 %exitcond32.not.i.i, label %.loopexit.i.i, label %.lr.ph14.i.i

bb.ae:                                            ; preds = %._crit_edge.i.i, %.loopexit.i.i
  %.sroa.046.2.i.i = phi ptr [ %i.oj, %._crit_edge.i.i ], [ %.sroa.046.1.i.i, %.loopexit.i.i ] ; 5 uses
  %.sroa.018.2.i.i = phi ptr [ %i.oi, %._crit_edge.i.i ], [ %.sroa.018.1.i.i, %.loopexit.i.i ] ; 5 uses
  %i.nu = icmp eq ptr %.sroa.018.2.i.i, %.sroa.068.1.i.i
  %spec.select.idx.i.i = select i1 %i.nu, i64 %.sroa.015.1.i.i, i64 0
  %spec.select.i24.i = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %spec.select.idx.i.i ; 9 uses
  %i.nv = icmp eq ptr %.sroa.046.2.i.i, %.sroa.084.1.i.i
  %i.nw = sub nsw i64 0, %.sroa.044.1.i.i
  %.sroa.032.1.idx.i.i = select i1 %i.nv, i64 %i.nw, i64 0
  %.sroa.032.1.i.i = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %.sroa.032.1.idx.i.i ; 6 uses
  br i1 %i.mb, label %bb.ag, label %bb.y

bb.af:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.nx = load i8, ptr %.sroa.018.1.i.i, align 1, !noalias !27163, !noundef !56
  %i.ny = zext i8 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %i.ny
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.nz, i64 48, i1 false), !noalias !27166
  %i.oa = load i8, ptr %.sroa.046.1.i.i, align 1, !noalias !27163, !noundef !56 ; 2 uses
  %i.ob = zext i8 %i.oa to i64
  %i.oc = xor i64 %i.ob, -1                       ; 2 uses
  %i.od = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %i.oc
  %i.oe = load i8, ptr %.sroa.018.1.i.i, align 1, !noalias !27163, !noundef !56
  %i.of = zext i8 %i.oe to i64
  %i.og = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %i.of
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.og, ptr noundef nonnull align 8 dereferenceable(48) %i.od, i64 48, i1 false), !alias.scope !27167
  %.not28.i.i = icmp eq i64 %i.nf, 1
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph19.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph19.i.i, %bb.af
  %.pre-phi47.i = phi i64 [ %i.oc, %bb.af ], [ %i.ow, %.lr.ph19.i.i ]
  %.sroa.046.3.lcssa.i.i = phi ptr [ %.sroa.046.1.i.i, %bb.af ], [ %i.ot, %.lr.ph19.i.i ]
  %.sroa.018.3.lcssa.i.i = phi ptr [ %.sroa.018.1.i.i, %bb.af ], [ %i.om, %.lr.ph19.i.i ]
  %i.oh = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %.pre-phi47.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.oh, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !27166
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.018.3.lcssa.i.i, i64 1
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.046.3.lcssa.i.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

.lr.ph19.i.i:                                     ; preds = %bb.af, %.lr.ph19.i.i
  %i.ok = phi i8 [ %i.ou, %.lr.ph19.i.i ], [ %i.oa, %bb.af ]
  %.sroa.018.318.i.i = phi ptr [ %i.om, %.lr.ph19.i.i ], [ %.sroa.018.1.i.i, %bb.af ]
  %.sroa.046.317.i.i = phi ptr [ %i.ot, %.lr.ph19.i.i ], [ %.sroa.046.1.i.i, %bb.af ]
  %.sroa.0109.016.i.i = phi i64 [ %i.ol, %.lr.ph19.i.i ], [ 1, %bb.af ]
  %i.ol = add nuw i64 %.sroa.0109.016.i.i, 1      ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.018.318.i.i, i64 1 ; 3 uses
  %i.on = load i8, ptr %i.om, align 1, !noalias !27163, !noundef !56
  %i.oo = zext i8 %i.on to i64
  %i.op = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %i.oo ; 2 uses
  %i.oq = zext i8 %i.ok to i64
  %i.or = xor i64 %i.oq, -1
  %i.os = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %i.or
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr noundef nonnull align 8 dereferenceable(48) %i.op, i64 48, i1 false), !alias.scope !27167
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.046.317.i.i, i64 1 ; 3 uses
  %i.ou = load i8, ptr %i.ot, align 1, !noalias !27163, !noundef !56 ; 2 uses
  %i.ov = zext i8 %i.ou to i64
  %i.ow = xor i64 %i.ov, -1                       ; 2 uses
  %i.ox = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %i.ow
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.op, ptr noundef nonnull align 8 dereferenceable(48) %i.ox, i64 48, i1 false), !alias.scope !27167
  %exitcond33.not.i.i = icmp eq i64 %i.ol, %i.nf
  br i1 %exitcond33.not.i.i, label %._crit_edge.i.i, label %.lr.ph19.i.i

bb.ag:                                            ; preds = %bb.ae
  %.sroa.084.1.i.i.lcssa607608 = ptrtoaddr ptr %.sroa.084.1.i.i to i64 ; 2 uses
  %.sroa.046.2.i.i.lcssa609610 = ptrtoaddr ptr %.sroa.046.2.i.i to i64 ; 2 uses
  %i.oy = icmp ult ptr %.sroa.018.2.i.i, %.sroa.068.1.i.i
  br i1 %i.oy, label %.preheader.i.i.preheader, label %bb.ah

.preheader.i.i.preheader:                         ; preds = %bb.ag
  %.sroa.018.2.i.i.lcssa613614 = ptrtoaddr ptr %.sroa.018.2.i.i to i64 ; 2 uses
  %.sroa.068.1.i.i.lcssa611612 = ptrtoaddr ptr %.sroa.068.1.i.i to i64 ; 2 uses
  %i.oz = sub i64 %.sroa.068.1.i.i.lcssa611612, %.sroa.018.2.i.i.lcssa613614
  %xtraiter615 = and i64 %i.oz, 1
  %lcmp.mod616.not = icmp eq i64 %xtraiter615, 0
  br i1 %lcmp.mod616.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader
  %i.pa = getelementptr inbounds i8, ptr %.sroa.068.1.i.i, i64 -1 ; 2 uses
  %i.pb = load i8, ptr %i.pa, align 1, !noalias !27163, !noundef !56
  %i.pc = zext i8 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [48 x i8], ptr %spec.select.i24.i, i64 %i.pc ; 2 uses
  %i.pe = getelementptr inbounds i8, ptr %.sroa.032.1.i.i, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.pd, i64 48, i1 false), !noalias !27166
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pd, ptr noundef nonnull align 8 dereferenceable(48) %i.pe, i64 48, i1 false), !alias.scope !27167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pe, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !27166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.sroa.032.225.i.i.unr = phi ptr [ %.sroa.032.1.i.i, %.preheader.i.i.preheader ], [ %i.pe, %.preheader.i.i.prol ]
  %.sroa.068.324.i.i.unr = phi ptr [ %.sroa.068.1.i.i, %.preheader.i.i.preheader ], [ %i.pa, %.preheader.i.i.prol ]
  %.lcssa576.unr = phi ptr [ poison, %.preheader.i.i.preheader ], [ %i.pe, %.preheader.i.i.prol ]
  %i.pf = add i64 %.sroa.068.1.i.i.lcssa611612, -1
  %i.pg = icmp eq i64 %i.pf, %.sroa.018.2.i.i.lcssa613614
  br i1 %i.pg, label %.loopexit.i, label %.preheader.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ph = icmp ult ptr %.sroa.046.2.i.i, %.sroa.084.1.i.i
  br i1 %i.ph, label %.preheader4.i.i.preheader, label %.loopexit.i

.preheader4.i.i.preheader:                        ; preds = %bb.ah
end_hunk_2
begin_hunk_3_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2D_:bb.a

bb.l:                                             ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit10.i
  %i.cj = lshr i64 %.sroa.20.0135, 1              ; 3 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0136, i64 %.sroa.20.0135 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27253)
  call void @llvm.experimental.noalias.scope.decl(metadata !27254)
  %i.cl = icmp eq i64 %i.cj, 1
  br i1 %i.cl, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.l
  %unroll_iter = and i64 %i.cj, 9223372036854775806
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i, %.new
  %.sroa.0.016.i.i = phi i64 [ 0, %.new ], [ %i.db, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i ]
  %i.cm = xor i64 %.sroa.0.016.i.i, -1
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0136, i64 %.sroa.0.016.i.i ; 3 uses
  %i.co = getelementptr [16 x i8], ptr %i.ck, i64 %i.cm ; 3 uses
  %i.cp = load i32, ptr %i.cn, align 8, !alias.scope !27255, !noundef !56
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !alias.scope !27255, !noundef !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !alias.scope !27256
  store i32 %i.cp, ptr %i.co, align 8, !alias.scope !27257
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store double %i.cr, ptr %i.cs, align 8, !alias.scope !27257
  %i.ct = xor i64 %.sroa.0.016.i.i, -2
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0136, i64 %.sroa.0.016.i.i ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = getelementptr [16 x i8], ptr %i.ck, i64 %i.ct ; 3 uses
  %i.cx = load i32, ptr %i.cv, align 8, !alias.scope !27255, !noundef !56
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cz = load double, ptr %i.cy, align 8, !alias.scope !27255, !noundef !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !alias.scope !27256
  store i32 %i.cx, ptr %i.cw, align 8, !alias.scope !27257
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store double %i.cz, ptr %i.da, align 8, !alias.scope !27257
  %i.db = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i.unr-lcssa, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i.unr-lcssa: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i
  %i.dc = and i64 %.sroa.20.0135, 2
  %lcmp.mod.not = icmp eq i64 %i.dc, 0
  br i1 %lcmp.mod.not, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.epil.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.epil.preheader: ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i.unr-lcssa, %bb.l
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %bb.l ], [ %i.db, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod450 = trunc i64 %i.cj to i1
  call void @llvm.assume(i1 %lcmp.mod450)
  %i.dd = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0136, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.df = getelementptr [16 x i8], ptr %i.ck, i64 %i.dd ; 3 uses
  %i.dg = load i32, ptr %i.de, align 8, !alias.scope !27255, !noundef !56
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.di = load double, ptr %i.dh, align 8, !alias.scope !27255, !noundef !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !alias.scope !27256
  store i32 %i.dg, ptr %i.df, align 8, !alias.scope !27257
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store double %i.di, ptr %i.dj, align 8, !alias.scope !27257
  br label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i.unr-lcssa, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.epil.preheader
  %i.dk = xor i64 %.sroa.0.1.i, -1
  %i.dl = add nsw i64 %.sroa.20.0135, %i.dk
  br label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2J_.exit

_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit10.thread.i: ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit10.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit.i
  %.sroa.065.3107.i = phi i64 [ %.sroa.0.1.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit10.i ], [ %.sroa.065.2.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit.i ]
  %i.dm = phi i64 [ 1, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit10.i ], [ %.sroa.0.2100.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit.i ]
  %i.dn = icmp eq i64 %i.dm, 0
  br label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2J_.exit

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2J_.exit: ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit10.thread.i
  %.sroa.3.0.i = phi i1 [ %i.dn, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit10.thread.i ], [ true, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i ]
  %.sroa.0.0.i = phi i64 [ %.sroa.065.3107.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit10.thread.i ], [ %i.dl, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i ] ; 6 uses
  %i.do = select i1 %or.cond, i1 %.sroa.3.0.i, i1 false, !prof !123
  br i1 %i.do, label %bb.n, label %bb.m, !prof !68

bb.m:                                             ; preds = %bb.n, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2J_.exit
  br i1 %.not, label %bb.p, label %bb.o

bb.n:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2J_.exit
  %i.dp = call fastcc noundef zeroext i1 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort22partial_insertion_sortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBZ_INtB4_16ParallelSliceMutBZ_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2T_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0136, i64 noundef %.sroa.20.0135)
  br i1 %i.dp, label %.loopexit, label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.dq = icmp ult i64 %.sroa.0.0.i, %.sroa.20.0135
  br i1 %i.dq, label %bb.ae, label %bb.af

bb.p:                                             ; preds = %bb.ae, %bb.m
  %.sroa.0.0136.lcssa161 = phi ptr [ %.sroa.0.0136, %bb.ae ], [ %.sroa.0.0.ph144, %bb.m ] ; 14 uses
  %.sroa.20.0135.lcssa152 = phi i64 [ %.sroa.20.0135, %bb.ae ], [ %.sroa.20.0.ph143, %bb.m ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27258)
  %i.dr = icmp ult i64 %.sroa.0.0.i, %.sroa.20.0135.lcssa152
  br i1 %i.dr, label %.lr.ph.preheader.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i, i64 noundef range(i64 21, 576460752303423488) %.sroa.20.0135.lcssa152, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @595) #60, !noalias !27258
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0136.lcssa161, i64 %.sroa.0.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0136.lcssa161, i64 16, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0136.lcssa161, ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i64 16, i1 false), !alias.scope !27259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.0136.lcssa161, i64 16 ; 3 uses
  %i.du = add nsw i64 %.sroa.20.0135.lcssa152, -1 ; 7 uses
  %i.dv = load i32, ptr %.sroa.0.0136.lcssa161, align 8, !alias.scope !27258, !noundef !56
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0136.lcssa161, i64 8 ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !alias.scope !27258, !noundef !56 ; 13 uses
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.r, %.lr.ph.i
  %.sroa.0.0.lcssa.ph.i = phi i64 [ %i.du, %bb.r ], [ %.sroa.0.015.i, %.lr.ph.i ] ; 6 uses
  %.not.i.not.not.not370.not = icmp ult i64 %.sroa.0.0.lcssa.ph.i, %i.du
  br i1 %.not.i.not.not.not370.not, label %.lr.ph373, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.preheader.i
  %.sroa.0.015.i = phi i64 [ %i.eb, %bb.r ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %.sroa.0.015.i
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %.val19.i = load double, ptr %i.dz, align 8, !alias.scope !27258, !noundef !56
  %i.ea = fcmp ult double %.val19.i, %i.dx
  br i1 %i.ea, label %bb.r, label %._crit_edge.i

bb.r:                                             ; preds = %.lr.ph.i
  %i.eb = add nuw nsw i64 %.sroa.0.015.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eb, %i.du
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.s:                                             ; preds = %.lr.ph373
  %.not.i.not.not.not.not = icmp ult i64 %.sroa.0.0.lcssa.ph.i, %i.ed
  br i1 %.not.i.not.not.not.not, label %.lr.ph373, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %.lr.ph373, %._crit_edge.i
  %.sroa.07.0.i.lcssa = phi i64 [ %i.du, %._crit_edge.i ], [ %i.ed, %bb.s ], [ %.sroa.07.0.i371, %.lr.ph373 ] ; 3 uses
  %.not.i.not.not.not.lcssa = phi i8 [ 1, %._crit_edge.i ], [ 1, %bb.s ], [ 0, %.lr.ph373 ]
  %i.ec = icmp ult i64 %.sroa.07.0.i.lcssa, %.sroa.0.0.lcssa.ph.i
  br i1 %i.ec, label %bb.ac, label %bb.t, !prof !60

.lr.ph373:                                        ; preds = %._crit_edge.i, %bb.s
  %.sroa.07.0.i371 = phi i64 [ %i.ed, %bb.s ], [ %i.du, %._crit_edge.i ] ; 3 uses
  %i.ed = add nsw i64 %.sroa.07.0.i371, -1        ; 4 uses
  %i.ee = icmp ult i64 %i.ed, %i.du
  call void @llvm.assume(i1 %i.ee)
  %i.ef = getelementptr [16 x i8], ptr %.sroa.0.0136.lcssa161, i64 %.sroa.07.0.i371
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %.val.i = load double, ptr %i.eg, align 8, !alias.scope !27258, !noundef !56
  %i.eh = fcmp ult double %.val.i, %i.dx
  br i1 %i.eh, label %._crit_edge, label %bb.s

bb.t:                                             ; preds = %._crit_edge
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %.sroa.0.0.lcssa.ph.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27260)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !27261
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %.sroa.07.0.i.lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !27261
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  %.sroa.084.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.084.1.i.i, %bb.y ] ; 3 uses
  %.sroa.068.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.068.1.i.i, %bb.y ] ; 3 uses
  %.sroa.046.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.046.2.i.i, %bb.y ] ; 3 uses
  %.sroa.044.0.i.i = phi i64 [ 128, %bb.t ], [ %.sroa.044.1.i.i, %bb.y ] ; 2 uses
  %.sroa.032.0.i.i = phi ptr [ %i.ej, %bb.t ], [ %.sroa.032.1.i.i, %bb.y ] ; 8 uses
  %.sroa.018.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.018.2.i.i, %bb.y ] ; 3 uses
  %.sroa.015.0.i.i = phi i64 [ 128, %bb.t ], [ %.sroa.015.1.i.i, %bb.y ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.ei, %bb.t ], [ %spec.select.i.i, %bb.y ] ; 6 uses
  %i.ek = ptrtoint ptr %.sroa.032.0.i.i to i64
  %i.el = ptrtoint ptr %.sroa.01.0.i.i to i64
  %i.em = sub i64 %i.ek, %i.el                    ; 3 uses
  %i.en = icmp ult i64 %i.em, 4112                ; 2 uses
  br i1 %i.en, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.sroa.044.1.i.i = phi i64 [ %.sroa.044.0.i.i, %bb.u ], [ %.sroa.060.0.mux.i.i, %bb.w ], [ %i.ev, %bb.x ] ; 6 uses
  %.sroa.015.1.i.i = phi i64 [ %.sroa.015.0.i.i, %bb.u ], [ %.sroa.015.0.mux.i.i, %bb.w ], [ %i.eu, %bb.x ] ; 6 uses
  %i.eo = icmp eq ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i
  br i1 %i.eo, label %.preheader6.i.i, label %.loopexit7.i.i

.preheader6.i.i:                                  ; preds = %bb.v
  %.not26.i.i = icmp eq i64 %.sroa.015.1.i.i, 0
  br i1 %.not26.i.i, label %.loopexit7.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader6.i.i
  %xtraiter451 = and i64 %.sroa.015.1.i.i, 3      ; 3 uses
  %i.ep = icmp ult i64 %.sroa.015.1.i.i, 4
  br i1 %i.ep, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter455 = and i64 %.sroa.015.1.i.i, -4
  br label %.lr.ph.i.i

bb.w:                                             ; preds = %bb.u
  %i.eq = lshr i64 %i.em, 4                       ; 3 uses
  %i.er = icmp ult ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i ; 3 uses
  %i.es = icmp ult ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i
  %or.cond.i.i = select i1 %i.er, i1 true, i1 %i.es ; 2 uses
  %i.et = add nsw i64 %i.eq, -128                 ; 2 uses
  %.sroa.060.0.i.i = select i1 %or.cond.i.i, i64 %i.et, i64 %i.eq
  %.sroa.060.0.mux.i.i = select i1 %i.er, i64 %i.et, i64 %.sroa.044.0.i.i
  %.sroa.015.0.mux.i.i = select i1 %i.er, i64 %.sroa.015.0.i.i, i64 %.sroa.060.0.i.i
  br i1 %or.cond.i.i, label %bb.v, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eu = lshr i64 %i.em, 5                       ; 2 uses
  %i.ev = sub nsw i64 %i.eq, %i.eu
  br label %bb.v

.loopexit7.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i
  %lcmp.mod452.not = icmp eq i64 %xtraiter451, 0
  br i1 %lcmp.mod452.not, label %.loopexit7.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit7.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.065.010.i.i.epil.init = phi ptr [ %.sroa.01.0.i.i, %.lr.ph.i.i.preheader ], [ %i.ft, %.loopexit7.i.i.loopexit.unr-lcssa ]
  %.sroa.068.29.i.i.epil.init = phi ptr [ %i.h, %.lr.ph.i.i.preheader ], [ %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit7.i.i.loopexit.unr-lcssa ]
  %.sroa.0108.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.fo, %.loopexit7.i.i.loopexit.unr-lcssa ]
  %lcmp.mod454 = icmp ne i64 %xtraiter451, 0
  call void @llvm.assume(i1 %lcmp.mod454)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.065.010.i.i.epil = phi ptr [ %i.fa, %.lr.ph.i.i.epil ], [ %.sroa.065.010.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.068.29.i.i.epil = phi ptr [ %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph.i.i.epil ], [ %.sroa.068.29.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.0108.08.i.i.epil = phi i64 [ %i.ew, %.lr.ph.i.i.epil ], [ %.sroa.0108.08.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ew = add nuw i64 %.sroa.0108.08.i.i.epil, 1
  %i.ex = trunc i64 %.sroa.0108.08.i.i.epil to i8
  store i8 %i.ex, ptr %.sroa.068.29.i.i.epil, align 1, !noalias !27261
  %i.ey = getelementptr i8, ptr %.sroa.065.010.i.i.epil, i64 8
  %.sroa.065.0.val.i.i.epil = load double, ptr %i.ey, align 8, !alias.scope !27261, !noundef !56
  %i.ez = fcmp oge double %.sroa.065.0.val.i.i.epil, %i.dx
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx = zext i1 %i.ez to i64
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.068.29.i.i.epil, i64 %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter451
  br i1 %epil.iter.cmp.not, label %.loopexit7.i.i, label %.lr.ph.i.i.epil, !llvm.loop !27230

.loopexit7.i.i:                                   ; preds = %.loopexit7.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %.preheader6.i.i, %bb.v
  %.sroa.068.1.i.i = phi ptr [ %.sroa.068.0.i.i, %bb.v ], [ %i.h, %.preheader6.i.i ], [ %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit7.i.i.loopexit.unr-lcssa ], [ %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph.i.i.epil ] ; 7 uses
  %.sroa.018.1.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.v ], [ %i.h, %.preheader6.i.i ], [ %i.h, %.lr.ph.i.i.epil ], [ %i.h, %.loopexit7.i.i.loopexit.unr-lcssa ] ; 5 uses
  %i.fb = icmp eq ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i
  br i1 %i.fb, label %.preheader5.i.i, label %.loopexit.i.i

.preheader5.i.i:                                  ; preds = %.loopexit7.i.i
  %.not27.i.i = icmp eq i64 %.sroa.044.1.i.i, 0
  br i1 %.not27.i.i, label %.loopexit.i.i, label %.lr.ph14.i.i.preheader

.lr.ph14.i.i.preheader:                           ; preds = %.preheader5.i.i
  %xtraiter457 = and i64 %.sroa.044.1.i.i, 3      ; 3 uses
  %i.fc = icmp ult i64 %.sroa.044.1.i.i, 4
  br i1 %i.fc, label %.lr.ph14.i.i.epil.preheader, label %.lr.ph14.i.i.preheader.new

.lr.ph14.i.i.preheader.new:                       ; preds = %.lr.ph14.i.i.preheader
  %unroll_iter462 = and i64 %.sroa.044.1.i.i, -4
  br label %.lr.ph14.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.065.010.i.i = phi ptr [ %.sroa.01.0.i.i, %.lr.ph.i.i.preheader.new ], [ %i.ft, %.lr.ph.i.i ] ; 5 uses
  %.sroa.068.29.i.i = phi ptr [ %i.h, %.lr.ph.i.i.preheader.new ], [ %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0108.08.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.fo, %.lr.ph.i.i ] ; 5 uses
  %niter456 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter456.next.3, %.lr.ph.i.i ]
  %i.fd = trunc i64 %.sroa.0108.08.i.i to i8
  store i8 %i.fd, ptr %.sroa.068.29.i.i, align 1, !noalias !27261
  %i.fe = getelementptr i8, ptr %.sroa.065.010.i.i, i64 8
  %.sroa.065.0.val.i.i = load double, ptr %i.fe, align 8, !alias.scope !27261, !noundef !56
  %i.ff = fcmp oge double %.sroa.065.0.val.i.i, %i.dx
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.ff to i64
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.068.29.i.i, i64 %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.fg = trunc i64 %.sroa.0108.08.i.i to i8
  %i.fh = or disjoint i8 %i.fg, 1
  store i8 %i.fh, ptr %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !noalias !27261
  %i.fi = getelementptr i8, ptr %.sroa.065.010.i.i, i64 24
  %.sroa.065.0.val.i.i.1 = load double, ptr %i.fi, align 8, !alias.scope !27261, !noundef !56
  %i.fj = fcmp oge double %.sroa.065.0.val.i.i.1, %i.dx
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.1 = zext i1 %i.fj to i64
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1 = getelementptr inbounds nuw i8, ptr %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.1 ; 2 uses
  %i.fk = trunc i64 %.sroa.0108.08.i.i to i8
  %i.fl = or disjoint i8 %i.fk, 2
  store i8 %i.fl, ptr %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, align 1, !noalias !27261
  %i.fm = getelementptr i8, ptr %.sroa.065.010.i.i, i64 40
  %.sroa.065.0.val.i.i.2 = load double, ptr %i.fm, align 8, !alias.scope !27261, !noundef !56
  %i.fn = fcmp oge double %.sroa.065.0.val.i.i.2, %i.dx
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel.idx = zext i1 %i.fn to i64
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, i64 %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel.idx ; 2 uses
  %i.fo = add nuw i64 %.sroa.0108.08.i.i, 4       ; 2 uses
  %i.fp = trunc i64 %.sroa.0108.08.i.i to i8
  %i.fq = or disjoint i8 %i.fp, 3
  store i8 %i.fq, ptr %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel, align 1, !noalias !27261
  %i.fr = getelementptr i8, ptr %.sroa.065.010.i.i, i64 56
  %.sroa.065.0.val.i.i.3 = load double, ptr %i.fr, align 8, !alias.scope !27261, !noundef !56
  %i.fs = fcmp oge double %.sroa.065.0.val.i.i.3, %i.dx
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.3 = zext i1 %i.fs to i64
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3 = getelementptr inbounds nuw i8, ptr %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel, i64 %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.3 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 64 ; 2 uses
  %niter456.next.3 = add nuw i64 %niter456, 4     ; 2 uses
  %niter456.ncmp.3 = icmp eq i64 %niter456.next.3, %unroll_iter455
  br i1 %niter456.ncmp.3, label %.loopexit7.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph14.i.i
  %lcmp.mod459.not = icmp eq i64 %xtraiter457, 0
  br i1 %lcmp.mod459.not, label %.loopexit.i.i, label %.lr.ph14.i.i.epil.preheader

.lr.ph14.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph14.i.i.preheader
  %.sroa.079.013.i.i.epil.init = phi ptr [ %.sroa.032.0.i.i, %.lr.ph14.i.i.preheader ], [ %i.gs, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.sroa.084.212.i.i.epil.init = phi ptr [ %i.g, %.lr.ph14.i.i.preheader ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.sroa.0110.011.i.i.epil.init = phi i64 [ 0, %.lr.ph14.i.i.preheader ], [ %i.gr, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod461 = icmp ne i64 %xtraiter457, 0
  call void @llvm.assume(i1 %lcmp.mod461)
  br label %.lr.ph14.i.i.epil

.lr.ph14.i.i.epil:                                ; preds = %.lr.ph14.i.i.epil, %.lr.ph14.i.i.epil.preheader
  %.sroa.079.013.i.i.epil = phi ptr [ %i.fv, %.lr.ph14.i.i.epil ], [ %.sroa.079.013.i.i.epil.init, %.lr.ph14.i.i.epil.preheader ] ; 2 uses
  %.sroa.084.212.i.i.epil = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph14.i.i.epil ], [ %.sroa.084.212.i.i.epil.init, %.lr.ph14.i.i.epil.preheader ] ; 2 uses
  %.sroa.0110.011.i.i.epil = phi i64 [ %i.fu, %.lr.ph14.i.i.epil ], [ %.sroa.0110.011.i.i.epil.init, %.lr.ph14.i.i.epil.preheader ] ; 2 uses
  %epil.iter458 = phi i64 [ %epil.iter458.next, %.lr.ph14.i.i.epil ], [ 0, %.lr.ph14.i.i.epil.preheader ]
  %i.fu = add nuw i64 %.sroa.0110.011.i.i.epil, 1
  %i.fv = getelementptr inbounds i8, ptr %.sroa.079.013.i.i.epil, i64 -16
  %i.fw = trunc i64 %.sroa.0110.011.i.i.epil to i8
  store i8 %i.fw, ptr %.sroa.084.212.i.i.epil, align 1, !noalias !27261
  %i.fx = getelementptr i8, ptr %.sroa.079.013.i.i.epil, i64 -8
  %.val.i.i64.epil = load double, ptr %i.fx, align 8, !alias.scope !27261, !noundef !56
  %i.fy = fcmp ult double %.val.i.i64.epil, %i.dx
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx = zext i1 %i.fy to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.212.i.i.epil, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx ; 2 uses
  %epil.iter458.next = add i64 %epil.iter458, 1   ; 2 uses
  %epil.iter458.cmp.not = icmp eq i64 %epil.iter458.next, %xtraiter457
  br i1 %epil.iter458.cmp.not, label %.loopexit.i.i, label %.lr.ph14.i.i.epil, !llvm.loop !27231

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph14.i.i.epil, %.preheader5.i.i, %.loopexit7.i.i
  %.sroa.084.1.i.i = phi ptr [ %.sroa.084.0.i.i, %.loopexit7.i.i ], [ %i.g, %.preheader5.i.i ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit.i.i.loopexit.unr-lcssa ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph14.i.i.epil ] ; 7 uses
  %.sroa.046.1.i.i = phi ptr [ %.sroa.046.0.i.i, %.loopexit7.i.i ], [ %i.g, %.preheader5.i.i ], [ %i.g, %.lr.ph14.i.i.epil ], [ %i.g, %.loopexit.i.i.loopexit.unr-lcssa ] ; 5 uses
  %i.fz = ptrtoint ptr %.sroa.068.1.i.i to i64
  %i.ga = ptrtoint ptr %.sroa.018.1.i.i to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = ptrtoint ptr %.sroa.084.1.i.i to i64
  %i.gd = ptrtoint ptr %.sroa.046.1.i.i to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = call i64 @llvm.umin.i64(i64 %i.gb, i64 %i.ge) ; 3 uses
  %.not.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not.i.i, label %bb.y, label %bb.z

.lr.ph14.i.i:                                     ; preds = %.lr.ph14.i.i, %.lr.ph14.i.i.preheader.new
  %.sroa.079.013.i.i = phi ptr [ %.sroa.032.0.i.i, %.lr.ph14.i.i.preheader.new ], [ %i.gs, %.lr.ph14.i.i ] ; 5 uses
  %.sroa.084.212.i.i = phi ptr [ %i.g, %.lr.ph14.i.i.preheader.new ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.lr.ph14.i.i ] ; 2 uses
  %.sroa.0110.011.i.i = phi i64 [ 0, %.lr.ph14.i.i.preheader.new ], [ %i.gr, %.lr.ph14.i.i ] ; 5 uses
  %niter463 = phi i64 [ 0, %.lr.ph14.i.i.preheader.new ], [ %niter463.next.3, %.lr.ph14.i.i ]
  %i.gg = trunc i64 %.sroa.0110.011.i.i to i8
  store i8 %i.gg, ptr %.sroa.084.212.i.i, align 1, !noalias !27261
  %i.gh = getelementptr i8, ptr %.sroa.079.013.i.i, i64 -8
  %.val.i.i64 = load double, ptr %i.gh, align 8, !alias.scope !27261, !noundef !56
  %i.gi = fcmp ult double %.val.i.i64, %i.dx
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.gi to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.212.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.gj = trunc i64 %.sroa.0110.011.i.i to i8
  %i.gk = or disjoint i8 %i.gj, 1
  store i8 %i.gk, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !noalias !27261
  %i.gl = getelementptr i8, ptr %.sroa.079.013.i.i, i64 -24
  %.val.i.i64.1 = load double, ptr %i.gl, align 8, !alias.scope !27261, !noundef !56
  %i.gm = fcmp ult double %.val.i.i64.1, %i.dx
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.1 = zext i1 %i.gm to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1 = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.1 ; 2 uses
  %i.gn = trunc i64 %.sroa.0110.011.i.i to i8
  %i.go = or disjoint i8 %i.gn, 2
  store i8 %i.go, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, align 1, !noalias !27261
  %i.gp = getelementptr i8, ptr %.sroa.079.013.i.i, i64 -40
  %.val.i.i64.2 = load double, ptr %i.gp, align 8, !alias.scope !27261, !noundef !56
  %i.gq = fcmp ult double %.val.i.i64.2, %i.dx
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel.idx = zext i1 %i.gq to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel.idx ; 2 uses
  %i.gr = add nuw i64 %.sroa.0110.011.i.i, 4      ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -64 ; 2 uses
  %i.gt = trunc i64 %.sroa.0110.011.i.i to i8
  %i.gu = or disjoint i8 %i.gt, 3
  store i8 %i.gu, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel, align 1, !noalias !27261
  %i.gv = getelementptr i8, ptr %.sroa.079.013.i.i, i64 -56
  %.val.i.i64.3 = load double, ptr %i.gv, align 8, !alias.scope !27261, !noundef !56
  %i.gw = fcmp ult double %.val.i.i64.3, %i.dx
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.3 = zext i1 %i.gw to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3 = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.3 ; 3 uses
  %niter463.next.3 = add nuw i64 %niter463, 4     ; 2 uses
  %niter463.ncmp.3 = icmp eq i64 %niter463.next.3, %unroll_iter462
  br i1 %niter463.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph14.i.i

bb.y:                                             ; preds = %._crit_edge.i.i, %.loopexit.i.i
  %.sroa.046.2.i.i = phi ptr [ %i.hm, %._crit_edge.i.i ], [ %.sroa.046.1.i.i, %.loopexit.i.i ] ; 5 uses
  %.sroa.018.2.i.i = phi ptr [ %i.hl, %._crit_edge.i.i ], [ %.sroa.018.1.i.i, %.loopexit.i.i ] ; 5 uses
  %i.gx = icmp eq ptr %.sroa.018.2.i.i, %.sroa.068.1.i.i
  %spec.select.idx.i.i = select i1 %i.gx, i64 %.sroa.015.1.i.i, i64 0
  %spec.select.i.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %spec.select.idx.i.i ; 9 uses
  %i.gy = icmp eq ptr %.sroa.046.2.i.i, %.sroa.084.1.i.i
  %i.gz = sub nsw i64 0, %.sroa.044.1.i.i
  %.sroa.032.1.idx.i.i = select i1 %i.gy, i64 %i.gz, i64 0
  %.sroa.032.1.i.i = getelementptr inbounds [16 x i8], ptr %.sroa.032.0.i.i, i64 %.sroa.032.1.idx.i.i ; 6 uses
  br i1 %i.en, label %bb.aa, label %bb.u

bb.z:                                             ; preds = %.loopexit.i.i
  %i.ha = load i8, ptr %.sroa.018.1.i.i, align 1, !noalias !27261, !noundef !56
  %i.hb = zext i8 %i.ha to i64
end_hunk_3
begin_hunk_4_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1Z_5types3any5PyAnyEEENCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB41_:bb.a
  %i.bm = icmp samesign ult i64 %i.w, %.sroa.20.0139
  call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0140, i64 %i.w
  %i.bo = icmp samesign ult i64 %i.bk, %.sroa.20.0139
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0140, i64 %i.bk
  %.val.i.i35.i = load double, ptr %i.bn, align 8, !alias.scope !27330, !noalias !27337, !noundef !56 ; 3 uses
  %.val2.i.i36.i = load double, ptr %i.bp, align 8, !alias.scope !27330, !noalias !27337, !noundef !56 ; 3 uses
  %i.bq = fcmp ult double %.val.i.i35.i, %.val2.i.i36.i
  br i1 %i.bq, label %bb.k, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i37.i

bb.k:                                             ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i13.i
  %i.br = add nuw nsw i64 %.sroa.0.8.i, 1
  br label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i37.i

_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i37.i: ; preds = %bb.k, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i13.i
  %.val2.i5.i43.i = phi double [ %.val.i.i35.i, %bb.k ], [ %.val2.i.i36.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i13.i ]
  %.sroa.0.9.i = phi i64 [ %i.br, %bb.k ], [ %.sroa.0.8.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i13.i ]
  %.sroa.067.1.i = phi i64 [ %i.bk, %bb.k ], [ %i.w, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i13.i ]
  %.val2.i2.i38.i = phi double [ %.val2.i.i36.i, %bb.k ], [ %.val.i.i35.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i13.i ] ; 2 uses
  %.sroa.0.0.i39.i = phi i64 [ %i.w, %bb.k ], [ %i.bk, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i13.i ]
  %i.bs = icmp samesign ult i64 %i.bl, %.sroa.20.0139
  call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0140, i64 %i.bl
  %.val.i1.i40.i = load double, ptr %i.bt, align 8, !alias.scope !27330, !noalias !27338, !noundef !56 ; 2 uses
  %i.bu = fcmp ult double %.val.i1.i40.i, %.val2.i2.i38.i ; 3 uses
  %i.bv = zext i1 %i.bu to i64
  %.sroa.0.10.i = add nuw nsw i64 %.sroa.0.9.i, %i.bv
  %.sroa.067.2.i = select i1 %i.bu, i64 %i.bl, i64 %.sroa.067.1.i
  %.val.i4.i42.i = select i1 %i.bu, double %.val.i1.i40.i, double %.val2.i2.i38.i
  %i.bw = fcmp ult double %.val.i4.i42.i, %.val2.i5.i43.i ; 2 uses
  %i.bx = zext i1 %i.bw to i64
  %spec.select.i = add nuw nsw i64 %.sroa.0.10.i, %i.bx
  %spec.select104.i = select i1 %i.bw, i64 %.sroa.0.0.i39.i, i64 %.sroa.067.2.i
  br label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0Es0_0B49_.exit58.i

bb.l:                                             ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit10.i
  %i.by = lshr i64 %.sroa.20.0139, 1
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0140, i64 %.sroa.20.0139
  call void @llvm.experimental.noalias.scope.decl(metadata !27339)
  call void @llvm.experimental.noalias.scope.decl(metadata !27340)
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1K_5types3any5PyAnyEEE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1K_5types3any5PyAnyEEE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1K_5types3any5PyAnyEEE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i, %bb.l
  %.sroa.0.016.i.i = phi i64 [ %i.cj, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1K_5types3any5PyAnyEEE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i ], [ 0, %bb.l ] ; 3 uses
  %i.ca = xor i64 %.sroa.0.016.i.i, -1
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0140, i64 %.sroa.0.016.i.i ; 3 uses
  %i.cc = getelementptr [32 x i8], ptr %i.bz, i64 %i.ca ; 3 uses
  %i.cd = load <2 x i64>, ptr %i.cb, align 1, !alias.scope !27341
  %i.ce = load <2 x i64>, ptr %i.cc, align 1, !alias.scope !27342
  store <2 x i64> %i.ce, ptr %i.cb, align 1, !alias.scope !27341
  store <2 x i64> %i.cd, ptr %i.cc, align 1, !alias.scope !27342
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.ch = load <2 x i64>, ptr %i.cf, align 1, !alias.scope !27341
  %i.ci = load <2 x i64>, ptr %i.cg, align 1, !alias.scope !27342
  store <2 x i64> %i.ci, ptr %i.cf, align 1, !alias.scope !27341
  store <2 x i64> %i.ch, ptr %i.cg, align 1, !alias.scope !27342
  %i.cj = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cj, %i.by
  br i1 %exitcond.not.i.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1K_5types3any5PyAnyEEE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1K_5types3any5PyAnyEEE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i
  %i.ck = xor i64 %.sroa.0.1.i, -1
  %i.cl = add nsw i64 %.sroa.20.0139, %i.ck
  br label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB25_5types3any5PyAnyEEENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB47_.exit

_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit10.thread.i: ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit10.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i
  %.sroa.061.3103.i = phi i64 [ %.sroa.0.1.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit10.i ], [ %.sroa.061.2.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i ]
  %i.cm = phi i64 [ 1, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit10.i ], [ %.sroa.0.296.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i ]
  %i.cn = icmp eq i64 %i.cm, 0
  br label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB25_5types3any5PyAnyEEENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB47_.exit

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB25_5types3any5PyAnyEEENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB47_.exit: ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit10.thread.i
  %.sroa.3.0.i = phi i1 [ %i.cn, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit10.thread.i ], [ true, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i ]
  %.sroa.0.0.i = phi i64 [ %.sroa.061.3103.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit10.thread.i ], [ %i.cl, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i ] ; 6 uses
  %i.co = select i1 %or.cond, i1 %.sroa.3.0.i, i1 false, !prof !123
  br i1 %i.co, label %bb.n, label %bb.m, !prof !68

bb.m:                                             ; preds = %bb.n, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB25_5types3any5PyAnyEEENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB47_.exit
  %i.cp = phi i32 [ %.pre, %bb.n ], [ %i.t, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB25_5types3any5PyAnyEEENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB47_.exit ] ; 3 uses
  br i1 %.not, label %bb.p, label %bb.o

bb.n:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB25_5types3any5PyAnyEEENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB47_.exit
  %i.cq = call fastcc noundef zeroext i1 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort22partial_insertion_sortTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2f_5types3any5PyAnyEEENCINvYSBZ_INtB4_16ParallelSliceMutBZ_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB4h_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0140, i64 noundef %.sroa.20.0139)
  %.pre = load i32, ptr %i.k, align 4
  br i1 %i.cq, label %.loopexit, label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.cr = icmp ult i64 %.sroa.0.0.i, %.sroa.20.0139
  br i1 %i.cr, label %bb.ag, label %bb.ah

bb.p:                                             ; preds = %bb.ag, %bb.m
  %.sroa.0.0140.lcssa165 = phi ptr [ %.sroa.0.0140, %bb.ag ], [ %.sroa.0.0.ph148, %bb.m ] ; 15 uses
  %.sroa.20.0139.lcssa156 = phi i64 [ %.sroa.20.0139, %bb.ag ], [ %.sroa.20.0.ph147, %bb.m ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27343)
  %i.cs = icmp ult i64 %.sroa.0.0.i, %.sroa.20.0139.lcssa156
  br i1 %i.cs, label %.lr.ph.preheader.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i, i64 noundef range(i64 21, 288230376151711744) %.sroa.20.0139.lcssa156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @595) #60, !noalias !27343
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0140.lcssa165, i64 %.sroa.0.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0140.lcssa165, i64 32, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0140.lcssa165, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i64 32, i1 false), !alias.scope !27344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0140.lcssa165, i64 32 ; 3 uses
  %i.cv = add nsw i64 %.sroa.20.0139.lcssa156, -1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %.sroa.09.0.copyload.i = load double, ptr %.sroa.0.0140.lcssa165, align 8, !alias.scope !27343 ; 14 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0140.lcssa165, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i64 24, i1 false)
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.r, %.lr.ph.i
  %.sroa.0.0.lcssa.ph.i = phi i64 [ %i.cv, %bb.r ], [ %.sroa.0.014.i, %.lr.ph.i ] ; 6 uses
  %.not.i.not.not.not393.not = icmp ult i64 %.sroa.0.0.lcssa.ph.i, %i.cv
  br i1 %.not.i.not.not.not393.not, label %.lr.ph396, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.preheader.i
  %.sroa.0.014.i = phi i64 [ %i.cy, %bb.r ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %.sroa.0.014.i
  %.val19.i = load double, ptr %i.cw, align 8, !alias.scope !27343, !noundef !56
  %i.cx = fcmp ult double %.val19.i, %.sroa.09.0.copyload.i
  br i1 %i.cx, label %bb.r, label %._crit_edge.i

bb.r:                                             ; preds = %.lr.ph.i
  %i.cy = add nuw nsw i64 %.sroa.0.014.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cy, %i.cv
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.s:                                             ; preds = %.lr.ph396
  %.not.i.not.not.not.not = icmp ult i64 %.sroa.0.0.lcssa.ph.i, %i.da
  br i1 %.not.i.not.not.not.not, label %.lr.ph396, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %.lr.ph396, %._crit_edge.i
  %.sroa.07.0.i.lcssa = phi i64 [ %i.cv, %._crit_edge.i ], [ %i.da, %bb.s ], [ %.sroa.07.0.i394, %.lr.ph396 ] ; 3 uses
  %.not.i.not.not.not.lcssa = phi i8 [ 1, %._crit_edge.i ], [ 1, %bb.s ], [ 0, %.lr.ph396 ]
  %i.cz = icmp ult i64 %.sroa.07.0.i.lcssa, %.sroa.0.0.lcssa.ph.i
  br i1 %i.cz, label %bb.ac, label %bb.t, !prof !60

.lr.ph396:                                        ; preds = %._crit_edge.i, %bb.s
  %.sroa.07.0.i394 = phi i64 [ %i.da, %bb.s ], [ %i.cv, %._crit_edge.i ] ; 3 uses
  %i.da = add nsw i64 %.sroa.07.0.i394, -1        ; 4 uses
  %i.db = icmp ult i64 %i.da, %i.cv
  call void @llvm.assume(i1 %i.db)
  %i.dc = getelementptr [32 x i8], ptr %.sroa.0.0140.lcssa165, i64 %.sroa.07.0.i394
  %.val.i = load double, ptr %i.dc, align 8, !alias.scope !27343, !noundef !56
  %i.dd = fcmp ult double %.val.i, %.sroa.09.0.copyload.i
  br i1 %i.dd, label %._crit_edge, label %bb.s

bb.t:                                             ; preds = %._crit_edge
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %.sroa.0.0.lcssa.ph.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27345)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !27346
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %.sroa.07.0.i.lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !27346
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  %.sroa.084.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.084.1.i.i, %bb.y ] ; 3 uses
  %.sroa.068.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.068.1.i.i, %bb.y ] ; 3 uses
  %.sroa.046.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.046.2.i.i, %bb.y ] ; 3 uses
  %.sroa.044.0.i.i = phi i64 [ 128, %bb.t ], [ %.sroa.044.1.i.i, %bb.y ] ; 2 uses
  %.sroa.032.0.i.i = phi ptr [ %i.df, %bb.t ], [ %.sroa.032.1.i.i, %bb.y ] ; 8 uses
  %.sroa.018.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.018.2.i.i, %bb.y ] ; 3 uses
  %.sroa.015.0.i.i = phi i64 [ 128, %bb.t ], [ %.sroa.015.1.i.i, %bb.y ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.de, %bb.t ], [ %spec.select.i.i, %bb.y ] ; 7 uses
  %i.dg = ptrtoint ptr %.sroa.032.0.i.i to i64
  %i.dh = ptrtoint ptr %.sroa.01.0.i.i to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 3 uses
  %i.dj = icmp ult i64 %i.di, 8224                ; 2 uses
  br i1 %i.dj, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.sroa.044.1.i.i = phi i64 [ %.sroa.044.0.i.i, %bb.u ], [ %.sroa.060.0.mux.i.i, %bb.w ], [ %i.dr, %bb.x ] ; 6 uses
  %.sroa.015.1.i.i = phi i64 [ %.sroa.015.0.i.i, %bb.u ], [ %.sroa.015.0.mux.i.i, %bb.w ], [ %i.dq, %bb.x ] ; 6 uses
  %i.dk = icmp eq ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i
  br i1 %i.dk, label %.preheader6.i.i, label %.loopexit7.i.i

.preheader6.i.i:                                  ; preds = %bb.v
  %.not26.i.i = icmp eq i64 %.sroa.015.1.i.i, 0
  br i1 %.not26.i.i, label %.loopexit7.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader6.i.i
  %xtraiter = and i64 %.sroa.015.1.i.i, 3         ; 3 uses
  %i.dl = icmp ult i64 %.sroa.015.1.i.i, 4
  br i1 %i.dl, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.sroa.015.1.i.i, -4
  br label %.lr.ph.i.i

bb.w:                                             ; preds = %bb.u
  %i.dm = lshr i64 %i.di, 5                       ; 3 uses
  %i.dn = icmp ult ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i ; 3 uses
  %i.do = icmp ult ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i
  %or.cond.i.i = select i1 %i.dn, i1 true, i1 %i.do ; 2 uses
  %i.dp = add nsw i64 %i.dm, -128                 ; 2 uses
  %.sroa.060.0.i.i = select i1 %or.cond.i.i, i64 %i.dp, i64 %i.dm
  %.sroa.060.0.mux.i.i = select i1 %i.dn, i64 %i.dp, i64 %.sroa.044.0.i.i
  %.sroa.015.0.mux.i.i = select i1 %i.dn, i64 %.sroa.015.0.i.i, i64 %.sroa.060.0.i.i
  br i1 %or.cond.i.i, label %bb.v, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dq = lshr i64 %i.di, 6                       ; 2 uses
  %i.dr = sub nsw i64 %i.dm, %i.dq
  br label %bb.v

.loopexit7.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit7.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit7.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.065.010.i.i.epil.init = phi ptr [ %.sroa.01.0.i.i, %.lr.ph.i.i.preheader ], [ %i.en, %.loopexit7.i.i.loopexit.unr-lcssa ]
  %.sroa.068.29.i.i.epil.init = phi ptr [ %i.i, %.lr.ph.i.i.preheader ], [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit7.i.i.loopexit.unr-lcssa ]
  %.sroa.0105.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ej, %.loopexit7.i.i.loopexit.unr-lcssa ]
  %lcmp.mod481 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod481)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.065.010.i.i.epil = phi ptr [ %i.dv, %.lr.ph.i.i.epil ], [ %.sroa.065.010.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.068.29.i.i.epil = phi ptr [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph.i.i.epil ], [ %.sroa.068.29.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.0105.08.i.i.epil = phi i64 [ %i.ds, %.lr.ph.i.i.epil ], [ %.sroa.0105.08.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ds = add nuw i64 %.sroa.0105.08.i.i.epil, 1
  %i.dt = trunc i64 %.sroa.0105.08.i.i.epil to i8
  store i8 %i.dt, ptr %.sroa.068.29.i.i.epil, align 1, !noalias !27346
  %.sroa.065.0.val.i.i.epil = load double, ptr %.sroa.065.010.i.i.epil, align 8, !alias.scope !27346, !noundef !56
  %i.du = fcmp oge double %.sroa.065.0.val.i.i.epil, %.sroa.09.0.copyload.i
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx = zext i1 %i.du to i64
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.068.29.i.i.epil, i64 %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i.epil, i64 32
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit7.i.i, label %.lr.ph.i.i.epil, !llvm.loop !27316

.loopexit7.i.i:                                   ; preds = %.loopexit7.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %.preheader6.i.i, %bb.v
  %.sroa.068.1.i.i = phi ptr [ %.sroa.068.0.i.i, %bb.v ], [ %i.i, %.preheader6.i.i ], [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit7.i.i.loopexit.unr-lcssa ], [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph.i.i.epil ] ; 7 uses
  %.sroa.018.1.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.v ], [ %i.i, %.preheader6.i.i ], [ %i.i, %.lr.ph.i.i.epil ], [ %i.i, %.loopexit7.i.i.loopexit.unr-lcssa ] ; 6 uses
  %i.dw = icmp eq ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i
  br i1 %i.dw, label %.preheader5.i.i, label %.loopexit.i.i

.preheader5.i.i:                                  ; preds = %.loopexit7.i.i
  %.not27.i.i = icmp eq i64 %.sroa.044.1.i.i, 0
  br i1 %.not27.i.i, label %.loopexit.i.i, label %.lr.ph14.i.i.preheader

.lr.ph14.i.i.preheader:                           ; preds = %.preheader5.i.i
  %xtraiter482 = and i64 %.sroa.044.1.i.i, 3      ; 3 uses
  %i.dx = icmp ult i64 %.sroa.044.1.i.i, 4
  br i1 %i.dx, label %.lr.ph14.i.i.epil.preheader, label %.lr.ph14.i.i.preheader.new

.lr.ph14.i.i.preheader.new:                       ; preds = %.lr.ph14.i.i.preheader
  %unroll_iter487 = and i64 %.sroa.044.1.i.i, -4
  br label %.lr.ph14.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.065.010.i.i = phi ptr [ %.sroa.01.0.i.i, %.lr.ph.i.i.preheader.new ], [ %i.en, %.lr.ph.i.i ] ; 5 uses
  %.sroa.068.29.i.i = phi ptr [ %i.i, %.lr.ph.i.i.preheader.new ], [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0105.08.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ej, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.dy = trunc i64 %.sroa.0105.08.i.i to i8
  store i8 %i.dy, ptr %.sroa.068.29.i.i, align 1, !noalias !27346
  %.sroa.065.0.val.i.i = load double, ptr %.sroa.065.010.i.i, align 8, !alias.scope !27346, !noundef !56
  %i.dz = fcmp oge double %.sroa.065.0.val.i.i, %.sroa.09.0.copyload.i
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.dz to i64
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.068.29.i.i, i64 %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 32
  %i.eb = trunc i64 %.sroa.0105.08.i.i to i8
  %i.ec = or disjoint i8 %i.eb, 1
  store i8 %i.ec, ptr %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !noalias !27346
  %.sroa.065.0.val.i.i.1 = load double, ptr %i.ea, align 8, !alias.scope !27346, !noundef !56
  %i.ed = fcmp oge double %.sroa.065.0.val.i.i.1, %.sroa.09.0.copyload.i
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.1 = zext i1 %i.ed to i64
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1 = getelementptr inbounds nuw i8, ptr %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.1 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 64
  %i.ef = trunc i64 %.sroa.0105.08.i.i to i8
  %i.eg = or disjoint i8 %i.ef, 2
  store i8 %i.eg, ptr %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, align 1, !noalias !27346
  %.sroa.065.0.val.i.i.2 = load double, ptr %i.ee, align 8, !alias.scope !27346, !noundef !56
  %i.eh = fcmp oge double %.sroa.065.0.val.i.i.2, %.sroa.09.0.copyload.i
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel.idx = zext i1 %i.eh to i64
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, i64 %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel.idx ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 96
  %i.ej = add nuw i64 %.sroa.0105.08.i.i, 4       ; 2 uses
  %i.ek = trunc i64 %.sroa.0105.08.i.i to i8
  %i.el = or disjoint i8 %i.ek, 3
  store i8 %i.el, ptr %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel, align 1, !noalias !27346
  %.sroa.065.0.val.i.i.3 = load double, ptr %i.ei, align 8, !alias.scope !27346, !noundef !56
  %i.em = fcmp oge double %.sroa.065.0.val.i.i.3, %.sroa.09.0.copyload.i
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.3 = zext i1 %i.em to i64
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3 = getelementptr inbounds nuw i8, ptr %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel, i64 %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.3 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 128 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit7.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph14.i.i
  %lcmp.mod484.not = icmp eq i64 %xtraiter482, 0
  br i1 %lcmp.mod484.not, label %.loopexit.i.i, label %.lr.ph14.i.i.epil.preheader

.lr.ph14.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph14.i.i.preheader
  %.sroa.079.013.i.i.epil.init = phi ptr [ %.sroa.032.0.i.i, %.lr.ph14.i.i.preheader ], [ %i.fl, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.sroa.084.212.i.i.epil.init = phi ptr [ %i.h, %.lr.ph14.i.i.preheader ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.sroa.0107.011.i.i.epil.init = phi i64 [ 0, %.lr.ph14.i.i.preheader ], [ %i.fk, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod486 = icmp ne i64 %xtraiter482, 0
  call void @llvm.assume(i1 %lcmp.mod486)
  br label %.lr.ph14.i.i.epil

.lr.ph14.i.i.epil:                                ; preds = %.lr.ph14.i.i.epil, %.lr.ph14.i.i.epil.preheader
  %.sroa.079.013.i.i.epil = phi ptr [ %i.ep, %.lr.ph14.i.i.epil ], [ %.sroa.079.013.i.i.epil.init, %.lr.ph14.i.i.epil.preheader ]
  %.sroa.084.212.i.i.epil = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph14.i.i.epil ], [ %.sroa.084.212.i.i.epil.init, %.lr.ph14.i.i.epil.preheader ] ; 2 uses
  %.sroa.0107.011.i.i.epil = phi i64 [ %i.eo, %.lr.ph14.i.i.epil ], [ %.sroa.0107.011.i.i.epil.init, %.lr.ph14.i.i.epil.preheader ] ; 2 uses
  %epil.iter483 = phi i64 [ %epil.iter483.next, %.lr.ph14.i.i.epil ], [ 0, %.lr.ph14.i.i.epil.preheader ]
  %i.eo = add nuw i64 %.sroa.0107.011.i.i.epil, 1
  %i.ep = getelementptr inbounds i8, ptr %.sroa.079.013.i.i.epil, i64 -32 ; 2 uses
  %i.eq = trunc i64 %.sroa.0107.011.i.i.epil to i8
  store i8 %i.eq, ptr %.sroa.084.212.i.i.epil, align 1, !noalias !27346
  %.val.i.i64.epil = load double, ptr %i.ep, align 8, !alias.scope !27346, !noundef !56
  %i.er = fcmp ult double %.val.i.i64.epil, %.sroa.09.0.copyload.i
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx = zext i1 %i.er to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.212.i.i.epil, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx ; 2 uses
  %epil.iter483.next = add i64 %epil.iter483, 1   ; 2 uses
  %epil.iter483.cmp.not = icmp eq i64 %epil.iter483.next, %xtraiter482
  br i1 %epil.iter483.cmp.not, label %.loopexit.i.i, label %.lr.ph14.i.i.epil, !llvm.loop !27317

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph14.i.i.epil, %.preheader5.i.i, %.loopexit7.i.i
  %.sroa.084.1.i.i = phi ptr [ %.sroa.084.0.i.i, %.loopexit7.i.i ], [ %i.h, %.preheader5.i.i ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit.i.i.loopexit.unr-lcssa ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph14.i.i.epil ] ; 7 uses
  %.sroa.046.1.i.i = phi ptr [ %.sroa.046.0.i.i, %.loopexit7.i.i ], [ %i.h, %.preheader5.i.i ], [ %i.h, %.lr.ph14.i.i.epil ], [ %i.h, %.loopexit.i.i.loopexit.unr-lcssa ] ; 5 uses
  %i.es = ptrtoint ptr %.sroa.068.1.i.i to i64
  %i.et = ptrtoint ptr %.sroa.018.1.i.i to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = ptrtoint ptr %.sroa.084.1.i.i to i64
  %i.ew = ptrtoint ptr %.sroa.046.1.i.i to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = call i64 @llvm.umin.i64(i64 %i.eu, i64 %i.ex) ; 3 uses
  %.not.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i, label %bb.y, label %bb.z

.lr.ph14.i.i:                                     ; preds = %.lr.ph14.i.i, %.lr.ph14.i.i.preheader.new
  %.sroa.079.013.i.i = phi ptr [ %.sroa.032.0.i.i, %.lr.ph14.i.i.preheader.new ], [ %i.fl, %.lr.ph14.i.i ] ; 4 uses
  %.sroa.084.212.i.i = phi ptr [ %i.h, %.lr.ph14.i.i.preheader.new ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.lr.ph14.i.i ] ; 2 uses
  %.sroa.0107.011.i.i = phi i64 [ 0, %.lr.ph14.i.i.preheader.new ], [ %i.fk, %.lr.ph14.i.i ] ; 5 uses
  %niter488 = phi i64 [ 0, %.lr.ph14.i.i.preheader.new ], [ %niter488.next.3, %.lr.ph14.i.i ]
  %i.ez = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -32
  %i.fa = trunc i64 %.sroa.0107.011.i.i to i8
  store i8 %i.fa, ptr %.sroa.084.212.i.i, align 1, !noalias !27346
  %.val.i.i64 = load double, ptr %i.ez, align 8, !alias.scope !27346, !noundef !56
  %i.fb = fcmp ult double %.val.i.i64, %.sroa.09.0.copyload.i
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.fb to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.212.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -64
  %i.fd = trunc i64 %.sroa.0107.011.i.i to i8
  %i.fe = or disjoint i8 %i.fd, 1
  store i8 %i.fe, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !noalias !27346
  %.val.i.i64.1 = load double, ptr %i.fc, align 8, !alias.scope !27346, !noundef !56
  %i.ff = fcmp ult double %.val.i.i64.1, %.sroa.09.0.copyload.i
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.1 = zext i1 %i.ff to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1 = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.1 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -96
  %i.fh = trunc i64 %.sroa.0107.011.i.i to i8
  %i.fi = or disjoint i8 %i.fh, 2
  store i8 %i.fi, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, align 1, !noalias !27346
  %.val.i.i64.2 = load double, ptr %i.fg, align 8, !alias.scope !27346, !noundef !56
  %i.fj = fcmp ult double %.val.i.i64.2, %.sroa.09.0.copyload.i
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel.idx = zext i1 %i.fj to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel.idx ; 2 uses
  %i.fk = add nuw i64 %.sroa.0107.011.i.i, 4      ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -128 ; 3 uses
  %i.fm = trunc i64 %.sroa.0107.011.i.i to i8
  %i.fn = or disjoint i8 %i.fm, 3
  store i8 %i.fn, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel, align 1, !noalias !27346
  %.val.i.i64.3 = load double, ptr %i.fl, align 8, !alias.scope !27346, !noundef !56
  %i.fo = fcmp ult double %.val.i.i64.3, %.sroa.09.0.copyload.i
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.3 = zext i1 %i.fo to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3 = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.3 ; 3 uses
  %niter488.next.3 = add nuw i64 %niter488, 4     ; 2 uses
  %niter488.ncmp.3 = icmp eq i64 %niter488.next.3, %unroll_iter487
  br i1 %niter488.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph14.i.i

bb.y:                                             ; preds = %._crit_edge.i.i, %.loopexit.i.i
  %.sroa.046.2.i.i = phi ptr [ %i.ge, %._crit_edge.i.i ], [ %.sroa.046.1.i.i, %.loopexit.i.i ] ; 5 uses
  %.sroa.018.2.i.i = phi ptr [ %i.gd, %._crit_edge.i.i ], [ %.sroa.018.1.i.i, %.loopexit.i.i ] ; 5 uses
  %i.fp = icmp eq ptr %.sroa.018.2.i.i, %.sroa.068.1.i.i
  %spec.select.idx.i.i = select i1 %i.fp, i64 %.sroa.015.1.i.i, i64 0
  %spec.select.i.i = getelementptr inbounds nuw [32 x i8], ptr %.sroa.01.0.i.i, i64 %spec.select.idx.i.i ; 9 uses
  %i.fq = icmp eq ptr %.sroa.046.2.i.i, %.sroa.084.1.i.i
  %i.fr = sub nsw i64 0, %.sroa.044.1.i.i
  %.sroa.032.1.idx.i.i = select i1 %i.fq, i64 %i.fr, i64 0
  %.sroa.032.1.i.i = getelementptr inbounds [32 x i8], ptr %.sroa.032.0.i.i, i64 %.sroa.032.1.idx.i.i ; 6 uses
  br i1 %i.dj, label %bb.aa, label %bb.u

bb.z:                                             ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fs = load i8, ptr %.sroa.018.1.i.i, align 1, !noalias !27346, !noundef !56
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [32 x i8], ptr %.sroa.01.0.i.i, i64 %i.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.fu, i64 32, i1 false)
  %i.fv = load i8, ptr %.sroa.046.1.i.i, align 1, !noalias !27346, !noundef !56 ; 2 uses
end_hunk_4
begin_hunk_5_@_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_adjacency_matrix:bb.a
  %i.qk = getelementptr [8 x i8], ptr %i.dm, i64 %i.qj
  %i.ql = getelementptr [8 x i8], ptr %i.qk, i64 %i.qi ; 2 uses
  %i.qm = load double, ptr %i.ql, align 8, !noundef !56
  %i.qn = fadd double %i.fg, %i.qm
  store double %i.qn, ptr %i.ql, align 8
  br label %bb.ch

bb.cq:                                            ; preds = %bb.ay
  store double %i.fg, ptr %i.fm, align 8
  %i.qo = icmp ult i64 %i.ey, %.val3.i
  %i.qp = icmp ult i64 %i.ex, %.val4.i
  %or.cond.i.i.i405 = and i1 %i.qo, %i.qp
  br i1 %or.cond.i.i.i405, label %bb.cr, label %.invoke

bb.cr:                                            ; preds = %bb.cq
  %i.qq = mul i64 %.val5.i, %i.ey
  %i.qr = mul i64 %.val6.i, %i.ex
  %i.qs = getelementptr [8 x i8], ptr %i.dm, i64 %i.qr
  %i.qt = getelementptr [8 x i8], ptr %i.qs, i64 %i.qq
  store double %i.fg, ptr %i.qt, align 8
  br label %bb.ch

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.bo, %bb.bn
  %.val127 = load ptr, ptr %i.k, align 8          ; 2 uses
  %.val128 = load i64, ptr %i.dp, align 8, !noundef !56 ; 4 uses
  %i.qu = icmp eq i64 %.val128, 0
  br i1 %i.qu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapAjj2_lEECskcxRuJ53GpR_9rustworkx.exit411, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i410

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i410: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit
  %i.qv = mul i64 %.val128, 24
  %i.qw = icmp slt i64 %.val128, 768614336404564650
  call void @llvm.assume(i1 %i.qw)
  %i.qx = and i64 %i.qv, -16                      ; 2 uses
  %i.qy = add i64 %i.qx, 32                       ; 2 uses
  %i.qz = add nsw i64 %.val128, 17
  %i.ra = add i64 %i.qz, %i.qy                    ; 4 uses
  %i.rb = icmp uge i64 %i.ra, %i.qy
  %i.rc = icmp ult i64 %i.ra, 9223372036854775793
  call void @llvm.assume(i1 %i.rb)
  call void @llvm.assume(i1 %i.rc)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val127) ]
  %i.rd = icmp eq i64 %i.ra, 0
  br i1 %i.rd, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapAjj2_lEECskcxRuJ53GpR_9rustworkx.exit411, label %bb.cs

bb.cs:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i410
  %i.re = sub i64 -32, %i.qx
  %i.rf = getelementptr inbounds i8, ptr %.val127, i64 %i.re
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rf, i64 noundef %i.ra, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapAjj2_lEECskcxRuJ53GpR_9rustworkx.exit411

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapAjj2_lEECskcxRuJ53GpR_9rustworkx.exit411: ; preds = %bb.cs, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i410, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.rg = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.rh = load i64, ptr %i.rg, align 8, !noundef !56 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.rh, 0
  br i1 %.not.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapAjj2_lEECskcxRuJ53GpR_9rustworkx.exit411
  %i.ri = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ri, i8 0, i64 16, i1 false)
  %i.rj = load ptr, ptr %i.h, align 8, !nonnull !56, !noundef !56
  %i.rk = shl nuw i64 %i.rh, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rj, i64 noundef %i.rk, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103076
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapAjj2_lEECskcxRuJ53GpR_9rustworkx.exit411
  %i.rl = icmp eq ptr %.sroa.14.1561, null
  %i.rm = icmp eq i64 %.sroa.19.1566, 0
  %or.cond.i412 = select i1 %i.rl, i1 true, i1 %i.rm
  br i1 %or.cond.i412, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEEECskcxRuJ53GpR_9rustworkx.exit415, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i413

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i413: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit
  %i.rn = shl i64 %.sroa.19.1566, 4               ; 2 uses
  %i.ro = add i64 %i.rn, 16                       ; 2 uses
  %i.rp = add i64 %.sroa.19.1566, 17
  %i.rq = add i64 %i.rp, %i.ro                    ; 4 uses
  %i.rr = icmp uge i64 %i.rq, %i.ro
  %i.rs = icmp ult i64 %i.rq, 9223372036854775793
  call void @llvm.assume(i1 %i.rr)
  call void @llvm.assume(i1 %i.rs)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.1561) ]
  %i.rt = icmp eq i64 %i.rq, 0
  br i1 %i.rt, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEEECskcxRuJ53GpR_9rustworkx.exit415, label %bb.ct

bb.ct:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i413
  %i.ru = sub nuw nsw i64 -16, %i.rn
  %i.rv = getelementptr inbounds i8, ptr %.sroa.14.1561, i64 %i.ru
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rv, i64 noundef %i.rq, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEEECskcxRuJ53GpR_9rustworkx.exit415

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEEECskcxRuJ53GpR_9rustworkx.exit415: ; preds = %bb.ct, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i413, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.cu

bb.cu:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEEECskcxRuJ53GpR_9rustworkx.exit415, %bb.ab
  %i.rw = icmp eq ptr %2, null
  br i1 %i.rw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.rx = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i416 = load i64, ptr %i.rx, align 8, !noundef !56
  %i.ry = icmp sgt i64 %.val.i.i.i.i.i416, 0
  br i1 %i.ry, label %bb.cx, label %bb.cw, !prof !109

bb.cw:                                            ; preds = %bb.cv
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %2)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.cx:                                            ; preds = %bb.cv
  call void @_Py_DecRef(ptr noundef nonnull %2) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.cy:                                            ; preds = %.body, %.body143
  %i.rz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.cz:                                            ; preds = %.thread837, %.thread583, %bb.ah
  %.pn.pn590 = phi { ptr, i32 } [ %i.cv, %.thread583 ], [ %lpad.loopexit.split-lp622, %bb.ah ], [ %.pn.ph, %.thread837 ] ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.sb = load i64, ptr %i.sa, align 8, !noundef !56 ; 2 uses
  %.not.i.i.i418 = icmp eq i64 %i.sb, 0
  br i1 %.not.i.i.i418, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit420, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i419

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i419: ; preds = %bb.cz
  %i.sc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sc, i8 0, i64 16, i1 false)
  %i.sd = load ptr, ptr %i.h, align 8, !nonnull !56, !noundef !56
  %i.se = shl nuw i64 %i.sb, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sd, i64 noundef %i.se, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103077
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit420

bb.da:                                            ; preds = %.body
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_paths(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3, i64 noundef range(i64 0, 2) %4, i64 %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [120 x i8], align 8               ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [120 x i8], align 8               ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [64 x i8], align 8                ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [120 x i8], align 8               ; 17 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  %i.p = alloca [40 x i8], align 8                ; 12 uses
  %i.q = alloca [120 x i8], align 8               ; 17 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = trunc i64 %2 to i32                      ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val94 = load ptr, ptr %i.u, align 8, !nonnull !56, !noundef !56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val95 = load i64, ptr %i.v, align 8, !noundef !56 ; 2 uses
  %i.w = and i64 %2, 4294967295                   ; 3 uses
  %i.x = icmp ugt i64 %.val95, %i.w
  br i1 %i.x, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.val94, i64 %i.w ; 10 uses
  %i.z = load ptr, ptr %i.y, align 8, !noundef !56
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %select.unfold, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit

.body150:                                         ; preds = %bb.k, %.invoke, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit144, %.split35.us.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre349 = load ptr, ptr %3, align 8            ; 2 uses
  %.not320 = icmp eq ptr %.pre349, null
  br i1 %.not320, label %.thread, label %bb.by

select.unfold:                                    ; preds = %bb.b, %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.ab = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.invoke, label %bb.c, !prof !88

.invoke:                                          ; preds = %bb.t, %select.unfold312, %select.unfold
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.cont unwind label %.body150

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.b
  %i.ad = trunc nuw i64 %4 to i1
  %i.ae = icmp ne i64 %5, 0
  %or.cond.not = select i1 %i.ad, i1 %i.ae, i1 false
  %i.af = add i64 %5, -2
  %.sroa.012.0 = select i1 %or.cond.not, i64 %i.af, i64 0 ; 4 uses
  %8 = trunc nuw i64 %6 to i1                     ; 2 uses
  %i.ag = load ptr, ptr %3, align 8, !noundef !56
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.h, label %bb.d

bb.c:                                             ; preds = %select.unfold
  store ptr @2608, ptr %i.ab, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 52, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.027.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.027.sroa.5.0..sroa_idx, align 8
  %.sroa.027.sroa.5.sroa.4.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.027.sroa.5.sroa.4.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.027.sroa.5.sroa.5.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ab, ptr %.sroa.027.sroa.5.sroa.5.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.027.sroa.5.sroa.6.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @2587, ptr %.sroa.027.sroa.5.sroa.6.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.428.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.pre = load ptr, ptr %3, align 8               ; 2 uses
  %.not87 = icmp eq ptr %.pre, null
  br i1 %.not87, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, label %bb.v

bb.d:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103232)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i = load i64, ptr %i.aj, align 8, !alias.scope !103232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !103233
  invoke fastcc void @_RINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB6_8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtB2u_6option6OptionBO_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.j, i32 %i.t)
          to label %.noexc105 unwind label %bb.ao

.noexc105:                                        ; preds = %bb.d
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !103233
  %i.ak = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103233 ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.e, label %bb.g, !prof !88

bb.e:                                             ; preds = %.noexc105
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #61
          to label %.noexc.i unwind label %bb.f, !noalias !103233

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.j) #63, !noalias !103233
  br label %.body

bb.g:                                             ; preds = %.noexc105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103236)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !103237, !nonnull !56, !noundef !56 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !103237, !noundef !56 ; 3 uses
  %i.ar = load ptr, ptr %i.y, align 8, !noalias !103238, !noundef !56
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i, label %bb.ap, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.at = load <2 x i32>, ptr %i.as, align 8, !noalias !103238
  br label %bb.ap

bb.h:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load i32, ptr %i.au, align 8, !noundef !56 ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = icmp ugt i64 %.val95, %i.aw
  br i1 %i.ax, label %bb.i, label %select.unfold312

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.val94, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8, !noundef !56
  %.not.i107 = icmp eq ptr %i.az, null
  br i1 %.not.i107, label %select.unfold312, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit109

select.unfold312:                                 ; preds = %bb.i, %bb.h
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.ba = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.invoke, label %bb.j, !prof !88

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit109: ; preds = %bb.i
  %i.bc = icmp eq i32 %i.av, %i.t
  %i.bd = icmp eq i64 %.sroa.012.0, 0
  %or.cond6 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond6, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE14edges_directedCskcxRuJ53GpR_9rustworkx.exit, label %bb.k

bb.j:                                             ; preds = %select.unfold312
  store ptr @2609, ptr %i.ba, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 50, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.057.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.057.sroa.5.0..sroa_idx, align 8
  %.sroa.057.sroa.5.sroa.4.0..sroa.057.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.057.sroa.5.sroa.4.0..sroa.057.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.057.sroa.5.sroa.5.0..sroa.057.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ba, ptr %.sroa.057.sroa.5.sroa.5.0..sroa.057.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.057.sroa.5.sroa.6.0..sroa.057.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @2587, ptr %.sroa.057.sroa.5.sroa.6.0..sroa.057.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.458.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

bb.k:                                             ; preds = %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1j_5types3any5PyAnyENtBa_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B2x_5count0ECskcxRuJ53GpR_9rustworkx.exit, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103239)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i112 = load i64, ptr %i.bg, align 8, !alias.scope !103239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !103240
  invoke fastcc void @_RINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB6_8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtB2u_6option6OptionBO_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.i, i32 %i.t)
          to label %.noexc136 unwind label %.body150

.noexc136:                                        ; preds = %bb.k
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !103240
  %i.bh = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103240 ; 6 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.l, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i113, !prof !88

bb.l:                                             ; preds = %.noexc136
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #61
          to label %.noexc.i135 unwind label %bb.m, !noalias !103240

.noexc.i135:                                      ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.i) #63, !noalias !103240
  br label %.thread

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i113: ; preds = %.noexc136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103243)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !103244, !nonnull !56, !noundef !56
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !103244, !noundef !56
  %i.bo = load ptr, ptr %i.y, align 8, !noalias !103245, !noundef !56
  %.not.i.i.i.i.i130 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i130, label %bb.x, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i131

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i131: ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i113
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bq = load <2 x i32>, ptr %i.bp, align 8, !noalias !103245
  br label %bb.x

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE14edges_directedCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit109
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103246)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !103246, !nonnull !56, !noundef !56 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !103246, !noundef !56 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !103247
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.bv, align 8, !noalias !103247
  br label %.split.i.i.preheader.i

.split.i.i.preheader.i:                           ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE14edges_directedCskcxRuJ53GpR_9rustworkx.exit, %_RNvXsj_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1o_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.loopexit13.i
  %i.bw = phi i32 [ %i.ct, %_RNvXsj_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1o_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.loopexit13.i ], [ %.sroa.5.0.copyload.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE14edges_directedCskcxRuJ53GpR_9rustworkx.exit ] ; 2 uses
  %i.bx = phi i32 [ %i.cu, %_RNvXsj_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1o_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.loopexit13.i ], [ %.sroa.0.0.copyload.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE14edges_directedCskcxRuJ53GpR_9rustworkx.exit ] ; 2 uses
  %.sroa.0.0.i140 = phi i64 [ %i.cy, %_RNvXsj_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1o_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.loopexit13.i ], [ 0, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE14edges_directedCskcxRuJ53GpR_9rustworkx.exit ] ; 3 uses
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.s, %.split.i.i.preheader.i
  %i.by = phi i32 [ %i.ct, %bb.s ], [ %i.bw, %.split.i.i.preheader.i ]
  %i.bz = phi i32 [ %i.cu, %bb.s ], [ %i.bx, %.split.i.i.preheader.i ]
  %i.ca = phi i32 [ %i.cv, %bb.s ], [ %i.bw, %.split.i.i.preheader.i ] ; 2 uses
  %i.cb = phi i32 [ %i.cw, %bb.s ], [ %i.bx, %.split.i.i.preheader.i ] ; 2 uses
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = icmp ugt i64 %i.bu, %i.cc
  br i1 %i.cd, label %bb.n, label %._crit_edge.i.i.i.i.preheader

._crit_edge.i.i.i.i.preheader:                    ; preds = %bb.n, %.split.i.i.i
  br label %._crit_edge.i.i.i.i

bb.n:                                             ; preds = %.split.i.i.i
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.cc ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !103248, !noundef !56
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !noalias !103248, !noundef !56 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.023.0.copyload.i.i.i.i = load i64, ptr %i.ci, align 8, !noalias !103248
  br label %bb.s

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.preheader, %bb.p
  %i.cj = phi i32 [ %i.co, %bb.p ], [ %i.ca, %._crit_edge.i.i.i.i.preheader ]
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = icmp ugt i64 %i.bu, %i.ck
  br i1 %i.cl, label %bb.p, label %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1j_5types3any5PyAnyENtBa_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B2x_5count0ECskcxRuJ53GpR_9rustworkx.exit

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.ck ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !noalias !103248, !noundef !56 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %.val.i.i.i.i141 = load i32, ptr %i.cp, align 4, !noalias !103248, !noundef !56
  %i.cq = icmp eq i32 %.val.i.i.i.i141, %i.t
  br i1 %i.cq, label %._crit_edge.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = load ptr, ptr %i.cm, align 8, !noalias !103248, !noundef !56
  %.not42.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not42.i.i.i.i, label %.split35.us.i.i.i, label %bb.r, !prof !60

bb.r:                                             ; preds = %bb.q
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %.sroa.032.0.copyload.i.i.i.i = load i64, ptr %i.cs, align 8, !noalias !103248
  %.sroa.0.0.insert.insert.i44.i.i.i.i = shl i64 %.sroa.032.0.copyload.i.i.i.i, 32
  br label %bb.s

.split35.us.i.i.i:                                ; preds = %bb.q
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4315) #60
          to label %.noexc142 unwind label %.body150

.noexc142:                                        ; preds = %.split35.us.i.i.i
  unreachable

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.ct = phi i32 [ %i.by, %bb.o ], [ %i.co, %bb.r ] ; 2 uses
  %i.cu = phi i32 [ %i.ch, %bb.o ], [ %i.bz, %bb.r ] ; 2 uses
  %i.cv = phi i32 [ %i.ca, %bb.o ], [ %i.co, %bb.r ]
  %i.cw = phi i32 [ %i.ch, %bb.o ], [ %i.cb, %bb.r ]
  %.sroa.9.0.ph.i.i.i = phi i64 [ %.sroa.023.0.copyload.i.i.i.i, %bb.o ], [ %.sroa.0.0.insert.insert.i44.i.i.i.i, %bb.r ]
  %.sroa.4.sroa.4.0.extract.shift.i.i.i = lshr i64 %.sroa.9.0.ph.i.i.i, 32
  %.sroa.4.sroa.4.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.4.sroa.4.0.extract.shift.i.i.i to i32
  %i.cx = icmp eq i32 %i.t, %.sroa.4.sroa.4.0.extract.trunc.i.i.i
  br i1 %i.cx, label %_RNvXsj_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1o_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.loopexit13.i, label %.split.i.i.i

_RNvXsj_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1o_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.loopexit13.i: ; preds = %bb.s
  %i.cy = add i64 %.sroa.0.0.i140, 1
  br label %.split.i.i.preheader.i

_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1j_5types3any5PyAnyENtBa_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B2x_5count0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %._crit_edge.i.i.i.i
  %.not86 = icmp eq i64 %.sroa.0.0.i140, 0
  br i1 %.not86, label %bb.k, label %bb.t

bb.t:                                             ; preds = %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1j_5types3any5PyAnyENtBa_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B2x_5count0ECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.cz = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.invoke, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit144, !prof !88

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit144: ; preds = %bb.t
  store i64 %2, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %2, ptr %i.db, align 8
  store i64 2, ptr %i.r, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.cz, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 2, ptr %i.dd, align 8
  invoke fastcc void @_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtB5_3VecjENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r, i64 noundef %.sroa.0.0.i140)
          to label %bb.u unwind label %.body150

bb.u:                                             ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

bb.v:                                             ; preds = %bb.c
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val103 = load i64, ptr %i.df, align 8, !noundef !56 ; 4 uses
  %i.dg = icmp eq i64 %.val103, 0
  br i1 %i.dg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.v
  %i.dh = shl i64 %.val103, 2
  %i.di = icmp slt i64 %.val103, 4611686018427387900
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = and i64 %i.dh, -16                      ; 2 uses
  %i.dk = add i64 %i.dj, 16                       ; 2 uses
  %i.dl = add nsw i64 %.val103, 17
  %i.dm = add i64 %i.dl, %i.dk                    ; 4 uses
  %i.dn = icmp uge i64 %i.dm, %i.dk
  %i.do = icmp ult i64 %i.dm, 9223372036854775793
  tail call void @llvm.assume(i1 %i.dn)
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = icmp eq i64 %i.dm, 0
  br i1 %i.dp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, label %bb.w

bb.w:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.dq = sub nuw nsw i64 -16, %i.dj
  %i.dr = getelementptr inbounds i8, ptr %.pre, i64 %i.dq
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dr, i64 noundef %i.dm, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.u, %bb.j, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_jEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1J_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBS_NtNtB37_10graph_impl9NodeIndexERINtNtB4b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5k_5types3any5PyAnyEB5f_NtB37_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0EE9from_iterB7v_.exit, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit217, %bb.w, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.v, %bb.c
  ret void

bb.x:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i131, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i113
  %i.ds = phi <2 x i32> [ %i.bq, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i131 ], [ splat (i32 -1), %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i113 ]
  %.sroa.02.0.i117.v = select i1 %8, i64 %7, i64 %.val.i.i112
  %.sroa.02.0.i117 = add i64 %.sroa.02.0.i117.v, -1
  %i.dt = add i64 %.sroa.012.0, 1
  store ptr %i.bl, ptr %i.bh, align 8, !noalias !103240
  %.sroa.4.0..sroa.013.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.bn, ptr %.sroa.4.0..sroa.013.0..sroa_idx.i118, align 8, !noalias !103240
  %.sroa.5.0..sroa.013.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <2 x i32> %i.ds, ptr %.sroa.5.0..sroa.013.0..sroa_idx.i119, align 8, !noalias !103240
  %.sroa.7.0..sroa.013.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i32 %i.t, ptr %.sroa.7.0..sroa.013.0..sroa_idx.i121, align 8, !noalias !103240
  %.sroa.6272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6272.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !103240
  store i64 1, ptr %i.q, align 8
  %.sroa.4270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.bh, ptr %.sroa.4270.0..sroa_idx, align 8
  %.sroa.5271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 1, ptr %.sroa.5271.0..sroa_idx, align 8
  %.sroa.7273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  store ptr %1, ptr %.sroa.7273.0..sroa_idx, align 8
  %.sroa.8274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store i64 %.sroa.02.0.i117, ptr %.sroa.8274.0..sroa_idx, align 8
  %.sroa.9275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store i64 %i.dt, ptr %.sroa.9275.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  store i32 %i.av, ptr %.sroa.10.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103249)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !103250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !103250
  invoke fastcc void @_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1C_10graph_impl9NodeIndexERINtNtB39_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4i_5types3any5PyAnyEB4d_NtB1C_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0ENtNtNtB9_6traits8iterator8Iterator4nextB6t_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.q)
          to label %bb.z unwind label %bb.y, !noalias !103251

bb.y:                                             ; preds = %bb.x
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.z:                                             ; preds = %bb.x
  %i.dv = load i64, ptr %i.g, align 8, !range !55, !noalias !103250, !noundef !56 ; 4 uses
  %.not.i145 = icmp eq i64 %i.dv, -1
  br i1 %.not.i145, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !103250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !103250
  call void @llvm.experimental.noalias.scope.decl(metadata !103252)
  call void @llvm.experimental.noalias.scope.decl(metadata !103253)
  call void @llvm.experimental.noalias.scope.decl(metadata !103254)
  %.val.i.i.i.i149 = load i64, ptr %i.q, align 8, !alias.scope !103255 ; 2 uses
  %i.dw = icmp eq i64 %.val.i.i.i.i149, 0
  br i1 %i.dw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %bb.aa
  %.val1.i.i.i.i = load ptr, ptr %.sroa.4270.0..sroa_idx, align 8, !alias.scope !103255, !nonnull !56, !noundef !56
  %i.dx = shl nuw i64 %.val.i.i.i.i149, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103256
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !103257)
  call void @llvm.experimental.noalias.scope.decl(metadata !103258)
  call void @llvm.experimental.noalias.scope.decl(metadata !103259)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.dy, align 8, !alias.scope !103260, !noundef !56 ; 4 uses
  %i.dz = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.dz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ea, align 8, !alias.scope !103260, !nonnull !56, !noundef !56
  %i.eb = shl i64 %.val1.i.i.i.i.i.i.i, 3
  %i.ec = icmp slt i64 %.val1.i.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.ec)
  %i.ed = and i64 %i.eb, -16                      ; 2 uses
  %i.ee = add i64 %i.ed, 16                       ; 2 uses
  %i.ef = add nsw i64 %.val1.i.i.i.i.i.i.i, 17
  %i.eg = add i64 %i.ef, %i.ee                    ; 3 uses
  %i.eh = icmp uge i64 %i.eg, %i.ee
  call void @llvm.assume(i1 %i.eh)
  %i.ei = icmp ult i64 %i.eg, 9223372036854775793
  call void @llvm.assume(i1 %i.ei)
  %i.ej = sub nuw nsw i64 -16, %i.ed
  %i.ek = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.ej
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ek, i64 noundef %i.eg, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !103261
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.val2.i.i.i.i.i.i.i = load i64, ptr %.sroa.6272.0..sroa_idx, align 8, !alias.scope !103260 ; 2 uses
  %i.el = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.el, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_jEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1J_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBS_NtNtB37_10graph_impl9NodeIndexERINtNtB4b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5k_5types3any5PyAnyEB5f_NtB37_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0EE9from_iterB7v_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.em, align 8, !alias.scope !103260, !nonnull !56, !noundef !56
  %i.en = shl nuw i64 %.val2.i.i.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %i.en, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103261
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_jEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1J_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBS_NtNtB37_10graph_impl9NodeIndexERINtNtB4b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5k_5types3any5PyAnyEB5f_NtB37_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0EE9from_iterB7v_.exit

bb.ab:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = icmp eq i64 %i.dv, 0
  br i1 %i.ep, label %bb.an, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i147) ]
  %i.eq = shl nuw i64 %i.dv, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i147, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103262
  br label %bb.an

bb.ac:                                            ; preds = %bb.z
  %.sroa.5.0..sroa_idx.i146 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0.copyload.i147 = load ptr, ptr %.sroa.5.0..sroa_idx.i146, align 8, !noalias !103250 ; 3 uses
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx8.i, align 8, !noalias !103250
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !103263
  %i.er = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103263 ; 6 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #61
          to label %bb.am unwind label %bb.ab, !noalias !103251

bb.ae:                                            ; preds = %bb.ac
  store i64 %i.dv, ptr %i.er, align 8, !noalias !103251
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %.sroa.5.0.copyload.i147, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !103251
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !103251
  store i64 4, ptr %i.h, align 8, !noalias !103250
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %i.er, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !103250
  %.sroa.6.0..sroa_idx.i148 = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i148, align 8, !noalias !103250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !103250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !103250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(120) %i.q, i64 120, i1 false), !noalias !103251
  call void @llvm.experimental.noalias.scope.decl(metadata !103264)
  call void @llvm.experimental.noalias.scope.decl(metadata !103265)
  call void @llvm.experimental.noalias.scope.decl(metadata !103266)
  call void @llvm.experimental.noalias.scope.decl(metadata !103267)
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.af

bb.af:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.ae
  %i.et = phi ptr [ %i.ft, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.er, %bb.ae ]
  %.sroa.6266.0.copyload268 = phi i64 [ %i.fv, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 1, %bb.ae ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !103268
  invoke fastcc void @_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1C_10graph_impl9NodeIndexERINtNtB39_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4i_5types3any5PyAnyEB4d_NtB1C_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0ENtNtNtB9_6traits8iterator8Iterator4nextB6t_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.f)
          to label %bb.ah unwind label %bb.ag, !noalias !103269

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %bb.ak, %bb.ag
  %.pn.i.i.i = phi { ptr, i32 } [ %i.eu, %bb.ag ], [ %i.fw, %bb.ak ], [ %i.fw, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1P_10graph_impl9NodeIndexERINtNtB3m_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4v_5types3any5PyAnyEB4q_NtB1P_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0EEB6G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.f) #63, !noalias !103269
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #63, !noalias !103251
  br label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.ev = load i64, ptr %i.e, align 8, !range !55, !noalias !103268, !noundef !56 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.ev, -1
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !103268 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !103268
  %i.ew = icmp samesign ult i64 %.sroa.6266.0.copyload268, 384307168202282326
  call void @llvm.assume(i1 %i.ew)
  %i.ex = load i64, ptr %i.h, align 8, !range !59, !alias.scope !103270, !noalias !103250, !noundef !56
  %i.ey = icmp eq i64 %.sroa.6266.0.copyload268, %i.ex
  br i1 %i.ey, label %bb.al, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !103268
  call void @llvm.experimental.noalias.scope.decl(metadata !103271)
  call void @llvm.experimental.noalias.scope.decl(metadata !103272)
  call void @llvm.experimental.noalias.scope.decl(metadata !103273)
  %.val.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !103274, !noalias !103250 ; 2 uses
  %i.ez = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ez, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i: ; preds = %bb.aj
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.fa, align 8, !alias.scope !103274, !noalias !103250, !nonnull !56, !noundef !56
  %i.fb = shl nuw i64 %.val.i.i.i.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.fb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103275
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i, %bb.aj
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !103276)
  call void @llvm.experimental.noalias.scope.decl(metadata !103277)
  call void @llvm.experimental.noalias.scope.decl(metadata !103278)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fd, align 8, !alias.scope !103279, !noalias !103250, !noundef !56 ; 4 uses
  %i.fe = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fe, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ff, align 8, !alias.scope !103279, !noalias !103250, !nonnull !56, !noundef !56
  %i.fg = shl i64 %.val1.i.i.i.i.i.i.i.i.i, 3
  %i.fh = icmp slt i64 %.val1.i.i.i.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.fh)
  %i.fi = and i64 %i.fg, -16                      ; 2 uses
  %i.fj = add i64 %i.fi, 16                       ; 2 uses
  %i.fk = add nsw i64 %.val1.i.i.i.i.i.i.i.i.i, 17
  %i.fl = add i64 %i.fk, %i.fj                    ; 3 uses
  %i.fm = icmp uge i64 %i.fl, %i.fj
  call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp ult i64 %i.fl, 9223372036854775793
  call void @llvm.assume(i1 %i.fn)
  %i.fo = sub nuw nsw i64 -16, %i.fi
  %i.fp = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.fo
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fp, i64 noundef %i.fl, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !103280
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fc, align 8, !alias.scope !103279, !noalias !103250 ; 2 uses
  %i.fq = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fq, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecIBI_jEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBI_NtNtB2O_10graph_impl9NodeIndexERINtNtB3S_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_NtB2O_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0EE11spec_extendB7c_.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fr, align 8, !alias.scope !103279, !noalias !103250, !nonnull !56, !noundef !56
  %i.fs = shl nuw i64 %.val2.i.i.i.i.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i, i64 noundef %i.fs, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103280
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecIBI_jEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBI_NtNtB2O_10graph_impl9NodeIndexERINtNtB3S_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_NtB2O_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0EE11spec_extendB7c_.exit.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i, %bb.ai
  %i.ft = phi ptr [ %.pre.i, %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i ], [ %i.et, %bb.ai ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %.sroa.6266.0.copyload268 ; 3 uses
  store i64 %i.ev, ptr %i.fu, align 8, !noalias !103269
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !103269
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i, align 8, !noalias !103269
  %i.fv = add nuw nsw i64 %.sroa.6266.0.copyload268, 1 ; 2 uses
  store i64 %i.fv, ptr %.sroa.6.0..sroa_idx.i148, align 8, !alias.scope !103270, !noalias !103250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !103268
  br label %bb.af

bb.ak:                                            ; preds = %bb.al
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = icmp eq i64 %i.ev, 0
  br i1 %i.fx, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  %i.fy = shl nuw i64 %i.ev, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %i.fy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103281
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.al:                                            ; preds = %bb.ai
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.6266.0.copyload268, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i unwind label %bb.ak, !noalias !103251

._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i: ; preds = %bb.al
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !103270, !noalias !103250
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecIBI_jEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBI_NtNtB2O_10graph_impl9NodeIndexERINtNtB3S_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_NtB2O_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0EE11spec_extendB7c_.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !103250
  %.sroa.0261.0.copyload262 = load i64, ptr %i.h, align 8, !noalias !103249
  %.sroa.5263.0.copyload265 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !103249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !103250
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_jEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1J_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBS_NtNtB37_10graph_impl9NodeIndexERINtNtB4b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5k_5types3any5PyAnyEB5f_NtB37_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0EE9from_iterB7v_.exit

bb.am:                                            ; preds = %bb.ad
  unreachable

bb.an:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.ab, %bb.y
  %.pn.ph.i = phi { ptr, i32 } [ %i.du, %bb.y ], [ %i.eo, %bb.ab ], [ %i.eo, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1P_10graph_impl9NodeIndexERINtNtB3m_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4v_5types3any5PyAnyEB4q_NtB1P_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0EEB6G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.q) #63, !noalias !103251
  br label %.thread

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_jEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1J_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBS_NtNtB37_10graph_impl9NodeIndexERINtNtB4b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5k_5types3any5PyAnyEB5f_NtB37_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0EE9from_iterB7v_.exit: ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecIBI_jEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBI_NtNtB2O_10graph_impl9NodeIndexERINtNtB3S_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_NtB2O_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0EE11spec_extendB7c_.exit.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %.sroa.6266.0 = phi i64 [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i ], [ %.sroa.6266.0.copyload268, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecIBI_jEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBI_NtNtB2O_10graph_impl9NodeIndexERINtNtB3S_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_NtB2O_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0EE11spec_extendB7c_.exit.i ]
  %.sroa.5263.0 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i ], [ %.sroa.5263.0.copyload265, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecIBI_jEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBI_NtNtB2O_10graph_impl9NodeIndexERINtNtB3S_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_NtB2O_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0EE11spec_extendB7c_.exit.i ]
  %.sroa.0261.0 = phi i64 [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i ], [ %.sroa.0261.0.copyload262, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecIBI_jEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBI_NtNtB2O_10graph_impl9NodeIndexERINtNtB3S_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_NtB2O_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss_0EE11spec_extendB7c_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0261.0, ptr %i.fz, align 8
  %.sroa.5263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5263.0, ptr %.sroa.5263.0..sroa_idx, align 8
  %.sroa.6266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6266.0, ptr %.sroa.6266.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

.body:                                            ; preds = %.body257, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i166, %bb.bf, %bb.f, %bb.ao
  %.pn = phi { ptr, i32 } [ %eh.lpad-body258, %.body257 ], [ %i.am, %bb.f ], [ %i.gb, %bb.ao ], [ %.pn.ph.i153, %bb.bf ], [ %.pn.i.i.i167, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i166 ]
  %.val100 = load ptr, ptr %i.p, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val101 = load i64, ptr %i.ga, align 8, !noundef !56
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx(ptr %.val100, i64 %.val101) #63
  br label %.thread

bb.ao:                                            ; preds = %bb.d
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ap:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.g
  %i.gc = phi <2 x i32> [ %i.at, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ splat (i32 -1), %bb.g ]
  %.sroa.02.0.i = select i1 %8, i64 %7, i64 %.val.i.i
  %i.gd = add i64 %.sroa.012.0, 2
  store ptr %i.ao, ptr %i.ak, align 8, !noalias !103233
  %.sroa.4.0..sroa.013.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.aq, ptr %.sroa.4.0..sroa.013.0..sroa_idx.i, align 8, !noalias !103233
  %.sroa.5.0..sroa.013.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x i32> %i.gc, ptr %.sroa.5.0..sroa.013.0..sroa_idx.i, align 8, !noalias !103233
  %.sroa.7.0..sroa.013.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i32 %i.t, ptr %.sroa.7.0..sroa.013.0..sroa_idx.i, align 8, !noalias !103233
  %.sroa.6280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6280.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !103233
  store i64 1, ptr %i.n, align 8
  %.sroa.4278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.ak, ptr %.sroa.4278.0..sroa_idx, align 8
  %.sroa.5279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1, ptr %.sroa.5279.0..sroa_idx, align 8
  %.sroa.7281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store ptr %i.p, ptr %.sroa.7281.0..sroa_idx, align 8
  %.sroa.8282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store ptr %1, ptr %.sroa.8282.0..sroa_idx, align 8
  %.sroa.9283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store i64 %i.gd, ptr %.sroa.9283.0..sroa_idx, align 8
  %.sroa.10284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store i64 %.sroa.02.0.i, ptr %.sroa.10284.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !103282)
  call void @llvm.experimental.noalias.scope.decl(metadata !103283)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !103284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !103284
  invoke fastcc void @_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1C_10graph_impl9NodeIndexERINtNtB3f_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4o_5types3any5PyAnyEB4j_NtB1C_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB6z_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.n)
          to label %bb.ar unwind label %bb.aq, !noalias !103282

bb.aq:                                            ; preds = %bb.ap
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ar:                                            ; preds = %bb.ap
  %i.gf = load i64, ptr %i.c, align 8, !range !55, !noalias !103284, !noundef !56 ; 4 uses
  %.not.i155 = icmp eq i64 %i.gf, -1
  br i1 %.not.i155, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  store i64 0, ptr %i.o, align 8, !alias.scope !103282
  %i.gg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.gg, align 8, !alias.scope !103282
  %i.gh = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.gh, align 8, !alias.scope !103282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !103284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !103284
  call void @llvm.experimental.noalias.scope.decl(metadata !103285)
  call void @llvm.experimental.noalias.scope.decl(metadata !103286)
  call void @llvm.experimental.noalias.scope.decl(metadata !103287)
  %.val.i.i.i.i189 = load i64, ptr %i.n, align 8, !alias.scope !103288 ; 2 uses
  %i.gi = icmp eq i64 %.val.i.i.i.i189, 0
  br i1 %i.gi, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i192, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i190

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i190: ; preds = %bb.as
  %.val1.i.i.i.i191 = load ptr, ptr %.sroa.4278.0..sroa_idx, align 8, !alias.scope !103288, !nonnull !56, !noundef !56
  %i.gj = shl nuw i64 %.val.i.i.i.i189, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i191, i64 noundef %i.gj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103289
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i192

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i192: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i190, %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !103290)
  call void @llvm.experimental.noalias.scope.decl(metadata !103291)
  call void @llvm.experimental.noalias.scope.decl(metadata !103292)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.val1.i.i.i.i.i.i.i193 = load i64, ptr %i.gk, align 8, !alias.scope !103293, !noundef !56 ; 4 uses
  %i.gl = icmp eq i64 %.val1.i.i.i.i.i.i.i193, 0
  br i1 %i.gl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i196, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i194

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i194: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i192
  %i.gm = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.val.i.i.i.i.i.i.i195 = load ptr, ptr %i.gm, align 8, !alias.scope !103293, !nonnull !56, !noundef !56
  %i.gn = shl i64 %.val1.i.i.i.i.i.i.i193, 3
  %i.go = icmp slt i64 %.val1.i.i.i.i.i.i.i193, 2305843009213693950
  call void @llvm.assume(i1 %i.go)
  %i.gp = and i64 %i.gn, -16                      ; 2 uses
  %i.gq = add i64 %i.gp, 16                       ; 2 uses
  %i.gr = add nsw i64 %.val1.i.i.i.i.i.i.i193, 17
  %i.gs = add i64 %i.gr, %i.gq                    ; 3 uses
  %i.gt = icmp uge i64 %i.gs, %i.gq
  call void @llvm.assume(i1 %i.gt)
  %i.gu = icmp ult i64 %i.gs, 9223372036854775793
  call void @llvm.assume(i1 %i.gu)
  %i.gv = sub nuw nsw i64 -16, %i.gp
  %i.gw = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i195, i64 %i.gv
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gw, i64 noundef %i.gs, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !103294
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i196

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i196: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i194, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i192
  %.val2.i.i.i.i.i.i.i197 = load i64, ptr %.sroa.6280.0..sroa_idx, align 8, !alias.scope !103293 ; 2 uses
  %i.gx = icmp eq i64 %.val2.i.i.i.i.i.i.i197, 0
  br i1 %i.gx, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_jEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1J_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiIBS_NtNtB37_10graph_impl9NodeIndexERINtNtB4h_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5q_5types3any5PyAnyEB5l_NtB37_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss0_0EE9from_iterB7B_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i198

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i198: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i196
  %i.gy = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.val3.i.i.i.i.i.i.i199 = load ptr, ptr %i.gy, align 8, !alias.scope !103293, !nonnull !56, !noundef !56
  %i.gz = shl nuw i64 %.val2.i.i.i.i.i.i.i197, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i199, i64 noundef %i.gz, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103294
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_jEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1J_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiIBS_NtNtB37_10graph_impl9NodeIndexERINtNtB4h_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5q_5types3any5PyAnyEB5l_NtB37_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss0_0EE9from_iterB7B_.exit

bb.at:                                            ; preds = %bb.av
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hb = icmp eq i64 %i.gf, 0
  br i1 %i.hb, label %bb.bf, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i188

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i188: ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i157) ]
  %i.hc = shl nuw i64 %i.gf, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i157, i64 noundef %i.hc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103295
  br label %bb.bf

bb.au:                                            ; preds = %bb.ar
  %.sroa.5.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload.i157 = load ptr, ptr %.sroa.5.0..sroa_idx.i156, align 8, !noalias !103284 ; 3 uses
  %.sroa.6.0..sroa_idx8.i158 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.copyload.i159 = load i64, ptr %.sroa.6.0..sroa_idx8.i158, align 8, !noalias !103284
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !103296
  %i.hd = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103296 ; 6 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #61
          to label %bb.be unwind label %bb.at, !noalias !103282

bb.aw:                                            ; preds = %bb.au
  store i64 %i.gf, ptr %i.hd, align 8, !noalias !103282
  %.sroa.413.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %.sroa.5.0.copyload.i157, ptr %.sroa.413.0..sroa_idx.i160, align 8, !noalias !103282
  %.sroa.514.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store i64 %.sroa.6.0.copyload.i159, ptr %.sroa.514.0..sroa_idx.i161, align 8, !noalias !103282
  store i64 4, ptr %i.d, align 8, !noalias !103284
  %.sroa.4.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.hd, ptr %.sroa.4.0..sroa_idx.i162, align 8, !noalias !103284
  %.sroa.6.0..sroa_idx.i163 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i163, align 8, !noalias !103284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !103284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !103284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %i.n, i64 120, i1 false), !noalias !103282
  call void @llvm.experimental.noalias.scope.decl(metadata !103297)
  call void @llvm.experimental.noalias.scope.decl(metadata !103298)
  call void @llvm.experimental.noalias.scope.decl(metadata !103299)
  call void @llvm.experimental.noalias.scope.decl(metadata !103300)
  %.sroa.5.0..sroa_idx.i.i.i164 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i165 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.ax

bb.ax:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i171, %bb.aw
  %i.hf = phi ptr [ %i.ig, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i171 ], [ %i.hd, %bb.aw ]
  %i.hg = phi i64 [ %i.ii, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i171 ], [ 1, %bb.aw ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !103301
  invoke fastcc void @_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1C_10graph_impl9NodeIndexERINtNtB3f_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4o_5types3any5PyAnyEB4j_NtB1C_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB6z_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.az unwind label %bb.ay, !noalias !103302

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i166: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i174, %bb.bc, %bb.ay
  %.pn.i.i.i167 = phi { ptr, i32 } [ %i.hh, %bb.ay ], [ %i.ij, %bb.bc ], [ %i.ij, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i174 ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1P_10graph_impl9NodeIndexERINtNtB3s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4B_5types3any5PyAnyEB4w_NtB1P_10UndirectedENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity22graph_all_simple_pathss0_0EEB6M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.b) #63, !noalias !103302
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #63, !noalias !103282
  br label %.body

bb.ay:                                            ; preds = %bb.ax
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i166

bb.az:                                            ; preds = %bb.ax
  %i.hi = load i64, ptr %i.a, align 8, !range !55, !noalias !103301, !noundef !56 ; 4 uses
  %.not.i.i.i168 = icmp eq i64 %i.hi, -1
  br i1 %.not.i.i.i168, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.sroa.5.0.copyload.i.i.i169 = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i164, align 8, !noalias !103301 ; 3 uses
  %.sroa.6.0.copyload.i.i.i170 = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i165, align 8, !noalias !103301
  %i.hj = icmp samesign ult i64 %i.hg, 384307168202282326
  call void @llvm.assume(i1 %i.hj)
  %i.hk = load i64, ptr %i.d, align 8, !range !59, !alias.scope !103303, !noalias !103284, !noundef !56
  %i.hl = icmp eq i64 %i.hg, %i.hk
  br i1 %i.hl, label %bb.bd, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i171

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !103301
  call void @llvm.experimental.noalias.scope.decl(metadata !103304)
  call void @llvm.experimental.noalias.scope.decl(metadata !103305)
  call void @llvm.experimental.noalias.scope.decl(metadata !103306)
  %.val.i.i.i.i.i.i177 = load i64, ptr %i.b, align 8, !alias.scope !103307, !noalias !103284 ; 2 uses
  %i.hm = icmp eq i64 %.val.i.i.i.i.i.i177, 0
  br i1 %i.hm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i180, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i178

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i178: ; preds = %bb.bb
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i.i.i.i179 = load ptr, ptr %i.hn, align 8, !alias.scope !103307, !noalias !103284, !nonnull !56, !noundef !56
  %i.ho = shl nuw i64 %.val.i.i.i.i.i.i177, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i179, i64 noundef %i.ho, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103308
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i180

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i180: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i178, %bb.bb
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
end_hunk_5
begin_hunk_6_@_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_adjacency_matrix:bb.a
  call void @_Py_DecRef(ptr noundef nonnull %i.fa) #59
  br label %.backedge.backedge

bb.cd:                                            ; preds = %bb.bd
  %i.mo = call nsz double @llvm.maximumnum.f64(double %i.fn, double %i.fg)
  store double %i.mo, ptr %i.fm, align 8
  br label %bb.ca

bb.ce:                                            ; preds = %bb.bc
  %i.mp = call nsz double @llvm.minimumnum.f64(double %i.fn, double %i.fg)
  store double %i.mp, ptr %i.fm, align 8
  br label %bb.ca

bb.cf:                                            ; preds = %bb.bb
  %i.mq = fadd double %i.fg, %i.fn
  store double %i.mq, ptr %i.fm, align 8
  br label %bb.ca

bb.cg:                                            ; preds = %bb.az
  store double %i.fg, ptr %i.fm, align 8
  br label %bb.ca

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.bp, %bb.bo
  %.val117 = load ptr, ptr %i.k, align 8          ; 2 uses
  %.val118 = load i64, ptr %i.dp, align 8, !noundef !56 ; 4 uses
  %i.mr = icmp eq i64 %.val118, 0
  br i1 %i.mr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapAjj2_lEECskcxRuJ53GpR_9rustworkx.exit289, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i288

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i288: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit
  %i.ms = mul i64 %.val118, 24
  %i.mt = icmp slt i64 %.val118, 768614336404564650
  call void @llvm.assume(i1 %i.mt)
  %i.mu = and i64 %i.ms, -16                      ; 2 uses
  %i.mv = add i64 %i.mu, 32                       ; 2 uses
  %i.mw = add nsw i64 %.val118, 17
  %i.mx = add i64 %i.mw, %i.mv                    ; 4 uses
  %i.my = icmp uge i64 %i.mx, %i.mv
  %i.mz = icmp ult i64 %i.mx, 9223372036854775793
  call void @llvm.assume(i1 %i.my)
  call void @llvm.assume(i1 %i.mz)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val117) ]
  %i.na = icmp eq i64 %i.mx, 0
  br i1 %i.na, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapAjj2_lEECskcxRuJ53GpR_9rustworkx.exit289, label %bb.ch

bb.ch:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i288
  %i.nb = sub i64 -32, %i.mu
  %i.nc = getelementptr inbounds i8, ptr %.val117, i64 %i.nb
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nc, i64 noundef %i.mx, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapAjj2_lEECskcxRuJ53GpR_9rustworkx.exit289

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapAjj2_lEECskcxRuJ53GpR_9rustworkx.exit289: ; preds = %bb.ch, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i288, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.nd = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ne = load i64, ptr %i.nd, align 8, !noundef !56 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapAjj2_lEECskcxRuJ53GpR_9rustworkx.exit289
  %i.nf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nf, i8 0, i64 16, i1 false)
  %i.ng = load ptr, ptr %i.h, align 8, !nonnull !56, !noundef !56
  %i.nh = shl nuw i64 %i.ne, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ng, i64 noundef %i.nh, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103606
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapAjj2_lEECskcxRuJ53GpR_9rustworkx.exit289
  %i.ni = icmp eq ptr %.sroa.14.1412, null
  %i.nj = icmp eq i64 %.sroa.19.1417, 0
  %or.cond.i290 = select i1 %i.ni, i1 true, i1 %i.nj
  br i1 %or.cond.i290, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEEECskcxRuJ53GpR_9rustworkx.exit293, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i291

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i291: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit
  %i.nk = shl i64 %.sroa.19.1417, 4               ; 2 uses
  %i.nl = add i64 %i.nk, 16                       ; 2 uses
  %i.nm = add i64 %.sroa.19.1417, 17
  %i.nn = add i64 %i.nm, %i.nl                    ; 4 uses
  %i.no = icmp uge i64 %i.nn, %i.nl
  %i.np = icmp ult i64 %i.nn, 9223372036854775793
  call void @llvm.assume(i1 %i.no)
  call void @llvm.assume(i1 %i.np)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.1412) ]
  %i.nq = icmp eq i64 %i.nn, 0
  br i1 %i.nq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEEECskcxRuJ53GpR_9rustworkx.exit293, label %bb.ci

bb.ci:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i291
  %i.nr = sub nuw nsw i64 -16, %i.nk
  %i.ns = getelementptr inbounds i8, ptr %.sroa.14.1412, i64 %i.nr
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ns, i64 noundef %i.nn, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEEECskcxRuJ53GpR_9rustworkx.exit293

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEEECskcxRuJ53GpR_9rustworkx.exit293: ; preds = %bb.ci, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i291, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEEECskcxRuJ53GpR_9rustworkx.exit293, %bb.ab
  %i.nt = icmp eq ptr %2, null
  br i1 %i.nt, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nu = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i294 = load i64, ptr %i.nu, align 8, !noundef !56
  %i.nv = icmp sgt i64 %.val.i.i.i.i.i294, 0
  br i1 %i.nv, label %bb.cm, label %bb.cl, !prof !109

bb.cl:                                            ; preds = %bb.ck
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %2)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.cm:                                            ; preds = %bb.ck
  call void @_Py_DecRef(ptr noundef nonnull %2) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.cn:                                            ; preds = %.body, %.body133
  %i.nw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.co:                                            ; preds = %.thread613, %.thread434, %bb.ah
  %.pn.pn441 = phi { ptr, i32 } [ %i.cv, %.thread434 ], [ %lpad.loopexit.split-lp465, %bb.ah ], [ %.pn.ph, %.thread613 ] ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ny = load i64, ptr %i.nx, align 8, !noundef !56 ; 2 uses
  %.not.i.i.i296 = icmp eq i64 %i.ny, 0
  br i1 %.not.i.i.i296, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit298, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i297

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i297: ; preds = %bb.co
  %i.nz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nz, i8 0, i64 16, i1 false)
  %i.oa = load ptr, ptr %i.h, align 8, !nonnull !56, !noundef !56
  %i.ob = shl nuw i64 %i.ny, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oa, i64 noundef %i.ob, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103607
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit298

bb.cp:                                            ; preds = %.body
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_paths(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3, i64 noundef range(i64 0, 2) %4, i64 %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [120 x i8], align 8               ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [120 x i8], align 8               ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [64 x i8], align 8                ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [120 x i8], align 8               ; 17 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  %i.p = alloca [40 x i8], align 8                ; 12 uses
  %i.q = alloca [120 x i8], align 8               ; 17 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = trunc i64 %2 to i32                      ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val103 = load ptr, ptr %i.u, align 8, !nonnull !56, !noundef !56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val104 = load i64, ptr %i.v, align 8, !noundef !56 ; 2 uses
  %i.w = and i64 %2, 4294967295                   ; 3 uses
  %i.x = icmp ugt i64 %.val104, %i.w
  br i1 %i.x, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.val103, i64 %i.w ; 8 uses
  %i.z = load ptr, ptr %i.y, align 8, !noundef !56
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %select.unfold, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit

.body146:                                         ; preds = %bb.k, %.invoke, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit140
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre315 = load ptr, ptr %3, align 8            ; 2 uses
  %.not306 = icmp eq ptr %.pre315, null
  br i1 %.not306, label %.thread, label %bb.bo

select.unfold:                                    ; preds = %bb.b, %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.ab = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.invoke, label %bb.c, !prof !88

.invoke:                                          ; preds = %bb.o, %select.unfold298, %select.unfold
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.cont unwind label %.body146

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.b
  %i.ad = trunc nuw i64 %4 to i1
  %i.ae = icmp ne i64 %5, 0
  %or.cond.not = select i1 %i.ad, i1 %i.ae, i1 false
  %i.af = add i64 %5, -2
  %.sroa.012.0 = select i1 %or.cond.not, i64 %i.af, i64 0 ; 4 uses
  %8 = trunc nuw i64 %6 to i1                     ; 2 uses
  %i.ag = load ptr, ptr %3, align 8, !noundef !56
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.h, label %bb.d

bb.c:                                             ; preds = %select.unfold
  store ptr @2608, ptr %i.ab, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 52, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.027.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.027.sroa.5.0..sroa_idx, align 8
  %.sroa.027.sroa.5.sroa.4.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.027.sroa.5.sroa.4.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.027.sroa.5.sroa.5.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ab, ptr %.sroa.027.sroa.5.sroa.5.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.027.sroa.5.sroa.6.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @2587, ptr %.sroa.027.sroa.5.sroa.6.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.428.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.pre = load ptr, ptr %3, align 8               ; 2 uses
  %.not87 = icmp eq ptr %.pre, null
  br i1 %.not87, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, label %bb.q

bb.d:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103762)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i = load i64, ptr %i.aj, align 8, !alias.scope !103762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !103763
  invoke fastcc void @_RINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB6_8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtB2u_6option6OptionBO_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.j, i32 %i.t)
          to label %.noexc105 unwind label %bb.aj

.noexc105:                                        ; preds = %bb.d
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !103763
  %i.ak = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103763 ; 7 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.e, label %bb.g, !prof !88

bb.e:                                             ; preds = %.noexc105
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #61
          to label %.noexc.i unwind label %bb.f, !noalias !103763

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.j) #63, !noalias !103763
  br label %.body

bb.g:                                             ; preds = %.noexc105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103766)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !103767, !nonnull !56, !noundef !56 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !103767, !noundef !56 ; 2 uses
  %i.ar = load ptr, ptr %i.y, align 8, !noalias !103768, !noundef !56
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i, label %bb.ak, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.as, align 8, !noalias !103768
  br label %bb.ak

bb.h:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load i32, ptr %i.at, align 8, !noundef !56 ; 3 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = icmp ugt i64 %.val104, %i.av
  br i1 %i.aw, label %bb.i, label %select.unfold298

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.val103, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !noundef !56
  %.not.i107 = icmp eq ptr %i.ay, null
  br i1 %.not.i107, label %select.unfold298, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit109

select.unfold298:                                 ; preds = %bb.i, %bb.h
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.az = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.invoke, label %bb.j, !prof !88

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit109: ; preds = %bb.i
  %i.bb = icmp eq i32 %i.au, %i.t
  %i.bc = icmp eq i64 %.sroa.012.0, 0
  %or.cond6 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond6, label %.split.us.preheader.i.i.us.preheader.i, label %bb.k

bb.j:                                             ; preds = %select.unfold298
  store ptr @2609, ptr %i.az, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 50, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.057.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.057.sroa.5.0..sroa_idx, align 8
  %.sroa.057.sroa.5.sroa.4.0..sroa.057.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.057.sroa.5.sroa.4.0..sroa.057.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.057.sroa.5.sroa.5.0..sroa.057.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.az, ptr %.sroa.057.sroa.5.sroa.5.0..sroa.057.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.057.sroa.5.sroa.6.0..sroa.057.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @2587, ptr %.sroa.057.sroa.5.sroa.6.0..sroa.057.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.458.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

bb.k:                                             ; preds = %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1j_5types3any5PyAnyENtBa_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B2u_5count0ECskcxRuJ53GpR_9rustworkx.exit, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103769)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i112 = load i64, ptr %i.bf, align 8, !alias.scope !103769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !103770
  invoke fastcc void @_RINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB6_8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtB2u_6option6OptionBO_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.i, i32 %i.t)
          to label %.noexc133 unwind label %.body146

.noexc133:                                        ; preds = %bb.k
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !103770
  %i.bg = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103770 ; 7 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.l, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i113, !prof !88

bb.l:                                             ; preds = %.noexc133
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #61
          to label %.noexc.i132 unwind label %bb.m, !noalias !103770

.noexc.i132:                                      ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.i) #63, !noalias !103770
  br label %.thread

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i113: ; preds = %.noexc133
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103773)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !103774, !nonnull !56, !noundef !56
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !103774, !noundef !56
  %i.bn = load ptr, ptr %i.y, align 8, !noalias !103775, !noundef !56
  %.not.i.i.i.i.i129 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i129, label %bb.s, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i130

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i130: ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i113
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0.0.copyload.i.i.i.i131 = load i32, ptr %i.bo, align 8, !noalias !103775
  br label %bb.s

.split.us.preheader.i.i.us.preheader.i:           ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit109
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103776)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !103776, !nonnull !56, !noundef !56
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !103776, !noundef !56
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.bt, align 8, !noalias !103777
  br label %.split.us.preheader.i.i.us.i

.split.us.preheader.i.i.us.i:                     ; preds = %_RNvXsj_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1o_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.loopexit.us.i, %.split.us.preheader.i.i.us.preheader.i
  %i.bu = phi i32 [ %i.cb, %_RNvXsj_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1o_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.loopexit.us.i ], [ %.sroa.0.0.copyload.i, %.split.us.preheader.i.i.us.preheader.i ]
  %.sroa.0.0.us.i = phi i64 [ %i.cd, %_RNvXsj_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1o_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.loopexit.us.i ], [ 0, %.split.us.preheader.i.i.us.preheader.i ] ; 3 uses
  br label %.split.us.i.i.us.i

.split.us.i.i.us.i:                               ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.us.i, %.split.us.preheader.i.i.us.i
  %i.bv = phi i32 [ %i.cb, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.us.i ], [ %i.bu, %.split.us.preheader.i.i.us.i ]
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = icmp ugt i64 %i.bs, %i.bw
  br i1 %i.bx, label %bb.n, label %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1j_5types3any5PyAnyENtBa_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B2u_5count0ECskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %.split.us.i.i.us.i
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bw ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !103778, !noundef !56
  %.not.i.us.i.i.us.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.us.i.i.us.i, label %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1j_5types3any5PyAnyENtBa_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B2u_5count0ECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.us.i

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.us.i: ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !noalias !103778, !noundef !56 ; 2 uses
  %.sroa.9.0.in.us.i.i.us.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.sroa.9.0.us.i.i.us.i = load i64, ptr %.sroa.9.0.in.us.i.i.us.i, align 8, !noalias !103778
  %.sroa.4.sroa.4.0.extract.shift.us.i.i.us.i = lshr i64 %.sroa.9.0.us.i.i.us.i, 32
  %.sroa.4.sroa.4.0.extract.trunc.us.i.i.us.i = trunc nuw i64 %.sroa.4.sroa.4.0.extract.shift.us.i.i.us.i to i32
  %i.cc = icmp eq i32 %i.t, %.sroa.4.sroa.4.0.extract.trunc.us.i.i.us.i
  br i1 %i.cc, label %_RNvXsj_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1o_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.loopexit.us.i, label %.split.us.i.i.us.i

_RNvXsj_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1o_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.loopexit.us.i: ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.us.i
  %i.cd = add i64 %.sroa.0.0.us.i, 1
  br label %.split.us.preheader.i.i.us.i

_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1j_5types3any5PyAnyENtBa_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B2u_5count0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.n, %.split.us.i.i.us.i
  %.not86 = icmp eq i64 %.sroa.0.0.us.i, 0
  br i1 %.not86, label %bb.k, label %bb.o

bb.o:                                             ; preds = %_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph15EdgesConnectingINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1j_5types3any5PyAnyENtBa_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B2u_5count0ECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.ce = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %.invoke, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit140, !prof !88

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit140: ; preds = %bb.o
  store i64 %2, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %2, ptr %i.cg, align 8
  store i64 2, ptr %i.r, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ce, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 2, ptr %i.ci, align 8
  invoke fastcc void @_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtB5_3VecjENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r, i64 noundef %.sroa.0.0.us.i)
          to label %bb.p unwind label %.body146

bb.p:                                             ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

bb.q:                                             ; preds = %bb.c
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val99 = load i64, ptr %i.ck, align 8, !noundef !56 ; 4 uses
  %i.cl = icmp eq i64 %.val99, 0
  br i1 %i.cl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.q
  %i.cm = shl i64 %.val99, 2
  %i.cn = icmp slt i64 %.val99, 4611686018427387900
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = and i64 %i.cm, -16                      ; 2 uses
  %i.cp = add i64 %i.co, 16                       ; 2 uses
  %i.cq = add nsw i64 %.val99, 17
  %i.cr = add i64 %i.cq, %i.cp                    ; 4 uses
  %i.cs = icmp uge i64 %i.cr, %i.cp
  %i.ct = icmp ult i64 %i.cr, 9223372036854775793
  tail call void @llvm.assume(i1 %i.cs)
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = icmp eq i64 %i.cr, 0
  br i1 %i.cu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, label %bb.r

bb.r:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.cv = sub nuw nsw i64 -16, %i.co
  %i.cw = getelementptr inbounds i8, ptr %.pre, i64 %i.cv
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cw, i64 noundef %i.cr, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.p, %bb.j, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_jEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1J_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBS_NtNtB37_10graph_impl9NodeIndexERINtNtB4b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5k_5types3any5PyAnyEB5f_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0EE9from_iterB7d_.exit, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit213, %bb.r, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.q, %bb.c
  ret void

bb.s:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i130, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i113
  %.sroa.0.0.i.i.i.i115 = phi i32 [ %.sroa.0.0.copyload.i.i.i.i131, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i130 ], [ -1, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i113 ]
  %.sroa.02.0.i116.v = select i1 %8, i64 %7, i64 %.val.i.i112
  %.sroa.02.0.i116 = add i64 %.sroa.02.0.i116.v, -1
  %i.cx = add i64 %.sroa.012.0, 1
  store ptr %i.bk, ptr %i.bg, align 8, !noalias !103770
  %.sroa.4.0..sroa.013.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.bm, ptr %.sroa.4.0..sroa.013.0..sroa_idx.i117, align 8, !noalias !103770
  %.sroa.5.0..sroa.013.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i32 %.sroa.0.0.i.i.i.i115, ptr %.sroa.5.0..sroa.013.0..sroa_idx.i118, align 8, !noalias !103770
  %.sroa.615.0..sroa.013.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  store i32 -1, ptr %.sroa.615.0..sroa.013.0..sroa_idx.i119, align 4, !noalias !103770
  %.sroa.8.0..sroa.013.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i32 -1, ptr %.sroa.8.0..sroa.013.0..sroa_idx.i120, align 8, !noalias !103770
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6261.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !103770
  store i64 1, ptr %i.q, align 8
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.bg, ptr %.sroa.4259.0..sroa_idx, align 8
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 1, ptr %.sroa.5260.0..sroa_idx, align 8
  %.sroa.7262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  store ptr %1, ptr %.sroa.7262.0..sroa_idx, align 8
  %.sroa.8263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store i64 %.sroa.02.0.i116, ptr %.sroa.8263.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store i64 %i.cx, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  store i32 %i.au, ptr %.sroa.10264.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103779)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !103780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !103780
  invoke fastcc void @_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1C_10graph_impl9NodeIndexERINtNtB39_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4i_5types3any5PyAnyEB4d_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0ENtNtNtB9_6traits8iterator8Iterator4nextB6b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.q)
          to label %bb.u unwind label %bb.t, !noalias !103781

bb.t:                                             ; preds = %bb.s
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.u:                                             ; preds = %bb.s
  %i.cz = load i64, ptr %i.g, align 8, !range !55, !noalias !103780, !noundef !56 ; 4 uses
  %.not.i141 = icmp eq i64 %i.cz, -1
  br i1 %.not.i141, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !103780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !103780
  call void @llvm.experimental.noalias.scope.decl(metadata !103782)
  call void @llvm.experimental.noalias.scope.decl(metadata !103783)
  call void @llvm.experimental.noalias.scope.decl(metadata !103784)
  %.val.i.i.i.i145 = load i64, ptr %i.q, align 8, !alias.scope !103785 ; 2 uses
  %i.da = icmp eq i64 %.val.i.i.i.i145, 0
  br i1 %i.da, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %bb.v
  %.val1.i.i.i.i = load ptr, ptr %.sroa.4259.0..sroa_idx, align 8, !alias.scope !103785, !nonnull !56, !noundef !56
  %i.db = shl nuw i64 %.val.i.i.i.i145, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103786
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !103787)
  call void @llvm.experimental.noalias.scope.decl(metadata !103788)
  call void @llvm.experimental.noalias.scope.decl(metadata !103789)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.dc, align 8, !alias.scope !103790, !noundef !56 ; 4 uses
  %i.dd = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.dd, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.de, align 8, !alias.scope !103790, !nonnull !56, !noundef !56
  %i.df = shl i64 %.val1.i.i.i.i.i.i.i, 3
  %i.dg = icmp slt i64 %.val1.i.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.dg)
  %i.dh = and i64 %i.df, -16                      ; 2 uses
  %i.di = add i64 %i.dh, 16                       ; 2 uses
  %i.dj = add nsw i64 %.val1.i.i.i.i.i.i.i, 17
  %i.dk = add i64 %i.dj, %i.di                    ; 3 uses
  %i.dl = icmp uge i64 %i.dk, %i.di
  call void @llvm.assume(i1 %i.dl)
  %i.dm = icmp ult i64 %i.dk, 9223372036854775793
  call void @llvm.assume(i1 %i.dm)
  %i.dn = sub nuw nsw i64 -16, %i.dh
  %i.do = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.dn
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %i.dk, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !103791
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.val2.i.i.i.i.i.i.i = load i64, ptr %.sroa.6261.0..sroa_idx, align 8, !alias.scope !103790 ; 2 uses
  %i.dp = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.dp, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_jEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1J_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBS_NtNtB37_10graph_impl9NodeIndexERINtNtB4b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5k_5types3any5PyAnyEB5f_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0EE9from_iterB7d_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.dq, align 8, !alias.scope !103790, !nonnull !56, !noundef !56
  %i.dr = shl nuw i64 %.val2.i.i.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %i.dr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103791
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_jEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1J_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBS_NtNtB37_10graph_impl9NodeIndexERINtNtB4b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5k_5types3any5PyAnyEB5f_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0EE9from_iterB7d_.exit

bb.w:                                             ; preds = %bb.y
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = icmp eq i64 %i.cz, 0
  br i1 %i.dt, label %bb.ai, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i143) ]
  %i.du = shl nuw i64 %i.cz, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i143, i64 noundef %i.du, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103792
  br label %bb.ai

bb.x:                                             ; preds = %bb.u
  %.sroa.5.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0.copyload.i143 = load ptr, ptr %.sroa.5.0..sroa_idx.i142, align 8, !noalias !103780 ; 3 uses
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx8.i, align 8, !noalias !103780
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !103793
  %i.dv = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103793 ; 6 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #61
          to label %bb.ah unwind label %bb.w, !noalias !103781

bb.z:                                             ; preds = %bb.x
  store i64 %i.cz, ptr %i.dv, align 8, !noalias !103781
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %.sroa.5.0.copyload.i143, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !103781
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !103781
  store i64 4, ptr %i.h, align 8, !noalias !103780
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %i.dv, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !103780
  %.sroa.6.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i144, align 8, !noalias !103780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !103780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !103780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(120) %i.q, i64 120, i1 false), !noalias !103781
  call void @llvm.experimental.noalias.scope.decl(metadata !103794)
  call void @llvm.experimental.noalias.scope.decl(metadata !103795)
  call void @llvm.experimental.noalias.scope.decl(metadata !103796)
  call void @llvm.experimental.noalias.scope.decl(metadata !103797)
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.z
  %i.dx = phi ptr [ %i.ex, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.dv, %bb.z ]
  %.sroa.6255.0.copyload257 = phi i64 [ %i.ez, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 1, %bb.z ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !103798
  invoke fastcc void @_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1C_10graph_impl9NodeIndexERINtNtB39_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4i_5types3any5PyAnyEB4d_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0ENtNtNtB9_6traits8iterator8Iterator4nextB6b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.f)
          to label %bb.ac unwind label %bb.ab, !noalias !103799

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %bb.af, %bb.ab
  %.pn.i.i.i = phi { ptr, i32 } [ %i.dy, %bb.ab ], [ %i.fa, %bb.af ], [ %i.fa, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1P_10graph_impl9NodeIndexERINtNtB3m_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4v_5types3any5PyAnyEB4q_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0EEB6o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.f) #63, !noalias !103799
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #63, !noalias !103781
  br label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dz = load i64, ptr %i.e, align 8, !range !55, !noalias !103798, !noundef !56 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.dz, -1
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !103798 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !103798
  %i.ea = icmp samesign ult i64 %.sroa.6255.0.copyload257, 384307168202282326
  call void @llvm.assume(i1 %i.ea)
  %i.eb = load i64, ptr %i.h, align 8, !range !59, !alias.scope !103800, !noalias !103780, !noundef !56
  %i.ec = icmp eq i64 %.sroa.6255.0.copyload257, %i.eb
  br i1 %i.ec, label %bb.ag, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !103798
  call void @llvm.experimental.noalias.scope.decl(metadata !103801)
  call void @llvm.experimental.noalias.scope.decl(metadata !103802)
  call void @llvm.experimental.noalias.scope.decl(metadata !103803)
  %.val.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !103804, !noalias !103780 ; 2 uses
  %i.ed = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ed, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i: ; preds = %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ee, align 8, !alias.scope !103804, !noalias !103780, !nonnull !56, !noundef !56
  %i.ef = shl nuw i64 %.val.i.i.i.i.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103805
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i, %bb.ae
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !103806)
  call void @llvm.experimental.noalias.scope.decl(metadata !103807)
  call void @llvm.experimental.noalias.scope.decl(metadata !103808)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eh, align 8, !alias.scope !103809, !noalias !103780, !noundef !56 ; 4 uses
  %i.ei = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ei, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ej, align 8, !alias.scope !103809, !noalias !103780, !nonnull !56, !noundef !56
  %i.ek = shl i64 %.val1.i.i.i.i.i.i.i.i.i, 3
  %i.el = icmp slt i64 %.val1.i.i.i.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.el)
  %i.em = and i64 %i.ek, -16                      ; 2 uses
  %i.en = add i64 %i.em, 16                       ; 2 uses
  %i.eo = add nsw i64 %.val1.i.i.i.i.i.i.i.i.i, 17
  %i.ep = add i64 %i.eo, %i.en                    ; 3 uses
  %i.eq = icmp uge i64 %i.ep, %i.en
  call void @llvm.assume(i1 %i.eq)
  %i.er = icmp ult i64 %i.ep, 9223372036854775793
  call void @llvm.assume(i1 %i.er)
  %i.es = sub nuw nsw i64 -16, %i.em
  %i.et = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.es
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.ep, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !103810
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eg, align 8, !alias.scope !103809, !noalias !103780 ; 2 uses
  %i.eu = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.eu, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecIBI_jEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBI_NtNtB2O_10graph_impl9NodeIndexERINtNtB3S_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0EE11spec_extendB6U_.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ev, align 8, !alias.scope !103809, !noalias !103780, !nonnull !56, !noundef !56
  %i.ew = shl nuw i64 %.val2.i.i.i.i.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i, i64 noundef %i.ew, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103810
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecIBI_jEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBI_NtNtB2O_10graph_impl9NodeIndexERINtNtB3S_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0EE11spec_extendB6U_.exit.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i, %bb.ad
  %i.ex = phi ptr [ %.pre.i, %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i ], [ %i.dx, %bb.ad ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.ex, i64 %.sroa.6255.0.copyload257 ; 3 uses
  store i64 %i.dz, ptr %i.ey, align 8, !noalias !103799
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !103799
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i, align 8, !noalias !103799
  %i.ez = add nuw nsw i64 %.sroa.6255.0.copyload257, 1 ; 2 uses
  store i64 %i.ez, ptr %.sroa.6.0..sroa_idx.i144, align 8, !alias.scope !103800, !noalias !103780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !103798
  br label %bb.aa

bb.af:                                            ; preds = %bb.ag
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = icmp eq i64 %i.dz, 0
  br i1 %i.fb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  %i.fc = shl nuw i64 %i.dz, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %i.fc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103811
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.ag:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.6255.0.copyload257, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i unwind label %bb.af, !noalias !103781

._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i: ; preds = %bb.ag
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !103800, !noalias !103780
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecIBI_jEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBI_NtNtB2O_10graph_impl9NodeIndexERINtNtB3S_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0EE11spec_extendB6U_.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !103780
  %.sroa.0250.0.copyload251 = load i64, ptr %i.h, align 8, !noalias !103779
  %.sroa.5252.0.copyload254 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !103779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !103780
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_jEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1J_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBS_NtNtB37_10graph_impl9NodeIndexERINtNtB4b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5k_5types3any5PyAnyEB5f_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0EE9from_iterB7d_.exit

bb.ah:                                            ; preds = %bb.y
  unreachable

bb.ai:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.w, %bb.t
  %.pn.ph.i = phi { ptr, i32 } [ %i.cy, %bb.t ], [ %i.ds, %bb.w ], [ %i.ds, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1P_10graph_impl9NodeIndexERINtNtB3m_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4v_5types3any5PyAnyEB4q_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0EEB6o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.q) #63, !noalias !103781
  br label %.thread

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_jEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1J_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBS_NtNtB37_10graph_impl9NodeIndexERINtNtB4b_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5k_5types3any5PyAnyEB5f_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0EE9from_iterB7d_.exit: ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecIBI_jEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBI_NtNtB2O_10graph_impl9NodeIndexERINtNtB3S_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0EE11spec_extendB6U_.exit.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %.sroa.6255.0 = phi i64 [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i ], [ %.sroa.6255.0.copyload257, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecIBI_jEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBI_NtNtB2O_10graph_impl9NodeIndexERINtNtB3S_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0EE11spec_extendB6U_.exit.i ]
  %.sroa.5252.0 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i ], [ %.sroa.5252.0.copyload254, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecIBI_jEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBI_NtNtB2O_10graph_impl9NodeIndexERINtNtB3S_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0EE11spec_extendB6U_.exit.i ]
  %.sroa.0250.0 = phi i64 [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i ], [ %.sroa.0250.0.copyload251, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecIBI_jEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths16all_simple_pathsIBI_NtNtB2O_10graph_impl9NodeIndexERINtNtB3S_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB51_5types3any5PyAnyEB4W_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss_0EE11spec_extendB6U_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0250.0, ptr %i.fd, align 8
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5252.0, ptr %.sroa.5252.0..sroa_idx, align 8
  %.sroa.6255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6255.0, ptr %.sroa.6255.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

.body:                                            ; preds = %.body246, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i162, %bb.ba, %bb.f, %bb.aj
  %.pn = phi { ptr, i32 } [ %eh.lpad-body247, %.body246 ], [ %i.am, %bb.f ], [ %i.ff, %bb.aj ], [ %.pn.ph.i149, %bb.ba ], [ %.pn.i.i.i163, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i162 ]
  %.val96 = load ptr, ptr %i.p, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val97 = load i64, ptr %i.fe, align 8, !noundef !56
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx(ptr %.val96, i64 %.val97) #63
  br label %.thread

bb.aj:                                            ; preds = %bb.d
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ak:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.g
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ -1, %bb.g ]
  %.sroa.02.0.i = select i1 %8, i64 %7, i64 %.val.i.i
  %i.fg = add i64 %.sroa.012.0, 2
  store ptr %i.ao, ptr %i.ak, align 8, !noalias !103763
  %.sroa.4.0..sroa.013.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.aq, ptr %.sroa.4.0..sroa.013.0..sroa_idx.i, align 8, !noalias !103763
  %.sroa.5.0..sroa.013.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i32 %.sroa.0.0.i.i.i.i, ptr %.sroa.5.0..sroa.013.0..sroa_idx.i, align 8, !noalias !103763
  %.sroa.615.0..sroa.013.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  store i32 -1, ptr %.sroa.615.0..sroa.013.0..sroa_idx.i, align 4, !noalias !103763
  %.sroa.8.0..sroa.013.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i32 -1, ptr %.sroa.8.0..sroa.013.0..sroa_idx.i, align 8, !noalias !103763
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6268.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !103763
  store i64 1, ptr %i.n, align 8
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.ak, ptr %.sroa.4266.0..sroa_idx, align 8
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1, ptr %.sroa.5267.0..sroa_idx, align 8
  %.sroa.7269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store ptr %i.p, ptr %.sroa.7269.0..sroa_idx, align 8
  %.sroa.8270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store ptr %1, ptr %.sroa.8270.0..sroa_idx, align 8
  %.sroa.9271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store i64 %i.fg, ptr %.sroa.9271.0..sroa_idx, align 8
  %.sroa.10272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store i64 %.sroa.02.0.i, ptr %.sroa.10272.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !103812)
  call void @llvm.experimental.noalias.scope.decl(metadata !103813)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !103814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !103814
  invoke fastcc void @_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1C_10graph_impl9NodeIndexERINtNtB3f_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4o_5types3any5PyAnyEB4j_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB6h_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.n)
          to label %bb.am unwind label %bb.al, !noalias !103812

bb.al:                                            ; preds = %bb.ak
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.am:                                            ; preds = %bb.ak
  %i.fi = load i64, ptr %i.c, align 8, !range !55, !noalias !103814, !noundef !56 ; 4 uses
  %.not.i151 = icmp eq i64 %i.fi, -1
  br i1 %.not.i151, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  store i64 0, ptr %i.o, align 8, !alias.scope !103812
  %i.fj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.fj, align 8, !alias.scope !103812
  %i.fk = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.fk, align 8, !alias.scope !103812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !103814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !103814
  call void @llvm.experimental.noalias.scope.decl(metadata !103815)
  call void @llvm.experimental.noalias.scope.decl(metadata !103816)
  call void @llvm.experimental.noalias.scope.decl(metadata !103817)
  %.val.i.i.i.i185 = load i64, ptr %i.n, align 8, !alias.scope !103818 ; 2 uses
  %i.fl = icmp eq i64 %.val.i.i.i.i185, 0
  br i1 %i.fl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i188, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i186

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i186: ; preds = %bb.an
  %.val1.i.i.i.i187 = load ptr, ptr %.sroa.4266.0..sroa_idx, align 8, !alias.scope !103818, !nonnull !56, !noundef !56
  %i.fm = shl nuw i64 %.val.i.i.i.i185, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i187, i64 noundef %i.fm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103819
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i188

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i188: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i186, %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !103820)
  call void @llvm.experimental.noalias.scope.decl(metadata !103821)
  call void @llvm.experimental.noalias.scope.decl(metadata !103822)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.val1.i.i.i.i.i.i.i189 = load i64, ptr %i.fn, align 8, !alias.scope !103823, !noundef !56 ; 4 uses
  %i.fo = icmp eq i64 %.val1.i.i.i.i.i.i.i189, 0
  br i1 %i.fo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i192, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i190

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i190: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i188
  %i.fp = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.val.i.i.i.i.i.i.i191 = load ptr, ptr %i.fp, align 8, !alias.scope !103823, !nonnull !56, !noundef !56
  %i.fq = shl i64 %.val1.i.i.i.i.i.i.i189, 3
  %i.fr = icmp slt i64 %.val1.i.i.i.i.i.i.i189, 2305843009213693950
  call void @llvm.assume(i1 %i.fr)
  %i.fs = and i64 %i.fq, -16                      ; 2 uses
  %i.ft = add i64 %i.fs, 16                       ; 2 uses
  %i.fu = add nsw i64 %.val1.i.i.i.i.i.i.i189, 17
  %i.fv = add i64 %i.fu, %i.ft                    ; 3 uses
  %i.fw = icmp uge i64 %i.fv, %i.ft
  call void @llvm.assume(i1 %i.fw)
  %i.fx = icmp ult i64 %i.fv, 9223372036854775793
  call void @llvm.assume(i1 %i.fx)
  %i.fy = sub nuw nsw i64 -16, %i.fs
  %i.fz = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i191, i64 %i.fy
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fz, i64 noundef %i.fv, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !103824
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i192

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i192: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i190, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i188
  %.val2.i.i.i.i.i.i.i193 = load i64, ptr %.sroa.6268.0..sroa_idx, align 8, !alias.scope !103823 ; 2 uses
  %i.ga = icmp eq i64 %.val2.i.i.i.i.i.i.i193, 0
  br i1 %i.ga, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_jEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1J_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiIBS_NtNtB37_10graph_impl9NodeIndexERINtNtB4h_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5q_5types3any5PyAnyEB5l_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss0_0EE9from_iterB7j_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i194

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i194: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i192
  %i.gb = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.val3.i.i.i.i.i.i.i195 = load ptr, ptr %i.gb, align 8, !alias.scope !103823, !nonnull !56, !noundef !56
  %i.gc = shl nuw i64 %.val2.i.i.i.i.i.i.i193, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i195, i64 noundef %i.gc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103824
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_jEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1J_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiIBS_NtNtB37_10graph_impl9NodeIndexERINtNtB4h_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5q_5types3any5PyAnyEB5l_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss0_0EE9from_iterB7j_.exit

bb.ao:                                            ; preds = %bb.aq
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ge = icmp eq i64 %i.fi, 0
  br i1 %i.ge, label %bb.ba, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i184

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i184: ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i153) ]
  %i.gf = shl nuw i64 %i.fi, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i153, i64 noundef %i.gf, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103825
  br label %bb.ba

bb.ap:                                            ; preds = %bb.am
  %.sroa.5.0..sroa_idx.i152 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload.i153 = load ptr, ptr %.sroa.5.0..sroa_idx.i152, align 8, !noalias !103814 ; 3 uses
  %.sroa.6.0..sroa_idx8.i154 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.copyload.i155 = load i64, ptr %.sroa.6.0..sroa_idx8.i154, align 8, !noalias !103814
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !103826
  %i.gg = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103826 ; 6 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #61
          to label %bb.az unwind label %bb.ao, !noalias !103812

bb.ar:                                            ; preds = %bb.ap
  store i64 %i.fi, ptr %i.gg, align 8, !noalias !103812
  %.sroa.413.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr %.sroa.5.0.copyload.i153, ptr %.sroa.413.0..sroa_idx.i156, align 8, !noalias !103812
  %.sroa.514.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store i64 %.sroa.6.0.copyload.i155, ptr %.sroa.514.0..sroa_idx.i157, align 8, !noalias !103812
  store i64 4, ptr %i.d, align 8, !noalias !103814
  %.sroa.4.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.gg, ptr %.sroa.4.0..sroa_idx.i158, align 8, !noalias !103814
  %.sroa.6.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i159, align 8, !noalias !103814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !103814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !103814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %i.n, i64 120, i1 false), !noalias !103812
  call void @llvm.experimental.noalias.scope.decl(metadata !103827)
  call void @llvm.experimental.noalias.scope.decl(metadata !103828)
  call void @llvm.experimental.noalias.scope.decl(metadata !103829)
  call void @llvm.experimental.noalias.scope.decl(metadata !103830)
  %.sroa.5.0..sroa_idx.i.i.i160 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i161 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.as

bb.as:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i167, %bb.ar
  %i.gi = phi ptr [ %i.hj, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i167 ], [ %i.gg, %bb.ar ]
  %i.gj = phi i64 [ %i.hl, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i167 ], [ 1, %bb.ar ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !103831
  invoke fastcc void @_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1C_10graph_impl9NodeIndexERINtNtB3f_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4o_5types3any5PyAnyEB4j_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB6h_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.au unwind label %bb.at, !noalias !103832

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i162: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i170, %bb.ax, %bb.at
  %.pn.i.i.i163 = phi { ptr, i32 } [ %i.gk, %bb.at ], [ %i.hm, %bb.ax ], [ %i.hm, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i170 ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources7from_fn6FromFnNCINvNtNtCs68Jln09rRqb_8petgraph4algo12simple_paths22all_simple_paths_multiINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtB1P_10graph_impl9NodeIndexERINtNtB3s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4B_5types3any5PyAnyEB4w_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity24digraph_all_simple_pathss0_0EEB6u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.b) #63, !noalias !103832
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #63, !noalias !103812
  br label %.body

bb.at:                                            ; preds = %bb.as
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i162

bb.au:                                            ; preds = %bb.as
  %i.gl = load i64, ptr %i.a, align 8, !range !55, !noalias !103831, !noundef !56 ; 4 uses
  %.not.i.i.i164 = icmp eq i64 %i.gl, -1
  br i1 %.not.i.i.i164, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.5.0.copyload.i.i.i165 = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i160, align 8, !noalias !103831 ; 3 uses
  %.sroa.6.0.copyload.i.i.i166 = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i161, align 8, !noalias !103831
  %i.gm = icmp samesign ult i64 %i.gj, 384307168202282326
  call void @llvm.assume(i1 %i.gm)
  %i.gn = load i64, ptr %i.d, align 8, !range !59, !alias.scope !103833, !noalias !103814, !noundef !56
  %i.go = icmp eq i64 %i.gj, %i.gn
  br i1 %i.go, label %bb.ay, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i167

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !103831
  call void @llvm.experimental.noalias.scope.decl(metadata !103834)
  call void @llvm.experimental.noalias.scope.decl(metadata !103835)
  call void @llvm.experimental.noalias.scope.decl(metadata !103836)
  %.val.i.i.i.i.i.i173 = load i64, ptr %i.b, align 8, !alias.scope !103837, !noalias !103814 ; 2 uses
  %i.gp = icmp eq i64 %.val.i.i.i.i.i.i173, 0
  br i1 %i.gp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i176, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i174

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i174: ; preds = %bb.aw
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i.i.i.i175 = load ptr, ptr %i.gq, align 8, !alias.scope !103837, !noalias !103814, !nonnull !56, !noundef !56
  %i.gr = shl nuw i64 %.val.i.i.i.i.i.i173, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i175, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !103838
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i176

end_hunk_6
begin_hunk_7_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path29graph_k_shortest_path_lengths:bb.a
          to label %.noexc35 unwind label %.thread.thread188

.noexc35:                                         ; preds = %bb.ap
  %i.fi = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !119493
  %i.fj = icmp eq i8 %i.fi, 2
  br i1 %i.fj, label %_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newCskcxRuJ53GpR_9rustworkx.exit37, label %bb.aq, !prof !66

bb.aq:                                            ; preds = %.noexc35
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newCskcxRuJ53GpR_9rustworkx.exit37 unwind label %.thread.thread188

_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newCskcxRuJ53GpR_9rustworkx.exit37: ; preds = %bb.aq, %.noexc35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.774, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false)
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newCskcxRuJ53GpR_9rustworkx.exit37, %bb.as
  %.sroa.8.0 = phi i64 [ %.sroa.8.0.copyload77, %bb.as ], [ %i.fh, %_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newCskcxRuJ53GpR_9rustworkx.exit37 ]
  %.sroa.671.0 = phi i64 [ %.sroa.671.0.copyload73, %bb.as ], [ 0, %_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newCskcxRuJ53GpR_9rustworkx.exit37 ]
  %.sroa.568.0 = phi ptr [ %.sroa.568.0.copyload70, %bb.as ], [ inttoptr (i64 8 to ptr), %_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newCskcxRuJ53GpR_9rustworkx.exit37 ]
  %.sroa.066.0 = phi i64 [ %.sroa.066.0.copyload67, %bb.as ], [ 0, %_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newCskcxRuJ53GpR_9rustworkx.exit37 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.066.0, ptr %i.fk, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.568.0, ptr %.sroa.479.0..sroa_idx, align 8
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.671.0, ptr %.sroa.580.0..sroa_idx, align 8
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.681.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.774, i64 32, i1 false)
  %.sroa.782.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.8.0, ptr %.sroa.782.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  %i.fl = shl nuw nsw i64 %.sroa.02.0.i.i.i52128.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef %i.fl, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit

bb.ar:                                            ; preds = %.noexc30, %bb.ao
  store i64 0, ptr %i.g, align 8, !alias.scope !119494
  %.sroa.42.0..sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i27, align 8, !alias.scope !119494
  %.sroa.53.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i28, align 8, !alias.scope !119494
  %.sroa.6.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i29, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  store i64 %i.fe, ptr %i.fm, align 8, !alias.scope !119494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef align 8 dereferenceable(64) %i.g, i64 noundef %6, double noundef %i.fd)
          to label %bb.as unwind label %.thread.thread

.thread.thread:                                   ; preds = %bb.ar
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.g) #63
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i40

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.066.0.copyload67 = load i64, ptr %i.g, align 8
  %.sroa.568.0.copyload70 = load ptr, ptr %.sroa.42.0..sroa_idx.i.i27, align 8
  %.sroa.671.0.copyload73 = load i64, ptr %.sroa.53.0..sroa_idx.i.i28, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.774, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i29, i64 32, i1 false)
  %.sroa.8.0.copyload77 = load i64, ptr %i.fm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.ab, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  %i.fo = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.fo, align 8, !noundef !56
  %i.fp = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.fp, label %bb.au, label %bb.at, !prof !109

bb.at:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %4)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit

bb.au:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit
  call void @_Py_DecRef(ptr noundef nonnull %4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit

bb.av:                                            ; preds = %.body
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.aw:                                            ; preds = %bb.ag, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fr, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !119486
  store i64 0, ptr %0, align 8
  %i.fs = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i38 = load i64, ptr %i.fs, align 8, !noundef !56
  %i.ft = icmp sgt i64 %.val.i.i.i.i.i38, 0
  br i1 %i.ft, label %bb.ay, label %bb.ax, !prof !109

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %4)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit

bb.ay:                                            ; preds = %bb.aw
  call void @_Py_DecRef(ptr noundef nonnull %4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit: ; preds = %bb.ay, %bb.ax, %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

.thread.thread188:                                ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i40

.thread:                                          ; preds = %bb.al
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = icmp eq i64 %.sroa.02.0.i.i.i52128.i, 0
  br i1 %i.fu, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i40

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i40: ; preds = %.thread.thread188, %.thread.thread, %.thread
  %.pn128186 = phi { ptr, i32 } [ %i.fn, %.thread.thread ], [ %lpad.thr_comm.split-lp, %.thread ], [ %lpad.thr_comm, %.thread.thread188 ]
  %i.fv = shl nuw nsw i64 %.sroa.02.0.i.i.i52128.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef %i.fv, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %.body

bb.az:                                            ; preds = %.body
  resume { ptr, i32 } %.pn13
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_paths(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i64 noundef %2, i64 noundef range(i64 0, 2) %3, i64 %4, ptr noundef %5, double noundef %6, i1 noundef zeroext %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 20 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.4.i.i.i.i.i.i = alloca i64, align 8      ; 5 uses
  %.sroa.9.i.i.i.i.i.i = alloca i64, align 8      ; 4 uses
  %i.o = alloca [64 x i8], align 8                ; 12 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 9 uses
  %i.w = alloca [72 x i8], align 8                ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 11 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 20 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.13305 = alloca [40 x i8], align 8        ; 5 uses
  %i.ab = alloca [88 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [64 x i8], align 8            ; 6 uses
  %i.ac = alloca [88 x i8], align 8               ; 12 uses
  %.sroa.14275 = alloca [40 x i8], align 8        ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [64 x i8], align 8               ; 35 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 3 uses
  store i64 %2, ptr %i.ah, align 8
  %i.ai = trunc i64 %2 to i32                     ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val64 = load ptr, ptr %i.aj, align 8, !nonnull !56, !noundef !56 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val65 = load i64, ptr %i.ak, align 8, !noundef !56 ; 3 uses
  %i.al = and i64 %2, 4294967295                  ; 8 uses
  %i.am = icmp ugt i64 %.val65, %i.al
  br i1 %i.am, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.val64, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8, !noundef !56
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %select.unfold, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit

bb.c:                                             ; preds = %select.unfold, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.thread

select.unfold:                                    ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ah, ptr %i.af, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noundef nonnull @569, ptr noundef nonnull %i.af)
          to label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.c

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.b
  %8 = trunc nuw i64 %3 to i1                     ; 3 uses
  %i.aq = trunc i64 %4 to i32
  %.sroa.4.0 = select i1 %8, i32 %i.aq, i32 undef ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !noundef !56
  invoke fastcc void @_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1l_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.ae, i64 noundef %i.as)
          to label %bb.j unwind label %bb.c

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit: ; preds = %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.sroa.0328.0.copyload = load i64, ptr %i.ag, align 8 ; 3 uses
  %.sroa.5330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.5330.0.copyload = load ptr, ptr %.sroa.5330.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.6333.0.copyload = load i64, ptr %.sroa.6333.0..sroa_idx, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !119849
  %i.at = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !119849 ; 5 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.d, label %bb.f, !prof !88

bb.d:                                             ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #61
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = icmp eq i64 %.sroa.0328.0.copyload, 0
  br i1 %i.aw, label %.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5330.0.copyload) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5330.0.copyload, i64 noundef %.sroa.0328.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !119850
  br label %.thread

bb.f:                                             ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  store i64 %.sroa.0328.0.copyload, ptr %i.at, align 8
  %.sroa.5330.0..sroa_idx331 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.sroa.5330.0.copyload, ptr %.sroa.5330.0..sroa_idx331, align 8
  %.sroa.6333.0..sroa_idx334 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %.sroa.6333.0.copyload, ptr %.sroa.6333.0..sroa_idx334, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.031.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.031.sroa.5.0..sroa_idx, align 8
  %.sroa.031.sroa.5.sroa.4.0..sroa.031.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.031.sroa.5.sroa.4.0..sroa.031.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.031.sroa.5.sroa.5.0..sroa.031.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.at, ptr %.sroa.031.sroa.5.sroa.5.0..sroa.031.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.031.sroa.5.sroa.6.0..sroa.031.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @570, ptr %.sroa.031.sroa.5.sroa.6.0..sroa.031.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.432.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %i.ay = icmp eq ptr %5, null
  br i1 %i.ay, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.az, align 8, !noundef !56
  %i.ba = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.ba, label %bb.i, label %bb.h, !prof !109

bb.h:                                             ; preds = %bb.g
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %5)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.i:                                             ; preds = %bb.g
  call void @_Py_DecRef(ptr noundef nonnull %5) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i, %bb.h, %bb.f, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit242, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit
  ret void

bb.j:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %.not.i76 = icmp eq ptr %5, null                ; 3 uses
  br i1 %.not.i76, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = ptrtoint ptr %5 to i64
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  %i.bc = bitcast double %6 to i64                ; 2 uses
  %.not.i.i.i = icmp sgt i64 %i.bc, -1
  br i1 %.not.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = fcmp uno double %6, 0.000000e+00
  br i1 %i.bd, label %bb.p, label %bb.t

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !119851
  %i.be = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !119851 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.o, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !88

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc77 unwind label %bb.r

.noexc77:                                         ; preds = %bb.o
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %bb.n
  store ptr @1489, ptr %i.be, align 8, !noalias !119851
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.bg = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 16) #64
          to label %.noexc78 unwind label %bb.r   ; 2 uses

.noexc78:                                         ; preds = %bb.p
  store ptr @1488, ptr %i.bg, align 8, !noalias !119851
  br label %bb.s

bb.q:                                             ; preds = %.body85, %bb.r
  %.pn57 = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %.pn, %.body85 ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ae) #63
  br label %bb.fb

bb.r:                                             ; preds = %bb.ex, %bb.ci, %bb.p, %bb.o
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %.noexc78, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i
  %.sink20.i.i = phi ptr [ %i.bg, %.noexc78 ], [ %i.be, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i ] ; 2 uses
  %.sink.i.i = phi i64 [ 26, %.noexc78 ], [ 31, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink20.i.i, i64 8
  store i64 %.sink.i.i, ptr %i.bi, align 8, !noalias !119851
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0..sroa_idx382 = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.5.0..sroa_idx382, align 8
  %.sroa.6383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.6383.0..sroa_idx, align 8
  %.sroa.7384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sink20.i.i, ptr %.sroa.7384.0..sroa_idx, align 8
  %.sroa.8385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @518, ptr %.sroa.8385.0..sroa_idx, align 8
  %.sroa.10387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.10387.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit

bb.t:                                             ; preds = %bb.k, %bb.m
  %.sroa.5258.0.ph = phi i64 [ 0, %bb.m ], [ 1, %bb.k ] ; 2 uses
  %.sroa.10.0.ph = phi i64 [ %i.bc, %bb.m ], [ %i.bb, %bb.k ] ; 2 uses
  store i64 %.sroa.5258.0.ph, ptr %i.ad, align 8
  %.sroa.4346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  store i64 %.sroa.10.0.ph, ptr %.sroa.4346.0..sroa_idx, align 8
  %i.bk = inttoptr i64 %.sroa.10.0.ph to ptr      ; 3 uses
  br i1 %7, label %bb.bt, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119853)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !119854
  %.idx886 = shl nuw nsw i64 %.val65, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.val64, i64 %.idx886 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %.not.i.i.i.i = icmp eq ptr %.val64, %i.bn
  br i1 %.not.i.i.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.u
  %i.bm = phi ptr [ %i.bl, %.lr.ph ], [ %i.bn, %bb.u ]
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -16 ; 4 uses
  %.val.i.i.i.i.i79 = load ptr, ptr %i.bn, align 8, !noalias !119855, !noundef !56
  %.not.i.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i79, null
  br i1 %.not.i.not.i.i.i.i.i, label %bb.u, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i: ; preds = %bb.v
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %.val64 to i64
  %i.bq = sub nuw i64 %i.bo, %i.bp
  %i.br = lshr exact i64 %i.bq, 4
  %i.bs = and i64 %i.br, 4294967295
  %i.bt = add nuw nsw i64 %i.bs, 1
  br label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.u, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.bt, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i ], [ 0, %bb.u ]
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, i64 noundef %.sroa.02.0.i.i.i.i.i)
          to label %.lr.ph824 unwind label %bb.bu

.noexc83:                                         ; preds = %.lr.ph824
  %.not.i.i.i80 = icmp eq ptr %.val64, %i.bv
  br i1 %.not.i.i.i80, label %.thread.i, label %.lr.ph824

.thread.i:                                        ; preds = %.noexc83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !119854
  store i64 0, ptr %i.z, align 8, !noalias !119854
  %.sroa.419.0..sroa_idx249.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.419.0..sroa_idx249.i, align 8, !noalias !119854
end_hunk_7
begin_hunk_8_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_paths:bb.a
  store i64 0, ptr %.sroa.520.0..sroa_idx250.i, align 8, !noalias !119854
  br label %bb.y

.lr.ph824:                                        ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i, %.noexc83
  %i.bu = phi ptr [ %i.bv, %.noexc83 ], [ %i.bl, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -16 ; 4 uses
  %.val.i.i.i.i = load ptr, ptr %i.bv, align 8, !noalias !119856, !noundef !56
  %.not.i.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i, label %.noexc83, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i186.i, %bb.bs, %bb.w
  %.pn33.pn.i = phi { ptr, i32 } [ %.pn.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i186.i ], [ %i.bw, %bb.w ], [ %.pn.i, %bb.bs ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body85 unwind label %bb.bb, !noalias !119857

bb.w:                                             ; preds = %bb.x
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.lr.ph824
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %.val64 to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = lshr i64 %i.bz, 4                       ; 3 uses
  %i.cb = and i64 %i.ca, 4294967295               ; 5 uses
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 17 uses
  %i.cd = shl nuw nsw i64 %i.cc, 4                ; 3 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !119858
  %i.ce = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !119858 ; 22 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.x, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.x:                                             ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cd) #61
          to label %.noexc.i unwind label %bb.w, !noalias !119857

.noexc.i:                                         ; preds = %bb.x
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  %.not.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %xtraiter = and i64 %i.ca, 7                    ; 3 uses
  %i.cg = icmp samesign ult i64 %i.cb, 8
  br i1 %i.cg, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ca, 4294967288
  br label %.lr.ph.i.i.i.i

._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa:    ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.022.i.i.i.i.epil.init = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod971 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod971)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.022.i.i.i.i.epil = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.epil ], [ %.sroa.0.022.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  store i64 0, ptr %.sroa.0.022.i.i.i.i.epil, align 8, !noalias !119859
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !119529

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.0.lcssa29.i.i.i.i = phi ptr [ %i.ce, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.cp, %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa ], [ %i.ch, %.lr.ph.i.i.i.i.epil ]
  store i64 0, ptr %.sroa.0.0.lcssa29.i.i.i.i, align 8, !noalias !119859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !119854
  store i64 0, ptr %i.z, align 8, !noalias !119854
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 19 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !119854
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !119854
  %.not.i81 = icmp samesign ult i64 %i.cb, %i.al
  br i1 %.not.i81, label %bb.y, label %bb.z

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.022.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.preheader.new ], [ %i.cp, %.lr.ph.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  store i64 0, ptr %.sroa.0.022.i.i.i.i, align 8, !noalias !119859
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 16
  store i64 0, ptr %i.ci, align 8, !noalias !119859
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 32
  store i64 0, ptr %i.cj, align 8, !noalias !119859
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 48
  store i64 0, ptr %i.ck, align 8, !noalias !119859
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 64
  store i64 0, ptr %i.cl, align 8, !noalias !119859
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 80
  store i64 0, ptr %i.cm, align 8, !noalias !119859
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 96
  store i64 0, ptr %i.cn, align 8, !noalias !119859
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 112
  store i64 0, ptr %i.co, align 8, !noalias !119859
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 128 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i181.i, %.loopexit.split-lp301.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.loopexit.split-lp296.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.i, %.loopexit294.i
  %.sroa.419.0..sroa_idx256.i = phi ptr [ %.sroa.419.0..sroa_idx.i, %.loopexit.split-lp301.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.419.0..sroa_idx.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %.sroa.419.0..sroa_idx.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i181.i ], [ %.sroa.419.0..sroa_idx257.ph.i, %.loopexit.split-lp.i ], [ %.sroa.419.0..sroa_idx.i, %.loopexit.split-lp296.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.419.0..sroa_idx.i, %.loopexit294.i ]
  %.sroa.4.0.i5.i253.i = phi i64 [ %i.cc, %.loopexit.split-lp301.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cc, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %i.cc, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i181.i ], [ %.sroa.4.0.i5.i254.ph.i, %.loopexit.split-lp.i ], [ %i.cc, %.loopexit.split-lp296.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cc, %.loopexit294.i ] ; 2 uses
  %i.cq = phi ptr [ %i.ce, %.loopexit.split-lp301.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ce, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %i.ce, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i181.i ], [ %.ph.i, %.loopexit.split-lp.i ], [ %i.ce, %.loopexit.split-lp296.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ce, %.loopexit294.i ] ; 2 uses
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp933, %.loopexit.split-lp301.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %lpad.loopexit.split-lp933, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i181.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp296.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.i, %.loopexit294.i ] ; 2 uses
  %.val57.i = load i64, ptr %i.z, align 8, !noalias !119854 ; 2 uses
  %i.cr = icmp eq i64 %.val57.i, 0
  br i1 %i.cr, label %bb.bs, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i82

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i82: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i
  %.val58.i = load ptr, ptr %.sroa.419.0..sroa_idx256.i, align 8, !noalias !119854, !nonnull !56, !noundef !56
  %i.cs = shl nuw i64 %.val57.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58.i, i64 noundef %i.cs, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !119857
  br label %bb.bs

bb.y:                                             ; preds = %._crit_edge.thread.i.i.i.i, %.thread.i
  %.sroa.419.0..sroa_idx258.i = phi ptr [ %.sroa.419.0..sroa_idx249.i, %.thread.i ], [ %.sroa.419.0..sroa_idx.i, %._crit_edge.thread.i.i.i.i ]
  %.sroa.4.0.i5.i255.i = phi i64 [ 0, %.thread.i ], [ %i.cc, %._crit_edge.thread.i.i.i.i ] ; 2 uses
  %i.ct = phi ptr [ inttoptr (i64 8 to ptr), %.thread.i ], [ %i.ce, %._crit_edge.thread.i.i.i.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %.sroa.4.0.i5.i255.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4121) #60
          to label %.noexc80.i unwind label %.loopexit.split-lp.i, !noalias !119857

.noexc80.i:                                       ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %._crit_edge.thread.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.al ; 2 uses
  store i64 1, ptr %i.cu, align 8, !noalias !119857
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store double 0.000000e+00, ptr %i.cv, align 8, !noalias !119857
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119860)
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #62
          to label %bb.aa unwind label %.loopexit.split-lp.i, !noalias !119857

bb.aa:                                            ; preds = %bb.z
  %i.cw = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !119861, !noalias !119854, !nonnull !56, !noundef !56 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 1, ptr %.sroa.520.0..sroa_idx.i, align 8, !alias.scope !119861, !noalias !119854
  store double 0.000000e+00, ptr %i.cw, align 8, !noalias !119862
  store i32 %i.ai, ptr %i.cx, align 8, !noalias !119862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !119854
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !119857
  %i.cy = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !119857 ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.ab, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i, !prof !88

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #61
          to label %.noexc83.i unwind label %.loopexit.split-lp.i, !noalias !119857

.noexc83.i:                                       ; preds = %bb.ab
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.aa
  store i32 %i.ai, ptr %i.cy, align 4, !noalias !119857
  store i64 1, ptr %i.y, align 8, !noalias !119854
  %i.da = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.cy, ptr %i.da, align 8, !noalias !119854
  %i.db = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 1, ptr %i.db, align 8, !noalias !119854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !119854
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) dereferenceable_or_null(64) %i.ae, i32 noundef %i.ai, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %bb.ac unwind label %.loopexit.split-lp.i, !noalias !119857

bb.ac:                                            ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.0194.0.copyload.i = load i64, ptr %i.dc, align 8, !noalias !119854 ; 2 uses
  %.sroa.4195.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.4195.0.copyload.i = load ptr, ptr %.sroa.4195.0..sroa_idx.i, align 8, !noalias !119854 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !119854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !119854
  %.0.val.off.i.i = add i64 %.sroa.0194.0.copyload.i, -1
  %switch.i.i = icmp ult i64 %.0.val.off.i.i, -2
  br i1 %switch.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i84.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i84.i: ; preds = %bb.ac
  %i.dd = shl nuw i64 %.sroa.0194.0.copyload.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4195.0.copyload.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4195.0.copyload.i, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !119857
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i84.i, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !119854
  call fastcc void @_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE3popCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef align 8 dereferenceable(24) %i.z), !noalias !119857
  %i.de = load i64, ptr %i.x, align 8, !range !57, !noalias !119854, !noundef !56
  %i.df = trunc nuw i64 %i.de to i1
  br i1 %i.df, label %.lr.ph360.i, label %._crit_edge361.i

.lr.ph360.i:                                      ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !119852, !nonnull !56
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !119852 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i122.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.52.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i150.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  %.sroa.9.0..sroa_idx.i.i151.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.backedge305.i, %.lr.ph360.i
  %i.du = load double, ptr %i.dg, align 8, !noalias !119854, !noundef !56
  %i.dv = load i32, ptr %i.dh, align 8, !noalias !119854, !noundef !56 ; 4 uses
  %.val50.i = load i64, ptr %i.di, align 8, !noalias !119854, !noundef !56 ; 2 uses
  %i.dw = zext i32 %i.dv to i64                   ; 9 uses
  %i.dx = icmp ugt i64 %.val50.i, %i.dw
  br i1 %i.dx, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.ad
  %.val49.i = load ptr, ptr %i.aa, align 8, !noalias !119854, !nonnull !56, !noundef !56
  %i.dy = lshr i64 %i.dw, 6
  %i.dz = and i64 %i.dw, 63
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.val49.i, i64 %i.dy
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !119857, !noundef !56
  %i.ec = lshr i64 %i.eb, %i.dz
  %i.ed = trunc i64 %i.ec to i1
  br i1 %i.ed, label %.backedge305.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i, %bb.ad
  %i.ee = icmp eq i32 %.sroa.4.0, %i.dv
  %or.cond.i = select i1 %8, i1 %i.ee, i1 false
  br i1 %or.cond.i, label %._crit_edge361.i, label %bb.ae

.backedge305.i:                                   ; preds = %bb.ah, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !119854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !119854
  call fastcc void @_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE3popCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef align 8 dereferenceable(24) %i.z), !noalias !119857
  %i.ef = load i64, ptr %i.x, align 8, !range !57, !noalias !119854, !noundef !56
  %i.eg = trunc nuw i64 %i.ef to i1
  br i1 %i.eg, label %bb.ad, label %._crit_edge361.i

bb.ae:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.eh = icmp ugt i64 %.val65, %i.dw
  br i1 %i.eh, label %bb.af, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %.val64, i64 %i.dw ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !119863, !noundef !56
  %.not.i.i.i85.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i85.i, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.af
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ek, align 8, !noalias !119863
  %i.el = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.af, %bb.ae
  %.sroa.0.0.i.i.i = phi i64 [ %i.el, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 4294967295, %bb.ae ], [ 4294967295, %bb.af ] ; 2 uses
  %i.em = icmp ugt i64 %i.dm, %.sroa.0.0.i.i.i
  br i1 %i.em, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i, %.backedge.i
  %i.en = phi i64 [ %i.gq, %.backedge.i ], [ %.sroa.0.0.i.i.i, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.en ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !119864, !noundef !56 ; 2 uses
  %.not.i87.i = icmp eq ptr %i.ep, null
  %.pre.pre388.i = load i64, ptr %i.di, align 8, !noalias !119854 ; 2 uses
  br i1 %.not.i87.i, label %._crit_edge.i, label %bb.ai

.loopexit294.i:                                   ; preds = %bb.az, %.loopexit287.i, %bb.be, %.loopexit291.i, %bb.ao, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit92.thread.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i

.loopexit.split-lp.i:                             ; preds = %.invoke.i, %.invoke461.i, %bb.al, %bb.ag, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i, %bb.ab, %bb.z, %bb.y
  %.sroa.419.0..sroa_idx257.ph.i = phi ptr [ %.sroa.419.0..sroa_idx.i, %.invoke.i ], [ %.sroa.419.0..sroa_idx.i, %bb.ag ], [ %.sroa.419.0..sroa_idx258.i, %bb.y ], [ %.sroa.419.0..sroa_idx.i, %bb.al ], [ %.sroa.419.0..sroa_idx.i, %bb.ab ], [ %.sroa.419.0..sroa_idx.i, %bb.z ], [ %.sroa.419.0..sroa_idx.i, %.invoke461.i ], [ %.sroa.419.0..sroa_idx.i, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i ]
  %.sroa.4.0.i5.i254.ph.i = phi i64 [ %i.cc, %.invoke.i ], [ %i.cc, %bb.ag ], [ %.sroa.4.0.i5.i255.i, %bb.y ], [ %i.cc, %bb.al ], [ %i.cc, %bb.ab ], [ %i.cc, %bb.z ], [ %i.cc, %.invoke461.i ], [ %i.cc, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i ]
  %.ph.i = phi ptr [ %i.ce, %.invoke.i ], [ %i.ce, %bb.ag ], [ %i.ct, %bb.y ], [ %i.ce, %bb.al ], [ %i.ce, %bb.ab ], [ %i.ce, %bb.z ], [ %i.ce, %.invoke461.i ], [ %i.ce, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.backedge.._crit_edge.loopexit_crit_edge.i, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i
  %i.eq = phi i64 [ %.val50.i, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i ], [ %.pre.pre.i, %.backedge.._crit_edge.loopexit_crit_edge.i ], [ %.pre.pre388.i, %.lr.ph.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !119865)
  call void @llvm.experimental.noalias.scope.decl(metadata !119866)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !119867
  store i64 %i.dw, ptr %i.q, align 8, !noalias !119868
  %i.er = icmp ugt i64 %i.eq, %i.dw
  br i1 %i.er, label %bb.ah, label %bb.ag, !prof !66

bb.ag:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !119868
  store ptr %i.q, ptr %i.p, align 8, !noalias !119868
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !119868
  %i.es = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.di, ptr %i.es, align 8, !noalias !119868
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !119868
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1581, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1582) #60
          to label %.noexc90.i unwind label %.loopexit.split-lp.i, !noalias !119857

.noexc90.i:                                       ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %._crit_edge.i
  %i.et = lshr i64 %i.dw, 6
  %i.eu = and i64 %i.dw, 63
  %i.ev = load ptr, ptr %i.aa, align 8, !alias.scope !119869, !noalias !119854, !nonnull !56, !noundef !56
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.et ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !119870, !noundef !56
  %i.ey = shl nuw i64 1, %i.eu
  %i.ez = or i64 %i.ex, %i.ey
  store i64 %i.ez, ptr %i.ew, align 8, !noalias !119870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !119867
  br label %.backedge305.i

bb.ai:                                            ; preds = %.lr.ph.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.fb = load i32, ptr %i.fa, align 8, !noalias !119864, !noundef !56
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %.sroa.021.0.copyload.i.i = load i64, ptr %i.fc, align 8, !noalias !119864 ; 2 uses
  %.sroa.6213.sroa.6.0.extract.shift.i = lshr i64 %.sroa.021.0.copyload.i.i, 32 ; 8 uses
  %.sroa.6213.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6213.sroa.6.0.extract.shift.i to i32 ; 9 uses
  %i.fd = icmp ugt i64 %.pre.pre388.i, %.sroa.6213.sroa.6.0.extract.shift.i
  br i1 %i.fd, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit92.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit92.thread.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit92.i: ; preds = %bb.ai
  %.val46.i = load ptr, ptr %i.aa, align 8, !noalias !119854, !nonnull !56, !noundef !56
  %i.fe = lshr i64 %.sroa.021.0.copyload.i.i, 38
  %i.ff = and i64 %.sroa.6213.sroa.6.0.extract.shift.i, 63
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.val46.i, i64 %i.fe
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !119857, !noundef !56
  %i.fi = lshr i64 %i.fh, %i.ff
  %i.fj = trunc i64 %i.fi to i1
  br i1 %i.fj, label %.backedge.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit92.thread.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit92.thread.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit92.i, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !119854
  invoke fastcc void @_RNvMs9_CskcxRuJ53GpR_9rustworkxNtB5_6CostFn4call(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad, ptr nonnull %i.ep)
          to label %_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_pathss_0B5_.exit.i unwind label %.loopexit294.i, !noalias !119857

_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_pathss_0B5_.exit.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit92.thread.i
  %i.fk = load i64, ptr %i.w, align 8, !range !57, !noalias !119854, !noundef !56
  %i.fl = trunc nuw i64 %i.fk to i1
  br i1 %i.fl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_pathss_0B5_.exit.i
  %.sroa.024.0.copyload.i442 = load i64, ptr %i.dn, align 8, !noalias !119854
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.10299.16.copyload = load ptr, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !119871
  %.sroa.12302.16..sroa.425.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.12302.16.copyload = load i64, ptr %.sroa.12302.16..sroa.425.0..sroa_idx.i.sroa_idx, align 8, !noalias !119871
  %.sroa.13305.16..sroa.425.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13305, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13305.16..sroa.425.0..sroa_idx.i.sroa_idx, i64 40, i1 false), !noalias !119871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !119854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !119854
  %.val55.i = load i64, ptr %i.z, align 8, !noalias !119854 ; 2 uses
  %i.fm = icmp eq i64 %.val55.i, 0
  br i1 %i.fm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit96.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i95.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i95.i: ; preds = %bb.aj
  %.val56.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !119854, !nonnull !56, !noundef !56
  %i.fn = shl nuw i64 %.val55.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56.i, i64 noundef %i.fn, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !119857
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit96.i

bb.ak:                                            ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_pathss_0B5_.exit.i
  %i.fo = load double, ptr %i.dn, align 8, !noalias !119854, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !119854
  %i.fp = fadd double %i.du, %i.fo                ; 13 uses
  %.not286.i = icmp samesign ult i64 %i.cb, %.sroa.6213.sroa.6.0.extract.shift.i
  br i1 %.not286.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.6213.sroa.6.0.extract.shift.i, i64 noundef %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4120) #60
          to label %.noexc98.i unwind label %.loopexit.split-lp.i, !noalias !119857

.noexc98.i:                                       ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %.sroa.6213.sroa.6.0.extract.shift.i ; 3 uses
  %i.fr = load i64, ptr %i.fq, align 8, !range !57, !noalias !119857, !noundef !56
  %i.fs = trunc nuw i64 %i.fr to i1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 3 uses
  br i1 %i.fs, label %bb.bc, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i64 1, ptr %i.fq, align 8, !noalias !119857
  store double %i.fp, ptr %i.ft, align 8, !noalias !119857
  call void @llvm.experimental.noalias.scope.decl(metadata !119872)
  %i.fu = load i64, ptr %.sroa.520.0..sroa_idx.i, align 8, !alias.scope !119872, !noalias !119854, !noundef !56 ; 9 uses
  %i.fv = icmp ult i64 %i.fu, 576460752303423488
  call void @llvm.assume(i1 %i.fv)
  call void @llvm.experimental.noalias.scope.decl(metadata !119873)
  %i.fw = load i64, ptr %i.z, align 8, !range !59, !alias.scope !119874, !noalias !119854, !noundef !56
  %i.fx = icmp eq i64 %i.fu, %i.fw
  br i1 %i.fx, label %bb.ao, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i101.i

bb.ao:                                            ; preds = %bb.an
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i101.i unwind label %.loopexit294.i, !noalias !119857

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i101.i: ; preds = %bb.ao, %bb.an
  %i.fy = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !119874, !noalias !119854, !nonnull !56, !noundef !56 ; 6 uses
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %i.fu ; 2 uses
  store double %i.fp, ptr %i.fz, align 8, !noalias !119875
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i32 %.sroa.6213.sroa.6.0.extract.trunc.i, ptr %i.ga, align 8, !noalias !119875
  %i.gb = add nuw nsw i64 %i.fu, 1
  store i64 %i.gb, ptr %.sroa.520.0..sroa_idx.i, align 8, !alias.scope !119874, !noalias !119854
  %.not16.i.i102.i = icmp eq i64 %i.fu, 0
  br i1 %.not16.i.i102.i, label %.loopexit291.i, label %.lr.ph.i.i103.i

.lr.ph.i.i103.i:                                  ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i101.i
  %i.gc = fcmp uno double %i.fp, 0.000000e+00
  br i1 %i.gc, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i104.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i103.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i
  %storemerge17.us.i.i.i = phi i64 [ %i.ge, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i ], [ %i.fu, %.lr.ph.i.i103.i ] ; 3 uses
  %i.gd = add nsw i64 %storemerge17.us.i.i.i, -1
  %i.ge = lshr i64 %i.gd, 1                       ; 4 uses
  %i.gf = icmp samesign ule i64 %i.ge, %i.fu
  call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %i.ge ; 2 uses
  %.val1.us.i.i.i = load double, ptr %i.gg, align 8, !noalias !119876, !noundef !56
  %i.gh = fcmp olt double %i.fp, %.val1.us.i.i.i
end_hunk_8
begin_hunk_9_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_paths:bb.a
  store i64 0, ptr %.sroa.520.0..sroa_idx250.i212, align 8, !noalias !119957
  br label %bb.cq

.lr.ph828:                                        ; preds = %.noexc213.preheader, %.noexc213
  %i.rn = phi ptr [ %i.ro, %.noexc213 ], [ %i.re, %.noexc213.preheader ]
  %i.ro = getelementptr inbounds i8, ptr %i.rn, i64 -16 ; 4 uses
  %.val.i.i.i.i103 = load ptr, ptr %i.ro, align 8, !noalias !119960, !noundef !56
  %.not.i.not.i.i.i.i104 = icmp eq ptr %.val.i.i.i.i103, null
  br i1 %.not.i.not.i.i.i.i104, label %.noexc213, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i128: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i187.i, %bb.eq, %bb.co
  %.pn33.pn.i129 = phi { ptr, i32 } [ %.pn.i124, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i187.i ], [ %i.rp, %bb.co ], [ %.pn.i124, %bb.eq ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body215 unwind label %bb.dz, !noalias !119961

bb.co:                                            ; preds = %bb.cp
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i128

_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.lr.ph828
  %i.rq = ptrtoint ptr %i.ro to i64
  %i.rr = ptrtoint ptr %.val.i.i95 to i64
  %i.rs = sub i64 %i.rq, %i.rr
  %i.rt = lshr i64 %i.rs, 4                       ; 3 uses
  %i.ru = and i64 %i.rt, 4294967295               ; 5 uses
  %i.rv = add nuw nsw i64 %i.ru, 1                ; 18 uses
  %i.rw = shl nuw nsw i64 %i.rv, 4                ; 3 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !119962
  %i.rx = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.rw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !119962 ; 23 uses
  %i.ry = icmp eq ptr %i.rx, null
  br i1 %i.ry, label %bb.cp, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i105

bb.cp:                                            ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.rw) #61
          to label %.noexc.i209 unwind label %bb.co, !noalias !119961

.noexc.i209:                                      ; preds = %bb.cp
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i105: ; preds = %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  %.not.i.i106 = icmp eq i64 %i.ru, 0
  br i1 %.not.i.i106, label %._crit_edge.thread.i.i.i.i111, label %.lr.ph.i.i.i.i107.preheader

.lr.ph.i.i.i.i107.preheader:                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i105
  %xtraiter972 = and i64 %i.rt, 7                 ; 3 uses
  %i.rz = icmp samesign ult i64 %i.ru, 8
  br i1 %i.rz, label %.lr.ph.i.i.i.i107.epil.preheader, label %.lr.ph.i.i.i.i107.preheader.new

.lr.ph.i.i.i.i107.preheader.new:                  ; preds = %.lr.ph.i.i.i.i107.preheader
  %unroll_iter977 = and i64 %i.rt, 4294967288
  br label %.lr.ph.i.i.i.i107

._crit_edge.thread.i.i.i.i111.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i107
  %lcmp.mod974.not = icmp eq i64 %xtraiter972, 0
  br i1 %lcmp.mod974.not, label %._crit_edge.thread.i.i.i.i111, label %.lr.ph.i.i.i.i107.epil.preheader

.lr.ph.i.i.i.i107.epil.preheader:                 ; preds = %._crit_edge.thread.i.i.i.i111.loopexit.unr-lcssa, %.lr.ph.i.i.i.i107.preheader
  %.sroa.0.022.i.i.i.i108.epil.init = phi ptr [ %i.rx, %.lr.ph.i.i.i.i107.preheader ], [ %i.si, %._crit_edge.thread.i.i.i.i111.loopexit.unr-lcssa ]
  %lcmp.mod976 = icmp ne i64 %xtraiter972, 0
  tail call void @llvm.assume(i1 %lcmp.mod976)
  br label %.lr.ph.i.i.i.i107.epil

.lr.ph.i.i.i.i107.epil:                           ; preds = %.lr.ph.i.i.i.i107.epil, %.lr.ph.i.i.i.i107.epil.preheader
  %.sroa.0.022.i.i.i.i108.epil = phi ptr [ %i.sa, %.lr.ph.i.i.i.i107.epil ], [ %.sroa.0.022.i.i.i.i108.epil.init, %.lr.ph.i.i.i.i107.epil.preheader ] ; 2 uses
  %epil.iter973 = phi i64 [ %epil.iter973.next, %.lr.ph.i.i.i.i107.epil ], [ 0, %.lr.ph.i.i.i.i107.epil.preheader ]
  store i64 0, ptr %.sroa.0.022.i.i.i.i108.epil, align 8, !noalias !119963
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i108.epil, i64 16 ; 2 uses
  %epil.iter973.next = add i64 %epil.iter973, 1   ; 2 uses
  %epil.iter973.cmp.not = icmp eq i64 %epil.iter973.next, %xtraiter972
  br i1 %epil.iter973.cmp.not, label %._crit_edge.thread.i.i.i.i111, label %.lr.ph.i.i.i.i107.epil, !llvm.loop !119722

._crit_edge.thread.i.i.i.i111:                    ; preds = %._crit_edge.thread.i.i.i.i111.loopexit.unr-lcssa, %.lr.ph.i.i.i.i107.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i105
  %.sroa.0.0.lcssa29.i.i.i.i112 = phi ptr [ %i.rx, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i105 ], [ %i.si, %._crit_edge.thread.i.i.i.i111.loopexit.unr-lcssa ], [ %i.sa, %.lr.ph.i.i.i.i107.epil ]
  store i64 0, ptr %.sroa.0.0.lcssa29.i.i.i.i112, align 8, !noalias !119963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !119957
  store i64 0, ptr %i.k, align 8, !noalias !119957
  %.sroa.419.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 20 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.419.0..sroa_idx.i113, align 8, !noalias !119957
  %.sroa.520.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.520.0..sroa_idx.i114, align 8, !noalias !119957
  %.not.i115 = icmp samesign ult i64 %i.ru, %i.al
  br i1 %.not.i115, label %bb.cq, label %bb.cr

.lr.ph.i.i.i.i107:                                ; preds = %.lr.ph.i.i.i.i107, %.lr.ph.i.i.i.i107.preheader.new
  %.sroa.0.022.i.i.i.i108 = phi ptr [ %i.rx, %.lr.ph.i.i.i.i107.preheader.new ], [ %i.si, %.lr.ph.i.i.i.i107 ] ; 9 uses
  %niter978 = phi i64 [ 0, %.lr.ph.i.i.i.i107.preheader.new ], [ %niter978.next.7, %.lr.ph.i.i.i.i107 ]
  store i64 0, ptr %.sroa.0.022.i.i.i.i108, align 8, !noalias !119963
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i108, i64 16
  store i64 0, ptr %i.sb, align 8, !noalias !119963
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i108, i64 32
  store i64 0, ptr %i.sc, align 8, !noalias !119963
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i108, i64 48
  store i64 0, ptr %i.sd, align 8, !noalias !119963
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i108, i64 64
  store i64 0, ptr %i.se, align 8, !noalias !119963
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i108, i64 80
  store i64 0, ptr %i.sf, align 8, !noalias !119963
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i108, i64 96
  store i64 0, ptr %i.sg, align 8, !noalias !119963
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i108, i64 112
  store i64 0, ptr %i.sh, align 8, !noalias !119963
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i108, i64 128 ; 3 uses
  %niter978.next.7 = add i64 %niter978, 8         ; 2 uses
  %niter978.ncmp.7 = icmp eq i64 %niter978.next.7, %unroll_iter977
  br i1 %niter978.ncmp.7, label %._crit_edge.thread.i.i.i.i111.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i107

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i121: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i, %.loopexit.split-lp306.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i161, %.loopexit.split-lp301.i158.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.i116, %.loopexit299.i
  %.sroa.419.0..sroa_idx256.i122 = phi ptr [ %.sroa.419.0..sroa_idx.i113, %.loopexit.split-lp306.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.419.0..sroa_idx.i113, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i161 ], [ %.sroa.419.0..sroa_idx.i113, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i ], [ %.sroa.419.0..sroa_idx257.ph.i117, %.loopexit.split-lp.i116 ], [ %.sroa.419.0..sroa_idx.i113, %.loopexit.split-lp301.i158.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.419.0..sroa_idx.i113, %.loopexit299.i ]
  %.sroa.4.0.i5.i253.i123 = phi i64 [ %i.rv, %.loopexit.split-lp306.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.rv, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i161 ], [ %i.rv, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i ], [ %.sroa.4.0.i5.i254.ph.i118, %.loopexit.split-lp.i116 ], [ %i.rv, %.loopexit.split-lp301.i158.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.rv, %.loopexit299.i ] ; 2 uses
  %i.sj = phi ptr [ %i.rx, %.loopexit.split-lp306.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.rx, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i161 ], [ %i.rx, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i ], [ %.ph.i119, %.loopexit.split-lp.i116 ], [ %i.rx, %.loopexit.split-lp301.i158.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.rx, %.loopexit299.i ] ; 2 uses
  %.pn.i124 = phi { ptr, i32 } [ %lpad.loopexit.split-lp898, %.loopexit.split-lp306.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp895, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i161 ], [ %lpad.loopexit.split-lp898, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i ], [ %lpad.loopexit.split-lp.i120, %.loopexit.split-lp.i116 ], [ %lpad.loopexit.split-lp895, %.loopexit.split-lp301.i158.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.i150, %.loopexit299.i ] ; 2 uses
  %.val57.i125 = load i64, ptr %i.k, align 8, !noalias !119957 ; 2 uses
  %i.sk = icmp eq i64 %.val57.i125, 0
  br i1 %i.sk, label %bb.eq, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i126

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i126: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i121
  %.val58.i127 = load ptr, ptr %.sroa.419.0..sroa_idx256.i122, align 8, !noalias !119957, !nonnull !56, !noundef !56
  %i.sl = shl nuw i64 %.val57.i125, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58.i127, i64 noundef %i.sl, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !119961
  br label %bb.eq

bb.cq:                                            ; preds = %._crit_edge.thread.i.i.i.i111, %.thread.i210
  %.sroa.419.0..sroa_idx258.i206 = phi ptr [ %.sroa.419.0..sroa_idx249.i211, %.thread.i210 ], [ %.sroa.419.0..sroa_idx.i113, %._crit_edge.thread.i.i.i.i111 ]
  %.sroa.4.0.i5.i255.i207 = phi i64 [ 0, %.thread.i210 ], [ %i.rv, %._crit_edge.thread.i.i.i.i111 ] ; 2 uses
  %i.sm = phi ptr [ inttoptr (i64 8 to ptr), %.thread.i210 ], [ %i.rx, %._crit_edge.thread.i.i.i.i111 ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %.sroa.4.0.i5.i255.i207, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4121) #60
          to label %.noexc80.i208 unwind label %.loopexit.split-lp.i116, !noalias !119961

.noexc80.i208:                                    ; preds = %bb.cq
  unreachable

bb.cr:                                            ; preds = %._crit_edge.thread.i.i.i.i111
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rx) ]
  %i.sn = getelementptr inbounds nuw [16 x i8], ptr %i.rx, i64 %i.al ; 2 uses
  store i64 1, ptr %i.sn, align 8, !noalias !119961
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  store double 0.000000e+00, ptr %i.so, align 8, !noalias !119961
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119964)
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #62
          to label %bb.cs unwind label %.loopexit.split-lp.i116, !noalias !119961

bb.cs:                                            ; preds = %bb.cr
  %i.sp = load ptr, ptr %.sroa.419.0..sroa_idx.i113, align 8, !alias.scope !119965, !noalias !119957, !nonnull !56, !noundef !56 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  store i64 1, ptr %.sroa.520.0..sroa_idx.i114, align 8, !alias.scope !119965, !noalias !119957
  store double 0.000000e+00, ptr %i.sp, align 8, !noalias !119966
  store i32 %i.ai, ptr %i.sq, align 8, !noalias !119966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !119957
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !119961
  %i.sr = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !119961 ; 3 uses
  %i.ss = icmp eq ptr %i.sr, null
  br i1 %i.ss, label %bb.ct, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i131, !prof !88

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #61
          to label %.noexc83.i205 unwind label %.loopexit.split-lp.i116, !noalias !119961

.noexc83.i205:                                    ; preds = %bb.ct
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i131: ; preds = %bb.cs
  store i32 %i.ai, ptr %i.sr, align 4, !noalias !119961
  store i64 1, ptr %i.j, align 8, !noalias !119957
  %i.st = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.sr, ptr %i.st, align 8, !noalias !119957
  %i.su = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 1, ptr %i.su, align 8, !noalias !119957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !119957
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) dereferenceable_or_null(64) %i.ae, i32 noundef %i.ai, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.cu unwind label %.loopexit.split-lp.i116, !noalias !119961

bb.cu:                                            ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i131
  %i.sv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0195.0.copyload.i = load i64, ptr %i.sv, align 8, !noalias !119957 ; 2 uses
  %.sroa.4196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4196.0.copyload.i = load ptr, ptr %.sroa.4196.0..sroa_idx.i, align 8, !noalias !119957 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !119957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !119957
  %.0.val.off.i.i132 = add i64 %.sroa.0195.0.copyload.i, -1
  %switch.i.i133 = icmp ult i64 %.0.val.off.i.i132, -2
  br i1 %switch.i.i133, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i84.i204, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i134

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i84.i204: ; preds = %bb.cu
  %i.sw = shl nuw i64 %.sroa.0195.0.copyload.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4196.0.copyload.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4196.0.copyload.i, i64 noundef %i.sw, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !119961
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i134

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i134: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i84.i204, %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !119957
  call fastcc void @_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE3popCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.k), !noalias !119961
  %i.sx = load i64, ptr %i.i, align 8, !range !57, !noalias !119957, !noundef !56
  %i.sy = trunc nuw i64 %i.sx to i1
  br i1 %i.sy, label %.lr.ph.i140, label %._crit_edge.i135

.lr.ph.i140:                                      ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i134
  %i.sz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ta = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.tb = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.td = load ptr, ptr %i.tc, align 8, !alias.scope !119955, !nonnull !56 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.tf = load i64, ptr %i.te, align 8, !alias.scope !119955 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i141 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.9.0..sroa_idx.i.i.i142 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i123.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.52.0..sroa_idx.i.i.i143 = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i151.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %.sroa.9.0..sroa_idx.i.i152.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br label %bb.cv

bb.cv:                                            ; preds = %.backedge310.i, %.lr.ph.i140
  %i.tn = load double, ptr %i.sz, align 8, !noalias !119957, !noundef !56
  %i.to = load i32, ptr %i.ta, align 8, !noalias !119957, !noundef !56 ; 5 uses
  %.val50.i144 = load i64, ptr %i.tb, align 8, !noalias !119957, !noundef !56
  %i.tp = zext i32 %i.to to i64                   ; 9 uses
  %i.tq = icmp ugt i64 %.val50.i144, %i.tp
  br i1 %i.tq, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i202, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i145

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i202: ; preds = %bb.cv
  %.val49.i203 = load ptr, ptr %i.l, align 8, !noalias !119957, !nonnull !56, !noundef !56
  %i.tr = lshr i64 %i.tp, 6
  %i.ts = and i64 %i.tp, 63
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %.val49.i203, i64 %i.tr
  %i.tu = load i64, ptr %i.tt, align 8, !noalias !119961, !noundef !56
  %i.tv = lshr i64 %i.tu, %i.ts
  %i.tw = trunc i64 %i.tv to i1
  br i1 %i.tw, label %.backedge310.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i145

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i145: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i202, %bb.cv
  %i.tx = icmp eq i32 %.sroa.4.0, %i.to
  %or.cond.i146 = select i1 %8, i1 %i.tx, i1 false
  br i1 %or.cond.i146, label %._crit_edge.i135, label %bb.cw

.backedge310.i:                                   ; preds = %bb.df, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !119957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !119957
  call fastcc void @_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE3popCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.k), !noalias !119961
  %i.ty = load i64, ptr %i.i, align 8, !range !57, !noalias !119957, !noundef !56
  %i.tz = trunc nuw i64 %i.ty to i1
  br i1 %i.tz, label %bb.cv, label %._crit_edge.i135

bb.cw:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i145
  %i.ua = icmp ugt i64 %.val1.i.i96, %i.tp
  br i1 %i.ua, label %bb.cx, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.preheader

bb.cx:                                            ; preds = %bb.cw
  %i.ub = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i95, i64 %i.tp ; 3 uses
  %i.uc = load ptr, ptr %i.ub, align 8, !noalias !119967, !noundef !56
  %.not.i.i.i85.i200 = icmp eq ptr %i.uc, null
  br i1 %.not.i.i.i85.i200, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.preheader, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.cx
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %.sroa.0.0.copyload.i.i.i201 = load i32, ptr %i.ud, align 8, !noalias !119967
  %.sroa.5.0..sroa_idx.i.i86.i = getelementptr inbounds nuw i8, ptr %i.ub, i64 12
  %.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i86.i, align 4, !noalias !119967
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.preheader

_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.preheader: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.cx, %bb.cw
  %.sroa.12.0.i.ph = phi i32 [ -1, %bb.cw ], [ %.sroa.5.0.copyload.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ -1, %bb.cx ]
  %.sroa.9209.0.i.ph = phi i32 [ -1, %bb.cw ], [ %.sroa.0.0.copyload.i.i.i201, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ -1, %bb.cx ]
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.backedge, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.preheader
  %.sroa.12.0.i = phi i32 [ %.sroa.12.0.i.ph, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.preheader ], [ %.sroa.12.2.ph.i, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.backedge ] ; 2 uses
  %.sroa.9209.0.i = phi i32 [ %.sroa.9209.0.i.ph, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.preheader ], [ %.sroa.9209.1.ph.i, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.backedge ] ; 2 uses
  %i.ue = zext i32 %.sroa.9209.0.i to i64         ; 2 uses
  %i.uf = icmp ugt i64 %i.tf, %i.ue
  br i1 %i.uf, label %bb.cy, label %._crit_edge.i.i.preheader

._crit_edge.i.i.preheader:                        ; preds = %bb.cy, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i
  br label %._crit_edge.i.i

bb.cy:                                            ; preds = %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i
  %i.ug = getelementptr inbounds nuw [24 x i8], ptr %i.td, i64 %i.ue ; 3 uses
  %i.uh = load ptr, ptr %i.ug, align 8, !noalias !119968, !noundef !56 ; 2 uses
  %.not.i88.i = icmp eq ptr %i.uh, null
  br i1 %.not.i88.i, label %._crit_edge.i.i.preheader, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.uj = load i32, ptr %i.ui, align 8, !noalias !119968, !noundef !56
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  %.sroa.023.0.copyload.i.i = load i64, ptr %i.uk, align 8, !noalias !119968
  br label %bb.dg

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.preheader, %bb.da
  %i.ul = phi i32 [ %i.uq, %bb.da ], [ %.sroa.12.0.i, %._crit_edge.i.i.preheader ]
  %i.um = zext i32 %i.ul to i64                   ; 2 uses
  %i.un = icmp ugt i64 %i.tf, %i.um
  br i1 %i.un, label %bb.da, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

bb.da:                                            ; preds = %._crit_edge.i.i
  %i.uo = getelementptr inbounds nuw [24 x i8], ptr %i.td, i64 %i.um ; 4 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 12
  %i.uq = load i32, ptr %i.up, align 4, !noalias !119968, !noundef !56 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %.val.i87.i = load i32, ptr %i.ur, align 4, !noalias !119968, !noundef !56
  %i.us = icmp eq i32 %.val.i87.i, %i.to
  br i1 %i.us, label %._crit_edge.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ut = load ptr, ptr %i.uo, align 8, !noalias !119968, !noundef !56 ; 2 uses
  %.not42.i.i = icmp eq ptr %i.ut, null
  br i1 %.not42.i.i, label %bb.dd, label %bb.dc, !prof !60

bb.dc:                                            ; preds = %bb.db
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %.sroa.032.0.copyload.i.i = load i64, ptr %i.uu, align 8, !noalias !119968
  %.sroa.0.0.insert.insert.i44.i.i = shl i64 %.sroa.032.0.copyload.i.i, 32
  br label %bb.dg

bb.dd:                                            ; preds = %bb.db
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4315) #60
          to label %.noexc89.i unwind label %.loopexit.split-lp.i116, !noalias !119961

.noexc89.i:                                       ; preds = %bb.dd
  unreachable

.loopexit299.i:                                   ; preds = %bb.dx, %.loopexit292.i, %bb.ec, %.loopexit296.i, %bb.dm, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit93.thread.i
  %lpad.loopexit.i150 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i121

.loopexit.split-lp.i116:                          ; preds = %.invoke.i175, %.invoke464.i, %bb.dj, %bb.de, %bb.dd, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i131, %bb.ct, %bb.cr, %bb.cq
  %.sroa.419.0..sroa_idx257.ph.i117 = phi ptr [ %.sroa.419.0..sroa_idx.i113, %bb.ct ], [ %.sroa.419.0..sroa_idx.i113, %bb.dd ], [ %.sroa.419.0..sroa_idx.i113, %bb.de ], [ %.sroa.419.0..sroa_idx.i113, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i131 ], [ %.sroa.419.0..sroa_idx.i113, %bb.dj ], [ %.sroa.419.0..sroa_idx.i113, %.invoke.i175 ], [ %.sroa.419.0..sroa_idx258.i206, %bb.cq ], [ %.sroa.419.0..sroa_idx.i113, %.invoke464.i ], [ %.sroa.419.0..sroa_idx.i113, %bb.cr ]
  %.sroa.4.0.i5.i254.ph.i118 = phi i64 [ %i.rv, %bb.ct ], [ %i.rv, %bb.dd ], [ %i.rv, %bb.de ], [ %i.rv, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i131 ], [ %i.rv, %bb.dj ], [ %i.rv, %.invoke.i175 ], [ %.sroa.4.0.i5.i255.i207, %bb.cq ], [ %i.rv, %.invoke464.i ], [ %i.rv, %bb.cr ]
  %.ph.i119 = phi ptr [ %i.rx, %bb.ct ], [ %i.rx, %bb.dd ], [ %i.rx, %bb.de ], [ %i.rx, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i131 ], [ %i.rx, %bb.dj ], [ %i.rx, %.invoke.i175 ], [ %i.sm, %bb.cq ], [ %i.rx, %.invoke464.i ], [ %i.rx, %bb.cr ]
  %lpad.loopexit.split-lp.i120 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i121

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %._crit_edge.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !119969)
  call void @llvm.experimental.noalias.scope.decl(metadata !119970)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !119971
  store i64 %i.tp, ptr %i.b, align 8, !noalias !119972
  %i.uv = load i64, ptr %i.tb, align 8, !alias.scope !119973, !noalias !119957, !noundef !56
  %i.uw = icmp ugt i64 %i.uv, %i.tp
  br i1 %i.uw, label %bb.df, label %bb.de, !prof !66

bb.de:                                            ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !119972
  store ptr %i.b, ptr %i.a, align 8, !noalias !119972
  %.sroa.42.0..sroa_idx.i.i.i148 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i148, align 8, !noalias !119972
  %i.ux = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.tb, ptr %i.ux, align 8, !noalias !119972
  %.sroa.46.0..sroa_idx.i.i.i149 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i149, align 8, !noalias !119972
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1581, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1582) #60
          to label %.noexc91.i unwind label %.loopexit.split-lp.i116, !noalias !119961

.noexc91.i:                                       ; preds = %bb.de
  unreachable

bb.df:                                            ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i
  %i.uy = lshr i64 %i.tp, 6
  %i.uz = and i64 %i.tp, 63
  %i.va = load ptr, ptr %i.l, align 8, !alias.scope !119973, !noalias !119957, !nonnull !56, !noundef !56
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %i.uy ; 2 uses
  %i.vc = load i64, ptr %i.vb, align 8, !noalias !119974, !noundef !56
  %i.vd = shl nuw i64 1, %i.uz
  %i.ve = or i64 %i.vc, %i.vd
  store i64 %i.ve, ptr %i.vb, align 8, !noalias !119974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !119971
  br label %.backedge310.i

bb.dg:                                            ; preds = %bb.dc, %bb.cz
  %.val.i94.i = phi ptr [ %i.uh, %bb.cz ], [ %i.ut, %bb.dc ]
  %.sroa.10.0.ph.i = phi i64 [ %.sroa.023.0.copyload.i.i, %bb.cz ], [ %.sroa.0.0.insert.insert.i44.i.i, %bb.dc ] ; 2 uses
  %.sroa.12.2.ph.i = phi i32 [ %.sroa.12.0.i, %bb.cz ], [ %i.uq, %bb.dc ]
  %.sroa.9209.1.ph.i = phi i32 [ %i.uj, %bb.cz ], [ %.sroa.9209.0.i, %bb.dc ]
  %.sroa.6214.sroa.6.0.extract.shift.i = lshr i64 %.sroa.10.0.ph.i, 32 ; 8 uses
  %.sroa.6214.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6214.sroa.6.0.extract.shift.i to i32 ; 9 uses
  %.val47.i = load i64, ptr %i.tb, align 8, !noalias !119957, !noundef !56
  %i.vf = icmp ugt i64 %.val47.i, %.sroa.6214.sroa.6.0.extract.shift.i
  br i1 %i.vf, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit93.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit93.thread.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit93.i: ; preds = %bb.dg
  %.val46.i199 = load ptr, ptr %i.l, align 8, !noalias !119957, !nonnull !56, !noundef !56
  %i.vg = lshr i64 %.sroa.10.0.ph.i, 38
  %i.vh = and i64 %.sroa.6214.sroa.6.0.extract.shift.i, 63
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %.val46.i199, i64 %i.vg
  %i.vj = load i64, ptr %i.vi, align 8, !noalias !119961, !noundef !56
  %i.vk = lshr i64 %i.vj, %i.vh
  %i.vl = trunc i64 %i.vk to i1
  br i1 %i.vl, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.backedge, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit93.thread.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit93.thread.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit93.i, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !119957
  invoke fastcc void @_RNvMs9_CskcxRuJ53GpR_9rustworkxNtB5_6CostFn4call(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad, ptr nonnull %.val.i94.i)
          to label %_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_paths0B5_.exit.i unwind label %.loopexit299.i, !noalias !119961

_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_paths0B5_.exit.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit93.thread.i
  %i.vm = load i64, ptr %i.h, align 8, !range !57, !noalias !119957, !noundef !56
  %i.vn = trunc nuw i64 %i.vm to i1
  br i1 %i.vn, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_paths0B5_.exit.i
  %.sroa.024.0.copyload.i194443 = load i64, ptr %i.tg, align 8, !noalias !119957
  %.sroa.425.0..sroa_idx.i195 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.11.16.copyload = load ptr, ptr %.sroa.425.0..sroa_idx.i195, align 8, !noalias !119975
  %.sroa.13272.16..sroa.425.0..sroa_idx.i195.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.13272.16.copyload = load i64, ptr %.sroa.13272.16..sroa.425.0..sroa_idx.i195.sroa_idx, align 8, !noalias !119975
  %.sroa.14275.16..sroa.425.0..sroa_idx.i195.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14275, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14275.16..sroa.425.0..sroa_idx.i195.sroa_idx, i64 40, i1 false), !noalias !119975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !119957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !119957
  %.val55.i197 = load i64, ptr %i.k, align 8, !noalias !119957 ; 2 uses
  %i.vo = icmp eq i64 %.val55.i197, 0
  br i1 %i.vo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit97.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i96.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i96.i: ; preds = %bb.dh
  %.val56.i198 = load ptr, ptr %.sroa.419.0..sroa_idx.i113, align 8, !noalias !119957, !nonnull !56, !noundef !56
  %i.vp = shl nuw i64 %.val55.i197, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56.i198, i64 noundef %i.vp, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !119961
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit97.i

bb.di:                                            ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_paths0B5_.exit.i
  %i.vq = load double, ptr %i.tg, align 8, !noalias !119957, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !119957
  %i.vr = fadd double %i.tn, %i.vq                ; 13 uses
  %.not291.i = icmp samesign ult i64 %i.ru, %.sroa.6214.sroa.6.0.extract.shift.i
  br i1 %.not291.i, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.6214.sroa.6.0.extract.shift.i, i64 noundef %i.rv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4120) #60
          to label %.noexc99.i unwind label %.loopexit.split-lp.i116, !noalias !119961

.noexc99.i:                                       ; preds = %bb.dj
end_hunk_9
