inline.NumInlined: 124
inline.NumDeleted: 72
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1Z_5azure14MicrosoftAzureNtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3V_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB72_8for_each4callB5V_NCINvMsj_NtB4s_3vecINtB8i_3VecB5V_E14extend_trustedBN_E0E0ECsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !82, !noundef !3
  invoke void %i.av(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %i.aw, ptr noundef %i.ay, i64 noundef %i.ar)
          to label %.noexc18.i unwind label %.loopexit.i, !noalias !67, !inline_history !83

.noexc18.i:                                       ; preds = %bb.h
  %i.az = sub i64 %.sroa.0.0.i.i.i.i, %i.am
  %i.ba = load ptr, ptr %i.u, align 8, !noalias !84, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.am
  store ptr %i.bb, ptr %i.u, align 8, !noalias !84
  br label %bb.j

bb.i:                                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1Z_5azure14MicrosoftAzureNtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3V_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB72_8for_each4callB5V_NCINvMsj_NtB4s_3vecINtB8i_3VecB5V_E14extend_trustedBN_E0E0ECsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.am
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = getelementptr i8, ptr null, i64 %i.bf
  store ptr %i.bg, ptr %i.u, align 8, !noalias !84
  store ptr null, ptr %i.v, align 8, !noalias !84
  store ptr @3, ptr %i.d, align 8, !noalias !84
  br label %bb.j

.invoke:                                          ; preds = %bb.d, %.noexc.i
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1Z_5azure14MicrosoftAzureNtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3V_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB72_8for_each4callB5V_NCINvMsj_NtB4s_3vecINtB8i_3VecB5V_E14extend_trustedBN_E0E0ECsa5Qem16B4JI_15deltalake_azure:bb.a
  %.sink.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.az, %.noexc18.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79
  store i64 %.sink.i.i.i.i, ptr %i.w, align 8, !noalias !84
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !85
  %i.bk = add i64 %.val15.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !67
  %i.bl = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1O_5slice4iter4IterINtNtNtB1O_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtB3H_11ObjectStore10get_ranges00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCsa5Qem16B4JI_15deltalake_azure
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1O_5slice4iter4IterINtNtNtB1O_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtB3H_11ObjectStore10get_ranges00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !86, !noundef !3
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1w_5slice4iter4IterINtNtNtB1w_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5azure14MicrosoftAzureNtB3p_11ObjectStore10get_ranges00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %0, align 8, !range !87, !noundef !3
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

end_hunk_3
begin_hunk_4_@_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsa5Qem16B4JI_15deltalake_azure:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !9, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !noalias !88
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 11, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !88
  ret i1 %i.d
}

end_hunk_4
begin_hunk_5_@_RNvXs_NtCsa5Qem16B4JI_15deltalake_azure5errorNtB4_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source:bb.a

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !alias.scope !92
  br label %_RNvXsL_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !alias.scope !92
  br label %_RNvXsL_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.f:                                             ; preds = %bb.b
end_hunk_5
begin_hunk_6_@_RNvXs_NtCsa5Qem16B4JI_15deltalake_azure5errorNtB4_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source:bb.a

bb.g:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !alias.scope !92
  br label %_RNvXsL_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.h:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !alias.scope !92
  br label %_RNvXsL_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.i:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !alias.scope !92
  br label %_RNvXsL_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.j:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !alias.scope !92
  br label %_RNvXsL_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.k:                                             ; preds = %bb.b, %bb.b
end_hunk_6
begin_hunk_7_@_RNvXs_NtCsa5Qem16B4JI_15deltalake_azure5errorNtB4_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source:bb.a

bb.l:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !alias.scope !92
  br label %_RNvXsL_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.m:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !alias.scope !92
  br label %_RNvXsL_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

_RNvXsL_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
end_hunk_7
begin_hunk_8_@_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBR_9GetResult5bytes00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceCsa5Qem16B4JI_15deltalake_azure:bb.a
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !98, !noalias !95, !noundef !3
  %i.o = invoke { i64, ptr } @_RNvXsc_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Seek4seek(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.l, i64 noundef 0, i64 noundef %i.n)
          to label %bb.b unwind label %.thread90.i, !noalias !95 ; 2 uses

.thread90.i:                                      ; preds = %bb.w, %bb.h, %bb.f, %bb.a
  %lpad.thr_comm.i = landingpad { ptr, i32 }
end_hunk_8
begin_hunk_9_@_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBR_9GetResult5bytes00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceCsa5Qem16B4JI_15deltalake_azure:bb.a

bb.c:                                             ; preds = %bb.b
  %i.r = extractvalue { i64, ptr } %i.o, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !100
  store ptr %i.r, ptr %i.b, align 8, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !100
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.w unwind label %bb.d, !noalias !104

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #22
          to label %.thread86.thread103.i unwind label %bb.e, !noalias !104

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #20, !noalias !104
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !105
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !98, !noalias !95, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !105
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.v, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.g unwind label %.thread90.i, !noalias !95

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr %i.e, align 8, !range !87, !noalias !105, !noundef !3
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !31, !noalias !105, !noundef !3 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.x, label %bb.h, label %bb.i, !prof !4

