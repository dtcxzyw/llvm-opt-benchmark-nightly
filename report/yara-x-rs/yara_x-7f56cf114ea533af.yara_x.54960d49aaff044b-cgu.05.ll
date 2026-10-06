Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.05?download=true
inline.NumInlined: 3898
inline.NumDeleted: 2041
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB4_6option6OptionuEINtNtBG_3vec3VecTBC_BC_EEEECs7gfv9tzbXmh_6yara_x:bb.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTRShINtNtCsexYYUdYSQU6_5alloc3vec3VecBC_EEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRShENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRShEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecRShEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecRShEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRShEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTRShINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9BlobIndexEEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9BlobIndexENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9BlobIndexEEB1g_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9BlobIndexENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9BlobIndexEEB1n_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9BlobIndexEEB1n_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9BlobIndexEEB1g_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9BlobIndexENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTRShINtNtCsexYYUdYSQU6_5alloc3vec3VecjEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTRShINtNtCsexYYUdYSQU6_5alloc3vec3VecuEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecuEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecuEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTReINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser12ImportedFuncEEEB1j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser12ImportedFuncENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser12ImportedFuncEEB1g_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser12ImportedFuncENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser12ImportedFuncEEB1n_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser12ImportedFuncEEB1n_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser12ImportedFuncEEB1g_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser12ImportedFuncENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTtttNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB6_SBT_20sort_unstable_by_keymNCNvXBW_NtBW_2PENtNtNtB10_5utils12authenticode18AuthenticodeHasher4hash0E0EB12_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section7reverseBD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !5, !align !15, !noundef !5
  %.val6 = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %.val5, i64 44
  %i.d = load i32, ptr %i.c, align 4, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val6, i64 44
  %i.f = load i32, ptr %i.e, align 4, !noundef !5
  %i.g = icmp ult i32 %i.d, %i.f                  ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.g, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB6_SB12_20sort_unstable_by_keymNCNvXB15_NtB15_2PENtNtNtB19_5utils12authenticode18AuthenticodeHasher4hash0E0EB1b_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB6_SB12_20sort_unstable_by_keymNCNvXB15_NtB15_2PENtNtNtB19_5utils12authenticode18AuthenticodeHasher4hash0E0EB1b_.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %i.h = phi i32 [ %i.k, %bb.c ], [ %i.d, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.m, %bb.c ], [ 2, %.preheader11 ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i13
  %.val3 = load ptr, ptr %i.i, align 8, !nonnull !5, !align !15, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %.val3, i64 44
  %i.k = load i32, ptr %i.j, align 4, !noundef !5 ; 2 uses
  %i.l = icmp ult i32 %i.k, %i.h
  br i1 %i.l, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB6_SB12_20sort_unstable_by_keymNCNvXB15_NtB15_2PENtNtNtB19_5utils12authenticode18AuthenticodeHasher4hash0E0EB1b_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB6_SB12_20sort_unstable_by_keymNCNvXB15_NtB15_2PENtNtNtB19_5utils12authenticode18AuthenticodeHasher4hash0E0EB1b_.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %i.n = phi i32 [ %i.q, %bb.d ], [ %i.d, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i16
  %.val = load ptr, ptr %i.o, align 8, !nonnull !5, !align !15, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.q = load i32, ptr %i.p, align 4, !noundef !5 ; 2 uses
  %i.r = icmp ult i32 %i.q, %i.n
  br i1 %i.r, label %bb.d, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB6_SB12_20sort_unstable_by_keymNCNvXB15_NtB15_2PENtNtNtB19_5utils12authenticode18AuthenticodeHasher4hash0E0EB1b_.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.s = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.s, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB6_SB12_20sort_unstable_by_keymNCNvXB15_NtB15_2PENtNtNtB19_5utils12authenticode18AuthenticodeHasher4hash0E0EB1b_.exit.thread, label %.lr.ph17

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB6_SB12_20sort_unstable_by_keymNCNvXB15_NtB15_2PENtNtNtB19_5utils12authenticode18AuthenticodeHasher4hash0E0EB1b_.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.t = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.u, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB6_SB12_20sort_unstable_by_keymNCNvXB15_NtB15_2PENtNtNtB19_5utils12authenticode18AuthenticodeHasher4hash0E0EB1b_.exit.thread, label %bb.e

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB6_SB12_20sort_unstable_by_keymNCNvXB15_NtB15_2PENtNtNtB19_5utils12authenticode18AuthenticodeHasher4hash0E0EB1b_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB6_SB12_20sort_unstable_by_keymNCNvXB15_NtB15_2PENtNtNtB19_5utils12authenticode18AuthenticodeHasher4hash0E0EB1b_.exit
  br i1 %i.g, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section12split_at_mutBD_.exit11.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section7reverseBD_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB6_SB12_20sort_unstable_by_keymNCNvXB15_NtB15_2PENtNtNtB19_5utils12authenticode18AuthenticodeHasher4hash0E0EB1b_.exit
  %i.v = or i64 %1, 1
  %i.w = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 1
  %i.z = xor i32 %i.y, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SB17_20sort_unstable_by_keymNCNvXB1a_NtB1a_2PENtNtNtB1e_5utils12authenticode18AuthenticodeHasher4hash0E0EB1g_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.z, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section7reverseBD_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section7reverseBD_.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section12split_at_mutBD_.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB6_SB12_20sort_unstable_by_keymNCNvXB15_NtB15_2PENtNtNtB19_5utils12authenticode18AuthenticodeHasher4hash0E0EB1b_.exit.thread, %bb.e
  ret void

_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section12split_at_mutBD_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB6_SB12_20sort_unstable_by_keymNCNvXB15_NtB15_2PENtNtNtB19_5utils12authenticode18AuthenticodeHasher4hash0E0EB1b_.exit.thread
  %i.aa = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section12split_at_mutBD_.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section12split_at_mutBD_.exit11.preheader.i.i
  %n.vec = and i64 %i.aa, 576460752303423484      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = xor i64 %index, -1
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 4 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ab, i64 %i.ac ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ad, align 8, !alias.scope !427, !noalias !426
  %wide.load45 = load <2 x ptr>, ptr %i.af, align 8, !alias.scope !427, !noalias !426
  %i.ag = getelementptr i8, ptr %i.ae, i64 -8
  %i.ah = getelementptr i8, ptr %i.ae, i64 -24
  %wide.load46 = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !428, !noalias !425
  %wide.load47 = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !428, !noalias !425
  %reverse = shufflevector <2 x i64> %wide.load46, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse48 = shufflevector <2 x i64> %wide.load47, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x i64> %reverse, ptr %i.ad, align 8, !alias.scope !427, !noalias !426
  store <2 x i64> %reverse48, ptr %i.ai, align 8, !alias.scope !427, !noalias !426
  %i.aj = getelementptr i8, ptr %i.ae, i64 -8
  %i.ak = getelementptr i8, ptr %i.ae, i64 -24
  %reverse49 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse50 = shufflevector <2 x ptr> %wide.load45, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse49, ptr %i.aj, align 8, !alias.scope !428, !noalias !425
  store <2 x ptr> %reverse50, ptr %i.ak, align 8, !alias.scope !428, !noalias !425
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !423

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section7reverseBD_.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section12split_at_mutBD_.exit11.i.i.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section12split_at_mutBD_.exit11.i.i.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section12split_at_mutBD_.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section12split_at_mutBD_.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section12split_at_mutBD_.exit11.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section12split_at_mutBD_.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section12split_at_mutBD_.exit11.i.i.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section12split_at_mutBD_.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section12split_at_mutBD_.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section12split_at_mutBD_.exit11.i.i.preheader ] ; 3 uses
  %i.am = xor i64 %.sroa.0.016.i.i, -1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.ab, i64 %i.am ; 2 uses
  %i.ap = load ptr, ptr %i.an, align 8, !alias.scope !427, !noalias !426, !nonnull !5, !align !15, !noundef !5
  %i.aq = load i64, ptr %i.ao, align 8, !alias.scope !428, !noalias !425
  store i64 %i.aq, ptr %i.an, align 8, !alias.scope !427, !noalias !426
  store ptr %i.ap, ptr %i.ao, align 8, !alias.scope !428, !noalias !425
  %i.ar = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, %i.aa
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section7reverseBD_.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section12split_at_mutBD_.exit11.i.i, !llvm.loop !424
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SB17_20sort_unstable_by_keymNCNvXB1a_NtB1a_2PENtNtNtB1e_5utils12authenticode18AuthenticodeHasher4hash0E0EB1g_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 33
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %.lr.ph._crit_edge, label %.lr.ph133

.lr.ph:                                           ; preds = %.backedge
  %i.c = icmp eq i32 %i.d, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph133

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_networkRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SB1f_20sort_unstable_by_keymNCNvXB1i_NtB1i_2PENtNtNtB1m_5utils12authenticode18AuthenticodeHasher4hash0E0EB1o_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.084.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.083.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort8heapsortRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SB15_20sort_unstable_by_keymNCNvXB18_NtB18_2PENtNtNtB1c_5utils12authenticode18AuthenticodeHasher4hash0E0EB1e_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.084.lcssa, i64 noundef %.sroa.15.083.lcssa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) #30
  br label %bb.c

