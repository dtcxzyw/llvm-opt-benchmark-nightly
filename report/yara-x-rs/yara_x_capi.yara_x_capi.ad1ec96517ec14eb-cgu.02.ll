Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_capi.yara_x_capi.ad1ec96517ec14eb-cgu.02?download=true
inline.NumInlined: 1671
inline.NumDeleted: 819
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6FooterEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2v_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtB8_6string6StringEENCNvMs0_B15_NtB15_6Report7footers0EE9from_iterCseRvVZ55ETAB_11yara_x_capi:bb.a

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #25
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6FooterE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1U_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtB8_6string6StringEENCNvMs0_BI_NtBI_6Report7footers0EECseRvVZ55ETAB_11yara_x_capi.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1437
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !1437
  store ptr %i.q, ptr %i.a, align 8, !noalias !1437
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !1437
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvMs0_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB2X_6Report7footers0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Z_8for_each4callNtB2X_6FooterNCINvMsk_NtB2f_3vecINtB5o_3VecB52_E14extend_trustedBN_E0E0ECseRvVZ55ETAB_11yara_x_capi(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6FooterE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1U_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtB8_6string6StringEENCNvMs0_BI_NtBI_6Report7footers0EECseRvVZ55ETAB_11yara_x_capi.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6FooterENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6FooterEECseRvVZ55ETAB_11yara_x_capi.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6FooterE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1U_5slice4iter4IterTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtB8_6string6StringEENCNvMs0_BI_NtBI_6Report7footers0EECseRvVZ55ETAB_11yara_x_capi.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6FooterEECseRvVZ55ETAB_11yara_x_capi.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %i.e = ptrtoint ptr %.val2 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.b, align 8, !range !18, !noundef !6
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !36, !noundef !6 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECseRvVZ55ETAB_11yara_x_capi.exit.i, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #25
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECseRvVZ55ETAB_11yara_x_capi.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1444
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !1444
  store ptr %i.q, ptr %i.a, align 8, !noalias !1444
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !1444
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECseRvVZ55ETAB_11yara_x_capi.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECseRvVZ55ETAB_11yara_x_capi.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECseRvVZ55ETAB_11yara_x_capi.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECseRvVZ55ETAB_11yara_x_capi.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [80 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = load i64, ptr %i.j, align 8, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1463
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef range(i64 0, 115292150460684698) %i.m, i1 noundef zeroext false, i64 noundef 8, i64 noundef 80), !noalias !1463
  %i.n = load i64, ptr %i.g, align 8, !range !18, !noalias !1463, !noundef !6
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !36, !noalias !1463, !noundef !6 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.o, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseRvVZ55ETAB_11yara_x_capi.exit.i, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.r, align 8, !noalias !1463
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #25, !noalias !1463
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseRvVZ55ETAB_11yara_x_capi.exit.i: ; preds = %bb.a
  %i.t = load ptr, ptr %i.r, align 8, !noalias !1463, !nonnull !6, !noundef !6 ; 2 uses
  %i.u = icmp ule i64 %i.m, %i.q
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1463
  store i64 %i.q, ptr %i.i, align 8, !noalias !1463
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.t, ptr %i.v, align 8, !noalias !1463
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.l, i64 %i.m
  %i.y = icmp eq i64 %i.q, 0
  br i1 %i.y, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECseRvVZ55ETAB_11yara_x_capi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseRvVZ55ETAB_11yara_x_capi.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.sroa.012.047.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.ak, %.loopexit.i ] ; 7 uses
  %.sroa.7.045.i = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %.loopexit.i ] ; 3 uses
  %.sroa.10.044.i = phi i64 [ %i.q, %.lr.ph.i ], [ %i.ai, %.loopexit.i ]
  %i.ai = add i64 %.sroa.10.044.i, -1             ; 2 uses
  %i.aj = icmp eq ptr %.sroa.012.047.i, %i.x
  br i1 %i.aj, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECseRvVZ55ETAB_11yara_x_capi.exit, label %bb.d

