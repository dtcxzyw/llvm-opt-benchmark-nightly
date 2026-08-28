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
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ne i64 %i.k, 0
  %i.o = and i64 %i.k, 3
  %i.p = icmp eq i64 %i.o, 0
  %or.cond.i.i.i = and i1 %i.n, %i.p
  br i1 %or.cond.i.i.i, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit.i

bb.f:                                             ; preds = %bb.e
  %i.q = inttoptr i64 %i.k to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = atomicrmw sub ptr %i.r, i64 1 seq_cst, align 8, !noalias !29
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit.i, !prof !10

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit.i unwind label %bb.c, !noalias !26

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26
  %i.u = invoke { i64, i64 } @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB18_IB1K_NtB2s_18NamespaceStaticSetEEE6insertCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1819113521, i64 noundef 2)
          to label %bb.h unwind label %bb.c, !noalias !26 ; 2 uses

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit.i
  %i.v = extractvalue { i64, i64 } %i.u, 0        ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 4 uses
  store i64 %i.v, ptr %i.b, align 8, !noalias !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.w, ptr %i.x, align 8, !noalias !26
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit3.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = icmp ne i64 %i.w, 0
  %i.aa = and i64 %i.w, 3
  %i.ab = icmp eq i64 %i.aa, 0
  %or.cond.i.i1.i = and i1 %i.z, %i.ab
  br i1 %or.cond.i.i1.i, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit3.i

bb.j:                                             ; preds = %bb.i
  %i.ac = inttoptr i64 %i.w to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 seq_cst, align 8, !noalias !38
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit3.i, !prof !10

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit3.i unwind label %bb.c, !noalias !26

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit3.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26
  %i.ag = invoke { i64, i64 } @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB18_IB1K_NtB2s_18NamespaceStaticSetEEE6insertCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 126918102710353, i64 noundef 4294967298)
          to label %bb.l unwind label %bb.c, !noalias !26 ; 2 uses

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit3.i
  %i.ah = extractvalue { i64, i64 } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ag, 1      ; 4 uses
  store i64 %i.ah, ptr %i.a, align 8, !noalias !26
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.ai, ptr %i.aj, align 8, !noalias !26
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = icmp ne i64 %i.ai, 0
  %i.am = and i64 %i.ai, 3
  %i.an = icmp eq i64 %i.am, 0
  %or.cond.i.i4.i = and i1 %i.al, %i.an
  br i1 %or.cond.i.i4.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ao = inttoptr i64 %i.ai to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 seq_cst, align 8, !noalias !47
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.o, label %bb.q, !prof !10

bb.o:                                             ; preds = %bb.n
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.q unwind label %bb.c, !noalias !26

bb.p:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
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
  %i.a = alloca [32 x i8], align 8                ; 4 uses
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
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store i64 1, ptr %i.a, align 8
  call void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB15_IB1H_NtB2p_18NamespaceStaticSetEEENtNtNtB19_3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
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
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = icmp ne i64 %i.ai, 0
  %i.am = and i64 %i.ai, 3
  %i.an = icmp eq i64 %i.am, 0
  %or.cond.i.i = and i1 %i.al, %i.an
  br i1 %or.cond.i.i, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit

bb.n:                                             ; preds = %bb.m
  %i.ao = inttoptr i64 %i.ai to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 seq_cst, align 8, !noalias !67
end_hunk_0