.lr.ph133:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.081132 = phi i32 [ %i.d, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.082131 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.083130 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.084129 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 29 uses
  %i.d = add nsw i32 %.sroa.026.081132, -1        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.e = lshr i64 %.sroa.15.083130, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.084129, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.e, 56
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.084129, i64 %.idx2.i ; 3 uses
  %i.h = icmp samesign ult i64 %.sroa.15.083130, 64
  br i1 %i.h, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3RNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SBZ_20sort_unstable_by_keymNCNvXB12_NtB12_2PENtNtNtB16_5utils12authenticode18AuthenticodeHasher4hash0E0EB18_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph133
  %i.i = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SB14_20sort_unstable_by_keymNCNvXB17_NtB17_2PENtNtNtB1b_5utils12authenticode18AuthenticodeHasher4hash0E0EB1d_(ptr noundef nonnull readonly align 8 %.sroa.0.084129, ptr noundef nonnull readonly %i.f, ptr noundef nonnull readonly %i.g, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SB15_20sort_unstable_by_keymNCNvXB18_NtB18_2PENtNtNtB1c_5utils12authenticode18AuthenticodeHasher4hash0E0EB1e_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3RNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SBZ_20sort_unstable_by_keymNCNvXB12_NtB12_2PENtNtNtB16_5utils12authenticode18AuthenticodeHasher4hash0E0EB18_.exit.i: ; preds = %.lr.ph133
  %.val6.i = load ptr, ptr %.sroa.0.084129, align 8, !alias.scope !462, !noalias !463, !nonnull !5, !align !15, !noundef !5
  %.val7.i = load ptr, ptr %i.f, align 8, !alias.scope !462, !noalias !463, !nonnull !5, !align !15, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %.val6.i, i64 44
  %i.k = load i32, ptr %i.j, align 4, !noalias !464, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val7.i, i64 44
  %i.m = load i32, ptr %i.l, align 4, !noalias !464, !noundef !5 ; 2 uses
  %i.n = icmp ult i32 %i.k, %i.m                  ; 2 uses
  %.val5.i = load ptr, ptr %i.g, align 8, !alias.scope !462, !noalias !463, !nonnull !5, !align !15, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %.val5.i, i64 44
  %i.p = load i32, ptr %i.o, align 4, !noalias !464, !noundef !5 ; 2 uses
  %i.q = icmp ult i32 %i.k, %i.p
  %i.r = xor i1 %i.n, %i.q
  %i.s = icmp ult i32 %i.m, %i.p
  %i.t = xor i1 %i.n, %i.s
  %..i.i = select i1 %i.t, ptr %i.g, ptr %i.f
  %.sroa.0.0.i.i = select i1 %i.r, ptr %.sroa.0.084129, ptr %..i.i
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SB15_20sort_unstable_by_keymNCNvXB18_NtB18_2PENtNtNtB1c_5utils12authenticode18AuthenticodeHasher4hash0E0EB1e_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SB15_20sort_unstable_by_keymNCNvXB18_NtB18_2PENtNtNtB1c_5utils12authenticode18AuthenticodeHasher4hash0E0EB1e_.exit: ; preds = %bb.b, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3RNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SBZ_20sort_unstable_by_keymNCNvXB12_NtB12_2PENtNtNtB16_5utils12authenticode18AuthenticodeHasher4hash0E0EB18_.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3RNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SBZ_20sort_unstable_by_keymNCNvXB12_NtB12_2PENtNtNtB16_5utils12authenticode18AuthenticodeHasher4hash0E0EB18_.exit.i ], [ %i.i, %bb.b ]
  %i.u = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.v = ptrtoint ptr %.sroa.0.084129 to i64
  %i.w = sub nuw i64 %i.u, %i.v                   ; 4 uses
  %.sroa.0.0.i = lshr exact i64 %i.w, 3
  %i.x = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.083130
  tail call void @llvm.assume(i1 %i.x)
  %.not = icmp eq ptr %.sroa.023.082131, null
  br i1 %.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SB15_20sort_unstable_by_keymNCNvXB18_NtB18_2PENtNtNtB1c_5utils12authenticode18AuthenticodeHasher4hash0E0EB1e_.exit._crit_edge, label %bb.f

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SB15_20sort_unstable_by_keymNCNvXB18_NtB18_2PENtNtNtB1c_5utils12authenticode18AuthenticodeHasher4hash0E0EB1e_.exit._crit_edge: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SB15_20sort_unstable_by_keymNCNvXB18_NtB18_2PENtNtNtB1c_5utils12authenticode18AuthenticodeHasher4hash0E0EB1e_.exit
  %.sroa.0.0.copyload.i.i.i.pre = load i64, ptr %.sroa.0.084129, align 8, !alias.scope !465
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.084129, i64 %i.w
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !465
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.d:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SB15_20sort_unstable_by_keymNCNvXB18_NtB18_2PENtNtNtB1c_5utils12authenticode18AuthenticodeHasher4hash0E0EB1e_.exit._crit_edge, %bb.f
  %i.y = phi i64 [ %.pre, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SB15_20sort_unstable_by_keymNCNvXB18_NtB18_2PENtNtNtB1c_5utils12authenticode18AuthenticodeHasher4hash0E0EB1e_.exit._crit_edge ], [ %i.cc, %bb.f ]
  %.sroa.0.0.copyload.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.pre, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionNCINvMB8_SB15_20sort_unstable_by_keymNCNvXB18_NtB18_2PENtNtNtB1c_5utils12authenticode18AuthenticodeHasher4hash0E0EB1e_.exit._crit_edge ], [ %.sroa.0.0.copyload.i.i.i.pre97, %bb.f ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.084129, i64 %i.w
  store i64 %i.y, ptr %.sroa.0.084129, align 8, !alias.scope !465
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.z, align 8, !alias.scope !465
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.084129, i64 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !469, !noalias !468, !nonnull !5, !align !15, !noundef !5 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = getelementptr [8 x i8], ptr %.sroa.0.084129, i64 %.sroa.15.083130 ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 -8     ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.084129, i64 16 ; 3 uses
  %i.af = icmp ult ptr %.sroa.13.030.i.i, %i.ae
  %.val1.i.pre.i.i = load ptr, ptr %.sroa.0.084129, align 8, !alias.scope !470, !noalias !467
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i.pre.i.i, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !471 ; 4 uses
  br i1 %i.af, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.d
end_hunk_0