bb.h:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !105
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #23
          to label %bb.v unwind label %.thread90.i, !noalias !95

bb.i:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.aa, align 8, !noalias !105, !nonnull !3, !noundef !3
  %i.ad = icmp ule i64 %i.v, %i.z
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !105
  store i64 %i.z, ptr %i.k, align 8, !noalias !105
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.ac, ptr %i.ae, align 8, !noalias !105
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %i.af, align 8, !noalias !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !105
  %i.ag = load i32, ptr %i.l, align 8, !range !106, !alias.scope !98, !noalias !95, !noundef !3
  %i.ah = load i64, ptr %i.u, align 8, !alias.scope !98, !noalias !95, !noundef !3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  store i32 %i.ag, ptr %i.ai, align 8, !noalias !105
  store i64 %i.ah, ptr %i.j, align 8, !noalias !105
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !noalias !105
  %i.ak = invoke { i64, ptr } @_RINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB2_4TakeNtNtB4_2fs4FileEECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0, i64 undef)
          to label %bb.k unwind label %bb.j, !noalias !95 ; 2 uses

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsa5Qem16B4JI_15deltalake_azure.exit.i.i, %bb.l, %bb.i
  %.sroa.035.2.i = phi i1 [ false, %bb.l ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsa5Qem16B4JI_15deltalake_azure.exit.i.i ], [ true, %bb.i ]
end_hunk_9
begin_hunk_10_@_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBR_9GetResult5bytes00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceCsa5Qem16B4JI_15deltalake_azure:bb.a

bb.k:                                             ; preds = %bb.i
  %i.am = extractvalue { i64, ptr } %i.ak, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 24, i1 false), !noalias !95
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = extractvalue { i64, ptr } %i.ak, 1
  %.sroa.057.0.copyload.i = load i64, ptr %i.i, align 8, !noalias !105
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.334.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.334.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !105
  store i64 -9223372036854775800, ptr %i.d, align 8, !noalias !105
  %.sroa.233.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.057.0.copyload.i, ptr %.sroa.233.0..sroa_idx.i, align 8, !noalias !105
  %.sroa.334.sroa.2.0..sroa.334.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.ao, ptr %.sroa.334.sroa.2.0..sroa.334.0..sroa_idx.sroa_idx.i, align 8, !noalias !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !105
  invoke void @_RNvXNtCsjyY8HP3IvQ6_12object_store5localNtB4_5ErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.d)
          to label %bb.q unwind label %bb.j, !noalias !95

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsa5Qem16B4JI_15deltalake_azure.exit.i.i unwind label %bb.n, !noalias !95

bb.n:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.u unwind label %bb.o, !noalias !95

bb.o:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #20, !noalias !95
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsa5Qem16B4JI_15deltalake_azure.exit.i.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.p unwind label %bb.j, !noalias !95

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsa5Qem16B4JI_15deltalake_azure.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !105
  %.val67.i = load i32, ptr %i.ai, align 8, !range !106, !noalias !105, !noundef !3
  %i.as = call noundef i32 @close(i32 noundef %.val67.i) #21, !noalias !95 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !105
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsE_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.at, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !105
  store i64 -9223372036854775790, ptr %0, align 8, !alias.scope !95, !noalias !98
  br label %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Csa5Qem16B4JI_15deltalake_azure.exit.sink.split

bb.q:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !105
  %.val66.i = load i32, ptr %i.ai, align 8, !range !106, !noalias !105, !noundef !3
  %i.au = call noundef i32 @close(i32 noundef %.val66.i) #21, !noalias !95 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !105
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsa5Qem16B4JI_15deltalake_azure.exit.i unwind label %bb.r, !noalias !95

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ac unwind label %bb.s, !noalias !95

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsa5Qem16B4JI_15deltalake_azure.exit.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
end_hunk_10
begin_hunk_11_@_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBR_9GetResult5bytes00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceCsa5Qem16B4JI_15deltalake_azure:bb.a
bb.s:                                             ; preds = %bb.r
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #20, !noalias !95
  unreachable

bb.t:                                             ; preds = %bb.aa, %bb.u
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #20, !noalias !95
  unreachable

bb.u:                                             ; preds = %bb.n, %bb.j
  %.sroa.035.2.lpad-body.i = phi i1 [ %.sroa.035.2.i, %bb.j ], [ false, %bb.n ]
  %eh.lpad-body70.i = phi { ptr, i32 } [ %i.al, %bb.j ], [ %i.aq, %bb.n ] ; 2 uses
  %.val68.i = load i32, ptr %i.ai, align 8, !range !106, !noalias !105, !noundef !3
  %i.ay = call noundef i32 @close(i32 noundef %.val68.i) #21, !noalias !95 ; 0 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(24) %i.k) #22
          to label %.thread86.i unwind label %bb.t, !noalias !95

