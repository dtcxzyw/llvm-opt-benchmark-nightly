inline.NumInlined: 3464
inline.NumDeleted: 846
begin_hunk_0_@_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offseteECs2VbMhdeEr66_16delta_benchmarks
define hidden noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offseteECs2VbMhdeEr66_16delta_benchmarks(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  ret i64 16
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCs8VI8w5SIoU4_15datafusion_expr7literalINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_7Literal3lit(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %1) #30
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr7literalNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB4_7Literal3lit(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #30
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litbECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) initializes((0, 8), (16, 33), (80, 88)) %0, i1 noundef zeroext %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 3, ptr %i.b, align 16, !alias.scope !5
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.a, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.c, align 16, !alias.scope !5
  store i64 7, ptr %0, align 16, !alias.scope !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litdECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) initializes((0, 8), (16, 48), (80, 88)) %0, double noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 6, ptr %i.a, align 16, !alias.scope !8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %1, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.b, align 16, !alias.scope !8
  store i64 7, ptr %0, align 16, !alias.scope !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litfECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) initializes((0, 8), (16, 40), (80, 88)) %0, float noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 5, ptr %i.a, align 16, !alias.scope !11
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !11
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %1, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.b, align 16, !alias.scope !11
  store i64 7, ptr %0, align 16, !alias.scope !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litmECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) initializes((0, 8), (16, 40), (80, 88)) %0, i32 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 17, ptr %i.a, align 16, !alias.scope !14
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.b, align 16, !alias.scope !14
  store i64 7, ptr %0, align 16, !alias.scope !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litxECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) initializes((0, 8), (16, 48), (80, 88)) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 14, ptr %i.a, align 16, !alias.scope !17
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !17
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %1, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.b, align 16, !alias.scope !17
  store i64 7, ptr %0, align 16, !alias.scope !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3lityECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) initializes((0, 8), (16, 48), (80, 88)) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 18, ptr %i.a, align 16, !alias.scope !20
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !20
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %1, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.b, align 16, !alias.scope !20
  store i64 7, ptr %0, align 16, !alias.scope !20
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !23 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #32
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !23 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #32
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !23 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #32
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !23 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #32
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !23 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #32
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs4lawaffTVVK_9sqlparser3ast17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB15_4ExprEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !26, !noundef !23 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtBJ_4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtBJ_4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtBJ_4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtBJ_4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.d, %bb.g
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !23
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !23
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast12ContactEntryEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !23
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast12ContactEntryEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast12ContactEntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast12ContactEntryEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast12ContactEntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast12ContactEntryEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast12ContactEntryEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast12ContactEntryEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast12ContactEntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast13ExceptionWhenEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !23
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast13ExceptionWhenEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast13ExceptionWhenENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast13ExceptionWhenEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast13ExceptionWhenENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !169, !nonnull !23, !noundef !23
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !170
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotECs2VbMhdeEr66_16delta_benchmarks.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotECs2VbMhdeEr66_16delta_benchmarks.exit

bb.i:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %.pn.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(328) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 328, i64 noundef 8) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 328, i64 noundef 8) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(2688) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 2688, i64 noundef 8) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 2688, i64 noundef 8) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !range !26, !alias.scope !171, !noundef !23
  switch i64 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorECs2VbMhdeEr66_16delta_benchmarks.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
  ]

.sink.split.i:                                    ; preds = %bb.e, %bb.b
  %.sink.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.e ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.sink.split.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.sink.split.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.h:                                             ; preds = %.sink.split.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %.sink.split.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #32
  ret void

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.h ], [ %i.d, %bb.c ], [ %i.g, %bb.f ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #32
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 24 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.b = load i64, ptr %i.a, align 8, !range !177, !alias.scope !174, !noundef !23 ; 3 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775796
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %i.b, -9223372036854775808
  %i.e = icmp slt i64 %i.b, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 12
  switch i64 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs2VbMhdeEr66_16delta_benchmarks.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.k
    i64 3, label %bb.n
    i64 4, label %bb.q
    i64 5, label %bb.t
    i64 6, label %bb.w
    i64 8, label %bb.z
    i64 9, label %bb.ac
    i64 10, label %bb.af
    i64 11, label %bb.ai
    i64 12, label %bb.al
    i64 13, label %bb.ao
    i64 14, label %bb.ar
    i64 15, label %bb.au
    i64 16, label %bb.ax
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.bd unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !174 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !174, !nonnull !23, !align !36, !noundef !23 ; 5 uses
  %i.l = load ptr, ptr %.val1.i, align 8, !invariant.load !23, !noalias !174 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.l(ptr noundef nonnull %.val.i)
          to label %bb.g unwind label %bb.i, !noalias !174

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !24, !invariant.load !23, !noalias !174 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !25, !invariant.load !23, !noalias !174
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #32, !noalias !174
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs2VbMhdeEr66_16delta_benchmarks.exit

bb.i:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !24, !invariant.load !23, !noalias !174 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.bd, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !25, !invariant.load !23, !noalias !174
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #32, !noalias !174
  br label %bb.bd

bb.k:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.bd unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.n:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.bd unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.q:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.bd unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.t:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.bd unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.w:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.bd unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.z:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.bd unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ac:                                            ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.bd unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.af:                                            ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.bd unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ai:                                            ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %bb.bd unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.al:                                            ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body.i unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit23.i unwind label %bb.ba

bb.ao:                                            ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.bd unwind label %bb.aq
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common5error11SchemaErrorEECs2VbMhdeEr66_16delta_benchmarks:bb.a
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error11SchemaErrorECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit5.i.invoke, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error11SchemaErrorECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit5.i.invoke, %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #32
  ret void

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l, %bb.i, %bb.f, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.p ], [ %i.m, %bb.l ], [ %i.f, %bb.f ], [ %i.i, %bb.i ], [ %i.d, %.body.i ], [ %i.p, %bb.n ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #32
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !30, !alias.scope !181, !noundef !23
  %i.b = icmp eq i64 %i.a, 3
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(104) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #30
          to label %.body.i unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 56 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.f

.body.i:                                          ; preds = %bb.f, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.i, %bb.f ], [ %i.f, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.h) #30
          to label %bb.k unwind label %bb.i

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 80 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.j

bb.i:                                             ; preds = %.body.i, %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs2VbMhdeEr66_16delta_benchmarks.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 104, i64 noundef 8) #32
  ret void

bb.k:                                             ; preds = %bb.j, %bb.g, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.k, %bb.g ], [ %.pn.i, %.body.i ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 104, i64 noundef 8) #32
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(1400) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 1400, i64 noundef 8) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 1400, i64 noundef 8) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(2696) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 2696, i64 noundef 8) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 2696, i64 noundef 8) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBO_8LogStoreEL_EB22_17read_commit_entry0ECs2VbMhdeEr66_16delta_benchmarks(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !186, !noundef !23
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !23, !align !36, !noundef !23 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #32
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #32
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBO_8LogStoreEL_EB22_18abort_commit_entry0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.b = load i8, ptr %i.a, align 2, !range !186, !noundef !23
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.g
  ]

common.ret:                                       ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !187, !noundef !23 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.d, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %common.ret

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !196, !nonnull !23, !noundef !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !196, !noundef !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !196, !noundef !23
  tail call void %i.i(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.l, i64 noundef %i.n), !inline_history !197
  br label %common.ret

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.o, align 8             ; 5 uses
  %i.p = getelementptr i8, ptr %0, i64 56
  %.val2 = load ptr, ptr %i.p, align 8, !nonnull !23, !align !36, !noundef !23 ; 5 uses
  %i.q = load ptr, ptr %.val2, align 8, !invariant.load !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.q(ptr noundef nonnull %.val)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.k:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #32
  br label %.body

.body:                                            ; preds = %bb.k, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.ac, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.ad, align 8
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBO_8LogStoreEL_EB22_18get_latest_version0ECs2VbMhdeEr66_16delta_benchmarks(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !186, !noundef !23
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !23, !align !36, !noundef !23 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #32
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #32
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBO_8LogStoreEL_EB22_18write_commit_entry0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.b = load i8, ptr %i.a, align 2, !range !186, !noundef !23
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.g
  ]

common.ret:                                       ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !198, !noundef !23 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.d, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %common.ret

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !207, !nonnull !23, !noundef !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !207, !noundef !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !207, !noundef !23
  tail call void %i.i(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.l, i64 noundef %i.n), !inline_history !197
  br label %common.ret

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.o, align 8             ; 5 uses
  %i.p = getelementptr i8, ptr %0, i64 56
  %.val2 = load ptr, ptr %i.p, align 8, !nonnull !23, !align !36, !noundef !23 ; 5 uses
  %i.q = load ptr, ptr %.val2, align 8, !invariant.load !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.q(ptr noundef nonnull %.val)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.k:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #32
  br label %.body

.body:                                            ; preds = %bb.k, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.ac, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.ad, align 8
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBO_8LogStoreEL_EB22_23is_delta_table_location0ECs2VbMhdeEr66_16delta_benchmarks(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !186, !noundef !23
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !23, !align !36, !noundef !23 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #32
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #32
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBO_8LogStoreEL_EB22_7refresh0ECs2VbMhdeEr66_16delta_benchmarks(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !186, !noundef !23
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !23, !align !36, !noundef !23 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #32
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #32
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !23  ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !214, !nonnull !23, !noundef !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !214, !noundef !23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !214, !noundef !23
  tail call void %i.g(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.j, i64 noundef %i.l), !inline_history !215
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs2VbMhdeEr66_16delta_benchmarks.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10CopySourceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !23
  %.not = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !216, !nonnull !23, !noundef !23 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(1400) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.f, !noalias !216, !inline_history !219

common.resume:                                    ; preds = %.body, %bb.h, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.j, %bb.h ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 1400, i64 noundef 8) #32, !noalias !216, !inline_history !219
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 1400, i64 noundef 8) #32, !noalias !216, !inline_history !219
  br label %bb.j

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.g ], [ %i.b, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.h) #30
          to label %common.resume unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECs2VbMhdeEr66_16delta_benchmarks.exit
  ret void

bb.k:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10CopyTargetECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !30, !noundef !23
  switch i64 %i.a, label %default.unreachable3 [
    i64 0, label %bb.e
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.b
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.sink.split unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.f, %bb.g ]
  resume { ptr, i32 } %common.resume.op

.sink.split:                                      ; preds = %bb.b, %bb.f
  %.sink = phi ptr [ %i.e, %bb.f ], [ %i.b, %bb.b ]
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a, %bb.a
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !771
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit7

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit10
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit7 unwind label %bb.i

bb.n:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit10

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit12: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !778, !nonnull !23, !noundef !23
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !778
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit3.sink.split, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks.exit3
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %i.a = load i64, ptr %0, align 8, !range !30, !alias.scope !779, !noundef !23 ; 2 uses
  %i.b = icmp eq i64 %i.a, 3
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.c = icmp eq i64 %i.a, 2
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.e = load i64, ptr %i.d, align 8, !range !414, !alias.scope !791, !noundef !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !798, !nonnull !23, !noundef !23
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !798
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.k = load ptr, ptr %i.f, align 8, !alias.scope !805, !nonnull !23, !noundef !23
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !805
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.h:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !range !27, !alias.scope !806, !noundef !23
  %i.p = icmp eq i64 %i.o, -9223372036854775808
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i: ; preds = %bb.j
  resume { ptr, i32 } %i.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs2VbMhdeEr66_16delta_benchmarks.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs2VbMhdeEr66_16delta_benchmarks.exit
    i64 1, label %bb.c
  ], !prof !811

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !23, !align !36, !noundef !23 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #32
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl11ResetConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !23
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl14SetConfigValueECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(328) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !232, !noundef !23
  %i.b = icmp samesign ugt i64 %i.a, 68
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(328) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl18AlterRoleOperationECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !812, !noundef !23 ; 3 uses
  %i.b = icmp ne i64 %i.a, 75
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -71
  %i.d = icmp samesign ugt i64 %i.a, 70
  %i.e = select i1 %i.d, i64 %i.c, i64 4
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %bb.i
    i64 2, label %bb.l
    i64 3, label %bb.o
    i64 4, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !range !27, !alias.scope !813, !noundef !23
  %i.h = icmp eq i64 %i.g, -9223372036854775808
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl11ResetConfigECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl11ResetConfigECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.ac

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl14SetConfigValueECs2VbMhdeEr66_16delta_benchmarks.exit, %.body, %bb.z, %bb.p, %bb.m, %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl14SetConfigValueECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %i.l, %bb.g ], [ %i.o, %bb.j ], [ %i.r, %bb.m ], [ %i.u, %bb.p ], [ %i.aj, %bb.z ], [ %eh.lpad-body, %.body ], [ %i.ar, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.i:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit5 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit5: ; preds = %bb.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit7 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit7: ; preds = %bb.l
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.o:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading18FileStagingCommandECs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.d) #30
          to label %common.resume unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !range !27, !alias.scope !1341, !noundef !23
  %i.g = icmp eq i64 %i.f, -9223372036854775808
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  ret void

bb.h:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not5 = icmp samesign eq i64 %2, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.0.06 = phi ptr [ %i.z, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -8 ; 4 uses
  %.val9.i = load ptr, ptr %.sroa.0.06, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %.val10.i = load ptr, ptr %i.d, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %i.e = getelementptr i8, ptr %.val9.i, i64 8
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !23, !noundef !23
  %i.f = getelementptr i8, ptr %.val9.i, i64 16
  %.val1.i.i.i = load i64, ptr %i.f, align 8, !noundef !23
  %i.g = getelementptr i8, ptr %.val10.i, i64 8
  %.val2.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !23, !noundef !23
  %i.h = getelementptr i8, ptr %.val10.i, i64 16
  %.val3.i.i.i = load i64, ptr %i.h, align 8, !noundef !23
  %i.i = tail call noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i.i, i64 noundef %.val3.i.i.i)
  %i.j = icmp slt i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %.sroa.0.06, align 8, !nonnull !23, !align !36, !noundef !23 ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %i.n = load i64, ptr %i.d, align 8
  store i64 %i.n, ptr %.sroa.0.06, align 8
  %i.o = icmp eq ptr %i.d, %0
  br i1 %i.o, label %._crit_edge17, label %.lr.ph16

bb.e:                                             ; preds = %bb.f
  %i.p = load i64, ptr %i.r, align 8
  store i64 %i.p, ptr %.sroa.0.0.i14, align 8
  %i.q = icmp eq ptr %i.r, %0
  br i1 %i.q, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i14 = phi ptr [ %i.r, %bb.e ], [ %i.d, %bb.d ] ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.0.0.i14, i64 -8 ; 4 uses
  %.val8.i = load ptr, ptr %i.r, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %.val.i.i11.i = load ptr, ptr %i.l, align 8, !nonnull !23, !noundef !23
  %.val1.i.i12.i = load i64, ptr %i.m, align 8, !noundef !23
  %i.s = getelementptr i8, ptr %.val8.i, i64 8
  %.val2.i.i13.i = load ptr, ptr %i.s, align 8, !nonnull !23, !noundef !23
  %i.t = getelementptr i8, ptr %.val8.i, i64 16
  %.val3.i.i14.i = load i64, ptr %i.t, align 8, !noundef !23
  %i.u = invoke noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i11.i, i64 noundef %.val1.i.i12.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i13.i, i64 noundef %.val3.i.i14.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph16
  %i.v = icmp slt i8 %i.u, 0
  br i1 %i.v, label %bb.e, label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i14, %bb.f ]
  %i.w = ptrtoint ptr %i.k to i64
  store i64 %i.w, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1344
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit

