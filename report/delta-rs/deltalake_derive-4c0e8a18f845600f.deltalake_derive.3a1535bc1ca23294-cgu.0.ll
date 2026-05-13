inline.NumInlined: 116
inline.NumDeleted: 77
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn6derive11DeriveInputECs4ZaLwAtrTbk_16deltalake_derive:bb.a
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn6derive4DataEBK_(ptr align 8 %0) #22
          to label %bb.n unwind label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn6derive4DataEBK_(ptr align 8 %0)
  ret void

bb.m:                                             ; preds = %bb.j, %bb.g, %bb.d, %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.n:                                             ; preds = %bb.j
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpc12PanicMessageECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = icmp sgt i64 %i.a, -1
  %i.c = icmp eq i64 %i.a, -9223372036854775807
  %i.d = or i1 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6buffer6BufferECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs5_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6BufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtCsbjGuDcEILED_11proc_macro211TokenStreamECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.07 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.07
  %i.d = add i64 %.sroa.0.07, 1                   ; 4 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr align 8 %i.c)
          to label %bb.b unwind label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph10
  %i.e = add i64 %.sroa.0.18, 1                   ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1
  br i1 %i.h, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.18 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.18
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr align 8 %i.i) #22
          to label %bb.c unwind label %bb.e

._crit_edge11:                                    ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs7nQiqFc7Txl_3syn4attr4MetaECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.07 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %.sroa.0.07
  %i.d = add i64 %.sroa.0.07, 1                   ; 4 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr align 8 %i.c)
          to label %bb.b unwind label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph10
  %i.e = add i64 %.sroa.0.18, 1                   ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1
  br i1 %i.h, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.18 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %.sroa.0.18
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr align 8 %i.i) #22
          to label %bb.c unwind label %bb.e

._crit_edge11:                                    ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBM_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit._crit_edge, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit
  %.sroa.0.08 = phi i64 [ %i.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %.sroa.0.08
  %i.d = add i64 %.sroa.0.08, 1                   ; 4 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr align 8 %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit._crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit, %bb.a
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit7: ; preds = %.lr.ph10
  %i.e = add i64 %.sroa.0.19, 1                   ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit7._crit_edge, label %.lr.ph10

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit7._crit_edge, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit7
  %.sroa.0.19 = phi i64 [ %i.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit7 ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %.sroa.0.19
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr align 8 %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit7 unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit7._crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit7, %bb.b
  resume { ptr, i32 } %i.g

bb.c:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr align 8 %0)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNvNtNtCsjJ0p09o2jmV_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsg_NtB6_6clientINtB24_6ClientNtB8_11TokenStreamB2u_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE0EB31_(ptr writeonly sret([40 x i8]) align 8 captures(none) %0, ptr readonly byval([64 x i8]) align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [80 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 4                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load <2 x ptr>, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.45.0.copyload = load i8, ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !26
  %i.l = trunc i8 %.sroa.45.0.copyload to i1
  invoke void @_RNvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client24maybe_install_panic_hook(i1 zeroext %i.l)
          to label %.noexc.i.i unwind label %bb.i, !noalias !26

.noexc.i.i:                                       ; preds = %bb.a
  invoke void @_RNvMs0_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6symbolNtB5_6Symbol14invalidate_all()
          to label %.noexc36.i.i unwind label %bb.i, !noalias !26

.noexc36.i.i:                                     ; preds = %.noexc.i.i
  %i.m = load ptr, ptr %i.j, align 8, !noalias !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !26
  store ptr %i.m, ptr %i.g, align 8, !noalias !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !26
  invoke void @_RNvXs7_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanENtB16_11TokenStreamEINtB5_6DecodeuE6decodeCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([16 x i8]) align 4 %i.f, ptr nonnull align 8 %i.g, ptr nonnull %i.a)
          to label %.noexc37.i.i unwind label %bb.i, !noalias !26

.noexc37.i.i:                                     ; preds = %.noexc36.i.i
  %.sroa.412.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.412.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !noalias !26
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.r = load i32, ptr %i.q, align 4, !noalias !26
  %.sroa.311.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.311.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !26
  store ptr inttoptr (i64 1 to ptr), ptr %i.j, align 8, !noalias !26
  %.sroa.47.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !noalias !26
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.47.0..sroa_idx.i.i.i.i.i, align 8, !noalias !26
  %.sroa.58.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.58.0..sroa_idx.i.i.i.i.i, align 8, !noalias !26
  store i64 0, ptr %i.e, align 8, !noalias !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store <2 x ptr> %i.k, ptr %i.s, align 8, !noalias !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26
  %i.t = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client5state12BRIDGE_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !noalias !26
  store ptr %i.e, ptr %i.t, align 8, !noalias !26
  store ptr %i.u, ptr %i.b, align 8, !noalias !26
  %i.v = invoke i32 @_RNvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_config(i32 %i.r)
          to label %_RNCNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB6_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionB10_ENCNCINvMsg_B6_INtB6_6ClientNtBa_11TokenStreamB2q_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE00E00B2X_.exit.i.i.i.i.i.i unwind label %bb.b, !noalias !26

bb.b:                                             ; preds = %.noexc37.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RNvXNvNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr nonnull align 8 %i.b)
          to label %bb.h unwind label %bb.c, !noalias !26

_RNCNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB6_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionB10_ENCNCINvMsg_B6_INtB6_6ClientNtBa_11TokenStreamB2q_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE00E00B2X_.exit.i.i.i.i.i.i: ; preds = %.noexc37.i.i
  invoke void @_RNvXNvNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr nonnull align 8 %i.b)
          to label %bb.e unwind label %bb.d, !noalias !26

