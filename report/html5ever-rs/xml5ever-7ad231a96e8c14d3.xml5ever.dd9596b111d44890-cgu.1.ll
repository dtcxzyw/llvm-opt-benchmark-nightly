Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/xml5ever-7ad231a96e8c14d3.xml5ever.dd9596b111d44890-cgu.1?download=true
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECsj1ugBVjDER0_8xml5ever:bb.a
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECsj1ugBVjDER0_8xml5ever.exit6, !prof !10

bb.m:                                             ; preds = %bb.l
  tail call void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECsj1ugBVjDER0_8xml5ever.exit6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECsj1ugBVjDER0_8xml5ever.exit6: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit4, %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %bb.j, %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit, %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #21
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !60, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = icmp ult ptr %i.f, inttoptr (i64 16 to ptr)
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever.exit, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsj1ugBVjDER0_8xml5ever.exit.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsj1ugBVjDER0_8xml5ever.exit.i.i: ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = and i64 %i.h, 1
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr i8, ptr %i.f, i64 %i.j     ; 6 uses
  %i.l = trunc i64 %i.h to i1                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.0.0.in.i.i.i = select i1 %i.l, ptr %i.m, ptr %i.n
  %.sroa.0.0.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i, align 4, !noalias !61, !noundef !4 ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsj1ugBVjDER0_8xml5ever.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60
  %i.o = zext i32 %.sroa.0.0.i.i.i to i64
  %i.p = add nuw nsw i64 %i.o, 15
  %i.q = lshr i64 %i.p, 4
  %i.r = add nuw nsw i64 %i.q, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  store i64 %i.r, ptr %i.a, align 8, !noalias !60
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.s, align 8, !noalias !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.t, align 8, !noalias !60
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever.exit

bb.e:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.u = load i64, ptr %i.k, align 8, !noalias !60, !noundef !4 ; 2 uses
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.k, align 8, !noalias !60
  %i.w = icmp eq i64 %i.u, 1
  br i1 %i.w, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !60
  %i.x = zext i32 %.sroa.0.0.i.i.i to i64
  %i.y = add nuw nsw i64 %i.x, 15
  %i.z = lshr i64 %i.y, 4
  %i.aa = add nuw nsw i64 %i.z, 1
  store i64 %i.aa, ptr %i.b, align 8, !noalias !60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.ab, align 8, !noalias !60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %i.ac, align 8, !noalias !60
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsj1ugBVjDER0_8xml5ever9tokenizer8char_ref16CharRefTokenizerEBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.c = load i64, ptr %0, align 8, !range !67, !alias.scope !64, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB12_3fmt4UTF8EEECsj1ugBVjDER0_8xml5ever.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !74, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = icmp ult ptr %i.f, inttoptr (i64 16 to ptr)
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB12_3fmt4UTF8EEECsj1ugBVjDER0_8xml5ever.exit, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsj1ugBVjDER0_8xml5ever.exit.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsj1ugBVjDER0_8xml5ever.exit.i.i.i: ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = and i64 %i.h, 1
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr i8, ptr %i.f, i64 %i.j     ; 6 uses
  %i.l = trunc i64 %i.h to i1                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.in.i.i.i.i = select i1 %i.l, ptr %i.m, ptr %i.n
  %.sroa.0.0.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i, align 4, !noalias !75, !noundef !4 ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsj1ugBVjDER0_8xml5ever.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !74
  %i.o = zext i32 %.sroa.0.0.i.i.i.i to i64
  %i.p = add nuw nsw i64 %i.o, 15
  %i.q = lshr i64 %i.p, 4
  %i.r = add nuw nsw i64 %i.q, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  store i64 %i.r, ptr %i.a, align 8, !noalias !74
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.s, align 8, !noalias !74
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.t, align 8, !noalias !74
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !74
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB12_3fmt4UTF8EEECsj1ugBVjDER0_8xml5ever.exit

bb.d:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsj1ugBVjDER0_8xml5ever.exit.i.i.i
  %i.u = load i64, ptr %i.k, align 8, !noalias !74, !noundef !4 ; 2 uses
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.k, align 8, !noalias !74
  %i.w = icmp eq i64 %i.u, 1
  br i1 %i.w, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB12_3fmt4UTF8EEECsj1ugBVjDER0_8xml5ever.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !74
  %i.x = zext i32 %.sroa.0.0.i.i.i.i to i64
  %i.y = add nuw nsw i64 %i.x, 15
  %i.z = lshr i64 %i.y, 4
  %i.aa = add nuw nsw i64 %i.z, 1
  store i64 %i.aa, ptr %i.b, align 8, !noalias !74
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.ab, align 8, !noalias !74
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %i.ac, align 8, !noalias !74
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !74
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB12_3fmt4UTF8EEECsj1ugBVjDER0_8xml5ever.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB12_3fmt4UTF8EEECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCsexYYUdYSQU6_5alloc3vec3VecBZ_EECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [4096 x i8], align 8              ; 3 uses
  %i.d = lshr i64 %1, 1
  %i.e = sub nsw i64 %1, %i.d
  %..i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %1, i64 200000)
  %..i8 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.e) ; 2 uses
  %..i9 = tail call noundef i64 @llvm.umax.i64(i64 %..i8, i64 48) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = icmp ugt i64 %..i8, 102                  ; 3 uses
  br i1 %i.f, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i9, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
  %i.g = load i64, ptr %i.a, align 8, !range !67, !noalias !79, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !82, !noalias !79, !noundef !4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %.noexc10, label %bb.c, !prof !10

.noexc10:                                         ; preds = %.noexc
  %i.l = load i64, ptr %i.k, align 8, !noalias !79
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #24
  unreachable

bb.b:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.f, label %bb.m, label %common.resume