.loopexit18.i:                                    ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 80
  %i.al = add nuw nsw i64 %.sroa.7.045.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1465
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 48 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !range !31, !alias.scope !1466, !noundef !6 ; 2 uses
  %.off = add i64 %i.an, 3
  %switch = icmp ult i64 %.off, 2
  br i1 %switch, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %.noexc.i
  %i.ao = phi i64 [ %i.an, %bb.d ], [ %.sroa.03.0.copyload.i.i, %.noexc.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 72
  %i.aq = load i8, ptr %i.ap, align 8, !range !37, !alias.scope !1466, !noundef !6
  store i64 %i.ao, ptr %i.f, align 8, !noalias !1465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !noalias !1465
  store i8 %i.aq, ptr %i.aa, align 8, !noalias !1465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1465
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.012.047.i)
          to label %bb.i unwind label %bb.h, !noalias !1467

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXs0_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
          to label %.noexc.i unwind label %.loopexit18.i, !noalias !1468

.noexc.i:                                         ; preds = %bb.f
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !1465
  br label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECseRvVZ55ETAB_11yara_x_capi.exit.i.i: ; preds = %.body.i.i, %bb.h
  %.pn.i.i = phi { ptr, i32 } [ %i.ar, %bb.h ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %2 = icmp ugt i64 %i.ao, -4
  br i1 %2, label %bb.p, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECseRvVZ55ETAB_11yara_x_capi.exit.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.p unwind label %bb.n, !noalias !1467

bb.h:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECseRvVZ55ETAB_11yara_x_capi.exit.i.i

bb.i:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 32
  %.val.i.i = load ptr, ptr %i.as, align 8, !alias.scope !1466, !nonnull !6, !noundef !6 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 40
  %.val8.i.i = load i64, ptr %i.at, align 8, !alias.scope !1466, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1470
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 230584300921369396) %.val8.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
          to label %.noexc9.i.i unwind label %.loopexit.split-lp20.i.loopexit.split-lp.loopexit.split-lp, !noalias !1467

.noexc9.i.i:                                      ; preds = %bb.i
  %i.au = load i64, ptr %i.a, align 8, !range !18, !noalias !1470, !noundef !6
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = load i64, ptr %i.ab, align 8, !range !36, !noalias !1470, !noundef !6 ; 5 uses
  br i1 %i.av, label %bb.j, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i, !prof !19

bb.j:                                             ; preds = %.noexc9.i.i
  %i.ax = load i64, ptr %i.ac, align 8, !noalias !1470
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aw, i64 %i.ax) #25
          to label %.noexc10.i.i unwind label %.loopexit.split-lp20.i.loopexit.split-lp.loopexit.split-lp, !noalias !1467

.noexc10.i.i:                                     ; preds = %bb.j
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i: ; preds = %.noexc9.i.i
  %i.ay = load ptr, ptr %i.ac, align 8, !noalias !1470, !nonnull !6, !noundef !6 ; 2 uses
  %i.az = icmp ule i64 %.val8.i.i, %i.aw
  tail call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1470
  store i64 %i.aw, ptr %i.c, align 8, !noalias !1470
  store ptr %i.ay, ptr %i.ad, align 8, !noalias !1470
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i, i64 %.val8.i.i
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i, %_RNvYTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i
  %.sroa.012.023.i.i.i.i = phi ptr [ %i.bh, %_RNvYTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i ], [ %.val.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i ] ; 4 uses
  %.sroa.7.022.i.i.i.i = phi i64 [ %i.bg, %_RNvYTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i ] ; 3 uses
  %.sroa.10.021.i.i.i.i = phi i64 [ %i.bc, %_RNvYTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i ], [ %i.aw, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i ]
  %i.bc = add i64 %.sroa.10.021.i.i.i.i, -1       ; 2 uses
  %i.bd = icmp eq ptr %.sroa.012.023.i.i.i.i, %i.ba
  br i1 %i.bd, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %i.be = load <4 x i32>, ptr %.sroa.012.023.i.i.i.i, align 4, !alias.scope !1475, !noalias !1476
  store <4 x i32> %i.be, ptr %i.b, align 16, !alias.scope !1477, !noalias !1470
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i.i.i, i64 16
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %_RNvYTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i unwind label %bb.m, !noalias !1478

_RNvYTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i: ; preds = %bb.k
  %i.bg = add nuw nsw i64 %.sroa.7.022.i.i.i.i, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i.i.i, i64 40
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %.sroa.7.022.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 16 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1470
  %i.bj = icmp eq i64 %i.bc, 0
  br i1 %i.bj, label %.loopexit.i, label %.lr.ph.i.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1478
  unreachable

bb.m:                                             ; preds = %bb.k
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i.i.i, ptr %i.ae, align 8, !noalias !1470
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtBG_6string6StringEEECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #18
          to label %.body.i.i unwind label %bb.l, !noalias !1478

.loopexit.split-lp20.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.j
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp20.i.loopexit.split-lp.loopexit.split-lp, %bb.m
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %bb.m ], [ %lpad.loopexit.split-lp61, %.loopexit.split-lp20.i.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECseRvVZ55ETAB_11yara_x_capi.exit.i.i unwind label %bb.n, !noalias !1467

bb.n:                                             ; preds = %.body.i.i, %bb.g
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1467
  unreachable

.loopexit.i:                                      ; preds = %_RNvYTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i, %.lr.ph.i.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseRvVZ55ETAB_11yara_x_capi.exit.i.i.i.i
  store i64 %.val8.i.i, ptr %i.ae, align 8, !noalias !1470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !1479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1463
  %i.bm = getelementptr inbounds nuw [80 x i8], ptr %i.t, i64 %.sroa.7.045.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bm, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !1468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bn = icmp eq i64 %i.ai, 0
  br i1 %i.bn, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECseRvVZ55ETAB_11yara_x_capi.exit, label %bb.c

bb.o:                                             ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1468
  unreachable

bb.p:                                             ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECseRvVZ55ETAB_11yara_x_capi.exit.i.i, %.loopexit18.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECseRvVZ55ETAB_11yara_x_capi.exit.i.i ], [ %.pn.i.i, %bb.g ], [ %lpad.loopexit.i, %.loopexit18.i ]
  store i64 %.sroa.7.045.i, ptr %i.w, align 8, !noalias !1463
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionEECseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #18
          to label %bb.q unwind label %bb.o, !noalias !1468

bb.q:                                             ; preds = %bb.p
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECseRvVZ55ETAB_11yara_x_capi.exit: ; preds = %bb.c, %.loopexit.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseRvVZ55ETAB_11yara_x_capi.exit.i
  store i64 %i.m, ptr %i.w, align 8, !noalias !1463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1463
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtB7_6string6StringEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCseRvVZ55ETAB_11yara_x_capi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1494
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseRvVZ55ETAB_11yara_x_capi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 164703072086692426) %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !noalias !1494
  %i.i = load i64, ptr %i.b, align 8, !range !18, !noalias !1494, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !36, !noalias !1494, !noundef !6 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseRvVZ55ETAB_11yara_x_capi.exit.i, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !1494
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #25, !noalias !1494
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseRvVZ55ETAB_11yara_x_capi.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !1494, !nonnull !6, !noundef !6 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1494
  store i64 %i.l, ptr %i.d, align 8, !noalias !1494
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !1494
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %i.h
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtB8_6string6StringENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECseRvVZ55ETAB_11yara_x_capi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCseRvVZ55ETAB_11yara_x_capi.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_RNvYTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCseRvVZ55ETAB_11yara_x_capi.exit.i, %.lr.ph.i
  %.sroa.012.025.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.z, %_RNvYTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCseRvVZ55ETAB_11yara_x_capi.exit.i ] ; 6 uses
  %.sroa.7.024.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aa, %_RNvYTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCseRvVZ55ETAB_11yara_x_capi.exit.i ] ; 3 uses
  %.sroa.10.023.i = phi i64 [ %i.l, %.lr.ph.i ], [ %i.x, %_RNvYTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCseRvVZ55ETAB_11yara_x_capi.exit.i ]
  %i.x = add i64 %.sroa.10.023.i, -1              ; 2 uses
  %i.y = icmp eq ptr %.sroa.012.025.i, %i.s
  br i1 %i.y, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inTNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtNtB8_6string6StringENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECseRvVZ55ETAB_11yara_x_capi.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
end_hunk_0