bb.c:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !26
  unreachable

bb.d:                                             ; preds = %_RNCNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB6_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionB10_ENCNCINvMsg_B6_INtB6_6ClientNtBa_11TokenStreamB2q_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE00E00B2X_.exit.i.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.h

bb.e:                                             ; preds = %_RNCNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB6_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionB10_ENCNCINvMsg_B6_INtB6_6ClientNtBa_11TokenStreamB2q_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE00E00B2X_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26
  store i32 %i.v, ptr %i.d, align 4, !noalias !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.311.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !26
  invoke void @_RNvXs5_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6BufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.j) #25
          to label %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB1e_11TokenStreamINtNtB9_6option6OptionB28_ENCNCINvMsg_B1e_INtB1e_6ClientNtB1i_11TokenStreamB3l_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3T_.exit.i.i.i unwind label %bb.f, !noalias !26

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !26
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client11TokenStreamEECsbjGuDcEILED_11proc_macro2(ptr nonnull align 4 %i.d) #22
          to label %.body.i.i unwind label %bb.g, !noalias !26

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !26
  unreachable

bb.h:                                             ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.w, %bb.b ]
  invoke void @_RNvXs5_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6BufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %.sroa.311.0..sroa_idx.i.i.i.i.i) #25
          to label %.body.i.i unwind label %bb.g, !noalias !26

_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB1e_11TokenStreamINtNtB9_6option6OptionB28_ENCNCINvMsg_B1e_INtB1e_6ClientNtB1i_11TokenStreamB3l_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3T_.exit.i.i.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !26
  store i64 0, ptr %i.n, align 8, !noalias !26
  %2 = load i32, ptr %i.d, align 4, !noalias !26
  invoke void @_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBO_6option6OptionNtNtB4_6client11TokenStreamEuEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(i32 0, i32 %2, ptr nonnull align 8 %i.j, ptr nonnull %i.a)
          to label %__rust_try.exit.thread.i.i unwind label %bb.i, !noalias !26

__rust_try.exit.thread.i.i:                       ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB1e_11TokenStreamINtNtB9_6option6OptionB28_ENCNCINvMsg_B1e_INtB1e_6ClientNtB1i_11TokenStreamB3l_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3T_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26
  br label %bb.l