bb.c:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %i.k, align 8, !noalias !79, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = icmp ule i64 %..i9, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79
  store i64 %i.j, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0 = phi i64 [ 102, %bb.a ], [ %i.j, %bb.c ]
  %.pn17 = phi ptr [ %i.c, %bb.a ], [ %i.m, %bb.c ]
  %i.o = icmp samesign ult i64 %1, 33
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBW_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn17, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.o, ptr noalias nofree noundef nonnull %2)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsj1ugBVjDER0_8xml5ever.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !83, !nonnull !4, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val1.i = load i64, ptr %i.q, align 8, !alias.scope !83, !noundef !4 ; 4 uses
  %i.r = icmp eq i64 %.val1.i, 0
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsj1ugBVjDER0_8xml5ever.exit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.s = icmp eq i64 %i.u, %.val1.i
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsj1ugBVjDER0_8xml5ever.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.0.0.i.i.i18 = phi i64 [ %i.u, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i18
  %i.u = add nuw nsw i64 %.sroa.0.0.i.i.i18, 1    ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(40) %i.t)
          to label %bb.h unwind label %bb.j, !noalias !83

bb.i:                                             ; preds = %.lr.ph20
  %i.v = add i64 %.sroa.0.1.i.i.i19, 1            ; 2 uses
  %i.w = icmp eq i64 %i.v, %.val1.i
  br i1 %i.w, label %.body.i, label %.lr.ph20

bb.j:                                             ; preds = %.lr.ph
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = icmp eq i64 %i.u, %.val1.i
  br i1 %i.y, label %.body.i, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.j, %bb.i
  %.sroa.0.1.i.i.i19 = phi i64 [ %i.v, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i19
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(40) %i.z) #21
          to label %bb.i unwind label %bb.k, !noalias !83

bb.k:                                             ; preds = %.lr.ph20
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !83
  unreachable

.body.i:                                          ; preds = %bb.i, %bb.j
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %.body.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.m, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.x, %.body.i ], [ %lpad.thr_comm.split-lp, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.h, %bb.g
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.f

bb.m:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #21
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 28823037615171175) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever(ptr noundef nonnull align 8 %.sroa.0.0, ptr noundef nonnull align 8 %.sroa.04.0) #25 ; 2 uses
  %i.o = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever(ptr noundef nonnull align 8 %.sroa.0.0, ptr noundef nonnull align 8 %.sroa.08.0) #25
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever(ptr noundef nonnull align 8 %.sroa.04.0, ptr noundef nonnull align 8 %.sroa.08.0) #25
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %4, ptr nofree noundef readonly align 8 captures(address) %5, ptr noalias nofree noundef nonnull %6) unnamed_addr #1 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 17
  br i1 %i.a, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph95 = phi ptr [ %i.ch, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph94 = phi i64 [ %i.bs, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph93 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph92 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.ph95 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph92, null
  %i.c = icmp eq i32 %.sroa.025.0.ph93, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph220

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute12split_at_mutCsj1ugBVjDER0_8xml5ever.exit
  %i.d = icmp eq i32 %i.f, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph220

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute12split_at_mutCsj1ugBVjDER0_8xml5ever.exit, %bb.a
  %.sroa.0.0.ph.lcssa86 = phi ptr [ %.sroa.0.0.ph95, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute12split_at_mutCsj1ugBVjDER0_8xml5ever.exit ], [ %0, %bb.a ], [ %i.ch, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute12split_at_mutCsj1ugBVjDER0_8xml5ever.exit ], [ %1, %bb.a ], [ %i.bs, %.outer ] ; 2 uses
  %i.e = icmp samesign ugt i64 %.sroa.16.0.lcssa, 1
  br i1 %i.e, label %bb.c, label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_23StableSmallSortTypeImpl10small_sortNvYBW_NtNtBb_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit

bb.c:                                             ; preds = %.outer._crit_edge
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB1m_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa86, i64 noundef range(i64 0, 17) %.sroa.16.0.lcssa, i64 noundef 1, ptr noalias nofree noundef nonnull %6)
  br label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_23StableSmallSortTypeImpl10small_sortNvYBW_NtNtBb_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.088.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph94, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBW_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph95, i64 noundef %.sroa.16.088.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull %6)
  br label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_23StableSmallSortTypeImpl10small_sortNvYBW_NtNtBb_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit

.lr.ph220:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.087219 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph93, %.lr.ph ]
  %.sroa.16.088218 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph94, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.087219, -1            ; 4 uses
  %i.g = lshr i64 %.sroa.16.088218, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 160
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph95, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 280
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph95, i64 %.idx2.i ; 4 uses
  %i.j = icmp samesign ult i64 %.sroa.16.088218, 64
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph220
  %i.k = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noundef nonnull align 8 %.sroa.0.0.ph95, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.g)
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph220
  %i.l = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever(ptr noundef nonnull align 8 %.sroa.0.0.ph95, ptr noundef nonnull align 8 %i.h) #25 ; 2 uses
  %i.m = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever(ptr noundef nonnull align 8 %.sroa.0.0.ph95, ptr noundef nonnull align 8 %i.i) #25
  %i.n = xor i1 %i.l, %i.m
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever(ptr noundef nonnull align 8 %i.h, ptr noundef nonnull align 8 %i.i) #25
  %i.p = xor i1 %i.l, %i.o
  %..i.i = select i1 %i.p, ptr %i.i, ptr %i.h
  br label %bb.g

