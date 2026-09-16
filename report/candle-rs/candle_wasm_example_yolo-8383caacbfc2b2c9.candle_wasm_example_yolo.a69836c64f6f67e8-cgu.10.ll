Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_yolo-8383caacbfc2b2c9.candle_wasm_example_yolo.a69836c64f6f67e8-cgu.10?download=true
inline.NumInlined: 294
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable14driftsort_mainNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_7sort_byNCNvB11_23non_maximum_suppression0E0INtNtB20_3vec3VecBZ_EEB13_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = icmp samesign ugt i64 %i.f, 85           ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCsgCecv3eZDcN_5alloc5sliceINtNtB7_3vec3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEINtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable8BufGuardBN_E13with_capacityBR_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.f)
  %i.h = invoke { ptr, i64 } @_RNvXs8_NtCsgCecv3eZDcN_5alloc5sliceINtNtB7_3vec3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEINtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.g, label %bb.k, label %common.resume

.thread:                                          ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.k = extractvalue { ptr, i64 } %i.h, 1
  %i.l = extractvalue { ptr, i64 } %i.h, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 85, %bb.a ], [ %i.k, %bb.d ]
  %.pn = phi ptr [ %i.b, %bb.a ], [ %i.l, %bb.d ]
  %i.m = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvBY_23non_maximum_suppression0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.m, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEEB1c_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEEB1c_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.p, %bb.k ], [ %i.i, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEEB1c_.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.g

bb.k:                                             ; preds = %.thread, %bb.c
  %i.p = phi { ptr, i32 } [ %i.j, %.thread ], [ %i.i, %bb.c ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #21
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB14_7sort_byNCNvB16_23non_maximum_suppression0E0EB18_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 24019198012642646) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB14_7sort_byNCNvB16_23non_maximum_suppression0E0EB18_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB14_7sort_byNCNvB16_23non_maximum_suppression0E0EB18_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB14_7sort_byNCNvB16_23non_maximum_suppression0E0EB18_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 40
  %.sroa.0.0.val13 = load float, ptr %i.n, align 8, !noundef !4 ; 4 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 40
  %.sroa.04.0.val14 = load float, ptr %i.o, align 8, !noundef !4 ; 4 uses
  %brmerge.not.i = fcmp uno float %.sroa.04.0.val14, %.sroa.0.0.val13
  br i1 %brmerge.not.i, label %bb.d, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit: ; preds = %bb.c
  %.mux.i = fcmp olt float %.sroa.04.0.val14, %.sroa.0.0.val13 ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.08.0, i64 40
  %.sroa.08.0.val12 = load float, ptr %i.p, align 8, !noundef !4 ; 4 uses
  %brmerge.not.i15 = fcmp uno float %.sroa.08.0.val12, %.sroa.0.0.val13
  br i1 %brmerge.not.i15, label %bb.e, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit17, !prof !12

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit17: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit
  %.mux.i16 = fcmp olt float %.sroa.08.0.val12, %.sroa.0.0.val13
  %i.q = xor i1 %.mux.i, %.mux.i16
  br i1 %i.q, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_7sort_byNCNvB11_23non_maximum_suppression0E0EB13_.exit, label %bb.f

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit17
  %brmerge.not.i18 = fcmp uno float %.sroa.08.0.val12, %.sroa.04.0.val14
  br i1 %brmerge.not.i18, label %bb.g, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit20, !prof !12

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit20: ; preds = %bb.f
  %.mux.i19 = fcmp olt float %.sroa.08.0.val12, %.sroa.04.0.val14
  %i.r = xor i1 %.mux.i, %.mux.i19
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_7sort_byNCNvB11_23non_maximum_suppression0E0EB13_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_7sort_byNCNvB11_23non_maximum_suppression0E0EB13_.exit: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit17, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit20
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit17 ], [ %..i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit20 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvBY_23non_maximum_suppression0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not3.i117 = icmp ugt i64 %.sroa.01.0, 2
  %.not3.i122 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ag, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ag ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dz, %bb.ag ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dx, %bb.ag ] ; 3 uses
  %i.l = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvB15_23non_maximum_suppression0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.bg, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvB15_23non_maximum_suppression0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvB15_23non_maximum_suppression0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i.thread120, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.s, label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7reverseBy_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr i8, ptr %i.p, i64 88
  %.val7.i = load float, ptr %i.r, align 8, !alias.scope !382, !noalias !383, !noundef !4 ; 4 uses
  %i.s = getelementptr i8, ptr %i.p, i64 40
  %.val8.i = load float, ptr %i.s, align 8, !alias.scope !382, !noalias !383, !noundef !4 ; 2 uses
  %brmerge.not.i39 = fcmp uno float %.val8.i, %.val7.i
  br i1 %brmerge.not.i39, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit41, !prof !12

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !384
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit41: ; preds = %bb.k
  %.mux.i40 = fcmp olt float %.val8.i, %.val7.i   ; 2 uses
  %.not83 = icmp eq i64 %i.o, 2                   ; 2 uses
  br i1 %.mux.i40, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit41
  br i1 %.not83, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader51
  %smax = tail call i64 @llvm.smax.i64(i64 %i.o, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit41
  br i1 %.not83, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i.thread120, label %.lr.ph71.preheader

.lr.ph71.preheader:                               ; preds = %.preheader
  %smax96 = tail call i64 @llvm.smax.i64(i64 %i.o, i64 3) ; 2 uses
  br label %.lr.ph71

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %.val6.i = phi float [ %.val5.i, %bb.n ], [ %.val7.i, %.lr.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i68 = phi i64 [ %i.v, %bb.n ], [ 2, %.lr.ph.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.01.0.i.i68
  %i.u = getelementptr i8, ptr %i.t, i64 40
  %.val5.i = load float, ptr %i.u, align 8, !alias.scope !382, !noalias !383, !noundef !4 ; 3 uses
  %brmerge.not.i36 = fcmp uno float %.val6.i, %.val5.i
  br i1 %brmerge.not.i36, label %bb.m, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit38, !prof !12

bb.m:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !384
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit38: ; preds = %.lr.ph
  %.mux.i37 = fcmp olt float %.val6.i, %.val5.i
  br i1 %.mux.i37, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i, label %bb.n

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit38
  %i.v = add nuw nsw i64 %.sroa.01.0.i.i68, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i, label %.lr.ph

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %bb.p
  %.val4.i = phi float [ %.val.i, %bb.p ], [ %.val7.i, %.lr.ph71.preheader ] ; 2 uses
  %.sroa.01.1.i.i70 = phi i64 [ %i.y, %bb.p ], [ 2, %.lr.ph71.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.01.1.i.i70
  %i.x = getelementptr i8, ptr %i.w, i64 40
  %.val.i = load float, ptr %i.x, align 8, !alias.scope !382, !noalias !383, !noundef !4 ; 3 uses
  %brmerge.not.i = fcmp uno float %.val4.i, %.val.i
  br i1 %brmerge.not.i, label %bb.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit, !prof !12

bb.o:                                             ; preds = %.lr.ph71
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !384
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit: ; preds = %.lr.ph71
  %.mux.i = fcmp olt float %.val4.i, %.val.i
  br i1 %.mux.i, label %bb.p, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i

bb.p:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit
  %i.y = add nuw nsw i64 %.sroa.01.1.i.i70, 1     ; 2 uses
  %exitcond96.not = icmp eq i64 %i.y, %smax96
  br i1 %exitcond96.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i, label %.lr.ph71

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i: ; preds = %bb.n, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit38, %bb.p, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i70, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit ], [ %smax96, %bb.p ], [ %.sroa.01.0.i.i68, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit38 ], [ %smax, %bb.n ] ; 6 uses
  %i.z = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.z)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.q

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i.thread120: ; preds = %.preheader
  br i1 %.not3.i122, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit11.preheader.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i.thread: ; preds = %.preheader51
  br i1 %.not3.i117, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7reverseBy_.exit

bb.q:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i
  br i1 %.mux.i40, label %bb.t, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7reverseBy_.exit

bb.r:                                             ; preds = %bb.i
  %i.aa = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 192153584101141163) %i.o)
  %i.ab = shl nuw nsw i64 %i.aa, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvB15_23non_maximum_suppression0E0EB17_.exit