bb.v:                                             ; preds = %bb.h
  unreachable

bb.w:                                             ; preds = %bb.c
  %.sroa.4.8.copyload.i = load i64, ptr %i.a, align 8, !noalias !107
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.8..sroa_idx.i, i64 16, i1 false), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !100
  store i64 -9223372036854775795, ptr %i.g, align 8, !noalias !105
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.4.8.copyload.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !105
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.r, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !105
  invoke void @_RNvXNtCsjyY8HP3IvQ6_12object_store5localNtB4_5ErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.g)
          to label %bb.x unwind label %.thread90.i, !noalias !95

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !105
  %.val65.i = load i32, ptr %i.l, align 8, !range !106, !alias.scope !98, !noalias !95, !noundef !3
  %i.az = call noundef i32 @close(i32 noundef %.val65.i) #21, !noalias !95 ; 0 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsa5Qem16B4JI_15deltalake_azure.exit.i unwind label %bb.y, !noalias !95

bb.y:                                             ; preds = %bb.x
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ac unwind label %bb.z, !noalias !95

bb.z:                                             ; preds = %bb.y
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #20, !noalias !95
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsa5Qem16B4JI_15deltalake_azure.exit.i: ; preds = %bb.x
end_hunk_11
begin_hunk_12_@_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBR_9GetResult5bytes00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceCsa5Qem16B4JI_15deltalake_azure:bb.a

.thread86.thread103.i:                            ; preds = %bb.d, %.thread90.i
  %eh.lpad-body85.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread90.i ], [ %i.s, %bb.d ]
  %.val.i = load i32, ptr %i.l, align 8, !range !106, !alias.scope !98, !noalias !95, !noundef !3
  %i.bc = call noundef i32 @close(i32 noundef %.val.i) #21, !noalias !95 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.thread86.thread103.i, %.thread86.i
  %.pn6180106.i = phi { ptr, i32 } [ %eh.lpad-body85.i, %.thread86.thread103.i ], [ %eh.lpad-body70.i, %.thread86.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(48) %1) #22
          to label %bb.ac unwind label %bb.t, !noalias !95

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsa5Qem16B4JI_15deltalake_azure.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsa5Qem16B4JI_15deltalake_azure.exit.i, %bb.p
  %i.bd = landingpad { ptr, i32 }
end_hunk_12
begin_hunk_13_@_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBR_9GetResult5bytes00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceCsa5Qem16B4JI_15deltalake_azure:bb.a
  br label %bb.ac

_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Csa5Qem16B4JI_15deltalake_azure.exit.sink.split: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsa5Qem16B4JI_15deltalake_azure.exit.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !105
  br label %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Csa5Qem16B4JI_15deltalake_azure.exit

_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Csa5Qem16B4JI_15deltalake_azure.exit: ; preds = %_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Csa5Qem16B4JI_15deltalake_azure.exit.sink.split, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsa5Qem16B4JI_15deltalake_azure.exit.i
end_hunk_13
begin_hunk_14_@llvm.memset.p0.i64
!80 = distinct !{!80, !81, !"_RINvMNtCs9Ct3XQYJhun_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!81 = distinct !{!81, !"_RINvMNtCs9Ct3XQYJhun_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECsa5Qem16B4JI_15deltalake_azure"}
!82 = !{!80, !74, !75, !68}
!83 = distinct !{null}
!84 = !{!75, !65, !68}
!85 = !{!75, !68}
!86 = !{i8 0, i8 2}
!87 = !{i64 0, i64 2}
!88 = !{!89, !91}
!89 = distinct !{!89, !90, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt: argument 0"}
!90 = distinct !{!90, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt"}
!91 = distinct !{!91, !90, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt: argument 1"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_RNvXsL_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source: argument 0"}
!94 = distinct !{!94, !"_RNvXsL_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Csa5Qem16B4JI_15deltalake_azure: argument 0"}
!97 = distinct !{!97, !"_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Csa5Qem16B4JI_15deltalake_azure"}
!98 = !{!99}
!99 = distinct !{!99, !97, !"_RNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB9_9GetResult5bytes00Csa5Qem16B4JI_15deltalake_azure: argument 1"}
!100 = !{!101, !103, !96, !99}
!101 = distinct !{!101, !102, !"_RNCNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBb_9GetResult5bytes000Csa5Qem16B4JI_15deltalake_azure: argument 0"}
!102 = distinct !{!102, !"_RNCNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBb_9GetResult5bytes000Csa5Qem16B4JI_15deltalake_azure"}
!103 = distinct !{!103, !102, !"_RNCNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBb_9GetResult5bytes000Csa5Qem16B4JI_15deltalake_azure: argument 1"}
!104 = !{!101, !96}
!105 = !{!96, !99}
!106 = !{i32 0, i32 -1}
!107 = !{!103, !96, !99}
end_hunk_14