_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_23StableSmallSortTypeImpl10small_sortNvYBW_NtNtBb_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.v, %bb.c, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.d ], [ %.sroa.0.0.ph95, %bb.e ], [ %..i.i, %bb.f ]
  %i.q = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.r = sub nuw i64 %i.q, %i.b                   ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.r, 40          ; 3 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.088218
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph95, i64 %i.r ; 5 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever(ptr noundef nonnull align 8 %.sroa.028.0.ph92, ptr noundef nonnull align 8 %i.t) #25
  br i1 %i.u, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %.not62 = icmp samesign ult i64 %3, %.sroa.16.088218
  br i1 %.not62, label %bb.k, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr [40 x i8], ptr %2, i64 %.sroa.16.088218 ; 4 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.11.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.11.1.lcssa.i, %bb.m ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph95, %bb.j ], [ %i.ai, %bb.m ] ; 3 uses
  %.sroa.19.0.i.a = phi ptr [ %i.v, %bb.j ], [ %i.ag, %bb.m ] ; 2 uses
  %.sroa.05.0.i = phi ptr [ null, %bb.j ], [ %i.ah, %bb.m ]
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.088218, %bb.m ] ; 2 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph95, i64 %.sroa.0.0.i37 ; 2 uses
  %i.x = icmp ult ptr %.sroa.5.0.i, %i.w
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.l
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.l ], [ %i.ad, %.lr.ph.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.l ], [ %i.ae, %.lr.ph.i ] ; 2 uses
  %.sroa.19.1.lcssa.i.a = phi ptr [ %.sroa.19.0.i.a, %bb.l ], [ %i.aa, %.lr.ph.i ]
  %i.y = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.088218
  br i1 %i.y, label %bb.n, label %bb.m

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.sroa.19.111.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.19.0.i.a, %bb.l ]
  %.sroa.5.110.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.5.0.i, %bb.l ] ; 3 uses
  %.sroa.11.19.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %.sroa.11.0.i, %bb.l ] ; 2 uses
  %i.z = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever(ptr noundef nonnull align 8 %.sroa.5.110.i, ptr noundef nonnull align 8 %i.t) #25, !noalias !86 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.19.111.i, i64 -40 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.z, ptr %2, ptr %i.aa
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.19.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.110.i, i64 40, i1 false), !alias.scope !90, !noalias !92
  %i.ac = zext i1 %i.z to i64
  %i.ad = add i64 %.sroa.11.19.i, %i.ac           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 40 ; 3 uses
  %i.af = icmp ult ptr %i.ae, %i.w
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i.a, i64 -40 ; 2 uses
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %.sroa.11.1.lcssa.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.1.lcssa.i, i64 40, i1 false), !alias.scope !90, !noalias !95
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 40
  br label %bb.l

bb.n:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.05.0.i, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false), !alias.scope !90
  %i.aj = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph95, ptr nonnull align 8 %2, i64 %i.aj, i1 false), !alias.scope !90
  %i.ak = sub i64 %.sroa.16.088218, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.088218, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.n
  %i.al = getelementptr [40 x i8], ptr %.sroa.0.0.ph95, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.ak, 1
  %i.am = icmp eq i64 %.sroa.16.088218, %.neg
  br i1 %i.am, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.ak, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.aq, %bb.o ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.o ]
  %i.an = xor i64 %.sroa.06.014.i, -1
  %i.ao = getelementptr [40 x i8], ptr %i.v, i64 %i.an
  %i.ap = getelementptr [40 x i8], ptr %i.al, i64 %.sroa.06.014.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !alias.scope !90
  %i.aq = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.ar = xor i64 %.sroa.06.014.i, -2
  %i.as = getelementptr [40 x i8], ptr %i.v, i64 %i.ar
  %i.at = getelementptr [40 x i8], ptr %i.al, i64 %.sroa.06.014.i
  %i.au = getelementptr i8, ptr %i.at, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false), !alias.scope !90
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.o

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.aq, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod278 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod278)
  %i.av = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.aw = getelementptr [40 x i8], ptr %i.v, i64 %i.av
  %i.ax = getelementptr [40 x i8], ptr %i.al, i64 %.sroa.06.014.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.aw, i64 40, i1 false), !alias.scope !90
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.n
  %i.ay = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.ay, label %.thread, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.088218
  br i1 %.not.i38, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute12split_at_mutCsj1ugBVjDER0_8xml5ever.exit, !prof !10

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !noalias !98
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute12split_at_mutCsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.p
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph95, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph95) ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 %i.az, i64 noundef %i.ak, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %6) #26
  %i.ba = icmp ult i64 %.sroa.11.1.lcssa.i, 17
  br i1 %i.ba, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %.not63 = icmp samesign ult i64 %3, %.sroa.16.088218
  br i1 %.not63, label %bb.s, label %bb.r, !prof !89

bb.r:                                             ; preds = %.thread
  %i.bb = getelementptr [40 x i8], ptr %2, i64 %.sroa.16.088218 ; 4 uses
  br label %bb.t

bb.s:                                             ; preds = %.thread
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.11.0.i41 = phi i64 [ 0, %bb.r ], [ %i.bp, %bb.u ] ; 2 uses
  %.sroa.5.0.i42 = phi ptr [ %.sroa.0.0.ph95, %bb.r ], [ %i.bq, %bb.u ] ; 3 uses
  %.sroa.19.0.i43 = phi ptr [ %i.bb, %bb.r ], [ %i.bn, %bb.u ] ; 2 uses
  %.sroa.05.0.i44 = phi ptr [ null, %bb.r ], [ %i.bo, %bb.u ]
  %.sroa.0.0.i45 = phi i64 [ %.sroa.0.0.i, %bb.r ], [ %.sroa.16.088218, %bb.u ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph95, i64 %.sroa.0.0.i45 ; 2 uses
  %i.bd = icmp ult ptr %.sroa.5.0.i42, %i.bc
  br i1 %i.bd, label %.lr.ph.i54, label %._crit_edge.i46

._crit_edge.i46:                                  ; preds = %.lr.ph.i54, %bb.t
  %.sroa.11.1.lcssa.i47 = phi i64 [ %.sroa.11.0.i41, %bb.t ], [ %i.bk, %.lr.ph.i54 ] ; 10 uses
  %.sroa.5.1.lcssa.i48 = phi ptr [ %.sroa.5.0.i42, %bb.t ], [ %i.bl, %.lr.ph.i54 ] ; 2 uses
  %.sroa.19.1.lcssa.i49 = phi ptr [ %.sroa.19.0.i43, %bb.t ], [ %i.bh, %.lr.ph.i54 ]
  %i.be = icmp eq i64 %.sroa.0.0.i45, %.sroa.16.088218
  br i1 %i.be, label %bb.v, label %bb.u

.lr.ph.i54:                                       ; preds = %bb.t, %.lr.ph.i54
  %.sroa.19.111.i55 = phi ptr [ %i.bh, %.lr.ph.i54 ], [ %.sroa.19.0.i43, %bb.t ]
  %.sroa.5.110.i56 = phi ptr [ %i.bl, %.lr.ph.i54 ], [ %.sroa.5.0.i42, %bb.t ] ; 3 uses
  %.sroa.11.19.i57 = phi i64 [ %i.bk, %.lr.ph.i54 ], [ %.sroa.11.0.i41, %bb.t ] ; 2 uses
  %i.bf = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever(ptr noundef nonnull readonly align 8 %i.t, ptr noundef nonnull readonly align 8 %.sroa.5.110.i56) #25, !noalias !102 ; 2 uses
  %i.bg = xor i1 %i.bf, true
  %i.bh = getelementptr inbounds i8, ptr %.sroa.19.111.i55, i64 -40 ; 3 uses
  %.sroa.01.0.i.i58 = select i1 %i.bf, ptr %i.bh, ptr %2
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0.i.i58, i64 %.sroa.11.19.i57
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.110.i56, i64 40, i1 false), !alias.scope !105, !noalias !107
  %i.bj = zext i1 %i.bg to i64
  %i.bk = add i64 %.sroa.11.19.i57, %i.bj         ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i56, i64 40 ; 3 uses
  %i.bm = icmp ult ptr %i.bl, %i.bc
  br i1 %i.bm, label %.lr.ph.i54, label %._crit_edge.i46

