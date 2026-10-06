Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.13?download=true
inline.NumInlined: 920
inline.NumDeleted: 448
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterIB17_INtNtB1b_10filter_map9FilterMapIB17_IB17_INtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCINvNtCsbNLsQi0JuJ4_5tgrep6search24write_indexed_file_pathsINtB4_3VecB3b_EE0ENCB3z_s_0ENCB3z_s0_0ENCB3z_s1_0ENCB3z_s2_0EB3b_EB3E_:bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringB1L_EECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #35
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.d, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterIBC_INtNtBG_10filter_map9FilterMapIBC_IBC_INtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB22_6string6StringENCINvNtCsbNLsQi0JuJ4_5tgrep6search24write_indexed_file_pathsINtB20_3VecB2J_EE0ENCB38_s_0ENCB38_s0_0ENCB38_s1_0ENCB38_s2_0EEB3d_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENCNvNtCsbNLsQi0JuJ4_5tgrep5serve16reindex_files_ins_0EB2r_EB37_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = invoke { ptr, ptr } @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1D_8adapters6filter15filter_try_foldBX_B2B_INtNtB1F_6result6ResultB2B_zENCNvNtCsbNLsQi0JuJ4_5tgrep5serve16reindex_files_ins_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B46_EB4F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 %i.g, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENCNvNtCsbNLsQi0JuJ4_5tgrep5serve16reindex_files_ins_0EEB2J_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufE32forget_allocation_drop_remainingCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs5Xr050g3D4S_3std4path7PathBufB1L_EECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENCNvNtCsbNLsQi0JuJ4_5tgrep5serve16reindex_files_ins_0EEB2J_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds2_0EB2r_EB37_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = invoke { ptr, ptr } @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1D_8adapters6filter15filter_try_foldBX_B2B_INtNtB1F_6result6ResultB2B_zENCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds2_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B46_EB4F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 %i.g, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds2_0EEB2J_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufE32forget_allocation_drop_remainingCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs5Xr050g3D4S_3std4path7PathBufB1L_EECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5Xr050g3D4S_3std4path7PathBufENCNvNtCsbNLsQi0JuJ4_5tgrep5serve22background_index_builds2_0EEB2J_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2y_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cf, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.y ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2G_.exit
  %.sroa.021.0 = phi i8 [ %i.aw, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2G_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2G_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2F_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.val5.i = load ptr, ptr %5, align 8, !alias.scope !1123, !noalias !1124, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0B1y_(ptr nonnull %.val5.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o) #31, !noalias !1125 ; 2 uses
  %.not25.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.r, label %.preheader.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %bb.k
  br i1 %.not25.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not25.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %.preheader14.i, %bb.l
  %.sroa.01.0.i16.i = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader14.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i16.i ; 2 uses
  %6 = getelementptr i8, ptr %i.s, i64 -32
  %i.t = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0B1y_(ptr nonnull %.val5.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %6) #31, !noalias !1125
  br i1 %i.t, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2F_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.u = add nuw nsw i64 %.sroa.01.0.i16.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2F_.exit.i, label %.lr.ph.i

.lr.ph20.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i19.i = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i19.i ; 2 uses
  %7 = getelementptr i8, ptr %i.v, i64 -32
  %i.w = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0B1y_(ptr nonnull %.val5.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %7) #31, !noalias !1125
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2F_.exit.i

bb.m:                                             ; preds = %.lr.ph20.i
  %i.x = add nuw nsw i64 %.sroa.01.1.i19.i, 1     ; 2 uses
  %exitcond28.not.i = icmp eq i64 %i.x, %i.n
  br i1 %exitcond28.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2F_.exit.i, label %.lr.ph20.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2F_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph20.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.m ], [ %.sroa.01.1.i19.i, %.lr.ph20.i ], [ %.sroa.01.0.i16.i, %.lr.ph.i ], [ %i.n, %bb.l ] ; 5 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2F_.exit.i
  %i.z = lshr i64 %.sroa.0.0.i.i, 1               ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  %or.cond.not.i = and i1 %i.r, %.not.i.i.i
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value7reverseCsbNLsQi0JuJ4_5tgrep.exit.i