bb.s:                                             ; preds = %bb.i
  %i.ac = tail call i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvB17_23non_maximum_suppression0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef %i.ac, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #24, !inline_history !347
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvB15_23non_maximum_suppression0E0EB17_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7reverseBy_.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit11.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i.thread, %bb.j, %bb.t, %bb.q
  %.sroa.0.0.i.i4649 = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.q ], [ %.sroa.0.0.i.i, %bb.t ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i.thread ], [ %.sroa.0.0.i.i118125129, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4649, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvB15_23non_maximum_suppression0E0EB17_.exit

bb.t:                                             ; preds = %bb.q
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385), !noalias !383
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386), !noalias !383
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7reverseBy_.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit11.preheader.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i.thread120, %bb.t
  %i.ai = phi i64 [ %i.ah, %bb.t ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i.thread120 ]
  %.sroa.0.0.i.i118125129 = phi i64 [ %.sroa.0.0.i.i, %bb.t ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvB14_23non_maximum_suppression0E0EB16_.exit.i.thread120 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.0.0.i.i118125129
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit11.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit11.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit11.i.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ax, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit11.i.i ], [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.0.016.i.i ; 4 uses
  %i.am = getelementptr [48 x i8], ptr %i.aj, i64 %i.ak ; 4 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !387, !noalias !388
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !389, !noalias !390
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !387, !noalias !388
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !389, !noalias !390
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !391, !noalias !388
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !392, !noalias !390
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !391, !noalias !388
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !392, !noalias !390
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !393, !noalias !388
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !394, !noalias !390
  store <2 x i64> %i.aw, ptr %i.at, align 8, !alias.scope !393, !noalias !388
  store <2 x i64> %i.av, ptr %i.au, align 8, !alias.scope !394, !noalias !390
  %i.ax = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ax, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7reverseBy_.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox12split_at_mutBy_.exit11.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvB15_23non_maximum_suppression0E0EB17_.exit: ; preds = %bb.r, %bb.s, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7reverseBy_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7reverseBy_.exit ], [ %i.ae, %bb.s ], [ %i.ab, %bb.r ] ; 2 uses
  %i.ay = lshr i64 %.sroa.023.0, 1
  %i.az = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ba = sub nsw i64 %factor, %i.ay
  %i.bb = add nuw nsw i64 %i.az, %factor
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  br label %bb.g