bb.u:                                             ; preds = %._crit_edge.i46
  %i.bn = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i49, i64 -40
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i47 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.1.lcssa.i48, i64 40, i1 false), !alias.scope !105, !noalias !110
  %i.bp = add i64 %.sroa.11.1.lcssa.i47, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i48, i64 40
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge.i46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.05.0.i44, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false), !alias.scope !105
  %i.br = mul nuw nsw i64 %.sroa.11.1.lcssa.i47, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph95, ptr nonnull align 8 %2, i64 %i.br, i1 false), !alias.scope !105
  %i.bs = sub i64 %.sroa.16.088218, %.sroa.11.1.lcssa.i47 ; 6 uses
  %.not18.i50 = icmp eq i64 %.sroa.16.088218, %.sroa.11.1.lcssa.i47
  br i1 %.not18.i50, label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_23StableSmallSortTypeImpl10small_sortNvYBW_NtNtBb_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit, label %.lr.ph16.i51

.lr.ph16.i51:                                     ; preds = %bb.v
  %i.bt = getelementptr [40 x i8], ptr %.sroa.0.0.ph95, i64 %.sroa.11.1.lcssa.i47 ; 3 uses
  %.neg291 = add i64 %.sroa.11.1.lcssa.i47, 1
  %xtraiter286 = and i64 %i.bs, 1
  %i.bu = icmp eq i64 %.sroa.16.088218, %.neg291
  br i1 %i.bu, label %.epil.preheader279, label %.lr.ph16.i51.new

.lr.ph16.i51.new:                                 ; preds = %.lr.ph16.i51
  %unroll_iter289 = and i64 %i.bs, -2
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph16.i51.new
  %.sroa.06.014.i52 = phi i64 [ 0, %.lr.ph16.i51.new ], [ %i.by, %bb.w ] ; 5 uses
  %niter290 = phi i64 [ 0, %.lr.ph16.i51.new ], [ %niter290.next.1, %bb.w ]
  %i.bv = xor i64 %.sroa.06.014.i52, -1
  %i.bw = getelementptr [40 x i8], ptr %i.bb, i64 %i.bv
  %i.bx = getelementptr [40 x i8], ptr %i.bt, i64 %.sroa.06.014.i52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bx, ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i64 40, i1 false), !alias.scope !105
  %i.by = add nuw i64 %.sroa.06.014.i52, 2        ; 2 uses
  %i.bz = xor i64 %.sroa.06.014.i52, -2
  %i.ca = getelementptr [40 x i8], ptr %i.bb, i64 %i.bz
  %i.cb = getelementptr [40 x i8], ptr %i.bt, i64 %.sroa.06.014.i52
  %i.cc = getelementptr i8, ptr %i.cb, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, ptr noundef nonnull align 8 dereferenceable(40) %i.ca, i64 40, i1 false), !alias.scope !105
  %niter290.next.1 = add i64 %niter290, 2         ; 2 uses
  %niter290.ncmp.1 = icmp eq i64 %niter290.next.1, %unroll_iter289
  br i1 %niter290.ncmp.1, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsj1ugBVjDER0_8xml5ever.exit.unr-lcssa, label %bb.w

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsj1ugBVjDER0_8xml5ever.exit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod287.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod287.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsj1ugBVjDER0_8xml5ever.exit, label %.epil.preheader279