bb.o:                                             ; preds = %bb.i
  %i.aa = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 288230376151711744) %i.n)
  %i.ab = shl nuw nsw i64 %i.aa, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2G_.exit

bb.p:                                             ; preds = %bb.i
  %i.ac = tail call i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2I_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.ac, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2G_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value7reverseCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i, %.preheader14.i, %bb.n, %bb.j
  %.sroa.0.0.i11.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader14.i ], [ %.sroa.0.0.i374448.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i11.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2G_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ah = phi i64 [ %i.z, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i374448.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i374448.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.an, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.017.i.i.i
  %i.al = getelementptr [32 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i unwind label %bb.q, !noalias !1125

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #33, !noalias !1125
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2G_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value7reverseCsbNLsQi0JuJ4_5tgrep.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value7reverseCsbNLsQi0JuJ4_5tgrep.exit.i ], [ %i.ae, %bb.p ], [ %i.ab, %bb.o ] ; 2 uses
  %i.ao = lshr i64 %.sroa.023.0, 1
  %i.ap = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aq = sub nsw i64 %factor, %i.ao
  %i.ar = add nuw nsw i64 %i.ap, %factor
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = xor i64 %i.at, %i.as
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 false)
  %i.aw = trunc nuw nsw i64 %i.av to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit
  %.sroa.02.136 = phi i64 [ %i.ax, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !8
  %.not28 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !8 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bh ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.bg, %3
  %i.bk = trunc i64 %.sroa.023.135 to i1
  %i.bl = or i64 %i.bd, %.sroa.023.135
  %i.bm = trunc i64 %i.bl to i1
  %or.cond3.i = or i1 %i.bj, %i.bm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = trunc i64 %i.bd to i1
  br i1 %i.bn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bo = shl nuw nsw i64 %i.bg, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2I_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 288230376151711744) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2I_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 288230376151711744) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2z_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 288230376151711744) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ca = shl nuw nsw i64 %i.bg, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cb, %bb.x ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = icmp ugt i64 %i.ax, 1
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cd = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = add nuw nsw i64 %i.ce, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cg = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cg, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = or i64 %1, 1
  %i.ci = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2I_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2u_13WatchRegistry4sync0E0EB2w_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 {
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
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.co, %bb.y ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2C_13WatchRegistry4sync0E0EB2E_.exit
  %.sroa.021.0 = phi i8 [ %i.bh, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2C_13WatchRegistry4sync0E0EB2E_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2C_13WatchRegistry4sync0E0EB2E_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2B_13WatchRegistry4sync0E0EB2D_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val7.i = load ptr, ptr %i.q, align 8, !alias.scope !1137, !noalias !1138, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %.val8.i = load ptr, ptr %i.o, align 8, !alias.scope !1137, !noalias !1138
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB1u_13WatchRegistry4sync0E0B1w_(ptr nonnull %.val7.i, ptr %.val8.i) #31, !noalias !1139 ; 2 uses
  %.not28.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.r, label %.preheader.i, label %.preheader17.i

.preheader17.i:                                   ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.preheader.i.i.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %bb.l
  %.val6.i = phi ptr [ %.val5.i, %bb.l ], [ %.val7.i, %.preheader17.i ]
  %.sroa.01.0.i19.i = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader17.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i19.i
  %.val5.i = load ptr, ptr %i.s, align 8, !alias.scope !1137, !noalias !1138, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.t = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB1u_13WatchRegistry4sync0E0B1w_(ptr nonnull %.val5.i, ptr nonnull %.val6.i) #31, !noalias !1139
  br i1 %i.t, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2B_13WatchRegistry4sync0E0EB2D_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.u = add nuw nsw i64 %.sroa.01.0.i19.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2B_13WatchRegistry4sync0E0EB2D_.exit.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.preheader.i, %bb.m
  %.val4.i = phi ptr [ %.val.i, %bb.m ], [ %.val7.i, %.preheader.i ]
  %.sroa.01.1.i22.i = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i22.i
  %.val.i = load ptr, ptr %i.v, align 8, !alias.scope !1137, !noalias !1138, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.w = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB1u_13WatchRegistry4sync0E0B1w_(ptr nonnull %.val.i, ptr nonnull %.val4.i) #31, !noalias !1139
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2B_13WatchRegistry4sync0E0EB2D_.exit.i

bb.m:                                             ; preds = %.lr.ph23.i
  %i.x = add nuw nsw i64 %.sroa.01.1.i22.i, 1     ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.x, %i.n
  br i1 %exitcond31.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2B_13WatchRegistry4sync0E0EB2D_.exit.i, label %.lr.ph23.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2B_13WatchRegistry4sync0E0EB2D_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph23.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.m ], [ %.sroa.01.1.i22.i, %.lr.ph23.i ], [ %.sroa.01.0.i19.i, %.lr.ph.i ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2B_13WatchRegistry4sync0E0EB2D_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i

bb.o:                                             ; preds = %bb.i
  %i.z = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 1152921504606846976) %i.n)
  %i.aa = shl nuw nsw i64 %i.z, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2C_13WatchRegistry4sync0E0EB2E_.exit

