Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty-a9a23bbb4fda8628.ty.1965635c94f67e52-cgu.14?download=true
inline.NumInlined: 746
inline.NumDeleted: 446
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECs2bbjMbSOFjy_2ty:bb.a
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2bbjMbSOFjy_2ty.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2bbjMbSOFjy_2ty.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2bbjMbSOFjy_2ty.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2bbjMbSOFjy_2ty(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i64 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #29, !noalias !860
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %0, %1
  br i1 %i.b, label %bb.d, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16into_slice_range.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #29, !noalias !860
  unreachable

_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16into_slice_range.exit: ; preds = %bb.c
  %i.c = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %1, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs2bbjMbSOFjy_2ty(i64 noundef %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16into_slice_range.exit:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENCNvXs_CsgQD0exT44A_8clap_lexNtB3a_7RawArgsINtNtB1e_7convert4FromB1T_E4from0EB2k_ECs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !3
  %i.h = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENCNvXs_CsgQD0exT44A_8clap_lexNtB2A_7RawArgsINtNtBc_7convert4FromBX_E4from0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1K_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1K_E0INtNtBc_6result6ResultB4n_zEECs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENCNvXs_CsgQD0exT44A_8clap_lexNtB2M_7RawArgsINtNtB4_7convert4FromB19_E4from0EECs2bbjMbSOFjy_2ty.exit unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !863, !nonnull !3, !noundef !3 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !863, !nonnull !3, !noundef !3 ; 2 uses
  %i.r = ptrtoint ptr %.val1.i to i64
  %i.s = ptrtoint ptr %.val.i to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = udiv exact i64 %i.t, 24                  ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !863
  store i64 0, ptr %i.a, align 8, !noalias !863
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !863
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !863
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !863
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !alias.scope !863
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !863
  %i.w = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.w, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE32forget_allocation_drop_remainingCs2bbjMbSOFjy_2ty.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2bbjMbSOFjy_2ty.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECs2bbjMbSOFjy_2ty.exit.i.i.i
  %i.x = icmp eq i64 %i.z, %i.u
  br i1 %i.x, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE32forget_allocation_drop_remainingCs2bbjMbSOFjy_2ty.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2bbjMbSOFjy_2ty.exit.i.i
  %.sroa.0.0.i.i22 = phi i64 [ %i.z, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2bbjMbSOFjy_2ty.exit.i.i ], [ 0, %.noexc ] ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i22 ; 3 uses
  %i.z = add nuw nsw i64 %.sroa.0.0.i.i22, 1      ; 4 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECs2bbjMbSOFjy_2ty.exit.i.i.i unwind label %bb.e, !noalias !863

bb.e:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body.i.i unwind label %bb.f, !noalias !863

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !863
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECs2bbjMbSOFjy_2ty.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2bbjMbSOFjy_2ty.exit.i.i unwind label %bb.h, !noalias !863

bb.g:                                             ; preds = %.lr.ph24
  %i.ac = add i64 %.sroa.0.1.i.i23, 1             ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.u
  br i1 %i.ad, label %.body, label %.lr.ph24

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECs2bbjMbSOFjy_2ty.exit.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.aa, %bb.e ] ; 2 uses
  %i.af = icmp eq i64 %i.z, %i.u
  br i1 %i.af, label %.body, label %.lr.ph24

.lr.ph24:                                         ; preds = %.body.i.i, %bb.g
  %.sroa.0.1.i.i23 = phi i64 [ %i.ac, %bb.g ], [ %i.z, %.body.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i23
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2bbjMbSOFjy_2ty(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #30
          to label %bb.g unwind label %bb.i, !noalias !863

bb.i:                                             ; preds = %.lr.ph24
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !863
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %.body.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.g ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringB1K_EECs2bbjMbSOFjy_2ty(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %bb.b unwind label %bb.k

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE32forget_allocation_drop_remainingCs2bbjMbSOFjy_2ty.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2bbjMbSOFjy_2ty.exit.i.i, %.noexc
  store i64 %i.d, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
  ret void

bb.k:                                             ; preds = %bb.b, %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENCNvXs_CsgQD0exT44A_8clap_lexNtB2M_7RawArgsINtNtB4_7convert4FromB19_E4from0EECs2bbjMbSOFjy_2ty.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTdNtNtB6_6string6StringEENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRB2m_INtNtNtB1e_5slice4iter4IterB2m_EEs0_0EB2m_ECs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !3
  %i.h = shl i64 %i.d, 5                          ; 4 uses
  %i.i = udiv i64 %i.h, 24                        ; 2 uses
  %i.j = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB14_6string6StringEENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRB1M_INtNtNtBc_5slice4iter4IterB1M_EEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1M_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1M_E0INtNtBc_6result6ResultB4R_zEECs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRB1Y_INtNtNtB4_5slice4iter4IterB1Y_EEs0_0EECs2bbjMbSOFjy_2ty(ptr noalias noundef align 8 dereferenceable(32) %1) #30
          to label %bb.o unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.r, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !866, !nonnull !3, !noundef !3 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !866, !nonnull !3, !noundef !3 ; 2 uses
  %i.t = ptrtoint ptr %.val1.i to i64
  %i.u = ptrtoint ptr %.val.i to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 5                   ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !866
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !866
  store i64 0, ptr %i.a, align 8, !noalias !866
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !noalias !866
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !866
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !866
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !866
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !866
  %i.y = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECs2bbjMbSOFjy_2ty.exit.i.i._crit_edge, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECs2bbjMbSOFjy_2ty.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2bbjMbSOFjy_2ty.exit.i.i.i
  %i.z = icmp eq i64 %i.ab, %i.w
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECs2bbjMbSOFjy_2ty.exit.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECs2bbjMbSOFjy_2ty.exit.i.i
  %.sroa.0.0.i.i27 = phi i64 [ %i.ab, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECs2bbjMbSOFjy_2ty.exit.i.i ], [ 0, %.noexc ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i27
  %i.ab = add nuw nsw i64 %.sroa.0.0.i.i27, 1     ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2bbjMbSOFjy_2ty.exit.i.i.i unwind label %bb.e, !noalias !866

bb.e:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body.i.i unwind label %bb.f, !noalias !866

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !866
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2bbjMbSOFjy_2ty.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECs2bbjMbSOFjy_2ty.exit.i.i unwind label %bb.h, !noalias !866

bb.g:                                             ; preds = %.lr.ph29
  %i.af = add i64 %.sroa.0.1.i.i28, 1             ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.w
  br i1 %i.ag, label %.body, label %.lr.ph29

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2bbjMbSOFjy_2ty.exit.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ai = icmp eq i64 %i.ab, %i.w
  br i1 %i.ai, label %.body, label %.lr.ph29

.lr.ph29:                                         ; preds = %.body.i.i, %bb.g
  %.sroa.0.1.i.i28 = phi i64 [ %i.af, %bb.g ], [ %i.ab, %.body.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i28
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECs2bbjMbSOFjy_2ty(ptr noalias noundef align 8 dereferenceable(32) %i.aj) #30
          to label %bb.g unwind label %bb.i, !noalias !866

bb.i:                                             ; preds = %.lr.ph29
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !866
  unreachable

bb.j:                                             ; preds = %bb.d, %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %.body.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.j ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.g ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTdNtNtBI_6string6StringEB1M_EECs2bbjMbSOFjy_2ty(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %bb.b unwind label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECs2bbjMbSOFjy_2ty.exit.i.i._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECs2bbjMbSOFjy_2ty.exit.i.i, %.noexc
  %.not.i = icmp ne i64 %i.d, 0
  %i.am = mul nuw i64 %i.i, 24                    ; 4 uses
  %i.an = icmp ne i64 %i.h, %i.am
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.an, i1 false
  br i1 %.sroa.0.0.i, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECs2bbjMbSOFjy_2ty.exit.i.i._crit_edge
  %.sroa.03.0 = phi ptr [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECs2bbjMbSOFjy_2ty.exit.i.i._crit_edge ], [ %i.ar, %bb.k ]
  store i64 %i.i, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRB1Y_INtNtNtB4_5slice4iter4IterB1Y_EEs0_0EECs2bbjMbSOFjy_2ty(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECs2bbjMbSOFjy_2ty.exit.i.i._crit_edge
  %i.aq = icmp ule i64 %i.am, %i.h
  call void @llvm.assume(i1 %i.aq)
  %i.ar = call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.h, i64 noundef 8, i64 noundef range(i64 0, -15) %i.am) #32 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %.thread, !prof !867

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.am) #29
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %.body, %bb.b
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.o:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys2io11is_terminal6isatty11is_terminalNtNtNtBa_2io5stdio6StderrECs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i32 @isatty(i32 noundef 2) #32
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsjulH565TUV7_15crossbeam_deque5deque7StealerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2x_8adapters3map8map_foldBW_NtNtB1O_8registry10ThreadInfouNvMs5_B46_B44_3newNCINvNvB2r_8for_each4callB44_NCINvMsj_B8_INtB8_3VecB44_E14extend_trustedINtB3x_3MapBH_B4y_EE0E0E0ECs2bbjMbSOFjy_2ty(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not.not8 = icmp eq ptr %.promoted, %i.c
  br i1 %.not.not8, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !876, !noalias !877, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted9 = load i64, ptr %i.g, align 8, !alias.scope !876, !noalias !877
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi i64 [ %.promoted9, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !878, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.h ; 5 uses
  store ptr %i.j, ptr %i.n, align 8, !noalias !876
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 %i.l, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !876
  %i.o = getelementptr i8, ptr %i.n, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.o, i8 0, i64 14, i1 false), !noalias !879
  %i.p = getelementptr i8, ptr %i.n, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.p, i8 0, i64 10, i1 false), !noalias !879
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  store i32 0, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !876
  %i.q = add i64 %i.h, 1                          ; 2 uses
  %.not.not = icmp eq ptr %i.m, %i.c
  br i1 %.not.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store i64 %i.q, ptr %i.g, align 8, !alias.scope !876, !noalias !877
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.r = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.r, ptr %i.u, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCsjulH565TUV7_15crossbeam_deque5deque7StealerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !3, !align !9, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.w, align 8, !noundef !3
  store i64 %.val7, ptr %.val6, align 8
  resume { ptr, i32 } %i.v

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !align !9, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.x, align 8, !noundef !3
  store i64 %.val5, ptr %.val, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB1L_8adapters3map12map_try_foldBW_BW_B2J_INtNtB1N_6result6ResultB2J_zENCNvXs_CsgQD0exT44A_8clap_lexNtB4L_7RawArgsINtNtB1N_7convert4FromBH_E4from0NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0B4b_ECs2bbjMbSOFjy_2ty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
  %.not11 = icmp eq ptr %.promoted, %i.b
  br i1 %.not11, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.4.012 = phi ptr [ %i.f, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.d = phi ptr [ %i.e, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.012, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.4.012, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  store ptr %i.e, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %i.f, %._crit_edge ], [ %2, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options25ProgramSettingsDiagnosticENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2h_8adapters3map8map_foldBW_NtBY_16OptionDiagnosticuNCINvMNtB12_2dbNtB4i_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs0_0NCINvNvB2b_8for_each4callB3O_NCINvMsj_B8_INtB8_3VecB3O_E14extend_trustedINtB3h_3MapBH_B4c_EE0E0E0ECs2bbjMbSOFjy_2ty(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not.not14 = icmp eq ptr %.promoted, %i.e
  br i1 %.not.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !891, !noalias !892, !nonnull !3, !align !9, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted15 = load i64, ptr %i.j, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.val713 = phi i64 [ %.promoted15, %.lr.ph ], [ %i.s, %bb.d ] ; 3 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 3 uses
  store ptr %i.l, ptr %i.f, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !893
  invoke void @_RNvMs0_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5_25ProgramSettingsDiagnostic15into_diagnostic(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %.val.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) @2)
          to label %bb.d unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.m = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.o, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.p, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options25ProgramSettingsDiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !align !9, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.q, align 8, !noundef !3
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %i.r = getelementptr inbounds nuw [184 x i8], ptr %i.i, i64 %.val713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(184) %i.a, i64 184, i1 false), !noalias !896
  %i.s = add i64 %.val713, 1                      ; 2 uses
  store i64 %i.s, ptr %i.j, align 8, !alias.scope !897, !noalias !898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.not = icmp eq ptr %i.l, %i.e
  br i1 %.not.not, label %._crit_edge, label %bb.b
end_hunk_0
