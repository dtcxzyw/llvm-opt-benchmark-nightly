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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cg, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ce, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit
  %.sroa.021.0 = phi i8 [ %i.ax, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph55, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
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
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader43
  %smax = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread78, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %.preheader
  %smax65 = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph49

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.sroa.01.0.i.i45 = phi i64 [ %i.v, %bb.l ], [ 2, %.lr.ph.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %i.s = getelementptr [40 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %i.t = getelementptr i8, ptr %i.s, i64 -40
  %i.u = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull align 8 %i.t) #21, !noalias !75, !inline_history !73
  br i1 %i.u, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.v = add nuw nsw i64 %.sroa.01.0.i.i45, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i, label %.lr.ph

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %bb.m
  %.sroa.01.1.i.i48 = phi i64 [ %i.aa, %bb.m ], [ 2, %.lr.ph49.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %i.x = getelementptr [40 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %i.y = getelementptr i8, ptr %i.x, i64 -40
  %i.z = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull align 8 %i.w, ptr noundef nonnull align 8 %i.y) #21, !noalias !75, !inline_history !73
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i

bb.m:                                             ; preds = %.lr.ph49
  %i.aa = add nuw nsw i64 %.sroa.01.1.i.i48, 1    ; 2 uses
  %exitcond65.not = icmp eq i64 %i.aa, %smax65
  br i1 %exitcond65.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i, label %.lr.ph49

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph49
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i48, %.lr.ph49 ], [ %smax65, %bb.m ], [ %.sroa.01.0.i.i45, %.lr.ph ], [ %smax, %bb.l ] ; 5 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread78: ; preds = %.preheader
  br i1 %.not5.i80, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread: ; preds = %.preheader43
  br i1 %.not5.i75, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsbmOI1VUejFP_9html5ever.exit

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp ne i64 %i.ac, 0
  %or.cond.not = and i1 %.not.i.i, %i.q
  br i1 %or.cond.not, label %.lr.ph.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsbmOI1VUejFP_9html5ever.exit

bb.o:                                             ; preds = %bb.i
  %..i34 = tail call noundef range(i64 0, 230584300921369396) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.ad = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit

bb.p:                                             ; preds = %bb.i
  %..i33 = tail call noundef range(i64 0, 230584300921369396) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 16) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #22, !inline_history !73
  %i.ae = shl nuw nsw i64 %..i33, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsbmOI1VUejFP_9html5ever.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsbmOI1VUejFP_9html5ever.exit.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i3942 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread ], [ %.sroa.0.0.i.i768387, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsbmOI1VUejFP_9html5ever.exit.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i3942, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread78
  %i.ai = phi i64 [ %i.ac, %bb.n ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread78 ]
  %.sroa.0.0.i.i768387 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit.i.thread78 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i.i768387
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsbmOI1VUejFP_9html5ever.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ao, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsbmOI1VUejFP_9html5ever.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.017.i.i, -1
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.am = getelementptr [40 x i8], ptr %i.aj, i64 %i.ak
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbmOI1VUejFP_9html5ever(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, i64 noundef 5)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsbmOI1VUejFP_9html5ever.exit.i.i unwind label %bb.q, !noalias !75

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #20, !noalias !75
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsbmOI1VUejFP_9html5ever.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ao = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsbmOI1VUejFP_9html5ever.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsbmOI1VUejFP_9html5ever.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsbmOI1VUejFP_9html5ever.exit ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.ap = lshr i64 %.sroa.023.0, 1
  %i.aq = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ar = sub nsw i64 %factor, %i.ap
  %i.as = add nuw nsw i64 %i.aq, %factor
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = mul i64 %i.as, %.sroa.0.0
  %i.av = xor i64 %i.au, %i.at
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false)
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  br label %bb.g