bb.u:                                             ; preds = %.lr.ph76, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvB18_23non_maximum_suppression0E0EB1a_.exit
  %.sroa.02.175 = phi i64 [ %.sroa.02.0, %.lr.ph76 ], [ %i.bh, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvB18_23non_maximum_suppression0E0EB1a_.exit ] ; 2 uses
  %.sroa.023.174 = phi i64 [ %.sroa.023.0, %.lr.ph76 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvB18_23non_maximum_suppression0E0EB1a_.exit ] ; 4 uses
  %i.bh = add i64 %.sroa.02.175, -1               ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bj, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvB18_23non_maximum_suppression0E0EB1a_.exit, %bb.u, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.174, %bb.u ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvB18_23non_maximum_suppression0E0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.175, %bb.u ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvB18_23non_maximum_suppression0E0EB1a_.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bl, align 1
  br i1 %i.l, label %bb.ag, label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !4 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 8 uses
  %i.bp = lshr i64 %.sroa.023.174, 1              ; 6 uses
  %i.bq = add nuw i64 %i.bo, %i.bp                ; 4 uses
  %i.br = sub i64 %.sroa.09.0, %i.bq
  %i.bs = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.br ; 6 uses
  %i.bt = icmp samesign ugt i64 %i.bq, %3
  %i.bu = trunc i64 %.sroa.023.174 to i1
  %i.bv = or i64 %i.bn, %.sroa.023.174
  %i.bw = trunc i64 %i.bv to i1
  %or.cond3.i = or i1 %i.bt, %i.bw
  br i1 %or.cond3.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.by = shl nuw nsw i64 %i.bq, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvB18_23non_maximum_suppression0E0EB1a_.exit