bb.i:                                             ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB1e_11TokenStreamINtNtB9_6option6OptionB28_ENCNCINvMsg_B1e_INtB1e_6ClientNtB1i_11TokenStreamB3l_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3T_.exit.i.i.i, %.noexc36.i.i, %.noexc.i.i, %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.h, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %eh.lpad-body.i.i.i.i.i, %bb.h ], [ %i.z, %bb.f ]
  %i.ac = extractvalue { ptr, i32 } %eh.lpad-body.i.i, 0
  %i.ad = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr %i.ac)
          to label %bb.k unwind label %bb.j, !noalias !26 ; 2 uses

bb.j:                                             ; preds = %.body.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #23, !noalias !26
  unreachable

bb.k:                                             ; preds = %.body.i.i
  %i.af = extractvalue { ptr, ptr } %i.ad, 0
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1
  invoke void @_RNvXse_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcNtB5_12PanicMessageINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB18_3any3AnyNtNtB18_6marker4SendEL_EE4from(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr %i.af, ptr align 8 %i.ag)
          to label %bb.n unwind label %bb.m, !noalias !26

bb.l:                                             ; preds = %bb.n, %__rust_try.exit.thread.i.i
  invoke void @_RNvMs0_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6symbolNtB5_6Symbol14invalidate_all()
          to label %bb.p unwind label %bb.m, !noalias !26

bb.m:                                             ; preds = %bb.n, %bb.l, %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  invoke void @_RNvXs5_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6BufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.j) #25
          to label %.critedge.body unwind label %bb.o, !noalias !26

bb.n:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.i, align 8, !noalias !26
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.231.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.231.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i, i64 16, i1 false), !noalias !26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %i.ai, align 8, !noalias !26
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.h, align 8, !noalias !26
  invoke void @_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.j, ptr nonnull %i.a)
          to label %bb.l unwind label %bb.m, !noalias !26

bb.o:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !26
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !23
  ret void

