Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.03?download=true
inline.NumInlined: 1816
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_RINvNtNtCsj6eKBz9Db1c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryENCNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB26_9TagReaderINtB28_11ValueReaderINtNtNtB6_2io6cursor6CursorRShEEE17find_tag_uint_vechEs_00EhINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2a_5error9TiffErrorENCINvXso_B4p_IB4n_INtB1b_3VechEB59_EINtNtNtB4_6traits7collect12FromIteratorIB4n_hB59_EE9from_iterBQ_E0B5Q_ECsa5QsYiPB8Gl_5image:bb.a
bb.i:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

.body.thread:                                     ; preds = %bb.e, %bb.f, %bb.j, %.body
  %.pn10 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.j ], [ %i.h, %bb.f ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn10

bb.j:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #37
          to label %.body.thread unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsj6eKBz9Db1c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryENCNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB26_9TagReaderINtB28_11ValueReaderINtNtNtB6_2io6cursor6CursorRShEEE17find_tag_uint_vectEs_00EtINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2a_5error9TiffErrorENCINvXso_B4p_IB4n_INtB1b_3VectEB59_EINtNtNtB4_6traits7collect12FromIteratorIB4n_tB59_EE9from_iterBQ_E0B5Q_ECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !1187, !noalias !1188
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx6, align 8, !alias.scope !1187, !noalias !1188
  invoke void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec16in_place_collectINtB6_3VectEINtNtB6_14spec_from_iter12SpecFromItertINtNtNtCsj6eKBz9Db1c_4core4iter8adapters12GenericShuntINtNtB1G_3map3MapINtNtB6_9into_iter8IntoIteryENCNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB3p_9TagReaderINtB3r_11ValueReaderINtNtNtB1K_2io6cursor6CursorRShEEE17find_tag_uint_vectEs_00EINtNtB1K_6result6ResultNtNtB1K_7convert10InfallibleNtNtB3t_5error9TiffErrorEEE9from_iterCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !26, !noundef !7
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %.body.thread, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1186
  %i.f = load i64, ptr %i.c, align 8, !range !26, !noundef !7
  %.not.not = icmp eq i64 %i.f, -1
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -1, ptr %0, align 8, !alias.scope !1189, !noalias !1190
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.h, %bb.g, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.b, align 8, !alias.scope !1191 ; 2 uses
  %i.i = icmp eq i64 %.val2.i, 0
  br i1 %i.i, label %.body.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i = load ptr, ptr %i.j, align 8, !alias.scope !1192, !nonnull !7, !noundef !7
  %i.k = shl nuw i64 %.val2.i, 1
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 2) #33, !noalias !1193
  br label %.body.thread

bb.g:                                             ; preds = %bb.d
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !1191 ; 2 uses
  %i.l = icmp eq i64 %.val.i, 0
  br i1 %i.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i = load ptr, ptr %i.m, align 8, !alias.scope !1192, !nonnull !7, !noundef !7
  %i.n = shl nuw i64 %.val.i, 1
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 2) #33, !noalias !1194
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit

bb.i:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