bb.g:                                             ; preds = %.lr.ph16
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = ptrtoint ptr %i.k to i64
  store i64 %i.y, ptr %.sroa.0.0.i14, align 8, !noalias !1349
  resume { ptr, i32 } %i.x

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.lr.ph, %._crit_edge17
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1o_NtB1X_4ExprEENCINvMNtB1s_5sliceSB1m_7sort_byNCINvMs_NtNtB1Z_12logical_plan7builderNtB3C_18LogicalPlanBuilder11window_planB2H_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.7.i = alloca [24 x i8], align 8          ; 5 uses
  %i.c = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.c, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %.not14 = icmp samesign eq i64 %2, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2
  %.val = load ptr, ptr %3, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.66.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.55.0..sroa_idx.i.i19.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.66.0..sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i.i23.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.0.015 = phi ptr [ %i.e, %.lr.ph ], [ %i.an, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit ] ; 9 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.015, i64 -48 ; 3 uses
  %i.g = getelementptr i8, ptr %.sroa.0.015, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.0.015, i64 16 ; 2 uses
  %.val14.i = load i64, ptr %i.h, align 8, !noundef !23 ; 3 uses
  %i.i = getelementptr i8, ptr %.sroa.0.015, i64 -40
  %.val15.i = load ptr, ptr %i.i, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.0.015, i64 -32
  %.val16.i = load i64, ptr %i.j, align 8, !noundef !23 ; 3 uses
  %.val.i.i = load ptr, ptr %.val, align 8        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw [144 x i8], ptr %.val13.i, i64 %.val14.i
  %i.l = getelementptr inbounds nuw [144 x i8], ptr %.val15.i, i64 %.val16.i
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.val13.i, ptr noundef nonnull %i.k, ptr noundef nonnull %.val15.i, ptr noundef nonnull %i.l)
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.55.0.copyload.i.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.sroa.66.0.copyload.i.i.i = load i64, ptr %.sroa.66.0..sroa_idx.i.i.i, align 8 ; 3 uses
  %.sroa.8.0.copyload.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.66.0.copyload.i.i.i, i64 %.sroa.8.0.copyload.i.i.i)
  %exitcond.not.i.i.i53.not = icmp ult i64 %.sroa.66.0.copyload.i.i.i, %.sroa.8.0.copyload.i.i.i
  br i1 %exitcond.not.i.i.i53.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.preheader, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.preheader: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i), "nonnull"(ptr %.sroa.55.0.copyload.i.i.i), "nonnull"(ptr %.val.i.i) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.e:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.m = add i64 %.sroa.66.0.i.i.i54, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.preheader, %bb.e
  %.sroa.66.0.i.i.i54 = phi i64 [ %i.m, %bb.e ], [ %.sroa.66.0.copyload.i.i.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.66.0.i.i.i54
  %i.o = getelementptr inbounds nuw [144 x i8], ptr %.sroa.55.0.copyload.i.i.i, i64 %.sroa.66.0.i.i.i54
  %i.p = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val.i.i)
  %i.q = tail call noundef i8 @_RNvNtCs8VI8w5SIoU4_15datafusion_expr5utils17compare_sort_expr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.n, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.e, label %_RNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSTINtNtB7_3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIBA_NtBS_4ExprEE7sort_byNCINvMs_NtNtBU_12logical_plan7builderNtB28_18LogicalPlanBuilder11window_planB1C_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i: ; preds = %bb.e, %bb.d
  %i.s = icmp ult i64 %.val16.i, 64051194700380388
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp ult i64 %.val14.i, 64051194700380388
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp samesign ult i64 %.val16.i, %.val14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.u, label %bb.f, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSTINtNtB7_3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIBA_NtBS_4ExprEE7sort_byNCINvMs_NtNtBU_12logical_plan7builderNtB28_18LogicalPlanBuilder11window_planB1C_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.v = icmp eq i8 %i.q, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.v, label %bb.f, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.f:                                             ; preds = %_RNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSTINtNtB7_3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIBA_NtBS_4ExprEE7sort_byNCINvMs_NtNtBU_12logical_plan7builderNtB28_18LogicalPlanBuilder11window_planB1C_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %.sroa.026.0.copyload.i = load i64, ptr %.sroa.0.015, align 8 ; 2 uses
  %.sroa.427.0.copyload.i = load ptr, ptr %i.g, align 8 ; 5 uses
  %.sroa.528.0.copyload.i = load i64, ptr %i.h, align 8 ; 5 uses
  %.sroa.629.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.015, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629.0..sroa_idx.i, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.015, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.w = icmp eq ptr %i.f, %0
  br i1 %i.w, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.427.0.copyload.i) ]
  %i.x = getelementptr inbounds nuw [144 x i8], ptr %.sroa.427.0.copyload.i, i64 %.sroa.528.0.copyload.i
  %i.y = icmp ult i64 %.sroa.528.0.copyload.i, 64051194700380388
  br label %bb.g

bb.g:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.09.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.z, %.backedge.i ] ; 10 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.09.i, i64 -48 ; 3 uses
  %i.aa = getelementptr i8, ptr %.sroa.0.09.i, i64 -40
  %.val10.i = load ptr, ptr %i.aa, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.0.09.i, i64 -32
  %.val11.i = load i64, ptr %i.ab, align 8, !noundef !23 ; 3 uses
  %.val.i17.i = load ptr, ptr %.val, align 8      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %.val10.i, i64 %.val11.i
  invoke void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.427.0.copyload.i, ptr noundef nonnull %i.x, ptr noundef nonnull %.val10.i, ptr noundef nonnull %i.ac)
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.g
  %.sroa.0.0.copyload.i.i18.i = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.55.0.copyload.i.i20.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i19.i, align 8 ; 2 uses
  %.sroa.66.0.copyload.i.i22.i = load i64, ptr %.sroa.66.0..sroa_idx.i.i21.i, align 8 ; 3 uses
  %.sroa.8.0.copyload.i.i24.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i23.i, align 8 ; 2 uses
  %umax.i.i25.i = tail call i64 @llvm.umax.i64(i64 %.sroa.66.0.copyload.i.i22.i, i64 %.sroa.8.0.copyload.i.i24.i)
  %exitcond.not.i.i27.i55.not = icmp ult i64 %.sroa.66.0.copyload.i.i22.i, %.sroa.8.0.copyload.i.i24.i
  br i1 %exitcond.not.i.i27.i55.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i.preheader, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i.preheader: ; preds = %.noexc.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i18.i), "nonnull"(ptr %.sroa.55.0.copyload.i.i20.i), "nonnull"(ptr %.val.i17.i) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i

bb.h:                                             ; preds = %.noexc33.i
  %exitcond.not.i.i27.i = icmp eq i64 %i.ad, %umax.i.i25.i
  br i1 %exitcond.not.i.i27.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i.preheader, %bb.h
  %.sroa.66.0.i.i26.i56 = phi i64 [ %i.ad, %bb.h ], [ %.sroa.66.0.copyload.i.i22.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i.preheader ] ; 3 uses
  %i.ad = add i64 %.sroa.66.0.i.i26.i56, 1        ; 2 uses
  %i.ae = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val.i17.i)
          to label %.noexc32.i unwind label %.loopexit.i

.noexc32.i:                                       ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i
  %i.af = getelementptr inbounds nuw [144 x i8], ptr %.sroa.55.0.copyload.i.i20.i, i64 %.sroa.66.0.i.i26.i56
  %i.ag = getelementptr inbounds nuw [144 x i8], ptr %.sroa.0.0.copyload.i.i18.i, i64 %.sroa.66.0.i.i26.i56
  %i.ah = invoke noundef i8 @_RNvNtCs8VI8w5SIoU4_15datafusion_expr5utils17compare_sort_expr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.ag, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %.noexc33.i unwind label %.loopexit.i ; 2 uses

.noexc33.i:                                       ; preds = %.noexc32.i
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %bb.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31.i: ; preds = %bb.h, %.noexc.i
  %i.aj = icmp ult i64 %.val11.i, 64051194700380388
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.y)
  %i.ak = icmp samesign ult i64 %.val11.i, %.sroa.528.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ak, label %.backedge.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31._crit_edge.i

bb.i:                                             ; preds = %.noexc33.i
  %i.al = icmp eq i8 %i.ah, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.al, label %.backedge.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31._crit_edge.i

.backedge.i:                                      ; preds = %bb.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.09.i, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false)
  %i.am = icmp eq ptr %i.z, %0
  br i1 %i.am, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31._crit_edge.i, label %bb.g

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31._crit_edge.i: ; preds = %.backedge.i, %bb.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31.i, %bb.f
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.f ], [ %0, %.backedge.i ], [ %.sroa.0.09.i, %bb.i ], [ %.sroa.0.09.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31.i ] ; 4 uses
  store i64 %.sroa.026.0.copyload.i, ptr %.sroa.0.0.lcssa.i, align 8, !noalias !1354
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  store ptr %.sroa.427.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1354
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 16
  store i64 %.sroa.528.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1354
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !1354
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

.loopexit.i:                                      ; preds = %.noexc32.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i64 %.sroa.026.0.copyload.i, ptr %.sroa.0.09.i, align 8, !noalias !1359
  %.sroa.5.0..sroa.0.0915.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 8
  store ptr %.sroa.427.0.copyload.i, ptr %.sroa.5.0..sroa.0.0915.sroa_idx.i, align 8, !noalias !1359
  %.sroa.6.0..sroa.0.0915.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 16
  store i64 %.sroa.528.0.copyload.i, ptr %.sroa.6.0..sroa.0.0915.sroa_idx.i, align 8, !noalias !1359
  %.sroa.7.0..sroa.0.0915.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa.0.0915.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !1359
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, %_RNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSTINtNtB7_3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIBA_NtBS_4ExprEE7sort_byNCINvMs_NtNtBU_12logical_plan7builderNtB28_18LogicalPlanBuilder11window_planB1C_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31._crit_edge.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.015, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.an, %i.d
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1t_5sliceSB1m_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [24 x i8], align 8          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32 ; 4 uses
  %.val9.i = load i64, ptr %.sroa.0.05, align 8, !noundef !23 ; 3 uses
  %.val10.i = load i64, ptr %i.d, align 8, !noundef !23
  %i.e = icmp ult i64 %.val9.i, %.val10.i
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.0..sroa_idx.i, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.h, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -32 ; 4 uses
  %.val8.i = load i64, ptr %i.h, align 8, !noundef !23
  %i.i = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.i, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 2 uses
  store i64 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1364
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !1364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2VbMhdeEr66_16delta_benchmarks(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #4 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !1374, !noalias !1377
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !1374, !noalias !1377
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !1377, !noalias !1369
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !1377, !noalias !1369
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !1374, !noalias !1377
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !1374, !noalias !1377
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !1377, !noalias !1369
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !1377, !noalias !1369
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !1379

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
end_hunk_4
begin_hunk_5_@_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1460
  store i8 %i.dj, ptr %i.ad, align 1, !noalias !1460
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 1) #34, !noalias !1455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1460
  %i.dk = load ptr, ptr %i.dh, align 8, !alias.scope !1455, !noalias !1458, !nonnull !23, !noundef !23
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dk, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !1455, !inline_history !1442
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !1455, !noalias !1458, !nonnull !23, !noundef !23
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dm, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !1455, !inline_history !1442
  %i.dn = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.do = load i32, ptr %i.dn, align 8, !range !1443, !alias.scope !1455, !noalias !1458, !noundef !23 ; 2 uses
  %i.dp = icmp ne i32 %i.do, 1114112              ; 2 uses
  %i.dq = zext i1 %i.dp to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1463
  store i64 %i.dq, ptr %i.ae, align 8, !noalias !1463
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 8) #34, !noalias !1455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1463
  br i1 %i.dp, label %bb.l, label %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit1

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1468
  store i32 %i.do, ptr %i.af, align 4, !noalias !1468
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 4) #34, !noalias !1455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1468
  br label %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit1

_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit1: ; preds = %bb.k, %bb.l
  %i.dr = getelementptr inbounds nuw i8, ptr %.tr, i64 29
  %i.ds = load i8, ptr %i.dr, align 1, !range !1436, !alias.scope !1455, !noalias !1458, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1471
  store i8 %i.ds, ptr %i.ag, align 1, !noalias !1471
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef 1) #34, !noalias !1455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1471
  br label %common.ret256

bb.m:                                             ; preds = %tailrecurse
  %i.dt = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !1474, !noalias !1477, !nonnull !23, !noundef !23
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.du, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !1474, !inline_history !1479
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.dw = load i8, ptr %i.dv, align 16, !range !1436, !alias.scope !1474, !noalias !1477, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1480
  store i8 %i.dw, ptr %i.ac, align 1, !noalias !1480
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 1) #34, !noalias !1474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1480
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.dy = load ptr, ptr %i.dx, align 16, !alias.scope !1474, !noalias !1477, !nonnull !23, !noundef !23
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dy, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !1474, !inline_history !1479
  br label %tailrecurse.backedge.sink.split

bb.n:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  %i.dz = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ea = load ptr, ptr %i.dz, align 16, !alias.scope !1483, !noalias !1486, !align !1488, !noundef !23 ; 2 uses
  %i.eb = icmp ne ptr %i.ea, null                 ; 2 uses
  %i.ec = zext i1 %i.eb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1489
  store i64 %i.ec, ptr %i.z, align 8, !noalias !1489
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 8) #34, !noalias !1483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1489
  br i1 %i.eb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ea, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !1483, !inline_history !1494
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ee = load ptr, ptr %i.ed, align 16, !alias.scope !1483, !noalias !1486, !nonnull !23, !noundef !23
  %i.ef = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !1483, !noalias !1486, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1495
  store i64 %i.eg, ptr %i.aa, align 8, !noalias !1495
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #34, !noalias !1483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1495
  tail call void @_RINvYTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ee, i64 noundef %i.eg, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !1483, !inline_history !1494
  %i.eh = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !alias.scope !1483, !noalias !1486, !align !1488, !noundef !23 ; 2 uses
  %i.ej = icmp ne ptr %i.ei, null                 ; 2 uses
  %i.ek = zext i1 %i.ej to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1500
  store i64 %i.ek, ptr %i.ab, align 8, !noalias !1500
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 8) #34, !noalias !1483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1500
  br i1 %i.ej, label %tailrecurse.backedge, label %common.ret256

common.ret256:                                    ; preds = %bb.bc, %bb.bb, %bb.az, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.w, %bb.v, %bb.ao, %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit2, %bb.ae, %bb.ac, %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.s, %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit1, %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.g, %bb.f, %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.c, %bb.p, %bb.ad, %bb.ab, %bb.r, %bb.q
  ret void

bb.q:                                             ; preds = %tailrecurse
  %i.el = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  %i.em = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !1505, !noalias !1508, !nonnull !23, !noundef !23
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.en, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !1505, !inline_history !1510
  tail call fastcc void @_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.el, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !inline_history !1510
  br label %common.ret256

bb.r:                                             ; preds = %tailrecurse
  %i.eo = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !1511, !noalias !1514, !nonnull !23, !noundef !23
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.eq, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !1511, !inline_history !1516
  tail call fastcc void @_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eo, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !inline_history !1516
  br label %common.ret256

bb.s:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  %i.er = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !1517, !noalias !1520, !nonnull !23, !noundef !23
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  tail call void @_RINvXs1_NtCs8VI8w5SIoU4_15datafusion_expr3udfNtB6_9ScalarUDFNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.et, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !1517
  %i.eu = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !1517, !noalias !1520, !nonnull !23, !noundef !23
  %i.ew = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !1517, !noalias !1520, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !1522
  store i64 %i.ex, ptr %i.bi, align 8, !noalias !1522
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef 8) #34, !noalias !1517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !1522
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ev, i64 noundef %i.ex, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !1517
  br label %common.ret256

bb.t:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  %i.ey = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !1527, !noalias !1530, !nonnull !23, !noundef !23
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  tail call void @_RINvXs0_NtCs8VI8w5SIoU4_15datafusion_expr4udafNtB6_12AggregateUDFNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fa, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !1527, !inline_history !1532
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !1533, !noalias !1536, !nonnull !23, !noundef !23
  %i.fd = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !1533, !noalias !1536, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1538
  store i64 %i.fe, ptr %i.y, align 8, !noalias !1538
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #34, !noalias !1533, !inline_history !1543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1538
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.fc, i64 noundef %i.fe, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !1533, !inline_history !1543
  %i.ff = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.fg = load i8, ptr %i.ff, align 8, !range !1436, !alias.scope !1533, !noalias !1536, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1544
  store i8 %i.fg, ptr %i.x, align 1, !noalias !1544
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 1) #34, !noalias !1533, !inline_history !1543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1544
  %i.fh = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !1533, !noalias !1536, !align !1488, !noundef !23 ; 2 uses
  %i.fj = icmp ne ptr %i.fi, null                 ; 2 uses
  %i.fk = zext i1 %i.fj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1547
  store i64 %i.fk, ptr %i.w, align 8, !noalias !1547
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 8) #34, !noalias !1533, !inline_history !1543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1547
  br i1 %i.fj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.fi, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !1533, !inline_history !1543
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !1533, !noalias !1536, !nonnull !23, !noundef !23
  %i.fn = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !1533, !noalias !1536, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1552
  store i64 %i.fo, ptr %i.v, align 8, !noalias !1552
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #34, !noalias !1533, !inline_history !1543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1552
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.fm, i64 noundef %i.fo, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !1533, !inline_history !1543
  %i.fp = getelementptr inbounds nuw i8, ptr %.tr, i64 65
  %i.fq = load i8, ptr %i.fp, align 1, !range !1557, !alias.scope !1533, !noalias !1536, !noundef !23 ; 2 uses
  %i.fr = icmp ne i8 %i.fq, 2                     ; 2 uses
  %i.fs = zext i1 %i.fr to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1558
  store i64 %i.fs, ptr %i.u, align 8, !noalias !1558
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 8) #34, !noalias !1533, !inline_history !1543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1558
  br i1 %i.fr, label %bb.w, label %common.ret256