.critedge.body:                                   ; preds = %bb.m
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBV_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1G_5error5ErrorEEB3a_8try_folduNCINvNvB3a_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB6f_ENcNtB6V_5Break0E0B6V_E0IB6W_B6V_EEB2e_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr %2, ptr align 8 %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.d, align 8
  call void @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters10filter_map19filter_map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4s_B3q_EENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0NCINvXB2e_INtB2e_12GenericShuntINtB2c_9FilterMapB3_B5h_EIB35_NtNtBa_7convert10InfallibleB46_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3q_B56_NcNtB56_5Break0E0B56_E0E0B4r_EB5l_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr nonnull align 8 %i.a) #25
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBV_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1G_5error5ErrorEEB3b_8try_folduNCINvNvB3b_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB6g_ENcNtB6W_5Break0E0B6W_E0IB6X_B6W_EEB2e_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr %2, ptr align 8 %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.d, align 8
  call void @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters10filter_map19filter_map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4s_B3q_EENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0NCINvXB2e_INtB2e_12GenericShuntINtB2c_9FilterMapB3_B5h_EIB35_NtNtBa_7convert10InfallibleB46_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3q_B56_NcNtB56_5Break0E0B56_E0E0B4r_EB5l_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr nonnull align 8 %i.a) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1s_5error5ErrorEEB2U_8try_folduNCINvNvB2U_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB5Z_ENcNtB6F_5Break0E0B6F_E0IB6G_B6F_EEB20_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr %2, ptr align 8 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_B3b_EENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0NCINvXB2e_INtB2e_12GenericShuntINtB2c_3MapB3_B52_EIB2Q_NtNtBa_7convert10InfallibleB3R_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3b_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB56_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr nonnull align 8 %i.a) #25
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtB8_4data5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtCs6Po7BT7Nknu_5alloc3vec3VecRBH_EECs4ZaLwAtrTbk_16deltalake_derive(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr align 8 %2) unnamed_addr #3 {
bb.a:
  tail call void @_RINvXse_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtBL_10punctuated4IterBH_EECs4ZaLwAtrTbk_16deltalake_derive(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr align 8 %2) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0ENtCsFBWFmMICZI_9itertools9Itertools11try_collectNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtCs6Po7BT7Nknu_5alloc3vec3VecB3Q_ENtNtB1A_5error5ErrorEB28_(ptr sret([32 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXso_NtCsbvkFyIu7lgC_4core6resultINtB6_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtNtB8_4iter6traits7collect12FromIteratorIBz_B1i_B1Z_EE9from_iterINtNtNtB2F_8adapters10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtB23_4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EEB5b_(ptr sret([32 x i8]) align 8 %0, ptr %1, ptr %2) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0ENtCsFBWFmMICZI_9itertools9Itertools11try_collectNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtCs6Po7BT7Nknu_5alloc3vec3VecB3R_ENtNtB1A_5error5ErrorEB28_(ptr sret([32 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXso_NtCsbvkFyIu7lgC_4core6resultINtB6_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtNtB8_4iter6traits7collect12FromIteratorIBz_B1i_B1Z_EE9from_iterINtNtNtB2F_8adapters10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtB23_4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EEB5b_(ptr sret([32 x i8]) align 8 %0, ptr %1, ptr %2) #25
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB1m_5error5ErrorEEB1U_(ptr sret([32 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #3 {
bb.a:
  tail call void @_RINvXso_NtCsbvkFyIu7lgC_4core6resultINtB6_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtNtB8_4iter6traits7collect12FromIteratorIBz_B1i_B1Z_EE9from_iterINtNtNtB2F_8adapters3map3MapINtNtNtB8_5slice4iter4IterRNtNtB23_4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EEB4X_(ptr sret([32 x i8]) align 8 %0, ptr %1, ptr %2) #25
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB1k_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B29_EENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_EIB1O_NtNtBa_7convert10InfallibleB2P_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6V_12try_for_each4callB29_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0B45_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = load ptr, ptr %1, align 8
  call void @_RNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0B3_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr %i.c, ptr align 8 %2)
  %i.d = load i64, ptr %i.b, align 8
  %.not = icmp eq i64 %i.d, -9223372036854775806
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_10filter_map9FilterMapINtNtNtB9_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB1Z_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB4C_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB9_3ops12control_flow11ControlFlowB5O_ENcNtB6u_5Break0E0B6u_E0B2x_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB1k_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B29_EENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_EIB1O_NtNtBa_7convert10InfallibleB2P_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6W_12try_for_each4callB29_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0B45_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = load ptr, ptr %1, align 8
  call void @_RNCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0B3_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr %i.c, ptr align 8 %2)
  %i.d = load i64, ptr %i.b, align 8
  %.not = icmp eq i64 %i.d, -9223372036854775806
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_10filter_map9FilterMapINtNtNtB9_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB1Z_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB4D_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB9_3ops12control_flow11ControlFlowB5P_ENcNtB6v_5Break0E0B6v_E0B2x_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8
end_hunk_0
begin_hunk_1_@_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_charCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  %i.w = or i8 %i.v, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs3mivhH47tD_9addr2line(ptr nonnull align 8 %0, i64 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load i64, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.aa, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4pushCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = or disjoint i8 %i.n, -64
  store i8 %i.ac, ptr %i.i, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ad, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4pushCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = or disjoint i8 %i.r, -32
  store i8 %i.ae, ptr %i.i, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.ag, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4pushCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.aj, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4pushCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4pushCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ak = add i64 %.sroa.0.03.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, ptr %1, i64 %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE15append_elementsCsbjGuDcEILED_11proc_macro2(ptr align 8 %0, ptr %1, i64 %2) #25
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB4_11ControlFlowIBK_NtCsbjGuDcEILED_11proc_macro211TokenStreamEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB4_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcNtB5_12PanicMessageINtB5_6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, ptr align 8 %1, ptr %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -9223372036854775806
  br i1 %i.b, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ %i.f, %.sink.split ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.d, %.sink.split ]
  invoke void @_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges3_1__INtNtCsbvkFyIu7lgC_4core6option6OptionReEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(ptr %.sroa.0.0, i64 %.sroa.4.0, ptr align 8 %1, ptr %2)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i64, ptr %0, align 8                ; 2 uses
  %i.i = icmp sgt i64 %i.h, -1
  %i.j = icmp eq i64 %i.h, -9223372036854775807
  %i.k = or i1 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpc12PanicMessageECs4ZaLwAtrTbk_16deltalake_derive.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpc12PanicMessageECs4ZaLwAtrTbk_16deltalake_derive.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.l = load i64, ptr %0, align 8                ; 2 uses
  %i.m = icmp sgt i64 %i.l, -1
  %i.n = icmp eq i64 %i.l, -9223372036854775807
  %i.o = or i1 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpc12PanicMessageECs4ZaLwAtrTbk_16deltalake_derive.exit2

bb.f:                                             ; preds = %bb.e
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpc12PanicMessageECs4ZaLwAtrTbk_16deltalake_derive.exit2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpc12PanicMessageECs4ZaLwAtrTbk_16deltalake_derive.exit2: ; preds = %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpc12PanicMessageECs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsn_NtCs7nQiqFc7Txl_3syn10punctuatedINtB5_8IntoIterNtNtB7_4attr4MetaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([232 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs7nQiqFc7Txl_3syn4attr4MetaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([232 x i8]) align 8 %0, ptr align 8 %1) #25
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsr_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_7Pattern13into_searcherCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr %1, i64 %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @_RNvXs7_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_7Pattern13into_searcherCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([40 x i8]) align 8 %i.a, ptr %1, i64 %2) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs7nQiqFc7Txl_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCs4ZaLwAtrTbk_16deltalake_derive(ptr writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %.val2 = load ptr, ptr %1, align 8
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val3 = load ptr, ptr %i.a, align 8
  %i.b = tail call { ptr, ptr } @_RNvXs_NtCs7nQiqFc7Txl_3syn5dropsINtB4_6NoDropDINtNtB6_10punctuated9IterTraitNtNtB6_4data5FieldEp4ItemRB1c_EL_ENtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefB6_(ptr %.val2, ptr align 8 %.val3) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !22, !nonnull !22
  %i.g = tail call i64 %i.f(ptr %i.c) #25, !inline_history !52
  %.val = load ptr, ptr %1, align 8
  %.val1 = load ptr, ptr %i.a, align 8
  %i.h = tail call { ptr, ptr } @_RNvXs_NtCs7nQiqFc7Txl_3syn5dropsINtB4_6NoDropDINtNtB6_10punctuated9IterTraitNtNtB6_4data5FieldEp4ItemRB1c_EL_ENtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefB6_(ptr %.val, ptr align 8 %.val1) ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !22, !nonnull !22
  %i.m = tail call i64 %i.l(ptr %i.i) #25, !inline_history !52
  store i64 %i.g, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.o, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXsx_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvYINtNtCsBGNUbrdbJ0_5quote9___private11HasIteratorKb1_EINtB5_16CheckHasIteratorKBP_E5checkCs4ZaLwAtrTbk_16deltalake_derive() unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env00ENtNtNtCsBGNUbrdbJ0_5quote9___private3ext14RepIteratorExt15quote_into_iterB1Z_(ptr writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, i32 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 5 uses
  %i.b = alloca [232 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [232 x i8], align 8               ; 5 uses
  %i.h = alloca [232 x i8], align 8               ; 4 uses
  %i.i = alloca [232 x i8], align 8               ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 11 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [32 x i8], align 8                ; 2 uses
  call void @_RNvXs1_CsbjGuDcEILED_11proc_macro2NtB5_11TokenStreamINtNtCsbvkFyIu7lgC_4core7convert4FromNtCsjJ0p09o2jmV_10proc_macro11TokenStreamE4from(ptr nonnull sret([32 x i8]) align 8 %i.v, i32 %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !53
  %i.w = call { ptr, i64 } @_RNvMNtCs7nQiqFc7Txl_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.m), !noalias !53 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  store ptr %i.x, ptr %i.u, align 8, !noalias !53
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.y, ptr %i.z, align 8, !noalias !53
  invoke void @_RNvNtCs7nQiqFc7Txl_3syn5parse22tokens_to_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.t, ptr nonnull align 8 %i.u)
          to label %bb.d unwind label %bb.c, !noalias !53

bb.b:                                             ; preds = %.body.i, %bb.c
  %.pn8.i = phi { ptr, i32 } [ %i.aa, %bb.c ], [ %.pn.i, %.body.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn6buffer11TokenBufferEBK_(ptr nonnull align 8 %i.u) #22
          to label %bb.ay unwind label %bb.ax

bb.c:                                             ; preds = %.invoke.i, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !56
  invoke void @_RNvMNtCs6Po7BT7Nknu_5alloc3vecINtB2_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBH_5token5CommaEE3newCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.j) #25
          to label %.noexc.i unwind label %bb.aj, !noalias !53

.noexc.i:                                         ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 9 uses
  store ptr null, ptr %i.ab, align 8, !alias.scope !61, !noalias !64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  br label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE10push_punctCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i, %.noexc.i
  %i.ae = invoke zeroext i1 @_RNvMs9_NtCs7nQiqFc7Txl_3syn5parseNtB5_11ParseBuffer8is_empty(ptr nonnull align 8 %i.t)
          to label %bb.f unwind label %.loopexit.i.i.i.i, !noalias !64

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp12.i.i.i.i, %.loopexit11.i.i.i.i, %bb.ag, %.loopexit.split-lp7.i.i.i.i, %.loopexit6.i.i.i.i, %bb.u, %.thread.i.i.i.i.i, %bb.o, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %.pn9.i.i.i.i = phi { ptr, i32 } [ %i.av, %bb.ag ], [ %i.al, %bb.o ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %i.ap, %.thread.i.i.i.i.i ], [ %lpad.phi5.i.i.i.i, %bb.u ], [ %lpad.loopexit.split-lp9.i.i.i.i, %.loopexit.split-lp7.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit8.i.i.i.i, %.loopexit6.i.i.i.i ], [ %lpad.loopexit13.i.i.i.i, %.loopexit11.i.i.i.i ], [ %lpad.loopexit.split-lp14.i.i.i.i, %.loopexit.split-lp12.i.i.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.j) #22
          to label %.body.i unwind label %bb.ai, !noalias !53

.loopexit.i.i.i.i:                                ; preds = %bb.i, %bb.g, %bb.e
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.k
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXNtNtCs7nQiqFc7Txl_3syn4attr7parsingNtB4_4MetaNtNtB6_5parse5Parse5parse(ptr nonnull sret([232 x i8]) align 8 %i.h, ptr nonnull align 8 %i.t)
          to label %bb.i unwind label %.loopexit.i.i.i.i, !noalias !64

bb.h:                                             ; preds = %bb.x, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !53
  br label %bb.ak

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([232 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
          to label %bb.j unwind label %.loopexit.i.i.i.i, !noalias !64

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.i, align 8, !noalias !64
  %i.ag = icmp eq i64 %i.af, 42
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !64
  invoke void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB26_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.q, ptr nonnull align 8 %i.c, ptr nonnull align 8 @13)
          to label %bb.ah unwind label %.loopexit.split-lp.i.i.i.i, !noalias !53

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.g, ptr noundef nonnull align 8 dereferenceable(232) %i.i, i64 232, i1 false), !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !64
  %i.ai = invoke zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEE7is_noneCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ab) #25
          to label %_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE17empty_or_trailingCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i unwind label %.loopexit1.i.i.i.i, !noalias !64

_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE17empty_or_trailingCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i: ; preds = %bb.l
  br i1 %i.ai, label %bb.m, label %bb.q

bb.m:                                             ; preds = %_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE17empty_or_trailingCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef nonnull align 8 dereferenceable(232) %i.g, i64 232, i1 false), !noalias !64
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !64
  %i.aj = call align 8 dereferenceable_or_null(232) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 232, i64 8) #24, !noalias !64 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 8, i64 232) #27
          to label %.noexc.i.i.i.i.i unwind label %bb.o, !noalias !64

.noexc.i.i.i.i.i:                                 ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr nonnull align 8 %i.b) #22
          to label %.body.i.i.i.i unwind label %bb.p, !noalias !64

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !64
  unreachable

bb.q:                                             ; preds = %_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE17empty_or_trailingCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr nonnull @10, ptr nonnull inttoptr (i64 175 to ptr), ptr nonnull align 8 @11) #27
          to label %bb.r unwind label %.loopexit.split-lp2.i.i.i.i, !noalias !64

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.aj, ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 232, i1 false), !noalias !64
  %i.an = load ptr, ptr %i.ab, align 8, !noalias !64 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr nonnull align 8 %i.an)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEECs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i.i unwind label %.thread.i.i.i.i.i, !noalias !64

.thread.i.i.i.i.i:                                ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !64
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr %.val1.i.i.i.i.i.i.i, i64 232, i64 8) #24, !noalias !64
  store ptr %i.aj, ptr %i.ab, align 8, !noalias !64
  br label %.body.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEECs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i.i: ; preds = %bb.t
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !64
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr %.val.i.i.i.i.i.i.i, i64 232, i64 8) #24, !noalias !64
  br label %bb.w

