Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/load_cargo-b2a3fa6503799efb.load_cargo.5e33c83682b377e2-cgu.08?download=true
inline.NumInlined: 157
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4sl5YdnrCxp_3vfs8file_set7FileSetECs85r3Sry2XhC_10load_cargo:bb.a
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapNtCs4sl5YdnrCxp_3vfs6FileIdNtNtB1i_8vfs_path7VfsPathNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs85r3Sry2XhC_10load_cargo.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECs85r3Sry2XhC_10load_cargo.exit.i.i
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtCs4sl5YdnrCxp_3vfs6FileIdNtNtB1l_8vfs_path7VfsPathEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootECs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !66 {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs85r3Sry2XhC_10load_cargo.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #13
          to label %common.resume unwind label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs85r3Sry2XhC_10load_cargo.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs85r3Sry2XhC_10load_cargo.exit2 unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs85r3Sry2XhC_10load_cargo.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #12
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs85r3Sry2XhC_10load_cargo.exit2: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs85r3Sry2XhC_10load_cargo.exit
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.h:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEEECs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !69 {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs85r3Sry2XhC_10load_cargo.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs85r3Sry2XhC_10load_cargo.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs85r3Sry2XhC_10load_cargo.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs85r3Sry2XhC_10load_cargo.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #13
          to label %common.resume unwind label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs85r3Sry2XhC_10load_cargo.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs85r3Sry2XhC_10load_cargo.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !range !5, !alias.scope !70, !noundef !4
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs85r3Sry2XhC_10load_cargo.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs85r3Sry2XhC_10load_cargo.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs85r3Sry2XhC_10load_cargo.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #12
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs85r3Sry2XhC_10load_cargo.exit.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs85r3Sry2XhC_10load_cargo.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs85r3Sry2XhC_10load_cargo.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs85r3Sry2XhC_10load_cargo.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs85r3Sry2XhC_10load_cargo.exit.i
  ret void

bb.h:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #12
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCshzWfHUSfYae_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs85r3Sry2XhC_10load_cargo(i64 noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !71 {
_RNvNtNtCshzWfHUSfYae_4core5slice5index16into_slice_range.exit:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterNtCs9R0CJ7nmiec_5paths10AbsPathBufEENvYNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathINtNtBc_7convert4FromB1J_E4fromENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3v_8for_each4callB2m_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4L_3VecB2m_E14extend_trustedBN_E0E0ECs85r3Sry2XhC_10load_cargo(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 !guid !72 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtCs9R0CJ7nmiec_5paths10AbsPathBufEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_NtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathuNvYB37_INtNtBb_7convert4FromB1s_E4fromNCINvNvB22_8for_each4callB37_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4Z_3VecB37_E14extend_trustedINtB2L_3MapBP_B3L_EE0E0E0ECs85r3Sry2XhC_10load_cargo(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs4sl5YdnrCxp_3vfs8file_set7FileSetEENCNvMs_Cs85r3Sry2XhC_10load_cargoNtB2Z_16SourceRootConfig9partition0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Z_8for_each4callNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootNCINvMsk_B1u_INtB1u_3VecB52_E14extend_trustedBN_E0E0EB2Z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !99 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !100 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !100 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !100
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !100, !nonnull !4, !noundef !4 ; 2 uses
  %.not.not9.i.i = icmp eq ptr %.sroa.4.0.copyload.i, %.sroa.6.0.copyload.i
  br i1 %.not.not9.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !100, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %i.h = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.i ], [ %i.at, %.loopexit.i.i ] ; 2 uses
  %i.i = phi i64 [ %i.e, %.lr.ph.i.i ], [ %i.au, %.loopexit.i.i ] ; 16 uses
  %i.j = phi ptr [ %.sroa.4.0.copyload.i, %.lr.ph.i.i ], [ %i.k, %.loopexit.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 2 uses
  %i.l = load ptr, ptr %i.f, align 8, !noalias !101, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = load i64, ptr %i.g, align 8, !noalias !101, !noundef !4 ; 2 uses
  %i.n = and i64 %i.m, 1152921504606846968        ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.n ; 7 uses
  %.not.i.i.i.i.i.i6 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i.i6, label %._crit_edge, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs85r3Sry2XhC_10load_cargo.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs85r3Sry2XhC_10load_cargo.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i8, i64 64
  %i.q = add nsw i64 %.sroa.5.0.i.i.i.i.i.i7, -8  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs85r3Sry2XhC_10load_cargo.exit.i.i.i.i.i.i

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.r = shl i64 %i.m, 3
  %.idx = and i64 %i.r, 56                        ; 7 uses
  %.not.not.not.i.not.not.i.i.i.i.i.i9 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i9, label %.loopexit.i.i, label %.lr.ph

2:                                                ; preds = %.lr.ph
  %.not.not.not.i.not.not.i.i.i.i.i.i = icmp samesign eq i64 %.idx, 8
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %2
  %3 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val2.i.i.i.i.i.i.i.1 = load i64, ptr %3, align 8, !alias.scope !102, !noalias !103, !noundef !4
  %4 = icmp eq i64 %.val2.i.i.i.i.i.i.i.1, %i.i
  br i1 %4, label %.loopexit.i.i, label %5

5:                                                ; preds = %.lr.ph.1
  %.not.not.not.i.not.not.i.i.i.i.i.i.1 = icmp samesign eq i64 %.idx, 16
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.1, label %.loopexit.i.i, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %5
  %6 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val2.i.i.i.i.i.i.i.2 = load i64, ptr %6, align 8, !alias.scope !102, !noalias !103, !noundef !4
  %7 = icmp eq i64 %.val2.i.i.i.i.i.i.i.2, %i.i
  br i1 %7, label %.loopexit.i.i, label %8

8:                                                ; preds = %.lr.ph.2
  %.not.not.not.i.not.not.i.i.i.i.i.i.2 = icmp samesign eq i64 %.idx, 24
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.2, label %.loopexit.i.i, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %8
  %9 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.val2.i.i.i.i.i.i.i.3 = load i64, ptr %9, align 8, !alias.scope !102, !noalias !103, !noundef !4
  %10 = icmp eq i64 %.val2.i.i.i.i.i.i.i.3, %i.i
  br i1 %10, label %.loopexit.i.i, label %11

11:                                               ; preds = %.lr.ph.3
  %.not.not.not.i.not.not.i.i.i.i.i.i.3 = icmp samesign eq i64 %.idx, 32
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.3, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %11
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.val2.i.i.i.i.i.i.i.4 = load i64, ptr %i.s, align 8, !alias.scope !102, !noalias !103, !noundef !4
  %.not.not.not.i.not.not.i.i.i.i.i.i.a = icmp eq i64 %.val2.i.i.i.i.i.i.i.4, %i.i
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.a, label %.loopexit.i.i, label %12

12:                                               ; preds = %bb.d
  %.not.not.not.i.not.not.i.i.i.i.i.i.4 = icmp samesign eq i64 %.idx, 40
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.4, label %.loopexit.i.i, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %12
  %13 = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.val2.i.i.i.i.i.i.i.a = load i64, ptr %13, align 8, !alias.scope !102, !noalias !103, !noundef !4
  %i.t = icmp eq i64 %.val2.i.i.i.i.i.i.i.a, %i.i
  br i1 %i.t, label %.loopexit.i.i, label %14

14:                                               ; preds = %.lr.ph.a
  %.not.not.not.i.not.not.i.i.i.i.i.i.5 = icmp samesign eq i64 %.idx, 48
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.5, label %.loopexit.i.i, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %14
  %15 = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.val2.i.i.i.i.i.i.i.6 = load i64, ptr %15, align 8, !alias.scope !102, !noalias !103, !noundef !4
  %16 = icmp eq i64 %.val2.i.i.i.i.i.i.i.6, %i.i
  %spec.select = select i1 %16, i8 0, i8 1
  br label %.loopexit.i.i

.lr.ph:                                           ; preds = %._crit_edge
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !102, !noalias !103, !noundef !4
  %17 = icmp eq i64 %.val2.i.i.i.i.i.i.i, %i.i
  br i1 %17, label %.loopexit.i.i, label %2

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs85r3Sry2XhC_10load_cargo.exit.i.i.i.i.i.i: ; preds = %bb.b, %bb.c
  %.sroa.0.05.i.i.i.i.i.i8 = phi ptr [ %i.p, %bb.c ], [ %i.l, %bb.b ] ; 9 uses
  %.sroa.5.0.i.i.i.i.i.i7 = phi i64 [ %i.q, %bb.c ], [ %i.n, %bb.b ]
  %.val11.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i.i.i8, align 8, !alias.scope !102, !noalias !104, !noundef !4
  %i.u = icmp eq i64 %.val11.i.i.i.i.i.i.i, %i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i8, i64 8
  %.val11.i.1.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !102, !noalias !104, !noundef !4
  %i.w = icmp eq i64 %.val11.i.1.i.i.i.i.i.i, %i.i
  %i.x = or i1 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i8, i64 16
  %.val11.i.2.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !102, !noalias !104, !noundef !4
  %i.z = icmp eq i64 %.val11.i.2.i.i.i.i.i.i, %i.i
  %i.aa = or i1 %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i8, i64 24
  %.val11.i.3.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !102, !noalias !104, !noundef !4
  %i.ac = icmp eq i64 %.val11.i.3.i.i.i.i.i.i, %i.i
  %i.ad = or i1 %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i8, i64 32
  %.val11.i.4.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !102, !noalias !104, !noundef !4
  %i.af = icmp eq i64 %.val11.i.4.i.i.i.i.i.i, %i.i
  %i.ag = or i1 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i8, i64 40
  %.val11.i.5.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !102, !noalias !104, !noundef !4
  %i.ai = icmp eq i64 %.val11.i.5.i.i.i.i.i.i, %i.i
  %i.aj = or i1 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i8, i64 48
  %.val11.i.6.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !102, !noalias !104, !noundef !4
  %i.al = icmp eq i64 %.val11.i.6.i.i.i.i.i.i, %i.i
  %i.am = or i1 %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i8, i64 56
  %.val11.i.7.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !102, !noalias !104, !noundef !4
  %i.ao = icmp eq i64 %.val11.i.7.i.i.i.i.i.i, %i.i
  %i.ap = or i1 %i.am, %i.ao
  br i1 %i.ap, label %.loopexit.i.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i, %bb.a
  %.sroa.52.0.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.at, %.loopexit.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !105
  store i64 %.sroa.5.0.copyload.i, ptr %i.a, align 8, !noalias !105
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.aq, align 8, !noalias !105
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4sl5YdnrCxp_3vfs8file_set7FileSetENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs4sl5YdnrCxp_3vfs8file_set7FileSetEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjB1W_ENtNtCsgIpRO4v45SJ_7base_db5input10SourceRootuNCNvMs_Cs85r3Sry2XhC_10load_cargoNtB4z_16SourceRootConfig9partition0NCINvNvB2B_8for_each4callB3J_NCINvMsk_B1d_INtB1d_3VecB3J_E14extend_trustedINtB3k_3MapBS_B4s_EE0E0E0EB4z_.exit unwind label %bb.e, !noalias !105

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.52.0.i, ptr %.sroa.0.0.copyload, align 8, !noalias !105
  resume { ptr, i32 } %i.ar

.loopexit.i.i:                                    ; preds = %.lr.ph.6, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs85r3Sry2XhC_10load_cargo.exit.i.i.i.i.i.i, %2, %.lr.ph, %.lr.ph.1, %5, %.lr.ph.2, %8, %.lr.ph.3, %11, %bb.d, %12, %.lr.ph.a, %14, %._crit_edge
  %.sroa.5.0.i.i.i.i = phi i8 [ 1, %._crit_edge ], [ 0, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECs85r3Sry2XhC_10load_cargo.exit.i.i.i.i.i.i ], [ 1, %2 ], [ 0, %.lr.ph ], [ 0, %.lr.ph.1 ], [ 1, %5 ], [ 0, %.lr.ph.2 ], [ 1, %8 ], [ 0, %.lr.ph.3 ], [ 1, %11 ], [ 0, %bb.d ], [ 1, %12 ], [ 0, %.lr.ph.a ], [ 1, %14 ], [ %spec.select, %.lr.ph.6 ]
  %i.as = getelementptr inbounds nuw [96 x i8], ptr %.sroa.5.0.copyload, i64 %i.h ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.as, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 88, i1 false), !noalias !105
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  store i8 %.sroa.5.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !106
  %i.at = add i64 %i.h, 1                         ; 2 uses
  %i.au = add i64 %i.i, 1
  %.not.not.i.i = icmp eq ptr %i.k, %.sroa.6.0.copyload.i
  br i1 %.not.not.i.i, label %._crit_edge.i.i, label %bb.b

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs4sl5YdnrCxp_3vfs8file_set7FileSetEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjB1W_ENtNtCsgIpRO4v45SJ_7base_db5input10SourceRootuNCNvMs_Cs85r3Sry2XhC_10load_cargoNtB4z_16SourceRootConfig9partition0NCINvNvB2B_8for_each4callB3J_NCINvMsk_B1d_INtB1d_3VecB3J_E14extend_trustedINtB3k_3MapBS_B4s_EE0E0E0EB4z_.exit: ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !105
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.52.0.i, ptr %.sroa.0.0.copyload, align 8, !noalias !105
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroENCNvCs85r3Sry2XhC_10load_cargo15load_proc_macros0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB34_8for_each4callNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4T_3VecB47_E14extend_trustedBN_E0E0EB2i_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !115 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_NtNtCs39E2wp1vf7X_6intern6symbol6SymboluNCNvCs85r3Sry2XhC_10load_cargo15load_proc_macros0_0NCINvNvB1H_8for_each4callB35_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5a_3VecB35_E14extend_trustedINtB2x_3MapBF_B3J_EE0E0E0EB3N_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !116

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store ptr %i.h, ptr %i.i, align 8, !noalias !117
  %i.j = add i64 %.val10.i, 1                     ; 2 uses
  %i.k = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.e
  br i1 %i.l, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_NtNtCs39E2wp1vf7X_6intern6symbol6SymboluNCNvCs85r3Sry2XhC_10load_cargo15load_proc_macros0_0NCINvNvB1H_8for_each4callB35_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5a_3VecB35_E14extend_trustedINtB2x_3MapBF_B3J_EE0E0E0EB3N_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !116
  resume { ptr, i32 } %i.m

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_NtNtCs39E2wp1vf7X_6intern6symbol6SymboluNCNvCs85r3Sry2XhC_10load_cargo15load_proc_macros0_0NCINvNvB1H_8for_each4callB35_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5a_3VecB35_E14extend_trustedINtB2x_3MapBF_B3J_EE0E0E0EB3N_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.j, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !116
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCsJo5RpJFzwk_14proc_macro_api9ProcMacroENCNCNvCs85r3Sry2XhC_10load_cargo15load_proc_macro0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroENCINvNtB12_16in_place_collect24write_in_place_with_dropB4B_E0INtNtBc_6result6ResultB40_zEEB2x_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !123 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !124, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted.i = load ptr, ptr %i.f, align 8, !alias.scope !124 ; 2 uses
  %.not12.i = icmp eq ptr %.promoted.i, %i.e
  br i1 %.not12.i, label %_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtCsJo5RpJFzwk_14proc_macro_api9ProcMacroENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroENCINvNtNtB1J_8adapters3map12map_try_foldBX_B3h_B2H_INtNtB1L_6result6ResultB2H_zENCNCNvCs85r3Sry2XhC_10load_cargo15load_proc_macro0s_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3h_E0E0B4X_EB5w_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !125, !noalias !126, !nonnull !4, !align !6, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i.i = load i64, ptr %i.i, align 8, !alias.scope !125, !noalias !126, !noundef !4
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtCsJo5RpJFzwk_14proc_macro_api9ProcMacroNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB1E_EINtNtBa_6result6ResultB2u_zENCNCNvCs85r3Sry2XhC_10load_cargo15load_proc_macro0s_0NCINvNtB2z_16in_place_collect24write_in_place_with_dropB1E_E0E0B44_.exit.i, %.lr.ph.i
  %.sroa.4.013.i = phi ptr [ %2, %.lr.ph.i ], [ %i.n, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtCsJo5RpJFzwk_14proc_macro_api9ProcMacroNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB1E_EINtNtBa_6result6ResultB2u_zENCNCNvCs85r3Sry2XhC_10load_cargo15load_proc_macro0s_0NCINvNtB2z_16in_place_collect24write_in_place_with_dropB1E_E0E0B44_.exit.i ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtCsJo5RpJFzwk_14proc_macro_api9ProcMacroNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB1E_EINtNtBa_6result6ResultB2u_zENCNCNvCs85r3Sry2XhC_10load_cargo15load_proc_macro0s_0NCINvNtB2z_16in_place_collect24write_in_place_with_dropB1E_E0E0B44_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false), !noalias !128
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 3 uses
  store ptr %i.k, ptr %i.f, align 8, !alias.scope !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !127
  store ptr %1, ptr %i.c, align 8, !noalias !127
  store ptr %.sroa.4.013.i, ptr %i.h, align 8, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !127
  invoke void @_RNvCs85r3Sry2XhC_10load_cargo22expander_to_proc_macro(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i.i, i64 noundef %.val2.i.i)
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtCsJo5RpJFzwk_14proc_macro_api9ProcMacroNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB1E_EINtNtBa_6result6ResultB2u_zENCNCNvCs85r3Sry2XhC_10load_cargo15load_proc_macro0s_0NCINvNtB2z_16in_place_collect24write_in_place_with_dropB1E_E0E0B44_.exit.i unwind label %bb.d, !noalias !127

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.l

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEECs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #13
          to label %bb.c unwind label %bb.e, !noalias !127

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #12, !noalias !127
  unreachable

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtCsJo5RpJFzwk_14proc_macro_api9ProcMacroNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB1E_EINtNtBa_6result6ResultB2u_zENCNCNvCs85r3Sry2XhC_10load_cargo15load_proc_macro0s_0NCINvNtB2z_16in_place_collect24write_in_place_with_dropB1E_E0E0B44_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.013.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !127
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i, i64 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !127
  %.not.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i, label %_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtCsJo5RpJFzwk_14proc_macro_api9ProcMacroENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroENCINvNtNtB1J_8adapters3map12map_try_foldBX_B3h_B2H_INtNtB1L_6result6ResultB2H_zENCNCNvCs85r3Sry2XhC_10load_cargo15load_proc_macro0s_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3h_E0E0B4X_EB5w_.exit, label %bb.b

_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtCsJo5RpJFzwk_14proc_macro_api9ProcMacroENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroENCINvNtNtB1J_8adapters3map12map_try_foldBX_B3h_B2H_INtNtB1L_6result6ResultB2H_zENCNCNvCs85r3Sry2XhC_10load_cargo15load_proc_macro0s_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3h_E0E0B4X_EB5w_.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtCsJo5RpJFzwk_14proc_macro_api9ProcMacroNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB1E_EINtNtBa_6result6ResultB2u_zENCNCNvCs85r3Sry2XhC_10load_cargo15load_proc_macro0s_0NCINvNtB2z_16in_place_collect24write_in_place_with_dropB1E_E0E0B44_.exit.i, %bb.a
  %.sroa.4.0.lcssa.i = phi ptr [ %2, %bb.a ], [ %i.n, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtCsJo5RpJFzwk_14proc_macro_api9ProcMacroNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropB1E_EINtNtBa_6result6ResultB2u_zENCNCNvCs85r3Sry2XhC_10load_cargo15load_proc_macro0s_0NCINvNtB2z_16in_place_collect24write_in_place_with_dropB1E_E0E0B44_.exit.i ]
  %i.o = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.p = insertvalue { ptr, ptr } %i.o, ptr %.sroa.4.0.lcssa.i, 1
  ret { ptr, ptr } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1S_4find5checkBX_QNCNvMCs85r3Sry2XhC_10load_cargoNtB3s_14ProjectFolders3news3_0E0INtNtNtB20_3ops12control_flow11ControlFlowBX_EEB3s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !132 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not10 = icmp eq ptr %.promoted, %i.d
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.f = phi ptr [ %.promoted, %.lr.ph ], [ %i.g, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.h = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMCs85r3Sry2XhC_10load_cargoNtBT_14ProjectFolders3news3_0INtB7_5FnMutTRNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootEE8call_mutBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a)
          to label %bb.d unwind label %bb.c, !noalias !133

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootECs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a) #13
          to label %bb.f unwind label %bb.e, !noalias !133

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootQNCNvMCs85r3Sry2XhC_10load_cargoNtB2c_14ProjectFolders3news3_0E0B2c_.exit, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootQNCNvMCs85r3Sry2XhC_10load_cargoNtB2c_14ProjectFolders3news3_0E0B2c_.exit.thread

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootQNCNvMCs85r3Sry2XhC_10load_cargoNtB2c_14ProjectFolders3news3_0E0B2c_.exit.thread: ; preds = %bb.d
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootECs85r3Sry2XhC_10load_cargo(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #12, !noalias !133
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootQNCNvMCs85r3Sry2XhC_10load_cargoNtB2c_14ProjectFolders3news3_0E0B2c_.exit: ; preds = %bb.d
  %.sroa.04.0.copyload = load i64, ptr %i.a, align 8, !alias.scope !134 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, i64 48, i1 false), !alias.scope !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i64 %.sroa.04.0.copyload, -1
  br i1 %.not.i, label %bb.h, label %bb.g

._crit_edge:                                      ; preds = %bb.h, %bb.a, %bb.g
  %storemerge = phi i64 [ %.sroa.04.0.copyload, %bb.g ], [ -1, %bb.a ], [ -1, %bb.h ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtCsdcPuHeDsw6v_13project_model9workspace11PackageRootQNCNvMCs85r3Sry2XhC_10load_cargoNtB2c_14ProjectFolders3news3_0E0B2c_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
end_hunk_0
