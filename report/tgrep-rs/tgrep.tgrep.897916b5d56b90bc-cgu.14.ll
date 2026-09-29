Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.14?download=true
inline.NumInlined: 937
inline.NumDeleted: 682
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callB1n_NCINvMsk_NtB1r_3vecINtB49_3VecB1n_E14extend_trustedBN_E0E0EB26_:bb.a

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.n, %bb.l
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.ac, %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !800
  br label %bb.j

.sink.split.i.i.i:                                ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i17.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i
  %.sink.i.i.i = phi ptr [ %i.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i17.i.i.i ], [ %i.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sink.i.i.i, i64 24, i1 false), !noalias !800
  br label %bb.s

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !800
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i17.i.i.i unwind label %bb.o, !noalias !803

bb.o:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body18.i.i.i unwind label %bb.p, !noalias !803

bb.p:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !803
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i17.i.i.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.sink.split.i.i.i unwind label %bb.q, !noalias !803

bb.q:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i17.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i.i.i

.body18.i.i.i:                                    ; preds = %bb.q, %bb.o
  %eh.lpad-body19.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.q ], [ %i.af, %bb.o ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !800
  br label %bb.j

bb.r:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !803
  unreachable

bb.s:                                             ; preds = %.sink.split.i.i.i, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !799
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !804
  %i.ak = add i64 %.val10.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.al = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.am = icmp eq i64 %i.al, %i.o
  br i1 %i.am, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_BQ_uNCNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns0NCINvNvB1t_8for_each4callBQ_NCINvMsk_NtBU_3vecINtB4o_3VecBQ_E14extend_trustedINtB2j_3MapBF_B2V_EE0E0E0EB31_.exit, label %bb.d

bb.t:                                             ; preds = %bb.j, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.p, %bb.c ], [ %.pn.i.i.i, %bb.j ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !801
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_BQ_uNCNvNtCsbNLsQi0JuJ4_5tgrep8matching16combine_patterns0NCINvNvB1t_8for_each4callBQ_NCINvMsk_NtBU_3vecINtB4o_3VecBQ_E14extend_trustedINtB2j_3MapBF_B2V_EE0E0E0EB31_.exit: ; preds = %bb.s, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ak, %bb.s ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !801
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENvYRB1n_INtNtBc_7convert4IntoNtNtCs5Xr050g3D4S_3std4path7PathBufE4intoENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB39_8for_each4callB2t_NCINvMsk_NtB1r_3vecINtB4p_3VecB2t_E14extend_trustedBN_E0E0ECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_NtNtCs5Xr050g3D4S_3std4path7PathBufuNvYB2N_INtNtBb_7convert4IntoB2R_E4intoNCINvNvB1t_8for_each4callB2R_NCINvMsk_NtBU_3vecINtB4F_3VecB2R_E14extend_trustedINtB2j_3MapBF_B3r_EE0E0E0ECsbNLsQi0JuJ4_5tgrep.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.s, %bb.f ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.f ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val15.i = load ptr, ptr %i.j, align 8, !noalias !822, !nonnull !6, !noundef !6
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val16.i = load i64, ptr %i.k, align 8, !noalias !822, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !823
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val16.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !822

.noexc.i:                                         ; preds = %bb.c
  %i.l = load i64, ptr %i.a, align 8, !range !5, !noalias !823, !noundef !6
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = load i64, ptr %i.g, align 8, !range !15, !noalias !823, !noundef !6 ; 3 uses
  br i1 %i.m, label %bb.d, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i, !prof !7

bb.d:                                             ; preds = %.noexc.i
  %i.o = load i64, ptr %i.h, align 8, !noalias !823
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.o) #30
          to label %.noexc17.i unwind label %.loopexit.split-lp.i, !noalias !822