.loopexit1.i.i.i.i:                               ; preds = %bb.l
  %lpad.loopexit3.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp2.i.i.i.i:                      ; preds = %bb.q
  %lpad.loopexit.split-lp4.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp2.i.i.i.i, %.loopexit1.i.i.i.i
  %lpad.phi5.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit3.i.i.i.i, %.loopexit1.i.i.i.i ], [ %lpad.loopexit.split-lp4.i.i.i.i, %.loopexit.split-lp2.i.i.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr nonnull align 8 %i.g) #22
          to label %.body.i.i.i.i unwind label %bb.v, !noalias !64

bb.v:                                             ; preds = %bb.u
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !64
  unreachable

.loopexit6.i.i.i.i:                               ; preds = %bb.z, %bb.y, %bb.w
  %lpad.loopexit8.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp7.i.i.i.i:                      ; preds = %bb.ab
  %lpad.loopexit.split-lp9.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEECs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i.i, %bb.s
  store ptr %i.aj, ptr %i.ab, align 8, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !64
  %i.ar = invoke zeroext i1 @_RNvMs9_NtCs7nQiqFc7Txl_3syn5parseNtB5_11ParseBuffer8is_empty(ptr nonnull align 8 %i.t)
          to label %bb.x unwind label %.loopexit6.i.i.i.i, !noalias !64