bb.y:                                             ; preds = %bb.z, %bb.w
  br i1 %i.bu, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.bz = or i64 %i.bo, 1
  %i.ca = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvB17_23non_maximum_suppression0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.bs, i64 noundef range(i64 0, 192153584101141163) %i.bo, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #24, !inline_history !366
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw [48 x i8], ptr %i.bs, i64 %i.bo
  %i.cf = or i64 %i.bp, 1
  %i.cg = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvB17_23non_maximum_suppression0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.ce, i64 noundef range(i64 0, 192153584101141163) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #24, !inline_history !366
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.ck = icmp eq i64 %i.bo, 0
  %i.cl = icmp eq i64 %i.bp, 0
  %or.cond.i = or i1 %i.cl, %i.ck
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvBZ_23non_maximum_suppression0E0EB11_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bo, i64 %i.bp) ; 2 uses
  %i.cn = icmp samesign ult i64 %3, %i.cm
  br i1 %i.cn, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvBZ_23non_maximum_suppression0E0EB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw [48 x i8], ptr %i.bs, i64 %i.bo ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bo, %i.bp  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.co, ptr %i.bs
  %i.cp = mul nuw nsw i64 %i.cm, 48               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cp, i1 false), !alias.scope !397
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %i.cp ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i.i
  %.sroa.13.0.i = phi ptr [ %i.cy, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i.i ], [ %i.co, %.critedge.i ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.da, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i.i ], [ %i.cq, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.cv, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i.i ], [ %i.n, %.critedge.i ]
  %i.cr = getelementptr i8, ptr %.sroa.7.0.i, i64 -8
  %.val.i.i = load float, ptr %i.cr, align 8, !alias.scope !396, !noalias !398, !noundef !4 ; 2 uses
  %i.cs = getelementptr i8, ptr %.sroa.13.0.i, i64 -8
  %.val12.i.i = load float, ptr %i.cs, align 8, !alias.scope !395, !noalias !399, !noundef !4 ; 2 uses
  %brmerge.not.i.i.i = fcmp uno float %.val12.i.i, %.val.i.i
  br i1 %brmerge.not.i.i.i, label %bb.ad, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i.i, !prof !12

bb.ad:                                            ; preds = %.preheader.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23
          to label %.noexc.i unwind label %bb.af, !noalias !397

.noexc.i:                                         ; preds = %bb.ad
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBA_23non_maximum_suppression0E0BC_.exit.i.i: ; preds = %.preheader.i
  %i.ct = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -48 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -48 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -48 ; 2 uses
  %.mux.i.i.i = fcmp olt float %.val12.i.i, %.val.i.i ; 3 uses
  %..i.i = select i1 %.mux.i.i.i, ptr %i.ct, ptr %i.cu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, ptr noundef nonnull align 8 dereferenceable(48) %..i.i, i64 48, i1 false), !alias.scope !397, !noalias !400
  %i.cw = xor i1 %.mux.i.i.i, true
  %i.cx = zext i1 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.ct, i64 %i.cx ; 3 uses
  %i.cz = zext i1 %.mux.i.i.i to i64
  %i.da = getelementptr inbounds nuw [48 x i8], ptr %i.cu, i64 %i.cz ; 3 uses
  %i.db = icmp eq ptr %i.cy, %i.bs
end_hunk_0
begin_hunk_1_@_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1t_INtNtBZ_4hash18BuildHasherDefaultNtNtB27_3raw12TypeIdHasherEE0Es_0INtNtNtBZ_3ops8function6FnOnceTOhEE9call_onceCseiMiKruFR5A_24candle_wasm_example_yolo:bb.a
  %i.h = load i64, ptr %i.g, align 8, !range !14, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #20
  br label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB24_3raw12TypeIdHasherEE0Es_0CseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !13, !invariant.load !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit5.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !14, !invariant.load !4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #20
  br label %_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit5.i.i.i

_RNvXs8_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo.exit5.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.d
  resume { ptr, i32 } %i.i

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB24_3raw12TypeIdHasherEE0Es_0CseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.c, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNtNtCshKUX2qKI1Vd_6tokise3imp12local_worker9LOCAL_SET00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB18_6option6OptionQIB1N_NtNtNtCsdIJosCPXwkf_5tokio4task5local8LocalSetEEEE9call_onceCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCshKUX2qKI1Vd_6tokise3imp12local_worker9LOCAL_SET0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !584, !noalias !585, !noundef !4
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RNCNKNvNtNtCshKUX2qKI1Vd_6tokise3imp12local_worker9LOCAL_SET00CseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCsdIJosCPXwkf_5tokio4task5local8LocalSetuE16get_or_init_slowNvNvNtNtCshKUX2qKI1Vd_6tokise3imp12local_worker9LOCAL_SET27___rust_std_internal_init_fnECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) %0)
  br label %_RNCNKNvNtNtCshKUX2qKI1Vd_6tokise3imp12local_worker9LOCAL_SET00CseiMiKruFR5A_24candle_wasm_example_yolo.exit