.epil.preheader279:                               ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsj1ugBVjDER0_8xml5ever.exit.unr-lcssa, %.lr.ph16.i51
  %.sroa.06.014.i52.epil.init = phi i64 [ 0, %.lr.ph16.i51 ], [ %i.by, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsj1ugBVjDER0_8xml5ever.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod288 = trunc i64 %i.bs to i1
  tail call void @llvm.assume(i1 %lcmp.mod288)
  %i.cd = xor i64 %.sroa.06.014.i52.epil.init, -1
  %i.ce = getelementptr [40 x i8], ptr %i.bb, i64 %i.cd
  %i.cf = getelementptr [40 x i8], ptr %i.bt, i64 %.sroa.06.014.i52.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noundef nonnull align 8 dereferenceable(40) %i.ce, i64 40, i1 false), !alias.scope !105
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsj1ugBVjDER0_8xml5ever.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsj1ugBVjDER0_8xml5ever.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsj1ugBVjDER0_8xml5ever.exit.unr-lcssa, %.epil.preheader279
  %i.cg = icmp ugt i64 %.sroa.11.1.lcssa.i47, %.sroa.16.088218
  br i1 %i.cg, label %bb.x, label %.outer, !prof !10

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsj1ugBVjDER0_8xml5ever.exit
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph95, i64 %.sroa.11.1.lcssa.i47 ; 2 uses
  %i.ci = icmp ult i64 %i.bs, 17
  br i1 %i.ci, label %.outer._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsj1ugBVjDER0_8xml5ever.exit
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i47, i64 noundef %.sroa.16.088218, i64 noundef %.sroa.16.088218, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj1ugBVjDER0_8xml5ever(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #2 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !118, !noalias !121
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !118, !noalias !121
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !121, !noalias !113
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !121, !noalias !113
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !118, !noalias !121
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !118, !noalias !121
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !121, !noalias !113
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !121, !noalias !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !123

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !113, !noalias !116
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !116, !noalias !113
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !113, !noalias !116
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !116, !noalias !113
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !113, !noalias !116
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !116, !noalias !113
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !113, !noalias !116
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !116, !noalias !113
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !126, !noalias !128
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !128, !noalias !126
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !126, !noalias !128
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !128, !noalias !126
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !130
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMNtNtCsj1ugBVjDER0_8xml5ever9tokenizer5qnameNtB2_17QualNameTokenizer3run(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 10 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvMNtNtCsj1ugBVjDER0_8xml5ever9tokenizer5qnameNtB2_17QualNameTokenizer4step.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.promoted = load i8, ptr %i.d, align 8, !alias.scope !131
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.promoted5 = load i64, ptr %i.e, align 8       ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  switch i8 %.promoted, label %default.unreachable21.i [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.h
  ]

.thread:                                          ; preds = %bb.k, %bb.f
  %.sink = phi i64 [ %i.o, %bb.f ], [ %i.v, %bb.k ] ; 2 uses
  store i64 %.sink, ptr %i.e, align 8, !alias.scope !131
  br label %bb.d

.thread15:                                        ; preds = %bb.o, %bb.g
  %.sink16 = phi i64 [ %i.o, %bb.g ], [ %i.ab, %bb.o ] ; 2 uses
  store i64 %.sink16, ptr %i.e, align 8, !alias.scope !131
  br label %bb.l

default.unreachable21.i:                          ; preds = %.preheader
  unreachable

bb.b:                                             ; preds = %.preheader
  %i.i = icmp ult i64 %.promoted5, %i.b
  br i1 %i.i, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.preheader
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.j = icmp ult i64 %.promoted5, %i.b
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread, %bb.c
  %i.k = phi i64 [ %.sink, %.thread ], [ %.promoted5, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !137, !noundef !4
  %i.n = icmp eq i8 %i.m, 58
  %i.o = add nuw i64 %i.k, 1                      ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.b                  ; 2 uses
  %or.cond.i.i = and i1 %i.p, %i.n
  br i1 %or.cond.i.i, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.promoted5, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !137
  unreachable

bb.f:                                             ; preds = %bb.d
  br i1 %i.p, label %.thread, label %_RNvMNtNtCsj1ugBVjDER0_8xml5ever9tokenizer5qnameNtB2_17QualNameTokenizer4step.exit.thread

bb.g:                                             ; preds = %bb.d
  %i.q = trunc i64 %i.k to i32
  store i32 1, ptr %0, align 8, !alias.scope !137
  store i32 %i.q, ptr %i.h, align 4, !alias.scope !137
  store i8 2, ptr %i.d, align 8, !alias.scope !137
  br label %.thread15

bb.h:                                             ; preds = %.preheader
  %i.r = icmp ult i64 %.promoted5, %i.b
  br i1 %i.r, label %bb.l, label %bb.m

bb.i:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %.promoted5
  %i.t = load i8, ptr %i.s, align 1, !noalias !131, !noundef !4
  %i.u = icmp eq i8 %i.t, 58
  br i1 %i.u, label %_RNvMNtNtCsj1ugBVjDER0_8xml5ever9tokenizer5qnameNtB2_17QualNameTokenizer4step.exit.thread, label %bb.k

bb.j:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.promoted5, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23, !noalias !131
  unreachable

bb.k:                                             ; preds = %bb.i
  store i8 1, ptr %i.d, align 8, !alias.scope !131
  %i.v = add nuw i64 %.promoted5, 1               ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.b
  br i1 %i.w, label %.thread, label %_RNvMNtNtCsj1ugBVjDER0_8xml5ever9tokenizer5qnameNtB2_17QualNameTokenizer4step.exit.thread

bb.l:                                             ; preds = %.thread15, %bb.h
  %i.x = phi i64 [ %.sink16, %.thread15 ], [ %.promoted5, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !131, !noundef !4
  %i.aa = icmp eq i8 %i.z, 58
  br i1 %i.aa, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.promoted5, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #23, !noalias !131
  unreachable

bb.n:                                             ; preds = %bb.l
  store i32 0, ptr %0, align 8, !alias.scope !131
  br label %_RNvMNtNtCsj1ugBVjDER0_8xml5ever9tokenizer5qnameNtB2_17QualNameTokenizer4step.exit.thread
end_hunk_0
begin_hunk_1_@_RNvXs_NtCsf0tt01pzWYu_10phf_shared6hasherINtB4_17PortableSipHasherNtNtCs2v27nWyKdpW_9siphasher6sip12811SipHasher13ENtNtCskKLDkoKarTP_4core4hash6Hasher5writeCsj1ugBVjDER0_8xml5ever:bb.a
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !202, !noalias !203, !noundef !4
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !202, !noalias !203
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0.i.i          ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.i.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i, label %bb.k

.lr.ph.i.i:                                       ; preds = %bb.h
  %.promoted.i.i = load i64, ptr %0, align 8, !alias.scope !202, !noalias !203
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19.i.i = load i64, ptr %i.aj, align 8, !alias.scope !202, !noalias !203
  %.promoted20.i.i = load i64, ptr %i.ak, align 8, !alias.scope !207, !noalias !203
  %.promoted22.i.i = load i64, ptr %i.al, align 8, !alias.scope !207, !noalias !203
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtCs2v27nWyKdpW_9siphasher6common9u8to64_le.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !202, !noalias !203, !noundef !4
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !210, !noalias !203, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !210, !noalias !203, !noundef !4 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.au = xor i64 %i.at, %i.as                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !210, !noalias !203, !noundef !4
  %i.ay = add i64 %i.ax, %i.ao                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.ba = xor i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = add i64 %i.ba, %i.av                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 21)
  %i.bd = xor i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %i.am, align 8, !alias.scope !210, !noalias !203
  %i.be = add i64 %i.ay, %i.au                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bg = xor i64 %i.be, %i.bf
  store i64 %i.bg, ptr %i.aq, align 8, !alias.scope !210, !noalias !203
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 32)
  store i64 %i.bh, ptr %i.aw, align 8, !alias.scope !210, !noalias !203
  %i.bi = xor i64 %i.bb, %i.ad
  store i64 %i.bi, ptr %0, align 8, !alias.scope !202, !noalias !203
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtCs2v27nWyKdpW_9siphasher6common9u8to64_le.exit.i.i
  %i.bj = add i64 %i.e, %2
  br label %_RNvXsb_NtCs2v27nWyKdpW_9siphasher6sip128NtB5_11SipHasher13NtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  store i64 %i.cv, ptr %i.aj, align 8, !alias.scope !202, !noalias !203
  store i64 %i.cy, ptr %i.ak, align 8, !alias.scope !207, !noalias !203
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !207, !noalias !203
  store i64 %i.da, ptr %0, align 8, !alias.scope !202, !noalias !203
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i, %bb.h
  %.sroa.0.1.lcssa.i.i = phi i64 [ %i.db, %._crit_edge.i.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa.i.i
  %.sroa.014.0.copyload.i16.i.i = load i32, ptr %i.bl, align 1, !alias.scope !213, !noalias !202
  %i.bm = zext i32 %.sroa.014.0.copyload.i16.i.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10.i.i = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11.i.i = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i10.i.i, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa.i.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10.i.i
  %.sroa.015.0.copyload.i15.i.i = load i16, ptr %i.bq, align 1, !alias.scope !213, !noalias !202
  %i.br = zext i16 %.sroa.015.0.copyload.i15.i.i to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10.i.i, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11.i.i
  %i.bv = or disjoint i64 %.sroa.03.0.i10.i.i, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i.i = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10.i.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i.i = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11.i.i, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12.i.i, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtCs2v27nWyKdpW_9siphasher6common9u8to64_le.exit17.i.i

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12.i.i, %.sroa.0.1.lcssa.i.i ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !213, !noalias !202, !noundef !4
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12.i.i, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13.i.i
  br label %_RNvNtCs2v27nWyKdpW_9siphasher6common9u8to64_le.exit17.i.i

_RNvNtCs2v27nWyKdpW_9siphasher6common9u8to64_le.exit17.i.i: ; preds = %bb.p, %bb.o
  %.sroa.0.2.i14.i.i = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13.i.i, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14.i.i, ptr %i.cf, align 8, !alias.scope !202, !noalias !203
  br label %_RNvXsb_NtCs2v27nWyKdpW_9siphasher6sip128NtB5_11SipHasher13NtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.i
  %i.cg = phi i64 [ %.promoted22.i.i, %.lr.ph.i.i ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20.i.i, %.lr.ph.i.i ], [ %i.cy, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19.i.i, %.lr.ph.i.i ], [ %i.cv, %bb.q ]
  %.sroa.0.118.i.i = phi i64 [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118.i.i
  %.sroa.07.0.copyload.i.i = load i64, ptr %i.ck, align 1, !alias.scope !203, !noalias !202 ; 2 uses
  %i.cl = xor i64 %.sroa.07.0.copyload.i.i, %i.ci ; 3 uses
  %i.cm = add i64 %i.cj, %i.ch                    ; 3 uses
  %i.cn = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.co = xor i64 %i.cm, %i.cn                    ; 3 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.cq = add i64 %i.cl, %i.cg                    ; 2 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cs = xor i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = add i64 %i.cs, %i.cp                    ; 2 uses
  %i.cu = tail call noundef i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 21)
  %i.cv = xor i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = add i64 %i.cq, %i.co                    ; 3 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 17)
  %i.cy = xor i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 32) ; 2 uses
  %i.da = xor i64 %i.ct, %.sroa.07.0.copyload.i.i ; 2 uses
  %i.db = add nuw i64 %.sroa.0.118.i.i, 8         ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge.i.i

_RNvXsb_NtCs2v27nWyKdpW_9siphasher6sip128NtB5_11SipHasher13NtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit: ; preds = %bb.j, %_RNvNtCs2v27nWyKdpW_9siphasher6common9u8to64_le.exit17.i.i
  %storemerge.i.i = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtCs2v27nWyKdpW_9siphasher6common9u8to64_le.exit17.i.i ]
  store i64 %storemerge.i.i, ptr %i.d, align 8, !alias.scope !202, !noalias !203
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtCsf0tt01pzWYu_10phf_shared6hasherINtB4_17PortableSipHasherNtNtCs2v27nWyKdpW_9siphasher6sip12811SipHasher13ENtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64Csj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !216, !noundef !4
  %i.c = add i64 %i.b, 8
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !216
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !216, !noundef !4 ; 4 uses
  %i.f = shl i64 %i.e, 3                          ; 2 uses
  %i.g = and i64 %i.f, 56
  %i.h = shl i64 %1, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !216, !noundef !4
  %i.k = or i64 %i.h, %i.j                        ; 3 uses
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !216
  %i.l = icmp ugt i64 %i.e, 8
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !216, !noundef !4
  %i.o = xor i64 %i.n, %i.k                       ; 3 uses
  %i.p = load i64, ptr %0, align 8, !alias.scope !221, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !221, !noundef !4 ; 3 uses
  %i.s = add i64 %i.r, %i.p                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 13)
  %i.u = xor i64 %i.t, %i.s                       ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 32)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !221, !noundef !4
  %i.y = add i64 %i.x, %i.o                       ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 16)
  %i.aa = xor i64 %i.y, %i.z                      ; 3 uses
  %i.ab = add i64 %i.aa, %i.v                     ; 2 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 21)
  %i.ad = xor i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.m, align 8, !alias.scope !221
  %i.ae = add i64 %i.y, %i.u                      ; 3 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 17)
  %i.ag = xor i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.q, align 8, !alias.scope !221
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !221
  %i.ai = xor i64 %i.ab, %i.k
  store i64 %i.ai, ptr %0, align 8, !alias.scope !216
  %.not.i.i = icmp eq i64 %i.e, 0
  %i.aj = sub nsw i64 64, %i.f
  %i.ak = lshr i64 %1, %i.aj
  %.sroa.0.0.i.i = select i1 %.not.i.i, i64 0, i64 %i.ak
  store i64 %.sroa.0.0.i.i, ptr %i.i, align 8, !alias.scope !216
  br label %_RNvXsb_NtCs2v27nWyKdpW_9siphasher6sip128NtB5_11SipHasher13NtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64.exit

