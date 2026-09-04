Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RINvNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de18box_opcode_handlerNtNtNtB4_8handlers6legacy26OpCodeHandler_Gv_Ev_Ib_REXEB6_:bb.a
_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i48 %.8.val, ptr %i.a, align 2
  %i.c = insertvalue { ptr, ptr } poison, ptr %.0.val, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr %i.a, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de18box_opcode_handlerNtNtNtB4_8handlers6legacy26OpCodeHandler_Xchg_Reg_rAXEB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !27, !noundef !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.f = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #41 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 8) #46
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i8 %i.c, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.e, ptr %i.h, align 4
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de18box_opcode_handlerNtNtNtB4_8handlers6legacy27OpCodeHandler_PushOpSizeRegEB6_(ptr %.0.val, i64 %.8.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.a = tail call noundef align 2 dereferenceable_or_null(8) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 2) #41 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 2, i64 noundef 8) #46
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 %.8.val, ptr %i.a, align 2
  %i.c = insertvalue { ptr, ptr } poison, ptr %.0.val, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr %i.a, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de18box_opcode_handlerNtNtNtB4_8handlers6legacy27OpCodeHandler_PushSimpleRegEB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !2467
  %i.b = tail call noundef align 4 dereferenceable_or_null(12) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 12, i64 noundef range(i64 1, -9223372036854775807) 4) #41, !noalias !2467 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 12) #46, !noalias !2467
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.b, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de18box_opcode_handlerNtNtNtB4_8handlers6legacy28OpCodeHandler_PrefixEsCsSsDsEB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !27, !noundef !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.e = load i8, ptr %i.d, align 1, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.f = tail call noundef dereferenceable_or_null(2) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #41 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 2) #46
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i8 %i.c, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.e, ptr %i.h, align 1
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de18box_opcode_handlerNtNtNtB4_8handlers6legacy29OpCodeHandler_MandatoryPrefixEB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !2470
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !2470 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46, !noalias !2470
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.b, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de18box_opcode_handlerNtNtNtB4_8handlers6legacy30OpCodeHandler_MandatoryPrefix3EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(208) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !2473
  %i.b = tail call noundef align 8 dereferenceable_or_null(200) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 200, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !2473 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #46, !noalias !2473
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.b, ptr noundef nonnull align 8 dereferenceable(200) %i.d, i64 200, i1 false)
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.b, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de18box_opcode_handlerNtNtNtB4_8handlers6legacy30OpCodeHandler_MandatoryPrefix4EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !2476
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !2476 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46, !noalias !2476
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.b, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de18box_opcode_handlerNtNtNtB4_8handlers6legacy30OpCodeHandler_Simple5_ModRM_asEB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !2479
  %i.b = tail call noundef align 4 dereferenceable_or_null(20) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 4) #41, !noalias !2479 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 20) #46, !noalias !2479
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %i.d, i64 20, i1 false)
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.b, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: noinline nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB6_SBT_20sort_unstable_by_keyyNCNvMs1_BY_NtBY_12BlockEncoder3news_0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 32025597350190194) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjE7reverseBB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 512
  %.val5 = load i64, ptr %i.b, align 8, !noundef !21 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 224
  %.val6 = load i64, ptr %i.c, align 8, !noundef !21
  %i.d = icmp ult i64 %.val5, %.val6              ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.d, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB6_SB12_20sort_unstable_by_keyyNCNvMs1_B17_NtB17_12BlockEncoder3news_0E0EB19_.exit.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB6_SB12_20sort_unstable_by_keyyNCNvMs1_B17_NtB17_12BlockEncoder3news_0E0EB19_.exit.thread, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i64 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.h, %bb.c ], [ 2, %.preheader11 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %.sroa.01.0.i13
  %i.f = getelementptr i8, ptr %i.e, i64 224
  %.val3 = load i64, ptr %i.f, align 8, !noundef !21 ; 2 uses
  %i.g = icmp ult i64 %.val3, %.val4
  br i1 %i.g, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB6_SB12_20sort_unstable_by_keyyNCNvMs1_B17_NtB17_12BlockEncoder3news_0E0EB19_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB6_SB12_20sort_unstable_by_keyyNCNvMs1_B17_NtB17_12BlockEncoder3news_0E0EB19_.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i64 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.l, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %.sroa.01.1.i16
  %i.j = getelementptr i8, ptr %i.i, i64 224
  %.val = load i64, ptr %i.j, align 8, !noundef !21 ; 2 uses
  %i.k = icmp ult i64 %.val, %.val2
  br i1 %i.k, label %bb.d, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB6_SB12_20sort_unstable_by_keyyNCNvMs1_B17_NtB17_12BlockEncoder3news_0E0EB19_.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.l = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.l, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB6_SB12_20sort_unstable_by_keyyNCNvMs1_B17_NtB17_12BlockEncoder3news_0E0EB19_.exit.thread, label %.lr.ph17

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB6_SB12_20sort_unstable_by_keyyNCNvMs1_B17_NtB17_12BlockEncoder3news_0E0EB19_.exit: ; preds = %.lr.ph, %.lr.ph17
  %.sroa.0.0.i = phi i64 [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.m = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.n, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB6_SB12_20sort_unstable_by_keyyNCNvMs1_B17_NtB17_12BlockEncoder3news_0E0EB19_.exit.thread, label %bb.e

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB6_SB12_20sort_unstable_by_keyyNCNvMs1_B17_NtB17_12BlockEncoder3news_0E0EB19_.exit.thread: ; preds = %bb.c, %bb.d, %.preheader, %.preheader11, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB6_SB12_20sort_unstable_by_keyyNCNvMs1_B17_NtB17_12BlockEncoder3news_0E0EB19_.exit
  br i1 %i.d, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjE12split_at_mutBB_.exit11.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjE7reverseBB_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB6_SB12_20sort_unstable_by_keyyNCNvMs1_B17_NtB17_12BlockEncoder3news_0E0EB19_.exit
  %i.o = or i64 %1, 1
  %i.p = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 1
  %i.s = xor i32 %i.r, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB8_SB17_20sort_unstable_by_keyyNCNvMs1_B1c_NtB1c_12BlockEncoder3news_0E0EB1e_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(288) null, i32 noundef %i.s, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjE7reverseBB_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjE7reverseBB_.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjE12split_at_mutBB_.exit11.i.i, %bb.a, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB6_SB12_20sort_unstable_by_keyyNCNvMs1_B17_NtB17_12BlockEncoder3news_0E0EB19_.exit.thread, %bb.e
  ret void

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjE12split_at_mutBB_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB6_SB12_20sort_unstable_by_keyyNCNvMs1_B17_NtB17_12BlockEncoder3news_0E0EB19_.exit.thread
  %i.t = lshr i64 %1, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  %i.u = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %1
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjE12split_at_mutBB_.exit11.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjE12split_at_mutBB_.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjE12split_at_mutBB_.exit11.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjE12split_at_mutBB_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.cq, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjE12split_at_mutBB_.exit11.i.i ], [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjE12split_at_mutBB_.exit11.preheader.i.i ] ; 3 uses
  %i.v = xor i64 %.sroa.0.016.i.i, -1
  %i.w = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 19 uses
  %i.x = getelementptr [288 x i8], ptr %i.u, i64 %i.v ; 19 uses
  %i.y = load <2 x i64>, ptr %i.w, align 8, !alias.scope !2560, !noalias !2559
  %i.z = load <2 x i64>, ptr %i.x, align 8, !alias.scope !2561, !noalias !2558
  store <2 x i64> %i.z, ptr %i.w, align 8, !alias.scope !2560, !noalias !2559
  store <2 x i64> %i.y, ptr %i.x, align 8, !alias.scope !2561, !noalias !2558
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ac = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !2562, !noalias !2559
  %i.ad = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !2563, !noalias !2558
  store <2 x i64> %i.ad, ptr %i.aa, align 8, !alias.scope !2562, !noalias !2559
  store <2 x i64> %i.ac, ptr %i.ab, align 8, !alias.scope !2563, !noalias !2558
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !2564, !noalias !2559
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !alias.scope !2565, !noalias !2558
  store <2 x i64> %i.ah, ptr %i.ae, align 8, !alias.scope !2564, !noalias !2559
  store <2 x i64> %i.ag, ptr %i.af, align 8, !alias.scope !2565, !noalias !2558
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !2566, !noalias !2559
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !2567, !noalias !2558
  store <2 x i64> %i.al, ptr %i.ai, align 8, !alias.scope !2566, !noalias !2559
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !alias.scope !2567, !noalias !2558
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !2568, !noalias !2559
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !alias.scope !2569, !noalias !2558
  store <2 x i64> %i.ap, ptr %i.am, align 8, !alias.scope !2568, !noalias !2559
  store <2 x i64> %i.ao, ptr %i.an, align 8, !alias.scope !2569, !noalias !2558
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 2 uses
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !2570, !noalias !2559
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !2571, !noalias !2558
  store <2 x i64> %i.at, ptr %i.aq, align 8, !alias.scope !2570, !noalias !2559
  store <2 x i64> %i.as, ptr %i.ar, align 8, !alias.scope !2571, !noalias !2558
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 96 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 96 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !2572, !noalias !2559
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !alias.scope !2573, !noalias !2558
  store <2 x i64> %i.ax, ptr %i.au, align 8, !alias.scope !2572, !noalias !2559
  store <2 x i64> %i.aw, ptr %i.av, align 8, !alias.scope !2573, !noalias !2558
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 112 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 112 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !2574, !noalias !2559
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !2575, !noalias !2558
  store <2 x i64> %i.bb, ptr %i.ay, align 8, !alias.scope !2574, !noalias !2559
  store <2 x i64> %i.ba, ptr %i.az, align 8, !alias.scope !2575, !noalias !2558
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 128 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 128 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !2576, !noalias !2559
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !2577, !noalias !2558
  store <2 x i64> %i.bf, ptr %i.bc, align 8, !alias.scope !2576, !noalias !2559
  store <2 x i64> %i.be, ptr %i.bd, align 8, !alias.scope !2577, !noalias !2558
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 144 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 144 ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !2578, !noalias !2559
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !alias.scope !2579, !noalias !2558
  store <2 x i64> %i.bj, ptr %i.bg, align 8, !alias.scope !2578, !noalias !2559
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !alias.scope !2579, !noalias !2558
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 160 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 160 ; 2 uses
  %i.bm = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !2580, !noalias !2559
  %i.bn = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !2581, !noalias !2558
  store <2 x i64> %i.bn, ptr %i.bk, align 8, !alias.scope !2580, !noalias !2559
  store <2 x i64> %i.bm, ptr %i.bl, align 8, !alias.scope !2581, !noalias !2558
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 176 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 176 ; 2 uses
  %i.bq = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !2582, !noalias !2559
  %i.br = load <2 x i64>, ptr %i.bp, align 8, !alias.scope !2583, !noalias !2558
  store <2 x i64> %i.br, ptr %i.bo, align 8, !alias.scope !2582, !noalias !2559
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !alias.scope !2583, !noalias !2558
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 192 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 192 ; 2 uses
  %i.bu = load <2 x i64>, ptr %i.bs, align 8, !alias.scope !2584, !noalias !2559
  %i.bv = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !2585, !noalias !2558
  store <2 x i64> %i.bv, ptr %i.bs, align 8, !alias.scope !2584, !noalias !2559
  store <2 x i64> %i.bu, ptr %i.bt, align 8, !alias.scope !2585, !noalias !2558
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 208 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 208 ; 2 uses
  %i.by = load <2 x i64>, ptr %i.bw, align 8, !alias.scope !2586, !noalias !2559
  %i.bz = load <2 x i64>, ptr %i.bx, align 8, !alias.scope !2587, !noalias !2558
  store <2 x i64> %i.bz, ptr %i.bw, align 8, !alias.scope !2586, !noalias !2559
  store <2 x i64> %i.by, ptr %i.bx, align 8, !alias.scope !2587, !noalias !2558
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 224 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 224 ; 2 uses
  %i.cc = load <2 x i64>, ptr %i.ca, align 8, !alias.scope !2588, !noalias !2559
  %i.cd = load <2 x i64>, ptr %i.cb, align 8, !alias.scope !2589, !noalias !2558
  store <2 x i64> %i.cd, ptr %i.ca, align 8, !alias.scope !2588, !noalias !2559
  store <2 x i64> %i.cc, ptr %i.cb, align 8, !alias.scope !2589, !noalias !2558
  %i.ce = getelementptr inbounds nuw i8, ptr %i.w, i64 240 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 240 ; 2 uses
  %i.cg = load <2 x i64>, ptr %i.ce, align 8, !alias.scope !2590, !noalias !2559
  %i.ch = load <2 x i64>, ptr %i.cf, align 8, !alias.scope !2591, !noalias !2558
  store <2 x i64> %i.ch, ptr %i.ce, align 8, !alias.scope !2590, !noalias !2559
  store <2 x i64> %i.cg, ptr %i.cf, align 8, !alias.scope !2591, !noalias !2558
  %i.ci = getelementptr inbounds nuw i8, ptr %i.w, i64 256 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 256 ; 2 uses
  %i.ck = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !2592, !noalias !2559
  %i.cl = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !2593, !noalias !2558
  store <2 x i64> %i.cl, ptr %i.ci, align 8, !alias.scope !2592, !noalias !2559
  store <2 x i64> %i.ck, ptr %i.cj, align 8, !alias.scope !2593, !noalias !2558
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 272 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.x, i64 272 ; 2 uses
  %i.co = load <2 x i64>, ptr %i.cm, align 8, !alias.scope !2594, !noalias !2559
  %i.cp = load <2 x i64>, ptr %i.cn, align 8, !alias.scope !2595, !noalias !2558
  store <2 x i64> %i.cp, ptr %i.cm, align 8, !alias.scope !2594, !noalias !2559
  store <2 x i64> %i.co, ptr %i.cn, align 8, !alias.scope !2595, !noalias !2558
  %i.cq = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cq, %i.t
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjE7reverseBB_.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjE12split_at_mutBB_.exit11.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortTyjENCINvMB6_SBT_20sort_unstable_by_keyINtNtB8_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB20_12BlockEncoder3news0_0E0EB22_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCsf8MNnN4IDbl_8iced_x86.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.b, align 8, !noundef !21 ; 3 uses
  %.val6 = load i64, ptr %0, align 8, !noundef !21
  %i.c = icmp ult i64 %.val6, %.val5              ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2a_12BlockEncoder3news0_0E0EB2c_.exit.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2a_12BlockEncoder3news0_0E0EB2c_.exit.thread, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i64 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader11 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i13
  %.val3 = load i64, ptr %i.d, align 8, !noundef !21 ; 2 uses
  %i.e = icmp ult i64 %.val4, %.val3
  br i1 %i.e, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2a_12BlockEncoder3news0_0E0EB2c_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2a_12BlockEncoder3news0_0E0EB2c_.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i64 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i16
  %.val = load i64, ptr %i.g, align 8, !noundef !21 ; 2 uses
  %i.h = icmp ult i64 %.val2, %.val
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2a_12BlockEncoder3news0_0E0EB2c_.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.i = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.i, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2a_12BlockEncoder3news0_0E0EB2c_.exit.thread, label %.lr.ph17

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2a_12BlockEncoder3news0_0E0EB2c_.exit: ; preds = %.lr.ph, %.lr.ph17
  %.sroa.0.0.i = phi i64 [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2a_12BlockEncoder3news0_0E0EB2c_.exit.thread, label %bb.e

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2a_12BlockEncoder3news0_0E0EB2c_.exit.thread: ; preds = %bb.c, %bb.d, %.preheader, %.preheader11, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2a_12BlockEncoder3news0_0E0EB2c_.exit
  br i1 %i.c, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCsf8MNnN4IDbl_8iced_x86.exit

bb.e:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2a_12BlockEncoder3news0_0E0EB2c_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortTyjENCINvMB8_SB17_20sort_unstable_by_keyINtNtBa_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2f_12BlockEncoder3news0_0E0EB2h_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.p, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCsf8MNnN4IDbl_8iced_x86.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCsf8MNnN4IDbl_8iced_x86.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.i.i
  %i.q = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCsf8MNnN4IDbl_8iced_x86.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.i.i.epil.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCsf8MNnN4IDbl_8iced_x86.exit.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.preheader.i.i ], [ %i.ah, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCsf8MNnN4IDbl_8iced_x86.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod43 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.r = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.t = getelementptr [16 x i8], ptr %i.w, i64 %i.r ; 2 uses
  %i.u = load <2 x i64>, ptr %i.s, align 8, !alias.scope !2601, !noalias !2602
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !alias.scope !2603
  store <2 x i64> %i.u, ptr %i.t, align 8, !alias.scope !2604, !noalias !2605
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCsf8MNnN4IDbl_8iced_x86.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCsf8MNnN4IDbl_8iced_x86.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCsf8MNnN4IDbl_8iced_x86.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2a_12BlockEncoder3news0_0E0EB2c_.exit.thread, %bb.e
  ret void

_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2a_12BlockEncoder3news0_0E0EB2c_.exit.thread
  %i.v = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.x = icmp eq i64 %i.v, 1
  br i1 %i.x, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.preheader.i.i.new

_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.preheader.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.preheader.i.i
  %unroll_iter = and i64 %i.v, 288230376151711742
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.preheader.i.i.new ], [ %i.ah, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.i.i ]
  %i.y = xor i64 %.sroa.0.016.i.i, -1
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aa = getelementptr [16 x i8], ptr %i.w, i64 %i.y ; 2 uses
  %i.ab = load <2 x i64>, ptr %i.z, align 8, !alias.scope !2601, !noalias !2602
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !alias.scope !2603
  store <2 x i64> %i.ab, ptr %i.aa, align 8, !alias.scope !2604, !noalias !2605
  %i.ac = xor i64 %.sroa.0.016.i.i, -2
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = getelementptr [16 x i8], ptr %i.w, i64 %i.ac ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !2601, !noalias !2602
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !alias.scope !2603
  store <2 x i64> %i.ag, ptr %i.af, align 8, !alias.scope !2604, !noalias !2605
  %i.ah = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCsf8MNnN4IDbl_8iced_x86.exit.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCsf8MNnN4IDbl_8iced_x86.exit11.i.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB8_SB14_20sort_unstable_by_keyyNCNvMs1_B19_NtB19_12BlockEncoder3news_0E0EB1b_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 4003199668773775) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3TNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB8_SBZ_20sort_unstable_by_keyyNCNvMs1_B14_NtB14_12BlockEncoder3news_0E0EB16_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB8_SB14_20sort_unstable_by_keyyNCNvMs1_B19_NtB19_12BlockEncoder3news_0E0EB1b_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [288 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [288 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB8_SB14_20sort_unstable_by_keyyNCNvMs1_B19_NtB19_12BlockEncoder3news_0E0EB1b_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [288 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [288 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB8_SB14_20sort_unstable_by_keyyNCNvMs1_B19_NtB19_12BlockEncoder3news_0E0EB1b_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3TNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB8_SBZ_20sort_unstable_by_keyyNCNvMs1_B14_NtB14_12BlockEncoder3news_0E0EB16_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3TNtNtNtCsf8MNnN4IDbl_8iced_x869block_enc5block5BlockjjENCINvMB8_SBZ_20sort_unstable_by_keyyNCNvMs1_B14_NtB14_12BlockEncoder3news_0E0EB16_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 224
  %.sroa.0.0.val13 = load i64, ptr %i.n, align 8, !noundef !21 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 224
  %.sroa.04.0.val14 = load i64, ptr %i.o, align 8, !noundef !21 ; 2 uses
  %i.p = icmp ult i64 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.08.0, i64 224
  %.sroa.08.0.val12 = load i64, ptr %i.q, align 8, !noundef !21 ; 2 uses
  %i.r = icmp ult i64 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.s = xor i1 %i.p, %i.r
  %i.t = icmp ult i64 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.u = xor i1 %i.p, %i.t
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.s, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTyjENCINvMB8_SB14_20sort_unstable_by_keyINtNtBa_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2c_12BlockEncoder3news0_0E0EB2e_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3TyjENCINvMB8_SBZ_20sort_unstable_by_keyINtNtBa_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB26_12BlockEncoder3news0_0E0EB28_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTyjENCINvMB8_SB14_20sort_unstable_by_keyINtNtBa_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2c_12BlockEncoder3news0_0E0EB2e_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTyjENCINvMB8_SB14_20sort_unstable_by_keyINtNtBa_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2c_12BlockEncoder3news0_0E0EB2e_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTyjENCINvMB8_SB14_20sort_unstable_by_keyINtNtBa_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2c_12BlockEncoder3news0_0E0EB2e_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3TyjENCINvMB8_SBZ_20sort_unstable_by_keyINtNtBa_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB26_12BlockEncoder3news0_0E0EB28_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3TyjENCINvMB8_SBZ_20sort_unstable_by_keyINtNtBa_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB26_12BlockEncoder3news0_0E0EB28_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i64, ptr %.sroa.0.0, align 8, !noundef !21 ; 2 uses
  %.sroa.04.0.val14 = load i64, ptr %.sroa.04.0, align 8, !noundef !21 ; 2 uses
  %i.n = icmp ult i64 %.sroa.04.0.val14, %.sroa.0.0.val13 ; 2 uses
  %.sroa.08.0.val12 = load i64, ptr %.sroa.08.0, align 8, !noundef !21 ; 2 uses
  %i.o = icmp ult i64 %.sroa.08.0.val12, %.sroa.0.0.val13
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp ult i64 %.sroa.08.0.val12, %.sroa.04.0.val14
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableTyjENCINvMB8_SB19_20sort_unstable_by_keyINtNtBa_3cmp7ReverseyENCNvMs1_NtCsf8MNnN4IDbl_8iced_x869block_encNtB2h_12BlockEncoder3news0_0E0EB2j_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 128)) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8.i = load i64, ptr %i.a, align 8, !noundef !21
  %.val9.i = load i64, ptr %0, align 8, !noundef !21
  %i.b = icmp ult i64 %.val9.i, %.val8.i          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val6.i = load i64, ptr %i.c, align 8, !noundef !21
  %.val7.i = load i64, ptr %i.d, align 8, !noundef !21
  %i.e = icmp ult i64 %.val7.i, %.val6.i          ; 2 uses
  %i.f = zext i1 %i.b to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.f ; 3 uses
  %i.h = xor i1 %i.b, true
  %i.i = zext i1 %i.h to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.i ; 4 uses
  %i.k = select i1 %i.e, i64 3, i64 2
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.k ; 4 uses
  %i.m = select i1 %i.e, i64 2, i64 3
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 3 uses
  %.val4.i = load i64, ptr %i.l, align 8, !noundef !21
  %.val5.i = load i64, ptr %i.g, align 8, !noundef !21
  %i.o = icmp ult i64 %.val5.i, %.val4.i          ; 3 uses
  %.val2.i = load i64, ptr %i.n, align 8, !noundef !21
  %.val3.i = load i64, ptr %i.j, align 8, !noundef !21
  %i.p = icmp ult i64 %.val3.i, %.val2.i          ; 3 uses
  %i.q = select i1 %i.o, ptr %i.l, ptr %i.g, !unpredictable !21
  %i.r = select i1 %i.p, ptr %i.j, ptr %i.n, !unpredictable !21
  %i.s = select i1 %i.p, ptr %i.l, ptr %i.j, !unpredictable !21
  %i.t = select i1 %i.o, ptr %i.g, ptr %i.s, !unpredictable !21 ; 3 uses
  %i.u = select i1 %i.o, ptr %i.j, ptr %i.l, !unpredictable !21
  %i.v = select i1 %i.p, ptr %i.n, ptr %i.u, !unpredictable !21 ; 3 uses
  %.val.i = load i64, ptr %i.v, align 8, !noundef !21
  %.val1.i = load i64, ptr %i.t, align 8, !noundef !21
  %i.w = icmp ult i64 %.val1.i, %.val.i           ; 2 uses
  %i.x = select i1 %i.w, ptr %i.v, ptr %i.t, !unpredictable !21
  %i.y = select i1 %i.w, ptr %i.t, ptr %i.v, !unpredictable !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  %i.ab = getelementptr i8, ptr %2, i64 48        ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ad = getelementptr i8, ptr %2, i64 64        ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val8.i1 = load i64, ptr %i.ae, align 8, !noundef !21
  %.val9.i2 = load i64, ptr %i.ac, align 8, !noundef !21
  %i.af = icmp ult i64 %.val9.i2, %.val8.i1       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val6.i3 = load i64, ptr %i.ag, align 8, !noundef !21
  %.val7.i4 = load i64, ptr %i.ah, align 8, !noundef !21
  %i.ai = icmp ult i64 %.val7.i4, %.val6.i3       ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils16get_flow_control:bb.a
    i16 312, label %bb.c
    i16 313, label %bb.c
    i16 406, label %bb.d
    i16 407, label %bb.d
    i16 657, label %bb.e
    i16 658, label %bb.e
    i16 659, label %bb.e
    i16 660, label %bb.e
    i16 661, label %bb.e
    i16 662, label %bb.e
    i16 663, label %bb.e
    i16 664, label %bb.e
    i16 665, label %bb.e
    i16 666, label %bb.e
    i16 667, label %bb.e
    i16 668, label %bb.e
    i16 669, label %bb.e
    i16 670, label %bb.e
    i16 671, label %bb.e
    i16 672, label %bb.e
    i16 673, label %bb.e
    i16 674, label %bb.e
    i16 675, label %bb.e
    i16 676, label %bb.e
    i16 677, label %bb.e
    i16 678, label %bb.e
    i16 679, label %bb.e
    i16 680, label %bb.e
    i16 681, label %bb.e
    i16 682, label %bb.e
    i16 683, label %bb.e
    i16 684, label %bb.e
    i16 691, label %bb.f
    i16 692, label %bb.f
    i16 693, label %bb.f
    i16 694, label %bb.g
    i16 695, label %bb.g
    i16 696, label %bb.g
    i16 697, label %bb.h
    i16 698, label %bb.h
    i16 699, label %bb.i
    i16 700, label %bb.i
    i16 701, label %bb.i
    i16 1854, label %bb.g
    i16 1855, label %bb.g
    i16 1856, label %bb.g
    i16 1857, label %bb.g
    i16 1858, label %bb.g
    i16 1859, label %bb.g
    i16 1860, label %bb.g
    i16 1861, label %bb.g
    i16 1862, label %bb.g
    i16 1863, label %bb.g
    i16 1864, label %bb.g
    i16 1865, label %bb.g
    i16 1866, label %bb.g
    i16 1867, label %bb.g
    i16 1868, label %bb.g
    i16 1869, label %bb.g
    i16 1870, label %bb.g
    i16 1871, label %bb.g
    i16 1872, label %bb.g
    i16 1873, label %bb.g
    i16 1874, label %bb.g
    i16 1875, label %bb.g
    i16 1876, label %bb.g
    i16 1877, label %bb.g
    i16 1878, label %bb.g
    i16 1879, label %bb.g
    i16 1880, label %bb.g
    i16 1881, label %bb.g
    i16 1882, label %bb.g
    i16 1883, label %bb.g
    i16 1884, label %bb.g
    i16 1885, label %bb.g
    i16 1886, label %bb.g
    i16 1887, label %bb.g
    i16 1888, label %bb.g
    i16 1889, label %bb.g
    i16 1890, label %bb.g
    i16 1891, label %bb.g
    i16 1892, label %bb.g
    i16 1893, label %bb.g
    i16 1894, label %bb.g
    i16 1895, label %bb.g
    i16 1896, label %bb.g
    i16 1897, label %bb.g
    i16 1898, label %bb.g
    i16 1899, label %bb.g
    i16 1900, label %bb.g
    i16 1901, label %bb.g
    i16 2095, label %bb.g
    i16 2096, label %bb.g
    i16 4563, label %bb.i
    i16 4564, label %bb.i
    i16 4582, label %bb.g
    i16 4583, label %bb.g
  ], !prof !12800

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10426) #47
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.a
  br label %bb.i

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.i

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.i

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi i8 [ 5, %bb.c ], [ 6, %bb.d ], [ 0, %bb.e ], [ 3, %bb.f ], [ 4, %bb.h ], [ 2, %bb.g ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix(i8 noundef range(i8 0, 75) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, i32 %.236.val) unnamed_addr #11 {
bb.a:
  %i.a = and i32 %.236.val, 4
  %i.b = icmp ne i32 %i.a, 0                      ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i16, ptr %i.c, align 8, !range !28, !alias.scope !12803, !noundef !21
  switch i16 %i.d, label %bb.b [
    i16 290, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter13fmt_utils_all24show_segment_prefix_bool.exit
    i16 291, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter13fmt_utils_all24show_segment_prefix_bool.exit
    i16 292, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter13fmt_utils_all24show_segment_prefix_bool.exit
    i16 1040, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter13fmt_utils_all24show_segment_prefix_bool.exit
    i16 1041, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter13fmt_utils_all24show_segment_prefix_bool.exit
    i16 1042, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter13fmt_utils_all24show_segment_prefix_bool.exit
    i16 1043, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter13fmt_utils_all24show_segment_prefix_bool.exit
    i16 1047, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter13fmt_utils_all24show_segment_prefix_bool.exit
    i16 1048, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter13fmt_utils_all24show_segment_prefix_bool.exit
    i16 1049, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter13fmt_utils_all24show_segment_prefix_bool.exit
    i16 1050, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter13fmt_utils_all24show_segment_prefix_bool.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !12803, !noundef !21 ; 2 uses
  %i.g = lshr i32 %i.f, 5
  %i.h = and i32 %i.g, 7                          ; 2 uses
  %i.i = add nsw i32 %i.h, -1
  %i.j = icmp ult i32 %i.i, 6
  %narrow.i = add nuw nsw i32 %i.h, 70
  %narrow9.i = select i1 %i.j, i32 %narrow.i, i32 0 ; 2 uses
  %i.k = lshr i32 %i.f, 18
  %i.l = and i32 %i.k, 3
  %.off.i = add nsw i32 %i.l, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %narrow9.i, -75
  %or.cond.i = icmp ult i32 %i.m, 2
  %..i = or i1 %i.b, %or.cond.i
  br label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter13fmt_utils_all24show_segment_prefix_bool.exit

bb.d:                                             ; preds = %bb.b
  %i.n = icmp eq i8 %0, 0
  br i1 %i.n, label %bb.f, label %bb.e

switch.lookup:                                    ; preds = %bb.f
  %i.o = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsp_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4infoNtB5_20SimpleInstrInfo_XLATNtB5_9InstrInfo7op_info, i64 %i.o
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %switch.lookup, %bb.d
  %.sroa.0.0.i = phi i8 [ %switch.load, %switch.lookup ], [ %0, %bb.d ], [ 74, %bb.f ]
  %i.p = zext nneg i8 %.sroa.0.0.i to i32
  %.not.i = icmp ne i32 %narrow9.i, %i.p
  %.8.i = or i1 %i.b, %.not.i
  br label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter13fmt_utils_all24show_segment_prefix_bool.exit

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !12803, !noundef !21
  %switch.tableidx = add i8 %i.r, -26             ; 2 uses
  %i.s = icmp ult i8 %switch.tableidx, 33
  br i1 %i.s, label %switch.lookup, label %bb.e

_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter13fmt_utils_all24show_segment_prefix_bool.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.c, %bb.e
  %.sroa.04.0.in.i = phi i1 [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %..i, %bb.c ], [ %.8.i, %bb.e ]
  ret i1 %.sroa.04.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils8add_tabs(ptr noundef nonnull %0, ptr nofree readonly captures(none) %.24.val, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %..i = tail call noundef i32 @llvm.umin.i32(i32 %2, i32 256) ; 5 uses
  %i.a = icmp eq i32 %3, 0
  %.not29 = icmp ugt i32 %..i, %1                 ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i32 %..i, %1
  %.sroa.017.0 = select i1 %.not29, i32 %i.b, i32 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12813)
  %.not1.i = icmp eq i32 %.sroa.017.0, 0
  br i1 %.not1.i, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils11add_strings.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.c = zext nneg i32 %.sroa.017.0 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.sroa.0.02.i = phi i64 [ %i.i, %.lr.ph.i ], [ %i.c, %.lr.ph.preheader.i ] ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.02.i, i64 12) ; 2 uses
  %i.d = getelementptr [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils12SPACES_TABLE, i64 %..i.i ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !12813, !nonnull !21, !noundef !21
  %i.g = getelementptr i8, ptr %i.d, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !12813, !noundef !21
  tail call void %.24.val(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, i8 noundef 0) #45, !noalias !12813, !inline_history !12806
  %i.i = sub nuw nsw i64 %.sroa.0.02.i, %..i.i    ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils11add_strings.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.a
  %i.j = add i32 %1, 1
  %.sroa.018.0 = select i1 %.not29, i32 %..i, i32 %i.j ; 2 uses
  %i.k = urem i32 %.sroa.018.0, %3
  %i.l = sub nuw i32 %.sroa.018.0, %i.k           ; 4 uses
  %i.m = icmp ugt i32 %i.l, %1
  br i1 %i.m, label %bb.e, label %bb.d

_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils11add_strings.exit: ; preds = %.lr.ph.i48, %.lr.ph.i, %.lr.ph.i41, %bb.b, %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils11add_strings.exit39
  ret void

bb.d:                                             ; preds = %bb.c
  br i1 %.not29, label %bb.f, label %.lr.ph.i41

bb.e:                                             ; preds = %bb.c
  %i.n = urem i32 %1, %3
  %.neg = sub i32 %i.n, %1
  %i.o = add i32 %.neg, %i.l                      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12814)
  %.not1.i33 = icmp ugt i32 %3, %i.o
  br i1 %.not1.i33, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils11add_strings.exit39, label %.lr.ph.preheader.i34

.lr.ph.preheader.i34:                             ; preds = %bb.e
  %i.p = udiv i32 %i.o, %3
  %i.q = zext i32 %i.p to i64
  br label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %.lr.ph.i35, %.lr.ph.preheader.i34
  %.sroa.0.02.i36 = phi i64 [ %i.w, %.lr.ph.i35 ], [ %i.q, %.lr.ph.preheader.i34 ] ; 2 uses
  %..i.i37 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.02.i36, i64 4) ; 2 uses
  %i.r = getelementptr [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils10TABS_TABLE, i64 %..i.i37 ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -16
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !12814, !nonnull !21, !noundef !21
  %i.u = getelementptr i8, ptr %i.r, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !12814, !noundef !21
  tail call void %.24.val(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v, i8 noundef 0) #45, !noalias !12814, !inline_history !12806
  %i.w = sub nuw nsw i64 %.sroa.0.02.i36, %..i.i37 ; 2 uses
  %.not.i38 = icmp eq i64 %i.w, 0
  br i1 %.not.i38, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils11add_strings.exit39, label %.lr.ph.i35

_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils11add_strings.exit39: ; preds = %.lr.ph.i35, %bb.e
  %i.x = icmp ugt i32 %..i, %i.l
  br i1 %i.x, label %bb.f, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils11add_strings.exit

.lr.ph.i41:                                       ; preds = %bb.d
  tail call void %.24.val(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !12815, !inline_history !12806
  br label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils11add_strings.exit

bb.f:                                             ; preds = %bb.d, %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils11add_strings.exit39
  %.sroa.0.0 = phi i32 [ %i.l, %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils11add_strings.exit39 ], [ %1, %bb.d ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12816)
  %4 = sub nsw i32 %..i, %.sroa.0.0
  %5 = zext i32 %4 to i64
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48, %bb.f
  %.sroa.0.02.i49 = phi i64 [ %i.ad, %.lr.ph.i48 ], [ %5, %bb.f ] ; 2 uses
  %..i.i50 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.02.i49, i64 12) ; 2 uses
  %i.y = getelementptr [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils12SPACES_TABLE, i64 %..i.i50 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -16
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !12816, !nonnull !21, !noundef !21
  %i.ab = getelementptr i8, ptr %i.y, i64 -8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !12816, !noundef !21
  tail call void %.24.val(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, i8 noundef 0) #45, !noalias !12816, !inline_history !12806
  %i.ad = sub nuw nsw i64 %.sroa.0.02.i49, %..i.i50 ; 2 uses
  %.not.i51 = icmp eq i64 %i.ad, 0
  br i1 %.not.i51, label %_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils11add_strings.exit, label %.lr.ph.i48
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de10vex_reader13read_handlers(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [80 x i8], align 8                ; 13 uses
  %i.q = alloca [80 x i8], align 8                ; 13 uses
  %i.r = alloca [80 x i8], align 8                ; 13 uses
  %i.s = alloca [80 x i8], align 8                ; 13 uses
  %i.t = alloca [80 x i8], align 8                ; 13 uses
  %i.u = alloca [48 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [32 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 9 uses
  %i.ab = alloca [48 x i8], align 8               ; 9 uses
  %i.ac = alloca [48 x i8], align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12920)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !12921, !noundef !21 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !12921, !noundef !21 ; 2 uses
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer29read_vex_op_code_handler_kind.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47, !noalias !12921
  unreachable

_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer29read_vex_op_code_handler_kind.exit: ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !12921, !nonnull !21, !noundef !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae
  %i.al = load i8, ptr %i.ak, align 1, !noalias !12921, !noundef !21 ; 2 uses
  %i.am = add nuw i64 %i.ae, 1
  store i64 %i.am, ptr %i.ad, align 8, !alias.scope !12921
  %i.an = icmp ult i8 %i.al, 79
  tail call void @llvm.assume(i1 %i.an)
  switch i8 %i.al, label %default.unreachable432 [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 6, label %bb.n
    i8 7, label %bb.o
    i8 8, label %bb.p
    i8 9, label %bb.q
    i8 10, label %bb.r
    i8 11, label %bb.s
    i8 12, label %bb.t
    i8 13, label %bb.u
    i8 14, label %bb.v
    i8 15, label %bb.w
    i8 16, label %bb.x
    i8 17, label %bb.y
    i8 18, label %bb.z
    i8 19, label %bb.aa
    i8 20, label %bb.ab
    i8 21, label %bb.ac
    i8 22, label %bb.ad
    i8 23, label %bb.ae
    i8 24, label %bb.af
    i8 25, label %bb.ag
    i8 26, label %bb.ah
    i8 27, label %bb.ai
    i8 28, label %bb.aj
    i8 29, label %bb.ak
    i8 30, label %bb.al
    i8 31, label %bb.am
    i8 32, label %bb.an
    i8 33, label %bb.ao
    i8 34, label %bb.ap
    i8 35, label %bb.aq
    i8 36, label %bb.ar
    i8 37, label %bb.as
    i8 38, label %bb.at
    i8 39, label %bb.au
    i8 40, label %bb.av
    i8 41, label %bb.aw
    i8 42, label %bb.ax
    i8 43, label %bb.ay
    i8 44, label %bb.az
    i8 45, label %bb.ba
    i8 46, label %bb.bb
    i8 47, label %bb.bc
    i8 48, label %bb.bd
    i8 49, label %bb.be
    i8 50, label %bb.bf
    i8 51, label %bb.bg
    i8 52, label %bb.bh
    i8 53, label %bb.bi
    i8 54, label %bb.bj
    i8 55, label %bb.bk
    i8 56, label %bb.bl
    i8 57, label %bb.bm
    i8 58, label %bb.bn
    i8 59, label %bb.bo
    i8 60, label %bb.bp
    i8 61, label %bb.bq
    i8 62, label %bb.br
    i8 63, label %bb.bs
    i8 64, label %bb.bt
    i8 65, label %bb.bu
    i8 66, label %bb.bv
    i8 67, label %bb.bw
    i8 68, label %bb.bx
    i8 69, label %bb.by
    i8 70, label %bb.bz
    i8 71, label %bb.cb
    i8 72, label %bb.cc
    i8 73, label %bb.cd
    i8 74, label %bb.ce
    i8 75, label %bb.cf
    i8 76, label %bb.cg
    i8 77, label %bb.ch
    i8 78, label %bb.ci
  ], !prof !12922

default.unreachable432:                           ; preds = %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer29read_vex_op_code_handler_kind.exit
  unreachable

bb.c:                                             ; preds = %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer29read_vex_op_code_handler_kind.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12923)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !12923, !noalias !12924, !noundef !21 ; 3 uses
  %i.aq = load i64, ptr %1, align 8, !range !22, !alias.scope !12923, !noalias !12924, !noundef !21
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.d, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTFG1_PNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlers13OpCodeHandlerQL2_INtBP_7DecoderL1_EQL0_NtNtBR_11instruction11InstructionEuRBL_EE8push_mutBR_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTFG1_PNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlers13OpCodeHandlerQL2_INtBW_7DecoderL1_EQL0_NtNtBY_11instruction11InstructionEuRBS_EE8grow_oneBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #44, !noalias !12924
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTFG1_PNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlers13OpCodeHandlerQL2_INtBP_7DecoderL1_EQL0_NtNtBR_11instruction11InstructionEuRBL_EE8push_mutBR_.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTFG1_PNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlers13OpCodeHandlerQL2_INtBP_7DecoderL1_EQL0_NtNtBR_11instruction11InstructionEuRBL_EE8push_mutBR_.exit: ; preds = %bb.c, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !12923, !noalias !12924, !nonnull !21, !noundef !21
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ap ; 2 uses
  store ptr @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlersNtB2_21OpCodeHandler_Invalid6decode, ptr %i.au, align 8, !noalias !12925
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlers15INVALID_HANDLER, ptr %i.av, align 8, !noalias !12925
  %i.aw = add i64 %i.ap, 1
  store i64 %i.aw, ptr %i.ao, align 8, !alias.scope !12923, !noalias !12924
  br label %.loopexit

bb.e:                                             ; preds = %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer29read_vex_op_code_handler_kind.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12926)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !12926, !noalias !12927, !noundef !21 ; 4 uses
  %i.az = load i64, ptr %1, align 8, !range !22, !alias.scope !12926, !noalias !12927, !noundef !21 ; 2 uses
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.f, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTFG1_PNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlers13OpCodeHandlerQL2_INtBP_7DecoderL1_EQL0_NtNtBR_11instruction11InstructionEuRBL_EE8push_mutBR_.exit121

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTFG1_PNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlers13OpCodeHandlerQL2_INtBW_7DecoderL1_EQL0_NtNtBY_11instruction11InstructionEuRBS_EE8grow_oneBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #44, !noalias !12927
  %.pre425 = load i64, ptr %1, align 8, !range !22, !alias.scope !12928, !noalias !12929
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTFG1_PNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlers13OpCodeHandlerQL2_INtBP_7DecoderL1_EQL0_NtNtBR_11instruction11InstructionEuRBL_EE8push_mutBR_.exit121

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTFG1_PNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlers13OpCodeHandlerQL2_INtBP_7DecoderL1_EQL0_NtNtBR_11instruction11InstructionEuRBL_EE8push_mutBR_.exit121: ; preds = %bb.e, %bb.f
  %i.bb = phi i64 [ %i.az, %bb.e ], [ %.pre425, %bb.f ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !12926, !noalias !12927, !nonnull !21, !noundef !21 ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.ay ; 2 uses
  store ptr @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlersNtB2_21OpCodeHandler_Invalid6decode, ptr %i.be, align 8, !noalias !12930
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlers15INVALID_HANDLER, ptr %i.bf, align 8, !noalias !12930
  %i.bg = add i64 %i.ay, 1                        ; 3 uses
  store i64 %i.bg, ptr %i.ax, align 8, !alias.scope !12926, !noalias !12927
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12928)
  %i.bh = icmp eq i64 %i.bg, %i.bb
  br i1 %i.bh, label %bb.g, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTFG1_PNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlers13OpCodeHandlerQL2_INtBP_7DecoderL1_EQL0_NtNtBR_11instruction11InstructionEuRBL_EE8push_mutBR_.exit122
end_hunk_1
