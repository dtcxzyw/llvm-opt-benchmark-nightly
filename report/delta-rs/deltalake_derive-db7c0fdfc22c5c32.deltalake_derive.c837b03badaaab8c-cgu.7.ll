inline.NumInlined: 121
inline.NumDeleted: 58
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjJ0p09o2jmV_10proc_macro6bridge12BridgeConfigECshbKHpCRGxgC_16deltalake_derive:bb.a
  tail call void %i.c(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a) #27, !noalias !23, !inline_history !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsl1mHGn7pXMx_12convert_case9converter9ConverterECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.a, align 8, !range !3, !alias.scope !25, !noundef !9 ; 2 uses
  %i.c = icmp eq i64 %.val2.i, 0
  br i1 %i.c, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !25, !nonnull !9, !noundef !9
  %i.e = mul nuw i64 %.val2.i, 48
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %.body

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !range !3, !alias.scope !25, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %.val.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryEECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.g, align 8, !alias.scope !25, !nonnull !9, !noundef !9
  %i.h = mul nuw i64 %.val.i, 48
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryEECshbKHpCRGxgC_16deltalake_derive.exit

.body:                                            ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #28
          to label %common.resume unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryEECshbKHpCRGxgC_16deltalake_derive.exit
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.j, align 8, !range !3, !alias.scope !28, !noundef !9 ; 2 uses
  %i.l = icmp eq i64 %.val2.i.i, 0
  br i1 %i.l, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val3.i.i = load ptr, ptr %i.m, align 8, !alias.scope !35, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !36
  br label %common.resume

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryEECshbKHpCRGxgC_16deltalake_derive.exit
  %.val.i.i = load i64, ptr %i.j, align 8, !range !3, !alias.scope !28, !noundef !9 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !35, !nonnull !9, !noundef !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !39
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit

common.resume:                                    ; preds = %.body, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.b, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !3, !alias.scope !42, !noundef !9 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !42
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !42
  %i.j = load i64, ptr %i.a, align 8, !range !46, !noalias !42, !noundef !9
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !47, !noalias !42, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #30
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !42, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !42
  %i.q = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !42
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNvNtNtCsjJ0p09o2jmV_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsg_NtB6_6clientINtB24_6ClientNtB8_11TokenStreamB2u_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE0EB31_(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef byval([64 x i8]) align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [80 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [40 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.542.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [40 x i8], align 8                ; 39 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3mem11conjure_zstNCINvMsg_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientINtBN_6ClientNtBR_11TokenStreamB1I_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE0EB2f_()
          to label %bb.b unwind label %.critedge.split-lp

.critedge.split-lp:                               ; preds = %bb.a
  %lpad.critedge.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjJ0p09o2jmV_10proc_macro6bridge12BridgeConfigECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(64) %1) #28
  br label %.critedge.body

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load <2 x ptr>, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.65.0.copyload = load i8, ptr %.sroa.65.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !57
  %i.s = trunc nuw i8 %.sroa.65.0.copyload to i1
  invoke void @_RNvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client24maybe_install_panic_hook(i1 noundef zeroext %i.s)
          to label %.noexc37.i.i unwind label %bb.j, !noalias !48

.noexc37.i.i:                                     ; preds = %bb.b
  invoke void @_RNvMs0_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6symbolNtB5_6Symbol14invalidate_all()
          to label %.noexc38.i.i unwind label %bb.j, !noalias !48

.noexc38.i.i:                                     ; preds = %.noexc37.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !60
  %i.t = load ptr, ptr %i.q, align 8, !noalias !60, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 7 uses
  %i.v = load i64, ptr %i.u, align 8, !noalias !60, !noundef !9
  store ptr %i.t, ptr %i.j, align 8, !noalias !60
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.v, ptr %i.w, align 8, !noalias !60
  invoke void @_RNvXs7_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanENtB16_11TokenStreamEINtB5_6DecodeuE6decodeCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias noundef nonnull %i.a)
          to label %.noexc39.i.i unwind label %bb.j, !noalias !48

.noexc39.i.i:                                     ; preds = %.noexc38.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.y = load i32, ptr %i.x, align 4, !range !63, !noalias !60, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !60
  %.sroa.511.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.511.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !60
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8, !noalias !60
  %.sroa.56.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.67.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !noalias !60
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i, align 8, !noalias !60
  %.sroa.78.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 4 uses
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i, align 8, !noalias !60
  store i64 0, ptr %i.i, align 8, !noalias !60
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store <2 x ptr> %i.r, ptr %i.z, align 8, !noalias !60
  %.sroa.612.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.612.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.h, i64 12, i1 false), !noalias !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !60
  store ptr %i.a, ptr %i.f, align 8, !noalias !64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i32 %i.y, ptr %i.aa, align 8, !noalias !64
  %i.ab = invoke noundef ptr @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellPuEE4withNCNvMs3_B6_BF_7replace0B1s_ECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0, ptr noundef nonnull align 8 %i.i)
          to label %bb.c unwind label %bb.f, !noalias !67