bb.p:                                             ; preds = %bb.i
  %i.ab = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2E_13WatchRegistry4sync0E0EB2G_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.ab, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  %i.ac = shl nuw nsw i64 %i.ab, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2C_13WatchRegistry4sync0E0EB2E_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i, %middle.block, %.preheader17.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i14.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader17.i ], [ %.sroa.0.0.i424953.i, %middle.block ], [ %.sroa.0.0.i424953.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i ]
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2C_13WatchRegistry4sync0E0EB2E_.exit

bb.q:                                             ; preds = %bb.n
  %i.ag = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.preheader.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.ah = phi i64 [ %i.ag, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i424953.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i424953.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 4
  br i1 %min.iters.check, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.preheader.i.i.i
  %n.vec = and i64 %i.ah, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = xor i64 %index, -1
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.al = getelementptr [8 x i8], ptr %i.ai, i64 %i.aj ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !1142, !noalias !1143
  %wide.load54 = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !1142, !noalias !1143
  %i.an = getelementptr i8, ptr %i.al, i64 -8
  %i.ao = getelementptr i8, ptr %i.al, i64 -24
  %wide.load55 = load <2 x i64>, ptr %i.an, align 8, !alias.scope !1144, !noalias !1145
  %wide.load56 = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !1144, !noalias !1145
  %reverse = shufflevector <2 x i64> %wide.load55, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse57 = shufflevector <2 x i64> %wide.load56, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x i64> %reverse, ptr %i.ak, align 8, !alias.scope !1142, !noalias !1143
  store <2 x i64> %reverse57, ptr %i.ap, align 8, !alias.scope !1142, !noalias !1143
  %i.aq = getelementptr i8, ptr %i.al, i64 -8
  %i.ar = getelementptr i8, ptr %i.al, i64 -24
  %reverse58 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x ptr> %wide.load54, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse58, ptr %i.aq, align 8, !alias.scope !1144, !noalias !1145
  store <2 x ptr> %reverse59, ptr %i.ar, align 8, !alias.scope !1144, !noalias !1145
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i.preheader

_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.ay, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i.preheader ] ; 3 uses
  %i.at = xor i64 %.sroa.0.016.i.i.i, -1
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.ai, i64 %i.at ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !alias.scope !1142, !noalias !1143, !nonnull !8, !align !9, !noundef !8
  %i.ax = load i64, ptr %i.av, align 8, !alias.scope !1144, !noalias !1145
  store i64 %i.ax, ptr %i.au, align 8, !alias.scope !1142, !noalias !1143
  store ptr %i.aw, ptr %i.av, align 8, !alias.scope !1144, !noalias !1145
  %i.ay = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i, !llvm.loop !1136

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2C_13WatchRegistry4sync0E0EB2E_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.af, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i ], [ %i.ad, %bb.p ], [ %i.aa, %bb.o ] ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1
  %i.ba = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az
  %i.bc = add nuw nsw i64 %i.ba, %factor
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false)
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit
  %.sroa.02.136 = phi i64 [ %i.bi, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bi = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !8
  %.not28 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !8 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 5 uses
  %i.bq = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 5 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs ; 3 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.135 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.135
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bz = shl nuw nsw i64 %i.br, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bv, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2E_13WatchRegistry4sync0E0EB2G_(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 1152921504606846976) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp
  %i.cg = or i64 %i.bq, 1
  %i.ch = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2E_13WatchRegistry4sync0E0EB2G_(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 1152921504606846976) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2v_13WatchRegistry4sync0E0EB2x_(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.bp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cl = shl nuw nsw i64 %i.br, 1
  %i.cm = or disjoint i64 %i.cl, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cm, %bb.x ], [ %i.bz, %bb.t ] ; 2 uses
  %i.cn = icmp ugt i64 %i.bi, 1
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.co = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cp = lshr i64 %.sroa.018.0, 1
  %i.cq = add nuw nsw i64 %i.cp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cr, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cs = or i64 %1, 1
  %i.ct = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2E_13WatchRegistry4sync0E0EB2G_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB12_6ondisk12PostingEntryEENCINvMNtB1R_5sliceSBW_11sort_by_keyjNCINvB10_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB42_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cm, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ck, %bb.y ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4a_.exit
  %.sroa.021.0 = phi i8 [ %i.bd, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB49_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 56
  %.val7.i = load i64, ptr %i.q, align 8, !alias.scope !1150, !noalias !1151, !noundef !8 ; 4 uses
  %i.r = getelementptr i8, ptr %i.o, i64 24
  %.val8.i = load i64, ptr %i.r, align 8, !alias.scope !1150, !noalias !1151, !noundef !8 ; 2 uses
  %i.s = icmp ult i64 %.val7.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp ult i64 %.val8.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp samesign uge i64 %.val7.i, %.val8.i ; 2 uses
  %.not28.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.u, label %.preheader17.i, label %.preheader.i

.preheader17.i:                                   ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not28.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %bb.l
  %.val6.i = phi i64 [ %.val5.i, %bb.l ], [ %.val7.i, %.preheader17.i ]
  %.sroa.01.0.i19.i = phi i64 [ %i.z, %bb.l ], [ 2, %.preheader17.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i19.i
  %i.w = getelementptr i8, ptr %i.v, i64 24
  %.val5.i = load i64, ptr %i.w, align 8, !alias.scope !1150, !noalias !1151, !noundef !8 ; 3 uses
  %i.x = icmp ult i64 %.val5.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp samesign ult i64 %.val5.i, %.val6.i
  br i1 %i.y, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB49_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.z = add nuw nsw i64 %.sroa.01.0.i19.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB49_.exit.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.preheader.i, %bb.m
  %.val4.i = phi i64 [ %.val.i, %bb.m ], [ %.val7.i, %.preheader.i ]
  %.sroa.01.1.i22.i = phi i64 [ %i.ae, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i22.i
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  %.val.i = load i64, ptr %i.ab, align 8, !alias.scope !1150, !noalias !1151, !noundef !8 ; 3 uses
  %i.ac = icmp ult i64 %.val.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp samesign ult i64 %.val.i, %.val4.i
  br i1 %i.ad, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB49_.exit.i

bb.m:                                             ; preds = %.lr.ph23.i
  %i.ae = add nuw nsw i64 %.sroa.01.1.i22.i, 1    ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.ae, %i.n
  br i1 %exitcond31.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB49_.exit.i, label %.lr.ph23.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB49_.exit.i: ; preds = %bb.m, %.lr.ph23.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.l ], [ %.sroa.01.0.i19.i, %.lr.ph.i ], [ %.sroa.01.1.i22.i, %.lr.ph23.i ], [ %i.n, %bb.m ] ; 5 uses
  %i.af = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.af)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB49_.exit.i
  %i.ag = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  %or.cond.i = or i1 %i.u, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.ah = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 288230376151711744) %i.n)
  %i.ai = shl nuw nsw i64 %i.ah, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4a_.exit