bb.c:                                             ; preds = %bb.a
  %i.al = add i64 %i.e, 8
  store i64 %i.al, ptr %i.d, align 8, !alias.scope !216
  br label %_RNvXsb_NtCs2v27nWyKdpW_9siphasher6sip128NtB5_11SipHasher13NtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64.exit

_RNvXsb_NtCs2v27nWyKdpW_9siphasher6sip128NtB5_11SipHasher13NtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsj1ugBVjDER0_8xml5ever(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree captures(address) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !224
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 230584300921369396) %.16.val, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40), !noalias !224
  %i.g = load i64, ptr %i.d, align 8, !range !67, !noalias !224, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !82, !noalias !224, !noundef !4 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj1ugBVjDER0_8xml5ever.exit.i, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !noalias !224
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #24, !noalias !224
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj1ugBVjDER0_8xml5ever.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !noalias !224, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = icmp ule i64 %.16.val, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !224
  store i64 %i.j, ptr %i.f, align 8, !noalias !224
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !224
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.p, align 8, !noalias !224
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %.8.val, i64 %.16.val
  %i.r = icmp eq i64 %i.j, 0
  br i1 %i.r, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsj1ugBVjDER0_8xml5ever.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj1ugBVjDER0_8xml5ever.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.y, %.lr.ph.i
  %.sroa.10.028.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.v, %bb.y ]
  %.sroa.012.027.i = phi ptr [ %.8.val, %.lr.ph.i ], [ %i.y, %bb.y ] ; 7 uses
  %.sroa.7.026.i = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %bb.y ] ; 3 uses
  %i.v = add i64 %.sroa.10.028.i, -1              ; 2 uses
  %i.w = icmp eq ptr %.sroa.012.027.i, %i.q
  br i1 %i.w, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsj1ugBVjDER0_8xml5ever.exit, label %bb.e