bb.c:                                             ; preds = %.noexc39.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !64
  store ptr %i.ab, ptr %i.e, align 8, !noalias !64
  %i.ac = invoke noundef i32 @_RNvCshbKHpCRGxgC_16deltalake_derive19derive_delta_config(i32 noundef range(i32 1, 0) %i.y)
          to label %_RNCNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB6_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionB10_ENCNCINvMsg_B6_INtB6_6ClientNtBa_11TokenStreamB2q_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00E00B2X_.exit.i.i.i.i.i.i unwind label %bb.d, !noalias !67

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RNvXNvNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.thread.i.i.i.i.i unwind label %bb.e, !noalias !67

_RNCNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB6_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionB10_ENCNCINvMsg_B6_INtB6_6ClientNtBa_11TokenStreamB2q_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00E00B2X_.exit.i.i.i.i.i.i: ; preds = %bb.c
  invoke void @_RNvXNvNtNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.h unwind label %bb.g, !noalias !67

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !67
  unreachable

bb.f:                                             ; preds = %.noexc39.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RNvXs0_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.aa)
          to label %.thread.i.i.i.i.i unwind label %bb.e, !noalias !67

bb.g:                                             ; preds = %_RNCNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB6_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionB10_ENCNCINvMsg_B6_INtB6_6ClientNtBa_11TokenStreamB2q_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00E00B2X_.exit.i.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread.i.i.i.i.i

bb.h:                                             ; preds = %_RNCNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB6_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionB10_ENCNCINvMsg_B6_INtB6_6ClientNtBa_11TokenStreamB2q_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00E00B2X_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.511.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !60
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !60
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8, !alias.scope !75, !noalias !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !alias.scope !75, !noalias !60
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !75, !noalias !60
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !75, !noalias !60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !76, !nonnull !9, !noundef !9
  call void %i.ai(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d) #27, !noalias !77, !inline_history !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !60
  store i64 0, ptr %i.u, align 8, !noalias !60
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !85
  %i.aj = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !87, !noalias !88, !noundef !9
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB1e_11TokenStreamINtNtB9_6option6OptionB28_ENCNCINvMsg_B1e_INtB1e_6ClientNtB1i_11TokenStreamB3l_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3T_.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !88
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8, !alias.scope !87, !noalias !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !alias.scope !87, !noalias !88
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !87, !noalias !88
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !87, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !89
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !noalias !89, !nonnull !9, !noundef !9
  call void %i.am(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, i64 noundef 1) #27, !noalias !90, !inline_history !91
  %.sroa.3.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i, align 8, !noalias !88, !nonnull !9, !noundef !9
  call void %.sroa.3.0.copyload.i.i.i.i.i(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.q) #27, !noalias !92, !inline_history !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !89
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !87, !noalias !88
  br label %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB1e_11TokenStreamINtNtB9_6option6OptionB28_ENCNCINvMsg_B1e_INtB1e_6ClientNtB1i_11TokenStreamB3l_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3T_.exit.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.g, %bb.f, %bb.d
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.af, %bb.f ], [ %i.ad, %bb.d ]
  %.sroa.32.0..sroa.511.0..sroa_idx.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.32.0.copyload.i.i.i = load ptr, ptr %.sroa.32.0..sroa.511.0..sroa_idx.i.i.sroa_idx.i.i.i, align 8, !noalias !60, !nonnull !9, !noundef !9
  call void %.sroa.32.0.copyload.i.i.i(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %.sroa.511.0..sroa_idx.i.i.i.i.i) #27, !noalias !67, !inline_history !94
  br label %.body.i.i

