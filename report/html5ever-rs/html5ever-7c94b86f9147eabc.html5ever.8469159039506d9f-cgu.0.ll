Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/html5ever-7c94b86f9147eabc.html5ever.8469159039506d9f-cgu.0?download=true
inline.NumInlined: 122
inline.NumDeleted: 79
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECsbmOI1VUejFP_9html5ever:bb.a
  br i1 %i.x, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsbmOI1VUejFP_9html5ever.exit4, !prof !5

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsbmOI1VUejFP_9html5ever.exit4 unwind label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.j, %bb.f ], [ %i.j, %bb.d ], [ %i.j, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.z = load i64, ptr %i.y, align 8, !range !6, !alias.scope !56, !noundef !4 ; 2 uses
  %i.aa = and i64 %i.z, 3
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECsbmOI1VUejFP_9html5ever.exit

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsbmOI1VUejFP_9html5ever.exit
  %i.ac = inttoptr i64 %i.z to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 seq_cst, align 8, !noalias !56
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECsbmOI1VUejFP_9html5ever.exit, !prof !5

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECsbmOI1VUejFP_9html5ever.exit unwind label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsbmOI1VUejFP_9html5ever.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsbmOI1VUejFP_9html5ever.exit4: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsbmOI1VUejFP_9html5ever.exit, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.ai = load i64, ptr %i.ah, align 8, !range !6, !alias.scope !59, !noundef !4 ; 2 uses
  %i.aj = and i64 %i.ai, 3
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECsbmOI1VUejFP_9html5ever.exit6

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsbmOI1VUejFP_9html5ever.exit4
  %i.al = inttoptr i64 %i.ai to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = atomicrmw sub ptr %i.am, i64 1 seq_cst, align 8, !noalias !59
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECsbmOI1VUejFP_9html5ever.exit6, !prof !5

bb.m:                                             ; preds = %bb.l
  tail call void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECsbmOI1VUejFP_9html5ever.exit6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECsbmOI1VUejFP_9html5ever.exit6: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsbmOI1VUejFP_9html5ever.exit4, %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %bb.j, %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsbmOI1VUejFP_9html5ever.exit, %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #19
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !68, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = icmp ult ptr %i.f, inttoptr (i64 16 to ptr)
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever.exit, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever.exit.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever.exit.i.i: ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = and i64 %i.h, 1
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr i8, ptr %i.f, i64 %i.j     ; 6 uses
  %i.l = trunc i64 %i.h to i1                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.0.0.in.i.i.i = select i1 %i.l, ptr %i.m, ptr %i.n
  %.sroa.0.0.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i, align 4, !noalias !69, !noundef !4 ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68
  %i.o = zext i32 %.sroa.0.0.i.i.i to i64
  %i.p = add nuw nsw i64 %i.o, 15
  %i.q = lshr i64 %i.p, 4
  %i.r = add nuw nsw i64 %i.q, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  store i64 %i.r, ptr %i.a, align 8, !noalias !68
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.s, align 8, !noalias !68
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.t, align 8, !noalias !68
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever.exit

bb.e:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever.exit.i.i
  %i.u = load i64, ptr %i.k, align 8, !noalias !68, !noundef !4 ; 2 uses
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.k, align 8, !noalias !68
  %i.w = icmp eq i64 %i.u, 1
  br i1 %i.w, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68
  %i.x = zext i32 %.sroa.0.0.i.i.i to i64
  %i.y = add nuw nsw i64 %i.x, 15
  %i.z = lshr i64 %i.y, 4
  %i.aa = add nuw nsw i64 %i.z, 1
  store i64 %i.aa, ptr %i.b, align 8, !noalias !68
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.ab, align 8, !noalias !68
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %i.ac, align 8, !noalias !68
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBW_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 230584300921369396) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i75 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i80 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cc, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ca, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit
  %.sroa.021.0 = phi i8 [ %i.at, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph55, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread78, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsbmOI1VUejFP_9html5ever.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.q = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull align 8 %i.n) #21, !noalias !75, !inline_history !73 ; 2 uses
  %.not62 = icmp eq i64 %i.m, 2                   ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader43

.preheader43:                                     ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread78, label %.lr.ph49

.lr.ph:                                           ; preds = %.preheader43, %bb.l
  %.sroa.01.0.i.i45 = phi i64 [ %i.t, %bb.l ], [ 2, %.preheader43 ] ; 4 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %6 = getelementptr [40 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %7 = getelementptr i8, ptr %6, i64 -40
  %i.s = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull align 8 %7) #21, !noalias !75, !inline_history !73
  br i1 %i.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.t = add nuw i64 %.sroa.01.0.i.i45, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i, label %.lr.ph