bb.d:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.027.i, i64 40
  %i.z = add nuw nsw i64 %.sroa.7.026.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !227
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !235
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.027.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !233, !noalias !236, !noundef !4 ; 4 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  %i.ac = and i64 %i.ab, 3
  %i.ad = icmp eq i64 %i.ac, 0
  %or.cond.i.i.i = and i1 %.not.i.i.i, %i.ad
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  store i64 %i.ab, ptr %i.b, align 8, !noalias !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !235
  %i.ae = load i64, ptr %.sroa.012.027.i, align 8, !range !31, !alias.scope !233, !noalias !236, !noundef !4 ; 4 uses
  %i.af = and i64 %i.ae, 3
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.ah = inttoptr i64 %i.ab to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = atomicrmw add ptr %i.ai, i64 1 seq_cst, align 8, !noalias !235
  %i.ak = icmp eq i64 %i.aj, 9223372036854775807
  br i1 %i.ak, label %bb.h, label %bb.f, !prof !10

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #24
          to label %.noexc.i unwind label %bb.d, !noalias !224

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.al = inttoptr i64 %i.ae to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = atomicrmw add ptr %i.am, i64 1 seq_cst, align 8, !noalias !235
  %i.ao = icmp eq i64 %i.an, 9223372036854775807
  br i1 %i.ao, label %bb.j, label %bb.m, !prof !10

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #24
          to label %bb.l unwind label %bb.k, !noalias !235

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit.i.i.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.k
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.ay, %bb.r ], [ %i.ay, %bb.p ], [ %i.ay, %bb.q ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.b) #21
          to label %bb.aa unwind label %bb.s, !noalias !235

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit.i.i.i

bb.l:                                             ; preds = %bb.o, %bb.j
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.f
  store i64 %i.ae, ptr %i.a, align 8, !noalias !235
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.027.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !31, !alias.scope !233, !noalias !236, !noundef !4 ; 3 uses
  %i.as = and i64 %i.ar, 3
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.n, label %_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.au = inttoptr i64 %i.ar to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = atomicrmw add ptr %i.av, i64 1 seq_cst, align 8, !noalias !235
  %i.ax = icmp eq i64 %i.aw, 9223372036854775807
  br i1 %i.ax, label %bb.o, label %._crit_edge.i.i.i, !prof !10

._crit_edge.i.i.i:                                ; preds = %bb.n
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !range !31, !noalias !235
  br label %_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #24
          to label %bb.l unwind label %bb.p, !noalias !235

bb.p:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.az = load i64, ptr %i.a, align 8, !range !31, !alias.scope !243, !noalias !235, !noundef !4 ; 2 uses
  %i.ba = and i64 %i.az, 3
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bc = inttoptr i64 %i.az to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = atomicrmw sub ptr %i.bd, i64 1 seq_cst, align 8, !noalias !244
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit.i.i.i, !prof !10

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit.i.i.i unwind label %bb.s, !noalias !235

bb.s:                                             ; preds = %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !235
  unreachable

_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.m
  %i.bh = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.ae, %bb.m ]
  %i.bi = load i64, ptr %i.b, align 8, !noalias !235, !noundef !4
  store i64 %i.bi, ptr %i.s, align 8, !alias.scope !230, !noalias !245
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !230, !noalias !245
  store i64 %i.ar, ptr %i.t, align 8, !alias.scope !230, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !235
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.012.027.i, i64 24 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !246, !nonnull !4, !noundef !4 ; 5 uses
  %i.bl = icmp ugt ptr %i.bk, inttoptr (i64 15 to ptr)
  br i1 %i.bl, label %bb.t, label %bb.y

bb.t:                                             ; preds = %_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = and i64 %i.bm, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.u, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsj1ugBVjDER0_8xml5ever.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.012.027.i, i64 36 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !noalias !246, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %i.bq, ptr %i.br, align 8, !noalias !246
  %i.bs = getelementptr i8, ptr %i.bk, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  store ptr %i.bs, ptr %i.bj, align 8, !noalias !246
  store i32 0, ptr %i.bp, align 4, !noalias !246
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsj1ugBVjDER0_8xml5ever.exit.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsj1ugBVjDER0_8xml5ever.exit.i.i.i: ; preds = %bb.u, %bb.t
  %i.bt = phi ptr [ %i.bk, %bb.t ], [ %i.bs, %bb.u ]
  %i.bu = getelementptr i8, ptr %i.bt, i64 -1     ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !246, !noundef !4 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, -1
  br i1 %i.bw, label %bb.v, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i.i, !prof !10

bb.v:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsj1ugBVjDER0_8xml5ever.exit.i.i.i
  %i.bx = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !246, !nonnull !4, !noundef !4
  %i.by = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !246, !noundef !4
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23
          to label %.noexc.i.i unwind label %bb.w, !noalias !227

