Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/xml5ever-7ad231a96e8c14d3.xml5ever.dd9596b111d44890-cgu.4?download=true
inline.NumInlined: 88
inline.NumDeleted: 55
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [33 x i8] c"XMLNS namespaces can't be changed", align 1
@1 = private unnamed_addr constant [33 x i8] c"XML namespace can't be redeclared", align 1
@2 = private unnamed_addr constant [25 x i8] c"Namespace already defined", align 1
@3 = private unnamed_addr constant [30 x i8] c"Invalid namespace declaration.", align 1
@4 = private unnamed_addr constant [23 x i8] c"Can't declare XMLNS URI", align 1
@5 = private unnamed_addr constant [36 x i8] c"http://www.w3.org/XML/1998/namespace", align 1
@_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET = external local_unnamed_addr global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, i64 }
@_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET = external local_unnamed_addr global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, i64 }
@6 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/string_cache-0.11.0/src/atom.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"d\00\00\00\00\00\00\00U\01\00\00\1F\00\00\00" }>, align 8
@_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET = external local_unnamed_addr global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, i64 }
@8 = private unnamed_addr constant [14 x i8] c"\0ANamespaceMap[", align 1
@9 = private unnamed_addr constant [1 x i8] c"]", align 1
@10 = private unnamed_addr constant [13 x i8] c"\03   \C0\03 : \C0\01\0A\00", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4   ; 3 uses
  %i.b = icmp ne i64 %i.a, 0
  %i.c = and i64 %i.a, 3
  %i.d = icmp eq i64 %i.c, 0
  %or.cond = and i1 %i.b, %i.d
  br i1 %or.cond, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEECsj1ugBVjDER0_8xml5ever.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.a to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = atomicrmw sub ptr %i.f, i64 1 seq_cst, align 8, !noalias !5
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEECsj1ugBVjDER0_8xml5ever.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEECsj1ugBVjDER0_8xml5ever.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4   ; 3 uses
  %i.b = icmp ne i64 %i.a, 0
  %i.c = and i64 %i.a, 3
  %i.d = icmp eq i64 %i.c, 0
  %or.cond = and i1 %i.b, %i.d
  br i1 %or.cond, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.a to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = atomicrmw sub ptr %i.f, i64 1 seq_cst, align 8, !noalias !11
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB1m_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 230584300921369396) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.b, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  %.not5 = icmp samesign eq i64 %2, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit
  %.sroa.0.06 = phi ptr [ %i.l, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit ], [ %i.d, %.lr.ph.preheader ] ; 5 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -40 ; 4 uses
  %i.f = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever(ptr noundef nonnull align 8 %.sroa.0.06, ptr noundef nonnull align 8 %i.e) #23
  br i1 %i.f, label %bb.d, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.06, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.06, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  %i.g = icmp eq ptr %i.e, %0
  br i1 %i.g, label %._crit_edge17, label %.lr.ph16

bb.e:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i14, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.h = icmp eq ptr %i.i, %0
  br i1 %i.h, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i14 = phi ptr [ %i.i, %bb.e ], [ %i.e, %bb.d ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i14, i64 -40 ; 4 uses
  %i.j = invoke fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull align 8 %i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph16
  br i1 %i.j, label %bb.e, label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i14, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit

bb.g:                                             ; preds = %.lr.ph16
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i14, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !21
  resume { ptr, i32 } %i.k

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit: ; preds = %.lr.ph, %._crit_edge17
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsj1ugBVjDER0_8xml5ever12tree_builderNtB2_17NamespaceMapStack3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.e = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #24 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #25
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26
  store ptr null, ptr %i.d, align 8, !noalias !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.g, align 8, !noalias !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26
  %i.h = invoke { i64, i64 } @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB18_IB1K_NtB2s_18NamespaceStaticSetEEE6insertCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0, i64 noundef 0)
          to label %bb.d unwind label %bb.c, !noalias !26 ; 2 uses