bb.w:                                             ; preds = %bb.v
  %i.ft = zext nneg i8 %i.fq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1563
  store i64 %i.ft, ptr %i.t, align 8, !noalias !1563
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 8) #34, !noalias !1533, !inline_history !1543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1563
  br label %common.ret256

bb.x:                                             ; preds = %tailrecurse
  %i.fu = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !nonnull !23, !noundef !23 ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 272
  %.val.i = load i64, ptr %i.fw, align 8, !range !414, !alias.scope !1570, !noalias !1573, !noundef !23
  %i.fx = getelementptr i8, ptr %i.fv, i64 280
  %.val1.i = load ptr, ptr %i.fx, align 8, !alias.scope !1570, !noalias !1573 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1575
  store i64 %.val.i, ptr %i.h, align 8, !noalias !1575
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8) #34, !noalias !1570
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ], !noalias !1570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1575
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !1582, !nonnull !23, !noundef !23
  %i.ga = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !1582, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !range !25, !invariant.load !23, !noalias !1582
  %i.ge = add nsw i64 %i.gd, -1
  %i.gf = and i64 %i.ge, -16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.gj = load ptr, ptr %i.gi, align 8, !invariant.load !23, !noalias !1582, !nonnull !23
  tail call void %i.gj(ptr noundef nonnull %i.gh, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @4) #34, !noalias !1570, !inline_history !1583
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1584)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fv, i64 184
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !1584, !noalias !1587, !nonnull !23, !noundef !23
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fv, i64 192
  %i.gn = load i64, ptr %i.gm, align 16, !alias.scope !1584, !noalias !1587, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1589
  store i64 %i.gn, ptr %i.s, align 8, !noalias !1589
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 8) #34, !noalias !1584, !inline_history !1594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1589
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.gl, i64 noundef %i.gn, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !1584, !inline_history !1594
  %i.go = getelementptr inbounds nuw i8, ptr %i.fv, i64 208
  %i.gp = load ptr, ptr %i.go, align 16, !alias.scope !1584, !noalias !1587, !nonnull !23, !noundef !23
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fv, i64 216
  %i.gr = load i64, ptr %i.gq, align 8, !alias.scope !1584, !noalias !1587, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1595
  store i64 %i.gr, ptr %i.r, align 8, !noalias !1595
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 8) #34, !noalias !1584, !inline_history !1594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1595
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.gp, i64 noundef %i.gr, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !1584, !inline_history !1594
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fv, i64 232
  %i.gt = load ptr, ptr %i.gs, align 8, !alias.scope !1584, !noalias !1587, !nonnull !23, !noundef !23
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fv, i64 240
  %i.gv = load i64, ptr %i.gu, align 16, !alias.scope !1584, !noalias !1587, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1600
  store i64 %i.gv, ptr %i.q, align 8, !noalias !1600
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 8) #34, !noalias !1584, !inline_history !1594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1600
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.gt, i64 noundef %i.gv, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !1584, !inline_history !1594
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fv, i64 161
  %i.gx = load i8, ptr %i.gw, align 1, !range !1557, !alias.scope !1608, !noalias !1609, !noundef !23
  %i.gy = zext nneg i8 %i.gx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1611
  store i64 %i.gy, ptr %i.p, align 8, !noalias !1611
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 8) #34, !noalias !1608, !inline_history !1594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1611
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  %i.gz = load i128, ptr %i.fv, align 16, !range !1619, !alias.scope !1620, !noalias !1621, !noundef !23 ; 2 uses
  %i.ha = trunc nuw nsw i128 %i.gz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1623
  store i64 %i.ha, ptr %i.o, align 8, !noalias !1623
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 8) #34, !noalias !1620, !inline_history !1594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1623
  %i.hb = icmp eq i128 %i.gz, 1
  br i1 %i.hb, label %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.x
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.hc, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !1594
  br label %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %.sink.split.i.i.i, %bb.x
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fv, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1628)
  %i.he = load i128, ptr %i.hd, align 16, !range !1619, !alias.scope !1631, !noalias !1632, !noundef !23 ; 2 uses
  %i.hf = trunc nuw nsw i128 %i.he to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1634
  store i64 %i.hf, ptr %i.n, align 8, !noalias !1634
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 8) #34, !noalias !1628, !inline_history !1594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1634
  %i.hg = icmp eq i128 %i.he, 1
  br i1 %i.hg, label %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %.sink.split.i1.i.i

.sink.split.i1.i.i:                               ; preds = %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fv, i64 96
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.hh, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !1594
  br label %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.sink.split.i1.i.i, %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fv, i64 160
  %i.hj = load i8, ptr %i.hi, align 16, !range !1436, !alias.scope !1608, !noalias !1609, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1639
  store i8 %i.hj, ptr %i.m, align 1, !noalias !1639
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 1) #34, !inline_history !1594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1639
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fv, i64 248 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !1584, !noalias !1587, !align !1488, !noundef !23
  %i.hm = icmp ne ptr %i.hl, null                 ; 2 uses
  %i.hn = zext i1 %i.hm to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1642
  store i64 %i.hn, ptr %i.l, align 8, !noalias !1642
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 8) #34, !inline_history !1594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1642
  br i1 %i.hm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ho = load ptr, ptr %i.hk, align 8, !alias.scope !1584, !noalias !1587, !nonnull !23, !noundef !23
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ho, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !inline_history !1594
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fv, i64 257 ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !range !1557, !alias.scope !1584, !noalias !1587, !noundef !23
  %i.hr = icmp ne i8 %i.hq, 2                     ; 2 uses
  %i.hs = zext i1 %i.hr to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1647
  store i64 %i.hs, ptr %i.k, align 8, !noalias !1647
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 8) #34, !inline_history !1594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1647
  br i1 %i.hr, label %bb.aa, label %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.aa:                                            ; preds = %bb.z
  %.val.i4 = load i8, ptr %i.hp, align 1, !range !1436, !alias.scope !1584, !noalias !1587, !noundef !23
  %i.ht = zext nneg i8 %.val.i4 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1652
  store i64 %i.ht, ptr %i.j, align 8, !noalias !1652
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8) #34, !inline_history !1594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1652
  br label %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.z, %bb.aa
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fv, i64 256
  %i.hv = load i8, ptr %i.hu, align 16, !range !1436, !alias.scope !1584, !noalias !1587, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1659
  store i8 %i.hv, ptr %i.i, align 1, !noalias !1659
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1) #34, !inline_history !1594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1659
  br label %common.ret256

bb.ab:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1662)
  %i.hw = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !1662, !noalias !1665, !nonnull !23, !noundef !23
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.hx, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !1662, !inline_history !1667
  %i.hy = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !1662, !noalias !1665, !nonnull !23, !noundef !23
  %i.ia = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !1662, !noalias !1665, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1668
  store i64 %i.ib, ptr %i.f, align 8, !noalias !1668
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8) #34, !noalias !1662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1668
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.hz, i64 noundef %i.ib, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !1662, !inline_history !1667
  %i.ic = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.id = load i8, ptr %i.ic, align 8, !range !1436, !alias.scope !1662, !noalias !1665, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1673
  store i8 %i.id, ptr %i.g, align 1, !noalias !1673
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1) #34, !noalias !1662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1673
  br label %common.ret256

bb.ac:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  %i.ie = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !1676, !noalias !1679, !nonnull !23, !noundef !23
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ig, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !1676, !inline_history !1681
  %i.ih = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !alias.scope !1676, !noalias !1679, !nonnull !23, !noundef !23
  %i.ij = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ik = load i64, ptr %i.ij, align 8, !alias.scope !1676, !noalias !1679, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1682
  store i64 %i.ik, ptr %i.d, align 8, !noalias !1682
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #34, !noalias !1676, !inline_history !1681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1682
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ii, i64 noundef %i.ik, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !1676, !inline_history !1681
  %i.il = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.im = load i8, ptr %i.il, align 8, !range !1436, !alias.scope !1687, !noalias !1690, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1692
  store i8 %i.im, ptr %i.e, align 1, !noalias !1692
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1692
  br label %common.ret256

bb.ad:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  %i.in = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.io = load ptr, ptr %i.in, align 8, !alias.scope !1695, !noalias !1698, !nonnull !23, !noundef !23
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.io, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !1695, !inline_history !1700
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  %i.ip = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.iq = load ptr, ptr %i.ip, align 8, !alias.scope !1701, !noalias !1704, !nonnull !23, !noundef !23
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ir, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !1701, !inline_history !1706
  %i.is = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !alias.scope !1701, !noalias !1704, !nonnull !23, !noundef !23
  %i.iu = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.iv = load i64, ptr %i.iu, align 8, !alias.scope !1701, !noalias !1704, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1707
  store i64 %i.iv, ptr %i.b, align 8, !noalias !1707
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #34, !noalias !1701, !inline_history !1706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1707
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.it, i64 noundef %i.iv, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !1701, !inline_history !1706
  %i.iw = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.ix = load i8, ptr %i.iw, align 8, !range !1436, !alias.scope !1695, !noalias !1698, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1712
  store i8 %i.ix, ptr %i.c, align 1, !noalias !1712
end_hunk_5
begin_hunk_6_@_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.o, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.ci, %bb.o ]  ; 34 uses
  %i.x = load i8, ptr %.tr, align 8, !range !3946, !noundef !23 ; 2 uses
  %i.y = zext nneg i8 %i.x to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3947
  store i64 %i.y, ptr %i.w, align 8, !noalias !3947
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3947
  switch i8 %i.x, label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit [
    i8 13, label %bb.b
    i8 16, label %bb.c
    i8 17, label %bb.d
    i8 18, label %bb.e
    i8 19, label %bb.f
    i8 21, label %bb.g
    i8 27, label %bb.h
    i8 28, label %bb.i
    i8 29, label %bb.j
    i8 30, label %bb.k
    i8 31, label %bb.l
    i8 32, label %bb.m
    i8 33, label %bb.n
    i8 34, label %bb.o
    i8 35, label %bb.p
    i8 36, label %bb.q
    i8 37, label %bb.r
    i8 38, label %bb.s
    i8 39, label %bb.t
    i8 40, label %bb.u
  ]

_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %tailrecurse, %.lr.ph.i.i.i, %bb.m, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %_RINvXsq_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_11UnionFieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void

bb.b:                                             ; preds = %tailrecurse
  %i.z = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !range !186, !noundef !23
  %i.ab = zext nneg i8 %i.aa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3952
  store i64 %i.ab, ptr %i.v, align 8, !noalias !3952
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3952
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noundef !23 ; 2 uses
  %i.ae = icmp ne ptr %i.ad, null                 ; 2 uses
  %i.af = zext i1 %i.ae to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3957
  store i64 %i.af, ptr %i.u, align 8, !noalias !3957
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3957
  br i1 %i.ae, label %bb.v, label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %tailrecurse
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !range !186, !noundef !23
  %i.ai = zext nneg i8 %i.ah to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3962
  store i64 %i.ai, ptr %i.t, align 8, !noalias !3962
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3962
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.d:                                             ; preds = %tailrecurse
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !range !186, !noundef !23
  %i.al = zext nneg i8 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3967
  store i64 %i.al, ptr %i.s, align 8, !noalias !3967
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3967
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %tailrecurse
  %i.am = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.an = load i8, ptr %i.am, align 1, !range !186, !noundef !23
  %i.ao = zext nneg i8 %i.an to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3972
  store i64 %i.ao, ptr %i.r, align 8, !noalias !3972
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3972
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.f:                                             ; preds = %tailrecurse
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !range !1557, !noundef !23
  %i.ar = zext nneg i8 %i.aq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3977
  store i64 %i.ar, ptr %i.q, align 8, !noalias !3977
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3977
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.g:                                             ; preds = %tailrecurse
  %i.as = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3982
  store i32 %i.at, ptr %i.p, align 4, !noalias !3982
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3982
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.h:                                             ; preds = %tailrecurse
  %i.au = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !23, !noundef !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.i:                                             ; preds = %tailrecurse
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !23, !noundef !23
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.j:                                             ; preds = %tailrecurse
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !23, !noundef !23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3987
  store i32 %i.be, ptr %i.o, align 4, !noalias !3987
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3987
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.k:                                             ; preds = %tailrecurse
  %i.bf = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !23, !noundef !23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bh, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %tailrecurse
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !23, !noundef !23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.m:                                             ; preds = %tailrecurse
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %.val = load ptr, ptr %i.bl, align 8, !nonnull !23, !noundef !23
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val1 = load i64, ptr %i.bm, align 8, !noundef !23 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3992)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3995
  store i64 %.val1, ptr %i.n, align 8, !noalias !3995
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 8) #34, !noalias !3992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3995
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4003)
  %.idx.i.i.i = shl nuw nsw i64 %.val1, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx.i.i.i
  %i.bp = icmp eq i64 %.val1, 0
  br i1 %i.bp, label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %.sroa.0.03.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i ], [ %i.bn, %bb.m ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.val.i.i.i = load ptr, ptr %.sroa.0.03.i.i.i, align 8, !alias.scope !4006, !noalias !4007, !nonnull !23, !noundef !23
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i.i, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.br, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4006
  %i.bs = icmp eq ptr %i.bq, %i.bo
  br i1 %i.bs, label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i.i.i

bb.n:                                             ; preds = %tailrecurse
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %.val2 = load ptr, ptr %i.bt, align 8, !nonnull !23, !noundef !23
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val3 = load i64, ptr %i.bu, align 8, !noundef !23 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4009)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4012
  store i64 %.val3, ptr %i.m, align 8, !noalias !4012
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 8) #34, !noalias !4009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4012
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4020)
  %.idx.i.i.i4 = shl nuw nsw i64 %.val3, 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i.i.i4
  %i.bx = icmp eq i64 %.val3, 0
  br i1 %i.bx, label %_RINvXsq_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_11UnionFieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i.i.i5

.lr.ph.i.i.i5:                                    ; preds = %bb.n, %.lr.ph.i.i.i5
  %.sroa.0.04.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i5 ], [ %i.bv, %bb.n ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.val.i.i.i6 = load i8, ptr %.sroa.0.04.i.i.i, align 1, !alias.scope !4023, !noalias !4024, !noundef !23
  %i.bz = getelementptr i8, ptr %.sroa.0.04.i.i.i, i64 8
  %.sroa.0.0.val3.i.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !4023, !noalias !4024 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4026
  store i8 %.sroa.0.0.val.i.i.i6, ptr %i.l, align 1, !noalias !4026
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 1) #34, !noalias !4023
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.val3.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4026
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val3.i.i.i, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ca, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4023
  %i.cb = icmp eq ptr %i.by, %i.bw
  br i1 %i.cb, label %_RINvXsq_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_11UnionFieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i.i.i5

_RINvXsq_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_11UnionFieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.lr.ph.i.i.i5, %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !range !1436, !noundef !23
  %i.ce = zext nneg i8 %i.cd to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4035
  store i64 %i.ce, ptr %i.k, align 8, !noalias !4035
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4035
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.o:                                             ; preds = %tailrecurse
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !23, !noundef !23
  tail call fastcc void @_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg, ptr noalias noundef align 8 dereferenceable(72) %1) #34
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !23, !noundef !23
  br label %tailrecurse