.noexc.i.i:                                       ; preds = %bb.v
  unreachable

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsj1ugBVjDER0_8xml5ever.exit.i.i.i
  %i.bz = add nuw i64 %i.bv, 1
  store i64 %i.bz, ptr %i.bu, align 8, !noalias !246
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #21
          to label %bb.aa unwind label %bb.x, !noalias !227

bb.x:                                             ; preds = %bb.w
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !227
  unreachable

bb.y:                                             ; preds = %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i.i, %_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !noalias !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !227
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %.sroa.7.026.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !224
  %i.cd = icmp eq i64 %i.v, 0
  br i1 %i.cd, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsj1ugBVjDER0_8xml5ever.exit, label %bb.c

bb.z:                                             ; preds = %bb.aa
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !224
  unreachable

bb.aa:                                            ; preds = %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit.i.i.i, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.x, %bb.d ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit.i.i.i ], [ %i.ca, %bb.w ]
  store i64 %.sroa.7.026.i, ptr %i.p, align 8, !noalias !224
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #21
          to label %bb.ab unwind label %bb.z, !noalias !224

bb.ab:                                            ; preds = %bb.aa
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.c, %bb.y, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj1ugBVjDER0_8xml5ever.exit.i
  store i64 %.16.val, ptr %i.p, align 8, !noalias !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBI_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !249, !noalias !252, !noundef !4 ; 6 uses
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !252, !noalias !249, !noundef !4 ; 6 uses
  %.not4.i.i.i.i = icmp eq i64 %i.d, 0            ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not4.i.i.i.i, label %_RNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltCsj1ugBVjDER0_8xml5ever.exit, label %bb.q

bb.c:                                             ; preds = %bb.a
  br i1 %.not4.i.i.i.i, label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i, label %_RNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltCsj1ugBVjDER0_8xml5ever.exit

_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i: ; preds = %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i, %bb.q, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.e = load i64, ptr %0, align 8, !range !31, !alias.scope !259, !noalias !260, !noundef !4 ; 5 uses
  %i.f = load i64, ptr %1, align 8, !range !31, !alias.scope !260, !noalias !259, !noundef !4 ; 5 uses
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i
  %i.h = trunc i64 %i.e to i8
  %i.i = and i8 %i.h, 3
  switch i8 %i.i, label %bb.e [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !261, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !261, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.n = lshr i64 %i.e, 4
  %i.o = and i64 %i.n, 15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.d
  %i.q = lshr i64 %i.e, 32                        ; 3 uses
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !261, !noundef !4 ; 2 uses
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !261, !nonnull !4, !align !179, !noundef !4
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.q ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !261, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !261, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23, !noalias !261
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i: ; preds = %bb.i, %bb.g, %bb.f
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ %i.m, %bb.f ], [ %i.o, %bb.g ], [ %i.x, %bb.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.k, %bb.f ], [ %i.p, %bb.g ], [ %i.v, %bb.i ]
  %i.y = trunc i64 %i.f to i8
  %i.z = and i8 %i.y, 3
  switch i8 %i.z, label %bb.k [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
  ]

bb.k:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  unreachable

bb.l:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  %i.aa = inttoptr i64 %i.f to ptr                ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !264, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !264, !noundef !4
  br label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i

bb.m:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  %i.ae = lshr i64 %i.f, 4
  %i.af = and i64 %i.ae, 15
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i

bb.n:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  %i.ah = lshr i64 %i.f, 32                       ; 3 uses
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !264, !noundef !4 ; 2 uses
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !264, !nonnull !4, !align !179, !noundef !4
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.ah ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !noalias !264, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noalias !264, !noundef !4
  br label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ah, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23, !noalias !264
  unreachable

_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i: ; preds = %bb.o, %bb.m, %bb.l
  %.sroa.4.0.i6.i.i.i.i.i = phi i64 [ %i.ad, %bb.l ], [ %i.af, %bb.m ], [ %i.ao, %bb.o ] ; 2 uses
  %.sroa.0.0.i7.i.i.i.i.i = phi ptr [ %i.ab, %bb.l ], [ %i.ag, %bb.m ], [ %i.am, %bb.o ]
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i.i.i, i64 %.sroa.4.0.i6.i.i.i.i.i)
  %i.ap = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i.i.i, ptr nonnull %.sroa.0.0.i7.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i) ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp eq i32 %i.ap, 0
  %i.as = sub i64 %.sroa.4.0.i.i.i.i.i.i, %.sroa.4.0.i6.i.i.i.i.i
  %spec.select.i.i.i.i.i = select i1 %i.ar, i64 %i.as, i64 %i.aq ; 2 uses
  %i.at = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i, i64 0)
  %i.au = icmp eq i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.au, label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i, label %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i

bb.q:                                             ; preds = %bb.b
  %i.av = icmp eq i64 %i.b, %i.d
  br i1 %i.av, label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = trunc i64 %i.b to i8
  %i.ax = and i8 %i.aw, 3
  switch i8 %i.ax, label %bb.s [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ay = inttoptr i64 %i.b to ptr                ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !267, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !267, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.bc = lshr i64 %i.b, 4
  %i.bd = and i64 %i.bc, 15
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.r
  %i.bf = lshr i64 %i.b, 32                       ; 3 uses
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !267, !noundef !4 ; 2 uses
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !267, !nonnull !4, !align !179, !noundef !4
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bf ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !267, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !267, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23, !noalias !267
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i: ; preds = %bb.w, %bb.u, %bb.t
  %.sroa.4.0.i.i6.i.i.i.i = phi i64 [ %i.bb, %bb.t ], [ %i.bd, %bb.u ], [ %i.bm, %bb.w ] ; 2 uses
  %.sroa.0.0.i.i7.i.i.i.i = phi ptr [ %i.az, %bb.t ], [ %i.be, %bb.u ], [ %i.bk, %bb.w ]
  %i.bn = trunc i64 %i.d to i8
  %i.bo = and i8 %i.bn, 3
  switch i8 %i.bo, label %bb.y [
    i8 0, label %bb.z
    i8 1, label %bb.aa
    i8 2, label %bb.ab
  ]
end_hunk_1