bb.p:                                             ; preds = %bb.i
  %i.aj = tail call i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1b_6ondisk12PostingEntryEENCINvMNtB20_5sliceSB15_11sort_by_keyjNCINvB19_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4c_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.aj, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  %i.ak = shl nuw nsw i64 %i.aj, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4a_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i, %.preheader17.i, %bb.n, %bb.j
  %.sroa.0.0.i14.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader17.i ], [ %.sroa.0.0.i485559.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4a_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ao = phi i64 [ %i.ag, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i485559.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i485559.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.au, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aq = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.017.i.i.i
  %i.as = getelementptr [32 x i8], ptr %i.ap, i64 %i.aq
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i unwind label %bb.q, !noalias !1151

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #33, !noalias !1151
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.au = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.au, %i.ao
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4a_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseCsbNLsQi0JuJ4_5tgrep.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.an, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseCsbNLsQi0JuJ4_5tgrep.exit.i ], [ %i.al, %bb.p ], [ %i.ai, %bb.o ] ; 2 uses
  %i.av = lshr i64 %.sroa.023.0, 1
  %i.aw = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ax = sub nsw i64 %factor, %i.av
  %i.ay = add nuw i64 %i.aw, %factor
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 false)
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit
  %.sroa.02.136 = phi i64 [ %i.be, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.be = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !8
  %.not28 = icmp ult i8 %i.bg, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bi, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.be
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !8 ; 3 uses
  %i.bl = lshr i64 %i.bk, 1                       ; 5 uses
  %i.bm = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bn = add nuw i64 %i.bl, %i.bm                ; 5 uses
  %i.bo = sub i64 %.sroa.09.0, %i.bn
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bo ; 3 uses
  %i.bq = icmp samesign ugt i64 %i.bn, %3
  %i.br = trunc i64 %.sroa.023.135 to i1
  %i.bs = or i64 %i.bk, %.sroa.023.135
  %i.bt = trunc i64 %i.bs to i1
  %or.cond3.i = or i1 %i.bq, %i.bt
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bu = trunc i64 %i.bk to i1
  br i1 %i.bu, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bv = shl nuw nsw i64 %i.bn, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.br, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bw = or i64 %i.bl, 1
  %i.bx = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1b_6ondisk12PostingEntryEENCINvMNtB20_5sliceSB15_11sort_by_keyjNCINvB19_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4c_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 288230376151711744) %i.bl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %i.bl
  %i.cc = or i64 %i.bm, 1
  %i.cd = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1b_6ondisk12PostingEntryEENCINvMNtB20_5sliceSB15_11sort_by_keyjNCINvB19_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4c_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 288230376151711744) %i.bm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB13_6ondisk12PostingEntryEENCINvMNtB1S_5sliceSBX_11sort_by_keyjNCINvB11_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB43_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 288230376151711744) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i64 noundef %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ch = shl nuw nsw i64 %i.bn, 1
  %i.ci = or disjoint i64 %i.ch, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.ci, %bb.x ], [ %i.bv, %bb.t ] ; 2 uses
  %i.cj = icmp ugt i64 %i.be, 1
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ck = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cl = lshr i64 %.sroa.018.0, 1
  %i.cm = add nuw nsw i64 %i.cl, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cn = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cn, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.co = or i64 %1, 1
  %i.cp = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1b_6ondisk12PostingEntryEENCINvMNtB20_5sliceSB15_11sort_by_keyjNCINvB19_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !21, !alias.scope !1154, !noundef !8 ; 2 uses
end_hunk_0