.noexc17.i:                                       ; preds = %bb.d
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i: ; preds = %.noexc.i
  %i.p = load ptr, ptr %i.h, align 8, !noalias !823, !nonnull !6, !noundef !6 ; 2 uses
  %i.q = icmp ule i64 %.val16.i, %i.n
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !823
  %.not.i.i.i.i.i.i = icmp eq i64 %.val16.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %.val15.i, i64 range(i64 0, -9223372036854775808) %.val16.i, i1 false), !noalias !824
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 3 uses
  store i64 %i.n, ptr %i.r, align 8, !noalias !825
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.p, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !825
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val16.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !825
  %i.s = add i64 %.val10.i, 1                     ; 2 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.f
  br i1 %i.u, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_NtNtCs5Xr050g3D4S_3std4path7PathBufuNvYB2N_INtNtBb_7convert4IntoB2R_E4intoNCINvNvB1t_8for_each4callB2R_NCINvMsk_NtBU_3vecINtB4F_3VecB2R_E14extend_trustedINtB2j_3MapBF_B3r_EE0E0E0ECsbNLsQi0JuJ4_5tgrep.exit, label %bb.c

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !822
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_NtNtCs5Xr050g3D4S_3std4path7PathBufuNvYB2N_INtNtBb_7convert4IntoB2R_E4intoNCINvNvB1t_8for_each4callB2R_NCINvMsk_NtBU_3vecINtB4F_3VecB2R_E14extend_trustedINtB2j_3MapBF_B3r_EE0E0E0ECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.f, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.s, %bb.f ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !822
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTjjEENCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB1D_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB1F_5serve18collect_match_rows0E00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3I_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4V_3VecjE14extend_trustedBN_E0E0EB1F_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB2w_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2y_5serve18collect_match_rows0E00NCINvNvBV_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB58_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0EB2y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 4                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 240
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %3 = and i64 %i.d, -16
  %i.i = getelementptr i8, ptr %0, i64 %3
  %scevgep3 = getelementptr i8, ptr %i.i, i64 -8
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.j = and i64 %i.e, 3                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 4, i64 %i.j
  %n.vec = sub nsw i64 %i.e, %i.l                 ; 3 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %wide.vec = load <4 x i64>, ptr %i.o, align 8, !alias.scope !839, !noalias !840
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec4 = load <4 x i64>, ptr %i.q, align 8, !alias.scope !839, !noalias !840
  %strided.vec5 = shufflevector <4 x i64> %wide.vec4, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.r = add <2 x i64> %strided.vec, splat (i64 1)
  %i.s = add <2 x i64> %strided.vec5, splat (i64 1)
  %i.t = getelementptr [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x i64> %i.r, ptr %i.t, align 8, !alias.scope !841, !noalias !842
  store <2 x i64> %i.s, ptr %i.u, align 8, !alias.scope !841, !noalias !842
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %scalar.ph.preheader, label %vector.body, !llvm.loop !837

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %vector.body ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 5 uses
  %i.w = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %.neg = add nsw i64 %.sroa.01.0.i.ph, 1
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load i64, ptr %i.x, align 8, !noalias !840, !noundef !6
  %i.y = add i64 %.val15.i.prol, 1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store i64 %i.y, ptr %i.z, align 8, !noalias !843
  %i.aa = add i64 %.ph, 1                         ; 2 uses
  %i.ab = add nuw nsw i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = icmp eq i64 %i.e, %.neg
  br i1 %i.ac, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB2w_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2y_5serve18collect_match_rows0E00NCINvNvBV_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB58_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0EB2y_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ad = phi i64 [ %i.am, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.an, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i64, ptr %i.ae, align 8, !noalias !840, !noundef !6
  %i.af = add i64 %.val15.i, 1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  store i64 %i.af, ptr %i.ag, align 8, !noalias !843
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val15.i.1 = load i64, ptr %i.ai, align 8, !noalias !840, !noundef !6
  %i.aj = add i64 %.val15.i.1, 1
  %i.ak = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  store i64 %i.aj, ptr %i.al, align 8, !noalias !843
  %i.am = add i64 %i.ad, 2                        ; 2 uses
  %i.an = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.e
  br i1 %i.ao, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB2w_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2y_5serve18collect_match_rows0E00NCINvNvBV_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB58_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0EB2y_.exit, label %scalar.ph, !llvm.loop !838

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB2w_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2y_5serve18collect_match_rows0E00NCINvNvBV_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB58_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0EB2y_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.am, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !840
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTjjEENCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB1D_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB1F_5serve18collect_match_rows0E0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3L_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4Y_3VecjE14extend_trustedBN_E0E0EB1F_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB2w_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2y_5serve18collect_match_rows0E0s0_0NCINvNvBV_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5b_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0EB2y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 4                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 240
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %3 = and i64 %i.d, -16
  %i.i = getelementptr i8, ptr %0, i64 %3
  %scevgep3 = getelementptr i8, ptr %i.i, i64 -8
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.j = and i64 %i.e, 3                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 4, i64 %i.j
  %n.vec = sub nsw i64 %i.e, %i.l                 ; 3 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %wide.vec = load <4 x i64>, ptr %i.o, align 8, !alias.scope !857, !noalias !858
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec4 = load <4 x i64>, ptr %i.q, align 8, !alias.scope !857, !noalias !858
  %strided.vec5 = shufflevector <4 x i64> %wide.vec4, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.r = add <2 x i64> %strided.vec, splat (i64 1)
  %i.s = add <2 x i64> %strided.vec5, splat (i64 1)
  %i.t = getelementptr [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x i64> %i.r, ptr %i.t, align 8, !alias.scope !859, !noalias !860
  store <2 x i64> %i.s, ptr %i.u, align 8, !alias.scope !859, !noalias !860
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %scalar.ph.preheader, label %vector.body, !llvm.loop !855

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %vector.body ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 5 uses
  %i.w = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %.neg = add nsw i64 %.sroa.01.0.i.ph, 1
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load i64, ptr %i.x, align 8, !noalias !858, !noundef !6
  %i.y = add i64 %.val15.i.prol, 1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store i64 %i.y, ptr %i.z, align 8, !noalias !861
  %i.aa = add i64 %.ph, 1                         ; 2 uses
  %i.ab = add nuw nsw i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = icmp eq i64 %i.e, %.neg
  br i1 %i.ac, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB2w_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2y_5serve18collect_match_rows0E0s0_0NCINvNvBV_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5b_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0EB2y_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ad = phi i64 [ %i.am, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.an, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i64, ptr %i.ae, align 8, !noalias !858, !noundef !6
  %i.af = add i64 %.val15.i, 1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  store i64 %i.af, ptr %i.ag, align 8, !noalias !861
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val15.i.1 = load i64, ptr %i.ai, align 8, !noalias !858, !noundef !6
  %i.aj = add i64 %.val15.i.1, 1
  %i.ak = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  store i64 %i.aj, ptr %i.al, align 8, !noalias !861
  %i.am = add i64 %i.ad, 2                        ; 2 uses
  %i.an = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.e
  br i1 %i.ao, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB2w_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2y_5serve18collect_match_rows0E0s0_0NCINvNvBV_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5b_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0EB2y_.exit, label %scalar.ph, !llvm.loop !856

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB2w_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2y_5serve18collect_match_rows0E0s0_0NCINvNvBV_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5b_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0EB2y_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.am, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !858
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTjjEENCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB1D_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB1F_6search19search_decoded_files0_0E00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3N_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB50_3VecjE14extend_trustedBN_E0E0EB1F_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB2w_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2y_6search19search_decoded_files0_0E00NCINvNvBV_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5d_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0EB2y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 4                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 240
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %3 = and i64 %i.d, -16
  %i.i = getelementptr i8, ptr %0, i64 %3
  %scevgep3 = getelementptr i8, ptr %i.i, i64 -8
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.j = and i64 %i.e, 3                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 4, i64 %i.j
  %n.vec = sub nsw i64 %i.e, %i.l                 ; 3 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %wide.vec = load <4 x i64>, ptr %i.o, align 8, !alias.scope !875, !noalias !876
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec4 = load <4 x i64>, ptr %i.q, align 8, !alias.scope !875, !noalias !876
  %strided.vec5 = shufflevector <4 x i64> %wide.vec4, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.r = add <2 x i64> %strided.vec, splat (i64 1)
  %i.s = add <2 x i64> %strided.vec5, splat (i64 1)
  %i.t = getelementptr [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x i64> %i.r, ptr %i.t, align 8, !alias.scope !877, !noalias !878
  store <2 x i64> %i.s, ptr %i.u, align 8, !alias.scope !877, !noalias !878
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %scalar.ph.preheader, label %vector.body, !llvm.loop !873

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %vector.body ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 5 uses
  %i.w = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %.neg = add nsw i64 %.sroa.01.0.i.ph, 1
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load i64, ptr %i.x, align 8, !noalias !876, !noundef !6
  %i.y = add i64 %.val15.i.prol, 1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store i64 %i.y, ptr %i.z, align 8, !noalias !879
  %i.aa = add i64 %.ph, 1                         ; 2 uses
  %i.ab = add nuw nsw i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = icmp eq i64 %i.e, %.neg
  br i1 %i.ac, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB2w_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2y_6search19search_decoded_files0_0E00NCINvNvBV_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5d_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0EB2y_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ad = phi i64 [ %i.am, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.an, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i64, ptr %i.ae, align 8, !noalias !876, !noundef !6
  %i.af = add i64 %.val15.i, 1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  store i64 %i.af, ptr %i.ag, align 8, !noalias !879
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val15.i.1 = load i64, ptr %i.ai, align 8, !noalias !876, !noundef !6
  %i.aj = add i64 %.val15.i.1, 1
  %i.ak = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  store i64 %i.aj, ptr %i.al, align 8, !noalias !879
  %i.am = add i64 %i.ad, 2                        ; 2 uses
  %i.an = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.e
  br i1 %i.ao, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB2w_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2y_6search19search_decoded_files0_0E00NCINvNvBV_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5d_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0EB2y_.exit, label %scalar.ph, !llvm.loop !874

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB2w_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2y_6search19search_decoded_files0_0E00NCINvNvBV_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5d_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0EB2y_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.am, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !876
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTjjEENCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB1D_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB1F_6search19search_decoded_files0_0E0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Q_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB53_3VecjE14extend_trustedBN_E0E0EB1F_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB2w_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2y_6search19search_decoded_files0_0E0s0_0NCINvNvBV_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5g_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0EB2y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 4                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 240
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %3 = and i64 %i.d, -16
  %i.i = getelementptr i8, ptr %0, i64 %3
  %scevgep3 = getelementptr i8, ptr %i.i, i64 -8
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.j = and i64 %i.e, 3                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 4, i64 %i.j
  %n.vec = sub nsw i64 %i.e, %i.l                 ; 3 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %wide.vec = load <4 x i64>, ptr %i.o, align 8, !alias.scope !893, !noalias !894
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec4 = load <4 x i64>, ptr %i.q, align 8, !alias.scope !893, !noalias !894
  %strided.vec5 = shufflevector <4 x i64> %wide.vec4, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.r = add <2 x i64> %strided.vec, splat (i64 1)
  %i.s = add <2 x i64> %strided.vec5, splat (i64 1)
  %i.t = getelementptr [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x i64> %i.r, ptr %i.t, align 8, !alias.scope !895, !noalias !896
  store <2 x i64> %i.s, ptr %i.u, align 8, !alias.scope !895, !noalias !896
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %scalar.ph.preheader, label %vector.body, !llvm.loop !891

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %vector.body ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 5 uses
  %i.w = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %.neg = add nsw i64 %.sroa.01.0.i.ph, 1
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load i64, ptr %i.x, align 8, !noalias !894, !noundef !6
  %i.y = add i64 %.val15.i.prol, 1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store i64 %i.y, ptr %i.z, align 8, !noalias !897
  %i.aa = add i64 %.ph, 1                         ; 2 uses
  %i.ab = add nuw nsw i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = icmp eq i64 %i.e, %.neg
  br i1 %i.ac, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB2w_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2y_6search19search_decoded_files0_0E0s0_0NCINvNvBV_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5g_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0EB2y_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ad = phi i64 [ %i.am, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.an, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i64, ptr %i.ae, align 8, !noalias !894, !noundef !6
  %i.af = add i64 %.val15.i, 1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  store i64 %i.af, ptr %i.ag, align 8, !noalias !897
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val15.i.1 = load i64, ptr %i.ai, align 8, !noalias !894, !noundef !6
  %i.aj = add i64 %.val15.i.1, 1
  %i.ak = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  store i64 %i.aj, ptr %i.al, align 8, !noalias !897
  %i.am = add i64 %i.ad, 2                        ; 2 uses
  %i.an = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.e
  br i1 %i.ao, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB2w_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2y_6search19search_decoded_files0_0E0s0_0NCINvNvBV_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5g_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0EB2y_.exit, label %scalar.ph, !llvm.loop !892

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNCINvMs1_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB2w_11FileMatches8for_eachNtCsjYKKaZ3qa7A_6anyhow5ErrorNCNvNtB2y_6search19search_decoded_files0_0E0s0_0NCINvNvBV_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5g_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0EB2y_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.am, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !894
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTjjEENCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve18collect_match_rows00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2n_8for_each4callAjj2_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3E_3VecB3q_E14extend_trustedBN_E0E0EB1A_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_Ajj2_uNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve18collect_match_rows00NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3U_3VecB2j_E14extend_trustedINtB1L_3MapBF_B2p_EE0E0E0EB2x_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 4                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 160
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 4           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %3 = and i64 %i.d, -16                          ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.g, i64 %3
  %scevgep3 = getelementptr i8, ptr %0, i64 %3
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 1152921504606846974      ; 4 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %index      ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x i64>, ptr %i.j, align 8, !alias.scope !911, !noalias !912
  %wide.load4 = load <2 x i64>, ptr %i.l, align 8, !alias.scope !911, !noalias !912
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.i
  %i.n = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.i
  %i.o = getelementptr i8, ptr %i.n, i64 16
  store <2 x i64> %wide.load, ptr %i.m, align 8, !alias.scope !913, !noalias !914
  store <2 x i64> %wide.load4, ptr %i.o, align 8, !alias.scope !913, !noalias !914
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !909

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_Ajj2_uNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve18collect_match_rows00NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3U_3VecB2j_E14extend_trustedINtB1L_3MapBF_B2p_EE0E0E0EB2x_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.h, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.q = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.ph
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  %i.t = load <2 x i64>, ptr %i.r, align 8, !noalias !912
  store <2 x i64> %i.t, ptr %i.s, align 8, !noalias !915
  %i.u = add i64 %.ph, 1                          ; 2 uses
  %i.v = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %i.w = icmp eq i64 %i.e, %.neg
  br i1 %i.w, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_Ajj2_uNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve18collect_match_rows00NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3U_3VecB2j_E14extend_trustedINtB1L_3MapBF_B2p_EE0E0E0EB2x_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.x = phi i64 [ %i.ag, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ah, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.x
  %i.aa = load <2 x i64>, ptr %i.y, align 8, !noalias !912
  store <2 x i64> %i.aa, ptr %i.z, align 8, !noalias !915
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.x
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load <2 x i64>, ptr %i.ac, align 8, !noalias !912
  store <2 x i64> %i.af, ptr %i.ae, align 8, !noalias !915
  %i.ag = add i64 %i.x, 2                         ; 2 uses
  %i.ah = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.e
  br i1 %i.ai, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_Ajj2_uNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve18collect_match_rows00NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3U_3VecB2j_E14extend_trustedINtB1L_3MapBF_B2p_EE0E0E0EB2x_.exit, label %scalar.ph, !llvm.loop !910

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_Ajj2_uNCNCNvNtCsbNLsQi0JuJ4_5tgrep5serve18collect_match_rows00NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3U_3VecB2j_E14extend_trustedINtB1L_3MapBF_B2p_EE0E0E0EB2x_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ag, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !912
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTjjEENCNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB1A_12OutputWriter11write_match0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2C_8for_each4callNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4u_3VecB3F_E14extend_trustedBN_E0E0EB1C_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [32 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 9 uses
  %i.x = alloca [32 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 9 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.4.i.i = alloca [31 x i8], align 1        ; 4 uses
  %i.ab = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_NtNtCs6MoqnCnVQOT_10serde_json5value5ValueuNCNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB38_12OutputWriter11write_match0NCINvNvBV_8for_each4callB2j_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4K_3VecB2j_E14extend_trustedINtB1L_3MapBF_B30_EE0E0E0EB3a_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !6, !align !14, !noundef !6 ; 2 uses
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai
  %i.ak = lshr exact i64 %i.aj, 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.614.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.418.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.619.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.421.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.622.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 7
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.ba, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.dz, %bb.ba ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ea, %bb.ba ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load i64, ptr %i.ax, align 8, !noalias !945, !noundef !6 ; 8 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %.val16.i = load i64, ptr %i.ay, align 8, !noalias !945, !noundef !6 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !946
  store i64 %.val15.i, ptr %i.aa, align 8, !noalias !946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !946
  store i64 %.val16.i, ptr %i.z, align 8, !noalias !946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !946
  store ptr null, ptr %i.y, align 8, !noalias !946
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !946
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %.loopexit.i, !noalias !946

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i, %.body28.thread.i.i.i, %.body.thread.i.i.i, %.body.i.i.i, %.body28.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit34.i.i.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn26.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i ], [ %i.cs, %.body28.i.i.i ], [ %i.ci, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit34.i.i.i ], [ %eh.lpad-body23.i.i.i, %.body.thread.i.i.i ], [ %i.dk, %.body.i.i.i ], [ %eh.lpad-body2918.i.i.i, %.body28.thread.i.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.bb unwind label %bb.au, !noalias !946

.loopexit.i:                                      ; preds = %bb.at, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit38.i.i.i, %bb.ai, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit36.i.i.i, %bb.x, %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i

.loopexit.split-lp.i:                             ; preds = %.invoke.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i

bb.d:                                             ; preds = %bb.c
  %i.az = load i64, ptr %i.g, align 8, !range !5, !noalias !946, !noundef !6
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = load i64, ptr %i.al, align 8, !range !15, !noalias !946, !noundef !6 ; 3 uses
  br i1 %i.ba, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.bc = load i64, ptr %i.am, align 8, !noalias !946
  br label %.invoke.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.bd = load ptr, ptr %i.am, align 8, !noalias !946, !nonnull !6, !noundef !6 ; 2 uses
end_hunk_0