bb.p:                                             ; preds = %tailrecurse
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4040
  store i8 %i.ck, ptr %i.j, align 1, !noalias !4040
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4040
  %i.cl = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.cm = load i8, ptr %i.cl, align 2, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4043
  store i8 %i.cm, ptr %i.i, align 1, !noalias !4043
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4043
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.q:                                             ; preds = %tailrecurse
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4048
  store i8 %i.co, ptr %i.h, align 1, !noalias !4048
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4048
  %i.cp = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.cq = load i8, ptr %i.cp, align 2, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4051
  store i8 %i.cq, ptr %i.g, align 1, !noalias !4051
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4051
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.r:                                             ; preds = %tailrecurse
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4056
  store i8 %i.cs, ptr %i.f, align 1, !noalias !4056
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4056
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.cu = load i8, ptr %i.ct, align 2, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4059
  store i8 %i.cu, ptr %i.e, align 1, !noalias !4059
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4059
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.s:                                             ; preds = %tailrecurse
  %i.cv = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4064
  store i8 %i.cw, ptr %i.d, align 1, !noalias !4064
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4064
  %i.cx = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.cy = load i8, ptr %i.cx, align 2, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4067
  store i8 %i.cy, ptr %i.c, align 1, !noalias !4067
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4067
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.t:                                             ; preds = %tailrecurse
  %i.cz = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !23, !noundef !23
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.db, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.dc = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !range !1436, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4072
  store i8 %i.dd, ptr %i.b, align 1, !noalias !4072
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4072
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.u:                                             ; preds = %tailrecurse
  %i.de = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !23, !noundef !23
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dg, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.dh = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !23, !noundef !23
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dj, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.v:                                             ; preds = %bb.b
  %i.dk = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !23
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.dl) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4075
  store i8 -1, ptr %i.a, align 1, !noalias !4075
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #34, !noalias !4082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4075
  br label %_RINvXsj_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB6_6FieldsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs7_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB6_6InsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1072) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [1 x i8], align 1                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [1 x i8], align 1                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [1 x i8], align 1                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [1 x i8], align 1                ; 4 uses
  %i.aj = alloca [1 x i8], align 1                ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1070
  %i.an = load i8, ptr %i.am, align 2, !range !2031, !noundef !23 ; 2 uses
  %i.ao = icmp ne i8 %i.an, 5                     ; 2 uses
  %i.ap = zext i1 %i.ao to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !4083
  store i64 %i.ap, ptr %i.al, align 8, !noalias !4083
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !4083
  br i1 %i.ao, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aq = zext nneg i8 %i.an to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !4088
  store i64 %i.aq, ptr %i.ak, align 8, !noalias !4088
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef 8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !4088
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.as = load i8, ptr %i.ar, align 8, !range !1436, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4095
  store i8 %i.as, ptr %i.aj, align 1, !noalias !4095
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef 1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4095
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1065
  %i.au = load i8, ptr %i.at, align 1, !range !1436, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !4098
  store i8 %i.au, ptr %i.ai, align 1, !noalias !4098
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef 1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !4098
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4101)
  %i.aw = load i64, ptr %i.av, align 8, !range !107, !alias.scope !4101, !noalias !4104, !noundef !23
  %i.ax = icmp ne i64 %i.aw, 6                    ; 2 uses
  %i.ay = zext i1 %i.ax to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4106
  store i64 %i.ay, ptr %i.j, align 8, !noalias !4106
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8) #34, !noalias !4101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4106
end_hunk_6
begin_hunk_7_@_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !6258, !noalias !6261, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !6263
  store i64 %i.cm, ptr %i.ai, align 8, !noalias !6263
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef 8) #34, !noalias !6258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !6263
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ck, i64 noundef %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !6258, !inline_history !6268
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !6258, !noalias !6261, !nonnull !23, !noundef !23
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.cp, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !6258, !inline_history !6268
  %i.cq = load i64, ptr %i.ci, align 8, !range !414, !alias.scope !6258, !noalias !6261, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !6269
  store i64 %i.cq, ptr %i.aj, align 8, !noalias !6269
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef 8) #34, !noalias !6258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !6269
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.h, label %common.ret

bb.h:                                             ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !6258, !noalias !6261, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !6274
  store i64 %i.ct, ptr %i.ak, align 8, !noalias !6274
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef 8) #34, !noalias !6258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !6274
  br label %common.ret

bb.i:                                             ; preds = %tailrecurse
  %i.cu = getelementptr inbounds nuw i8, ptr %.tr, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6277)
  %i.cv = getelementptr inbounds nuw i8, ptr %.tr, i64 152
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !6277, !noalias !6280, !nonnull !23, !noundef !23
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.cx, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !6277, !inline_history !6282
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.cz = load ptr, ptr %i.cy, align 16, !alias.scope !6277, !noalias !6280, !nonnull !23, !noundef !23
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.da, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !6277, !inline_history !6282
  %i.db = getelementptr inbounds nuw i8, ptr %.tr, i64 136
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !6277, !noalias !6280, !nonnull !23, !noundef !23
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr, i64 144
  %i.de = load i64, ptr %i.dd, align 16, !alias.scope !6277, !noalias !6280, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !6283
  store i64 %i.de, ptr %i.ad, align 8, !noalias !6283
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 8) #34, !noalias !6277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !6283
  tail call void @_RINvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.dc, i64 noundef %i.de, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !6277, !inline_history !6282
  %i.df = load i64, ptr %i.cu, align 16, !range !2138, !alias.scope !6277, !noalias !6280, !noundef !23
  %i.dg = icmp ne i64 %i.df, 37                   ; 2 uses
  %i.dh = zext i1 %i.dg to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !6288
  store i64 %i.dh, ptr %i.ae, align 8, !noalias !6288
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 8) #34, !noalias !6277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !6288
  br i1 %i.dg, label %bb.j, label %_RINvXs2O_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_4JoinNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.cu, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !inline_history !6282
  br label %_RINvXs2O_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_4JoinNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvXs2O_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_4JoinNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.i, %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr %.tr, i64 178
  %i.dj = load i8, ptr %i.di, align 2, !range !6293, !alias.scope !6277, !noalias !6280, !noundef !23
  %i.dk = zext nneg i8 %i.dj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !6294
  store i64 %i.dk, ptr %i.af, align 8, !noalias !6294
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !6294
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr, i64 176
  %i.dm = load i8, ptr %i.dl, align 16, !range !1436, !alias.scope !6277, !noalias !6280, !noundef !23
  %i.dn = zext nneg i8 %i.dm to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !6299
  store i64 %i.dn, ptr %i.ag, align 8, !noalias !6299
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef 8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6299
  %i.do = getelementptr inbounds nuw i8, ptr %.tr, i64 168
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !6277, !noalias !6280, !nonnull !23, !noundef !23
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dq, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !6282
  %i.dr = getelementptr inbounds nuw i8, ptr %.tr, i64 177
  %i.ds = load i8, ptr %i.dr, align 1, !range !1436, !alias.scope !6277, !noalias !6280, !noundef !23
  %i.dt = zext nneg i8 %i.ds to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !6304
  store i64 %i.dt, ptr %i.ah, align 8, !noalias !6304
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6304
  br label %common.ret

bb.k:                                             ; preds = %tailrecurse
  %i.du = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6309)
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !6309, !noalias !6312, !nonnull !23, !noundef !23
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.dx, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !6309, !inline_history !6314
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6315)
  %i.dy = load i64, ptr %i.du, align 8, !range !74, !alias.scope !6315, !noalias !6318, !noundef !23 ; 3 uses
  %i.dz = icmp ne i64 %i.dy, -9223372036854775807
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = xor i64 %i.dy, -9223372036854775808
  %i.eb = icmp slt i64 %i.dy, 0
  %i.ec = select i1 %i.eb, i64 %i.ea, i64 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !6320
  store i64 %i.ec, ptr %i.ac, align 8, !noalias !6320
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 8) #34, !noalias !6315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !6320
  switch i64 %i.ec, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ed = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !6315, !noalias !6318, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !6325
  store i64 %i.ee, ptr %i.ab, align 8, !noalias !6325
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 8) #34, !noalias !6315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !6325
  br label %common.ret

bb.n:                                             ; preds = %bb.k
  %i.ef = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !6315, !noalias !6318, !nonnull !23, !noundef !23
  %i.eh = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !6315, !noalias !6318, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !6328
  store i64 %i.ei, ptr %i.aa, align 8, !noalias !6328
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #34, !noalias !6315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !6328
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.eg, i64 noundef %i.ei, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !6315
  %i.ej = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !6315, !noalias !6318, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6333
  store i64 %i.ek, ptr %i.z, align 8, !noalias !6333
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 8) #34, !noalias !6315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6333
  br label %common.ret

bb.o:                                             ; preds = %bb.k
  %i.el = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !6315, !noalias !6318, !nonnull !23, !noundef !23
  %i.en = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !6315, !noalias !6318, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6336
  store i64 %i.eo, ptr %i.y, align 8, !noalias !6336
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #34, !noalias !6315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6336
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.em, i64 noundef %i.eo, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !6315
  br label %common.ret

bb.p:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6341)
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !6341, !noalias !6344, !nonnull !23, !noundef !23 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !6341, !noalias !6344, !noundef !23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6346
  store i64 %i.es, ptr %i.x, align 8, !noalias !6346
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 8) #34, !noalias !6341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !6346
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6351)
  %.idx = shl nuw nsw i64 %i.es, 3
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx
  %i.eu = icmp eq i64 %i.es, 0
  br i1 %i.eu, label %_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.sroa.0.0.i54 = phi ptr [ %i.ev, %.lr.ph ], [ %i.eq, %bb.p ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i54, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6354), !noalias !6341
  %i.ew = load ptr, ptr %.sroa.0.0.i54, align 8, !alias.scope !6357, !noalias !6358, !nonnull !23, !noundef !23
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ex, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !6361, !inline_history !6362
  %i.ey = icmp eq ptr %i.ev, %i.et
  br i1 %i.ey, label %_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph

_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.lr.ph, %bb.p
  %i.ez = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !6341, !noalias !6344, !nonnull !23, !noundef !23
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fb, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !6341, !inline_history !6363
  br label %common.ret

bb.q:                                             ; preds = %tailrecurse
  %i.fc = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @_RINvXsh_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.fc, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.r:                                             ; preds = %tailrecurse
  %i.fd = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %.val = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val1 = load i8, ptr %i.fe, align 8, !range !1436, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !6364
  store i8 %.val1, ptr %i.aq, align 1, !noalias !6364
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef 1) #34
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !6364
  %i.ff = getelementptr inbounds nuw i8, ptr %.val, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ff, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.s:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6369)
  %i.fg = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !6369, !noalias !6372, !nonnull !23, !noundef !23
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.fi, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !6369, !inline_history !1720
  %i.fj = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !6369, !noalias !6372, !nonnull !23, !noundef !23
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !6369, !noalias !6372, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !6374
  store i64 %i.fm, ptr %i.w, align 8, !noalias !6374
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 8) #34, !noalias !6369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !6374
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.fk, i64 noundef %i.fm, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !6369, !inline_history !1720
  br label %common.ret

bb.t:                                             ; preds = %tailrecurse
  %i.fn = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6379)
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.fp = load ptr, ptr %i.fo, align 8, !alias.scope !6379, !noalias !6382, !nonnull !23, !noundef !23
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.fq, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !6379, !inline_history !6384
  tail call fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.fn, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !inline_history !6384
  %i.fr = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !6379, !noalias !6382, !nonnull !23, !noundef !23
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ft, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !6379, !inline_history !6384
  br label %common.ret

bb.u:                                             ; preds = %tailrecurse
  %i.fu = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6385)
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.fw = load ptr, ptr %i.fv, align 16, !alias.scope !6385, !noalias !6388, !align !1488, !noundef !23 ; 2 uses
  %i.fx = icmp ne ptr %i.fw, null                 ; 2 uses
  %i.fy = zext i1 %i.fx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !6390
  store i64 %i.fy, ptr %i.u, align 8, !noalias !6390
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 8) #34, !noalias !6385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !6390
  br i1 %i.fx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.fw, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !6385, !inline_history !6395
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fz = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !6385, !noalias !6388, !align !1488, !noundef !23 ; 2 uses
  %i.gb = icmp ne ptr %i.ga, null                 ; 2 uses
  %i.gc = zext i1 %i.gb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !6396
  store i64 %i.gc, ptr %i.v, align 8, !noalias !6396
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #34, !noalias !6385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6396
  br i1 %i.gb, label %bb.x, label %tailrecurse.backedge

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ga, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !6385, !inline_history !6395
  br label %tailrecurse.backedge

bb.y:                                             ; preds = %tailrecurse
  %i.gd = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6401)
  %i.ge = load i64, ptr %i.gd, align 8, !range !6404, !alias.scope !6401, !noalias !6405, !noundef !23 ; 3 uses
  %i.gf = icmp ne i64 %i.ge, -9223372036854775804
  tail call void @llvm.assume(i1 %i.gf)
  %i.gg = xor i64 %i.ge, -9223372036854775808
  %i.gh = icmp slt i64 %i.ge, 0
  %i.gi = select i1 %i.gh, i64 %i.gg, i64 4       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !6407
  store i64 %i.gi, ptr %i.t, align 8, !noalias !6407
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 8) #34, !noalias !6401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !6407
  switch i64 %i.gi, label %bb.z [
    i64 0, label %bb.aa
    i64 1, label %bb.ab
    i64 2, label %bb.ac
    i64 3, label %bb.ad
    i64 4, label %bb.ae
    i64 5, label %bb.af
    i64 6, label %bb.ag
  ]

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.gj = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val.i = load i8, ptr %i.gj, align 8, !range !1436, !alias.scope !6401, !noalias !6405, !noundef !23
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr, i64 17
  %.val1.i = load i8, ptr %i.gk, align 1, !alias.scope !6401, !noalias !6405
  tail call fastcc void @_RINvXsx_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_16TransactionStartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(i8 %.val.i, i8 %.val1.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !6401, !inline_history !6412
  br label %common.ret

bb.ab:                                            ; preds = %bb.y
  %i.gl = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val2.i = load i8, ptr %i.gl, align 8, !range !1436, !alias.scope !6401, !noalias !6405, !noundef !23
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr, i64 17
  %.val3.i = load i8, ptr %i.gm, align 1, !alias.scope !6401, !noalias !6405
  tail call fastcc void @_RINvXsE_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_14TransactionEndNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(i8 %.val2.i, i8 %.val3.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !6401, !inline_history !6412
  br label %common.ret

bb.ac:                                            ; preds = %bb.y
  %i.gn = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXsL_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_11SetVariableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gn, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !inline_history !6412
  br label %common.ret

bb.ad:                                            ; preds = %bb.y
  %i.go = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val4.i = load ptr, ptr %i.go, align 8, !alias.scope !6401, !noalias !6405, !nonnull !23, !noundef !23
  %i.gp = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.val5.i = load i64, ptr %i.gp, align 8, !alias.scope !6401, !noalias !6405, !noundef !23
  tail call fastcc void @_RINvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_13ResetVariableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr %.val4.i, i64 %.val5.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !6401, !inline_history !6412
  br label %common.ret

bb.ae:                                            ; preds = %bb.y
  tail call fastcc void @_RINvXsZ_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_7PrepareNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gd, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !inline_history !6412
  br label %common.ret

bb.af:                                            ; preds = %bb.y
  %i.gq = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXs16_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_7ExecuteNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gq, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !inline_history !6412
  br label %common.ret

bb.ag:                                            ; preds = %bb.y
  %i.gr = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val6.i = load ptr, ptr %i.gr, align 8, !alias.scope !6401, !noalias !6405, !nonnull !23, !noundef !23
  %i.gs = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.val7.i = load i64, ptr %i.gs, align 8, !alias.scope !6401, !noalias !6405, !noundef !23
  tail call fastcc void @_RINvXs1d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_10DeallocateNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr %.val6.i, i64 %.val7.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !6401, !inline_history !6412
  br label %common.ret

bb.ah:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6413)
  %i.gt = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !6413, !noalias !6416, !nonnull !23, !noundef !23
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gv, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !6413
  %i.gw = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !6413, !noalias !6416, !nonnull !23, !noundef !23
  %i.gy = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !6413, !noalias !6416, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !6418
  store i64 %i.gz, ptr %i.ap, align 8, !noalias !6418
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef 8) #34, !noalias !6413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !6418
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gx, i64 noundef %i.gz, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !6413
  br label %common.ret