_RNCNKNvNtNtCshKUX2qKI1Vd_6tokise3imp12local_worker9LOCAL_SET00CseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCsdIJosCPXwkf_5tokio4task5local8LocalSetuE16get_or_init_slowNvNvNtNtCshKUX2qKI1Vd_6tokise3imp12local_worker9LOCAL_SET27___rust_std_internal_init_fnECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(16)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtBU_3any6TypeIdECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtNtCsjJ6wem5K4Ki_7anymap23raw12TypeIdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsdIJosCPXwkf_5tokio4task5local8LocalSetE4withNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1T_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3f_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4d_B4b_NtB3h_9Component6update0NtB4d_3MsgE0E0INtNtNtNtB10_7runtime4task4join10JoinHandleuEEB4f_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(176)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsdIJosCPXwkf_5tokio4task5local8LocalSetE4withNCINvMs1_NtNtCshKUX2qKI1Vd_6tokise3imp12local_workerNtB1T_11LocalHandle11spawn_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3f_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4d_B4b_NtB3h_9Component8rendered0NtB4d_3MsgE0E0INtNtNtNtB10_7runtime4task4join10JoinHandleuEEB4f_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(192)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4listINtB3_10OwnedTasksINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEE10bind_localINtNtCsf3Ta7LF998c_4core3pin3PinINtNtB18_5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4r_B4p_NtB3v_9Component6update0NtB4r_3MsgE0EEEB4t_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdIJosCPXwkf_5tokio7runtime10task_hooksNtB2_9TaskHooks5spawn(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtNtCsdIJosCPXwkf_5tokio7runtime9scheduler14current_threadINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule8schedule(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4listINtB3_10OwnedTasksINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEE10bind_localINtNtCsf3Ta7LF998c_4core3pin3PinINtNtB18_5boxed3BoxNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB3t_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB4r_B4p_NtB3v_9Component8rendered0NtB4r_3MsgE0EEEB4t_(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4listINtB3_10OwnedTasksINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEE10bind_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2E_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3C_B3A_NtB2G_9Component6update0NtB3C_3MsgE0EB3E_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4listINtB3_10OwnedTasksINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEE10bind_localNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB2E_5ScopeNtNtCseiMiKruFR5A_24candle_wasm_example_yolo3app3AppE11send_futureNCNvXB3C_B3A_NtB2G_9Component8rendered0NtB3C_3MsgE0EB3E_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(184), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsd_NtNtCsdIJosCPXwkf_5tokio7runtime4taskINtB5_4TaskINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCsgCecv3eZDcN_5alloc5sliceINtNtB7_3vec3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEINtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable8BufGuardBN_E13with_capacityBR_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCsgCecv3eZDcN_5alloc5sliceINtNtB7_3vec3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEINtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBR_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB5_5Error3msgReECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCNvB1u_23non_maximum_suppression0E0EB1w_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #12

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtNtB8_3ptr8non_null7NonNullNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core6HeaderENtB6_5Debug3fmtCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRhNtB6_5Debug3fmtCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { cold }
attributes #22 = { inlinehint }
attributes #23 = { noinline noreturn }
attributes #24 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!"branch_weights", i32 2002, i32 2000}
!8 = !{i64 8}
!9 = !{!"branch_weights", i32 1, i32 1999}
!10 = !{!"branch_weights", i32 0, i32 1}
!11 = !{!"branch_weights", !"expected", i32 2146946, i32 2145336702}
!12 = !{!"branch_weights", i32 1, i32 4001}
!13 = !{i64 0, i64 -9223372036854775808}
!14 = !{i64 1, i64 536870913}
!15 = distinct !{!15, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1n_hEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12remove_entryBO_ECseiMiKruFR5A_24candle_wasm_example_yolo"}
!16 = distinct !{!16, !15, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1n_hEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12remove_entryBO_ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 1"}
!17 = distinct !{!17, !15, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1n_hEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12remove_entryBO_ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 2"}
!18 = distinct !{!18, !15, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1n_hEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12remove_entryBO_ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!19 = distinct !{!19, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1p_hEEEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECseiMiKruFR5A_24candle_wasm_example_yolo"}
!20 = distinct !{!20, !19, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1p_hEEEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 1"}
!21 = distinct !{!21, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1p_hEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECseiMiKruFR5A_24candle_wasm_example_yolo"}
!22 = distinct !{!22, !21, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1p_hEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!23 = distinct !{!23, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!24 = distinct !{!24, !23, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!25 = distinct !{!25, !19, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1p_hEEEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!26 = distinct !{!26, !23, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!27 = distinct !{!27, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!28 = distinct !{!28, !27, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!29 = distinct !{!29, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1r_hEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CseiMiKruFR5A_24candle_wasm_example_yolo"}
!30 = distinct !{!30, !29, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1r_hEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!31 = distinct !{!31, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1o_hEEEE6removeCseiMiKruFR5A_24candle_wasm_example_yolo"}
!32 = distinct !{!32, !31, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1o_hEEEE6removeCseiMiKruFR5A_24candle_wasm_example_yolo: argument 1"}
!33 = distinct !{!33, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1o_hEEEE13erase_no_dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!34 = distinct !{!34, !33, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1o_hEEEE13erase_no_dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!35 = distinct !{!35, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase"}
!36 = distinct !{!36, !35, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!37 = distinct !{!37, !31, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1o_hEEEE6removeCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!38 = distinct !{!38, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!39 = distinct !{!39, !38, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!40 = distinct !{!40, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!41 = distinct !{!41, !40, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!42 = !{!16}
!43 = !{!17}
!44 = !{!18}
!45 = !{!18, !16}
!46 = !{!20}
!47 = !{!22}
!48 = !{!24}
!49 = !{!24, !22, !20, !16}
!50 = !{!26, !25, !18, !17}
!51 = !{!28, !24, !26, !22, !25, !20, !18}
!52 = !{!30, !24, !26, !22, !25, !20, !18}
!53 = !{!32}
!54 = !{!34}
!55 = !{!36}
!56 = !{!39, !36, !34, !37, !32, !25, !20, !18}
!57 = !{!41, !36, !34, !37, !32, !25, !20, !18}
!58 = !{!36, !34, !32, !20, !16}
!59 = !{!37, !25, !18, !17}
!60 = !{!36, !34, !37, !32, !25, !20, !18}
!61 = distinct !{!61, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EINtNtBS_4hash18BuildHasherDefaultNtNtB20_3raw12TypeIdHasherEE12remove_entryBO_ECseiMiKruFR5A_24candle_wasm_example_yolo"}
!62 = distinct !{!62, !61, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EINtNtBS_4hash18BuildHasherDefaultNtNtB20_3raw12TypeIdHasherEE12remove_entryBO_ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 1"}
!63 = distinct !{!63, !61, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EINtNtBS_4hash18BuildHasherDefaultNtNtB20_3raw12TypeIdHasherEE12remove_entryBO_ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 2"}
!64 = distinct !{!64, !61, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EINtNtBS_4hash18BuildHasherDefaultNtNtB20_3raw12TypeIdHasherEE12remove_entryBO_ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!65 = distinct !{!65, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECseiMiKruFR5A_24candle_wasm_example_yolo"}
!66 = distinct !{!66, !65, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 1"}
!67 = distinct !{!67, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECseiMiKruFR5A_24candle_wasm_example_yolo"}
!68 = distinct !{!68, !67, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!69 = distinct !{!69, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!70 = distinct !{!70, !69, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!71 = distinct !{!71, !65, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!72 = distinct !{!72, !69, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!73 = distinct !{!73, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!74 = distinct !{!74, !73, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!75 = distinct !{!75, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CseiMiKruFR5A_24candle_wasm_example_yolo"}
!76 = distinct !{!76, !75, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!77 = distinct !{!77, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE6removeCseiMiKruFR5A_24candle_wasm_example_yolo"}
!78 = distinct !{!78, !77, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE6removeCseiMiKruFR5A_24candle_wasm_example_yolo: argument 1"}
!79 = distinct !{!79, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE13erase_no_dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!80 = distinct !{!80, !79, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE13erase_no_dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!81 = distinct !{!81, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase"}
!82 = distinct !{!82, !81, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!83 = distinct !{!83, !77, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE6removeCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!84 = distinct !{!84, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!85 = distinct !{!85, !84, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!86 = distinct !{!86, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!87 = distinct !{!87, !86, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!88 = !{!62}
!89 = !{!63}
!90 = !{!64}
!91 = !{!64, !62}
!92 = !{!66}
!93 = !{!68}
!94 = !{!70}
!95 = !{!70, !68, !66, !62}
!96 = !{!72, !71, !64, !63}
!97 = !{!74, !70, !72, !68, !71, !66, !64}
!98 = !{!76, !70, !72, !68, !71, !66, !64}
!99 = !{!78}
!100 = !{!80}
!101 = !{!82}
!102 = !{!85, !82, !80, !83, !78, !71, !66, !64}
!103 = !{!87, !82, !80, !83, !78, !71, !66, !64}
!104 = !{!82, !80, !78, !66, !62}
!105 = !{!83, !71, !64, !63}
!106 = !{!82, !80, !83, !78, !71, !66, !64}
!107 = distinct !{!107, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECseiMiKruFR5A_24candle_wasm_example_yolo"}
!108 = distinct !{!108, !107, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!109 = distinct !{!109, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!110 = distinct !{!110, !109, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!111 = distinct !{!111, !109, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!112 = distinct !{!112, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!113 = distinct !{!113, !112, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!114 = distinct !{!114, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CseiMiKruFR5A_24candle_wasm_example_yolo"}
!115 = distinct !{!115, !114, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!116 = !{!108}
!117 = !{!110}
!118 = !{!110, !108}
!119 = !{!111}
!120 = !{!113, !110, !111, !108}
!121 = !{!115, !110, !111, !108}
!122 = distinct !{!122, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECseiMiKruFR5A_24candle_wasm_example_yolo"}
!123 = distinct !{!123, !122, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!124 = distinct !{!124, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!125 = distinct !{!125, !124, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!126 = distinct !{!126, !124, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!127 = distinct !{!127, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!128 = distinct !{!128, !127, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!129 = distinct !{!129, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CseiMiKruFR5A_24candle_wasm_example_yolo"}
!130 = distinct !{!130, !129, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!131 = !{!123}
!132 = !{!125}
!133 = !{!125, !123}
!134 = !{!126}
!135 = !{!128, !125, !126, !123}
!136 = !{!130, !125, !126, !123}
!137 = distinct !{!137, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIduNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12remove_entryBO_ECseiMiKruFR5A_24candle_wasm_example_yolo"}
!138 = distinct !{!138, !137, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIduNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12remove_entryBO_ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 1"}
!139 = distinct !{!139, !137, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIduNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12remove_entryBO_ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 2"}
!140 = distinct !{!140, !137, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIduNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12remove_entryBO_ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!141 = distinct !{!141, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECseiMiKruFR5A_24candle_wasm_example_yolo"}
!142 = distinct !{!142, !141, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 1"}
!143 = distinct !{!143, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECseiMiKruFR5A_24candle_wasm_example_yolo"}
!144 = distinct !{!144, !143, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!145 = distinct !{!145, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!146 = distinct !{!146, !145, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!147 = distinct !{!147, !141, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!148 = distinct !{!148, !145, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!149 = distinct !{!149, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!150 = distinct !{!150, !149, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!151 = distinct !{!151, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CseiMiKruFR5A_24candle_wasm_example_yolo"}
!152 = distinct !{!152, !151, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!153 = distinct !{!153, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE6removeCseiMiKruFR5A_24candle_wasm_example_yolo"}
!154 = distinct !{!154, !153, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE6removeCseiMiKruFR5A_24candle_wasm_example_yolo: argument 1"}
!155 = distinct !{!155, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE13erase_no_dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!156 = distinct !{!156, !155, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE13erase_no_dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!157 = distinct !{!157, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase"}
!158 = distinct !{!158, !157, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!159 = distinct !{!159, !153, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE6removeCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!160 = distinct !{!160, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!161 = distinct !{!161, !160, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!162 = distinct !{!162, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!163 = distinct !{!163, !162, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!164 = !{!138}
!165 = !{!139}
!166 = !{!140}
!167 = !{!140, !138}
!168 = !{!142}
!169 = !{!144}
!170 = !{!146}
end_hunk_1