.body.thread:                                     ; preds = %bb.e, %bb.f, %bb.j, %.body
  %.pn10 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.j ], [ %i.h, %bb.f ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn10

bb.j:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs53gkmrwjETj_4tiff5error9TiffErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #37
          to label %.body.thread unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsj6eKBz9Db1c_4core4iter8adapters11try_processNtNtCsa5QsYiPB8Gl_5image9animation6FramesNtBS_5FrameINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtBU_5error10ImageErrorENCINvXso_B1J_IB1H_INtNtCs4wP2HXfJTCR_5alloc3vec3VecB1v_EB2t_EINtNtNtB4_6traits7collect12FromIteratorIB1H_B1v_B2t_EE9from_iterBQ_E0B3b_EBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1215
  store ptr %1, ptr %i.a, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx6, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx7, align 8, !alias.scope !1216, !noalias !1217
  invoke void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsa5QsYiPB8Gl_5image9animation5FrameEINtB2_12SpecFromIterBU_INtNtNtCsj6eKBz9Db1c_4core4iter8adapters12GenericShuntNtBW_6FramesINtNtB23_6result6ResultNtNtB23_7convert10InfallibleNtNtBY_5error10ImageErrorEEE9from_iterBY_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i8, ptr %i.c, align 8, !range !25, !noundef !7
  %.not = icmp eq i8 %i.e, -1
  br i1 %.not, label %.body.thread, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1215
  %i.f = load i8, ptr %i.c, align 8, !range !25, !noundef !7
  %.not.not = icmp eq i8 %i.f, -1
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i8 -1, ptr %0, align 8, !alias.scope !1218, !noalias !1219
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsa5QsYiPB8Gl_5image9animation5FrameEEB1c_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsa5QsYiPB8Gl_5image9animation5FrameEEB1c_.exit: ; preds = %bb.h, %bb.g, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsa5QsYiPB8Gl_5image9animation5FrameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.b, align 8, !alias.scope !1220 ; 2 uses
  %i.i = icmp eq i64 %.val2.i, 0
  br i1 %i.i, label %.body.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i = load ptr, ptr %i.j, align 8, !alias.scope !1221, !nonnull !7, !noundef !7
  %i.k = mul nuw i64 %.val2.i, 56
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !1222
  br label %.body.thread

bb.g:                                             ; preds = %bb.d
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !1220 ; 2 uses
  %i.l = icmp eq i64 %.val.i, 0
  br i1 %i.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsa5QsYiPB8Gl_5image9animation5FrameEEB1c_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i = load ptr, ptr %i.m, align 8, !alias.scope !1221, !nonnull !7, !noundef !7
  %i.n = mul nuw i64 %.val.i, 56
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !1223
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsa5QsYiPB8Gl_5image9animation5FrameEEB1c_.exit

bb.i:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

.body.thread:                                     ; preds = %bb.e, %bb.f, %bb.j, %.body
  %.pn11 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.j ], [ %i.h, %bb.f ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn11

bb.j:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB1s_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c) #37
          to label %.body.thread unwind label %bb.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable7ipnsortyNvYyNtNtB8_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy7reverseCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load i64, ptr %i.b, align 8, !alias.scope !27, !noalias !28, !noundef !7 ; 3 uses
  %.val6 = load i64, ptr %0, align 8, !alias.scope !28, !noalias !27, !noundef !7
  %i.c = icmp ult i64 %.val5, %.val6              ; 2 uses
  %.not21 = icmp eq i64 %1, 2
  br i1 %.not21, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  br i1 %i.c, label %.lr.ph17, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.val4 = phi i64 [ %.val3, %bb.c ], [ %.val5, %.preheader ]
  %.sroa.01.0.i13 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i13
  %.val3 = load i64, ptr %i.d, align 8, !alias.scope !27, !noalias !28, !noundef !7 ; 2 uses
  %i.e = icmp ult i64 %.val3, %.val4
  br i1 %i.e, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i64 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i16
  %.val = load i64, ptr %i.g, align 8, !alias.scope !27, !noalias !28, !noundef !7 ; 2 uses
  %i.h = icmp ult i64 %.val, %.val2
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.i = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.i, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit.thread, label %.lr.ph17

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit: ; preds = %.lr.ph, %.lr.ph17
  %.sroa.0.0.i = phi i64 [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit.thread, label %bb.e

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.c, %bb.d, %bb.b, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit
  br i1 %i.c, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy12split_at_mutCsa5QsYiPB8Gl_5image.exit11.preheader.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy7reverseCsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.p, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy7reverseCsa5QsYiPB8Gl_5image.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSy7reverseCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy12split_at_mutCsa5QsYiPB8Gl_5image.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit.thread, %bb.e
  ret void

_RNvMNtCsj6eKBz9Db1c_4core5sliceSy12split_at_mutCsa5QsYiPB8Gl_5image.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit.thread
  %i.q = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy12split_at_mutCsa5QsYiPB8Gl_5image.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy12split_at_mutCsa5QsYiPB8Gl_5image.exit11.preheader.i.i
  %n.vec = and i64 %i.q, 576460752303423484       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !alias.scope !1233, !noalias !1232
  %wide.load39 = load <2 x i64>, ptr %i.v, align 8, !alias.scope !1233, !noalias !1232
  %i.w = getelementptr i8, ptr %i.u, i64 -8       ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -24      ; 2 uses
  %wide.load40 = load <2 x i64>, ptr %i.w, align 8, !alias.scope !1234, !noalias !1231
  %wide.load41 = load <2 x i64>, ptr %i.x, align 8, !alias.scope !1234, !noalias !1231
  %reverse = shufflevector <2 x i64> %wide.load40, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse42 = shufflevector <2 x i64> %wide.load41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.t, align 8, !alias.scope !1233, !noalias !1232
  store <2 x i64> %reverse42, ptr %i.v, align 8, !alias.scope !1233, !noalias !1232
  %reverse43 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse44 = shufflevector <2 x i64> %wide.load39, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse43, ptr %i.w, align 8, !alias.scope !1234, !noalias !1231
  store <2 x i64> %reverse44, ptr %i.x, align 8, !alias.scope !1234, !noalias !1231
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1229

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy7reverseCsa5QsYiPB8Gl_5image.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy12split_at_mutCsa5QsYiPB8Gl_5image.exit11.i.i.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSy12split_at_mutCsa5QsYiPB8Gl_5image.exit11.i.i.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy12split_at_mutCsa5QsYiPB8Gl_5image.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy12split_at_mutCsa5QsYiPB8Gl_5image.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy12split_at_mutCsa5QsYiPB8Gl_5image.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSy12split_at_mutCsa5QsYiPB8Gl_5image.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy12split_at_mutCsa5QsYiPB8Gl_5image.exit11.i.i.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy12split_at_mutCsa5QsYiPB8Gl_5image.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ae, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy12split_at_mutCsa5QsYiPB8Gl_5image.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy12split_at_mutCsa5QsYiPB8Gl_5image.exit11.i.i.preheader ] ; 3 uses
  %i.z = xor i64 %.sroa.0.016.i.i, -1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.r, i64 %i.z ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !1233, !noalias !1232, !noundef !7
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !1234, !noalias !1231
  store i64 %i.ad, ptr %i.aa, align 8, !alias.scope !1233, !noalias !1232
  store i64 %i.ac, ptr %i.ab, align 8, !alias.scope !1234, !noalias !1231
  %i.ae = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy7reverseCsa5QsYiPB8Gl_5image.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSy12split_at_mutCsa5QsYiPB8Gl_5image.exit11.i.i, !llvm.loop !1230
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCNvMB17_INtB17_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB27_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(56) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph96 = phi ptr [ %i.cp, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph95 = phi i64 [ %i.ca, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph94 = phi i32 [ %i.h, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph93 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph96, i64 48
  %i.d = ptrtoint ptr %.sroa.0.0.ph96 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph93, null
  %i.e = getelementptr i8, ptr %.sroa.028.0.ph93, i64 48
  %i.f = icmp eq i32 %.sroa.025.0.ph94, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph219

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment12split_at_mutCsa5QsYiPB8Gl_5image.exit
  %i.g = icmp eq i32 %i.h, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph219

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment12split_at_mutCsa5QsYiPB8Gl_5image.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa87 = phi ptr [ %i.cb, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph96, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment12split_at_mutCsa5QsYiPB8Gl_5image.exit ], [ %i.cp, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment12split_at_mutCsa5QsYiPB8Gl_5image.exit ], [ %i.ca, %.outer ]
  call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_7sort_byNCNvMB1u_INtB1u_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB2u_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa87, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.d

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.089.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ]
  call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_7sort_byNCNvMBY_INtBY_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB1Y_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph96, i64 noundef %.sroa.16.089.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.d

.lr.ph219:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.088218 = phi i32 [ %i.h, %bb.b ], [ %.sroa.025.0.ph94, %.lr.ph ]
  %.sroa.16.089217 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ] ; 21 uses
  %i.h = add i32 %.sroa.025.088218, -1            ; 4 uses
  %i.i = lshr i64 %.sroa.16.089217, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.i, 224
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.i, 392
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx2.i ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.16.089217, 64
  br i1 %i.l, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3NtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_7sort_byNCNvMB11_INtB11_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB21_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph219
  %i.m = call noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB14_7sort_byNCNvMB16_INtB16_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB26_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph96, ptr noundef nonnull readonly %i.j, ptr noundef nonnull readonly %i.k, i64 noundef %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.e

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3NtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_7sort_byNCNvMB11_INtB11_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB21_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph219
  %.val6.i = load i32, ptr %i.c, align 8, !alias.scope !1255, !noalias !1256, !noundef !7 ; 2 uses
  %i.n = getelementptr i8, ptr %i.j, i64 48
  %.val7.i = load i32, ptr %i.n, align 8, !alias.scope !1255, !noalias !1256, !noundef !7 ; 2 uses
  %i.o = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %i.p = getelementptr i8, ptr %i.k, i64 48
  %.val5.i = load i32, ptr %i.p, align 8, !alias.scope !1255, !noalias !1256, !noundef !7 ; 2 uses
  %i.q = icmp ult i32 %.val6.i, %.val5.i
  %i.r = xor i1 %i.o, %i.q
  %i.s = icmp ult i32 %.val7.i, %.val5.i
  %i.t = xor i1 %i.o, %i.s
  %..i.i = select i1 %i.t, ptr %i.k, ptr %i.j
  %.sroa.0.0.i.i = select i1 %i.r, ptr %.sroa.0.0.ph96, ptr %..i.i
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.e:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3NtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_7sort_byNCNvMB11_INtB11_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB21_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3NtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_7sort_byNCNvMB11_INtB11_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB21_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i ], [ %i.m, %bb.c ]
  %i.u = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.v = sub nuw i64 %i.u, %i.d                   ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.v, 56          ; 3 uses
  %i.w = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.089217
  call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %i.v ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 56, i1 false)
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.028.0.val = load i32, ptr %i.e, align 8, !noundef !7
  %i.y = getelementptr i8, ptr %i.x, i64 48
  %.val = load i32, ptr %i.y, align 8, !noundef !7
  %i.z = icmp ult i32 %.sroa.028.0.val, %.val
  br i1 %i.z, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  %.not63 = icmp samesign ult i64 %3, %.sroa.16.089217
  br i1 %.not63, label %bb.i, label %bb.h, !prof !31

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr [56 x i8], ptr %2, i64 %.sroa.16.089217 ; 4 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 48
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.k, %bb.h
  %.sroa.19.0.i = phi ptr [ %i.aa, %bb.h ], [ %i.an, %bb.k ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.11.1.lcssa.i, %bb.k ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph96, %bb.h ], [ %i.ap, %bb.k ] ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.089217, %bb.k ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.0.0.i37 ; 2 uses
  %i.ad = icmp ult ptr %.sroa.5.0.i, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.j ], [ %i.ah, %.lr.ph.i ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.j ], [ %i.ak, %.lr.ph.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.j ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %i.ae = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.089217
  br i1 %i.ae, label %bb.l, label %bb.k

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.5.111.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.sroa.5.0.i, %bb.j ] ; 3 uses
  %.sroa.11.110.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %.sroa.11.0.i, %bb.j ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.sroa.19.0.i, %bb.j ]
  %i.af = getelementptr i8, ptr %.sroa.5.111.i, i64 48
  %.val.i = load i32, ptr %i.af, align 8, !alias.scope !1258, !noalias !1257, !noundef !7
  %.val12.i = load i32, ptr %i.ab, align 8, !alias.scope !1258, !noalias !1257, !noundef !7
  %i.ag = icmp ult i32 %.val.i, %.val12.i         ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -56 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.ag, ptr %2, ptr %i.ah
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
end_hunk_0