bb.ai:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6423)
  %i.ha = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.hb = load i8, ptr %i.ha, align 8, !range !1436, !alias.scope !6423, !noalias !6426, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6428
  store i8 %i.hb, ptr %i.p, align 1, !noalias !6428
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 1) #34, !noalias !6423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6428
  %i.hc = getelementptr inbounds nuw i8, ptr %.tr, i64 50
  %i.hd = load i8, ptr %i.hc, align 2, !range !186, !alias.scope !6423, !noalias !6426, !noundef !23
  %i.he = zext nneg i8 %i.hd to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6431
  store i64 %i.he, ptr %i.q, align 8, !noalias !6431
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 8) #34, !noalias !6423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6431
  %i.hf = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !alias.scope !6423, !noalias !6426, !nonnull !23, !noundef !23
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.hh, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #34, !noalias !6423, !inline_history !6436
  %i.hi = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !6423, !noalias !6426, !nonnull !23, !noundef !23
  %i.hk = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !6423, !noalias !6426, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6437
  store i64 %i.hl, ptr %i.r, align 8, !noalias !6437
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 8) #34, !noalias !6423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6437
  tail call void @_RINvYNtNtCsjhHCjzi9uUI_17datafusion_common7display15StringifiedPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.hj, i64 noundef %i.hl, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !6423, !inline_history !6436
  %i.hm = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !6423, !noalias !6426, !nonnull !23, !noundef !23
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ho, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !6423, !inline_history !6436
  %i.hp = getelementptr inbounds nuw i8, ptr %.tr, i64 49
  %i.hq = load i8, ptr %i.hp, align 1, !range !1436, !alias.scope !6423, !noalias !6426, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6442
  store i8 %i.hq, ptr %i.s, align 1, !noalias !6442
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 1) #34, !noalias !6423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6442
  br label %common.ret

bb.aj:                                            ; preds = %tailrecurse
  %i.hr = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6445)
  %i.hs = getelementptr inbounds nuw i8, ptr %.tr, i64 24
end_hunk_7
begin_hunk_8_@_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks
define hidden void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %.idx = shl nuw nsw i64 %1, 3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8 ; 2 uses
  %.sroa.0.0.val = load ptr, ptr %.sroa.0.03, align 8, !nonnull !23, !noundef !23
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  %i.e = icmp eq ptr %i.c, %i.a
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %.idx = shl nuw nsw i64 %1, 3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9911)
  %i.d = load ptr, ptr %.sroa.0.03, align 8, !alias.scope !9911, !noalias !9914, !nonnull !23, !noundef !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(72) %2) #34, !noalias !9911, !inline_history !9916
  %i.f = icmp eq ptr %i.c, %i.a
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 27450512014448738) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %.idx = mul nuw nsw i64 %1, 336
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.k = icmp eq i64 %1, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvXs9_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB6_10RoleOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.0.03 = phi ptr [ %i.l, %_RINvXs9_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB6_10RoleOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %0, %bb.a ] ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 336 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9917)
  %i.m = load i8, ptr %.sroa.0.03, align 8, !range !6293, !alias.scope !9917, !noalias !9920, !noundef !23 ; 2 uses
  %i.n = zext nneg i8 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9922
  store i64 %i.n, ptr %i.a, align 8, !noalias !9922
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #34, !noalias !9917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9922
  switch i8 %i.m, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
  ]

default.unreachable:                              ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !1436, !alias.scope !9917, !noalias !9920, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9927
  store i8 %i.p, ptr %i.b, align 1, !noalias !9927
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #34, !noalias !9917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9927
  br label %_RINvXs9_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB6_10RoleOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(72) %2) #34, !inline_history !9930
  br label %_RINvXs9_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB6_10RoleOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.d:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 1
  %i.s = load i8, ptr %i.r, align 1, !range !1436, !alias.scope !9917, !noalias !9920, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9931
  store i8 %i.s, ptr %i.c, align 1, !noalias !9931
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1) #34, !noalias !9917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9931
  br label %_RINvXs9_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB6_10RoleOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !1436, !alias.scope !9917, !noalias !9920, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9934
  store i8 %i.u, ptr %i.d, align 1, !noalias !9934
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1) #34, !noalias !9917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9934
  br label %_RINvXs9_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB6_10RoleOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.f:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !1436, !alias.scope !9917, !noalias !9920, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9937
  store i8 %i.w, ptr %i.e, align 1, !noalias !9937
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1) #34, !noalias !9917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9937
  br label %_RINvXs9_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB6_10RoleOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.g:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 1
  %i.y = load i8, ptr %i.x, align 1, !range !1436, !alias.scope !9917, !noalias !9920, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9940
  store i8 %i.y, ptr %i.f, align 1, !noalias !9940
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1) #34, !noalias !9917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9940
  br label %_RINvXs9_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB6_10RoleOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.h:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9943)
  %i.aa = load i64, ptr %i.z, align 8, !range !131, !alias.scope !9943, !noalias !9946, !noundef !23
  %i.ab = icmp eq i64 %i.aa, 69                   ; 2 uses
  %i.ac = zext i1 %i.ab to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9948
  store i64 %i.ac, ptr %i.g, align 8, !noalias !9948
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8) #34, !noalias !9943, !inline_history !9953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9948
  br i1 %i.ab, label %_RINvXs9_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB6_10RoleOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(72) %2) #34, !inline_history !9953
  br label %_RINvXs9_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB6_10RoleOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.j:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !range !1436, !alias.scope !9917, !noalias !9920, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9954
  store i8 %i.ae, ptr %i.h, align 1, !noalias !9954
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1) #34, !noalias !9917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9954
  br label %_RINvXs9_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB6_10RoleOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.k:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !range !1436, !alias.scope !9917, !noalias !9920, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9957
  store i8 %i.ag, ptr %i.i, align 1, !noalias !9957
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1) #34, !noalias !9917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9957
  br label %_RINvXs9_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB6_10RoleOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(72) %2) #34, !inline_history !9930
  br label %_RINvXs9_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB6_10RoleOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvXs9_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB6_10RoleOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.i, %bb.h, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.j, %bb.k, %bb.l
  %i.ai = icmp eq ptr %i.l, %i.j
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvXs9_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB6_10RoleOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %.idx = shl nuw nsw i64 %1, 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.04 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 16 ; 2 uses
  %.sroa.0.0.val = load i8, ptr %.sroa.0.04, align 1, !noundef !23
  %i.e = getelementptr i8, ptr %.sroa.0.04, i64 8
  %.sroa.0.0.val3 = load ptr, ptr %i.e, align 8   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9960
  store i8 %.sroa.0.0.val, ptr %i.a, align 1, !noalias !9960
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #34
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.val3) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9960
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val3, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  %i.g = icmp eq ptr %i.d, %i.b
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_8LogStoreEL_EB1l_17read_commit_entry0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !186, !noundef !23
  switch i8 %i.d, label %default.unreachable9 [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !23
  %.val5 = load ptr, ptr %i.f, align 8, !nonnull !23, !noundef !23
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val6 = load ptr, ptr %i.i, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !25, !invariant.load !23
  %i.l = add nsw i64 %i.k, -1
  %i.m = and i64 %i.l, -16
  %i.n = getelementptr inbounds nuw i8, ptr %.val5, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.val6, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !23, !nonnull !23
  %i.r = invoke { ptr, ptr } %i.q(ptr noundef nonnull %i.o, i64 noundef %i.h)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.t, ptr %i.v, align 8
  br label %bb.h

.body:                                            ; preds = %bb.p, %bb.o, %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.w, %bb.g ], [ %i.ai, %bb.o ], [ %i.ai, %bb.p ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #29
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #29
  unreachable

bb.g:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %i.y, align 8
  %i.x = getelementptr i8, ptr %1, i64 24
  %.val4 = load ptr, ptr %i.x, align 8, !nonnull !23, !align !36, !noundef !23
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val3, ptr nonnull %.val4) #30
          to label %.body unwind label %bb.q

bb.h:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.z = load i64, ptr %i.b, align 16, !range !9969, !noundef !23
  %i.aa = icmp eq i64 %i.z, -9223372036854775710
  br i1 %i.aa, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.j
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.y, align 8             ; 5 uses
  %i.ab = getelementptr i8, ptr %1, i64 24
  %.val2 = load ptr, ptr %i.ab, align 8, !nonnull !23, !align !36, !noundef !23 ; 5 uses
  %i.ac = load ptr, ptr %.val2, align 8, !invariant.load !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ac(ptr noundef nonnull %.val)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !25, !invariant.load !23
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.o:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !25, !invariant.load !23
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #32
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  br label %common.ret

bb.q:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_8LogStoreEL_EB1l_18abort_commit_entry0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 1                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 82 ; 3 uses
  %i.g = load i8, ptr %i.f, align 2, !range !186, !noundef !23
  switch i8 %i.g, label %default.unreachable9 [
    i8 0, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.b
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.i, align 1
  store i8 1, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %.val = load ptr, ptr %i.k, align 8, !nonnull !23, !noundef !23
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %.val2 = load ptr, ptr %i.o, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !25, !invariant.load !23
  %i.r = add nsw i64 %i.q, -1
  %i.s = and i64 %i.r, -16
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.val2, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !23, !nonnull !23
  %i.x = invoke { ptr, ptr } %i.w(ptr noundef nonnull %i.u, i64 noundef %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.d)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.body

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = extractvalue { ptr, ptr } %i.x, 0
  %i.aa = extractvalue { ptr, ptr } %i.x, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.aa, ptr %i.ac, align 8
  br label %bb.i

.body:                                            ; preds = %bb.q, %bb.p, %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.ag, %bb.h ], [ %i.as, %bb.p ], [ %i.as, %bb.q ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !range !1436, !noundef !23
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.t, label %bb.s

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #29
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #29
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.ai, align 8
  %i.ah = getelementptr i8, ptr %1, i64 56
  %.val6 = load ptr, ptr %i.ah, align 8, !nonnull !23, !align !36, !noundef !23
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val5, ptr nonnull %.val6) #30
          to label %.body unwind label %bb.r

bb.i:                                             ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.aj = load i64, ptr %i.b, align 8, !range !9970, !noundef !23
  %i.ak = icmp eq i64 %i.aj, -9223372036854775780
  br i1 %i.ak, label %bb.k, label %bb.l

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.k
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 3, %bb.k ]
  store i8 %storemerge, ptr %i.f, align 2
  ret void

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775780, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %common.ret

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %i.ai, align 8           ; 5 uses
  %i.al = getelementptr i8, ptr %1, i64 56
  %.val4 = load ptr, ptr %i.al, align 8, !nonnull !23, !align !36, !noundef !23 ; 5 uses
  %i.am = load ptr, ptr %.val4, align 8, !invariant.load !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  invoke void %i.am(ptr noundef nonnull %.val3)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !25, !invariant.load !23
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, -9223372036854775808) %i.ao, i64 noundef range(i64 1, 536870913) %i.ar) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.p:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !25, !invariant.load !23
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, -9223372036854775808) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #32
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.o, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i8 0, ptr %i.ay, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %common.ret

bb.r:                                             ; preds = %bb.h, %bb.v, %bb.t
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.s:                                             ; preds = %bb.t, %.body
  store i8 0, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.bb = load i8, ptr %i.ba, align 1, !range !1436, !noundef !23
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.v, label %bb.u

bb.t:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.e) #30
          to label %bb.s unwind label %bb.r

bb.u:                                             ; preds = %bb.v, %bb.s
  store i8 2, ptr %i.f, align 2
  resume { ptr, i32 } %.pn

bb.v:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %1) #30
          to label %bb.u unwind label %bb.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_8LogStoreEL_EB1l_18get_latest_version0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !186, !noundef !23
  switch i8 %i.d, label %default.unreachable9 [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !23
  %.val = load ptr, ptr %i.f, align 8, !nonnull !23, !noundef !23
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val2 = load ptr, ptr %i.i, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !25, !invariant.load !23
  %i.l = add nsw i64 %i.k, -1
  %i.m = and i64 %i.l, -16
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !23, !nonnull !23
  %i.r = invoke { ptr, ptr } %i.q(ptr noundef nonnull %i.o, i64 noundef %i.h)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.t, ptr %i.v, align 8
  br label %bb.h

.body:                                            ; preds = %bb.p, %bb.o, %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.w, %bb.g ], [ %i.ai, %bb.o ], [ %i.ai, %bb.p ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #29
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #29
  unreachable

bb.g:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.y, align 8
  %i.x = getelementptr i8, ptr %1, i64 24
  %.val6 = load ptr, ptr %i.x, align 8, !nonnull !23, !align !36, !noundef !23
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val5, ptr nonnull %.val6) #30
          to label %.body unwind label %bb.q

bb.h:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.z = load i64, ptr %i.b, align 16, !range !9969, !noundef !23
  %i.aa = icmp eq i64 %i.z, -9223372036854775710
  br i1 %i.aa, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.j
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %i.y, align 8            ; 5 uses
  %i.ab = getelementptr i8, ptr %1, i64 24
  %.val4 = load ptr, ptr %i.ab, align 8, !nonnull !23, !align !36, !noundef !23 ; 5 uses
  %i.ac = load ptr, ptr %.val4, align 8, !invariant.load !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  invoke void %i.ac(ptr noundef nonnull %.val3)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !25, !invariant.load !23
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.o:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !25, !invariant.load !23
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, -9223372036854775808) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #32
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  br label %common.ret

bb.q:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_8LogStoreEL_EB1l_18write_commit_entry0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 1                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 82 ; 3 uses
  %i.g = load i8, ptr %i.f, align 2, !range !186, !noundef !23
  switch i8 %i.g, label %default.unreachable9 [
    i8 0, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.b
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.i, align 1
  store i8 1, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %.val = load ptr, ptr %i.k, align 8, !nonnull !23, !noundef !23
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %.val2 = load ptr, ptr %i.o, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !25, !invariant.load !23
  %i.r = add nsw i64 %i.q, -1
  %i.s = and i64 %i.r, -16
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.val2, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !23, !nonnull !23
  %i.x = invoke { ptr, ptr } %i.w(ptr noundef nonnull %i.u, i64 noundef %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.d)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.body

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = extractvalue { ptr, ptr } %i.x, 0
  %i.aa = extractvalue { ptr, ptr } %i.x, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.aa, ptr %i.ac, align 8
  br label %bb.i

.body:                                            ; preds = %bb.q, %bb.p, %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.ag, %bb.h ], [ %i.as, %bb.p ], [ %i.as, %bb.q ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !range !1436, !noundef !23
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.t, label %bb.s

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #29
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #29
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.ai, align 8
  %i.ah = getelementptr i8, ptr %1, i64 56
  %.val6 = load ptr, ptr %i.ah, align 8, !nonnull !23, !align !36, !noundef !23
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val5, ptr nonnull %.val6) #30
          to label %.body unwind label %bb.r

bb.i:                                             ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.aj = load i64, ptr %i.b, align 8, !range !9970, !noundef !23
  %i.ak = icmp eq i64 %i.aj, -9223372036854775780
  br i1 %i.ak, label %bb.k, label %bb.l

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.k
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 3, %bb.k ]
  store i8 %storemerge, ptr %i.f, align 2
  ret void

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775780, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %common.ret

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %i.ai, align 8           ; 5 uses
  %i.al = getelementptr i8, ptr %1, i64 56
  %.val4 = load ptr, ptr %i.al, align 8, !nonnull !23, !align !36, !noundef !23 ; 5 uses
  %i.am = load ptr, ptr %.val4, align 8, !invariant.load !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  invoke void %i.am(ptr noundef nonnull %.val3)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !25, !invariant.load !23
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, -9223372036854775808) %i.ao, i64 noundef range(i64 1, 536870913) %i.ar) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.p:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !25, !invariant.load !23
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, -9223372036854775808) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #32
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.o, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i8 0, ptr %i.ay, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %common.ret

bb.r:                                             ; preds = %bb.h, %bb.v, %bb.t
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.s:                                             ; preds = %bb.t, %.body
  store i8 0, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.bb = load i8, ptr %i.ba, align 1, !range !1436, !noundef !23
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.v, label %bb.u