bb.c:                                             ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit3.i, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit.i, %bb.g, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB15_IB1H_NtB2p_18NamespaceStaticSetEEENtNtNtB19_3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.r unwind label %bb.p, !noalias !26

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.j = extractvalue { i64, i64 } %i.h, 0        ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.h, 1        ; 4 uses
  store i64 %i.j, ptr %i.c, align 8, !noalias !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !noalias !26
  %1 = trunc nuw i64 %i.j to i1
  br i1 %1, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit.i

bb.e:                                             ; preds = %bb.d
  %i.m = icmp ne i64 %i.k, 0
  %i.n = and i64 %i.k, 3
  %i.o = icmp eq i64 %i.n, 0
  %or.cond.i.i.i = and i1 %i.m, %i.o
  br i1 %or.cond.i.i.i, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit.i

bb.f:                                             ; preds = %bb.e
  %i.p = inttoptr i64 %i.k to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = atomicrmw sub ptr %i.q, i64 1 seq_cst, align 8, !noalias !29
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit.i, !prof !10

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit.i unwind label %bb.c, !noalias !26

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26
  %i.t = invoke { i64, i64 } @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB18_IB1K_NtB2s_18NamespaceStaticSetEEE6insertCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1819113521, i64 noundef 2)
          to label %bb.h unwind label %bb.c, !noalias !26 ; 2 uses

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit.i
  %i.u = extractvalue { i64, i64 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.t, 1        ; 4 uses
  store i64 %i.u, ptr %i.b, align 8, !noalias !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.v, ptr %i.w, align 8, !noalias !26
  %2 = trunc nuw i64 %i.u to i1
  br i1 %2, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit3.i

bb.i:                                             ; preds = %bb.h
  %i.x = icmp ne i64 %i.v, 0
  %i.y = and i64 %i.v, 3
  %i.z = icmp eq i64 %i.y, 0
  %or.cond.i.i1.i = and i1 %i.x, %i.z
  br i1 %or.cond.i.i1.i, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit3.i

bb.j:                                             ; preds = %bb.i
  %i.aa = inttoptr i64 %i.v to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 seq_cst, align 8, !noalias !38
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit3.i, !prof !10

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit3.i unwind label %bb.c, !noalias !26

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit3.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26
  %i.ae = invoke { i64, i64 } @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB18_IB1K_NtB2s_18NamespaceStaticSetEEE6insertCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 126918102710353, i64 noundef 4294967298)
          to label %bb.l unwind label %bb.c, !noalias !26 ; 2 uses

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit3.i
  %i.af = extractvalue { i64, i64 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.ae, 1      ; 4 uses
  store i64 %i.af, ptr %i.a, align 8, !noalias !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.ag, ptr %i.ah, align 8, !noalias !26
  %3 = trunc nuw i64 %i.af to i1
  br i1 %3, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp ne i64 %i.ag, 0
  %i.aj = and i64 %i.ag, 3
  %i.ak = icmp eq i64 %i.aj, 0
  %or.cond.i.i4.i = and i1 %i.ai, %i.ak
  br i1 %or.cond.i.i4.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.al = inttoptr i64 %i.ag to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = atomicrmw sub ptr %i.am, i64 1 seq_cst, align 8, !noalias !47
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.o, label %bb.q, !prof !10

bb.o:                                             ; preds = %bb.n
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.q unwind label %bb.c, !noalias !26

bb.p:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !26
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.r:                                             ; preds = %bb.c
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #24
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsj1ugBVjDER0_8xml5ever12tree_builderNtB2_17NamespaceMapStack3pop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapEEB11_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -1                     ; 3 uses
  store i64 %i.e, ptr %i.b, align 8
  %i.f = load i64, ptr %0, align 8, !range !56, !noundef !4
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = icmp ult i64 %i.c, 384307168202282327
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store i64 1, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB15_IB1H_NtB2p_18NamespaceStaticSetEEENtNtNtB19_3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapEEB11_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapEEB11_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsj1ugBVjDER0_8xml5ever12tree_builderNtB2_17NamespaceMapStack4push(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !57, !noalias !60, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !56, !alias.scope !57, !noalias !60, !noundef !4
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapE8push_mutBJ_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapE8push_mutBJ_.exit unwind label %bb.c, !noalias !60

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB15_IB1H_NtB2p_18NamespaceStaticSetEEENtNtNtB19_3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapEBF_.exit.i unwind label %bb.d, !noalias !57

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !57
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapEBF_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapE8push_mutBJ_.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !57, !noalias !60, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !57
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !57, !noalias !60
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs0_NtCsj1ugBVjDER0_8xml5ever12tree_builderNtB5_12NamespaceMap3get(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB19_IB1L_NtB2t_18NamespaceStaticSetEEE3getB18_ECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCsj1ugBVjDER0_8xml5ever12tree_builderNtB5_12NamespaceMap6insert(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 5 uses
  %.not = icmp ne i64 %i.e, 0
  %i.f = and i64 %i.e, 3
  %i.g = icmp eq i64 %i.f, 0
  %or.cond = and i1 %.not, %i.g
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  store i64 %i.e, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.h = load i64, ptr %1, align 8, !range !65, !alias.scope !62, !noundef !4 ; 4 uses
  %i.i = trunc i64 %i.h to i8
  %i.j = and i8 %i.i, 3
  switch i8 %i.j, label %bb.c [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noalias !62, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !62, !noundef !4
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.o = lshr i64 %i.h, 4
  %i.p = and i64 %i.o, 15
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.h, 32                        ; 3 uses
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !62, !noundef !4 ; 2 uses
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !62, !nonnull !4, !align !66, !noundef !4
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.r ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !noalias !62, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noalias !62, !noundef !4
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.z = inttoptr i64 %i.e to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = atomicrmw add ptr %i.aa, i64 1 seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 9223372036854775807
  br i1 %i.ac, label %bb.j, label %bb.b, !prof !10

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsG258MDvU3F_3std7process5abort() #25
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.e, %bb.d
  %.sroa.4.0.i = phi i64 [ %i.n, %bb.d ], [ %i.p, %bb.e ], [ %i.y, %bb.g ]
  %.sroa.0.0.i = phi ptr [ %i.l, %bb.d ], [ %i.q, %bb.e ], [ %i.w, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.0.0.i, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.4.0.i, ptr %i.ae, align 8
  store i64 -1, ptr %i.a, align 8
  %i.af = invoke noundef i64 @_RNvXs2_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEE4fromCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ag = call { i64, i64 } @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB18_IB1K_NtB2s_18NamespaceStaticSetEEE6insertCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.af) ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ag, 1      ; 4 uses
  store i64 %i.ah, ptr %i.b, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.ai, ptr %i.aj, align 8
  %2 = trunc nuw i64 %i.ah to i1
  br i1 %2, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit

bb.m:                                             ; preds = %bb.l
  %i.ak = icmp ne i64 %i.ai, 0
  %i.al = and i64 %i.ai, 3
  %i.am = icmp eq i64 %i.al, 0
  %or.cond.i.i = and i1 %i.ak, %i.am
  br i1 %or.cond.i.i, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit

bb.n:                                             ; preds = %bb.m
  %i.an = inttoptr i64 %i.ai to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 seq_cst, align 8, !noalias !67
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit, !prof !10

bb.o:                                             ; preds = %bb.n
  call void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.p:                                             ; preds = %bb.q
  resume { ptr, i32 } %lpad.thr_comm

bb.q:                                             ; preds = %bb.k, %bb.h
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.c) #28
          to label %bb.p unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCsj1ugBVjDER0_8xml5ever12tree_builderNtB5_12NamespaceMap9insert_ns(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 6 uses
  %i.i = icmp eq ptr %i.g, inttoptr (i64 15 to ptr)
  br i1 %i.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit33.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult ptr %i.g, inttoptr (i64 9 to ptr) ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.h, 1
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr i8, ptr %i.g, i64 %i.l
  %i.n = trunc i64 %i.h to i1
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.p = load i32, ptr %i.o, align 4, !noalias !76, !noundef !4
  %i.q = zext i32 %i.p to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i = phi i64 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load i32, ptr %i.t, align 8, !noundef !4
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.e, %bb.f
  %.sroa.4.0.i = phi i64 [ %i.v, %bb.f ], [ %i.h, %bb.e ]
  %.sroa.0.0.i = phi ptr [ %i.w, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.x = icmp eq i64 %.sroa.4.0.i, 29
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit
  %i.y = load i128, ptr %.sroa.0.0.i, align 1
  %i.z = xor i128 %i.y, 152109273539140722503926086130765952104
  %i.aa = getelementptr i8, ptr %.sroa.0.0.i, i64 13
  %i.ab = load i128, ptr %i.aa, align 1
  %i.ac = xor i128 %i.ab, 63073069596199664437076142106657058606
  %i.ad = or i128 %i.z, %i.ac
  %i.ae = icmp ne i128 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.h

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit33.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %bb.l

bb.h:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br i1 %i.j, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit37, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit33

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit33: ; preds = %bb.h
  %i.ai = load i32, ptr %i.ah, align 8, !noundef !4
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit33.thread59

bb.i:                                             ; preds = %bb.g
  store i64 -1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @4, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.bq

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit33.thread59: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit33
  %i.ak = and i64 %i.h, 1
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr i8, ptr %i.g, i64 %i.al
  %i.an = trunc i64 %i.h to i1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit33.thread59
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !noalias !79, !noundef !4
  %i.aq = zext i32 %i.ap to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit33.thread59
  %.sroa.01.0.i.i34 = phi i64 [ %i.aq, %bb.j ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit33.thread59 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.at = load i32, ptr %i.as, align 8, !noundef !4
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.01.0.i.i34
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit37

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit37: ; preds = %bb.h, %bb.k
  %.sroa.4.0.i35 = phi i64 [ %i.au, %bb.k ], [ %i.h, %bb.h ]
  %.sroa.0.0.i36 = phi ptr [ %i.av, %bb.k ], [ %i.ah, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.0.0.i36, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.4.0.i35, ptr %i.ax, align 8
  store i64 -1, ptr %i.b, align 8
  %i.ay = call noundef i64 @_RNvXs2_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEE4fromCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit33.thread, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit33, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit37
  %storemerge = phi i64 [ %i.ay, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit37 ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit33 ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit33.thread ] ; 6 uses
  store i64 %storemerge, ptr %i.e, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.bb = load i64, ptr %i.ba, align 8, !range !65, !alias.scope !82, !noundef !4 ; 10 uses
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = and i8 %i.bc, 3                         ; 3 uses
  switch i8 %i.bd, label %bb.m [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.be = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !82, !nonnull !4, !noundef !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !82, !noundef !4
  br label %bb.s

bb.o:                                             ; preds = %bb.l
  %i.bi = lshr i64 %i.bb, 4
  %i.bj = and i64 %i.bi, 15
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 9
  br label %bb.s

bb.p:                                             ; preds = %bb.l
  %i.bl = lshr i64 %i.bb, 32                      ; 3 uses
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !82, !noundef !4 ; 2 uses
  %i.bn = icmp ult i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.q, label %.invoke

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !82, !nonnull !4, !align !66, !noundef !4
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bl ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !82, !nonnull !4, !noundef !4
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCsj1ugBVjDER0_8xml5ever12tree_builderNtB5_12NamespaceMap9insert_ns:bb.a
  %i.cv = load i16, ptr %.sroa.0.0.i39, align 1
  %i.cw = xor i16 %i.cv, 28024
  %i.cx = getelementptr i8, ptr %.sroa.0.0.i39, i64 2
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = zext i8 %i.cy to i16
  %i.da = xor i16 %i.cz, 108
  %i.db = or i16 %i.cw, %i.da
  %i.dc = icmp ne i16 %i.db, 0
  %i.dd = zext i1 %i.dc to i32
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = icmp eq i64 %i.bu, 126918102710353
  %or.cond = and i1 %i.df, %i.de
  br i1 %or.cond, label %bb.ai, label %bb.af

bb.ae:                                            ; preds = %bb.t
  %i.dg = load i32, ptr %.sroa.0.0.i39, align 1
  %i.dh = xor i32 %i.dg, 1852599672
  %i.di = getelementptr i8, ptr %.sroa.0.0.i39, i64 4
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i32
  %i.dl = xor i32 %i.dk, 115
  %i.dm = or i32 %i.dh, %i.dl
  %i.dn = icmp ne i32 %i.dm, 0
  %i.do = zext i1 %i.dn to i32
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.t, %bb.ae
  %i.dq = icmp eq i64 %i.bu, 126918102710353
  br i1 %i.dq, label %bb.x, label %bb.w

bb.ag:                                            ; preds = %bb.ae
  %cond = icmp eq i64 %i.bu, 126918102710353
  br i1 %cond, label %bb.ah, label %bb.w

bb.ah:                                            ; preds = %bb.ag
  store i64 -1, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 33, ptr %.sroa.56.0..sroa_idx, align 8
  br label %bb.bl

bb.ai:                                            ; preds = %bb.ad
  %i.dr = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ds = ptrtoint ptr %i.dr to i64               ; 3 uses
  %i.dt = icmp eq ptr %i.dr, inttoptr (i64 15 to ptr)
  br i1 %i.dt, label %.thread68, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.du = icmp ult ptr %i.dr, inttoptr (i64 9 to ptr)
  br i1 %i.du, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dv = and i64 %i.ds, 1
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = getelementptr i8, ptr %i.dr, i64 %i.dw
  %i.dy = trunc i64 %i.ds to i1
  br i1 %i.dy, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ea = load i32, ptr %i.dz, align 4, !noalias !88, !noundef !4
  %i.eb = zext i32 %i.ea to i64
  br label %bb.an

bb.am:                                            ; preds = %bb.aj
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.ao

bb.an:                                            ; preds = %bb.al, %bb.ak
  %.sroa.01.0.i.i44 = phi i64 [ %i.eb, %bb.al ], [ 0, %bb.ak ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ef = load i32, ptr %i.ee, align 8, !noundef !4
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sroa.01.0.i.i44
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.4.0.i45 = phi i64 [ %i.eg, %bb.an ], [ %i.ds, %bb.am ]
  %.sroa.0.0.i46 = phi ptr [ %i.eh, %bb.an ], [ %i.ec, %bb.am ]
  %i.ei = icmp eq i64 %.sroa.4.0.i45, 36
  br i1 %i.ei, label %bb.ap, label %.thread68

bb.ap:                                            ; preds = %bb.ao
  %bcmp23 = call i32 @bcmp(ptr noundef nonnull dereferenceable(36) %.sroa.0.0.i46, ptr noundef nonnull dereferenceable(36) @5, i64 36)
  %.not24 = icmp eq i32 %bcmp23, 0
  br i1 %.not24, label %bb.aq, label %.thread68

.thread68:                                        ; preds = %bb.ai, %bb.ao, %bb.ap
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 33, ptr %.sroa.53.0..sroa_idx, align 8
  br label %bb.bl

bb.aq:                                            ; preds = %bb.ap
  store i64 -2, ptr %0, align 8
  br label %bb.bl

bb.ar:                                            ; preds = %bb.ac, %bb.aa, %bb.z
  %.sroa.4.0.i40 = phi i64 [ %i.cj, %bb.z ], [ %i.cl, %bb.aa ], [ %i.cu, %bb.ac ]
  %.sroa.0.0.i41 = phi ptr [ %i.ch, %bb.z ], [ %i.cm, %bb.aa ], [ %i.cs, %bb.ac ] ; 2 uses
  %i.ej = icmp eq i64 %.sroa.4.0.i40, 5
  br i1 %i.ej, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ek = load i32, ptr %.sroa.0.0.i41, align 1
  %i.el = xor i32 %i.ek, 1852599672
  %i.em = getelementptr i8, ptr %.sroa.0.0.i41, i64 4
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i32
  %i.ep = xor i32 %i.eo, 115
  %i.eq = or i32 %i.el, %i.ep
  %i.er = icmp ne i32 %i.eq, 0
  %i.es = zext i1 %i.er to i32
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.bb, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  switch i8 %i.bd, label %bb.au [
    i8 0, label %bb.av
    i8 1, label %bb.aw
    i8 2, label %bb.ax
  ]

bb.au:                                            ; preds = %bb.at
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.eu = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !91, !nonnull !4, !noundef !4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !91, !noundef !4
  br label %bb.az

bb.aw:                                            ; preds = %bb.at
  %i.ey = lshr i64 %i.bb, 4
  %i.ez = and i64 %i.ey, 15
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 9
  br label %bb.az

bb.ax:                                            ; preds = %bb.at
  %i.fb = lshr i64 %i.bb, 32                      ; 3 uses
  %i.fc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !91, !noundef !4 ; 2 uses
  %i.fd = icmp ult i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.ay, label %.invoke

bb.ay:                                            ; preds = %bb.ax
  %i.fe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !91, !nonnull !4, !align !66, !noundef !4
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %i.fb ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !91, !nonnull !4, !noundef !4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !91, !noundef !4
  br label %bb.az

.invoke:                                          ; preds = %bb.p, %bb.ax, %bb.ab
  %i.fj = phi i64 [ %i.cn, %bb.ab ], [ %i.fb, %bb.ax ], [ %i.bl, %bb.p ]
  %i.fk = phi i64 [ %i.co, %bb.ab ], [ %i.fc, %bb.ax ], [ %i.bm, %bb.p ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fj, i64 noundef %i.fk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

bb.az:                                            ; preds = %bb.ay, %bb.aw, %bb.av
  %.sroa.4.0.i48 = phi i64 [ %i.ex, %bb.av ], [ %i.ez, %bb.aw ], [ %i.fi, %bb.ay ]
  %.sroa.0.0.i49 = phi ptr [ %i.ev, %bb.av ], [ %i.fa, %bb.aw ], [ %i.fg, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.0.0.i49, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.4.0.i48, ptr %i.fm, align 8
  store i64 -1, ptr %i.a, align 8
  %i.fn = invoke noundef i64 @_RNvXs2_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEE4fromCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.ba unwind label %bb.r

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i64, ptr %i.e, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.as, %bb.ba
  %i.fo = phi i64 [ %.pre, %bb.ba ], [ %storemerge, %bb.as ]
  %i.fp = phi i64 [ %i.fn, %bb.ba ], [ 0, %bb.as ] ; 5 uses
  store i64 %i.fp, ptr %i.d, align 8
  %.not27 = icmp eq i64 %i.fo, 0
  br i1 %.not27, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %._crit_edge, %bb.bb
  %i.fq = phi i64 [ %.pre76, %._crit_edge ], [ 0, %bb.bb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.fr = call { i64, i64 } @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB18_IB1K_NtB2s_18NamespaceStaticSetEEE6insertCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fp, i64 noundef %i.fq) ; 2 uses
  %i.fs = extractvalue { i64, i64 } %i.fr, 0      ; 2 uses
  %i.ft = extractvalue { i64, i64 } %i.fr, 1      ; 4 uses
  store i64 %i.fs, ptr %i.c, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %i.ft, ptr %i.fu, align 8
  %3 = trunc nuw i64 %i.fs to i1
  br i1 %3, label %bb.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit

bb.bd:                                            ; preds = %bb.bb
  %i.fv = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB19_IB1L_NtB2t_18NamespaceStaticSetEEE3getB18_ECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.be unwind label %bb.bo

bb.be:                                            ; preds = %bb.bd
  %.not28 = icmp eq ptr %i.fv, null
  br i1 %.not28, label %._crit_edge, label %bb.bf

._crit_edge:                                      ; preds = %bb.be
  %.pre76 = load i64, ptr %i.e, align 8
  br label %bb.bc

bb.bf:                                            ; preds = %bb.be
  store i64 -1, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @2, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 25, ptr %.sroa.59.0..sroa_idx, align 8
  %i.fw = icmp ne i64 %i.fp, 0
  %i.fx = and i64 %i.fp, 3
  %i.fy = icmp eq i64 %i.fx, 0
  %or.cond.i = and i1 %i.fw, %i.fy
  br i1 %or.cond.i, label %bb.bg, label %.critedge

bb.bg:                                            ; preds = %bb.bf
  %i.fz = inttoptr i64 %i.fp to ptr
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = atomicrmw sub ptr %i.ga, i64 1 seq_cst, align 8, !noalias !94
  %i.gc = icmp eq i64 %i.gb, 1
  br i1 %i.gc, label %bb.bh, label %.critedge, !prof !10

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.critedge unwind label %bb.r

bb.bi:                                            ; preds = %bb.bc
  %i.gd = icmp ne i64 %i.ft, 0
  %i.ge = and i64 %i.ft, 3
  %i.gf = icmp eq i64 %i.ge, 0
  %or.cond.i.i = and i1 %i.gd, %i.gf
  br i1 %or.cond.i.i, label %bb.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit

bb.bj:                                            ; preds = %bb.bi
  %i.gg = inttoptr i64 %i.ft to ptr
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.gi = atomicrmw sub ptr %i.gh, i64 1 seq_cst, align 8, !noalias !101
  %i.gj = icmp eq i64 %i.gi, 1
  br i1 %i.gj, label %bb.bk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit, !prof !10

bb.bk:                                            ; preds = %bb.bj
  call void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fu)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.bn, %bb.bm, %bb.bl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bq

.critedge:                                        ; preds = %bb.bg, %bb.bf, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre75 = load i64, ptr %i.e, align 8, !alias.scope !110
  br label %bb.bl

bb.bl:                                            ; preds = %.critedge, %.thread68, %bb.aq, %bb.w, %bb.ah
  %i.gk = phi i64 [ %.pre75, %.critedge ], [ %storemerge, %.thread68 ], [ %storemerge, %bb.aq ], [ %storemerge, %bb.w ], [ %storemerge, %bb.ah ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.gl = icmp ne i64 %i.gk, 0
  %i.gm = and i64 %i.gk, 3
  %i.gn = icmp eq i64 %i.gm, 0
  %or.cond.i54 = and i1 %i.gl, %i.gn
  br i1 %or.cond.i54, label %bb.bm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever.exit

bb.bm:                                            ; preds = %bb.bl
  %i.go = inttoptr i64 %i.gk to ptr
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = atomicrmw sub ptr %i.gp, i64 1 seq_cst, align 8, !noalias !113
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %bb.bn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever.exit, !prof !10

bb.bn:                                            ; preds = %bb.bm
  call void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever.exit

bb.bo:                                            ; preds = %bb.bd
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.d) #28
          to label %bb.bs unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bs, %bb.bo
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever.exit, %bb.i
  ret void

bb.br:                                            ; preds = %bb.bs
  resume { ptr, i32 } %.pn.ph

bb.bs:                                            ; preds = %bb.r, %bb.bo
  %.pn.ph = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.bo ], [ %i.bt, %bb.r ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.e) #28
          to label %bb.br unwind label %bb.bp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !118 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !124

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !125
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !125
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !125
  %i.i = load i64, ptr %i.a, align 8, !range !126, !noalias !125, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsj1ugBVjDER0_8xml5ever.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !127, !noalias !125, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !125
  br label %bb.f

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsj1ugBVjDER0_8xml5ever.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !125, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !125
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !125
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !125
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #25
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsj1ugBVjDER0_8xml5ever.exit.i, %bb.a
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapE8grow_oneBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !56, !noundef !4
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsj1ugBVjDER0_8xml5ever(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !128
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !128

bb.b:                                             ; preds = %bb.a
end_hunk_1