bb.x:                                             ; preds = %bb.w
  br i1 %i.ar, label %bb.h, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_RINvMs9_NtCs7nQiqFc7Txl_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaEB8_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.t)
          to label %bb.z unwind label %.loopexit6.i.i.i.i, !noalias !64

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs7nQiqFc7Txl_3syn5token5CommaNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.aa unwind label %.loopexit6.i.i.i.i, !noalias !64

bb.aa:                                            ; preds = %bb.z
  %i.as = load i64, ptr %i.f, align 8, !noalias !64
  %.not.i.i.i.i = icmp eq i64 %i.as, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !64
  invoke void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB26_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.q, ptr nonnull align 8 %i.d, ptr nonnull align 8 @12)
          to label %bb.ah unwind label %.loopexit.split-lp7.i.i.i.i, !noalias !53

bb.ac:                                            ; preds = %bb.aa
  %.sroa.02.0.copyload.i.i.i.i = load i32, ptr %i.ac, align 8, !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !64
  %i.at = invoke zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEE7is_someCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ab)
          to label %.noexc.i.i.i.i unwind label %.loopexit11.i.i.i.i, !noalias !64

.noexc.i.i.i.i:                                   ; preds = %bb.ac
  br i1 %i.at, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr nonnull @6, ptr nonnull inttoptr (i64 213 to ptr), ptr nonnull align 8 @8) #27
          to label %.noexc11.i.i.i.i unwind label %.loopexit.split-lp12.i.i.i.i, !noalias !64

