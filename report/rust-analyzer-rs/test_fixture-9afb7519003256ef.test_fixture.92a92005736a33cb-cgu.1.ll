Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/test_fixture-9afb7519003256ef.test_fixture.92a92005736a33cb-cgu.1?download=true
inline.NumInlined: 324
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
@24 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@25 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@26 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@27 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCscAFBYSOo4Yh_12test_fixture = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCscAFBYSOo4Yh_12test_fixture.102 = private unnamed_addr constant [6 x ptr] [ptr @22, ptr @23, ptr @24, ptr @25, ptr @26, ptr @27], align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1a_12CrateBuilderEEECscAFBYSOo4Yh_12test_fixture(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  %i.e = getelementptr i8, ptr %.0.val, i64 -9    ; 5 uses
  %.not1.i.i.i = icmp eq ptr %i.e, null
  %.not.i.i.i = or i1 %.not1.i.i.i, %.not.i.i.i.i
  br i1 %.not.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameECscAFBYSOo4Yh_12test_fixture.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21
  store ptr %i.e, ptr %i.b, align 8, !noalias !21
  %i.f = load atomic i64, ptr %i.e acquire, align 8, !noalias !21
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.d, !prof !4

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21
  store ptr %i.e, ptr %i.a, align 8, !noalias !21
  %i.h = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !22
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECscAFBYSOo4Yh_12test_fixture.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE9drop_slowCs39E2wp1vf7X_6intern(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22, !noalias !21
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECscAFBYSOo4Yh_12test_fixture.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECscAFBYSOo4Yh_12test_fixture.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameECscAFBYSOo4Yh_12test_fixture.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECscAFBYSOo4Yh_12test_fixture.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB12_6string6StringEEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECscAFBYSOo4Yh_12test_fixture.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECscAFBYSOo4Yh_12test_fixture.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECscAFBYSOo4Yh_12test_fixture.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECscAFBYSOo4Yh_12test_fixture.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECscAFBYSOo4Yh_12test_fixture.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECscAFBYSOo4Yh_12test_fixture.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECscAFBYSOo4Yh_12test_fixture.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtBG_6string6StringINtNtB4_6option6OptionB19_EEEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtB7_6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBG_EEENtNtNtB16_3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBN_EEENtNtNtB1d_3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtBG_6string6StringINtNtB4_6option6OptionB1g_EEEECscAFBYSOo4Yh_12test_fixture.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBN_EEENtNtNtB1d_3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtBG_6string6StringINtNtB4_6option6OptionB1g_EEEECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringB16_EKj1_EECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !29, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !29, !noundef !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %_RNvXs5_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringBT_EKj1_ENtNtNtB9_3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sub nuw i64 %i.c, %i.a                   ; 3 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.a ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RNvXs5_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringBT_EKj1_ENtNtNtB9_3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i.i.i.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %.sroa.0.0.i.i.i.i.i.i3
  %i.j = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i3, 1 ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringBC_EECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.k = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i.i4, 1 ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %i.f
  br i1 %i.n, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i.i.i.i4 = phi i64 [ %i.k, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %.sroa.0.1.i.i.i.i.i.i4
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringBC_EECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(48) %i.o) #24
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %.lr.ph5
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RNvXs5_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringBT_EKj1_ENtNtNtB9_3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECscAFBYSOo4Yh_12test_fixture(i32 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  switch i32 %.0.val, label %bb.b [
    i32 0, label %bb.g
    i32 1, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECscAFBYSOo4Yh_12test_fixture.exit
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = ptrtoint ptr %.8.val to i64
  %i.f = and i64 %i.e, 1
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr i8, ptr %.8.val, i64 -9    ; 5 uses
  %.not1.i.i.i = icmp eq ptr %i.g, null
  %.not.i.i.i = or i1 %.not1.i.i.i, %.not.i.i.i.i
  br i1 %.not.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECscAFBYSOo4Yh_12test_fixture.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %i.h = load atomic i64, ptr %i.g acquire, align 8
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.d, label %bb.e, !prof !4

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  %i.j = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !42
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECscAFBYSOo4Yh_12test_fixture.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE9drop_slowCs39E2wp1vf7X_6intern(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #22
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECscAFBYSOo4Yh_12test_fixture.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECscAFBYSOo4Yh_12test_fixture.exit.i.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECscAFBYSOo4Yh_12test_fixture.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.l = ptrtoint ptr %.8.val to i64
  %i.m = and i64 %i.l, 1
  %.not.i.i.i.i2 = icmp eq i64 %i.m, 0
  %i.n = getelementptr i8, ptr %.8.val, i64 -9    ; 5 uses
  %.not1.i.i.i3 = icmp eq ptr %i.n, null
  %.not.i.i.i4 = or i1 %.not1.i.i.i3, %.not.i.i.i.i2
  br i1 %.not.i.i.i4, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECscAFBYSOo4Yh_12test_fixture.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.n, ptr %i.b, align 8
  %i.o = load atomic i64, ptr %i.n acquire, align 8
  %i.p = icmp eq i64 %i.o, 2
  br i1 %i.p, label %bb.i, label %bb.j, !prof !4

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.a, align 8
  %i.q = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !43
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECscAFBYSOo4Yh_12test_fixture.exit.i.i.i5

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE9drop_slowCs39E2wp1vf7X_6intern(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECscAFBYSOo4Yh_12test_fixture.exit.i.i.i5

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECscAFBYSOo4Yh_12test_fixture.exit.i.i.i5: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECscAFBYSOo4Yh_12test_fixture.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECscAFBYSOo4Yh_12test_fixture.exit.i.i.i5, %bb.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECscAFBYSOo4Yh_12test_fixture.exit.i.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = ptrtoint ptr %.val to i64
  %i.e = and i64 %i.d, 1
  %.not.i.i.i = icmp eq i64 %i.e, 0
  %i.f = getelementptr i8, ptr %.val, i64 -9      ; 5 uses
  %.not1.i.i = icmp eq ptr %i.f, null
  %.not.i.i = or i1 %.not1.i.i, %.not.i.i.i
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECscAFBYSOo4Yh_12test_fixture.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %i.g = load atomic i64, ptr %i.f acquire, align 8
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.c, label %.noexc, !prof !4

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %i.i = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !58
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECscAFBYSOo4Yh_12test_fixture.exit.i.i

bb.d:                                             ; preds = %.noexc
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE9drop_slowCs39E2wp1vf7X_6intern(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECscAFBYSOo4Yh_12test_fixture.exit.i.i unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECscAFBYSOo4Yh_12test_fixture.exit.i.i: ; preds = %bb.d, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECscAFBYSOo4Yh_12test_fixture.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.l = load ptr, ptr %0, align 8, !alias.scope !61, !nonnull !6, !noundef !6
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !61
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcDNtNtCs33K2ylI4knu_10hir_expand10proc_macro17ProcMacroExpanderEL_EECscAFBYSOo4Yh_12test_fixture.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCs33K2ylI4knu_10hir_expand10proc_macro17ProcMacroExpanderEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcDNtNtCs33K2ylI4knu_10hir_expand10proc_macro17ProcMacroExpanderEL_EECscAFBYSOo4Yh_12test_fixture.exit unwind label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECscAFBYSOo4Yh_12test_fixture.exit.i.i, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.o = load ptr, ptr %0, align 8, !alias.scope !64, !nonnull !6, !noundef !6
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !64
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcDNtNtCs33K2ylI4knu_10hir_expand10proc_macro17ProcMacroExpanderEL_EECscAFBYSOo4Yh_12test_fixture.exit3

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECscAFBYSOo4Yh_12test_fixture.exit
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCs33K2ylI4knu_10hir_expand10proc_macro17ProcMacroExpanderEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #22
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcDNtNtCs33K2ylI4knu_10hir_expand10proc_macro17ProcMacroExpanderEL_EECscAFBYSOo4Yh_12test_fixture.exit3

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcDNtNtCs33K2ylI4knu_10hir_expand10proc_macro17ProcMacroExpanderEL_EECscAFBYSOo4Yh_12test_fixture.exit3: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECscAFBYSOo4Yh_12test_fixture.exit, %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCshzWfHUSfYae_4core3fmtReNtB6_5Debug3fmtCscAFBYSOo4Yh_12test_fixture:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define hidden void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCscAFBYSOo4Yh_12test_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %3 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.c)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %..i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 4 ptr @_RNvXs5_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtBP_12CrateBuilderEINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEINtNtNtB2m_3ops5index5IndexRBN_E5indexCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !381, !noundef !6 ; 5 uses
  switch i64 %i.b, label %bb.b [
    i64 0, label %.loopexit
    i64 1, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtBQ_12CrateBuilderEINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEE12get_index_ofBO_ECscAFBYSOo4Yh_12test_fixture.exit.i
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.c = ptrtoint ptr %.val to i64
  %i.d = mul i64 %i.c, -1065810590584100411       ; 2 uses
  %i.e = tail call noundef i64 @llvm.fshl.i64(i64 %i.d, i64 %i.d, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !383, !nonnull !6, !noundef !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.i = lshr i64 %i.e, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !386, !noundef !6 ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !386, !nonnull !6, !noundef !6 ; 2 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ah, %bb.f ]
  %.pn.i.i.i.i = phi i64 [ %i.e, %bb.b ], [ %i.ai, %bb.f ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.l ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !387 ; 2 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.o
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not.i.not36.i.i.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.not36.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.e
  %.sroa.05.0.i37.i.i.i.i = phi i16 [ %i.ag, %bb.e ], [ %i.r, %bb.c ] ; 3 uses
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = add i64 %.sroa.01.0.i.i.i.i.i, %i.t
  %i.v = and i64 %i.u, %i.l
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.y, align 8, !noalias !388, !noundef !6 ; 4 uses
  %i.z = icmp ult i64 %.val.i.i.i.i.i, %i.b
  br i1 %i.z, label %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1M_12CrateBuilderEB1K_E0E0CscAFBYSOo4Yh_12test_fixture.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i.i, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #25, !noalias !389
  unreachable

_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1M_12CrateBuilderEB1K_E0E0CscAFBYSOo4Yh_12test_fixture.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.val.i.i.i.i.i
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !389, !nonnull !6, !noundef !6
  %i.ab = icmp eq ptr %.val, %.val2.i.i.i.i.i.i
  br i1 %i.ab, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtBQ_12CrateBuilderEINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEE12get_index_ofBO_ECscAFBYSOo4Yh_12test_fixture.exit.thread3.i, label %bb.e, !prof !9

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.c
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %.loopexit, !prof !4

bb.e:                                             ; preds = %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1M_12CrateBuilderEB1K_E0E0CscAFBYSOo4Yh_12test_fixture.exit.i.i.i.i
  %i.af = add i16 %.sroa.05.0.i37.i.i.i.i, -1
  %i.ag = and i16 %i.af, %.sroa.05.0.i37.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.ai = add i64 %.sroa.01.0.i.i.i.i.i, %i.ah
  br label %bb.c

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtBQ_12CrateBuilderEINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEE12get_index_ofBO_ECscAFBYSOo4Yh_12test_fixture.exit.i: ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !381, !nonnull !6, !noundef !6 ; 2 uses
  %.val2.i.i = load ptr, ptr %i.ak, align 8, !noalias !381, !nonnull !6, !noundef !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.al = icmp eq ptr %.val, %.val2.i.i
  br i1 %i.al, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtBQ_12CrateBuilderEINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEE12get_index_ofBO_ECscAFBYSOo4Yh_12test_fixture.exit.thread3.i, label %.loopexit

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtBQ_12CrateBuilderEINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEE12get_index_ofBO_ECscAFBYSOo4Yh_12test_fixture.exit.thread3.i: ; preds = %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1M_12CrateBuilderEB1K_E0E0CscAFBYSOo4Yh_12test_fixture.exit.i.i.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtBQ_12CrateBuilderEINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEE12get_index_ofBO_ECscAFBYSOo4Yh_12test_fixture.exit.i
  %i.am = phi ptr [ %i.ak, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtBQ_12CrateBuilderEINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEE12get_index_ofBO_ECscAFBYSOo4Yh_12test_fixture.exit.i ], [ %i.g, %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1M_12CrateBuilderEB1K_E0E0CscAFBYSOo4Yh_12test_fixture.exit.i.i.i.i ]
  %.sroa.5.0.i6.i = phi i64 [ 0, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtBQ_12CrateBuilderEINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEE12get_index_ofBO_ECscAFBYSOo4Yh_12test_fixture.exit.i ], [ %.val.i.i.i.i.i, %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1M_12CrateBuilderEB1K_E0E0CscAFBYSOo4Yh_12test_fixture.exit.i.i.i.i ] ; 3 uses
  %i.an = icmp ult i64 %.sroa.5.0.i6.i, %i.b
  br i1 %i.an, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtBQ_12CrateBuilderEINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEE12get_index_ofBO_ECscAFBYSOo4Yh_12test_fixture.exit.thread3.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.5.0.i6.i, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25, !noalias !379
  unreachable

bb.h:                                             ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtBQ_12CrateBuilderEINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEE12get_index_ofBO_ECscAFBYSOo4Yh_12test_fixture.exit.thread3.i
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %.sroa.5.0.i6.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  ret ptr %i.ap

.loopexit:                                        ; preds = %._crit_edge.i.i.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtBQ_12CrateBuilderEINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEE12get_index_ofBO_ECscAFBYSOo4Yh_12test_fixture.exit.i, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringBN_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCscAFBYSOo4Yh_12test_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringBP_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCsgIpRO4v45SJ_7base_db5inputNtB5_9CrateNameNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtCs4dcH4YgJDq_2tt4LeafEj2_NtB4_11PartialDrop12partial_dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtCs4dcH4YgJDq_2tt4LeafENtB2_11PartialDrop12partial_dropCscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtCs4dcH4YgJDq_2tt4LeafENtB2_11PartialDrop12partial_dropCscAFBYSOo4Yh_12test_fixture.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  %.val8.i.i = load i32, ptr %i.e, align 8, !range !12, !alias.scope !396, !noundef !6
  %i.g = getelementptr i8, ptr %i.e, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !396
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECscAFBYSOo4Yh_12test_fixture(i32 %.val8.i.i, ptr %.val9.i.i)
          to label %bb.b unwind label %bb.e, !noalias !396

bb.d:                                             ; preds = %.lr.ph5
  %i.h = add nuw nsw i64 %.sroa.0.1.i.i4, 1       ; 2 uses
  %i.i = icmp eq i64 %i.h, %i.b
  br i1 %i.i, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.f, %i.b
  br i1 %i.k, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.h, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4 ; 2 uses
  %.val.i.i = load i32, ptr %i.l, align 8, !range !12, !alias.scope !396, !noundef !6
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val7.i.i = load ptr, ptr %i.m, align 8, !alias.scope !396
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECscAFBYSOo4Yh_12test_fixture(i32 %.val.i.i, ptr %.val7.i.i) #24
          to label %bb.d unwind label %bb.f, !noalias !396

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.j

bb.f:                                             ; preds = %.lr.ph5
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23, !noalias !396
  unreachable

_RNvXNtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtCs4dcH4YgJDq_2tt4LeafENtB2_11PartialDrop12partial_dropCscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 24                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph

.body:                                            ; preds = %bb.d, %.body.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.h unwind label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscAFBYSOo4Yh_12test_fixture.exit.i.i
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.p, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i16 ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscAFBYSOo4Yh_12test_fixture.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscAFBYSOo4Yh_12test_fixture.exit.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph18
  %i.s = add nuw nsw i64 %.sroa.0.1.i17, 1        ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.h
  br i1 %i.t, label %.body, label %.lr.ph18

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscAFBYSOo4Yh_12test_fixture.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.q, %bb.b ]
  %i.v = icmp eq i64 %i.p, %i.h
  br i1 %i.v, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i17 = phi i64 [ %i.s, %bb.d ], [ %i.p, %.body.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i17
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #24
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph18
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !6
  store i64 %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.y, ptr %i.ab, align 8
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.h:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4dcH4YgJDq_2tt4iter9TtElementENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 88                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph.i

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture.exit10.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4dcH4YgJDq_2tt4iter9TtElementENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture.exit.i
  %.sroa.0.011.i = phi i64 [ %i.o, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %.val, i64 %.sroa.0.011.i ; 3 uses
  %i.o = add nuw nsw i64 %.sroa.0.011.i, 1        ; 4 uses
  %i.p = load i64, ptr %i.n, align 8, !range !404, !alias.scope !405, !noundef !6
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %bb.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i.i = load i32, ptr %i.r, align 8, !range !12, !alias.scope !405, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i.i = load ptr, ptr %i.s, align 8, !alias.scope !405
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECscAFBYSOo4Yh_12test_fixture(i32 %.val.i.i, ptr %.val1.i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture.exit.i unwind label %bb.c, !noalias !403

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.t = icmp eq i64 %i.o, %i.h
  br i1 %i.t, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.o, %i.h
  br i1 %i.v, label %.body, label %.lr.ph14.i

.lr.ph14.i:                                       ; preds = %bb.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture.exit10.i
  %.sroa.0.112.i = phi i64 [ %i.x, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture.exit10.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw [88 x i8], ptr %.val, i64 %.sroa.0.112.i ; 3 uses
  %i.x = add nuw nsw i64 %.sroa.0.112.i, 1        ; 2 uses
  %i.y = load i64, ptr %i.w, align 8, !range !404, !alias.scope !406, !noundef !6
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture.exit10.i

bb.d:                                             ; preds = %.lr.ph14.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val.i7.i = load i32, ptr %i.aa, align 8, !range !12, !alias.scope !406, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val1.i8.i = load ptr, ptr %i.ab, align 8, !alias.scope !406
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECscAFBYSOo4Yh_12test_fixture(i32 %.val.i7.i, ptr %.val1.i8.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture.exit10.i unwind label %bb.e, !noalias !403

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture.exit10.i: ; preds = %bb.d, %.lr.ph14.i
  %i.ac = icmp eq i64 %i.x, %i.h
  br i1 %i.ac, label %.body, label %.lr.ph14.i

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23, !noalias !403
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECscAFBYSOo4Yh_12test_fixture.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !6
  store i64 %i.ag, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ae, ptr %i.ah, align 8
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4dcH4YgJDq_2tt4iter9TtElementENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbXLDOPgjE5X_10test_utils7fixture7FixtureENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 264                 ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsbXLDOPgjE5X_10test_utils7fixture7FixtureECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph

.body:                                            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsbXLDOPgjE5X_10test_utils7fixture7FixtureENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsbXLDOPgjE5X_10test_utils7fixture7FixtureECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i4 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [264 x i8], ptr %.val, i64 %.sroa.0.0.i4
  %i.p = add nuw nsw i64 %.sroa.0.0.i4, 1         ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbXLDOPgjE5X_10test_utils7fixture7FixtureECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(264) %i.o)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph6
  %i.q = add nuw nsw i64 %.sroa.0.1.i5, 1         ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.h
  br i1 %i.r, label %.body, label %.lr.ph6

bb.d:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.h
  br i1 %i.t, label %.body, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i5 = phi i64 [ %i.q, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [264 x i8], ptr %.val, i64 %.sroa.0.1.i5
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbXLDOPgjE5X_10test_utils7fixture7FixtureECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(264) %i.u) #24
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph6
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsbXLDOPgjE5X_10test_utils7fixture7FixtureECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !6
  store i64 %i.y, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.z, align 8
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsbXLDOPgjE5X_10test_utils7fixture7FixtureENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBX_EEENtNtNtB1n_3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 48                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB4_6option6OptionBD_EEECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph

.body:                                            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBN_EEENtNtNtB1d_3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB4_6option6OptionBD_EEECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i4 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.0.i4
  %i.p = add nuw nsw i64 %.sroa.0.0.i4, 1         ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB4_6option6OptionBC_EEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(48) %i.o)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph6
  %i.q = add nuw nsw i64 %.sroa.0.1.i5, 1         ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.h
  br i1 %i.r, label %.body, label %.lr.ph6

bb.d:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.h
  br i1 %i.t, label %.body, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i5 = phi i64 [ %i.q, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.1.i5
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB4_6option6OptionBC_EEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u) #24
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph6
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB4_6option6OptionBD_EEECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !6
  store i64 %i.y, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.z, align 8
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBN_EEENtNtNtB1d_3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 56                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph

.body:                                            ; preds = %bb.f, %.body.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.j unwind label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEECscAFBYSOo4Yh_12test_fixture.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit.i.i
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEECscAFBYSOo4Yh_12test_fixture.exit.i
  %.sroa.0.0.i24 = phi i64 [ %i.p, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEECscAFBYSOo4Yh_12test_fixture.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.sroa.0.0.i24 ; 5 uses
  %i.p = add nuw nsw i64 %.sroa.0.0.i24, 1        ; 4 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscAFBYSOo4Yh_12test_fixture.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscAFBYSOo4Yh_12test_fixture.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscAFBYSOo4Yh_12test_fixture.exit.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.q, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t) #24
          to label %.body.i unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscAFBYSOo4Yh_12test_fixture.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEECscAFBYSOo4Yh_12test_fixture.exit.i unwind label %bb.g

bb.e:                                             ; preds = %.body.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %.lr.ph26
  %i.w = add nuw nsw i64 %.sroa.0.1.i25, 1        ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.h
  br i1 %i.x, label %.body, label %.lr.ph26

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.y, %bb.g ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.z = icmp eq i64 %i.p, %i.h
  br i1 %i.z, label %.body, label %.lr.ph26

.lr.ph26:                                         ; preds = %.body.i, %bb.f
  %.sroa.0.1.i25 = phi i64 [ %i.w, %bb.f ], [ %i.p, %.body.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.sroa.0.1.i25
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(56) %i.aa) #24
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph26
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEECscAFBYSOo4Yh_12test_fixture.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !6
  store i64 %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ac, ptr %i.af, align 8
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.j:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameBX_bEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 24                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameBD_bEECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph

.body:                                            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameBN_bEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameBD_bEECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i4 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i4
  %i.p = add nuw nsw i64 %.sroa.0.0.i4, 1         ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameBC_bEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.o)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph6
  %i.q = add nuw nsw i64 %.sroa.0.1.i5, 1         ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.h
  br i1 %i.r, label %.body, label %.lr.ph6

bb.d:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.h
  br i1 %i.t, label %.body, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i5 = phi i64 [ %i.q, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i5
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameBC_bEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.u) #24
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph6
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23, !noalias !409
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameBD_bEECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !6
  store i64 %i.y, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.z, align 8
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameBN_bEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.s
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB5_13SliceContains14slice_containsCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %2, 24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load i64, ptr %i.b, align 8, !alias.scope !413, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i.i = load ptr, ptr %i.c, align 8, !alias.scope !413, !nonnull !6
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB7_13SliceContains14slice_contains0CscAFBYSOo4Yh_12test_fixture.exit.backedge.i, %.lr.ph.i
  %i.d = phi ptr [ %1, %.lr.ph.i ], [ %i.e, %_RNCNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB7_13SliceContains14slice_contains0CscAFBYSOo4Yh_12test_fixture.exit.backedge.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val3.i = load i64, ptr %i.f, align 8, !noalias !414, !noundef !6
  %i.g = icmp eq i64 %.val3.i, %.val3.i.i
  br i1 %i.g, label %.split.i, label %_RNCNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB7_13SliceContains14slice_contains0CscAFBYSOo4Yh_12test_fixture.exit.backedge.i

.split.i:                                         ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val2.i = load ptr, ptr %i.h, align 8, !noalias !414, !nonnull !6, !noundef !6
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i, ptr nonnull readonly %.val2.i.i, i64 %.val3.i.i), !noalias !414
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECscAFBYSOo4Yh_12test_fixture.exit, label %_RNCNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB7_13SliceContains14slice_contains0CscAFBYSOo4Yh_12test_fixture.exit.backedge.i

_RNCNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB7_13SliceContains14slice_contains0CscAFBYSOo4Yh_12test_fixture.exit.backedge.i: ; preds = %.split.i, %bb.b
  %.not7.i = icmp eq ptr %i.e, %i.a
  br i1 %.not7.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECscAFBYSOo4Yh_12test_fixture.exit, label %bb.b

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %.split.i, %_RNCNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB7_13SliceContains14slice_contains0CscAFBYSOo4Yh_12test_fixture.exit.backedge.i, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ false, %_RNCNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB7_13SliceContains14slice_contains0CscAFBYSOo4Yh_12test_fixture.exit.backedge.i ], [ true, %.split.i ]
  ret i1 %.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtB7_6option6OptionNtB12_16CrateDisplayNameEENtB5_5Debug3fmtCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %.idx = mul nuw nsw i64 %1, 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtBa_6option6OptionNtB1B_16CrateDisplayNameEEINtNtNtBa_5slice4iter4IterB14_EECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.05.i = phi ptr [ %i.e, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !417
  store ptr %.sroa.0.05.i, ptr %i.a, align 8, !noalias !417, !captures !10
  %i.f = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !417
  %i.g = icmp eq ptr %i.e, %i.c
  br i1 %i.g, label %_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtBa_6option6OptionNtB1B_16CrateDisplayNameEEINtNtNtBa_5slice4iter4IterB14_EECscAFBYSOo4Yh_12test_fixture.exit, label %.lr.ph.i

_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtBa_6option6OptionNtB1B_16CrateDisplayNameEEINtNtNtBa_5slice4iter4IterB14_EECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %.lr.ph.i, %bb.a
  %i.h = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1S_12CrateBuilderEE0ECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0ECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtB7_6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBG_EEENtNtNtB16_3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4dcH4YgJDq_2tt4iter9TtElementENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsbXLDOPgjE5X_10test_utils7fixture7FixtureENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBN_EEENtNtNtB1d_3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameBN_bEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsC_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringBT_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringBP_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringBT_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCscAFBYSOo4Yh_12test_fixture(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsgIpRO4v45SJ_7base_db5input9CrateNameINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1l_12CrateBuilderEEE8grow_oneCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_1