bb.t:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.e) #30
          to label %bb.s unwind label %bb.r

bb.u:                                             ; preds = %bb.v, %bb.s
  store i8 2, ptr %i.f, align 2
  resume { ptr, i32 } %.pn

bb.v:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %1) #30
          to label %bb.u unwind label %bb.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_8LogStoreEL_EB1l_23is_delta_table_location0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !186, !noundef !23
  switch i8 %i.d, label %default.unreachable9 [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %.val = load ptr, ptr %i.f, align 8, !nonnull !23, !noundef !23
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val2 = load ptr, ptr %i.g, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !25, !invariant.load !23
  %i.j = add nsw i64 %i.i, -1
  %i.k = and i64 %i.j, -16
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !23, !nonnull !23
  %i.p = invoke { ptr, ptr } %i.o(ptr noundef nonnull %i.m)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.p, 0
  %i.r = extractvalue { ptr, ptr } %i.p, 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.r, ptr %i.t, align 8
  br label %bb.h

.body:                                            ; preds = %bb.p, %bb.o, %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.u, %bb.g ], [ %i.ag, %bb.o ], [ %i.ag, %bb.p ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29
  unreachable

bb.g:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.w, align 8
  %i.v = getelementptr i8, ptr %1, i64 16
  %.val6 = load ptr, ptr %i.v, align 8, !nonnull !23, !align !36, !noundef !23
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val5, ptr nonnull %.val6) #30
          to label %.body unwind label %bb.q

bb.h:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr %i.b, align 16, !range !9969, !noundef !23
  %i.y = icmp eq i64 %i.x, -9223372036854775710
  br i1 %i.y, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.j
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %i.w, align 8            ; 5 uses
  %i.z = getelementptr i8, ptr %1, i64 16
  %.val4 = load ptr, ptr %i.z, align 8, !nonnull !23, !align !36, !noundef !23 ; 5 uses
  %i.aa = load ptr, ptr %.val4, align 8, !invariant.load !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  invoke void %i.aa(ptr noundef nonnull %.val3)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !25, !invariant.load !23
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.o:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !25, !invariant.load !23
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, -9223372036854775808) %i.ai, i64 noundef range(i64 1, 536870913) %i.al) #32
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  br label %common.ret

bb.q:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_8LogStoreEL_EB1l_7refresh0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !186, !noundef !23
  switch i8 %i.d, label %default.unreachable9 [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %.val = load ptr, ptr %i.f, align 8, !nonnull !23, !noundef !23
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val2 = load ptr, ptr %i.g, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !25, !invariant.load !23
  %i.j = add nsw i64 %i.i, -1
  %i.k = and i64 %i.j, -16
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !23, !nonnull !23
  %i.p = invoke { ptr, ptr } %i.o(ptr noundef nonnull %i.m)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.p, 0
  %i.r = extractvalue { ptr, ptr } %i.p, 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.r, ptr %i.t, align 8
  br label %bb.h

.body:                                            ; preds = %bb.p, %bb.o, %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.u, %bb.g ], [ %i.ag, %bb.o ], [ %i.ag, %bb.p ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #29
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #29
  unreachable

bb.g:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.w, align 8
  %i.v = getelementptr i8, ptr %1, i64 16
  %.val6 = load ptr, ptr %i.v, align 8, !nonnull !23, !align !36, !noundef !23
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val5, ptr nonnull %.val6) #30
          to label %.body unwind label %bb.q

bb.h:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr %i.b, align 16, !range !9969, !noundef !23
  %i.y = icmp eq i64 %i.x, -9223372036854775710
  br i1 %i.y, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.j
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %i.w, align 8            ; 5 uses
  %i.z = getelementptr i8, ptr %1, i64 16
  %.val4 = load ptr, ptr %i.z, align 8, !nonnull !23, !align !36, !noundef !23 ; 5 uses
  %i.aa = load ptr, ptr %.val4, align 8, !invariant.load !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  invoke void %i.aa(ptr noundef nonnull %.val3)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !25, !invariant.load !23
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.o:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !25, !invariant.load !23
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, -9223372036854775808) %i.ai, i64 noundef range(i64 1, 536870913) %i.al) #32
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  br label %common.ret

bb.q:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE5sliceCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noundef !23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !23
  store ptr %i.c, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.i, ptr %i.k, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9971)
  %i.l = shl i64 %2, 2
  %i.m = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.m, label %.invoke.i, label %bb.c, !prof !4

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.n, label %.invoke.i, label %bb.d, !prof !4

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %3, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9974
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.l, i64 noundef %i.o)
          to label %bb.g unwind label %bb.e, !noalias !9976

.invoke.i:                                        ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ @15, %bb.b ], [ @12, %bb.c ]
  %i.q = phi ptr [ @16, %bb.b ], [ @14, %bb.c ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #35
          to label %.cont.i unwind label %bb.e, !noalias !9974

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.e:                                             ; preds = %.invoke.i, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.aa, %bb.i ], [ %i.aa, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9977)
  call void @llvm.experimental.noalias.scope.decl(metadata !9980)
  call void @llvm.experimental.noalias.scope.decl(metadata !9983)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !9986, !noalias !9976, !nonnull !23, !noundef !23
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !9987
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.f:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.m, !noalias !9976

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !9988)
  call void @llvm.experimental.noalias.scope.decl(metadata !9991)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !9991, !noalias !9993, !noundef !23
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, 3
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.k, label %.invoke.i.i, !prof !9994

bb.h:                                             ; preds = %.invoke.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !9995
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #33
          to label %.body.i unwind label %bb.j, !noalias !10002

.invoke.i.i:                                      ; preds = %bb.g
  %i.ad = load ptr, ptr %i.a, align 8, !alias.scope !9991, !noalias !9993, !nonnull !23, !noundef !23 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !10003, !noundef !23
  %.not.i.i = icmp eq ptr %i.af, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @39, ptr @41
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @38, ptr @40
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #35
          to label %.cont.i.i unwind label %bb.h, !noalias !10003

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !10002
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !10004, !noalias !9971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9974
  call void @llvm.experimental.noalias.scope.decl(metadata !10005)
  call void @llvm.experimental.noalias.scope.decl(metadata !10008)
  call void @llvm.experimental.noalias.scope.decl(metadata !10011)
  %i.ah = load ptr, ptr %i.b, align 8, !alias.scope !10014, !noalias !9976, !nonnull !23, !noundef !23
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !10015
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #33, !noalias !9976
  br label %_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCs2VbMhdeEr66_16delta_benchmarks.exit

bb.m:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !9976
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE5sliceCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noundef !23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !23
  store ptr %i.c, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.i, ptr %i.k, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10016)
  %i.l = shl i64 %2, 3
  %i.m = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.m, label %.invoke.i, label %bb.c, !prof !4

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.n, label %.invoke.i, label %bb.d, !prof !4

bb.d:                                             ; preds = %bb.c
end_hunk_8
begin_hunk_9_@_RNvXs1P_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ay, label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.o

bb.n:                                             ; preds = %bb.l
  br i1 %i.ay, label %bb.q, label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !10123, !noalias !10126, !noundef !23 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !10126, !noalias !10123, !noundef !23
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.p, label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !10126, !noalias !10123, !nonnull !23, !noundef !23
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !10123, !noalias !10126, !nonnull !23, !noundef !23
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.bh, ptr nonnull %i.bf, i64 %i.ba), !noalias !10128
  %i.bi = icmp eq i32 %bcmp.i, 0
  br i1 %i.bi, label %bb.q, label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !range !27, !alias.scope !10123, !noalias !10126, !noundef !23
  %.not6.i = icmp eq i64 %i.bk, -9223372036854775808 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !range !27, !alias.scope !10126, !noalias !10123, !noundef !23
  %i.bn = icmp eq i64 %i.bm, -9223372036854775808 ; 2 uses
  %brmerge.i = or i1 %.not6.i, %i.bn
  %.mux.i = and i1 %.not6.i, %i.bn
  br i1 %brmerge.i, label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !10123, !noalias !10126, !noundef !23 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !10126, !noalias !10123, !noundef !23
  %i.bs = icmp eq i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.s, label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !10126, !noalias !10123, !nonnull !23, !noundef !23
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !10123, !noalias !10126, !nonnull !23, !noundef !23
  %bcmp8.i = tail call i32 @bcmp(ptr nonnull %i.bw, ptr nonnull %i.bu, i64 %i.bp), !noalias !10128
  %i.bx = icmp eq i32 %bcmp8.i, 0
  br label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %.tr534, i64 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr33, i64 1
  %.val3 = load i8, ptr %i.bz, align 1, !range !2031, !noundef !23
  %.val4 = load i8, ptr %i.by, align 1, !range !2031, !noundef !23
  %i.ca = icmp eq i8 %.val3, %.val4
  br i1 %i.ca, label %bb.u, label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !23, !noundef !23
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !23, !noundef !23
  %i.cf = tail call fastcc noundef zeroext i1 @_RNvXs1P_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2696) %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2696) %i.ce) #34
  br i1 %i.cf, label %tailrecurse, label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr33, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr534, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.ck = load i8, ptr %i.ch, align 8, !range !1272, !noundef !23 ; 2 uses
  %i.cl = load i8, ptr %i.cj, align 8, !range !1272, !noundef !23
  %i.cm = icmp eq i8 %i.ck, %i.cl
  br i1 %i.cm, label %.lr.ph, label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1V_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !23, !noundef !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !23, !noundef !23
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #34
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1V_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterConnectorOwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !414, !noundef !23 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !414, !noundef !23
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.a to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !23 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !23
  %i.i = icmp eq i64 %i.f, %i.h                   ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.l, %bb.h, %bb.j, %bb.d, %bb.f, %bb.e, %bb.a, %bb.m, %bb.i
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.d ], [ false, %bb.j ], [ %i.ae, %bb.m ], [ %i.s, %bb.h ], [ %i.ad, %bb.l ], [ false, %bb.f ], [ %i.t, %bb.i ], [ false, %bb.a ], [ false, %bb.e ]
  ret i1 %.sroa.0.0.shrunk

bb.d:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.j, label %bb.c

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !23, !noundef !23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !23, !noundef !23
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.k, i64 %i.f)
  %i.n = icmp eq i32 %bcmp, 0
  br i1 %i.n, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i32, ptr %i.o, align 8, !range !1443, !noundef !23 ; 2 uses
  %.not = icmp eq i32 %i.p, 1114112
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load i32, ptr %i.q, align 8, !range !1443, !noundef !23 ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = icmp eq i32 %i.p, %i.r
  br label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.t = icmp eq i32 %i.r, 1114112
  br label %bb.c

bb.j:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !23, !noundef !23
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !23, !noundef !23
  %bcmp7 = tail call i32 @bcmp(ptr nonnull %i.x, ptr nonnull %i.v, i64 %i.f)
  %i.y = icmp eq i32 %bcmp7, 0
  br i1 %i.y, label %bb.k, label %bb.c

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load i32, ptr %i.z, align 8, !range !1443, !noundef !23 ; 2 uses
  %.not8 = icmp eq i32 %i.aa, 1114112
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !range !1443, !noundef !23 ; 2 uses
  br i1 %.not8, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br label %bb.c

bb.m:                                             ; preds = %bb.k
  %i.ae = icmp eq i32 %i.ac, 1114112
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCsd6HHSJaI3s6_16pin_project_lite9___privateINtB5_22UnsafeDropInPlaceGuardINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputIB1P_DNtNtB1n_3any3AnyNtNtB1n_6marker4SendEL_EB3n_EL_EEENtNtNtB1n_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !23  ; 2 uses
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !23, !align !36, !noundef !23 ; 5 uses
  %i.c = load ptr, ptr %.val1, align 8, !invariant.load !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBX_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EB2s_EL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBX_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EB2s_EL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !24, !invariant.load !23 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputIBy_DNtNtBO_3any3AnyNtNtBO_6marker4SendEL_EB1U_EL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !25, !invariant.load !23
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #32
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputIBy_DNtNtBO_3any3AnyNtNtBO_6marker4SendEL_EB1U_EL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputIBy_DNtNtBO_3any3AnyNtNtBO_6marker4SendEL_EB1U_EL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBX_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EB2s_EL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !23, !noundef !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !23, !noundef !23
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #34
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !range !30, !noundef !23
  %.not = icmp eq i64 %i.f, 3
  %i.g = load i64, ptr %1, align 8, !range !30, !noundef !23
  %i.h = icmp eq i64 %i.g, 3                      ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.f, label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.i = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) #34
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i64, ptr %i.j, align 8, !noundef !23 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i64, ptr %i.l, align 8, !noundef !23
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !23, !noundef !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !23, !noundef !23
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.r, ptr nonnull %i.p, i64 %i.k)
  %i.s = icmp eq i32 %bcmp, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !noundef !23 ; 3 uses
  %.not6 = icmp eq ptr %i.u, null                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !noundef !23 ; 3 uses
  %i.x = icmp eq ptr %i.w, null                   ; 2 uses
  %brmerge = or i1 %.not6, %i.x
  %.mux = and i1 %.not6, %i.x
  br i1 %brmerge, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.j, %bb.a, %bb.d, %bb.g, %bb.c, %bb.f, %bb.k
  %.sroa.0.0.shrunk = phi i1 [ %.mux, %bb.h ], [ %i.ab, %bb.k ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.g ], [ false, %bb.d ], [ true, %bb.j ]
  ret i1 %.sroa.0.0.shrunk

bb.j:                                             ; preds = %bb.h
  %i.y = icmp eq ptr %i.u, %i.w
  br i1 %i.y, label %bb.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ab = tail call noundef zeroext i1 @_RNvXs1t_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringB18_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
  br label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1e_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB6_15TriggerExecBodyNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val = load i8, ptr %i.a, align 8, !range !1436, !noundef !23
  %.val1 = load i8, ptr %i.b, align 8, !range !1436, !noundef !23
  %i.c = icmp eq i8 %.val, %.val1
  br i1 %i.c, label %bb.b, label %_RNvXst4_NtCs4lawaffTVVK_9sqlparser3astNtB6_12FunctionDescNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10132)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.d, align 8, !alias.scope !10129, !noalias !10132, !noundef !23 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i = load i64, ptr %i.e, align 8, !alias.scope !10132, !noalias !10129, !noundef !23
  %i.f = icmp eq i64 %.val2.i, %.val4.i
  br i1 %i.f, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXst4_NtCs4lawaffTVVK_9sqlparser3astNtB6_12FunctionDescNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.g, align 8, !alias.scope !10132, !noalias !10129, !nonnull !23, !noundef !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !10129, !noalias !10132, !nonnull !23, !noundef !23
  %i.i = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %.val.i, ptr noundef nonnull %.val3.i, i64 noundef %.val2.i), !noalias !10134
  br i1 %i.i, label %bb.c, label %_RNvXst4_NtCs4lawaffTVVK_9sqlparser3astNtB6_12FunctionDescNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !range !27, !alias.scope !10129, !noalias !10132, !noundef !23
  %.not.i = icmp eq i64 %i.k, -9223372036854775808 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !range !27, !alias.scope !10132, !noalias !10129, !noundef !23
  %i.n = icmp eq i64 %i.m, -9223372036854775808   ; 2 uses
  %brmerge.i = or i1 %.not.i, %i.n
  %.mux.i = and i1 %.not.i, %i.n
  br i1 %brmerge.i, label %_RNvXst4_NtCs4lawaffTVVK_9sqlparser3astNtB6_12FunctionDescNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !10129, !noalias !10132, !noundef !23 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !10132, !noalias !10129, !noundef !23
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_RNvXst4_NtCs4lawaffTVVK_9sqlparser3astNtB6_12FunctionDescNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !10132, !noalias !10129, !nonnull !23, !noundef !23
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !10129, !noalias !10132, !nonnull !23, !noundef !23
  %i.x = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.w, ptr noundef nonnull %i.u, i64 noundef %i.p), !noalias !10134
  br label %_RNvXst4_NtCs4lawaffTVVK_9sqlparser3astNtB6_12FunctionDescNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXst4_NtCs4lawaffTVVK_9sqlparser3astNtB6_12FunctionDescNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.e, %bb.d, %bb.c, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.x, %bb.e ], [ %.mux.i, %bb.c ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1g_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_10BinaryExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %i.b = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %i.c = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b) #34
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !1427, !noundef !23
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !1427, !noundef !23
  %i.h = icmp eq i8 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !23, !noundef !23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !23, !noundef !23
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.j, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.l) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ %i.m, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtB6_5Debug3fmtCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !23, !noundef !23
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !25, !invariant.load !23, !noalias !10135
  %i.e = add nsw i64 %i.d, -1
  %i.f = and i64 %i.e, -16
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !23, !noalias !10135, !nonnull !23
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #34, !inline_history !10138
  ret i1 %i.k