.noexc11.i.i.i.i:                                 ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %.noexc.i.i.i.i
  %i.au = invoke align 8 ptr @_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEE4takeCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ab)
          to label %.noexc12.i.i.i.i unwind label %.loopexit11.i.i.i.i, !noalias !64 ; 4 uses

.noexc12.i.i.i.i:                                 ; preds = %bb.ae
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i, label %bb.af, label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i

bb.af:                                            ; preds = %.noexc12.i.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr nonnull align 8 @9) #28
          to label %.noexc13.i.i.i.i unwind label %.loopexit.split-lp12.i.i.i.i, !noalias !64

.noexc13.i.i.i.i:                                 ; preds = %bb.af
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i: ; preds = %.noexc12.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(232) %i.au, i64 232, i1 false), !noalias !64
  store i32 %.sroa.02.0.copyload.i.i.i.i, ptr %i.ad, align 8, !noalias !64
  invoke void @_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBK_5token5CommaEE4pushCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.a)
          to label %_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE10push_punctCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i unwind label %bb.ag, !noalias !64

bb.ag:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr nonnull %i.au, i64 232, i64 8) #24, !noalias !64
  br label %.body.i.i.i.i

_RNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE10push_punctCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i: ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4attr4MetaEE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit.i.i.i.i.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr nonnull %i.au, i64 232, i64 8) #24, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !64
  br label %bb.e