.lr.ph55:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit
  %.sroa.02.154 = phi i64 [ %i.ay, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.153 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ay = add i64 %.sroa.02.154, -1               ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.ba, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit, %.lr.ph55, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.153, %.lr.ph55 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.154, %.lr.ph55 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bc, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph55
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.be = load i64, ptr %i.bd, align 8, !noundef !4 ; 3 uses
  %i.bf = lshr i64 %i.be, 1                       ; 5 uses
  %i.bg = lshr i64 %.sroa.023.153, 1              ; 3 uses
  %i.bh = add nuw i64 %i.bf, %i.bg                ; 5 uses
  %i.bi = sub i64 %.sroa.09.0, %i.bh
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bi ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.bh, %3
  %i.bl = trunc i64 %.sroa.023.153 to i1
  %i.bm = or i64 %i.be, %.sroa.023.153
  %i.bn = trunc i64 %i.bm to i1
  %or.cond3.i = or i1 %i.bk, %i.bn
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bo = trunc i64 %i.be to i1
  br i1 %i.bo, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bp = shl nuw nsw i64 %i.bh, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bl, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bq = or i64 %i.bf, 1
  %i.br = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = xor i32 %i.bt, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %i.bj, i64 noundef range(i64 0, 230584300921369396) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bu, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #22, !inline_history !74
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.bf
  %i.bw = or i64 %i.bg, 1
  %i.bx = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 230584300921369396) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.ca, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #22, !inline_history !74
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBX_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %i.bj, i64 noundef range(i64 0, 230584300921369396) %i.bh, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.bf, ptr noalias nofree noundef nonnull %5)
  %i.cb = shl nuw nsw i64 %i.bh, 1
  %i.cc = or disjoint i64 %i.cb, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cc, %bb.x ], [ %i.bp, %bb.t ] ; 2 uses
  %i.cd = icmp ugt i64 %i.ay, 1
  br i1 %i.cd, label %.lr.ph55, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ce = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cf = lshr i64 %.sroa.018.0, 1
  %i.cg = add nuw i64 %i.cf, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.ch = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ch, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ci = or i64 %1, 1
  %i.cj = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.cm, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #22, !inline_history !74
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
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph220

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute12split_at_mutCsbmOI1VUejFP_9html5ever.exit
  %i.d = icmp eq i32 %i.f, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph220

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute12split_at_mutCsbmOI1VUejFP_9html5ever.exit, %bb.a
  %.sroa.0.0.ph.lcssa86 = phi ptr [ %.sroa.0.0.ph95, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute12split_at_mutCsbmOI1VUejFP_9html5ever.exit ], [ %0, %bb.a ], [ %i.ch, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute12split_at_mutCsbmOI1VUejFP_9html5ever.exit ], [ %1, %bb.a ], [ %i.bs, %.outer ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever:bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ef = load ptr, ptr %i.ed, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.eg = ptrtoint ptr %i.ef to i64               ; 3 uses
  %i.eh = icmp eq ptr %i.ef, inttoptr (i64 15 to ptr)
  br i1 %i.eh, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i
  %i.ei = icmp ult ptr %i.ef, inttoptr (i64 9 to ptr)
  br i1 %i.ei, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ej = and i64 %i.eg, 1
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = getelementptr i8, ptr %i.ef, i64 %i.ek
  %i.em = trunc i64 %i.eg to i1
  br i1 %i.em, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.eo = load i32, ptr %i.en, align 4, !noalias !242, !noundef !4
  %i.ep = zext i32 %i.eo to i64
  br label %bb.av

bb.au:                                            ; preds = %bb.ar
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i

bb.av:                                            ; preds = %bb.at, %bb.as
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.ep, %bb.at ], [ 0, %bb.as ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.et = load i32, ptr %i.es, align 8, !noundef !4
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.01.0.i.i.i.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i: ; preds = %bb.av, %bb.au, %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %i.eu, %bb.av ], [ %i.eg, %bb.au ], [ 0, %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ev, %bb.av ], [ %i.eq, %bb.au ], [ inttoptr (i64 1 to ptr), %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i ]
  %i.ew = load ptr, ptr %i.ee, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ex = ptrtoint ptr %i.ew to i64               ; 3 uses
  %i.ey = icmp eq ptr %i.ew, inttoptr (i64 15 to ptr)
  br i1 %i.ey, label %_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i
  %i.ez = icmp ult ptr %i.ew, inttoptr (i64 9 to ptr)
  br i1 %i.ez, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fa = and i64 %i.ex, 1
  %i.fb = sub nsw i64 0, %i.fa
  %i.fc = getelementptr i8, ptr %i.ew, i64 %i.fb
  %i.fd = trunc i64 %i.ex to i1
  br i1 %i.fd, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ff = load i32, ptr %i.fe, align 4, !noalias !243, !noundef !4
  %i.fg = zext i32 %i.ff to i64
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.01.0.i.i1.i.i.i.i = phi i64 [ %i.fg, %bb.ay ], [ 0, %bb.ax ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fk = load i32, ptr %i.fj, align 8, !noundef !4
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.sroa.01.0.i.i1.i.i.i.i
  br label %_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i

_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i: ; preds = %bb.ba, %bb.az, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i
  %.sroa.4.0.i2.i.i.i.i = phi i64 [ %i.fl, %bb.ba ], [ %i.ex, %bb.az ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i3.i.i.i.i = phi ptr [ %i.fm, %bb.ba ], [ %i.fh, %bb.az ], [ inttoptr (i64 1 to ptr), %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i ]
  %spec.store.select.i.i2.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %.sroa.4.0.i.i.i.i.i, i64 range(i64 0, 4294967296) %.sroa.4.0.i2.i.i.i.i)
  %i.fn = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %.sroa.0.0.i3.i.i.i.i, i64 %spec.store.select.i.i2.i.i.i), !alias.scope !244 ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = icmp eq i32 %i.fn, 0
  %i.fq = sub nsw i64 %.sroa.4.0.i.i.i.i.i, %.sroa.4.0.i2.i.i.i.i
  %spec.select.i.i3.i.i.i = select i1 %i.fp, i64 %i.fq, i64 %i.fo
  %i.fr = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i3.i.i.i, i64 0)
  br label %_RNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltCsbmOI1VUejFP_9html5ever.exit

_RNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltCsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.b, %bb.c, %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i, %_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i8 [ %i.fr, %_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i ], [ -1, %bb.c ], [ 1, %bb.b ]
  %i.fs = icmp slt i8 %.sroa.0.0.i.i.i, 0
  ret i1 %i.fs
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBX_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB1m_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2m_8for_each4callhNCINvMsk_NtB1y_3vecINtB3z_3VechE14extend_trustedBN_E0E0ECsbmOI1VUejFP_9html5ever(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbmOI1VUejFP_9html5ever(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbmOI1VUejFP_9html5ever(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #15

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsG258MDvU3F_3std7process5abort() unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { cold }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { inlinehint }
attributes #22 = { noinline }
attributes #23 = { noinline noreturn }
attributes #24 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{i64 1, i64 0}
!7 = !{i64 0, i64 2}
!8 = !{i64 0, i64 -9223372036854775807}
!9 = !{i64 0, i64 -9223372036854775808}
!10 = distinct !{!10, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEECsbmOI1VUejFP_9html5ever"}
!11 = distinct !{!11, !10, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEECsbmOI1VUejFP_9html5ever: argument 0"}
!12 = distinct !{!12, !"_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!13 = distinct !{!13, !12, !"_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!14 = !{!13, !11}
!15 = distinct !{!15, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!16 = distinct !{!16, !15, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!17 = !{!16}
!18 = distinct !{!18, !"_RNvXs3_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!19 = distinct !{!19, !18, !"_RNvXs3_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!20 = distinct !{!20, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever"}
!21 = distinct !{!21, !20, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever: argument 0"}
!22 = !{!19}
!23 = !{!21}
!24 = distinct !{!24, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsbmOI1VUejFP_9html5ever"}
!25 = distinct !{!25, !24, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsbmOI1VUejFP_9html5ever: argument 0"}
!26 = distinct !{!26, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEECsbmOI1VUejFP_9html5ever"}
!27 = distinct !{!27, !26, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEECsbmOI1VUejFP_9html5ever: argument 0"}
!28 = distinct !{!28, !"_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!29 = distinct !{!29, !28, !"_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!30 = distinct !{!30, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsbmOI1VUejFP_9html5ever"}
!31 = distinct !{!31, !30, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsbmOI1VUejFP_9html5ever: argument 0"}
!32 = distinct !{!32, !"_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!33 = distinct !{!33, !32, !"_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!34 = distinct !{!34, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsbmOI1VUejFP_9html5ever"}
!35 = distinct !{!35, !34, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsbmOI1VUejFP_9html5ever: argument 0"}
!36 = distinct !{!36, !"_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!37 = distinct !{!37, !36, !"_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!38 = distinct !{!38, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECsbmOI1VUejFP_9html5ever"}
!39 = distinct !{!39, !38, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECsbmOI1VUejFP_9html5ever: argument 0"}
!40 = distinct !{!40, !"_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!41 = distinct !{!41, !40, !"_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!42 = distinct !{!42, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECsbmOI1VUejFP_9html5ever"}
!43 = distinct !{!43, !42, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECsbmOI1VUejFP_9html5ever: argument 0"}
!44 = distinct !{!44, !"_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!45 = distinct !{!45, !44, !"_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!46 = !{!25}
!47 = !{!29, !27, !25}
!48 = !{!31}
!49 = !{!33}
!50 = !{!33, !31}
!51 = !{!35}
!52 = !{!37}
!53 = !{!37, !35}
!54 = !{!39}
!55 = !{!41}
!56 = !{!41, !39}
!57 = !{!43}
!58 = !{!45}
!59 = !{!45, !43}
!60 = distinct !{!60, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever"}
!61 = distinct !{!61, !60, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever: argument 0"}
!62 = distinct !{!62, !"_RNvXs3_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!63 = distinct !{!63, !62, !"_RNvXs3_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!64 = distinct !{!64, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever"}
!65 = distinct !{!65, !64, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever: argument 0"}
!66 = !{!61}
!67 = !{!63}
!68 = !{!63, !61}
!69 = !{!65}
!70 = distinct !{!70, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever"}
!71 = distinct !{!71, !70, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever: argument 2"}
!72 = distinct !{!72, !70, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever: argument 1"}
!73 = distinct !{null}
!74 = distinct !{null}
!75 = !{!72, !71}
!76 = distinct !{!76, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever"}
!77 = distinct !{!77, !76, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever: argument 0"}
!78 = distinct !{!78, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB1d_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever"}
!79 = distinct !{!79, !78, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB1d_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever: argument 1"}
!80 = distinct !{!80, !78, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB1d_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever: argument 0"}
!81 = distinct !{!81, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE13partition_oneCsbmOI1VUejFP_9html5ever"}
!82 = distinct !{!82, !81, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE13partition_oneCsbmOI1VUejFP_9html5ever: argument 0"}
!83 = distinct !{!83, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE13partition_oneCsbmOI1VUejFP_9html5ever"}
!84 = distinct !{!84, !83, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE13partition_oneCsbmOI1VUejFP_9html5ever: argument 0"}
!85 = distinct !{!85, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute12split_at_mutCsbmOI1VUejFP_9html5ever"}
!86 = distinct !{!86, !85, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute12split_at_mutCsbmOI1VUejFP_9html5ever: argument 1"}
!87 = distinct !{!87, !85, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute12split_at_mutCsbmOI1VUejFP_9html5ever: argument 0"}
!88 = distinct !{!88, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsbmOI1VUejFP_9html5ever"}
!89 = distinct !{!89, !88, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsbmOI1VUejFP_9html5ever: argument 1"}
!90 = distinct !{!90, !88, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsbmOI1VUejFP_9html5ever: argument 0"}
!91 = distinct !{!91, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE13partition_oneCsbmOI1VUejFP_9html5ever"}
!92 = distinct !{!92, !91, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE13partition_oneCsbmOI1VUejFP_9html5ever: argument 0"}
!93 = distinct !{!93, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE13partition_oneCsbmOI1VUejFP_9html5ever"}
!94 = distinct !{!94, !93, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE13partition_oneCsbmOI1VUejFP_9html5ever: argument 0"}
!95 = !{!77}
!96 = !{!79}
!97 = !{!"branch_weights", i32 4001, i32 4000000}
!98 = !{!80, !79}
!99 = !{!82}
!100 = !{!84}
!101 = !{!87, !86}
!102 = !{!89}
!103 = !{!90, !89}
!104 = !{!92}
!105 = !{!94}
!106 = distinct !{!106, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCsbmOI1VUejFP_9html5ever"}
!107 = distinct !{!107, !106, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCsbmOI1VUejFP_9html5ever: argument 0"}
!108 = distinct !{!108, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever"}
!109 = distinct !{!109, !108, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever: argument 0"}
!110 = distinct !{!110, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCsbmOI1VUejFP_9html5ever"}
!111 = distinct !{!111, !110, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCsbmOI1VUejFP_9html5ever: argument 1"}
!112 = distinct !{!112, !110, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCsbmOI1VUejFP_9html5ever: argument 0"}
!113 = distinct !{!113, !"_RNvMNtCsldpiDtalS19_7tendril5buf32INtB2_5Buf32INtNtB4_7tendril6HeaderNtBL_9NonAtomicEE13with_capacityCsbmOI1VUejFP_9html5ever"}
!114 = distinct !{!114, !113, !"_RNvMNtCsldpiDtalS19_7tendril5buf32INtB2_5Buf32INtNtB4_7tendril6HeaderNtBL_9NonAtomicEE13with_capacityCsbmOI1VUejFP_9html5ever: argument 1"}
!115 = distinct !{!115, !113, !"_RNvMNtCsldpiDtalS19_7tendril5buf32INtB2_5Buf32INtNtB4_7tendril6HeaderNtBL_9NonAtomicEE13with_capacityCsbmOI1VUejFP_9html5ever: argument 0"}
!116 = distinct !{!116, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever"}
!117 = distinct !{!117, !116, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever: argument 0"}
!118 = distinct !{!118, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever"}
!119 = distinct !{!119, !118, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever: argument 0"}
!120 = distinct !{!120, !"_RNvXs3_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!121 = distinct !{!121, !120, !"_RNvXs3_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!122 = distinct !{!122, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever"}
!123 = distinct !{!123, !122, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever: argument 0"}
!124 = distinct !{!124, !"_RNvMNtCsldpiDtalS19_7tendril5buf32INtB2_5Buf32INtNtB4_7tendril6HeaderNtBL_9NonAtomicEE4growCsbmOI1VUejFP_9html5ever"}
!125 = distinct !{!125, !124, !"_RNvMNtCsldpiDtalS19_7tendril5buf32INtB2_5Buf32INtNtB4_7tendril6HeaderNtBL_9NonAtomicEE4growCsbmOI1VUejFP_9html5ever: argument 0"}
!126 = distinct !{!126, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E6inlineCsbmOI1VUejFP_9html5ever"}
!127 = distinct !{!127, !126, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E6inlineCsbmOI1VUejFP_9html5ever: argument 1"}
!128 = distinct !{!128, !126, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E6inlineCsbmOI1VUejFP_9html5ever: argument 0"}
!129 = distinct !{!129, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever"}
!130 = distinct !{!130, !129, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever: argument 0"}
!131 = distinct !{!131, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever"}
!132 = distinct !{!132, !131, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever: argument 0"}
!133 = distinct !{!133, !"_RNvXs3_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!134 = distinct !{!134, !133, !"_RNvXs3_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!135 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!136 = !{!107}
!137 = !{!109}
!138 = !{!115, !114, !112, !111, !109, !107}
!139 = !{!115, !112, !111, !109, !107}
!140 = !{!112}
!141 = !{!117}
!142 = !{!121, !119, !109, !107}
!143 = !{!109, !107}
!144 = !{!123}
!145 = !{!125, !107}
!146 = !{!128, !127}
!147 = !{!128}
!148 = !{!130}
!149 = !{!134, !132}
!150 = distinct !{!150, !"_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw"}
!151 = distinct !{!151, !150, !"_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw: argument 0"}
!152 = distinct !{!152, !"_RNvMsH_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E9from_charCsbmOI1VUejFP_9html5ever"}
!153 = distinct !{!153, !152, !"_RNvMsH_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E9from_charCsbmOI1VUejFP_9html5ever: argument 0"}
!154 = distinct !{!154, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E6inlineCsbmOI1VUejFP_9html5ever"}
!155 = distinct !{!155, !154, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E6inlineCsbmOI1VUejFP_9html5ever: argument 0"}
!156 = distinct !{!156, !154, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E6inlineCsbmOI1VUejFP_9html5ever: argument 1"}
!157 = distinct !{!157, !"_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw"}
!158 = distinct !{!158, !157, !"_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw: argument 0"}
!159 = !{!151}
!160 = !{!153}
!161 = !{!155}
!162 = !{!156, !153}
!163 = !{!158}
!164 = distinct !{!164, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE11spec_extendCsbmOI1VUejFP_9html5ever"}
!165 = distinct !{!165, !164, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE11spec_extendCsbmOI1VUejFP_9html5ever: argument 0"}
!166 = distinct !{!166, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EECsbmOI1VUejFP_9html5ever"}
!167 = distinct !{!167, !166, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EECsbmOI1VUejFP_9html5ever: argument 0"}
!168 = !{!167, !165}
!169 = distinct !{!169, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbmOI1VUejFP_9html5ever"}
!170 = distinct !{!170, !169, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbmOI1VUejFP_9html5ever: argument 0"}
end_hunk_1