end_hunk_9
begin_hunk_10_@_RNvXs1v_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.cz = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cw, i64 noundef %i.cr)
  br i1 %i.cz, label %bb.ap, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !range !29, !noundef !23
  %.not21 = icmp eq i64 %i.db, -9223372036854775807
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 1328 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !range !29, !noundef !23
  %i.de = icmp eq i64 %i.dd, -9223372036854775807 ; 2 uses
  br i1 %.not21, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.de, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  br i1 %i.de, label %bb.at, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.as:                                            ; preds = %bb.aq
  %i.df = tail call fastcc noundef zeroext i1 @_RNvXseL_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12FormatClauseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.da, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dc) #34
  br i1 %i.df, label %bb.at, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !23 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.dj = load i64, ptr %i.di, align 8, !noundef !23
  %i.dk = icmp eq i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.au, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.o, %bb.l, %bb.j, %bb.u, %bb.r, %bb.n, %_RNvXsb5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11OrderByKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.q, %bb.e, %bb.d, %bb.as, %bb.ao, %bb.aj, %bb.ad, %bb.z, %bb.v, %_RNvXsbf_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.at, %bb.c, %bb.f, %bb.i, %bb.y, %bb.ac, %bb.af, %bb.ai, %bb.am, %bb.ar, %bb.b, %bb.h, %bb.x, %bb.ab, %bb.ae, %bb.ah, %bb.al, %bb.an, %bb.aq, %bb.au
  %.sroa.0.0 = phi i1 [ %i.dp, %bb.au ], [ false, %bb.c ], [ false, %bb.aq ], [ false, %bb.an ], [ false, %bb.al ], [ false, %bb.ah ], [ false, %bb.ae ], [ false, %bb.ab ], [ false, %bb.x ], [ false, %bb.h ], [ false, %bb.b ], [ false, %bb.ar ], [ false, %bb.am ], [ false, %bb.ai ], [ false, %bb.af ], [ false, %bb.ac ], [ false, %bb.y ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.at ], [ false, %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.as ], [ false, %_RNvXsbf_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.e ], [ false, %bb.v ], [ false, %bb.z ], [ false, %bb.ad ], [ false, %bb.aj ], [ false, %bb.ao ], [ false, %bb.d ], [ false, %bb.q ], [ false, %_RNvXsb5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11OrderByKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.n ], [ false, %bb.r ], [ false, %bb.u ], [ false, %bb.j ], [ false, %bb.l ], [ false, %bb.o ]
  ret i1 %.sroa.0.0

bb.au:                                            ; preds = %bb.at
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !23, !noundef !23
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !23, !noundef !23
  %i.dp = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.do, ptr noundef nonnull %i.dm, i64 noundef %i.dh)
  br label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs22_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !23, !noundef !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !23, !noundef !23
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #34
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs25_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !1436, !noundef !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !1436, !noundef !23
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.i, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.j) #34
  br i1 %i.k, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !23, !noundef !23 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !23, !noundef !23 ; 6 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.f, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.a ], [ %i.bk, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10337)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !10334, !noalias !10337, !nonnull !23, !noundef !23 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !10337, !noalias !10334, !nonnull !23, !noundef !23 ; 4 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10342)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !10339, !noalias !10344, !noundef !23 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !10342, !noalias !10345, !noundef !23
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ac = load ptr, ptr %i.aa, align 8, !alias.scope !10342, !noalias !10345, !nonnull !23, !noundef !23
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !10339, !noalias !10344, !nonnull !23, !noundef !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = icmp eq i64 %i.w, 0
  br i1 %i.ag, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i
  %.sroa.01.07.i.i.i = phi i64 [ %i.an, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.sroa.01.07.i.i.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.01.07.i.i.i
  %.val.i.i.i = load ptr, ptr %i.ah, align 8, !noalias !10346, !nonnull !23, !noundef !23 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !10346, !nonnull !23, !noundef !23 ; 2 uses
  %i.aj = icmp eq ptr %.val.i.i.i, %.val5.i.i.i
  br i1 %i.aj, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.am = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.al), !noalias !10346
  br i1 %i.am, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %i.an = add nuw i64 %.sroa.01.07.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.w
  br i1 %exitcond.not.i.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aq = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap), !noalias !10347
  br i1 %i.aq, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !10334, !noalias !10337, !noundef !23 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !10337, !noalias !10334, !noundef !23
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !10337, !noalias !10334, !nonnull !23, !noundef !23
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !10334, !noalias !10337, !nonnull !23, !noundef !23
  %i.ba = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ax, i64 noundef %i.as), !noalias !10347
  br i1 %i.ba, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !10334, !noalias !10337, !noundef !23 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !10337, !noalias !10334, !noundef !23
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !10337, !noalias !10334, !nonnull !23, !noundef !23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !10334, !noalias !10337, !nonnull !23, !noundef !23
  %i.bk = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bh, i64 noundef %i.bc), !noalias !10347
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val = load i64, ptr %i.a, align 16, !range !414, !noundef !23 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val1 = load ptr, ptr %i.c, align 8            ; 4 uses
  %.val2 = load i64, ptr %i.b, align 16, !range !414, !noundef !23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.val3 = load ptr, ptr %i.d, align 8            ; 4 uses
  %i.e = icmp eq i64 %.val, %.val2
  br i1 %i.e, label %bb.b, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1), "nonnull"(ptr %.val3) ]
  %2 = trunc nuw i64 %.val to i1
  %i.f = icmp eq ptr %.val1, %.val3               ; 2 uses
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.f, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.i = tail call noundef zeroext i1 @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr4udafNtB2_12AggregateUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
  br i1 %i.i, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.l = tail call noundef zeroext i1 @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr4udwfNtB4_9WindowUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k)
  br i1 %i.l, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10351)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = load i8, ptr %i.m, align 16, !range !1436, !alias.scope !10348, !noalias !10351, !noundef !23
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.p = load i8, ptr %i.o, align 16, !range !1436, !alias.scope !10351, !noalias !10348, !noundef !23
  %i.q = icmp eq i8 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = load i64, ptr %i.r, align 16, !alias.scope !10348, !noalias !10351, !noundef !23 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.u = load i64, ptr %i.t, align 16, !alias.scope !10351, !noalias !10348, !noundef !23
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.g, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !10351, !noalias !10348, !nonnull !23, !noundef !23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !10348, !noalias !10351, !nonnull !23, !noundef !23
  %i.aa = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.z, ptr noundef nonnull %i.x, i64 noundef %i.s), !noalias !10353, !inline_history !10354
  br i1 %i.aa, label %bb.h, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !10348, !noalias !10351, !noundef !23 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !10351, !noalias !10348, !noundef !23
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ah = load ptr, ptr %i.ag, align 16, !alias.scope !10351, !noalias !10348, !nonnull !23, !noundef !23
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aj = load ptr, ptr %i.ai, align 16, !alias.scope !10348, !noalias !10351, !nonnull !23, !noundef !23
  %i.ak = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ah, i64 noundef %i.ac), !noalias !10353, !inline_history !10354
  br i1 %i.ak, label %bb.j, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.am = load i64, ptr %i.al, align 16, !alias.scope !10348, !noalias !10351, !noundef !23 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ao = load i64, ptr %i.an, align 16, !alias.scope !10351, !noalias !10348, !noundef !23
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.k, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !10351, !noalias !10348, !nonnull !23, !noundef !23
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !10348, !noalias !10351, !nonnull !23, !noundef !23
  %i.au = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.at, ptr noundef nonnull %i.ar, i64 noundef %i.am), !noalias !10353, !inline_history !10354
  br i1 %i.au, label %bb.l, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.av = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_11WindowFrameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %1) #34, !inline_history !10354
  br i1 %i.av, label %bb.m, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !10348, !noalias !10351, !align !1488, !noundef !23 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !10351, !noalias !10348, !align !1488, !noundef !23 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.ba, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.p

bb.o:                                             ; preds = %bb.m
  br i1 %i.ba, label %bb.q, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.n
  %i.bb = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ax, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.az) #34, !inline_history !10354
  br i1 %i.bb, label %bb.q, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.bd = load i8, ptr %i.bc, align 1, !range !1557, !alias.scope !10348, !noalias !10351, !noundef !23 ; 2 uses
  %.not5.i = icmp eq i8 %i.bd, 2
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 257
  %i.bf = load i8, ptr %i.be, align 1, !range !1557, !alias.scope !10351, !noalias !10348, !noundef !23 ; 2 uses
  br i1 %.not5.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.q
  %i.bh = icmp eq i8 %i.bf, 2
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.r, %bb.a, %bb.s, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, %bb.p, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %bb.e ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.p ], [ false, %bb.a ], [ false, %bb.g ], [ %i.bh, %bb.s ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.i ], [ %i.bg, %bb.r ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !23 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !23
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !23, !noundef !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !23, !noundef !23
  %i.j = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, i64 noundef %i.b)
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.p, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.q) #34
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.s = load i64, ptr %0, align 8, !range !414, !noundef !23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = trunc nuw i64 %i.s to i1
  %i.v = load i64, ptr %1, align 8, !range !414, !noundef !23
  %i.w = trunc nuw i64 %i.v to i1                 ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.g, %bb.b, %bb.d, %bb.a, %bb.h, %bb.i
  %.sroa.0.0 = phi i1 [ %i.ab, %bb.i ], [ false, %bb.b ], [ %i.x, %bb.h ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.g ]
  ret i1 %.sroa.0.0

bb.g:                                             ; preds = %bb.e
  br i1 %i.w, label %bb.i, label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.x = xor i1 %i.w, true
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.t, align 8, !noundef !23
  %i.aa = load i64, ptr %i.y, align 8, !noundef !23
  %i.ab = icmp eq i64 %i.z, %i.aa
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6SelectNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.b = load i8, ptr %i.a, align 8, !range !1436, !noundef !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2424
  %i.d = load i8, ptr %i.c, align 8, !range !1436, !noundef !23
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsdD_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2425
  %i.g = load i8, ptr %i.f, align 1, !range !1436, !noundef !23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2425
  %i.i = load i8, ptr %i.h, align 1, !range !1436, !noundef !23
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXsdD_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

end_hunk_10
begin_hunk_11_@_RNvXsg_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %.val5.i.i.i.i36 = load ptr, ptr %i.qp, align 8, !noalias !11062, !nonnull !23, !noundef !23 ; 2 uses
  %i.qq = icmp eq ptr %.val.i.i.i.i35, %.val5.i.i.i.i36
  br i1 %i.qq, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i38, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i37

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i33
  %i.qr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i35, i64 16
  %i.qs = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i36, i64 16
  %i.qt = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.qr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.qs), !noalias !11062
  br i1 %i.qt, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i38, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i38: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i37, %.lr.ph.i.i.i.i33
  %i.qu = add nuw i64 %.sroa.01.07.i.i.i.i34, 1   ; 2 uses
  %exitcond.not.i.i.i.i39 = icmp eq i64 %i.qu, %i.qd
  br i1 %exitcond.not.i.i.i.i39, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i40, label %.lr.ph.i.i.i.i33

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i40: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i38, %bb.cp
  %i.qv = getelementptr inbounds nuw i8, ptr %i.py, i64 32
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  %i.qx = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qw), !noalias !11063
  br i1 %i.qx, label %bb.cq, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cq:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i40, %bb.cn
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pt, i64 32
  %i.qz = load i64, ptr %i.qy, align 8, !alias.scope !11048, !noalias !11053, !noundef !23 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.pv, i64 32
  %i.rb = load i64, ptr %i.ra, align 8, !alias.scope !11051, !noalias !11054, !noundef !23
  %i.rc = icmp eq i64 %i.qz, %i.rb
  br i1 %i.rc, label %bb.cr, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cr:                                            ; preds = %bb.cq
  %i.rd = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  %i.re = load ptr, ptr %i.rd, align 8, !alias.scope !11051, !noalias !11054, !nonnull !23, !noundef !23
  %i.rf = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.rg = load ptr, ptr %i.rf, align 8, !alias.scope !11048, !noalias !11053, !nonnull !23, !noundef !23
  %i.rh = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.rg, ptr noundef nonnull %i.re, i64 noundef %i.qz), !noalias !11063
  br i1 %i.rh, label %bb.cs, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cs:                                            ; preds = %bb.cr
  %i.ri = getelementptr inbounds nuw i8, ptr %i.pt, i64 56
  %i.rj = load i64, ptr %i.ri, align 8, !alias.scope !11048, !noalias !11053, !noundef !23 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.pv, i64 56
  %i.rl = load i64, ptr %i.rk, align 8, !alias.scope !11051, !noalias !11054, !noundef !23
  %i.rm = icmp eq i64 %i.rj, %i.rl
  br i1 %i.rm, label %bb.ct, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ct:                                            ; preds = %bb.cs
  %i.rn = getelementptr inbounds nuw i8, ptr %i.pv, i64 48
  %i.ro = load ptr, ptr %i.rn, align 8, !alias.scope !11051, !noalias !11054, !nonnull !23, !noundef !23
  %i.rp = getelementptr inbounds nuw i8, ptr %i.pt, i64 48
  %i.rq = load ptr, ptr %i.rp, align 8, !alias.scope !11048, !noalias !11053, !nonnull !23, !noundef !23
  %i.rr = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.rq, ptr noundef nonnull %i.ro, i64 noundef %i.rj), !noalias !11063
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cu:                                            ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11067)
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.rt = load i8, ptr %i.rs, align 8, !range !1436, !alias.scope !11064, !noalias !11067, !noundef !23
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.rv = load i8, ptr %i.ru, align 8, !range !1436, !alias.scope !11067, !noalias !11064, !noundef !23
  %i.rw = icmp eq i8 %i.rt, %i.rv
  br i1 %i.rw, label %bb.cv, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cv:                                            ; preds = %bb.cu
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rz = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ry, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.rx) #34
  br i1 %i.rz, label %bb.cw, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cw:                                            ; preds = %bb.cv
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.sb = load ptr, ptr %i.sa, align 16, !alias.scope !11064, !noalias !11067, !nonnull !23, !noundef !23 ; 6 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.sd = load ptr, ptr %i.sc, align 16, !alias.scope !11067, !noalias !11064, !nonnull !23, !noundef !23 ; 6 uses
  %i.se = icmp eq ptr %i.sb, %i.sd
  br i1 %i.se, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11072)
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sb, i64 64
  %i.sg = load ptr, ptr %i.sf, align 8, !alias.scope !11069, !noalias !11074, !nonnull !23, !noundef !23 ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sd, i64 64
  %i.si = load ptr, ptr %i.sh, align 8, !alias.scope !11072, !noalias !11075, !nonnull !23, !noundef !23 ; 4 uses
  %i.sj = icmp eq ptr %i.sg, %i.si
  br i1 %i.sj, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11079)
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 24
  %i.sl = load i64, ptr %i.sk, align 8, !alias.scope !11076, !noalias !11081, !noundef !23 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 24
  %i.sn = load i64, ptr %i.sm, align 8, !alias.scope !11079, !noalias !11082, !noundef !23
  %i.so = icmp eq i64 %i.sl, %i.sn
  br i1 %i.so, label %bb.cz, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cz:                                            ; preds = %bb.cy
  %i.sp = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.sr = load ptr, ptr %i.sp, align 8, !alias.scope !11079, !noalias !11082, !nonnull !23, !noundef !23
  %i.ss = load ptr, ptr %i.sq, align 8, !alias.scope !11076, !noalias !11081, !nonnull !23, !noundef !23
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.sv = icmp eq i64 %i.sl, 0
  br i1 %i.sv, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i50, label %.lr.ph.i.i.i.i43