_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB1e_11TokenStreamINtNtB9_6option6OptionB28_ENCNCINvMsg_B1e_INtB1e_6ClientNtB1i_11TokenStreamB3l_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3T_.exit.i.i.i: ; preds = %bb.i, %bb.h
  %i.an = phi i64 [ 0, %bb.h ], [ %.pre.i.i.i.i.i.i.i, %bb.i ] ; 2 uses
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !87, !noalias !88, !noundef !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 0, ptr %i.ap, align 1, !noalias !90
  %i.aq = add i64 %i.an, 1
  store i64 %i.aq, ptr %i.u, align 8, !alias.scope !87, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !85
  invoke void @_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges3_1__INtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB4_6client11TokenStreamEINtNtB4_3rpc6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive(i32 noundef %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.q, ptr noalias noundef nonnull %i.a)
          to label %bb.l unwind label %bb.j, !noalias !95

bb.j:                                             ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB1e_11TokenStreamINtNtB9_6option6OptionB28_ENCNCINvMsg_B1e_INtB1e_6ClientNtB1i_11TokenStreamB3l_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3T_.exit.i.i.i, %.noexc38.i.i, %.noexc37.i.i, %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %.thread.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %eh.lpad-body.i.i.i.i.i, %.thread.i.i.i.i.i ]
  %i.as = extractvalue { ptr, i32 } %eh.lpad-body.i.i, 0
  %i.at = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.as)
          to label %bb.m unwind label %bb.k, !noalias !95 ; 2 uses

bb.k:                                             ; preds = %.body.i.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #29, !noalias !95
  unreachable

bb.l:                                             ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB1e_11TokenStreamINtNtB9_6option6OptionB28_ENCNCINvMsg_B1e_INtB1e_6ClientNtB1i_11TokenStreamB3l_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3T_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !57
  br label %bb.n

bb.m:                                             ; preds = %.body.i.i
  %i.av = extractvalue { ptr, ptr } %i.at, 0
  %i.aw = extractvalue { ptr, ptr } %i.at, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !48
  invoke void @_RNvXse_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcNtB5_12PanicMessageINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB18_3any3AnyNtNtB18_6marker4SendEL_EE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw)
          to label %bb.o unwind label %bb.u, !noalias !95

bb.n:                                             ; preds = %_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive.exit.i.i, %bb.l
  invoke void @_RNvMs0_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6symbolNtB5_6Symbol14invalidate_all()
          to label %bb.v unwind label %bb.u, !noalias !95

bb.o:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.p, align 8, !noalias !48 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.542.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.542.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 7 uses
  store i64 0, ptr %i.ax, align 8, !noalias !48
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775805
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %.not.i.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !102
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !105, !noalias !106, !noundef !9
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !106
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8, !alias.scope !105, !noalias !106
  %.sroa.6.0..sroa_idx.i.i35.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !alias.scope !105, !noalias !106
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i.i35.i.i, align 8, !alias.scope !105, !noalias !106
  %.sroa.7.0..sroa_idx.i.i36.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i.i36.i.i, align 8, !alias.scope !105, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !107
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !107, !nonnull !9, !noundef !9
  call void %i.bc(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.m, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.n, i64 noundef 1) #27, !noalias !108, !inline_history !109
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i36.i.i, align 8, !noalias !106, !nonnull !9, !noundef !9
  call void %.sroa.3.0.copyload.i.i(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.q) #27, !noalias !110, !inline_history !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !107
  %.pre.i.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !105, !noalias !106
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !102
  %i.bd = load i64, ptr %i.ay, align 8, !alias.scope !115, !noalias !106, !noundef !9
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.s, label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !106
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8, !alias.scope !115, !noalias !106
  %.sroa.6.0..sroa_idx.i4.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !alias.scope !115, !noalias !106
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i4.i.i.i, align 8, !alias.scope !115, !noalias !106
  %.sroa.7.0..sroa_idx.i5.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i5.i.i.i, align 8, !alias.scope !115, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !116
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !116, !nonnull !9, !noundef !9
  call void %i.bg(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.k, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.l, i64 noundef 1) #27, !noalias !117, !inline_history !109
  %.sroa.345.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i5.i.i.i, align 8, !noalias !106, !nonnull !9, !noundef !9
  call void %.sroa.345.0.copyload.i.i(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.q) #27, !noalias !110, !inline_history !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !116
  %.pre.i6.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !115, !noalias !106
  br label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i

_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i: ; preds = %bb.s, %bb.r
  %i.bh = phi i64 [ 0, %bb.r ], [ %.pre.i6.i.i.i, %bb.s ] ; 2 uses
  %i.bi = load ptr, ptr %i.q, align 8, !alias.scope !115, !noalias !106, !noundef !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store i8 0, ptr %i.bj, align 1, !noalias !117
  %i.bk = add i64 %i.bh, 1
  store i64 %i.bk, ptr %i.ax, align 8, !alias.scope !115, !noalias !106
end_hunk_0