.lr.ph49:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i48 = phi i64 [ %i.w, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %8 = getelementptr [40 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %9 = getelementptr i8, ptr %8, i64 -40
  %i.v = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull align 8 %i.u, ptr noundef nonnull align 8 %9) #21, !noalias !75, !inline_history !73
  br i1 %i.v, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i

bb.m:                                             ; preds = %.lr.ph49
  %i.w = add nuw i64 %.sroa.01.1.i.i48, 1         ; 2 uses
  %exitcond65.not = icmp eq i64 %i.w, %i.m
  br i1 %exitcond65.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i, label %.lr.ph49

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph49
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i48, %.lr.ph49 ], [ %i.m, %bb.m ], [ %.sroa.01.0.i.i45, %.lr.ph ], [ %i.m, %bb.l ] ; 5 uses
  %i.x = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.x)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread78: ; preds = %.preheader
  br i1 %.not5.i80, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread: ; preds = %.preheader43
  br i1 %.not5.i75, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsbmOI1VUejFP_9html5ever.exit

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i
  %i.y = lshr i64 %.sroa.0.0.i.i, 1               ; 2 uses
  %.not.i.i = icmp ne i64 %i.y, 0
  %or.cond.not = and i1 %.not.i.i, %i.q
  br i1 %or.cond.not, label %.lr.ph.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsbmOI1VUejFP_9html5ever.exit

bb.o:                                             ; preds = %bb.i
  %..i34 = tail call noundef range(i64 0, 230584300921369396) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit

bb.p:                                             ; preds = %bb.i
  %..i33 = tail call noundef range(i64 0, 230584300921369396) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 16) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #22, !inline_history !73
  %i.aa = shl nuw nsw i64 %..i33, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsbmOI1VUejFP_9html5ever.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsbmOI1VUejFP_9html5ever.exit.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i3942 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread ], [ %.sroa.0.0.i.i768387, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsbmOI1VUejFP_9html5ever.exit.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i3942, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread78
  %i.ae = phi i64 [ %i.y, %bb.n ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread78 ]
  %.sroa.0.0.i.i768387 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread78 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i.i768387
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsbmOI1VUejFP_9html5ever.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ak, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsbmOI1VUejFP_9html5ever.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ag = xor i64 %.sroa.0.017.i.i, -1
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.ai = getelementptr [40 x i8], ptr %i.af, i64 %i.ag
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbmOI1VUejFP_9html5ever(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai, i64 noundef 5)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsbmOI1VUejFP_9html5ever.exit.i.i unwind label %bb.q, !noalias !75

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #20, !noalias !75
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsbmOI1VUejFP_9html5ever.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ak = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ak, %i.ae
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsbmOI1VUejFP_9html5ever.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsbmOI1VUejFP_9html5ever.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsbmOI1VUejFP_9html5ever.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.al = lshr i64 %.sroa.023.0, 1
  %i.am = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.an = sub nsw i64 %factor, %i.al
  %i.ao = add nuw nsw i64 %i.am, %factor
  %i.ap = mul i64 %i.an, %.sroa.0.0
  %i.aq = mul i64 %i.ao, %.sroa.0.0
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 false)
  %i.at = trunc nuw nsw i64 %i.as to i8
  br label %bb.g

.lr.ph55:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit
  %.sroa.02.154 = phi i64 [ %i.au, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.153 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.au = add i64 %.sroa.02.154, -1               ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.aw, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit, %.lr.ph55, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.153, %.lr.ph55 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.154, %.lr.ph55 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ay, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph55
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.au
  %i.ba = load i64, ptr %i.az, align 8, !noundef !4 ; 3 uses
  %i.bb = lshr i64 %i.ba, 1                       ; 5 uses
  %i.bc = lshr i64 %.sroa.023.153, 1              ; 3 uses
  %i.bd = add nuw i64 %i.bb, %i.bc                ; 5 uses
  %i.be = sub i64 %.sroa.09.0, %i.bd
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.be ; 3 uses
  %i.bg = icmp samesign ugt i64 %i.bd, %3
  %i.bh = trunc i64 %.sroa.023.153 to i1
  %i.bi = or i64 %i.ba, %.sroa.023.153
  %i.bj = trunc i64 %i.bi to i1
  %or.cond3.i = or i1 %i.bg, %i.bj
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bk = trunc i64 %i.ba to i1
  br i1 %i.bk, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bl = shl nuw nsw i64 %i.bd, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bh, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bm = or i64 %i.bb, 1
  %i.bn = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bm, i1 true)
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 1
  %i.bq = xor i32 %i.bp, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %i.bf, i64 noundef range(i64 0, 230584300921369396) %i.bb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bq, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #22, !inline_history !74
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.bf, i64 %i.bb
  %i.bs = or i64 %i.bc, 1
  %i.bt = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 1
  %i.bw = xor i32 %i.bv, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %i.br, i64 noundef range(i64 0, 230584300921369396) %i.bc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bw, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #22, !inline_history !74
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBX_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %i.bf, i64 noundef range(i64 0, 230584300921369396) %i.bd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.bb, ptr noalias nofree noundef nonnull %5)
  %i.bx = shl nuw nsw i64 %i.bd, 1
  %i.by = or disjoint i64 %i.bx, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.by, %bb.x ], [ %i.bl, %bb.t ] ; 2 uses
  %i.bz = icmp ugt i64 %i.au, 1
  br i1 %i.bz, label %.lr.ph55, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ca = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cb = lshr i64 %.sroa.018.0, 1
  %i.cc = add nuw i64 %i.cb, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cd = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cd, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ce = or i64 %1, 1
  %i.cf = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.ci, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #22, !inline_history !74
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %4, ptr nofree noundef readonly align 8 captures(address) %5, ptr noalias nofree noundef nonnull %6) unnamed_addr #1 {
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
end_hunk_0