.lr.ph.i.i.i.i43:                                 ; preds = %bb.cz, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i48
  %.sroa.01.07.i.i.i.i44 = phi i64 [ %i.tc, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i48 ], [ 0, %bb.cz ] ; 3 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %.sroa.01.07.i.i.i.i44
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %.sroa.01.07.i.i.i.i44
  %.val.i.i.i.i45 = load ptr, ptr %i.sw, align 8, !noalias !11083, !nonnull !23, !noundef !23 ; 2 uses
  %.val5.i.i.i.i46 = load ptr, ptr %i.sx, align 8, !noalias !11083, !nonnull !23, !noundef !23 ; 2 uses
  %i.sy = icmp eq ptr %.val.i.i.i.i45, %.val5.i.i.i.i46
  br i1 %i.sy, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i48, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i47

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i47: ; preds = %.lr.ph.i.i.i.i43
  %i.sz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i45, i64 16
  %i.ta = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i46, i64 16
  %i.tb = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.sz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ta), !noalias !11083
  br i1 %i.tb, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i48, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i48: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i47, %.lr.ph.i.i.i.i43
  %i.tc = add nuw i64 %.sroa.01.07.i.i.i.i44, 1   ; 2 uses
  %exitcond.not.i.i.i.i49 = icmp eq i64 %i.tc, %i.sl
  br i1 %exitcond.not.i.i.i.i49, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i50, label %.lr.ph.i.i.i.i43

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i50: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i48, %bb.cz
  %i.td = getelementptr inbounds nuw i8, ptr %i.sg, i64 32
  %i.te = getelementptr inbounds nuw i8, ptr %i.si, i64 32
  %i.tf = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.td, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.te), !noalias !11084
  br i1 %i.tf, label %bb.da, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.da:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i50, %bb.cx
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sb, i64 32
  %i.th = load i64, ptr %i.tg, align 8, !alias.scope !11069, !noalias !11074, !noundef !23 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sd, i64 32
  %i.tj = load i64, ptr %i.ti, align 8, !alias.scope !11072, !noalias !11075, !noundef !23
  %i.tk = icmp eq i64 %i.th, %i.tj
  br i1 %i.tk, label %bb.db, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.db:                                            ; preds = %bb.da
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.tm = load ptr, ptr %i.tl, align 8, !alias.scope !11072, !noalias !11075, !nonnull !23, !noundef !23
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  %i.to = load ptr, ptr %i.tn, align 8, !alias.scope !11069, !noalias !11074, !nonnull !23, !noundef !23
  %i.tp = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.to, ptr noundef nonnull %i.tm, i64 noundef %i.th), !noalias !11084
  br i1 %i.tp, label %bb.dc, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dc:                                            ; preds = %bb.db
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sb, i64 56
  %i.tr = load i64, ptr %i.tq, align 8, !alias.scope !11069, !noalias !11074, !noundef !23 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sd, i64 56
  %i.tt = load i64, ptr %i.ts, align 8, !alias.scope !11072, !noalias !11075, !noundef !23
  %i.tu = icmp eq i64 %i.tr, %i.tt
  br i1 %i.tu, label %bb.dd, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dd:                                            ; preds = %bb.dc
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sd, i64 48
  %i.tw = load ptr, ptr %i.tv, align 8, !alias.scope !11072, !noalias !11075, !nonnull !23, !noundef !23
  %i.tx = getelementptr inbounds nuw i8, ptr %i.sb, i64 48
  %i.ty = load ptr, ptr %i.tx, align 8, !alias.scope !11069, !noalias !11074, !nonnull !23, !noundef !23
  %i.tz = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.ty, ptr noundef nonnull %i.tw, i64 noundef %i.tr), !noalias !11084
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.de:                                            ; preds = %bb.b
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11088)
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ud = load i8, ptr %i.uc, align 16, !range !1436, !alias.scope !11085, !noalias !11088, !noundef !23
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.uf = load i8, ptr %i.ue, align 16, !range !1436, !alias.scope !11088, !noalias !11085, !noundef !23
  %i.ug = icmp eq i8 %i.ud, %i.uf
  br i1 %i.ug, label %bb.df, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.df:                                            ; preds = %bb.de
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.ui = load i8, ptr %i.uh, align 1, !range !1436, !alias.scope !11085, !noalias !11088, !noundef !23
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.uk = load i8, ptr %i.uj, align 1, !range !1436, !alias.scope !11088, !noalias !11085, !noundef !23
  %i.ul = icmp eq i8 %i.ui, %i.uk
  br i1 %i.ul, label %bb.dg, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dg:                                            ; preds = %bb.df
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11093)
  %i.um = load ptr, ptr %i.ua, align 8, !alias.scope !11095, !noalias !11096, !noundef !23 ; 2 uses
  %i.un = icmp ne ptr %i.um, null                 ; 2 uses
  %i.uo = load ptr, ptr %i.ub, align 8, !alias.scope !11096, !noalias !11095, !noundef !23 ; 3 uses
  %i.up = icmp eq ptr %i.uo, null                 ; 3 uses
  %not..i.i = xor i1 %i.up, true
  %i.uq = xor i1 %i.un, %i.up
  br i1 %i.uq, label %bb.dh, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dh:                                            ; preds = %bb.dg
  br i1 %i.un, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.uo) ]
  tail call void @llvm.assume(i1 %not..i.i)
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.us = load i64, ptr %i.ur, align 16, !alias.scope !11095, !noalias !11096, !noundef !23 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.uu = load i64, ptr %i.ut, align 16, !alias.scope !11096, !noalias !11095, !noundef !23
  %i.uv = icmp eq i64 %i.us, %i.uu
  br i1 %i.uv, label %bb.dk, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dj:                                            ; preds = %bb.dh
  tail call void @llvm.assume(i1 %i.up)
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ux = load i64, ptr %i.uw, align 8, !alias.scope !11095, !noalias !11096, !noundef !23 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.uz = load i64, ptr %i.uy, align 8, !alias.scope !11096, !noalias !11095, !noundef !23
  %i.va = icmp eq i64 %i.ux, %i.uz
  br i1 %i.va, label %_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dk:                                            ; preds = %bb.di
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.vc = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %bcmp8.i.i = tail call i32 @bcmp(ptr nonnull %i.vc, ptr nonnull %i.vb, i64 %i.us), !noalias !11097
  %i.vd = icmp eq i32 %bcmp8.i.i, 0
  br i1 %i.vd, label %bb.dl, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dl:                                            ; preds = %bb.dk
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.vf = load i64, ptr %i.ve, align 16, !alias.scope !11095, !noalias !11096, !noundef !23 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.vh = load i64, ptr %i.vg, align 16, !alias.scope !11096, !noalias !11095, !noundef !23
  %i.vi = icmp eq i64 %i.vf, %i.vh
  br i1 %i.vi, label %_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.dl, %bb.dj
  %.sink.i.i = phi i64 [ 8, %bb.dj ], [ 16, %bb.dl ] ; 2 uses
  %.sink14.i.i = phi i64 [ %i.ux, %bb.dj ], [ %i.vf, %bb.dl ]
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ub, i64 %.sink.i.i
  %i.vk = load ptr, ptr %i.vj, align 8, !alias.scope !11096, !noalias !11095, !nonnull !23, !noundef !23
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ua, i64 %.sink.i.i
  %i.vn = load ptr, ptr %i.vm, align 8, !alias.scope !11095, !noalias !11096, !nonnull !23, !noundef !23
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %bcmp9.i.i = tail call i32 @bcmp(ptr nonnull %i.vo, ptr nonnull %i.vl, i64 %.sink14.i.i), !noalias !11097
  %i.vp = icmp eq i32 %bcmp9.i.i, 0
  br i1 %i.vp, label %bb.dm, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dm:                                            ; preds = %_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vr = load ptr, ptr %i.vq, align 8, !alias.scope !11085, !noalias !11088, !nonnull !23, !noundef !23 ; 6 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.vt = load ptr, ptr %i.vs, align 8, !alias.scope !11088, !noalias !11085, !nonnull !23, !noundef !23 ; 6 uses
  %i.vu = icmp eq ptr %i.vr, %i.vt
  br i1 %i.vu, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11101)
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vr, i64 64
  %i.vw = load ptr, ptr %i.vv, align 8, !alias.scope !11098, !noalias !11103, !nonnull !23, !noundef !23 ; 4 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vt, i64 64
  %i.vy = load ptr, ptr %i.vx, align 8, !alias.scope !11101, !noalias !11104, !nonnull !23, !noundef !23 ; 4 uses
  %i.vz = icmp eq ptr %i.vw, %i.vy
  br i1 %i.vz, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %bb.dn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11108)
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vw, i64 24
  %i.wb = load i64, ptr %i.wa, align 8, !alias.scope !11105, !noalias !11110, !noundef !23 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vy, i64 24
  %i.wd = load i64, ptr %i.wc, align 8, !alias.scope !11108, !noalias !11111, !noundef !23
  %i.we = icmp eq i64 %i.wb, %i.wd
  br i1 %i.we, label %bb.dp, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dp:                                            ; preds = %bb.do
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  %i.wh = load ptr, ptr %i.wf, align 8, !alias.scope !11108, !noalias !11111, !nonnull !23, !noundef !23
  %i.wi = load ptr, ptr %i.wg, align 8, !alias.scope !11105, !noalias !11110, !nonnull !23, !noundef !23
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  %i.wl = icmp eq i64 %i.wb, 0
  br i1 %i.wl, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i60, label %.lr.ph.i.i.i.i53

.lr.ph.i.i.i.i53:                                 ; preds = %bb.dp, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i58
  %.sroa.01.07.i.i.i.i54 = phi i64 [ %i.ws, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i58 ], [ 0, %bb.dp ] ; 3 uses
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %.sroa.01.07.i.i.i.i54
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %.sroa.01.07.i.i.i.i54
  %.val.i.i.i.i55 = load ptr, ptr %i.wm, align 8, !noalias !11112, !nonnull !23, !noundef !23 ; 2 uses
  %.val5.i.i.i.i56 = load ptr, ptr %i.wn, align 8, !noalias !11112, !nonnull !23, !noundef !23 ; 2 uses
  %i.wo = icmp eq ptr %.val.i.i.i.i55, %.val5.i.i.i.i56
  br i1 %i.wo, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i58, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i57

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i57: ; preds = %.lr.ph.i.i.i.i53
  %i.wp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i55, i64 16
  %i.wq = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i56, i64 16
  %i.wr = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.wp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.wq), !noalias !11112
  br i1 %i.wr, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i58, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i58: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i57, %.lr.ph.i.i.i.i53
  %i.ws = add nuw i64 %.sroa.01.07.i.i.i.i54, 1   ; 2 uses
  %exitcond.not.i.i.i.i59 = icmp eq i64 %i.ws, %i.wb
  br i1 %exitcond.not.i.i.i.i59, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i60, label %.lr.ph.i.i.i.i53

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i60: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i58, %bb.dp
  %i.wt = getelementptr inbounds nuw i8, ptr %i.vw, i64 32
  %i.wu = getelementptr inbounds nuw i8, ptr %i.vy, i64 32
  %i.wv = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.wt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.wu), !noalias !11113
  br i1 %i.wv, label %bb.dq, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dq:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i60, %bb.dn
  %i.ww = getelementptr inbounds nuw i8, ptr %i.vr, i64 32
  %i.wx = load i64, ptr %i.ww, align 8, !alias.scope !11098, !noalias !11103, !noundef !23 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vt, i64 32
  %i.wz = load i64, ptr %i.wy, align 8, !alias.scope !11101, !noalias !11104, !noundef !23
  %i.xa = icmp eq i64 %i.wx, %i.wz
  br i1 %i.xa, label %bb.dr, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dr:                                            ; preds = %bb.dq
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vt, i64 24
  %i.xc = load ptr, ptr %i.xb, align 8, !alias.scope !11101, !noalias !11104, !nonnull !23, !noundef !23
  %i.xd = getelementptr inbounds nuw i8, ptr %i.vr, i64 24
  %i.xe = load ptr, ptr %i.xd, align 8, !alias.scope !11098, !noalias !11103, !nonnull !23, !noundef !23
  %i.xf = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.xe, ptr noundef nonnull %i.xc, i64 noundef %i.wx), !noalias !11113
  br i1 %i.xf, label %bb.ds, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ds:                                            ; preds = %bb.dr
  %i.xg = getelementptr inbounds nuw i8, ptr %i.vr, i64 56
  %i.xh = load i64, ptr %i.xg, align 8, !alias.scope !11098, !noalias !11103, !noundef !23 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.vt, i64 56
  %i.xj = load i64, ptr %i.xi, align 8, !alias.scope !11101, !noalias !11104, !noundef !23
  %i.xk = icmp eq i64 %i.xh, %i.xj
  br i1 %i.xk, label %bb.dt, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dt:                                            ; preds = %bb.ds
  %i.xl = getelementptr inbounds nuw i8, ptr %i.vt, i64 48
  %i.xm = load ptr, ptr %i.xl, align 8, !alias.scope !11101, !noalias !11104, !nonnull !23, !noundef !23
  %i.xn = getelementptr inbounds nuw i8, ptr %i.vr, i64 48
  %i.xo = load ptr, ptr %i.xn, align 8, !alias.scope !11098, !noalias !11103, !nonnull !23, !noundef !23
  %i.xp = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.xo, ptr noundef nonnull %i.xm, i64 noundef %i.xh), !noalias !11113
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.du:                                            ; preds = %bb.b
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11117)
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.xt = load i8, ptr %i.xs, align 16, !range !1436, !alias.scope !11114, !noalias !11117, !noundef !23
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.xv = load i8, ptr %i.xu, align 16, !range !1436, !alias.scope !11117, !noalias !11114, !noundef !23
  %i.xw = icmp eq i8 %i.xt, %i.xv
  br i1 %i.xw, label %bb.dv, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dv:                                            ; preds = %bb.du
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.xy = load i8, ptr %i.xx, align 1, !range !1436, !alias.scope !11114, !noalias !11117, !noundef !23
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.ya = load i8, ptr %i.xz, align 1, !range !1436, !alias.scope !11117, !noalias !11114, !noundef !23
  %i.yb = icmp eq i8 %i.xy, %i.ya
  br i1 %i.yb, label %bb.dw, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dw:                                            ; preds = %bb.dv
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.yd = load i64, ptr %i.yc, align 16, !alias.scope !11114, !noalias !11117, !noundef !23 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.yf = load i64, ptr %i.ye, align 16, !alias.scope !11117, !noalias !11114, !noundef !23
  %i.yg = icmp eq i64 %i.yd, %i.yf
  br i1 %i.yg, label %bb.dx, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dx:                                            ; preds = %bb.dw
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.yi = load ptr, ptr %i.yh, align 8, !alias.scope !11117, !noalias !11114, !nonnull !23, !noundef !23
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.yk = load ptr, ptr %i.yj, align 8, !alias.scope !11114, !noalias !11117, !nonnull !23, !noundef !23
  %bcmp.i62 = tail call i32 @bcmp(ptr nonnull %i.yk, ptr nonnull %i.yi, i64 %i.yd), !noalias !11119, !inline_history !11120
  %i.yl = icmp eq i32 %bcmp.i62, 0
  br i1 %i.yl, label %bb.dy, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dy:                                            ; preds = %bb.dx
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.yn = load i64, ptr %i.ym, align 8, !range !27, !alias.scope !11114, !noalias !11117, !noundef !23
  %.not.i63 = icmp eq i64 %i.yn, -9223372036854775808
  %i.yo = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.yp = load i64, ptr %i.yo, align 8, !range !27, !alias.scope !11117, !noalias !11114, !noundef !23
  %i.yq = icmp eq i64 %i.yp, -9223372036854775808 ; 2 uses
  br i1 %.not.i63, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  br i1 %i.yq, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  br i1 %i.yq, label %bb.ed, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.eb:                                            ; preds = %bb.dz
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ys = load i64, ptr %i.yr, align 8, !alias.scope !11114, !noalias !11117, !noundef !23 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.yu = load i64, ptr %i.yt, align 8, !alias.scope !11117, !noalias !11114, !noundef !23
  %i.yv = icmp eq i64 %i.ys, %i.yu
  br i1 %i.yv, label %bb.ec, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ec:                                            ; preds = %bb.eb
  %i.yw = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.yx = load ptr, ptr %i.yw, align 16, !alias.scope !11117, !noalias !11114, !nonnull !23, !noundef !23
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 240
end_hunk_11