.loopexit11.i.i.i.i:                              ; preds = %bb.ae, %bb.ac
  %lpad.loopexit13.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp12.i.i.i.i:                     ; preds = %bb.af, %bb.ad
  %lpad.loopexit.split-lp14.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.ah:                                            ; preds = %bb.ab, %bb.k
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.j)
          to label %bb.ak unwind label %bb.aj, !noalias !53

bb.ai:                                            ; preds = %.body.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !53
  unreachable

.body.i:                                          ; preds = %bb.ao, %bb.aj, %.body.i.i.i.i
  %.pn.i = phi { ptr, i32 } [ %i.bb, %bb.ao ], [ %i.ax, %bb.aj ], [ %.pn9.i.i.i.i, %.body.i.i.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn5parse11ParseBufferEBK_(ptr nonnull align 8 %i.t) #22
          to label %bb.b unwind label %bb.ax

bb.aj:                                            ; preds = %.invoke43.i, %bb.am, %bb.ak, %bb.ah, %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ak:                                            ; preds = %bb.ah, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !56
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.r, ptr nonnull align 8 %i.q)
          to label %bb.al unwind label %bb.aj, !noalias !53

bb.al:                                            ; preds = %bb.ak
  %i.ay = load i64, ptr %i.r, align 8, !noalias !53
  %i.az = icmp eq i64 %i.ay, -9223372036854775808
  br i1 %i.az, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !53
  invoke void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB26_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.k, ptr nonnull align 8 @22)
          to label %.invoke.i unwind label %bb.aj

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !53
  invoke void @_RNvMs9_NtCs7nQiqFc7Txl_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %i.t)
          to label %bb.ap unwind label %bb.ao, !noalias !53

bb.ao:                                            ; preds = %bb.av, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.an
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.s) #22
          to label %.body.i unwind label %bb.ax

bb.ap:                                            ; preds = %bb.an
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.p, ptr nonnull align 8 %i.o)
          to label %bb.aq unwind label %bb.ao, !noalias !53

bb.aq:                                            ; preds = %bb.ap
  %i.bc = load i64, ptr %i.p, align 8, !noalias !53
  %.not.i = icmp eq i64 %i.bc, -9223372036854775808
  br i1 %.not.i, label %bb.as, label %bb.ar

end_hunk_1
