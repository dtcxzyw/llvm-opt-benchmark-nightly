inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMs0_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatches23try_get_raw_occurrences:bb.a
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3271)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3271, !noalias !3274, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !3271, !noalias !3274, !noundef !13 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i
  %.sroa.0.0917.i = phi ptr [ %i.g, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i ], [ %i.b, %bb.a ] ; 3 uses
  %.sroa.8.016.i = phi i64 [ %i.h, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i, i64 16 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.8.016.i, 1
  %i.i = getelementptr i8, ptr %.sroa.0.0917.i, i64 8
  %.val7.i = load i64, ptr %i.i, align 8, !noalias !3276, !noundef !13
  %i.j = icmp eq i64 %.val7.i, %3
  br i1 %i.j, label %.split.i, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i

.split.i:                                         ; preds = %.lr.ph.i
  %.val.i = load ptr, ptr %.sroa.0.0917.i, align 8, !noalias !3276, !nonnull !13, !noundef !13
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %2, i64 %3), !alias.scope !3277, !noalias !3271
  %i.k = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.k, label %bb.b, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i
  %i.l = icmp eq ptr %i.g, %i.e
  br i1 %i.l, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %.split.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !3271, !noalias !3274, !noundef !13 ; 2 uses
  %i.o = icmp ult i64 %.sroa.8.016.i, %i.n
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !3276
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !3271, !noalias !3274, !nonnull !13, !noundef !13
  %i.r = getelementptr inbounds nuw [104 x i8], ptr %i.q, i64 %.sroa.8.016.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.v = load i64, ptr %i.u, align 8, !noundef !13
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.x, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %.sroa.47.0..sroa_idx, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i, %bb.a, %bb.d
  %.sink19 = phi i64 [ 24, %bb.d ], [ 8, %bb.a ], [ 8, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i ]
  %.sink = phi ptr [ @_RNvYNCNvMs0_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtBa_10ArgMatches23try_get_raw_occurrences0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEE9call_onceBg_, %bb.d ], [ null, %bb.a ], [ null, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.sink19
  store ptr %.sink, ptr %i.y, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEE6resizeB1n_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 24 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !13 ; 10 uses
  %i.e = icmp ult i64 %i.d, 384307168202282326
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ugt i64 %1, %i.d
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3281)
  %i.g = sub nuw nsw i64 %i.d, %1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !3281, !nonnull !13, !noundef !13
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %1
  store i64 %1, ptr %i.c, align 8, !alias.scope !3281
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3284)
  %i.k = icmp eq i64 %i.d, %1
  br i1 %i.k, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEE8truncateB1m_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i
  %.sroa.0.03.i.i = phi i64 [ %i.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.03.i.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.03.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3287)
  %i.n = load i64, ptr %i.l, align 8, !range !127, !alias.scope !3290, !noalias !3281, !noundef !13 ; 3 uses
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3294)
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !3297, !noalias !3281, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !3298
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  %i.r = icmp eq i64 %i.m, %i.g
  br i1 %i.r, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEE8truncateB1m_.exit, label %.lr.ph.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEE8truncateB1m_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3299)
  %i.s = load i64, ptr %2, align 8, !range !127, !alias.scope !3299, !noundef !13 ; 3 uses
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEE8truncateB1m_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3305)
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !3308, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !3308
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit

bb.g:                                             ; preds = %bb.a
  %i.w = sub nuw i64 %1, %i.d                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3312)
  %i.x = load i64, ptr %0, align 8, !range !14, !alias.scope !3314, !noalias !3312, !noundef !13
  %i.y = sub nsw i64 %i.x, %i.d
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %bb.h, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEE7reserveB1m_.exit.i, !prof !269

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.w, i64 noundef 8, i64 noundef 24) #43, !noalias !3312
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !3309, !noalias !3312
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEE7reserveB1m_.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEE7reserveB1m_.exit.i: ; preds = %bb.h, %bb.g
  %i.aa = phi i64 [ %i.d, %bb.g ], [ %.pre.i, %bb.h ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !3309, !noalias !3312, !nonnull !13, !noundef !13
  %i.ad = icmp ult i64 %i.aa, 384307168202282326
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.aa ; 4 uses
  %i.af = icmp ugt i64 %i.w, 1
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEE7reserveB1m_.exit.i
  %i.ag = load i64, ptr %i.b, align 8, !range !127, !alias.scope !3317, !noalias !3320, !noundef !13
  %.not.i.i = icmp eq i64 %i.ag, -1
  br i1 %.not.i.i, label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.preheader, label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.i

_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.preheader: ; preds = %.lr.ph.i
  %i.ah = xor i64 %i.d, -1
  %i.ai = add i64 %1, %i.ah                       ; 2 uses
  %i.aj = add i64 %1, -2
  %i.ak = sub i64 %i.aj, %i.d
  %xtraiter = and i64 %i.ai, 3                    ; 3 uses
  %i.al = icmp ult i64 %i.ak, 3
  br i1 %i.al, label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.epil.preheader, label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.preheader.new

_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.preheader.new: ; preds = %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.preheader
  %unroll_iter = and i64 %i.ai, -4
  br label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i

_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i: ; preds = %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.preheader.new
  %.sroa.0.014.us.i = phi ptr [ %i.ae, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.preheader.new ], [ %i.ap, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.preheader.new ], [ %niter.next.3, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3322
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3324)
  store i64 -1, ptr %i.a, align 8, !alias.scope !3323, !noalias !3325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.014.us.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3322
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.014.us.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3322
  store i64 -1, ptr %i.a, align 8, !alias.scope !3326, !noalias !3328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3322
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.014.us.i, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3322
  store i64 -1, ptr %i.a, align 8, !alias.scope !3330, !noalias !3332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3322
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.014.us.i, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3322
  store i64 -1, ptr %i.a, align 8, !alias.scope !3334, !noalias !3336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3322
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.014.us.i, i64 96 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.epil.preheader

_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.epil.preheader: ; preds = %._crit_edge.loopexit.i.unr-lcssa, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.preheader
  %.sroa.0.014.us.i.epil.init = phi ptr [ %i.ae, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.preheader ], [ %i.ap, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.epil

_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.epil: ; preds = %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.epil, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.epil.preheader
  %.sroa.0.014.us.i.epil = phi ptr [ %i.aq, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.epil ], [ %.sroa.0.014.us.i.epil.init, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.epil ], [ 0, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3322
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3324)
  store i64 -1, ptr %i.a, align 8, !alias.scope !3323, !noalias !3325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.014.us.i.epil, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3322
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.014.us.i.epil, i64 24 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.epil, !llvm.loop !3338

._crit_edge.loopexit.i:                           ; preds = %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi ptr [ %i.ap, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.aq, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.us.i.epil ]
  %i.ar = add i64 %i.w, -1
  %i.as = add i64 %i.ar, %i.aa
  br label %._crit_edge.thread.i

._crit_edge.loopexit17.i:                         ; preds = %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.i
  %i.at = add i64 %i.w, -1
  %i.au = add i64 %i.at, %i.aa
  br label %._crit_edge.thread.i

_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.i: ; preds = %.lr.ph.i, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.i
  %.sroa.0.014.i = phi ptr [ %i.aw, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.i ], [ %i.ae, %.lr.ph.i ] ; 2 uses
  %.sroa.03.013.i = phi i64 [ %i.av, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.i ], [ 1, %.lr.ph.i ]
  %i.av = add nuw i64 %.sroa.03.013.i, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3322
  call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  call void @llvm.experimental.noalias.scope.decl(metadata !3324)
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #43, !noalias !3309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.014.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3322
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i, i64 24 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, %i.w
  br i1 %exitcond.not.i, label %._crit_edge.loopexit17.i, label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_5clone5Clone5cloneBQ_.exit.i

._crit_edge.thread.i:                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEE7reserveB1m_.exit.i, %._crit_edge.loopexit17.i, %._crit_edge.loopexit.i
  %.sroa.0.0.lcssa27.i = phi ptr [ %.lcssa, %._crit_edge.loopexit.i ], [ %i.aw, %._crit_edge.loopexit17.i ], [ %i.ae, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEE7reserveB1m_.exit.i ]
  %storemerge.lcssa26.i = phi i64 [ %i.as, %._crit_edge.loopexit.i ], [ %i.au, %._crit_edge.loopexit17.i ], [ %i.aa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEE7reserveB1m_.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa27.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ax = add i64 %storemerge.lcssa26.i, 1
  store i64 %i.ax, ptr %i.c, align 8, !alias.scope !3309, !noalias !3312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit: ; preds = %bb.f, %bb.e, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEE8truncateB1m_.exit, %._crit_edge.thread.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10write_args(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 16               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 16 uses
  %.sroa.0.i.i.sroa.5.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.016.i.sroa.5.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.020.i.sroa.5.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0.sroa.8.i.i.i = alloca [16 x i8], align 8 ; 9 uses
  %.sroa.521.i.i.i = alloca i64, align 8          ; 8 uses
  %.sroa.8.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %.sroa.16.i.i.i = alloca i64, align 8           ; 5 uses
  %.sroa.5.i.i.i = alloca i64, align 8            ; 6 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %.sroa.15.i.i.i = alloca i64, align 8           ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.57 = alloca i64, align 8                 ; 6 uses
  %.sroa.88 = alloca i64, align 8                 ; 5 uses
  %i.t = alloca [32 x i8], align 16               ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 5 uses
  store i64 0, ptr %i.w, align 8
  %.idx = shl nuw nsw i64 %2, 3
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 4 uses
  %i.z = icmp eq i64 %2, 0
  br i1 %i.z, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.af = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ag = load i8, ptr %i.y, align 1, !range !1313, !noalias !3339, !noundef !13
  %i.ah = trunc nuw i8 %i.ag to i1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE6insertB1C_.exit
  %.sroa.0.092 = phi i64 [ 2, %.lr.ph.i.lr.ph ], [ %..i, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE6insertB1C_.exit ] ; 3 uses
  %.sroa.0.0991 = phi ptr [ %1, %.lr.ph.i.lr.ph ], [ %.sroa.0.1, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE6insertB1C_.exit ] ; 2 uses
  br i1 %i.ah, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate10write_args0INtB7_5FnMutTRRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.thread5.us.i
  %i.ai = phi ptr [ %i.aj, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate10write_args0INtB7_5FnMutTRRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.thread5.us.i ], [ %.sroa.0.0991, %.lr.ph.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !noalias !3339, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 592
  %.val.i.i.us.i = load i32, ptr %i.al, align 8, !noalias !3339, !noundef !13 ; 2 uses
  %i.am = and i32 %.val.i.i.us.i, 4
  %.not.i.i.i.us.i = icmp ne i32 %i.am, 0
  %i.an = and i32 %.val.i.i.us.i, 8200
  %or.cond.i = icmp eq i32 %i.an, 8192
  %or.cond13 = or i1 %.not.i.i.i.us.i, %or.cond.i
  br i1 %or.cond13, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate10write_args0INtB7_5FnMutTRRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.thread5.us.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBX_6output13help_templateNtB2z_12HelpTemplate10write_args0EBX_.exit

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate10write_args0INtB7_5FnMutTRRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.thread5.us.i: ; preds = %.lr.ph.split.us.i
  %i.ao = icmp eq ptr %i.aj, %i.x
  br i1 %i.ao, label %.loopexit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate10write_args0INtB7_5FnMutTRRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.thread5.i
  %i.ap = phi ptr [ %i.aq, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate10write_args0INtB7_5FnMutTRRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.thread5.i ], [ %.sroa.0.0991, %.lr.ph.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !noalias !3339, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 592
  %.val.i.i.i = load i32, ptr %i.as, align 8, !noalias !3339, !noundef !13 ; 2 uses
  %i.at = and i32 %.val.i.i.i, 4
  %.not.i.i.i.i = icmp ne i32 %i.at, 0
  %i.au = and i32 %.val.i.i.i, 4104
  %or.cond56.i = icmp eq i32 %i.au, 4096
  %or.cond14 = or i1 %.not.i.i.i.i, %or.cond56.i
  br i1 %or.cond14, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate10write_args0INtB7_5FnMutTRRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.thread5.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBX_6output13help_templateNtB2z_12HelpTemplate10write_args0EBX_.exit

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate10write_args0INtB7_5FnMutTRRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.thread5.i: ; preds = %.lr.ph.split.i
  %i.av = icmp eq ptr %i.aq, %i.x
  br i1 %i.av, label %.loopexit, label %.lr.ph.split.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBX_6output13help_templateNtB2z_12HelpTemplate10write_args0EBX_.exit: ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  %i.aw = phi ptr [ %i.ak, %.lr.ph.split.us.i ], [ %i.ar, %.lr.ph.split.i ] ; 7 uses
  %.sroa.0.1 = phi ptr [ %i.aj, %.lr.ph.split.us.i ], [ %i.aq, %.lr.ph.split.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3343
  store i64 0, ptr %i.s, align 8, !noalias !3343
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3343
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3343
  store i64 1610612768, ptr %i.aa, align 8, !noalias !3343
  store ptr %i.s, ptr %i.r, align 8, !noalias !3343
  store ptr @204, ptr %i.ab, align 8, !noalias !3343
  %i.ax = call noundef zeroext i1 @_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #43, !noalias !3347
  br i1 %i.ax, label %bb.b, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit, !prof !269

bb.b:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBX_6output13help_templateNtB2z_12HelpTemplate10write_args0EBX_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #44, !noalias !3343
  unreachable

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBX_6output13help_templateNtB2z_12HelpTemplate10write_args0EBX_.exit
  %.sroa.01.0.copyload = load i64, ptr %i.s, align 8, !noalias !3348 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3348, !nonnull !13, !noundef !13 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3343
  %i.ay = call fastcc noundef i64 @_RNvNtNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4core13display_width(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload, i64 noundef %.sroa.6.0.copyload) #42 ; 2 uses
  %i.az = icmp eq i64 %.sroa.01.0.copyload, 0
  br i1 %i.az, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.01.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !3349
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit, %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 552
  %i.bb = load ptr, ptr %i.ba, align 8, !noundef !13
  %.not41 = icmp eq ptr %i.bb, null
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10write_args:bb.a
  %xtraiter173 = and i64 %i.gf, 3                 ; 2 uses
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.prol = phi i64 [ %i.gh, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.fl, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter175 = phi i64 [ %prol.iter175.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.gh = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.gi = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.gi)
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.sroa.0.06.i.i.i.i.i.i.prol
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !3528, !nonnull !13, !noundef !13 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 352
  store ptr %i.ez, ptr %i.gl, align 8, !noalias !3528
  %i.gm = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol to i16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 448
  store i16 %i.gm, ptr %i.gn, align 8, !noalias !3528
  %prol.iter175.next = add i64 %prol.iter175, 1   ; 2 uses
  %prol.iter175.cmp.not = icmp eq i64 %prol.iter175.next, %xtraiter173
  br i1 %prol.iter175.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3529

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.unr = phi i64 [ %i.fl, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.gh, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.go = icmp ult i64 %i.gg, 3
  br i1 %i.go, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i = phi i64 [ %i.hh, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.gp = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.sroa.0.06.i.i.i.i.i.i
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !3528, !nonnull !13, !noundef !13 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 352
  store ptr %i.ez, ptr %i.gs, align 8, !noalias !3528
  %i.gt = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i to i16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 448
  store i16 %i.gt, ptr %i.gu, align 8, !noalias !3528
  %i.gv = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 2 ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gp
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !3528, !nonnull !13, !noundef !13 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 352
  store ptr %i.ez, ptr %i.gy, align 8, !noalias !3528
  %i.gz = trunc nuw nsw i64 %i.gp to i16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 448
  store i16 %i.gz, ptr %i.ha, align 8, !noalias !3528
  %i.hb = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 3 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gv
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !3528, !nonnull !13, !noundef !13 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 352
  store ptr %i.ez, ptr %i.he, align 8, !noalias !3528
  %i.hf = trunc nuw nsw i64 %i.gv to i16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 448
  store i16 %i.hf, ptr %i.hg, align 8, !noalias !3528
  %i.hh = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 4 ; 2 uses
  %i.hi = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.hb
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !3528, !nonnull !13, !noundef !13 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 352
  store ptr %i.ez, ptr %i.hl, align 8, !noalias !3528
  %i.hm = trunc nuw nsw i64 %i.hb to i16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 448
  store i16 %i.hm, ptr %i.hn, align 8, !noalias !3528
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.hh, %i.gb
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ae
  switch i16 %i.fc, label %bb.ai [
    i16 5, label %bb.ak
    i16 6, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ho = add nsw i64 %i.fd, -7
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ae
  %.sroa.06.0.i.i.i.i = phi i64 [ 5, %bb.aj ], [ 6, %bb.ai ], [ 4, %bb.ae ], [ 5, %bb.ah ] ; 7 uses
  %.sroa.5.0.i.i.i.i = phi i64 [ 0, %bb.aj ], [ %i.ho, %bb.ai ], [ %i.fd, %bb.ae ], [ 5, %bb.ah ] ; 9 uses
  %.sroa.03.0.i.i.i.i = phi i1 [ true, %bb.aj ], [ true, %bb.ai ], [ false, %bb.ae ], [ false, %bb.ah ]
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !3530
  %i.hp = call noalias noundef align 8 dereferenceable_or_null(552) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 552, i64 noundef range(i64 1, 9) 8) #43, !noalias !3530 ; 13 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.al, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtB6_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE13new_uninit_inB1Z_.exit.i.i.i.i.i, !prof !269

bb.al:                                            ; preds = %bb.ak
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #46, !noalias !3530
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtB6_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE13new_uninit_inB1Z_.exit.i.i.i.i.i: ; preds = %bb.ak
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 352
  store ptr null, ptr %i.hr, align 8, !noalias !3530
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 450 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.sroa.5.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3534)
  %i.ht = load i16, ptr %i.ff, align 2, !noalias !3537, !noundef !13
  %i.hu = zext i16 %i.ht to i64
  %i.hv = xor i64 %.sroa.06.0.i.i.i.i, -1
  %i.hw = add nsw i64 %i.hu, %i.hv                ; 5 uses
  %i.hx = trunc i64 %i.hw to i16
  store i16 %i.hx, ptr %i.hs, align 2, !alias.scope !3534, !noalias !3539
  %i.hy = icmp ult i64 %i.hw, 12
  br i1 %i.hy, label %_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB27_.exit.i.i.i.i.i, label %bb.am, !prof !3443

bb.am:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtB6_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE13new_uninit_inB1Z_.exit.i.i.i.i.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hw, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #44, !noalias !3537
  unreachable

_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB27_.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtB6_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE13new_uninit_inB1Z_.exit.i.i.i.i.i
  %i.hz = getelementptr inbounds nuw [32 x i8], ptr %i.ez, i64 %.sroa.06.0.i.i.i.i ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ez, i64 360 ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.sroa.06.0.i.i.i.i
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !3537, !nonnull !13, !align !239, !noundef !13
  %i.id = add nuw nsw i64 %.sroa.06.0.i.i.i.i, 1  ; 2 uses
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %i.ez, i64 %i.id
  %i.if = shl nuw nsw i64 %i.hw, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(456) %i.hp, ptr nonnull readonly align 8 %i.ie, i64 %i.if, i1 false), !alias.scope !3540, !noalias !3539
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.id
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hp, i64 360
  %i.ii = shl nuw nsw i64 %i.hw, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ih, ptr nonnull readonly align 8 %i.ig, i64 %i.ii, i1 false), !alias.scope !3544, !noalias !3539
  %i.ij = trunc nuw nsw i64 %.sroa.06.0.i.i.i.i to i16
  store i16 %i.ij, ptr %i.ff, align 2, !noalias !3537
  %.sroa.0.i.i.sroa.0.0.copyload.i.i.i = load i64, ptr %i.hz, align 8, !noalias !3504
  %.sroa.0.i.i.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %.sroa.0.i.i.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.0.i.i.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !3504
  %.sroa.0.i.i.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.sroa.5.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !3504
  %i.ik = load i16, ptr %i.hs, align 2, !noalias !3530, !noundef !13 ; 3 uses
  %i.il = zext i16 %i.ik to i64
  %i.im = add nuw nsw i64 %i.il, 1                ; 5 uses
  %i.in = icmp ult i16 %i.ik, 12
  br i1 %i.in, label %bb.an, label %bb.aq, !prof !3443

bb.an:                                            ; preds = %_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB27_.exit.i.i.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.hp, i64 456 ; 6 uses
  %i.ip = zext i16 %i.fg to i64
  %i.iq = sub nuw nsw i64 %i.ip, %.sroa.06.0.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3548)
  call void @llvm.experimental.noalias.scope.decl(metadata !3551)
  %i.ir = icmp eq i64 %i.iq, %i.im
  br i1 %i.ir, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i, label %bb.ao, !prof !159

bb.ao:                                            ; preds = %bb.an
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #44, !noalias !3553
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i: ; preds = %bb.an
  %i.is = getelementptr i8, ptr %i.ez, i64 464
  %i.it = getelementptr [8 x i8], ptr %i.is, i64 %.sroa.06.0.i.i.i.i
  %i.iu = shl nuw nsw i64 %i.im, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.io, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.it, i64 %i.iu, i1 false), !alias.scope !3554, !noalias !3530
  %i.iv = icmp ne i64 %i.fa, 0
  call void @llvm.assume(i1 %i.iv)
  call void @llvm.experimental.noalias.scope.decl(metadata !3555)
  %xtraiter = and i64 %i.im, 3                    ; 3 uses
  %i.iw = icmp ult i16 %i.ik, 3
  br i1 %i.iw, label %.epil.preheader, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i.new

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i.new: ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i
  %unroll_iter = and i64 %i.im, 28
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i.new
  %.sroa.0.09.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i.new ], [ %i.jp, %bb.ap ] ; 6 uses
  %niter = phi i64 [ 0, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i.new ], [ %niter.next.3, %bb.ap ]
  %i.ix = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %.sroa.0.09.i.i.i.i.i.i.i
  %i.iz = load ptr, ptr %i.iy, align 8, !alias.scope !3555, !noalias !3558, !nonnull !13, !noundef !13 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 352
  store ptr %i.hp, ptr %i.ja, align 8, !noalias !3561
  %i.jb = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i to i16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 448
  store i16 %i.jb, ptr %i.jc, align 8, !noalias !3558
  %i.jd = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.ix
  %i.jf = load ptr, ptr %i.je, align 8, !alias.scope !3555, !noalias !3558, !nonnull !13, !noundef !13 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 352
  store ptr %i.hp, ptr %i.jg, align 8, !noalias !3561
  %i.jh = trunc nuw nsw i64 %i.ix to i16
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 448
  store i16 %i.jh, ptr %i.ji, align 8, !noalias !3558
  %i.jj = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.jd
  %i.jl = load ptr, ptr %i.jk, align 8, !alias.scope !3555, !noalias !3558, !nonnull !13, !noundef !13 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 352
  store ptr %i.hp, ptr %i.jm, align 8, !noalias !3561
  %i.jn = trunc nuw nsw i64 %i.jd to i16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 448
  store i16 %i.jn, ptr %i.jo, align 8, !noalias !3558
  %i.jp = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.jj
  %i.jr = load ptr, ptr %i.jq, align 8, !alias.scope !3555, !noalias !3558, !nonnull !13, !noundef !13 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 352
  store ptr %i.hp, ptr %i.js, align 8, !noalias !3561
  %i.jt = trunc nuw nsw i64 %i.jj to i16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 448
  store i16 %i.jt, ptr %i.ju, align 8, !noalias !3558
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB28_.exit.i.i.i.i.unr-lcssa, label %bb.ap

bb.aq:                                            ; preds = %_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB27_.exit.i.i.i.i.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.im, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #44, !noalias !3530
  unreachable

_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB28_.exit.i.i.i.i.unr-lcssa: ; preds = %bb.ap
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB28_.exit.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB28_.exit.i.i.i.i.unr-lcssa, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i ], [ %i.jp, %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB28_.exit.i.i.i.i.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod170)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.jv, %bb.ar ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ar ]
  %i.jv = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.epil, 1
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %.sroa.0.09.i.i.i.i.i.i.i.epil
  %i.jx = load ptr, ptr %i.jw, align 8, !alias.scope !3555, !noalias !3558, !nonnull !13, !noundef !13 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 352
  store ptr %i.hp, ptr %i.jy, align 8, !noalias !3561
  %i.jz = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.epil to i16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 448
  store i16 %i.jz, ptr %i.ka, align 8, !noalias !3558
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB28_.exit.i.i.i.i, label %bb.ar, !llvm.loop !3562

_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB28_.exit.i.i.i.i: ; preds = %bb.ar, %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB28_.exit.i.i.i.i.unr-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.i.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.sroa.5.i.i.i, i64 16, i1 false), !noalias !3563
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.sroa.5.i.i.i)
  %spec.select.i39.i.i.i = select i1 %.sroa.03.0.i.i.i.i, ptr %i.hp, ptr %i.ez ; 12 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %spec.select.i39.i.i.i, i64 450 ; 2 uses
  %i.kc = load i16, ptr %i.kb, align 2, !noalias !3564, !noundef !13 ; 2 uses
  %i.kd = zext i16 %i.kc to i64                   ; 5 uses
  %i.ke = add i16 %i.kc, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !3569)
  %i.kf = add nuw nsw i64 %.sroa.5.0.i.i.i.i, 1   ; 7 uses
  %.not.i8.not.i.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i.i, %i.kd
  %i.kg = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i39.i.i.i, i64 %.sroa.5.0.i.i.i.i ; 7 uses
  br i1 %.not.i8.not.i.i.i.i, label %bb.as, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEB1b_.exit.i9.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEB1b_.exit.i9.i.i.i.i: ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB28_.exit.i.i.i.i
  store i64 %.sroa.0.sroa.0.087.i.i.i, ptr %i.kg, align 8, !alias.scope !3572, !noalias !3574
  %.sroa.735.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i64 %.sroa.0.sroa.7.086.i.i.i, ptr %.sroa.735.0..sroa_idx.i.i.i, align 8, !alias.scope !3572, !noalias !3574
  %.sroa.842.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.842.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, i64 16, i1 false), !noalias !3500
  %i.kh = getelementptr inbounds nuw i8, ptr %spec.select.i39.i.i.i, i64 360
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.sroa.5.0.i.i.i.i
  store ptr %.sroa.7.092.i.i.i, ptr %i.ki, align 8, !alias.scope !3575, !noalias !3578
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i10.i.i.i.i

bb.as:                                            ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB28_.exit.i.i.i.i
  %i.kj = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i39.i.i.i, i64 %i.kf
  %i.kk = sub nuw nsw i64 %i.kd, %.sroa.5.0.i.i.i.i ; 2 uses
  %i.kl = shl nuw nsw i64 %i.kk, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kj, ptr nonnull align 8 %i.kg, i64 %i.kl, i1 false), !alias.scope !3580, !noalias !3581
  store i64 %.sroa.0.sroa.0.087.i.i.i, ptr %i.kg, align 8, !alias.scope !3572, !noalias !3574
  %.sroa.735.0..sroa_idx36.i.i.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i64 %.sroa.0.sroa.7.086.i.i.i, ptr %.sroa.735.0..sroa_idx36.i.i.i, align 8, !alias.scope !3572, !noalias !3574
  %.sroa.842.0..sroa_idx43.i.i.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.842.0..sroa_idx43.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, i64 16, i1 false), !noalias !3500
  %i.km = getelementptr inbounds nuw i8, ptr %spec.select.i39.i.i.i, i64 360 ; 2 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %.sroa.5.0.i.i.i.i ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kf
  %i.kp = shl nuw nsw i64 %i.kk, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ko, ptr nonnull align 8 %i.kn, i64 %i.kp, i1 false), !alias.scope !3575, !noalias !3578
  store ptr %.sroa.7.092.i.i.i, ptr %i.kn, align 8, !alias.scope !3575, !noalias !3578
  %i.kq = getelementptr inbounds nuw i8, ptr %spec.select.i39.i.i.i, i64 456 ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kf
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %.sroa.5.0.i.i.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kt, ptr nonnull align 8 %i.kr, i64 %i.kp, i1 false), !alias.scope !3582, !noalias !3585
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i10.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i10.i.i.i.i: ; preds = %bb.as, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEB1b_.exit.i9.i.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %spec.select.i39.i.i.i, i64 456 ; 6 uses
  %i.kv = add nuw nsw i64 %i.kd, 2                ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kf
  store ptr %.sroa.10.089.i.i.i, ptr %i.kw, align 8, !alias.scope !3582, !noalias !3585
  store i16 %i.ke, ptr %i.kb, align 2, !noalias !3585
  %i.kx = icmp samesign ult i64 %i.kf, %i.kv
  br i1 %i.kx, label %.lr.ph.i.i11.i.i.i.i.preheader, label %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i

.lr.ph.i.i11.i.i.i.i.preheader:                   ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i10.i.i.i.i
  %i.ky = add nuw nsw i64 %i.kd, 1
  %i.kz = sub nsw i64 %i.ky, %.sroa.5.0.i.i.i.i
  %i.la = sub nsw i64 %i.kd, %.sroa.5.0.i.i.i.i
  %xtraiter171 = and i64 %i.kz, 3                 ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol

.lr.ph.i.i11.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i11.i.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.i.prol = phi i64 [ %i.lb, %.lr.ph.i.i11.i.i.i.i.prol ], [ %i.kf, %.lr.ph.i.i11.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.i.preheader ]
  %i.lb = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 1 ; 2 uses
  %i.lc = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.lc)
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %.sroa.0.06.i.i12.i.i.i.i.prol
  %i.le = load ptr, ptr %i.ld, align 8, !noalias !3585, !nonnull !13, !noundef !13 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.lf, align 8, !noalias !3585
  %i.lg = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol to i16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 448
  store i16 %i.lg, ptr %i.lh, align 8, !noalias !3585
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter171
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol, !llvm.loop !3586

.lr.ph.i.i11.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i11.i.i.i.i.prol, %.lr.ph.i.i11.i.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.i.unr = phi i64 [ %i.kf, %.lr.ph.i.i11.i.i.i.i.preheader ], [ %i.lb, %.lr.ph.i.i11.i.i.i.i.prol ]
  %i.li = icmp ult i64 %i.la, 3
  br i1 %i.li, label %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i
  %.sroa.0.06.i.i12.i.i.i.i = phi i64 [ %i.mb, %.lr.ph.i.i11.i.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.i.unr, %.lr.ph.i.i11.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.lj = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 1 ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %.sroa.0.06.i.i12.i.i.i.i
  %i.ll = load ptr, ptr %i.lk, align 8, !noalias !3585, !nonnull !13, !noundef !13 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.lm, align 8, !noalias !3585
  %i.ln = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i to i16
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 448
  store i16 %i.ln, ptr %i.lo, align 8, !noalias !3585
  %i.lp = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 2 ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.lj
  %i.lr = load ptr, ptr %i.lq, align 8, !noalias !3585, !nonnull !13, !noundef !13 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.ls, align 8, !noalias !3585
  %i.lt = trunc nuw nsw i64 %i.lj to i16
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 448
  store i16 %i.lt, ptr %i.lu, align 8, !noalias !3585
  %i.lv = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 3 ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.lp
  %i.lx = load ptr, ptr %i.lw, align 8, !noalias !3585, !nonnull !13, !noundef !13 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.ly, align 8, !noalias !3585
  %i.lz = trunc nuw nsw i64 %i.lp to i16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 448
  store i16 %i.lz, ptr %i.ma, align 8, !noalias !3585
  %i.mb = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 4 ; 2 uses
  %i.mc = icmp ult i64 %.sroa.0.06.i.i12.i.i.i.i, 9
  call void @llvm.assume(i1 %i.mc)
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.lv
  %i.me = load ptr, ptr %i.md, align 8, !noalias !3585, !nonnull !13, !noundef !13 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.mf, align 8, !noalias !3585
  %i.mg = trunc nuw nsw i64 %i.lv to i16
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 448
  store i16 %i.mg, ptr %i.mh, align 8, !noalias !3585
  %exitcond.not.i.i13.i.i.i.i.3 = icmp eq i64 %i.mb, %i.kv
  br i1 %exitcond.not.i.i13.i.i.i.i.3, label %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i

_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i: ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i10.i.i.i.i
  store i64 %.sroa.0.i.i.sroa.4.0.copyload.i.i.i, ptr %.sroa.521.i.i.i, align 8, !noalias !3587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.i.sroa.5.i.i.i, i64 16, i1 false), !noalias !3587
  br label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i

_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i
  %.sroa.14.0.i.i.i = phi ptr [ %i.hp, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i ], [ undef, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.823.0.i.i.i = phi ptr [ %i.ic, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i ], [ undef, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.019.0.i.i.i = phi i64 [ %.sroa.0.i.i.sroa.0.0.copyload.i.i.i, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i ], [ undef, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sink42.i.sroa.phi.i.i.i = phi ptr [ %.sroa.16.i.i.i, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i ], [ %.sroa.521.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i ], [ %.sroa.521.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.521.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sink.i40.i.i.i = phi i64 [ %i.fa, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i ], [ -1, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i ], [ -1, %.lr.ph.i.i.i.i.i.i ], [ -1, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store i64 %.sink.i40.i.i.i, ptr %.sink42.i.sroa.phi.i.i.i, align 8, !alias.scope !3501, !noalias !3587
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.016.i.sroa.5.i.i.i)
  %.sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.0..sroa.521.i.i.0..sroa.521.i.0..sroa.521.i.0..sroa.521.0..sroa.521.0..sroa.521.8..i.i.i = load i64, ptr %.sroa.521.i.i.i, align 8, !range !127, !noalias !3476, !noundef !13 ; 3 uses
  %.not37.i.i.i = icmp eq i64 %.sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.0..sroa.521.i.i.0..sroa.521.i.0..sroa.521.i.0..sroa.521.0..sroa.521.0..sroa.521.8..i.i.i, -1
  br i1 %.not37.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i, i64 16, i1 false), !noalias !3476
  %.sroa.16.i.i.i.0..sroa.16.i.i.i.0..sroa.16.i.i.i.0..sroa.16.i.i.0..sroa.16.i.i.0..sroa.16.i.0..sroa.16.i.0..sroa.16.0..sroa.16.0..sroa.16.64..i.i.i = load i64, ptr %.sroa.16.i.i.i, align 8, !noalias !3476, !noundef !13 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i.i)
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ez, i64 352
  %i.mj = load ptr, ptr %i.mi, align 8, !noalias !3477, !noundef !13 ; 2 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.i44, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.au:                                            ; preds = %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i.i)
  br label %_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3Y_11VacantEntryB1D_B21_E12insert_entry0EB28_.exit.i.i

_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3Y_11VacantEntryB1D_B21_E12insert_entry0EB28_.exit.i.i: ; preds = %bb.au, %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryTjNtNtBf_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE12insert_entry0B1Q_.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.8.i.i.i)
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjNtNtBd_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE12insert_entryB1O_.exit.i

bb.av:                                            ; preds = %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE5entryB1C_.exit.thread72.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !3588
  %i.mk = call noalias noundef align 8 dereferenceable_or_null(456) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 456, i64 noundef range(i64 1, 9) 8) #43, !noalias !3588 ; 8 uses
end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate17write_subcommands:bb.a
  %xtraiter349 = and i64 %i.mb, 3                 ; 2 uses
  %lcmp.mod350.not = icmp eq i64 %xtraiter349, 0
  br i1 %lcmp.mod350.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.prol = phi i64 [ %i.md, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.lh, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter351 = phi i64 [ %prol.iter351.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.md = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.me = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.me)
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %.sroa.0.06.i.i.i.i.i.i.prol
  %i.mg = load ptr, ptr %i.mf, align 8, !noalias !4807, !nonnull !13, !noundef !13 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 352
  store ptr %i.kv, ptr %i.mh, align 8, !noalias !4807
  %i.mi = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol to i16
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 448
  store i16 %i.mi, ptr %i.mj, align 8, !noalias !4807
  %prol.iter351.next = add i64 %prol.iter351, 1   ; 2 uses
  %prol.iter351.cmp.not = icmp eq i64 %prol.iter351.next, %xtraiter349
  br i1 %prol.iter351.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !4808

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.unr = phi i64 [ %i.lh, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.md, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.mk = icmp ult i64 %i.mc, 3
  br i1 %i.mk, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i = phi i64 [ %i.nd, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.ml = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 1 ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %.sroa.0.06.i.i.i.i.i.i
  %i.mn = load ptr, ptr %i.mm, align 8, !noalias !4807, !nonnull !13, !noundef !13 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 352
  store ptr %i.kv, ptr %i.mo, align 8, !noalias !4807
  %i.mp = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i to i16
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 448
  store i16 %i.mp, ptr %i.mq, align 8, !noalias !4807
  %i.mr = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 2 ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.ml
  %i.mt = load ptr, ptr %i.ms, align 8, !noalias !4807, !nonnull !13, !noundef !13 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 352
  store ptr %i.kv, ptr %i.mu, align 8, !noalias !4807
  %i.mv = trunc nuw nsw i64 %i.ml to i16
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 448
  store i16 %i.mv, ptr %i.mw, align 8, !noalias !4807
  %i.mx = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 3 ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.mr
  %i.mz = load ptr, ptr %i.my, align 8, !noalias !4807, !nonnull !13, !noundef !13 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 352
  store ptr %i.kv, ptr %i.na, align 8, !noalias !4807
  %i.nb = trunc nuw nsw i64 %i.mr to i16
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 448
  store i16 %i.nb, ptr %i.nc, align 8, !noalias !4807
  %i.nd = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 4 ; 2 uses
  %i.ne = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.ne)
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.mx
  %i.ng = load ptr, ptr %i.nf, align 8, !noalias !4807, !nonnull !13, !noundef !13 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 352
  store ptr %i.kv, ptr %i.nh, align 8, !noalias !4807
  %i.ni = trunc nuw nsw i64 %i.mx to i16
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 448
  store i16 %i.ni, ptr %i.nj, align 8, !noalias !4807
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.nd, %i.lx
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ax
  switch i16 %i.ky, label %bb.bb [
    i16 5, label %bb.bd
    i16 6, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.nk = add nsw i64 %i.kz, -7
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ax
  %.sroa.06.0.i.i.i.i = phi i64 [ 5, %bb.bc ], [ 6, %bb.bb ], [ 4, %bb.ax ], [ 5, %bb.ba ] ; 7 uses
  %.sroa.5.0.i.i.i.i = phi i64 [ 0, %bb.bc ], [ %i.nk, %bb.bb ], [ %i.kz, %bb.ax ], [ 5, %bb.ba ] ; 9 uses
  %.sroa.03.0.i.i.i.i = phi i1 [ true, %bb.bc ], [ true, %bb.bb ], [ false, %bb.ax ], [ false, %bb.ba ]
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !4809
  %i.nl = call noalias noundef align 8 dereferenceable_or_null(552) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 552, i64 noundef range(i64 1, 9) 8) #43, !noalias !4809 ; 13 uses
  %i.nm = icmp eq ptr %i.nl, null
  br i1 %i.nm, label %bb.be, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1A_7command7CommandEE13new_uninit_inB1C_.exit.i.i.i.i.i, !prof !269

bb.be:                                            ; preds = %bb.bd
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #46, !noalias !4809
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1A_7command7CommandEE13new_uninit_inB1C_.exit.i.i.i.i.i: ; preds = %bb.bd
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 352
  store ptr null, ptr %i.nn, align 8, !noalias !4809
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 450 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.sroa.5.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !4813)
  %i.np = load i16, ptr %i.lb, align 2, !noalias !4816, !noundef !13
  %i.nq = zext i16 %i.np to i64
  %i.nr = xor i64 %.sroa.06.0.i.i.i.i, -1
  %i.ns = add nsw i64 %i.nq, %i.nr                ; 5 uses
  %i.nt = trunc i64 %i.ns to i16
  store i16 %i.nt, ptr %i.no, align 2, !alias.scope !4813, !noalias !4818
  %i.nu = icmp ult i64 %i.ns, 12
  br i1 %i.nu, label %_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1K_.exit.i.i.i.i.i, label %bb.bf, !prof !3443

bb.bf:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1A_7command7CommandEE13new_uninit_inB1C_.exit.i.i.i.i.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ns, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #44, !noalias !4816
  unreachable

_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1K_.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1A_7command7CommandEE13new_uninit_inB1C_.exit.i.i.i.i.i
  %i.nv = getelementptr inbounds nuw [32 x i8], ptr %i.kv, i64 %.sroa.06.0.i.i.i.i ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.kv, i64 360 ; 2 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %.sroa.06.0.i.i.i.i
  %i.ny = load ptr, ptr %i.nx, align 8, !noalias !4816, !nonnull !13, !align !239, !noundef !13
  %i.nz = add nuw nsw i64 %.sroa.06.0.i.i.i.i, 1  ; 2 uses
  %i.oa = getelementptr inbounds nuw [32 x i8], ptr %i.kv, i64 %i.nz
  %i.ob = shl nuw nsw i64 %i.ns, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(456) %i.nl, ptr nonnull readonly align 8 %i.oa, i64 %i.ob, i1 false), !alias.scope !4819, !noalias !4818
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.nz
  %i.od = getelementptr inbounds nuw i8, ptr %i.nl, i64 360
  %i.oe = shl nuw nsw i64 %i.ns, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.od, ptr nonnull readonly align 8 %i.oc, i64 %i.oe, i1 false), !alias.scope !4823, !noalias !4818
  %i.of = trunc nuw nsw i64 %.sroa.06.0.i.i.i.i to i16
  store i16 %i.of, ptr %i.lb, align 2, !noalias !4816
  %.sroa.0.i.i.sroa.0.0.copyload.i.i.i = load i64, ptr %i.nv, align 8, !noalias !4783
  %.sroa.0.i.i.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %.sroa.0.i.i.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.0.i.i.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4783
  %.sroa.0.i.i.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.sroa.5.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !4783
  %i.og = load i16, ptr %i.no, align 2, !noalias !4809, !noundef !13 ; 3 uses
  %i.oh = zext i16 %i.og to i64
  %i.oi = add nuw nsw i64 %i.oh, 1                ; 5 uses
  %i.oj = icmp ult i16 %i.og, 12
  br i1 %i.oj, label %bb.bg, label %bb.bj, !prof !3443

bb.bg:                                            ; preds = %_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1K_.exit.i.i.i.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nl, i64 456 ; 6 uses
  %i.ol = zext i16 %i.lc to i64
  %i.om = sub nuw nsw i64 %i.ol, %.sroa.06.0.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4827)
  call void @llvm.experimental.noalias.scope.decl(metadata !4830)
  %i.on = icmp eq i64 %i.om, %i.oi
  br i1 %i.on, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i, label %bb.bh, !prof !159

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #44, !noalias !4832
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i: ; preds = %bb.bg
  %i.oo = getelementptr i8, ptr %i.kv, i64 464
  %i.op = getelementptr [8 x i8], ptr %i.oo, i64 %.sroa.06.0.i.i.i.i
  %i.oq = shl nuw nsw i64 %i.oi, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ok, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.op, i64 %i.oq, i1 false), !alias.scope !4833, !noalias !4809
  %i.or = icmp ne i64 %i.kw, 0
  call void @llvm.assume(i1 %i.or)
  call void @llvm.experimental.noalias.scope.decl(metadata !4834)
  %xtraiter = and i64 %i.oi, 3                    ; 3 uses
  %i.os = icmp ult i16 %i.og, 3
  br i1 %i.os, label %.epil.preheader, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i.new

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i.new: ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i
  %unroll_iter = and i64 %i.oi, 28
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i.new
  %.sroa.0.09.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i.new ], [ %i.pl, %bb.bi ] ; 6 uses
  %niter = phi i64 [ 0, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i.new ], [ %niter.next.3, %bb.bi ]
  %i.ot = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %.sroa.0.09.i.i.i.i.i.i.i
  %i.ov = load ptr, ptr %i.ou, align 8, !alias.scope !4834, !noalias !4837, !nonnull !13, !noundef !13 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 352
  store ptr %i.nl, ptr %i.ow, align 8, !noalias !4840
  %i.ox = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i to i16
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 448
  store i16 %i.ox, ptr %i.oy, align 8, !noalias !4837
  %i.oz = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %i.ot
  %i.pb = load ptr, ptr %i.pa, align 8, !alias.scope !4834, !noalias !4837, !nonnull !13, !noundef !13 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 352
  store ptr %i.nl, ptr %i.pc, align 8, !noalias !4840
  %i.pd = trunc nuw nsw i64 %i.ot to i16
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 448
  store i16 %i.pd, ptr %i.pe, align 8, !noalias !4837
  %i.pf = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %i.oz
  %i.ph = load ptr, ptr %i.pg, align 8, !alias.scope !4834, !noalias !4837, !nonnull !13, !noundef !13 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 352
  store ptr %i.nl, ptr %i.pi, align 8, !noalias !4840
  %i.pj = trunc nuw nsw i64 %i.oz to i16
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 448
  store i16 %i.pj, ptr %i.pk, align 8, !noalias !4837
  %i.pl = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %i.pf
  %i.pn = load ptr, ptr %i.pm, align 8, !alias.scope !4834, !noalias !4837, !nonnull !13, !noundef !13 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 352
  store ptr %i.nl, ptr %i.po, align 8, !noalias !4840
  %i.pp = trunc nuw nsw i64 %i.pf to i16
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 448
  store i16 %i.pp, ptr %i.pq, align 8, !noalias !4837
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i.i.unr-lcssa, label %bb.bi

bb.bj:                                            ; preds = %_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1K_.exit.i.i.i.i.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.oi, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #44, !noalias !4809
  unreachable

_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i.i.unr-lcssa: ; preds = %bb.bi
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i.i.unr-lcssa, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i ], [ %i.pl, %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i.i.unr-lcssa ]
  %lcmp.mod346 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod346)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.pr, %bb.bk ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bk ]
  %i.pr = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.epil, 1
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %.sroa.0.09.i.i.i.i.i.i.i.epil
  %i.pt = load ptr, ptr %i.ps, align 8, !alias.scope !4834, !noalias !4837, !nonnull !13, !noundef !13 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 352
  store ptr %i.nl, ptr %i.pu, align 8, !noalias !4840
  %i.pv = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.epil to i16
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 448
  store i16 %i.pv, ptr %i.pw, align 8, !noalias !4837
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i.i, label %bb.bk, !llvm.loop !4841

_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i.i: ; preds = %bb.bk, %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i.i.unr-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.i.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.sroa.5.i.i.i, i64 16, i1 false), !noalias !4842
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.sroa.5.i.i.i)
  %spec.select.i39.i.i.i = select i1 %.sroa.03.0.i.i.i.i, ptr %i.nl, ptr %i.kv ; 12 uses
  %i.px = getelementptr inbounds nuw i8, ptr %spec.select.i39.i.i.i, i64 450 ; 2 uses
  %i.py = load i16, ptr %i.px, align 2, !noalias !4843, !noundef !13 ; 2 uses
  %i.pz = zext i16 %i.py to i64                   ; 5 uses
  %i.qa = add i16 %i.py, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !4848)
  %i.qb = add nuw nsw i64 %.sroa.5.0.i.i.i.i, 1   ; 7 uses
  %.not.i8.not.i.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i.i, %i.pz
  %i.qc = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i39.i.i.i, i64 %.sroa.5.0.i.i.i.i ; 7 uses
  br i1 %.not.i8.not.i.i.i.i, label %bb.bl, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEB1b_.exit.i9.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEB1b_.exit.i9.i.i.i.i: ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i.i
  store i64 %.sroa.0.sroa.0.087.i.i.i, ptr %i.qc, align 8, !alias.scope !4851, !noalias !4853
  %.sroa.735.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i64 %.sroa.0.sroa.7.086.i.i.i, ptr %.sroa.735.0..sroa_idx.i.i.i, align 8, !alias.scope !4851, !noalias !4853
  %.sroa.842.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.842.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, i64 16, i1 false), !noalias !4779
  %i.qd = getelementptr inbounds nuw i8, ptr %spec.select.i39.i.i.i, i64 360
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %.sroa.5.0.i.i.i.i
  store ptr %.sroa.7.092.i.i.i, ptr %i.qe, align 8, !alias.scope !4854, !noalias !4857
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2a_7command7CommandEEEB2c_.exit.i10.i.i.i.i

bb.bl:                                            ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i.i
  %i.qf = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i39.i.i.i, i64 %i.qb
  %i.qg = sub nuw nsw i64 %i.pz, %.sroa.5.0.i.i.i.i ; 2 uses
  %i.qh = shl nuw nsw i64 %i.qg, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qf, ptr nonnull align 8 %i.qc, i64 %i.qh, i1 false), !alias.scope !4859, !noalias !4860
  store i64 %.sroa.0.sroa.0.087.i.i.i, ptr %i.qc, align 8, !alias.scope !4851, !noalias !4853
  %.sroa.735.0..sroa_idx36.i.i.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i64 %.sroa.0.sroa.7.086.i.i.i, ptr %.sroa.735.0..sroa_idx36.i.i.i, align 8, !alias.scope !4851, !noalias !4853
  %.sroa.842.0..sroa_idx43.i.i.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.842.0..sroa_idx43.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, i64 16, i1 false), !noalias !4779
  %i.qi = getelementptr inbounds nuw i8, ptr %spec.select.i39.i.i.i, i64 360 ; 2 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %.sroa.5.0.i.i.i.i ; 2 uses
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.qb
  %i.ql = shl nuw nsw i64 %i.qg, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qk, ptr nonnull align 8 %i.qj, i64 %i.ql, i1 false), !alias.scope !4854, !noalias !4857
  store ptr %.sroa.7.092.i.i.i, ptr %i.qj, align 8, !alias.scope !4854, !noalias !4857
  %i.qm = getelementptr inbounds nuw i8, ptr %spec.select.i39.i.i.i, i64 456 ; 2 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.qb
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %.sroa.5.0.i.i.i.i
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qp, ptr nonnull align 8 %i.qn, i64 %i.ql, i1 false), !alias.scope !4861, !noalias !4864
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2a_7command7CommandEEEB2c_.exit.i10.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2a_7command7CommandEEEB2c_.exit.i10.i.i.i.i: ; preds = %bb.bl, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEB1b_.exit.i9.i.i.i.i
  %i.qq = getelementptr inbounds nuw i8, ptr %spec.select.i39.i.i.i, i64 456 ; 6 uses
  %i.qr = add nuw nsw i64 %i.pz, 2                ; 2 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.qb
  store ptr %.sroa.10.089.i.i.i, ptr %i.qs, align 8, !alias.scope !4861, !noalias !4864
  store i16 %i.qa, ptr %i.px, align 2, !noalias !4864
  %i.qt = icmp samesign ult i64 %i.qb, %i.qr
  br i1 %i.qt, label %.lr.ph.i.i11.i.i.i.i.preheader, label %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1K_.exit15.i.i.i.i

.lr.ph.i.i11.i.i.i.i.preheader:                   ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2a_7command7CommandEEEB2c_.exit.i10.i.i.i.i
  %i.qu = add nuw nsw i64 %i.pz, 1
  %i.qv = sub nsw i64 %i.qu, %.sroa.5.0.i.i.i.i
  %i.qw = sub nsw i64 %i.pz, %.sroa.5.0.i.i.i.i
  %xtraiter347 = and i64 %i.qv, 3                 ; 2 uses
  %lcmp.mod348.not = icmp eq i64 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol

.lr.ph.i.i11.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i11.i.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.i.prol = phi i64 [ %i.qx, %.lr.ph.i.i11.i.i.i.i.prol ], [ %i.qb, %.lr.ph.i.i11.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.i.preheader ]
  %i.qx = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 1 ; 2 uses
  %i.qy = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.qy)
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %.sroa.0.06.i.i12.i.i.i.i.prol
  %i.ra = load ptr, ptr %i.qz, align 8, !noalias !4864, !nonnull !13, !noundef !13 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.rb, align 8, !noalias !4864
  %i.rc = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol to i16
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 448
  store i16 %i.rc, ptr %i.rd, align 8, !noalias !4864
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter347
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol, !llvm.loop !4865

.lr.ph.i.i11.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i11.i.i.i.i.prol, %.lr.ph.i.i11.i.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.i.unr = phi i64 [ %i.qb, %.lr.ph.i.i11.i.i.i.i.preheader ], [ %i.qx, %.lr.ph.i.i11.i.i.i.i.prol ]
  %i.re = icmp ult i64 %i.qw, 3
  br i1 %i.re, label %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1K_.exit15.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i
  %.sroa.0.06.i.i12.i.i.i.i = phi i64 [ %i.rx, %.lr.ph.i.i11.i.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.i.unr, %.lr.ph.i.i11.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.rf = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 1 ; 2 uses
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %.sroa.0.06.i.i12.i.i.i.i
  %i.rh = load ptr, ptr %i.rg, align 8, !noalias !4864, !nonnull !13, !noundef !13 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.ri, align 8, !noalias !4864
  %i.rj = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i to i16
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 448
  store i16 %i.rj, ptr %i.rk, align 8, !noalias !4864
  %i.rl = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 2 ; 2 uses
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.rf
  %i.rn = load ptr, ptr %i.rm, align 8, !noalias !4864, !nonnull !13, !noundef !13 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.ro, align 8, !noalias !4864
  %i.rp = trunc nuw nsw i64 %i.rf to i16
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 448
  store i16 %i.rp, ptr %i.rq, align 8, !noalias !4864
  %i.rr = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 3 ; 2 uses
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.rl
  %i.rt = load ptr, ptr %i.rs, align 8, !noalias !4864, !nonnull !13, !noundef !13 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.ru, align 8, !noalias !4864
  %i.rv = trunc nuw nsw i64 %i.rl to i16
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 448
  store i16 %i.rv, ptr %i.rw, align 8, !noalias !4864
  %i.rx = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 4 ; 2 uses
  %i.ry = icmp ult i64 %.sroa.0.06.i.i12.i.i.i.i, 9
  call void @llvm.assume(i1 %i.ry)
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.rr
  %i.sa = load ptr, ptr %i.rz, align 8, !noalias !4864, !nonnull !13, !noundef !13 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.sb, align 8, !noalias !4864
  %i.sc = trunc nuw nsw i64 %i.rr to i16
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sa, i64 448
  store i16 %i.sc, ptr %i.sd, align 8, !noalias !4864
  %exitcond.not.i.i13.i.i.i.i.3 = icmp eq i64 %i.rx, %i.qr
  br i1 %exitcond.not.i.i13.i.i.i.i.3, label %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1K_.exit15.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i

_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1K_.exit15.i.i.i.i: ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2a_7command7CommandEEEB2c_.exit.i10.i.i.i.i
  store i64 %.sroa.0.i.i.sroa.4.0.copyload.i.i.i, ptr %.sroa.521.i.i.i, align 8, !noalias !4866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.i.sroa.5.i.i.i, i64 16, i1 false), !noalias !4866
  br label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i

_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1K_.exit15.i.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2a_7command7CommandEEEB2c_.exit.i.i.i.i.i
  %.sroa.14.0.i.i.i = phi ptr [ %i.nl, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1K_.exit15.i.i.i.i ], [ undef, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2a_7command7CommandEEEB2c_.exit.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.823.0.i.i.i = phi ptr [ %i.ny, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1K_.exit15.i.i.i.i ], [ undef, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2a_7command7CommandEEEB2c_.exit.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.019.0.i.i.i = phi i64 [ %.sroa.0.i.i.sroa.0.0.copyload.i.i.i, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1K_.exit15.i.i.i.i ], [ undef, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2a_7command7CommandEEEB2c_.exit.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sink42.i.sroa.phi.i.i.i = phi ptr [ %.sroa.16.i.i.i, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1K_.exit15.i.i.i.i ], [ %.sroa.521.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2a_7command7CommandEEEB2c_.exit.i.i.i.i.i ], [ %.sroa.521.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.521.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sink.i40.i.i.i = phi i64 [ %i.kw, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1K_.exit15.i.i.i.i ], [ -1, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2a_7command7CommandEEEB2c_.exit.i.i.i.i.i ], [ -1, %.lr.ph.i.i.i.i.i.i ], [ -1, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store i64 %.sink.i40.i.i.i, ptr %.sink42.i.sroa.phi.i.i.i, align 8, !alias.scope !4780, !noalias !4866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.016.i.sroa.5.i.i.i)
  %.sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.0..sroa.521.i.i.0..sroa.521.i.0..sroa.521.i.0..sroa.521.0..sroa.521.0..sroa.521.8..i.i.i = load i64, ptr %.sroa.521.i.i.i, align 8, !range !127, !noalias !4755, !noundef !13 ; 3 uses
  %.not37.i.i.i = icmp eq i64 %.sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.0..sroa.521.i.i.0..sroa.521.i.0..sroa.521.i.0..sroa.521.0..sroa.521.0..sroa.521.8..i.i.i, -1
  br i1 %.not37.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i, i64 16, i1 false), !noalias !4755
  %.sroa.16.i.i.i.0..sroa.16.i.i.i.0..sroa.16.i.i.i.0..sroa.16.i.i.0..sroa.16.i.i.0..sroa.16.i.0..sroa.16.i.0..sroa.16.0..sroa.16.0..sroa.16.64..i.i.i = load i64, ptr %.sroa.16.i.i.i, align 8, !noalias !4755, !noundef !13 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i.i)
  %i.se = getelementptr inbounds nuw i8, ptr %i.kv, i64 352
  %i.sf = load ptr, ptr %i.se, align 8, !noalias !4756, !noundef !13 ; 2 uses
  %.not.i.i.i.i132 = icmp eq ptr %i.sf, null
  br i1 %.not.i.i.i.i132, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i131

bb.bn:                                            ; preds = %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i.i)
  br label %_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4f_11VacantEntryB1D_B2I_E12insert_entry0EB1L_.exit.i.i

_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4f_11VacantEntryB1D_B2I_E12insert_entry0EB1L_.exit.i.i: ; preds = %bb.bn, %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1r_7command7CommandE12insert_entry0B1t_.exit.i.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.8.i.i.i)
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1p_7command7CommandE12insert_entryB1r_.exit.i

bb.bo:                                            ; preds = %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1d_7command7CommandE5entryB1f_.exit.thread72.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !4867
  %i.sg = call noalias noundef align 8 dereferenceable_or_null(456) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 456, i64 noundef range(i64 1, 9) 8) #43, !noalias !4867 ; 9 uses
end_hunk_2
begin_hunk_3_@_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate22write_flat_subcommands:bb.a
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ja, i64 368 ; 6 uses
  %i.kc = add nuw nsw i64 %i.jj, 2                ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.jm
  store ptr %.sroa.7.098.i.i.i, ptr %i.kd, align 8, !alias.scope !5089, !noalias !5092
  store i16 %i.jk, ptr %i.jf, align 2, !noalias !5092
  %i.ke = icmp samesign ult i64 %i.jm, %i.kc
  br i1 %i.ke, label %.lr.ph.i.i.i.i.i.i.preheader, label %.loopexit.i.i.i98

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2g_.exit.i.i.i.i.i
  %i.kf = add nuw nsw i64 %i.jj, 1
  %i.kg = sub nsw i64 %i.kf, %i.je
  %i.kh = sub nsw i64 %i.jj, %i.je
  %xtraiter931 = and i64 %i.kg, 3                 ; 2 uses
  %lcmp.mod932.not = icmp eq i64 %xtraiter931, 0
  br i1 %lcmp.mod932.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.prol = phi i64 [ %i.ki, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.jm, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter933 = phi i64 [ %prol.iter933.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ki = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.kj = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.kj)
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.sroa.0.06.i.i.i.i.i.i.prol
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !5092, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ja, ptr %i.kl, align 8, !noalias !5092
  %i.km = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol to i16
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 360
  store i16 %i.km, ptr %i.kn, align 8, !noalias !5092
  %prol.iter933.next = add i64 %prol.iter933, 1   ; 2 uses
  %prol.iter933.cmp.not = icmp eq i64 %prol.iter933.next, %xtraiter931
  br i1 %prol.iter933.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !5093

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.unr = phi i64 [ %i.jm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ki, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ko = icmp ult i64 %i.kh, 3
  br i1 %i.ko, label %.loopexit.i.i.i98, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i = phi i64 [ %i.le, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.kp = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 1 ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.sroa.0.06.i.i.i.i.i.i
  %i.kr = load ptr, ptr %i.kq, align 8, !noalias !5092, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ja, ptr %i.kr, align 8, !noalias !5092
  %i.ks = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i to i16
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 360
  store i16 %i.ks, ptr %i.kt, align 8, !noalias !5092
  %i.ku = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 2 ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.kp
  %i.kw = load ptr, ptr %i.kv, align 8, !noalias !5092, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ja, ptr %i.kw, align 8, !noalias !5092
  %i.kx = trunc nuw nsw i64 %i.kp to i16
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 360
  store i16 %i.kx, ptr %i.ky, align 8, !noalias !5092
  %i.kz = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 3 ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.ku
  %i.lb = load ptr, ptr %i.la, align 8, !noalias !5092, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ja, ptr %i.lb, align 8, !noalias !5092
  %i.lc = trunc nuw nsw i64 %i.ku to i16
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 360
  store i16 %i.lc, ptr %i.ld, align 8, !noalias !5092
  %i.le = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 4 ; 2 uses
  %i.lf = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.lf)
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.kz
  %i.lh = load ptr, ptr %i.lg, align 8, !noalias !5092, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ja, ptr %i.lh, align 8, !noalias !5092
  %i.li = trunc nuw nsw i64 %i.kz to i16
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 360
  store i16 %i.li, ptr %i.lj, align 8, !noalias !5092
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.le, %i.kc
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %.loopexit.i.i.i98, label %.lr.ph.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.as
  switch i16 %i.jd, label %bb.aw [
    i16 5, label %bb.ay
    i16 6, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  %i.lk = add nsw i64 %i.je, -7
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.as
  %.sroa.06.0.i.i.i.i = phi i64 [ 5, %bb.ax ], [ 6, %bb.aw ], [ 4, %bb.as ], [ 5, %bb.av ] ; 7 uses
  %.sroa.5.0.i.i.i.i = phi i64 [ 0, %bb.ax ], [ %i.lk, %bb.aw ], [ %i.je, %bb.as ], [ 5, %bb.av ] ; 9 uses
  %.sroa.03.0.i.i.i.i = phi i1 [ true, %bb.ax ], [ true, %bb.aw ], [ false, %bb.as ], [ false, %bb.av ]
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !5094
  %i.ll = call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 464, i64 noundef range(i64 1, 9) 8) #43, !noalias !5094 ; 14 uses
  %i.lm = icmp eq ptr %i.ll, null
  br i1 %i.lm, label %bb.az, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEE13new_uninit_inB1G_.exit.i.i.i.i.i, !prof !269

bb.az:                                            ; preds = %bb.ay
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 464) #46, !noalias !5094
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEE13new_uninit_inB1G_.exit.i.i.i.i.i: ; preds = %bb.ay
  store ptr null, ptr %i.ll, align 8, !noalias !5094
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 362 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !5098)
  %i.lo = load i16, ptr %i.jf, align 2, !noalias !5101, !noundef !13
  %i.lp = zext i16 %i.lo to i64
  %i.lq = xor i64 %.sroa.06.0.i.i.i.i, -1
  %i.lr = add nsw i64 %i.lp, %i.lq                ; 5 uses
  %i.ls = trunc i64 %i.lr to i16
  store i16 %i.ls, ptr %i.ln, align 2, !alias.scope !5098, !noalias !5103
  %i.lt = icmp ult i64 %i.lr, 12
  br i1 %i.lt, label %_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1O_.exit.i.i.i.i.i, label %bb.ba, !prof !3443

bb.ba:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEE13new_uninit_inB1G_.exit.i.i.i.i.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.lr, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #44, !noalias !5101
  unreachable

_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1O_.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEE13new_uninit_inB1G_.exit.i.i.i.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  %i.lv = getelementptr inbounds nuw [24 x i8], ptr %i.lu, i64 %.sroa.06.0.i.i.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ja, i64 272 ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %.sroa.06.0.i.i.i.i
  %i.ly = load ptr, ptr %i.lx, align 8, !noalias !5101, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.lz = add nuw nsw i64 %.sroa.06.0.i.i.i.i, 1  ; 2 uses
  %i.ma = getelementptr inbounds nuw [24 x i8], ptr %i.lu, i64 %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.mc = mul nuw nsw i64 %i.lr, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mb, ptr nonnull readonly align 8 %i.ma, i64 %i.mc, i1 false), !alias.scope !5104, !noalias !5103
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.lz
  %i.me = getelementptr inbounds nuw i8, ptr %i.ll, i64 272
  %i.mf = shl nuw nsw i64 %i.lr, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.me, ptr nonnull readonly align 8 %i.md, i64 %i.mf, i1 false), !alias.scope !5108, !noalias !5103
  %i.mg = trunc nuw nsw i64 %.sroa.06.0.i.i.i.i to i16
  store i16 %i.mg, ptr %i.jf, align 2, !noalias !5101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i64 24, i1 false), !noalias !5069
  %i.mh = load i16, ptr %i.ln, align 2, !noalias !5094, !noundef !13 ; 3 uses
  %i.mi = zext i16 %i.mh to i64
  %i.mj = add nuw nsw i64 %i.mi, 1                ; 5 uses
  %i.mk = icmp ult i16 %i.mh, 12
  br i1 %i.mk, label %bb.bb, label %bb.be, !prof !3443

bb.bb:                                            ; preds = %_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1O_.exit.i.i.i.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ll, i64 368 ; 6 uses
  %i.mm = zext i16 %i.jg to i64
  %i.mn = sub nuw nsw i64 %i.mm, %.sroa.06.0.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5112)
  call void @llvm.experimental.noalias.scope.decl(metadata !5115)
  %i.mo = icmp eq i64 %i.mn, %i.mj
  br i1 %i.mo, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i, label %bb.bc, !prof !159

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #44, !noalias !5117
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i: ; preds = %bb.bb
  %i.mp = getelementptr i8, ptr %i.ja, i64 376
  %i.mq = getelementptr [8 x i8], ptr %i.mp, i64 %.sroa.06.0.i.i.i.i
  %i.mr = shl nuw nsw i64 %i.mj, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ml, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.mq, i64 %i.mr, i1 false), !alias.scope !5118, !noalias !5094
  %i.ms = icmp ne i64 %i.jb, 0
  call void @llvm.assume(i1 %i.ms)
  call void @llvm.experimental.noalias.scope.decl(metadata !5119)
  %xtraiter = and i64 %i.mj, 3                    ; 3 uses
  %i.mt = icmp ult i16 %i.mh, 3
  br i1 %i.mt, label %.epil.preheader, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i.new

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i.new: ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i
  %unroll_iter = and i64 %i.mj, 28
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i.new
  %.sroa.0.09.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i.new ], [ %i.nj, %bb.bd ] ; 6 uses
  %niter = phi i64 [ 0, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i.new ], [ %niter.next.3, %bb.bd ]
  %i.mu = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %.sroa.0.09.i.i.i.i.i.i.i
  %i.mw = load ptr, ptr %i.mv, align 8, !alias.scope !5119, !noalias !5122, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ll, ptr %i.mw, align 8, !noalias !5125
  %i.mx = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i to i16
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 360
  store i16 %i.mx, ptr %i.my, align 8, !noalias !5122
  %i.mz = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mu
  %i.nb = load ptr, ptr %i.na, align 8, !alias.scope !5119, !noalias !5122, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ll, ptr %i.nb, align 8, !noalias !5125
  %i.nc = trunc nuw nsw i64 %i.mu to i16
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 360
  store i16 %i.nc, ptr %i.nd, align 8, !noalias !5122
  %i.ne = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mz
  %i.ng = load ptr, ptr %i.nf, align 8, !alias.scope !5119, !noalias !5122, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ll, ptr %i.ng, align 8, !noalias !5125
  %i.nh = trunc nuw nsw i64 %i.mz to i16
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 360
  store i16 %i.nh, ptr %i.ni, align 8, !noalias !5122
  %i.nj = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.ne
  %i.nl = load ptr, ptr %i.nk, align 8, !alias.scope !5119, !noalias !5122, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ll, ptr %i.nl, align 8, !noalias !5125
  %i.nm = trunc nuw nsw i64 %i.ne to i16
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 360
  store i16 %i.nm, ptr %i.nn, align 8, !noalias !5122
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1P_.exit.i.i.i.i.unr-lcssa, label %bb.bd

bb.be:                                            ; preds = %_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1O_.exit.i.i.i.i.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.mj, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #44, !noalias !5094
  unreachable

_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1P_.exit.i.i.i.i.unr-lcssa: ; preds = %bb.bd
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1P_.exit.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1P_.exit.i.i.i.i.unr-lcssa, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i ], [ %i.nj, %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1P_.exit.i.i.i.i.unr-lcssa ]
  %lcmp.mod928 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod928)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.no, %bb.bf ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bf ]
  %i.no = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.epil, 1
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %.sroa.0.09.i.i.i.i.i.i.i.epil
  %i.nq = load ptr, ptr %i.np, align 8, !alias.scope !5119, !noalias !5122, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ll, ptr %i.nq, align 8, !noalias !5125
  %i.nr = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.epil to i16
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 360
  store i16 %i.nr, ptr %i.ns, align 8, !noalias !5122
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1P_.exit.i.i.i.i, label %bb.bf, !llvm.loop !5126

_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1P_.exit.i.i.i.i: ; preds = %bb.bf, %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1P_.exit.i.i.i.i.unr-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.i37.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, i64 24, i1 false), !noalias !5127
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %spec.select.i38.i.i.i = select i1 %.sroa.03.0.i.i.i.i, ptr %i.ll, ptr %i.ja ; 11 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %spec.select.i38.i.i.i, i64 362 ; 2 uses
  %i.nu = load i16, ptr %i.nt, align 2, !noalias !5128, !noundef !13 ; 2 uses
  %i.nv = zext i16 %i.nu to i64                   ; 5 uses
  %i.nw = add i16 %i.nu, 1
  %i.nx = getelementptr inbounds nuw i8, ptr %spec.select.i38.i.i.i, i64 8 ; 2 uses
  %i.ny = add nuw nsw i64 %.sroa.5.0.i.i.i.i, 1   ; 7 uses
  %.not.i8.not.i.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i.i, %i.nv
  %i.nz = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %.sroa.5.0.i.i.i.i ; 3 uses
  br i1 %.not.i8.not.i.i.i.i, label %bb.bg, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEB1b_.exit.i9.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEB1b_.exit.i9.i.i.i.i: ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1P_.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nz, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.i.i.i, i64 24, i1 false), !noalias !5068
  %i.oa = getelementptr inbounds nuw i8, ptr %spec.select.i38.i.i.i, i64 272
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %.sroa.5.0.i.i.i.i
  store ptr %.sroa.13.096.i.i.i, ptr %i.ob, align 8, !alias.scope !5133, !noalias !5136
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2g_.exit.i10.i.i.i.i

bb.bg:                                            ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1P_.exit.i.i.i.i
  %i.oc = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.ny
  %i.od = sub nuw nsw i64 %i.nv, %.sroa.5.0.i.i.i.i ; 2 uses
  %i.oe = mul nuw nsw i64 %i.od, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.oc, ptr nonnull align 8 %i.nz, i64 %i.oe, i1 false), !alias.scope !5138, !noalias !5141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nz, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.i.i.i, i64 24, i1 false), !noalias !5068
  %i.of = getelementptr inbounds nuw i8, ptr %spec.select.i38.i.i.i, i64 272 ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %.sroa.5.0.i.i.i.i ; 2 uses
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.ny
  %i.oi = shl nuw nsw i64 %i.od, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.oh, ptr nonnull align 8 %i.og, i64 %i.oi, i1 false), !alias.scope !5133, !noalias !5136
  store ptr %.sroa.13.096.i.i.i, ptr %i.og, align 8, !alias.scope !5133, !noalias !5136
  %i.oj = getelementptr inbounds nuw i8, ptr %spec.select.i38.i.i.i, i64 368 ; 2 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.ny
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %.sroa.5.0.i.i.i.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.om, ptr nonnull align 8 %i.ok, i64 %i.oi, i1 false), !alias.scope !5143, !noalias !5146
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2g_.exit.i10.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2g_.exit.i10.i.i.i.i: ; preds = %bb.bg, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEB1b_.exit.i9.i.i.i.i
  %i.on = getelementptr inbounds nuw i8, ptr %spec.select.i38.i.i.i, i64 368 ; 6 uses
  %i.oo = add nuw nsw i64 %i.nv, 2                ; 2 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.ny
  store ptr %.sroa.7.098.i.i.i, ptr %i.op, align 8, !alias.scope !5143, !noalias !5146
  store i16 %i.nw, ptr %i.nt, align 2, !noalias !5146
  %i.oq = icmp samesign ult i64 %i.ny, %i.oo
  br i1 %i.oq, label %.lr.ph.i.i11.i.i.i.i.preheader, label %.loopexit43.i.i.i

.lr.ph.i.i11.i.i.i.i.preheader:                   ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2g_.exit.i10.i.i.i.i
  %i.or = add nuw nsw i64 %i.nv, 1
  %i.os = sub nsw i64 %i.or, %.sroa.5.0.i.i.i.i
  %i.ot = sub nsw i64 %i.nv, %.sroa.5.0.i.i.i.i
  %xtraiter929 = and i64 %i.os, 3                 ; 2 uses
  %lcmp.mod930.not = icmp eq i64 %xtraiter929, 0
  br i1 %lcmp.mod930.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol

.lr.ph.i.i11.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i11.i.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.i.prol = phi i64 [ %i.ou, %.lr.ph.i.i11.i.i.i.i.prol ], [ %i.ny, %.lr.ph.i.i11.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.i.preheader ]
  %i.ou = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 1 ; 2 uses
  %i.ov = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.ov)
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %.sroa.0.06.i.i12.i.i.i.i.prol
  %i.ox = load ptr, ptr %i.ow, align 8, !noalias !5146, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %spec.select.i38.i.i.i, ptr %i.ox, align 8, !noalias !5146
  %i.oy = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol to i16
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 360
  store i16 %i.oy, ptr %i.oz, align 8, !noalias !5146
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter929
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol, !llvm.loop !5147

.lr.ph.i.i11.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i11.i.i.i.i.prol, %.lr.ph.i.i11.i.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.i.unr = phi i64 [ %i.ny, %.lr.ph.i.i11.i.i.i.i.preheader ], [ %i.ou, %.lr.ph.i.i11.i.i.i.i.prol ]
  %i.pa = icmp ult i64 %i.ot, 3
  br i1 %i.pa, label %.loopexit43.i.i.i, label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i
  %.sroa.0.06.i.i12.i.i.i.i = phi i64 [ %i.pq, %.lr.ph.i.i11.i.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.i.unr, %.lr.ph.i.i11.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.pb = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 1 ; 2 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %.sroa.0.06.i.i12.i.i.i.i
  %i.pd = load ptr, ptr %i.pc, align 8, !noalias !5146, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %spec.select.i38.i.i.i, ptr %i.pd, align 8, !noalias !5146
  %i.pe = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i to i16
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 360
  store i16 %i.pe, ptr %i.pf, align 8, !noalias !5146
  %i.pg = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 2 ; 2 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.pb
  %i.pi = load ptr, ptr %i.ph, align 8, !noalias !5146, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %spec.select.i38.i.i.i, ptr %i.pi, align 8, !noalias !5146
  %i.pj = trunc nuw nsw i64 %i.pb to i16
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 360
  store i16 %i.pj, ptr %i.pk, align 8, !noalias !5146
  %i.pl = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 3 ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.pg
  %i.pn = load ptr, ptr %i.pm, align 8, !noalias !5146, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %spec.select.i38.i.i.i, ptr %i.pn, align 8, !noalias !5146
  %i.po = trunc nuw nsw i64 %i.pg to i16
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 360
  store i16 %i.po, ptr %i.pp, align 8, !noalias !5146
  %i.pq = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 4 ; 2 uses
  %i.pr = icmp ult i64 %.sroa.0.06.i.i12.i.i.i.i, 9
  call void @llvm.assume(i1 %i.pr)
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.pl
  %i.pt = load ptr, ptr %i.ps, align 8, !noalias !5146, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %spec.select.i38.i.i.i, ptr %i.pt, align 8, !noalias !5146
  %i.pu = trunc nuw nsw i64 %i.pl to i16
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 360
  store i16 %i.pu, ptr %i.pv, align 8, !noalias !5146
  %exitcond.not.i.i13.i.i.i.i.3 = icmp eq i64 %i.pq, %i.oo
  br i1 %exitcond.not.i.i13.i.i.i.i.3, label %.loopexit43.i.i.i, label %.lr.ph.i.i11.i.i.i.i

.loopexit43.i.i.i:                                ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2g_.exit.i10.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.i37.i.i.i, i64 24, i1 false), !noalias !5048
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i37.i.i.i)
  %i.pw = load ptr, ptr %i.ja, align 8, !noalias !5049, !noundef !13 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.pw, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.loopexit.i.i.i98:                                ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2g_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i37.i.i.i)
  br label %_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3N_11VacantEntryB1D_B1I_E12insert_entry0EB1P_.exit.i.i

_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3N_11VacantEntryB1D_B1I_E12insert_entry0EB1P_.exit.i.i: ; preds = %.loopexit.i.i.i98, %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE12insert_entry0B1x_.exit.i.i.i, %bb.ao
  %.sroa.7.1 = phi i64 [ %.sroa.7.0287, %bb.ao ], [ %i.it, %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE12insert_entry0B1x_.exit.i.i.i ], [ %.sroa.7.0287, %.loopexit.i.i.i98 ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0288, %bb.ao ], [ %i.ip, %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE12insert_entry0B1x_.exit.i.i.i ], [ %.sroa.0.0288, %.loopexit.i.i.i98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i)
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE12insert_entryB1v_.exit.i

bb.bh:                                            ; preds = %.thread.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 368) #46, !noalias !4976
  unreachable

_RNvMsu_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB19_4LeafE16push_with_handleB1B_.exit.i.i: ; preds = %.thread.i
  %i.px = inttoptr i64 %.sroa.02.0 to ptr
  store ptr null, ptr %i.gj, align 8, !noalias !4976
  %i.py = getelementptr inbounds nuw i8, ptr %i.gj, i64 362
  store i16 1, ptr %i.py, align 2, !noalias !5148
  %i.pz = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store ptr %i.px, ptr %i.pz, align 8, !noalias !4983
  %.sroa.1126.8..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store i64 %i.fj, ptr %.sroa.1126.8..sroa_idx33.i, align 8, !noalias !4983
  %.sroa.1235.8..sroa_idx42.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  store i64 %i.fi, ptr %.sroa.1235.8..sroa_idx42.i, align 8, !noalias !4983
  %i.qa = getelementptr inbounds nuw i8, ptr %i.gj, i64 272
  store ptr %i.t, ptr %i.qa, align 8, !noalias !5148
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE12insert_entryB1v_.exit.i

_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE12insert_entryB1v_.exit.i: ; preds = %_RNvMsu_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB19_4LeafE16push_with_handleB1B_.exit.i.i, %_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3N_11VacantEntryB1D_B1I_E12insert_entry0EB1P_.exit.i.i
  %.sroa.7.2 = phi i64 [ 0, %_RNvMsu_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB19_4LeafE16push_with_handleB1B_.exit.i.i ], [ %.sroa.7.1, %_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3N_11VacantEntryB1D_B1I_E12insert_entry0EB1P_.exit.i.i ]
  %.sroa.0.2 = phi ptr [ %i.gj, %_RNvMsu_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB19_4LeafE16push_with_handleB1B_.exit.i.i ], [ %.sroa.0.1, %_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3N_11VacantEntryB1D_B1I_E12insert_entry0EB1P_.exit.i.i ]
  %i.qb = add i64 %.sroa.11.0286, 1
  br label %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE6insertB1j_.exit

_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE6insertB1j_.exit: ; preds = %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE5entryB1j_.exit.i, %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE12insert_entryB1v_.exit.i
  %.sroa.11.1 = phi i64 [ %i.qb, %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE12insert_entryB1v_.exit.i ], [ %.sroa.11.0286, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE5entryB1j_.exit.i ] ; 2 uses
  %.sroa.7.3 = phi i64 [ %.sroa.7.2, %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE12insert_entryB1v_.exit.i ], [ %.sroa.7.0287, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE5entryB1j_.exit.i ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.2, %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE12insert_entryB1v_.exit.i ], [ %.sroa.0.0288, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE5entryB1j_.exit.i ] ; 2 uses
  %i.qc = icmp eq ptr %i.u, %i.r
  br i1 %i.qc, label %.loopexit139, label %.lr.ph.i.preheader
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i8 0, 13) i8 @_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14get_value_hint(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(600) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5153)
end_hunk_3
begin_hunk_4_@_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg18stylize_arg_suffix:bb.a

bb.g:                                             ; preds = %bb.d
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.i
  %.sroa.090.0 = phi ptr [ @196, %bb.i ], [ %., %bb.f ], [ @84, %bb.g ]
  %.sroa.03.1 = phi i1 [ true, %bb.i ], [ %i.x, %bb.f ], [ false, %bb.g ]
  %.sroa.02.0 = phi ptr [ %i.q, %bb.i ], [ %i.q, %bb.f ], [ %i.p, %bb.g ]
  %.sroa.7.0 = phi i64 [ 2, %bb.i ], [ %.101, %bb.f ], [ 1, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %.sroa.02.0, ptr %i.m, align 8, !captures !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.sroa.090.0, ptr %i.l, align 8, !captures !354
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.7.0, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.418.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.ac, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.422.0..sroa_idx, align 8
  %i.ad = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @75, ptr noundef nonnull %i.k) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.thread

bb.i:                                             ; preds = %bb.g
  br label %bb.h

.thread:                                          ; preds = %bb.h, %bb.b, %bb.ad
  %i.ae = phi i32 [ -1, %bb.ad ], [ -1, %bb.b ], [ %i.w, %bb.h ] ; 2 uses
  %i.af = phi ptr [ null, %bb.ad ], [ null, %bb.b ], [ %i.u, %bb.h ] ; 2 uses
  %.sroa.03.0110 = phi i1 [ false, %bb.ad ], [ false, %bb.b ], [ %.sroa.03.1, %bb.h ]
  %.not98 = icmp eq i8 %3, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = trunc i32 %i.ah to i8
  %.sroa.04.0 = select i1 %.not98, i8 %i.ai, i8 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.aj = trunc i8 %.sroa.04.0 to i1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5351)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5354
  store i64 0, ptr %i.f, align 8, !noalias !5354
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !5354
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 8 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !5354
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.510.0..sroa_idx, align 8, !alias.scope !5351, !noalias !5356
  %.sroa.026.0.i = select i1 %i.s, i64 %.sroa.4.0.copyload.i, i64 1 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !5351, !noalias !5356, !noundef !13 ; 7 uses
  %i.am = icmp ult i64 %i.al, 576460752303423488
  call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.al, 0
  br i1 %i.an, label %bb.l, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val.i = load ptr, ptr %i.ao, align 8, !alias.scope !5351, !noalias !5356, !nonnull !13, !noundef !13 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5357)
  %i.ap = shl nuw nsw i64 %i.al, 4                ; 3 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !5360
  %i.aq = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 9) 8) #43, !noalias !5360 ; 6 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.j, label %.lr.ph.preheader.i.i.i

bb.j:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ap) #46, !noalias !5366
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.al
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.preheader.i.i.i
  %.sroa.0.022.i.i.i = phi ptr [ %i.aw, %bb.k ], [ %.val.i, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.sroa.7.021.i.i.i = phi i64 [ %i.av, %bb.k ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.10.020.i.i.i = phi i64 [ %i.au, %bb.k ], [ %i.al, %.lr.ph.preheader.i.i.i ]
  %i.at = icmp eq ptr %.sroa.0.022.i.i.i, %i.as
  br i1 %i.at, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.au = add nsw i64 %.sroa.10.020.i.i.i, -1     ; 2 uses
  %i.av = add nuw nsw i64 %.sroa.7.021.i.i.i, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 16
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.sroa.7.021.i.i.i ; 2 uses
  %.val.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i, align 8, !alias.scope !5357, !noalias !5367, !nonnull !13, !noundef !13
  %i.ay = getelementptr i8, ptr %.sroa.0.022.i.i.i, i64 8
  %.val13.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !5357, !noalias !5367, !noundef !13
  store ptr %.val.i.i.i, ptr %i.ax, align 8, !noalias !5366
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.val13.i.i.i, ptr %i.az, align 8, !noalias !5366
  %i.ba = icmp eq i64 %i.au, 0
  br i1 %i.ba, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %.thread
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !5354
  %i.bb = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #43, !noalias !5354 ; 4 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.m, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.thread.i, !prof !1217

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #46, !noalias !5354
  unreachable

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.thread.i: ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !5351, !noalias !5356, !nonnull !13, !noundef !13 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5351, !noalias !5356, !noundef !13 ; 2 uses
  store ptr %i.be, ptr %i.bb, align 8, !noalias !5354
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !noalias !5354
  br label %bb.n

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i: ; preds = %bb.k, %.lr.ph.i.i.i
  %i.bi = icmp eq i64 %i.al, 1
  br i1 %i.bi, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit._crit_edge.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.lr.ph.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit._crit_edge.i: ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i
  %.pre.i = load ptr, ptr %i.aq, align 8, !noalias !5354
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.pre102.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !5354
  br label %bb.n

bb.n:                                             ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit._crit_edge.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.thread.i
  %i.bj = phi i64 [ %i.bg, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.thread.i ], [ %.pre102.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit._crit_edge.i ] ; 10 uses
  %i.bk = phi ptr [ %i.be, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.thread.i ], [ %.pre.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit._crit_edge.i ] ; 10 uses
  %.sroa.8.082.i = phi ptr [ %i.bb, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.thread.i ], [ %i.aq, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit._crit_edge.i ]
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.026.0.i, i64 1) ; 2 uses
  %i.bl = shl i64 %..i.i, 4                       ; 4 uses
  %i.bm = icmp ugt i64 %.sroa.026.0.i, 1152921504606846975
  %.not.i.i.i.i = icmp ugt i64 %i.bl, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.bm, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.o, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, !prof !321

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.n
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !5368
  %i.bn = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bl, i64 noundef range(i64 1, 9) 8) #43, !noalias !5368 ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.o, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE7reserveBK_.exit.i.i.i

bb.o:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.n
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %bb.n ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.bl) #46, !noalias !5374
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE7reserveBK_.exit.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.bp = icmp samesign ugt i64 %.sroa.026.0.i, 1
  br i1 %i.bp, label %.lr.ph.i.i50.i.preheader, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i

.lr.ph.i.i50.i.preheader:                         ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE7reserveBK_.exit.i.i.i
  %i.bq = add nsw i64 %.sroa.026.0.i, -1          ; 2 uses
  %i.br = add nsw i64 %.sroa.026.0.i, -2
  %xtraiter = and i64 %i.bq, 7                    ; 3 uses
  %i.bs = icmp ult i64 %i.br, 7
  br i1 %i.bs, label %.lr.ph.i.i50.i.epil.preheader, label %.lr.ph.i.i50.i.preheader.new

.lr.ph.i.i50.i.preheader.new:                     ; preds = %.lr.ph.i.i50.i.preheader
  %unroll_iter = and i64 %i.bq, -8
  br label %.lr.ph.i.i50.i

.lr.ph.i.i50.i:                                   ; preds = %.lr.ph.i.i50.i, %.lr.ph.i.i50.i.preheader.new
  %.sroa.0.018.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i50.i.preheader.new ], [ %i.ci, %.lr.ph.i.i50.i ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i50.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i50.i ]
  store ptr %i.bk, ptr %.sroa.0.018.i.i.i, align 8, !noalias !5375
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 8
  store i64 %i.bj, ptr %i.bt, align 8, !noalias !5379
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 16
  store ptr %i.bk, ptr %i.bu, align 8, !noalias !5375
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 24
  store i64 %i.bj, ptr %i.bv, align 8, !noalias !5379
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 32
  store ptr %i.bk, ptr %i.bw, align 8, !noalias !5375
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 40
  store i64 %i.bj, ptr %i.bx, align 8, !noalias !5379
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 48
  store ptr %i.bk, ptr %i.by, align 8, !noalias !5375
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 56
  store i64 %i.bj, ptr %i.bz, align 8, !noalias !5379
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 64
  store ptr %i.bk, ptr %i.ca, align 8, !noalias !5375
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 72
  store i64 %i.bj, ptr %i.cb, align 8, !noalias !5379
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 80
  store ptr %i.bk, ptr %i.cc, align 8, !noalias !5375
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 88
  store i64 %i.bj, ptr %i.cd, align 8, !noalias !5379
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 96
  store ptr %i.bk, ptr %i.ce, align 8, !noalias !5375
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 104
  store i64 %i.bj, ptr %i.cf, align 8, !noalias !5379
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 112
  store ptr %i.bk, ptr %i.cg, align 8, !noalias !5375
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 120
  store i64 %i.bj, ptr %i.ch, align 8, !noalias !5379
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 128 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i50.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i50.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i, label %.lr.ph.i.i50.i.epil.preheader

.lr.ph.i.i50.i.epil.preheader:                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i50.i.preheader
  %.sroa.0.018.i.i.i.epil.init = phi ptr [ %i.bn, %.lr.ph.i.i50.i.preheader ], [ %i.ci, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph.i.i50.i.epil

.lr.ph.i.i50.i.epil:                              ; preds = %.lr.ph.i.i50.i.epil, %.lr.ph.i.i50.i.epil.preheader
  %.sroa.0.018.i.i.i.epil = phi ptr [ %i.ck, %.lr.ph.i.i50.i.epil ], [ %.sroa.0.018.i.i.i.epil.init, %.lr.ph.i.i50.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i50.i.epil ], [ 0, %.lr.ph.i.i50.i.epil.preheader ]
  store ptr %i.bk, ptr %.sroa.0.018.i.i.i.epil, align 8, !noalias !5375
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.epil, i64 8
  store i64 %i.bj, ptr %i.cj, align 8, !noalias !5379
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i, label %.lr.ph.i.i50.i.epil, !llvm.loop !5380

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i50.i.epil, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE7reserveBK_.exit.i.i.i
  %.sroa.0.0.lcssa25.i.i.i = phi ptr [ %i.bn, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE7reserveBK_.exit.i.i.i ], [ %i.ci, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.loopexit.unr-lcssa ], [ %i.ck, %.lr.ph.i.i50.i.epil ] ; 2 uses
  store ptr %i.bk, ptr %.sroa.0.0.lcssa25.i.i.i, align 8, !noalias !5379
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa25.i.i.i, i64 8
  store i64 %i.bj, ptr %i.cl, align 8, !noalias !5379
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.082.i, i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !5381
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.lr.ph.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.lr.ph.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i
  %.idx.i.pre-phi = phi i64 [ %i.bl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i ], [ %i.ap, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ] ; 2 uses
  %.sroa.8.1.i = phi ptr [ %i.bn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i ], [ %i.aq, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ] ; 4 uses
  %.sroa.0.1.i = phi i64 [ %..i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i ], [ %i.al, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.8.1.i, i64 %.idx.i.pre-phi
  %.not40.i = icmp ne ptr %i.af, null
  %.not41.i = icmp ne i32 %i.ae, -1
  %or.cond44.not122.i = select i1 %.not40.i, i1 true, i1 %.not41.i ; 2 uses
  %i.cn = add i64 %.sroa.026.0.i, -1
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.770.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.770.0..sroa_idx71.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx73.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.8.1.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5354
  store ptr %.sroa.8.1.i, ptr %i.e, align 8, !noalias !5354, !captures !354
  %.not39.peel.i = icmp ne i64 %.sroa.026.0.i, 0
  %brmerge95.not.peel.i = select i1 %i.aj, i1 %.not39.peel.i, i1 false
  %or.cond120.i = select i1 %or.cond44.not122.i, i1 true, i1 %brmerge95.not.peel.i
  br i1 %or.cond120.i, label %.split33.peel.i, label %.split.peel.i

.split.peel.i:                                    ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5354
  store ptr %i.e, ptr %i.c, align 8, !noalias !5354
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrNtB6_7Display3fmtBC_, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !5354
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @194, ptr noundef nonnull %i.c) #43, !noalias !5354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5354
  %.sroa.068.0.copyload.peel.i = load i64, ptr %i.d, align 8, !noalias !5354
  %.sroa.770.0.copyload.peel.i = load ptr, ptr %.sroa.770.0..sroa_idx.i, align 8, !noalias !5354
  %.sroa.9.0.copyload.peel.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5354
  br label %bb.p

.split33.peel.i:                                  ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5354
  store ptr %i.e, ptr %i.a, align 8, !noalias !5354
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrNtB6_7Display3fmtBC_, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !5354
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @79, ptr noundef nonnull %i.a) #43, !noalias !5354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5354
  %.sroa.068.0.copyload69.peel.i = load i64, ptr %i.b, align 8, !noalias !5354
  %.sroa.770.0.copyload72.peel.i = load ptr, ptr %.sroa.770.0..sroa_idx71.i, align 8, !noalias !5354
  %.sroa.9.0.copyload74.peel.i = load i64, ptr %.sroa.9.0..sroa_idx73.i, align 8, !noalias !5354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5354
  br label %bb.p

bb.p:                                             ; preds = %.split33.peel.i, %.split.peel.i
  %.sroa.9.0.peel.i = phi i64 [ %.sroa.9.0.copyload74.peel.i, %.split33.peel.i ], [ %.sroa.9.0.copyload.peel.i, %.split.peel.i ] ; 4 uses
  %.sroa.770.0.peel.i = phi ptr [ %.sroa.770.0.copyload72.peel.i, %.split33.peel.i ], [ %.sroa.770.0.copyload.peel.i, %.split.peel.i ] ; 3 uses
  %.sroa.068.0.peel.i = phi i64 [ %.sroa.068.0.copyload69.peel.i, %.split33.peel.i ], [ %.sroa.068.0.copyload.peel.i, %.split.peel.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.770.0.peel.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5384)
  %.not.i = icmp eq i64 %.sroa.9.0.peel.i, 0
  br i1 %.not.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit56.peel.i, label %bb.q, !prof !159

bb.q:                                             ; preds = %bb.p
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, i64 noundef %.sroa.9.0.peel.i, i64 noundef 1, i64 noundef 1) #43, !noalias !5354
  %i.cp = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !5384, !noalias !5354, !noundef !13 ; 3 uses
  %i.cq = icmp sgt i64 %i.cp, -1
  call void @llvm.assume(i1 %i.cq)
  %.pre103.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !5384, !noalias !5354 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.pre103.i, i64 %i.cp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull readonly align 1 %.sroa.770.0.peel.i, i64 %.sroa.9.0.peel.i, i1 false), !noalias !5387
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit56.peel.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit56.peel.i: ; preds = %bb.q, %bb.p
  %i.cs = phi ptr [ %.pre103.i, %bb.q ], [ inttoptr (i64 1 to ptr), %bb.p ]
  %i.ct = phi i64 [ %i.cp, %bb.q ], [ 0, %bb.p ]
  %i.cu = add i64 %i.ct, %.sroa.9.0.peel.i        ; 3 uses
  store i64 %i.cu, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !5384, !noalias !5354
  %i.cv = icmp eq i64 %.sroa.068.0.peel.i, 0
  br i1 %i.cv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i, label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit56.peel.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.770.0.peel.i, i64 noundef %.sroa.068.0.peel.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !5388
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i: ; preds = %bb.r, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit56.peel.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5354
  %i.cw = icmp eq i64 %.sroa.0.1.i, 1
  br i1 %i.cw, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i
  %i.cx = phi ptr [ %i.ec, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.cs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i ]
  %i.cy = phi i64 [ %i.ee, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.cu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i ] ; 5 uses
  %.sroa.067.0100.i = phi ptr [ %i.cz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.co, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i ] ; 2 uses
  %.sroa.7.098.i = phi i64 [ %i.da, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i ], [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.067.0100.i, i64 16 ; 2 uses
  %i.da = add nuw nsw i64 %.sroa.7.098.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5354
  store ptr %.sroa.067.0100.i, ptr %i.e, align 8, !noalias !5354, !captures !354
  br i1 %or.cond44.not122.i, label %bb.v, label %bb.w

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i
  %i.db = phi i64 [ %i.cu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i ], [ %i.ee, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i ] ; 3 uses
  %i.dc = icmp ult i64 %.sroa.0.1.i, 576460752303423488
  call void @llvm.assume(i1 %i.dc)
  %i.dd = icmp ugt i64 %.sroa.511.0.copyload, %.sroa.0.1.i
  %i.de = select i1 %i.s, i1 %i.dd, i1 false      ; 2 uses
  %.not36.i = icmp eq ptr %i.af, null
  %.not37.i = icmp eq i32 %i.ae, -1
  %or.cond.i = select i1 %.not36.i, i1 %.not37.i, i1 false
  br i1 %or.cond.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread.i
  br i1 %i.de, label %bb.u, label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14render_arg_val.exit

bb.t:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread.i
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 596
  %i.dg = load i8, ptr %i.df, align 4, !range !5391, !alias.scope !5351, !noalias !5356, !noundef !13
  %i.dh = icmp eq i8 %i.dg, 1
  %brmerge.i = select i1 %i.dh, i1 true, i1 %i.de
  br i1 %brmerge.i, label %bb.u, label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14render_arg_val.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.di = load i64, ptr %i.f, align 8, !range !14, !alias.scope !5392, !noalias !5354, !noundef !13
  %i.dj = sub i64 %i.di, %i.db
  %i.dk = icmp ult i64 %i.dj, 3
  br i1 %i.dk, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.i, !prof !269

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i: ; preds = %bb.u
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.db, i64 noundef 3, i64 noundef 1, i64 noundef 1) #43, !noalias !5354
  %i.dl = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !5397, !noalias !5354, !noundef !13
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i, %bb.u
  %.sink121.i = phi i64 [ %i.dl, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ %i.db, %bb.u ] ; 3 uses
  %i.dm = icmp sgt i64 %.sink121.i, -1
  call void @llvm.assume(i1 %i.dm)
  %i.dn = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !5397, !noalias !5354, !nonnull !13, !noundef !13
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sink121.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.do, i8 46, i64 3, i1 false), !noalias !5354
  %i.dp = add nuw i64 %.sink121.i, 3
  store i64 %i.dp, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !5397, !noalias !5354
  br label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14render_arg_val.exit

bb.v:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.i
  %brmerge93.not.i = icmp ult i64 %i.cn, %.sroa.7.098.i
  br i1 %brmerge93.not.i, label %.split.i, label %.split33.i

bb.w:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.i
  %.not39.i = icmp ugt i64 %.sroa.026.0.i, %.sroa.7.098.i
  %brmerge95.not.i = select i1 %i.aj, i1 %.not39.i, i1 false
  br i1 %brmerge95.not.i, label %.split33.i, label %.split.i

.split.i:                                         ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5354
  store ptr %i.e, ptr %i.c, align 8, !noalias !5354
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrNtB6_7Display3fmtBC_, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !5354
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @194, ptr noundef nonnull %i.c) #43, !noalias !5354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5354
  %.sroa.068.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !5354
  %.sroa.770.0.copyload.i = load ptr, ptr %.sroa.770.0..sroa_idx.i, align 8, !noalias !5354
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5354
  br label %bb.aa

.split33.i:                                       ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5354
  store ptr %i.e, ptr %i.a, align 8, !noalias !5354
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrNtB6_7Display3fmtBC_, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !5354
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @79, ptr noundef nonnull %i.a) #43, !noalias !5354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5354
end_hunk_4
begin_hunk_5_@_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command11__build_self:bb.a
_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit24.i.i: ; preds = %bb.ba, %bb.az
  %i.ov = load ptr, ptr %i.oc, align 8, !alias.scope !5652, !noalias !5653, !nonnull !13, !noundef !13
  %i.ow = getelementptr inbounds nuw [32 x i8], ptr %i.ov, i64 %i.os ; 3 uses
  store i32 0, ptr %i.ow, align 8, !noalias !5655
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  store i32 %i.or, ptr %.sroa.431.0..sroa_idx.i.i, align 4, !noalias !5655
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !noalias !5655
  %i.ox = add i64 %i.os, 1
  store i64 %i.ox, ptr %i.nt, align 8, !alias.scope !5652, !noalias !5653
  br label %bb.bb

bb.bb:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit24.i.i, %bb.ay
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 552
  %i.oz = load ptr, ptr %i.oy, align 8, !alias.scope !5639, !noalias !5641, !noundef !13 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.oz, null
  br i1 %.not23.i.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 560
  %i.pb = load i64, ptr %i.pa, align 8, !alias.scope !5639, !noalias !5641, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !5656)
  %i.pc = load i64, ptr %i.nt, align 8, !alias.scope !5659, !noalias !5660, !noundef !13 ; 3 uses
  %i.pd = load i64, ptr %i.nr, align 8, !range !14, !alias.scope !5659, !noalias !5660, !noundef !13
  %i.pe = icmp eq i64 %i.pc, %i.pd
  br i1 %i.pe, label %bb.bd, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit25.i.i

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nr) #42, !noalias !5660
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit25.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit25.i.i: ; preds = %bb.bd, %bb.bc
  %i.pf = load ptr, ptr %i.oc, align 8, !alias.scope !5659, !noalias !5660, !nonnull !13, !noundef !13
  %i.pg = getelementptr inbounds nuw [32 x i8], ptr %i.pf, i64 %i.pc ; 4 uses
  store i32 1, ptr %i.pg, align 8, !noalias !5662
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  store ptr %i.oz, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !noalias !5662
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  store i64 %i.pb, ptr %.sroa.537.0..sroa_idx.i.i, align 8, !noalias !5662
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !5662
  %i.ph = add i64 %i.pc, 1
  store i64 %i.ph, ptr %i.nt, align 8, !alias.scope !5659, !noalias !5660
  br label %bb.be

bb.be:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit25.i.i, %bb.bb
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 328
  %i.pj = load ptr, ptr %i.pi, align 8, !alias.scope !5639, !noalias !5641, !nonnull !13, !noundef !13 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 336
  %i.pl = load i64, ptr %i.pk, align 8, !alias.scope !5639, !noalias !5641, !noundef !13 ; 2 uses
  %.idx.i.i132 = shl nuw nsw i64 %i.pl, 3
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.idx.i.i132
  %i.pn = icmp eq i64 %i.pl, 0
  br i1 %i.pn, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.be
  %.pre.i.i = load i64, ptr %i.nt, align 8, !alias.scope !5663, !noalias !5666
  %.pre53.i.i = load i64, ptr %i.nr, align 8, !range !14, !alias.scope !5663, !noalias !5666
  br label %bb.bf

bb.bf:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i, %.lr.ph.i.i
  %i.po = phi i64 [ %.pre53.i.i, %.lr.ph.i.i ], [ %i.pt, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i ] ; 2 uses
  %i.pp = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.pw, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i ] ; 3 uses
  %.sroa.011.047.i.i = phi ptr [ %i.pj, %.lr.ph.i.i ], [ %i.pq, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i ] ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.011.047.i.i, i64 8 ; 2 uses
  %i.pr = load i32, ptr %.sroa.011.047.i.i, align 4, !range !4398, !noalias !5668, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !5669)
  %i.ps = icmp eq i64 %i.pp, %i.po
  br i1 %i.ps, label %bb.bg, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nr) #42, !noalias !5666
  %.pre52.i.i = load i64, ptr %i.nr, align 8, !range !14, !alias.scope !5663, !noalias !5666
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i: ; preds = %bb.bg, %bb.bf
  %i.pt = phi i64 [ %i.po, %bb.bf ], [ %.pre52.i.i, %bb.bg ]
  %i.pu = load ptr, ptr %i.oc, align 8, !alias.scope !5663, !noalias !5666, !nonnull !13, !noundef !13
  %i.pv = getelementptr inbounds nuw [32 x i8], ptr %i.pu, i64 %i.pp ; 3 uses
  store i32 0, ptr %i.pv, align 8, !noalias !5670
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  store i32 %i.pr, ptr %.sroa.439.0..sroa_idx.i.i, align 4, !noalias !5670
  %.sroa.541.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.541.0..sroa_idx.i.i, align 8, !noalias !5670
  %i.pw = add i64 %i.pp, 1                        ; 2 uses
  store i64 %i.pw, ptr %i.nt, align 8, !alias.scope !5663, !noalias !5666
  %i.px = icmp eq ptr %i.pq, %i.pm
  br i1 %i.px, label %._crit_edge.i.i, label %bb.bf

._crit_edge.i.i:                                  ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i, %bb.be
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 304
  %i.pz = load ptr, ptr %i.py, align 8, !alias.scope !5639, !noalias !5641, !nonnull !13, !noundef !13 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 312
  %i.qb = load i64, ptr %i.qa, align 8, !alias.scope !5639, !noalias !5641, !noundef !13 ; 2 uses
  %.idx51.i.i = mul nuw nsw i64 %i.qb, 24
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 %.idx51.i.i
  %i.qd = icmp eq i64 %i.qb, 0
  br i1 %i.qd, label %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i, label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %._crit_edge.i.i
  %.pre54.i.i = load i64, ptr %i.nt, align 8, !alias.scope !5671, !noalias !5674
  %.pre56.i.i = load i64, ptr %i.nr, align 8, !range !14, !alias.scope !5671, !noalias !5674
  br label %bb.bh

bb.bh:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i, %.lr.ph50.i.i
  %i.qe = phi i64 [ %.pre56.i.i, %.lr.ph50.i.i ], [ %i.ql, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i ] ; 2 uses
  %i.qf = phi i64 [ %.pre54.i.i, %.lr.ph50.i.i ], [ %i.qo, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i ] ; 3 uses
  %.sroa.016.048.i.i = phi ptr [ %i.pz, %.lr.ph50.i.i ], [ %i.qg, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i ] ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.016.048.i.i, i64 24 ; 2 uses
  %i.qh = load ptr, ptr %.sroa.016.048.i.i, align 8, !noalias !5668, !nonnull !13, !noundef !13
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.016.048.i.i, i64 8
  %i.qj = load i64, ptr %i.qi, align 8, !noalias !5668, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !5676)
  %i.qk = icmp eq i64 %i.qf, %i.qe
  br i1 %i.qk, label %bb.bi, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nr) #42, !noalias !5674
  %.pre55.i.i = load i64, ptr %i.nr, align 8, !range !14, !alias.scope !5671, !noalias !5674
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i: ; preds = %bb.bi, %bb.bh
  %i.ql = phi i64 [ %i.qe, %bb.bh ], [ %.pre55.i.i, %bb.bi ]
  %i.qm = load ptr, ptr %i.oc, align 8, !alias.scope !5671, !noalias !5674, !nonnull !13, !noundef !13
  %i.qn = getelementptr inbounds nuw [32 x i8], ptr %i.qm, i64 %i.qf ; 4 uses
  store i32 1, ptr %i.qn, align 8, !noalias !5677
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store ptr %i.qh, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !5677
  %.sroa.545.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  store i64 %i.qj, ptr %.sroa.545.0..sroa_idx.i.i, align 8, !noalias !5677
  %.sroa.646.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qn, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.646.0..sroa_idx.i.i, align 8, !noalias !5677
  %i.qo = add i64 %i.qf, 1                        ; 2 uses
  store i64 %i.qo, ptr %i.nt, align 8, !alias.scope !5671, !noalias !5674
  %i.qp = icmp eq ptr %i.qg, %i.qc
  br i1 %i.qp, label %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i, label %bb.bh

_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i, %._crit_edge.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit.i.i
  %i.qq = icmp eq ptr %i.od, %i.oa
  br i1 %i.qq, label %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit, label %bb.av

_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit: ; preds = %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i.thread, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i
  %i.qr = phi ptr [ %i.na, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i.thread ], [ %i.nt, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i ], [ %i.nt, %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i ]
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.qt = load ptr, ptr %i.qs, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.qu = load i64, ptr %i.qr, align 8, !noundef !13 ; 2 uses
  %.idx260 = shl nuw nsw i64 %i.qu, 5
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 %.idx260 ; 3 uses
  %.not.not.not.not.i.not.not.not.i.not.i.not257 = icmp eq i64 %i.qu, 0
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.not257, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit, label %.lr.ph258

bb.bj:                                            ; preds = %.lr.ph258
  %.not.not.not.not.i.not.not.not.i.not.i.not = icmp eq ptr %i.qx, %i.qv
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.not, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit, label %.lr.ph258

.lr.ph258:                                        ; preds = %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit, %bb.bj
  %i.qw = phi ptr [ %i.qx, %bb.bj ], [ %i.qt, %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit ] ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 32 ; 7 uses
  %.val.i.i.i.i.i134 = load i32, ptr %i.qw, align 8, !range !1176, !noalias !5678, !noundef !13
  %i.qy = icmp eq i32 %.val.i.i.i.i.i134, 2
  br i1 %i.qy, label %bb.bk, label %bb.bj

bb.bk:                                            ; preds = %.lr.ph258
  %i.qz = getelementptr i8, ptr %i.qw, i64 8
  %.val6.i.i.i.i.i = load i64, ptr %i.qz, align 8, !noalias !5678 ; 3 uses
  %i.ra = icmp eq ptr %i.qx, %i.qv
  br i1 %i.ra, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.rb = ptrtoint ptr %i.qv to i64
  %i.rc = ptrtoint ptr %i.qx to i64
  %i.rd = sub nuw i64 %i.rb, %i.rc                ; 3 uses
  %i.re = lshr exact i64 %i.rd, 5                 ; 2 uses
  %i.rf = icmp eq i64 %i.rd, 32
  br i1 %i.rf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.bl
  %unroll_iter = and i64 %i.re, 576460752303423486
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.new
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.rn, %bb.bm ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %.val6.i.i.i.i.i, %.new ], [ %.sroa.0.0.i.i.i.i.i.i135.1, %bb.bm ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.bm ]
  %i.rg = getelementptr inbounds nuw [32 x i8], ptr %i.qx, i64 %.sroa.04.0.i.i.i.i ; 2 uses
  %.val.i.i.i.i = load i32, ptr %i.rg, align 8, !range !1176, !noundef !13
  %i.rh = getelementptr i8, ptr %i.rg, i64 8
  %.val11.i.i.i.i = load i64, ptr %i.rh, align 8
  %i.ri = icmp eq i32 %.val.i.i.i.i, 2
  %..i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i, i64 %.sroa.02.0.i.i.i.i)
  %.sroa.0.0.i.i.i.i.i.i135 = select i1 %i.ri, i64 %..i.i.i.i.i.i.i.i, i64 %.sroa.02.0.i.i.i.i ; 2 uses
  %i.rj = getelementptr inbounds nuw [32 x i8], ptr %i.qx, i64 %.sroa.04.0.i.i.i.i ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 32
  %.val.i.i.i.i.1 = load i32, ptr %i.rk, align 8, !range !1176, !noundef !13
  %i.rl = getelementptr i8, ptr %i.rj, i64 40
  %.val11.i.i.i.i.1 = load i64, ptr %i.rl, align 8
  %i.rm = icmp eq i32 %.val.i.i.i.i.1, 2
  %..i.i.i.i.i.i.i.i.1 = call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.1, i64 %.sroa.0.0.i.i.i.i.i.i135)
  %.sroa.0.0.i.i.i.i.i.i135.1 = select i1 %i.rm, i64 %..i.i.i.i.i.i.i.i.1, i64 %.sroa.0.0.i.i.i.i.i.i135 ; 3 uses
  %i.rn = add nuw i64 %.sroa.04.0.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa, label %bb.bm

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa: ; preds = %bb.bm
  %i.ro = and i64 %i.rd, 32
  %lcmp.mod.not = icmp eq i64 %i.ro, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa, %bb.bl
  %.sroa.04.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.bl ], [ %i.rn, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ %.val6.i.i.i.i.i, %bb.bl ], [ %.sroa.0.0.i.i.i.i.i.i135.1, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod269 = trunc i64 %i.re to i1
  call void @llvm.assume(i1 %lcmp.mod269)
  %i.rp = getelementptr inbounds nuw [32 x i8], ptr %i.qx, i64 %.sroa.04.0.i.i.i.i.epil.init ; 2 uses
  %.val.i.i.i.i.epil = load i32, ptr %i.rp, align 8, !range !1176, !noundef !13
  %i.rq = getelementptr i8, ptr %i.rp, i64 8
  %.val11.i.i.i.i.epil = load i64, ptr %i.rq, align 8
  %i.rr = icmp eq i32 %.val.i.i.i.i.epil, 2
  %..i.i.i.i.i.i.i.i.epil = call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init)
  %.sroa.0.0.i.i.i.i.i.i135.epil = select i1 %i.rr, i64 %..i.i.i.i.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init
  br label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit: ; preds = %bb.bj, %.epil.preheader, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa, %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit, %bb.bk
  %.sroa.016.0 = phi i64 [ 0, %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit ], [ %.val6.i.i.i.i.i, %bb.bk ], [ %.sroa.0.0.i.i.i.i.i.i135.epil, %.epil.preheader ], [ %.sroa.0.0.i.i.i.i.i.i135.1, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa ], [ 0, %bb.bj ]
  %i.rs = load i32, ptr %i.u, align 4, !noundef !13 ; 4 uses
  %i.rt = and i32 %i.rs, 32
  %.not116 = icmp ne i32 %i.rt, 0
  %i.ru = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.rv = and i32 %i.ru, 32
  %i.rw = icmp ne i32 %i.rv, 0
  %.sroa.019.0 = select i1 %.not116, i1 true, i1 %i.rw
  %i.rx = and i32 %i.rs, 2
  %.not117 = icmp ne i32 %i.rx, 0
  %i.ry = and i32 %i.ru, 2
  %i.rz = icmp ne i32 %i.ry, 0
  %.sroa.020.0 = select i1 %.not117, i1 true, i1 %i.rz
  %i.sa = and i32 %i.rs, 4
  %.not118 = icmp ne i32 %i.sa, 0
  %i.sb = and i32 %i.ru, 4
  %i.sc = icmp ne i32 %i.sb, 0
  %.sroa.021.0 = select i1 %.not118, i1 true, i1 %i.sc
  %i.sd = load ptr, ptr %i.mu, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.se = load i64, ptr %i.mw, align 8, !noundef !13 ; 2 uses
  %.idx176 = mul nuw nsw i64 %i.se, 600
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 %.idx176
  %i.sg = icmp eq i64 %i.se, 0
  br i1 %i.sg, label %._crit_edge173, label %.lr.ph172

bb.bn:                                            ; preds = %.lr.ph, %bb.cl
  %.sroa.011.0164 = phi ptr [ %i.nk, %.lr.ph ], [ %i.sh, %bb.cl ] ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.011.0164, i64 16 ; 2 uses
  %i.si = load ptr, ptr %i.nb, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.sj = load i64, ptr %i.nc, align 8, !noundef !13 ; 2 uses
  %.idx = mul nuw nsw i64 %i.sj, 96
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 %.idx
  %i.sl = icmp eq i64 %i.sj, 0
  %.pre189 = load ptr, ptr %.sroa.011.0164, align 8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.011.0164, i64 8
  %.pre190 = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %i.sl, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit144, label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %bb.bn, %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i
  %i.sm = phi ptr [ %i.sn, %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i ], [ %i.si, %bb.bn ] ; 7 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 96 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 80
  %i.sp = load i64, ptr %i.so, align 8, !noalias !5687, !noundef !13
  %i.sq = icmp eq i64 %i.sp, %.pre190
  br i1 %i.sq, label %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.i, label %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i

_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.i: ; preds = %.lr.ph.i136
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sm, i64 72
  %i.ss = load ptr, ptr %i.sr, align 8, !noalias !5687, !nonnull !13, !noundef !13
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.ss, ptr nonnull %.pre189, i64 %.pre190), !noalias !5687
  %i.st = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.st, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs3_NtBX_7commandNtB2L_7Command11__build_self0EBZ_.exit, label %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i

_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i: ; preds = %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.i, %.lr.ph.i136
  %i.su = icmp eq ptr %i.sn, %i.sk
  br i1 %i.su, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit144, label %.lr.ph.i136

._crit_edge:                                      ; preds = %bb.cl, %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !5691)
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 596 ; 3 uses
  %i.sw = load i8, ptr %i.sv, align 4, !range !5391, !alias.scope !5691, !noundef !13 ; 2 uses
  %.not.i138 = icmp eq i8 %i.sw, -1
  br i1 %.not.i138, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %._crit_edge
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 16
  %i.sy = load i64, ptr %i.sx, align 8, !range !142, !alias.scope !5691, !noundef !13
  %i.sz = trunc nuw i64 %i.sy to i1               ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 24
  %i.tb = load i64, ptr %i.ta, align 8, !alias.scope !5691
  %i.tc = icmp eq i64 %i.tb, 0
  %or.cond.i142 = select i1 %i.sz, i1 %i.tc, i1 false
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 32
  %i.te = load i64, ptr %i.td, align 8, !alias.scope !5691 ; 2 uses
  %i.tf = icmp eq i64 %i.te, 0
  %or.cond8.i = select i1 %or.cond.i142, i1 %i.tf, i1 false
  br i1 %or.cond8.i, label %.thread.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 552
  %i.th = load ptr, ptr %i.tg, align 8, !alias.scope !5691, !noundef !13
  %.not33.i = icmp eq ptr %i.th, null
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 584
  %i.tj = load i32, ptr %i.ti, align 8, !range !2440, !alias.scope !5691
  %.not34.i = icmp eq i32 %i.tj, -1
  %or.cond43.not89.not90.i = select i1 %.not33.i, i1 %.not34.i, i1 false
  %brmerge.not.i = and i1 %or.cond43.not89.not90.i, %i.sz
  %i.tk = icmp eq i64 %i.te, -1
  %narrow.i = select i1 %brmerge.not.i, i1 %i.tk, i1 false
  %.sroa.0.0.i143 = zext i1 %narrow.i to i8       ; 2 uses
  store i8 %.sroa.0.0.i143, ptr %i.sv, align 4, !alias.scope !5691
  br label %bb.bq

.thread.i:                                        ; preds = %bb.bo
  store i8 2, ptr %i.sv, align 4, !alias.scope !5691
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bp, %._crit_edge
  %i.tl = phi i8 [ %i.sw, %._crit_edge ], [ %.sroa.0.0.i143, %bb.bp ] ; 10 uses
  switch i8 %i.tl, label %default.unreachable [
    i8 0, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
    i8 1, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
    i8 2, label %bb.bt
    i8 3, label %bb.br
    i8 4, label %bb.bs
    i8 5, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
    i8 6, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
    i8 7, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
    i8 8, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
  ]

bb.br:                                            ; preds = %bb.bq
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  br label %bb.bt

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit54.i, %bb.by, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 80 ; 3 uses
  %i.tn = load i64, ptr %i.tm, align 8, !range !547, !alias.scope !5691, !noundef !13
  %.not38.i = icmp eq i64 %i.tn, -1
  br i1 %.not38.i, label %bb.cd, label %bb.cc

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq, %.thread.i
  %i.to = phi i8 [ %i.tl, %bb.bs ], [ %i.tl, %bb.br ], [ 2, %.thread.i ], [ %i.tl, %bb.bq ] ; 2 uses
  %.sroa.10.0.i.ph.i = phi i64 [ 1, %bb.bs ], [ 4, %bb.br ], [ 5, %.thread.i ], [ 5, %bb.bq ]
  %.sroa.0.0.i.ph.i = phi ptr [ @57, %bb.bs ], [ @48, %bb.br ], [ @55, %.thread.i ], [ @55, %bb.bq ]
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 384 ; 2 uses
  %i.tq = load i64, ptr %i.tp, align 8, !alias.scope !5691, !noundef !13 ; 2 uses
  %i.tr = icmp ult i64 %i.tq, 576460752303423488
  call void @llvm.assume(i1 %i.tr)
  %i.ts = icmp eq i64 %i.tq, 0
  br i1 %i.ts, label %bb.bu, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i

bb.bu:                                            ; preds = %bb.bt
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 368 ; 2 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !5691, !inline_history !5694
  %i.tu = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #43, !noalias !5691, !inline_history !5694 ; 4 uses
  %i.tv = icmp eq ptr %i.tu, null
  br i1 %i.tv, label %bb.bv, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i, !prof !1217

bb.bv:                                            ; preds = %bb.bu
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #46, !noalias !5691, !inline_history !5694
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.bu
  store ptr %.sroa.0.0.i.ph.i, ptr %i.tu, align 8, !noalias !5691
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  store i64 %.sroa.10.0.i.ph.i, ptr %i.tw, align 8, !noalias !5691
  call void @llvm.experimental.noalias.scope.decl(metadata !5695)
  %.val.i.i = load i64, ptr %i.tt, align 8, !range !14, !alias.scope !5698, !noundef !13 ; 2 uses
  %i.tx = icmp eq i64 %.val.i.i, 0
  br i1 %i.tx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i, label %bb.bw

bb.bw:                                            ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 376
  %.val1.i.i = load ptr, ptr %i.ty, align 8, !alias.scope !5698, !nonnull !13, !noundef !13
  %i.tz = shl nuw i64 %.val.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.tz, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !5698, !inline_history !5694
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i: ; preds = %bb.bw, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i
  store i64 1, ptr %i.tt, align 8, !alias.scope !5691
  %.sroa.4.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 376
  store ptr %i.tu, ptr %.sroa.4.0..sroa_idx.i141, align 8, !alias.scope !5691
  store i64 1, ptr %i.tp, align 8, !alias.scope !5691
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i, %bb.bt, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq
  %i.ua = phi i8 [ %i.to, %bb.bt ], [ %i.to, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i ], [ %i.tl, %bb.bq ], [ %i.tl, %bb.bq ], [ %i.tl, %bb.bq ], [ %i.tl, %bb.bq ], [ %i.tl, %bb.bq ], [ %i.tl, %bb.bq ] ; 3 uses
  switch i8 %i.ua, label %default.unreachable [
    i8 0, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
    i8 1, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
    i8 2, label %bb.by
    i8 3, label %bb.bx
    i8 4, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
    i8 5, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
end_hunk_5
begin_hunk_6_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit547

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit547: ; preds = %bb.cg, %bb.ch
  %i.yi = load ptr, ptr %i.gc, align 8, !alias.scope !8567, !noalias !8575, !nonnull !13, !align !239, !noundef !13 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft), !noalias !8574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs), !noalias !8574
  call void @llvm.experimental.noalias.scope.decl(metadata !8914)
  call void @llvm.experimental.noalias.scope.decl(metadata !8917)
  call void @llvm.experimental.noalias.scope.decl(metadata !8919), !noalias !8567
  call void @llvm.experimental.noalias.scope.decl(metadata !8922), !noalias !8567
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 232
  %i.yk = load ptr, ptr %i.yj, align 8, !alias.scope !8925, !noalias !8926, !nonnull !13, !noundef !13 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yi, i64 240
  %i.ym = load i64, ptr %i.yl, align 8, !alias.scope !8925, !noalias !8926, !noundef !13 ; 2 uses
  %.idx4608 = shl nuw nsw i64 %i.ym, 4
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yk, i64 %.idx4608
  %i.yo = icmp eq i64 %i.ym, 0
  br i1 %i.yo, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit546, label %.lr.ph4577

bb.ci:                                            ; preds = %.lr.ph4577
  %i.yp = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i5384576, i64 16 ; 2 uses
  %i.yq = add i64 %.sroa.8.0.i.i.i5374575, 1
  %i.yr = icmp eq ptr %i.yp, %i.yn
  br i1 %i.yr, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit546, label %.lr.ph4577

.lr.ph4577:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit547, %bb.ci
  %.sroa.0.01.i.i.i5384576 = phi ptr [ %i.yp, %bb.ci ], [ %i.yk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit547 ] ; 2 uses
  %.sroa.8.0.i.i.i5374575 = phi i64 [ %i.yq, %bb.ci ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit547 ] ; 4 uses
  %.val.i.i.i539 = load i128, ptr %.sroa.0.01.i.i.i5384576, align 8, !noalias !8927
  %i.ys = icmp eq i128 %.val.i.i.i539, -100310019091698447603793328749864812255
  br i1 %i.ys, label %bb.cj, label %bb.ci

bb.cj:                                            ; preds = %.lr.ph4577
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yi, i64 264
  %i.yu = load i64, ptr %i.yt, align 8, !alias.scope !8925, !noalias !8926, !noundef !13 ; 2 uses
  %i.yv = icmp ult i64 %.sroa.8.0.i.i.i5374575, %i.yu
  br i1 %i.yv, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i5374575, i64 noundef %i.yu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !8927
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yi, i64 256
  %i.yx = load ptr, ptr %i.yw, align 8, !alias.scope !8925, !noalias !8926, !nonnull !13, !noundef !13
  %i.yy = getelementptr inbounds nuw [32 x i8], ptr %i.yx, i64 %.sroa.8.0.i.i.i5374575 ; 2 uses
  %.val5.i.i540 = load ptr, ptr %i.yy, align 8, !noalias !8928, !nonnull !13, !noundef !13
  %i.yz = getelementptr i8, ptr %i.yy, i64 8
  %.val6.i.i541 = load ptr, ptr %i.yz, align 8, !noalias !8928, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.val6.i.i541, i64 16
  %i.zb = load i64, ptr %i.za, align 8, !range !240, !invariant.load !13, !noalias !8928
  %i.zc = add nsw i64 %i.zb, -1
  %i.zd = and i64 %i.zc, -16
  %i.ze = getelementptr inbounds nuw i8, ptr %.val5.i.i540, i64 %i.zd
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8928
  %i.zg = getelementptr inbounds nuw i8, ptr %.val6.i.i541, i64 24
  %i.zh = load ptr, ptr %i.zg, align 8, !invariant.load !13, !noalias !8928, !nonnull !13
  call void %i.zh(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noundef nonnull %i.zf) #45, !noalias !8928, !inline_history !8898
  %i.zi = load i128, ptr %i.p, align 16, !noalias !8928, !noundef !13
  %.not.i.i542 = icmp eq i128 %i.zi, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8928
  br i1 %.not.i.i542, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit546, label %bb.cm, !prof !159

bb.cm:                                            ; preds = %bb.cl
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !8928
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit546: ; preds = %bb.ci, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit547, %bb.cl
  %.sroa.0.0.i.i543 = phi ptr [ %i.zf, %bb.cl ], [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit547 ], [ null, %bb.ci ] ; 2 uses
  %.not.i544 = icmp eq ptr %.sroa.0.0.i.i543, null
  %..i545 = select i1 %.not.i544, ptr @99, ptr %.sroa.0.0.i.i543 ; 5 uses
  store ptr %i.yi, ptr %i.fs, align 8, !alias.scope !8914, !noalias !8929
  %i.zj = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr %..i545, ptr %i.zj, align 8, !alias.scope !8914, !noalias !8929
  %i.zk = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store ptr null, ptr %i.zk, align 8, !alias.scope !8914, !noalias !8929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !8930
  store i64 0, ptr %i.t, align 8, !alias.scope !8935, !noalias !8930
  %.sroa.42.0..sroa_idx.i.i518 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i518, align 8, !alias.scope !8935, !noalias !8930
  %.sroa.53.0..sroa_idx.i.i519 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i519, align 8, !alias.scope !8935, !noalias !8930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !8930
  %i.zl = getelementptr inbounds nuw i8, ptr %..i545, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.s, ptr noundef nonnull align 2 dereferenceable(14) %i.zl, i64 14, i1 false), !noalias !8930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !8930
  %.sroa.0.0.copyload.i520 = load i8, ptr %i.zl, align 2, !noalias !8930
  %.sroa.7.0..sroa_idx.i521 = getelementptr inbounds nuw i8, ptr %..i545, i64 32
  %.sroa.7.0.copyload.i522 = load i8, ptr %.sroa.7.0..sroa_idx.i521, align 2, !noalias !8930
  %.sroa.11.0..sroa_idx.i523 = getelementptr inbounds nuw i8, ptr %..i545, i64 36
  %.sroa.11.0.copyload.i524 = load i8, ptr %.sroa.11.0..sroa_idx.i523, align 2, !noalias !8930
  %.sroa.15.0..sroa_idx.i525 = getelementptr inbounds nuw i8, ptr %..i545, i64 40
  %.sroa.15.0.copyload.i526 = load i16, ptr %.sroa.15.0..sroa_idx.i525, align 2, !noalias !8930
  %.not.i.i527 = icmp eq i8 %.sroa.0.0.copyload.i520, -1
  %.not5.i.i528 = icmp eq i8 %.sroa.7.0.copyload.i522, -1
  %or.cond.i529 = select i1 %.not.i.i527, i1 %.not5.i.i528, i1 false
  %.not7.i.i530 = icmp eq i8 %.sroa.11.0.copyload.i524, -1
  %or.cond35.i531 = select i1 %or.cond.i529, i1 %.not7.i.i530, i1 false
  %i.zm = icmp eq i16 %.sroa.15.0.copyload.i526, 0
  %or.cond36.i532 = select i1 %or.cond35.i531, i1 %i.zm, i1 false ; 2 uses
  %spec.select.i533 = select i1 %or.cond36.i532, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i534 = select i1 %or.cond36.i532, i64 0, i64 4
  store ptr %spec.select.i533, ptr %i.r, align 8, !noalias !8930, !captures !354
  %i.zn = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select38.i534, ptr %i.zn, align 8, !noalias !8930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !8930
  store ptr %i.s, ptr %i.q, align 8, !noalias !8930
  %.sroa.48.0..sroa_idx.i535 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i535, align 8, !noalias !8930
  %i.zo = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.zo, align 8, !noalias !8930
  %.sroa.412.0..sroa_idx.i536 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i536, align 8, !noalias !8930
  %i.zp = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.q) #43, !noalias !8930, !inline_history !8908 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !8930
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fs, ptr noalias nofree noundef align 8 dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #43, !noalias !8938, !inline_history !8908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ft, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !8939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !8930
  %i.zq = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error9no_equalsB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.yi, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.fu, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ft) #43, !noalias !8567, !inline_history !8589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft), !noalias !8574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !noalias !8574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu), !noalias !8574
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit417

bb.cn:                                            ; preds = %bb.bt
  %i.zr = ptrtoint ptr %.sroa.3.0.copyload.i to i64
  %i.zs = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15resolve_pending(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #43, !inline_history !8589 ; 2 uses
  %i.zt = icmp eq ptr %i.zs, null
  br i1 %i.zt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit517, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEBF_(ptr nonnull %i.zs) #43, !noalias !8567
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit517

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit517: ; preds = %bb.cn, %bb.co
  %i.zu = call { ptr, ptr } @_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs9remaining(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ga) #43, !noalias !8567, !inline_history !8589 ; 2 uses
  %i.zv = extractvalue { ptr, ptr } %i.zu, 0      ; 5 uses
  %i.zw = extractvalue { ptr, ptr } %i.zu, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zw) ], !noalias !8567
  %i.zx = ptrtoint ptr %i.zw to i64
  %i.zy = ptrtoint ptr %i.zv to i64
  %i.zz = sub nuw i64 %i.zx, %i.zy                ; 3 uses
  %i.aaa = udiv i64 %i.zz, 24                     ; 6 uses
  %i.aab = shl nuw i64 %i.aaa, 4                  ; 2 uses
  %.not.i.i.i513 = icmp ugt i64 %i.zz, -4611686018427387928
  br i1 %.not.i.i.i513, label %bb.cq, label %bb.cp, !prof !321

bb.cp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit517
  %i.aac = icmp eq ptr %i.zw, %i.zv
  br i1 %i.aac, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i514

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i514: ; preds = %bb.cp
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8940
  %i.aad = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aab, i64 noundef range(i64 1, 9) 8) #43, !noalias !8940 ; 6 uses
  %i.aae = icmp eq ptr %i.aad, null
  br i1 %i.aae, label %bb.cq, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i514
  %xtraiter5364 = and i64 %i.aaa, 1
  %.off = add i64 %i.zz, -24
  %i.aaf = icmp ult i64 %.off, 24
  br i1 %i.aaf, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter5367 = and i64 %i.aaa, 1152921504606846974
  br label %.preheader.i.i.i

bb.cq:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i514, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit517
  %.sroa.10.0.ph.i.i = phi i64 [ %i.aab, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i514 ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit517 ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i514 ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit517 ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #46, !noalias !8945
  unreachable

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %i.aag = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.aas, %.preheader.i.i.i ] ; 4 uses
  %niter5368 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter5368.next.1, %.preheader.i.i.i ]
  %i.aah = getelementptr inbounds nuw [24 x i8], ptr %i.zv, i64 %i.aag ; 2 uses
  %i.aai = getelementptr i8, ptr %i.aah, i64 8
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.aai, align 8, !noalias !8946, !nonnull !13, !noundef !13
  %i.aaj = getelementptr i8, ptr %i.aah, i64 16
  %.val12.i.i.i.i.i.i = load i64, ptr %i.aaj, align 8, !noalias !8946, !noundef !13
  %i.aak = getelementptr inbounds nuw [16 x i8], ptr %i.aad, i64 %i.aag ; 2 uses
  store ptr %.val11.i.i.i.i.i.i, ptr %i.aak, align 8, !noalias !8957, !captures !354
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  store i64 %.val12.i.i.i.i.i.i, ptr %i.aal, align 8, !noalias !8966
  %i.aam = or disjoint i64 %i.aag, 1              ; 2 uses
  %i.aan = getelementptr inbounds nuw [24 x i8], ptr %i.zv, i64 %i.aam ; 2 uses
  %i.aao = getelementptr i8, ptr %i.aan, i64 8
  %.val11.i.i.i.i.i.i.1 = load ptr, ptr %i.aao, align 8, !noalias !8946, !nonnull !13, !noundef !13
  %i.aap = getelementptr i8, ptr %i.aan, i64 16
  %.val12.i.i.i.i.i.i.1 = load i64, ptr %i.aap, align 8, !noalias !8946, !noundef !13
  %i.aaq = getelementptr inbounds nuw [16 x i8], ptr %i.aad, i64 %i.aam ; 2 uses
  store ptr %.val11.i.i.i.i.i.i.1, ptr %i.aaq, align 8, !noalias !8957, !captures !354
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  store i64 %.val12.i.i.i.i.i.i.1, ptr %i.aar, align 8, !noalias !8966
  %i.aas = add nuw i64 %i.aag, 2                  ; 2 uses
  %niter5368.next.1 = add i64 %niter5368, 2       ; 2 uses
  %niter5368.ncmp.1 = icmp eq i64 %niter5368.next.1, %unroll_iter5367
  br i1 %niter5368.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa, label %.preheader.i.i.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod5365.not = icmp eq i64 %xtraiter5364, 0
  br i1 %lcmp.mod5365.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.aas, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod5366 = trunc i64 %i.aaa to i1
  call void @llvm.assume(i1 %lcmp.mod5366)
  %i.aat = getelementptr inbounds nuw [24 x i8], ptr %i.zv, i64 %.epil.init ; 2 uses
  %i.aau = getelementptr i8, ptr %i.aat, i64 8
  %.val11.i.i.i.i.i.i.epil = load ptr, ptr %i.aau, align 8, !noalias !8946, !nonnull !13, !noundef !13
  %i.aav = getelementptr i8, ptr %i.aat, i64 16
  %.val12.i.i.i.i.i.i.epil = load i64, ptr %i.aav, align 8, !noalias !8946, !noundef !13
  %i.aaw = getelementptr inbounds nuw [16 x i8], ptr %i.aad, i64 %.epil.init ; 2 uses
  store ptr %.val11.i.i.i.i.i.i.epil, ptr %i.aaw, align 8, !noalias !8957, !captures !354
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  store i64 %.val12.i.i.i.i.i.i.epil, ptr %i.aax, align 8, !noalias !8966
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %.preheader.i.i.i.epil.preheader, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa, %bb.cp
  %.sroa.4.0.i8.i = phi i64 [ 0, %bb.cp ], [ %i.aaa, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa ], [ %i.aaa, %.preheader.i.i.i.epil.preheader ] ; 3 uses
  %.sroa.10.0.i7.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.cp ], [ %i.aad, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa ], [ %i.aad, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %i.aay = inttoptr i64 %.sroa.737.0.copyload.i to ptr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8967)
  call void @llvm.experimental.noalias.scope.decl(metadata !8970)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %i.aay, ptr %i.as, align 8, !noalias !8972
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store i64 %.sroa.8.sroa.0.0.copyload.i, ptr %i.aaz, align 8, !noalias !8972
  %i.aba = load ptr, ptr %i.gc, align 8, !alias.scope !8967, !noalias !8975, !nonnull !13, !align !239, !noundef !13 ; 19 uses
  %i.abb = getelementptr i8, ptr %i.aba, i64 160  ; 2 uses
  %.val22.i418 = load ptr, ptr %i.abb, align 8, !noalias !8976, !nonnull !13, !noundef !13 ; 2 uses
  %i.abc = getelementptr i8, ptr %i.aba, i64 168  ; 2 uses
  %.val23.i = load i64, ptr %i.abc, align 8, !noalias !8976, !noundef !13 ; 2 uses
  %.idx4606 = shl nuw nsw i64 %.val23.i, 5
  %i.abd = getelementptr inbounds nuw i8, ptr %.val22.i418, i64 %.idx4606 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !8977
  %i.abe = icmp eq i64 %.val23.i, 0
  br i1 %i.abe, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i, label %.lr.ph4571

bb.cr:                                            ; preds = %.lr.ph4571
  %i.abf = icmp eq ptr %i.abh, %i.abd
  br i1 %i.abf, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i, label %.lr.ph4571

.lr.ph4571:                                       ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit, %bb.cr
  %i.abg = phi ptr [ %i.abh, %bb.cr ], [ %.val22.i418, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit ] ; 4 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8980)
  call void @llvm.experimental.noalias.scope.decl(metadata !8983)
  call void @llvm.experimental.noalias.scope.decl(metadata !8986)
  call void @llvm.experimental.noalias.scope.decl(metadata !8989)
  %i.abi = load i32, ptr %i.abg, align 8, !range !1176, !alias.scope !8992, !noalias !8993, !noundef !13
  %i.abj = icmp eq i32 %i.abi, 1
  br i1 %i.abj, label %bb.cs, label %bb.cr

bb.cs:                                            ; preds = %.lr.ph4571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !9010
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abl = load ptr, ptr %i.abk, align 8, !alias.scope !8992, !noalias !8993, !nonnull !13, !noundef !13
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %i.abn = load i64, ptr %i.abm, align 8, !alias.scope !8992, !noalias !8993, !noundef !13
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.abl, i64 noundef %i.abn) #43, !noalias !9011
  %i.abo = load i64, ptr %i.aj, align 8, !range !127, !noalias !9010, !noundef !13 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.abo, -1
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !noalias !9010 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.abs = load i64, ptr %i.abr, align 8, !noalias !9010 ; 8 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ct, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419

bb.ct:                                            ; preds = %bb.cs
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %i.abs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.cv, label %bb.cu, !prof !321

bb.cu:                                            ; preds = %bb.ct
  %i.abt = icmp eq i64 %i.abs, 0
  br i1 %i.abt, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cu
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !9012
  %i.abu = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.abs, i64 noundef range(i64 1, 9) 1) #43, !noalias !9012 ; 3 uses
  %i.abv = icmp eq ptr %i.abu, null
  br i1 %i.abv, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ct
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ct ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %i.abs) #46, !noalias !9011
  unreachable

bb.cw:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.abu, ptr nonnull align 1 %i.abq, i64 %i.abs, i1 false), !noalias !9011
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419: ; preds = %bb.cw, %bb.cu, %bb.cs
  %.sroa.65.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.cu ], [ %i.abs, %bb.cw ], [ %i.abs, %bb.cs ]
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.cu ], [ %i.abu, %bb.cw ], [ %i.abq, %bb.cs ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.cu ], [ %i.abs, %bb.cw ], [ %i.abo, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9010
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !9015
  %i.abw = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 96, i64 noundef range(i64 1, 9) 8) #43, !noalias !9015 ; 6 uses
  %i.abx = icmp eq ptr %i.abw, null
  br i1 %i.abx, label %bb.cx, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i

bb.cx:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #46, !noalias !9018
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419
  store i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, ptr %i.abw, align 8, !noalias !9018
  %.sroa.412.0..sroa_idx.i.i420 = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i420, align 8, !noalias !9018
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.abw, i64 16
  store i64 %.sroa.65.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !9018
  store i64 4, ptr %i.ak, align 8, !noalias !8977
  %.sroa.4.0..sroa_idx.i.i421 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  store ptr %i.abw, ptr %.sroa.4.0..sroa_idx.i.i421, align 8, !noalias !8977
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !8977
  call void @llvm.experimental.noalias.scope.decl(metadata !9019)
  call void @llvm.experimental.noalias.scope.decl(metadata !9022)
  %i.aby = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.abz = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  br label %bb.cy

bb.cy:                                            ; preds = %bb.dh, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i
  %i.aca = phi ptr [ %i.abw, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.act, %bb.dh ]
  %.sroa.8.0.copyload.i = phi i64 [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.acv, %bb.dh ] ; 6 uses
  %.sroa.0.0.i.i.i.i422 = phi ptr [ %i.abh, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.acd, %bb.dh ]
  br label %bb.cz

bb.cz:                                            ; preds = %bb.da, %bb.cy
  %i.acb = phi ptr [ %i.acd, %bb.da ], [ %.sroa.0.0.i.i.i.i422, %bb.cy ] ; 5 uses
  %i.acc = icmp eq ptr %i.acb, %i.abd
  br i1 %i.acc, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acb, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9025)
  call void @llvm.experimental.noalias.scope.decl(metadata !9028)
  call void @llvm.experimental.noalias.scope.decl(metadata !9031)
  call void @llvm.experimental.noalias.scope.decl(metadata !9034)
  %i.ace = load i32, ptr %i.acb, align 8, !range !1176, !alias.scope !9037, !noalias !9038, !noundef !13
  %i.acf = icmp eq i32 %i.ace, 1
  br i1 %i.acf, label %bb.db, label %bb.cz

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !9055
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  %i.ach = load ptr, ptr %i.acg, align 8, !alias.scope !9037, !noalias !9038, !nonnull !13, !noundef !13
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  %i.acj = load i64, ptr %i.aci, align 8, !alias.scope !9037, !noalias !9038, !noundef !13
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ach, i64 noundef %i.acj) #43, !noalias !9056
  %i.ack = load i64, ptr %i.ai, align 8, !range !127, !noalias !9055, !noundef !13 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i423 = icmp eq i64 %i.ack, -1
  %i.acl = load ptr, ptr %i.aby, align 8, !noalias !9055 ; 2 uses
  %i.acm = load i64, ptr %i.abz, align 8, !noalias !9055 ; 8 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i423, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %bb.db
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %i.acm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.de, label %bb.dd, !prof !321

bb.dd:                                            ; preds = %bb.dc
  %i.acn = icmp eq i64 %i.acm, 0
  br i1 %i.acn, label %bb.dg, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dd
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !9057
  %i.aco = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.acm, i64 noundef range(i64 1, 9) 1) #43, !noalias !9057 ; 3 uses
  %i.acp = icmp eq ptr %i.aco, null
  br i1 %i.acp, label %bb.de, label %bb.df

bb.de:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dc
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.dc ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.acm) #46, !noalias !9056
  unreachable

bb.df:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aco, ptr nonnull align 1 %i.acl, i64 %i.acm, i1 false), !noalias !9056
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.dd, %bb.db
  %.sroa.65.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.dd ], [ %i.acm, %bb.df ], [ %i.acm, %bb.db ]
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.dd ], [ %i.aco, %bb.df ], [ %i.acl, %bb.db ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.dd ], [ %i.acm, %bb.df ], [ %i.ack, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !9055
  %i.acq = icmp samesign ult i64 %.sroa.8.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.acq)
  %i.acr = load i64, ptr %i.ak, align 8, !range !14, !alias.scope !9060, !noalias !8977, !noundef !13
  %i.acs = icmp eq i64 %.sroa.8.0.copyload.i, %i.acr
  br i1 %i.acs, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %bb.dh

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.dg
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %.sroa.8.0.copyload.i, i64 noundef 1, i64 noundef 8, i64 noundef 24) #43, !noalias !9018
end_hunk_6
begin_hunk_7_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEBF_(ptr nonnull %i.ccf) #43, !noalias !10175
  br label %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorE11inspect_errNCNvMs_NtNtBN_6parser6parserNtB1M_6Parser16get_matches_with0EBN_.exit.thread

_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorE11inspect_errNCNvMs_NtNtBN_6parser6parserNtB1M_6Parser16get_matches_with0EBN_.exit: ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5parse.exit, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5parse.exit.thread
  %i.cch = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15resolve_pending(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(120) %1) #43 ; 2 uses
  %.not7 = icmp eq ptr %i.cch, null
  br i1 %.not7, label %bb.ol, label %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorE11inspect_errNCNvMs_NtNtBN_6parser6parserNtB1M_6Parser16get_matches_with0EBN_.exit.thread

bb.ol:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorE11inspect_errNCNvMs_NtNtBN_6parser6parserNtB1M_6Parser16get_matches_with0EBN_.exit
  %i.cci = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser12add_defaults(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(120) %1) #43 ; 2 uses
  %.not8 = icmp eq ptr %i.cci, null
  br i1 %.not8, label %bb.om, label %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorE11inspect_errNCNvMs_NtNtBN_6parser6parserNtB1M_6Parser16get_matches_with0EBN_.exit.thread

bb.om:                                            ; preds = %bb.ol
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb)
  %i.ccj = load ptr, ptr %i.gc, align 8, !nonnull !13, !align !239, !noundef !13 ; 3 uses
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14required_graph(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.gb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.ccj) #43
  %i.cck = getelementptr inbounds nuw i8, ptr %i.gb, i64 24 ; 12 uses
  store ptr %i.ccj, ptr %i.cck, align 8, !alias.scope !10176, !noalias !10179
  call void @llvm.experimental.noalias.scope.decl(metadata !10181)
  call void @llvm.experimental.noalias.scope.decl(metadata !10184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei), !noalias !10186
  call void @llvm.experimental.noalias.scope.decl(metadata !10187)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !10190
  store i64 0, ptr %i.ef, align 8, !noalias !10190
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !10190
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 3 uses
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !10190
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !10190
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !10190
  %i.ccm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ccn = load ptr, ptr %i.ccm, align 8, !alias.scope !10193, !noalias !10198, !nonnull !13, !noundef !13 ; 15 uses
  %i.cco = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ccp = load i64, ptr %i.cco, align 8, !alias.scope !10193, !noalias !10198, !noundef !13 ; 3 uses
  %.idx.i = shl i64 %i.ccp, 4                     ; 3 uses
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.ccn, i64 %.idx.i ; 15 uses
  %i.ccr = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ccs = load ptr, ptr %i.ccr, align 8, !alias.scope !10193, !noalias !10198, !nonnull !13, !noundef !13 ; 18 uses
  %i.cct = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ccu = load i64, ptr %i.cct, align 8, !alias.scope !10193, !noalias !10198, !noundef !13 ; 18 uses
  %i.ccv = getelementptr inbounds nuw [104 x i8], ptr %i.ccs, i64 %i.ccu ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10201)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.97.i.i.i)
  %i.ccw = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %.sroa.97.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  br label %bb.on

bb.on:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEE8push_mutBP_.exit.i.i.i, %bb.om
  %i.ccx = phi i64 [ 0, %bb.om ], [ %i.cdt, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEE8push_mutBP_.exit.i.i.i ]
  %.sroa.6.0.i.i.i = phi ptr [ %i.ccs, %bb.om ], [ %i.cdd, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEE8push_mutBP_.exit.i.i.i ]
  %.sroa.0.0.i.i.i10 = phi ptr [ %i.ccn, %bb.om ], [ %i.cdc, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEE8push_mutBP_.exit.i.i.i ]
  br label %bb.oo

bb.oo:                                            ; preds = %bb.or, %bb.on
  %i.ccy = phi ptr [ %i.cdd, %bb.or ], [ %.sroa.6.0.i.i.i, %bb.on ] ; 3 uses
  %i.ccz = phi ptr [ %i.cdc, %bb.or ], [ %.sroa.0.0.i.i.i10, %bb.on ] ; 4 uses
  %i.cda = icmp eq ptr %i.ccz, %i.ccq
  br i1 %i.cda, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts9with_args.exit.i, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.cdb = icmp eq ptr %i.ccy, %i.ccv
  br i1 %i.cdb, label %bb.oq, label %bb.or, !prof !269

bb.oq:                                            ; preds = %bb.op
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #44, !noalias !10204
  unreachable

bb.or:                                            ; preds = %bb.op
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.ccz, i64 16 ; 2 uses
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.ccy, i64 104 ; 2 uses
  %i.cde = getelementptr inbounds nuw i8, ptr %i.ccy, i64 97
  %i.cdf = load i8, ptr %i.cde, align 1, !range !1779, !alias.scope !10217, !noalias !10222, !noundef !13
  %cond.i.i.i.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cdf, 0
  br i1 %cond.i.i.i.not.i.i.i.i.i.i.i.i, label %bb.oo, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB1n_2id2IdNtNtNtNtB1p_6parser7matches11matched_arg10MatchedArgENCNvMs_NtB2u_9validatorNtB3m_9Conflicts9with_args0ENCB3h_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1p_.exit.i.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB1n_2id2IdNtNtNtNtB1p_6parser7matches11matched_arg10MatchedArgENCNvMs_NtB2u_9validatorNtB3m_9Conflicts9with_args0ENCB3h_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1p_.exit.i.i.i: ; preds = %bb.or
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !10225
  %.val3.i.i.i.i = load ptr, ptr %i.ccz, align 8, !noalias !10226 ; 3 uses
  %i.cdg = getelementptr i8, ptr %i.ccz, i64 8
  %.val4.i.i.i.i = load i64, ptr %i.cdg, align 8, !noalias !10226 ; 2 uses
  call fastcc void @_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23gather_direct_conflicts(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ccw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.ccj, ptr %.val3.i.i.i.i, i64 %.val4.i.i.i.i) #43, !noalias !10227
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i.i) ]
  %.sroa.66.0.copyload.i.i.i = load i64, ptr %i.ccw, align 8, !noalias !10228 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.97.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.97.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !10229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !10225
  %.not.i.i.i11 = icmp eq i64 %.sroa.66.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i11, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts9with_args.exit.i, label %bb.os

bb.os:                                            ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB1n_2id2IdNtNtNtNtB1p_6parser7matches11matched_arg10MatchedArgENCNvMs_NtB2u_9validatorNtB3m_9Conflicts9with_args0ENCB3h_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1p_.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10230)
  %i.cdh = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !10233, !noalias !10234, !noundef !13 ; 3 uses
  %i.cdi = load i64, ptr %i.ef, align 8, !range !14, !alias.scope !10233, !noalias !10234, !noundef !13
  %i.cdj = icmp eq i64 %i.cdh, %i.cdi
  br i1 %i.cdj, label %bb.ot, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i

bb.ot:                                            ; preds = %bb.os
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ef) #42, !noalias !10236
  %.pre.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !10237, !noalias !10240
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i: ; preds = %bb.ot, %bb.os
  %i.cdk = phi i64 [ %.pre.i.i, %bb.ot ], [ %i.ccx, %bb.os ] ; 3 uses
  %i.cdl = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !10233, !noalias !10234, !nonnull !13, !noundef !13
  %i.cdm = getelementptr inbounds nuw [16 x i8], ptr %i.cdl, i64 %i.cdh ; 2 uses
  store ptr %.val3.i.i.i.i, ptr %i.cdm, align 8, !noalias !10242
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.cdm, i64 8
  store i64 %.val4.i.i.i.i, ptr %i.cdn, align 8, !noalias !10243
  %i.cdo = add i64 %i.cdh, 1
  store i64 %i.cdo, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !10233, !noalias !10234
  call void @llvm.experimental.noalias.scope.decl(metadata !10244)
  %i.cdp = load i64, ptr %i.ccl, align 8, !range !14, !alias.scope !10237, !noalias !10240, !noundef !13
  %i.cdq = icmp eq i64 %i.cdk, %i.cdp
  br i1 %i.cdq, label %bb.ou, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEE8push_mutBP_.exit.i.i.i

bb.ou:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEE8grow_oneB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ccl) #42, !noalias !10245
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEE8push_mutBP_.exit.i.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEE8push_mutBP_.exit.i.i.i: ; preds = %bb.ou, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i
  %i.cdr = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !10237, !noalias !10240, !nonnull !13, !noundef !13
  %i.cds = getelementptr inbounds nuw [24 x i8], ptr %i.cdr, i64 %i.cdk ; 2 uses
  store i64 %.sroa.66.0.copyload.i.i.i, ptr %i.cds, align 8, !noalias !10246
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cds, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.97.i.i.i, i64 16, i1 false), !noalias !10247
  %i.cdt = add i64 %i.cdk, 1                      ; 2 uses
  store i64 %i.cdt, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !10237, !noalias !10240
  br label %bb.on

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts9with_args.exit.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB1n_2id2IdNtNtNtNtB1p_6parser7matches11matched_arg10MatchedArgENCNvMs_NtB2u_9validatorNtB3m_9Conflicts9with_args0ENCB3h_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1p_.exit.i.i.i, %bb.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.97.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ei, ptr noundef nonnull align 8 dereferenceable(48) %i.ef, i64 48, i1 false), !noalias !10248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !10190
  %i.cdu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val27.i = load ptr, ptr %i.cdu, align 8, !alias.scope !10184, !noalias !10181, !align !239, !noundef !13
  %.not.i.i = icmp eq ptr %.val27.i, null
  br i1 %.not.i.i, label %bb.ov, label %bb.pc

bb.ov:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts9with_args.exit.i
  %i.cdv = load ptr, ptr %i.cck, align 8, !alias.scope !10181, !noalias !10184, !nonnull !13, !align !239, !noundef !13 ; 8 uses
  %i.cdw = getelementptr i8, ptr %i.cdv, i64 700
  %.val28.i = load i32, ptr %i.cdw, align 4, !noalias !10184, !noundef !13 ; 2 uses
  %i.cdx = getelementptr i8, ptr %i.cdv, i64 704
  %.val29.i = load i32, ptr %i.cdx, align 8, !noalias !10184 ; 2 uses
  %i.cdy = and i32 %.val28.i, 65536
  %.not.i30.i = icmp ne i32 %i.cdy, 0
  %i.cdz = and i32 %.val29.i, 65536
  %i.cea = icmp ne i32 %i.cdz, 0
  %.sroa.0.0.i31.i = select i1 %.not.i30.i, i1 true, i1 %i.cea
  br i1 %.sroa.0.0.i31.i, label %bb.ow, label %bb.pb

bb.ow:                                            ; preds = %bb.ov
  %i.ceb = icmp eq i64 %i.ccp, 0
  br i1 %i.ceb, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.thread.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.ow
  %i.cec = and i64 %i.ccu, 2305843009213693951
  %i.ced = add nsw i64 %.idx.i, -16               ; 2 uses
  %i.cee = lshr exact i64 %i.ced, 4               ; 2 uses
  %.not.i16 = icmp samesign ugt i64 %i.cec, %i.cee
  br i1 %.not.i16, label %.lr.ph.i.i.i.preheader, label %bb.ox, !prof !159

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.preheader.i
  %i.cef = add nuw nsw i64 %i.cee, 1              ; 2 uses
  %xtraiter5372 = and i64 %i.cef, 3               ; 3 uses
  %i.ceg = icmp ult i64 %i.ced, 48
  br i1 %i.ceg, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter5380 = and i64 %i.cef, 2305843009213693948
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %i.ceh = phi ptr [ %i.ccs, %.lr.ph.i.i.i.preheader.new ], [ %i.cer, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.0.012.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.ceu, %.lr.ph.i.i.i ]
  %niter5381 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter5381.next.3, %.lr.ph.i.i.i ]
  %i.cei = getelementptr i8, ptr %i.ceh, i64 97
  %.val.i.i.i = load i8, ptr %i.cei, align 1, !range !1779, !alias.scope !10249, !noalias !10254, !noundef !13
  %cond.i.i.i.i.i.i.i = icmp ne i8 %.val.i.i.i, 0
  %i.cej = zext i1 %cond.i.i.i.i.i.i.i to i64
  %i.cek = add i64 %.sroa.0.012.i.i.i, %i.cej
  %i.cel = getelementptr i8, ptr %i.ceh, i64 201
  %.val.i.i.i.1 = load i8, ptr %i.cel, align 1, !range !1779, !alias.scope !10249, !noalias !10254, !noundef !13
  %cond.i.i.i.i.i.i.i.1 = icmp ne i8 %.val.i.i.i.1, 0
  %i.cem = zext i1 %cond.i.i.i.i.i.i.i.1 to i64
  %i.cen = add i64 %i.cek, %i.cem
  %i.ceo = getelementptr i8, ptr %i.ceh, i64 305
  %.val.i.i.i.2 = load i8, ptr %i.ceo, align 1, !range !1779, !alias.scope !10249, !noalias !10254, !noundef !13
  %cond.i.i.i.i.i.i.i.2 = icmp ne i8 %.val.i.i.i.2, 0
  %i.cep = zext i1 %cond.i.i.i.i.i.i.i.2 to i64
  %i.ceq = add i64 %i.cen, %i.cep
  %i.cer = getelementptr inbounds nuw i8, ptr %i.ceh, i64 416 ; 2 uses
  %i.ces = getelementptr i8, ptr %i.ceh, i64 409
  %.val.i.i.i.3 = load i8, ptr %i.ces, align 1, !range !1779, !alias.scope !10249, !noalias !10254, !noundef !13
  %cond.i.i.i.i.i.i.i.3 = icmp ne i8 %.val.i.i.i.3, 0
  %i.cet = zext i1 %cond.i.i.i.i.i.i.i.3 to i64
  %i.ceu = add i64 %i.ceq, %i.cet                 ; 3 uses
  %niter5381.next.3 = add i64 %niter5381, 4       ; 2 uses
  %niter5381.ncmp.3 = icmp eq i64 %niter5381.next.3, %unroll_iter5380
  br i1 %niter5381.ncmp.3, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i.unr-lcssa, label %.lr.ph.i.i.i

bb.ox:                                            ; preds = %.lr.ph.i.i.preheader.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #44, !noalias !10260
  unreachable

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod5377.not = icmp eq i64 %xtraiter5372, 0
  br i1 %lcmp.mod5377.not, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.epil.init5374 = phi ptr [ %i.ccs, %.lr.ph.i.i.i.preheader ], [ %i.cer, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i.unr-lcssa ]
  %.sroa.0.012.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.ceu, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i.unr-lcssa ]
  %lcmp.mod5379 = icmp ne i64 %xtraiter5372, 0
  call void @llvm.assume(i1 %lcmp.mod5379)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %i.cev = phi ptr [ %i.cew, %.lr.ph.i.i.i.epil ], [ %.epil.init5374, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.0.012.i.i.i.epil = phi i64 [ %i.cez, %.lr.ph.i.i.i.epil ], [ %.sroa.0.012.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cev, i64 104
  %i.cex = getelementptr i8, ptr %i.cev, i64 97
  %.val.i.i.i.epil = load i8, ptr %i.cex, align 1, !range !1779, !alias.scope !10249, !noalias !10254, !noundef !13
  %cond.i.i.i.i.i.i.i.epil = icmp ne i8 %.val.i.i.i.epil, 0
  %i.cey = zext i1 %cond.i.i.i.i.i.i.i.epil to i64
  %i.cez = add i64 %.sroa.0.012.i.i.i.epil, %i.cey ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter5372
  br i1 %epil.iter.cmp.not, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !10263

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i: ; preds = %.lr.ph.i.i.i.epil, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i.unr-lcssa
  %.lcssa4786 = phi i64 [ %i.ceu, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i.unr-lcssa ], [ %i.cez, %.lr.ph.i.i.i.epil ]
  %i.cfa = icmp eq i64 %.lcssa4786, 0
  br i1 %i.cfa, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.thread.i, label %bb.pb

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.thread.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i, %bb.ow
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !noalias !10186
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.cdv, i1 noundef zeroext false) #43, !noalias !10184
  %i.cfb = load ptr, ptr %i.cck, align 8, !alias.scope !10181, !noalias !10184, !nonnull !13, !align !239, !noundef !13
  %i.cfc = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 13, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.cfb, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.eh) #42, !noalias !10184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !10186
  br label %bb.oy

bb.oy:                                            ; preds = %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18missing_subcommandB4_.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator17validate_required.exit.i, %bb.pd, %bb.pc, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.thread.i
  %.sroa.0.0.i12 = phi ptr [ %i.dsz, %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18missing_subcommandB4_.exit.i ], [ %i.cfv, %bb.pd ], [ %i.cfc, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.thread.i ], [ %i.cfu, %bb.pc ], [ %i.dee, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator17validate_required.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10264)
  call void @llvm.experimental.noalias.scope.decl(metadata !10267)
  call void @llvm.experimental.noalias.scope.decl(metadata !10270)
  %.val.i.i.i.i = load i64, ptr %i.ei, align 8, !range !14, !alias.scope !10273, !noalias !10186, !noundef !13 ; 2 uses
  %i.cfd = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.cfd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.cfe, align 8, !alias.scope !10273, !noalias !10186, !nonnull !13, !noundef !13
  %i.cff = shl nuw i64 %.val.i.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.cff, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10274
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i: ; preds = %bb.oz, %bb.oy
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !10275)
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %.val.i1.i.i.i = load ptr, ptr %i.cfh, align 8, !alias.scope !10278, !noalias !10186, !nonnull !13, !noundef !13 ; 2 uses
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %.val1.i2.i.i.i = load i64, ptr %i.cfi, align 8, !alias.scope !10278, !noalias !10186, !noundef !13 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10279)
  %i.cfj = icmp eq i64 %.val1.i2.i.i.i, 0
  br i1 %i.cfj, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ %i.cfl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i ] ; 2 uses
  %i.cfk = getelementptr inbounds nuw [24 x i8], ptr %.val.i1.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.cfl = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10282)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.cfk, align 8, !range !14, !alias.scope !10285, !noalias !10286, !noundef !13 ; 2 uses
  %i.cfm = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.cfm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i.i, label %bb.pa

bb.pa:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cfk, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.cfn, align 8, !alias.scope !10285, !noalias !10286, !nonnull !13, !noundef !13
  %i.cfo = shl nuw i64 %.val.i.i.i.i.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.cfo, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10287
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i.i: ; preds = %bb.pa, %.lr.ph.i.i.i.i.i.i
  %i.cfp = icmp eq i64 %i.cfl, %.val1.i2.i.i.i
  br i1 %i.cfp, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i
  %.val2.i.i.i.i = load i64, ptr %i.cfg, align 8, !range !14, !alias.scope !10278, !noalias !10186, !noundef !13 ; 2 uses
  %i.cfq = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.cfq, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator8validate.exit, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator8validate.exit.sink.split

bb.pb:                                            ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i, %bb.ov
  %i.cfr = and i32 %.val28.i, 512
  %.not.i32.i = icmp ne i32 %i.cfr, 0
  %i.cfs = and i32 %.val29.i, 512
  %i.cft = icmp ne i32 %i.cfs, 0
  %.sroa.0.0.i33.i = select i1 %.not.i32.i, i1 true, i1 %i.cft
  br i1 %.sroa.0.0.i33.i, label %bb.pe, label %bb.pd

bb.pc:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts9with_args.exit.i
  %i.cfu = call fastcc noundef align 8 ptr @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_conflicts(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ei) #43 ; 2 uses
  %.not18.i = icmp eq ptr %i.cfu, null
  br i1 %.not18.i, label %bb.uy, label %bb.oy

bb.pd:                                            ; preds = %bb.pb
  %i.cfv = call fastcc noundef align 8 ptr @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_conflicts(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ei) #43 ; 2 uses
  %.not16.i = icmp eq ptr %i.cfv, null
  br i1 %.not16.i, label %bb.pg, label %bb.oy

bb.pe:                                            ; preds = %bb.pb
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cdv, i64 296
  %i.cfx = load i64, ptr %i.cfw, align 8, !range !127, !alias.scope !10288, !noalias !10184, !noundef !13
  %.not.i34.i = icmp eq i64 %i.cfx, -1            ; 2 uses
  %.sroa.3.0.in.v.i.i = select i1 %.not.i34.i, i64 568, i64 312
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.cdv, i64 %.sroa.3.0.in.v.i.i
  %.sroa.0.0.in.v.i.i = select i1 %.not.i34.i, i64 560, i64 304
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.cdv, i64 %.sroa.0.0.in.v.i.i
  %.sroa.0.0.i35.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !alias.scope !10288, !noalias !10184, !nonnull !13, !noundef !13
  %.sroa.3.0.i36.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !alias.scope !10288, !noalias !10184, !noundef !13 ; 7 uses
  %.not.i37.i = icmp slt i64 %.sroa.3.0.i36.i, 0
  br i1 %.not.i37.i, label %bb.tx, label %bb.pf, !prof !321

bb.pf:                                            ; preds = %bb.pe
  %i.cfy = icmp eq i64 %.sroa.3.0.i36.i, 0
  br i1 %i.cfy, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread156.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.pf
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10291
  %i.cfz = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i36.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !10291 ; 3 uses
  %i.cga = icmp eq ptr %i.cfz, null
  br i1 %i.cga, label %bb.tx, label %bb.ux

bb.pg:                                            ; preds = %bb.uy, %bb.pd
  call void @llvm.experimental.noalias.scope.decl(metadata !10294)
  call void @llvm.experimental.noalias.scope.decl(metadata !10297)
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 3 uses
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 3 uses
  %i.cge = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 4 uses
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 3 uses
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 4 uses
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 5 uses
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 5 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge, %bb.pg
  %i.cgn = phi ptr [ %i.ccs, %bb.pg ], [ %i.cgs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge ] ; 6 uses
  %i.cgo = phi ptr [ %i.ccn, %bb.pg ], [ %i.cgr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge ] ; 4 uses
  %i.cgp = icmp eq ptr %i.cgo, %i.ccq
  br i1 %i.cgp, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator15gather_requires.exit.i.i, label %bb.ph

bb.ph:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i
  %i.cgq = icmp eq ptr %i.cgn, %i.ccv
  br i1 %i.cgq, label %bb.pi, label %bb.pj, !prof !269

bb.pi:                                            ; preds = %bb.ph
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #44, !noalias !10300
  unreachable

bb.pj:                                            ; preds = %bb.ph
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.cgo, i64 16
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgn, i64 104
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cgn, i64 97
  %i.cgu = load i8, ptr %i.cgt, align 1, !range !1779, !alias.scope !10308, !noalias !10313, !noundef !13
  %cond.i.i.i.not.i.i.i.i.i = icmp eq i8 %i.cgu, 0
  br i1 %cond.i.i.i.not.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge, label %bb.pk

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit57.i.i.i, %bb.pj, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i.i.i, %bb.qa, %._crit_edge.i.i.i, %.loopexit.i.i.i
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i

bb.pk:                                            ; preds = %bb.pj
  %i.cgv = load ptr, ptr %i.cck, align 8, !alias.scope !10316, !noalias !10317, !nonnull !13, !align !239, !noundef !13 ; 4 uses
  %i.cgw = getelementptr i8, ptr %i.cgv, i64 136
  %.val.i.i40.i = load ptr, ptr %i.cgw, align 8, !noalias !10318, !nonnull !13, !noundef !13 ; 4 uses
  %i.cgx = getelementptr i8, ptr %i.cgv, i64 144
  %.val20.i.i.i = load i64, ptr %i.cgx, align 8, !noalias !10318, !noundef !13 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %.val20.i.i.i, 600
  %i.cgy = getelementptr inbounds nuw i8, ptr %.val.i.i40.i, i64 %.idx.i.i.i.i ; 3 uses
  %i.cgz = icmp eq i64 %.val20.i.i.i, 0
  %.val25.pre.i.i.i = load ptr, ptr %i.cgo, align 8, !noalias !10318 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr i8, ptr %i.cgo, i64 8
  %.val26.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !10318 ; 4 uses
  br i1 %i.cgz, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.pk, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i
  %i.cha = phi ptr [ %i.chb, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i ], [ %.val.i.i40.i, %bb.pk ] ; 4 uses
  %i.chb = getelementptr inbounds nuw i8, ptr %i.cha, i64 600 ; 2 uses
  %i.chc = getelementptr inbounds nuw i8, ptr %i.cha, i64 544
  %i.chd = load i64, ptr %i.chc, align 8, !noalias !10319, !noundef !13
  %i.che = icmp eq i64 %i.chd, %.val26.pre.i.i.i
end_hunk_7
begin_hunk_8_@_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23gather_direct_conflicts:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 536
  %i.l = load ptr, ptr %i.k, align 8, !noalias !12237, !nonnull !13, !noundef !13 ; 3 uses
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.l, ptr nonnull %.0.val, i64 %.8.val), !noalias !12237
  %i.m = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.m, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, %.lr.ph.i.i
  %i.n = icmp eq ptr %i.g, %i.d
  br i1 %i.n, label %.loopexit6, label %.lr.ph.i.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val10 = load ptr, ptr %i.o, align 8           ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val11 = load i64, ptr %i.p, align 8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12243)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12246
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %.val17.i = load ptr, ptr %i.q, align 8, !alias.scope !12243, !noalias !12248, !nonnull !13, !noundef !13 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %.val18.i = load i64, ptr %i.r, align 8, !alias.scope !12243, !noalias !12248, !noundef !13 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12255)
  %i.s = shl nuw nsw i64 %.val18.i, 4             ; 2 uses
  %i.t = icmp eq i64 %.val18.i, 0
  br i1 %i.t, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !12257
  %i.u = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.s, i64 noundef range(i64 1, 9) 8) #43, !noalias !12257 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.b, label %.lr.ph.preheader.i.i.i

bb.b:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.s) #46, !noalias !12260
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.val17.i, i64 %.val18.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.preheader.i.i.i
  %.sroa.0.022.i.i.i = phi ptr [ %i.aa, %bb.c ], [ %.val17.i, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.sroa.7.021.i.i.i = phi i64 [ %i.z, %bb.c ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.10.020.i.i.i = phi i64 [ %i.y, %bb.c ], [ %.val18.i, %.lr.ph.preheader.i.i.i ]
  %i.x = icmp eq ptr %.sroa.0.022.i.i.i, %i.w
  br i1 %i.x, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.y = add nsw i64 %.sroa.10.020.i.i.i, -1      ; 2 uses
  %i.z = add nuw nsw i64 %.sroa.7.021.i.i.i, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.sroa.7.021.i.i.i ; 2 uses
  %.val.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i, align 8, !alias.scope !12255, !noalias !12261, !nonnull !13, !noundef !13
  %i.ac = getelementptr i8, ptr %.sroa.0.022.i.i.i, i64 8
  %.val13.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !12255, !noalias !12261, !noundef !13
  store ptr %.val.i.i.i, ptr %i.ab, align 8, !noalias !12260
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %.val13.i.i.i, ptr %i.ad, align 8, !noalias !12260
  %i.ae = icmp eq i64 %i.y, 0
  br i1 %i.ae, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i, label %.lr.ph.i.i.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i: ; preds = %bb.c, %.lr.ph.i.i.i, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit
  %.sroa.10.0.i30.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit ], [ %i.u, %.lr.ph.i.i.i ], [ %i.u, %bb.c ] ; 2 uses
  store i64 %.val18.i, ptr %i.a, align 8, !alias.scope !12262, !noalias !12263
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr %.sroa.10.0.i30.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !12262, !noalias !12263
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  store i64 %.val18.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !12262, !noalias !12263
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %.idx.i14 = mul nuw nsw i64 %.val11, 96
  %i.af = getelementptr inbounds nuw i8, ptr %.val10, i64 %.idx.i14 ; 3 uses
  %i.ag = icmp eq i64 %.val11, 0
  br i1 %i.ag, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i, %.loopexit.i
  %i.ah = phi ptr [ %i.dx, %.loopexit.i ], [ %.sroa.10.0.i30.i.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ] ; 2 uses
  %i.ai = phi i64 [ %i.dy, %.loopexit.i ], [ %.val18.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ] ; 5 uses
  %.sroa.0.018.i = phi ptr [ %i.ak, %.loopexit.i ], [ %.val10, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ]
  br label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %.loopexit.i.i, %.lr.ph.i.preheader.i
  %i.aj = phi ptr [ %i.ak, %.loopexit.i.i ], [ %.sroa.0.018.i, %.lr.ph.i.preheader.i ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !12264, !nonnull !13, !noundef !13 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noalias !12264, !noundef !13 ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ao, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i15, %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i
  %i.aq = phi ptr [ %i.ar, %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i15 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = getelementptr i8, ptr %i.aq, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.as, align 8, !noalias !12268, !noundef !13
  %i.at = icmp eq i64 %.val3.i.i.i.i.i, %.8.val
  br i1 %i.at, label %.split.i.i.i.i.i, label %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i
  %.val2.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !12268, !nonnull !13, !noundef !13
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i.i.i, ptr nonnull readonly %i.l, i64 %.8.val), !noalias !12268
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.au, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.i, label %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i

_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i: ; preds = %.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.not7.i.i.i.i.i = icmp eq ptr %i.ar, %i.ap
  br i1 %.not7.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.i:                                    ; preds = %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i, %.lr.ph.i.i15
  %i.av = icmp eq ptr %i.ak, %i.af
  br i1 %i.av, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.thread.i, label %.lr.ph.i.i15

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.i: ; preds = %.split.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !12246, !nonnull !13, !noundef !13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.az = load i64, ptr %i.ay, align 8, !noalias !12246, !noundef !13 ; 2 uses
  br label %.lr.ph.i.i20.i

.lr.ph.i.i20.i:                                   ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.i
  %i.ba = phi ptr [ %i.bb, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i ], [ %.val10, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.i ] ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !12272, !noundef !13
  %i.be = icmp eq i64 %i.bd, %i.az
  br i1 %i.be, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i: ; preds = %.lr.ph.i.i20.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !12272, !nonnull !13, !noundef !13
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bg, ptr nonnull readonly %i.ax, i64 %i.az), !noalias !12272
  %i.bh = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bh, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i, %.lr.ph.i.i20.i
  %i.bi = icmp eq ptr %i.bb, %i.af
  br i1 %i.bi, label %.loopexit7.i, label %.lr.ph.i.i20.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.thread.i: ; preds = %.loopexit.i, %.loopexit.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i
  %i.bj = phi i64 [ %i.ai, %.loopexit.i.i ], [ %.val18.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ], [ %i.dy, %.loopexit.i ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !12243, !noalias !12248, !nonnull !13, !noundef !13 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !12243, !noalias !12248, !noundef !13 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12276)
  %i.bo = load i64, ptr %i.a, align 8, !range !14, !alias.scope !12279, !noalias !12246, !noundef !13
  %i.bp = sub i64 %i.bo, %i.bj
  %i.bq = icmp ugt i64 %i.bn, %i.bp
  br i1 %i.bq, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.thread.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i, !prof !269

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.thread.i: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.thread.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bj, i64 noundef %i.bn, i64 noundef 8, i64 noundef 16) #43, !noalias !12246
  %.pre.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !12276, !noalias !12246
  %i.br = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !12276, !noalias !12246, !nonnull !13, !noundef !13
  br label %.preheader.i.preheader.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.thread.i
  %i.bs = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !12276, !noalias !12246, !nonnull !13, !noundef !13
  %i.bt = icmp eq i64 %i.bn, 0
  br i1 %i.bt, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.thread.i
  %i.bu = phi ptr [ %i.br, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.thread.i ], [ %i.bs, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i ] ; 3 uses
  %i.bv = phi i64 [ %.pre.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.thread.i ], [ %i.bj, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i ] ; 2 uses
  %xtraiter115 = and i64 %i.bn, 1
  %i.bw = icmp eq i64 %i.bn, 1
  br i1 %i.bw, label %.preheader.i.i.epil.preheader, label %.preheader.i.preheader.i.new

.preheader.i.preheader.i.new:                     ; preds = %.preheader.i.preheader.i
  %unroll_iter121 = and i64 %i.bn, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.preheader.i.new
  %i.bx = phi i64 [ %i.bv, %.preheader.i.preheader.i.new ], [ %i.ci, %.preheader.i.i ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i = phi i64 [ 0, %.preheader.i.preheader.i.new ], [ %i.cj, %.preheader.i.i ] ; 3 uses
  %niter122 = phi i64 [ 0, %.preheader.i.preheader.i.new ], [ %niter122.next.1, %.preheader.i.i ]
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.sroa.01.0.i.i.i.i.i ; 2 uses
  %.val11.i.i.i.i.i = load ptr, ptr %i.by, align 8, !noalias !12282, !nonnull !13, !noundef !13
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val12.i.i.i.i.i = load i64, ptr %i.bz, align 8, !noalias !12282, !noundef !13
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bx ; 2 uses
  store ptr %.val11.i.i.i.i.i, ptr %i.ca, align 8, !noalias !12289
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %.val12.i.i.i.i.i, ptr %i.cb, align 8, !noalias !12298
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.sroa.01.0.i.i.i.i.i ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.val11.i.i.i.i.i.1 = load ptr, ptr %i.cd, align 8, !noalias !12282, !nonnull !13, !noundef !13
  %i.ce = getelementptr i8, ptr %i.cc, i64 24
  %.val12.i.i.i.i.i.1 = load i64, ptr %i.ce, align 8, !noalias !12282, !noundef !13
  %i.cf = getelementptr [16 x i8], ptr %i.bu, i64 %i.bx ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  store ptr %.val11.i.i.i.i.i.1, ptr %i.cg, align 8, !noalias !12289
  %i.ch = getelementptr i8, ptr %i.cf, i64 24
  store i64 %.val12.i.i.i.i.i.1, ptr %i.ch, align 8, !noalias !12298
  %i.ci = add i64 %i.bx, 2                        ; 3 uses
  %i.cj = add nuw i64 %.sroa.01.0.i.i.i.i.i, 2    ; 2 uses
  %niter122.next.1 = add i64 %niter122, 2         ; 2 uses
  %niter122.ncmp.1 = icmp eq i64 %niter122.next.1, %unroll_iter121
  br i1 %niter122.ncmp.1, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit.loopexit.unr-lcssa, label %.preheader.i.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !12246, !nonnull !13, !noundef !13 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !12246, !noundef !13 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12299)
  %i.co = load i64, ptr %i.a, align 8, !range !14, !alias.scope !12302, !noalias !12246, !noundef !13
  %i.cp = sub i64 %i.co, %i.ai
  %i.cq = icmp ugt i64 %i.cn, %i.cp
  br i1 %i.cq, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.thread.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.i, !prof !269

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.thread.i: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ai, i64 noundef %i.cn, i64 noundef 8, i64 noundef 16) #43, !noalias !12246
  %.pre.i27.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !12299, !noalias !12246
  %.pre.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !12299, !noalias !12246
  br label %.preheader.i22.preheader.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.i: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i
  %i.cr = icmp eq i64 %i.cn, 0
  br i1 %i.cr, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i, label %.preheader.i22.preheader.i

.preheader.i22.preheader.i:                       ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.thread.i
  %i.cs = phi i64 [ %.pre.i27.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.thread.i ], [ %i.ai, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.i ] ; 2 uses
  %i.ct = phi ptr [ %.pre.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.thread.i ], [ %i.ah, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.i ] ; 5 uses
  %xtraiter = and i64 %i.cn, 1
  %i.cu = icmp eq i64 %i.cn, 1
  br i1 %i.cu, label %.preheader.i22.i.epil.preheader, label %.preheader.i22.preheader.i.new

.preheader.i22.preheader.i.new:                   ; preds = %.preheader.i22.preheader.i
  %unroll_iter = and i64 %i.cn, -2
  br label %.preheader.i22.i

.preheader.i22.i:                                 ; preds = %.preheader.i22.i, %.preheader.i22.preheader.i.new
  %i.cv = phi i64 [ %i.cs, %.preheader.i22.preheader.i.new ], [ %i.dg, %.preheader.i22.i ] ; 3 uses
  %.sroa.01.0.i.i.i.i23.i = phi i64 [ 0, %.preheader.i22.preheader.i.new ], [ %i.dh, %.preheader.i22.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i22.preheader.i.new ], [ %niter.next.1, %.preheader.i22.i ]
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.sroa.01.0.i.i.i.i23.i ; 2 uses
  %.val11.i.i.i.i24.i = load ptr, ptr %i.cw, align 8, !noalias !12305, !nonnull !13, !noundef !13
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %.val12.i.i.i.i25.i = load i64, ptr %i.cx, align 8, !noalias !12305, !noundef !13
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cv ; 2 uses
  store ptr %.val11.i.i.i.i24.i, ptr %i.cy, align 8, !noalias !12312
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 %.val12.i.i.i.i25.i, ptr %i.cz, align 8, !noalias !12321
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.sroa.01.0.i.i.i.i23.i ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %.val11.i.i.i.i24.i.1 = load ptr, ptr %i.db, align 8, !noalias !12305, !nonnull !13, !noundef !13
  %i.dc = getelementptr i8, ptr %i.da, i64 24
  %.val12.i.i.i.i25.i.1 = load i64, ptr %i.dc, align 8, !noalias !12305, !noundef !13
  %i.dd = getelementptr [16 x i8], ptr %i.ct, i64 %i.cv ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store ptr %.val11.i.i.i.i24.i.1, ptr %i.de, align 8, !noalias !12312
  %i.df = getelementptr i8, ptr %i.dd, i64 24
  store i64 %.val12.i.i.i.i25.i.1, ptr %i.df, align 8, !noalias !12321
  %i.dg = add i64 %i.cv, 2                        ; 3 uses
  %i.dh = add nuw i64 %.sroa.01.0.i.i.i.i23.i, 2  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i.loopexit.unr-lcssa, label %.preheader.i22.i

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i.loopexit.unr-lcssa: ; preds = %.preheader.i22.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i, label %.preheader.i22.i.epil.preheader

.preheader.i22.i.epil.preheader:                  ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i.loopexit.unr-lcssa, %.preheader.i22.preheader.i
  %.epil.init = phi i64 [ %i.cs, %.preheader.i22.preheader.i ], [ %i.dg, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.i.i.i23.i.epil.init = phi i64 [ 0, %.preheader.i22.preheader.i ], [ %i.dh, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i.loopexit.unr-lcssa ]
  %lcmp.mod114 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod114)
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.sroa.01.0.i.i.i.i23.i.epil.init ; 2 uses
  %.val11.i.i.i.i24.i.epil = load ptr, ptr %i.di, align 8, !noalias !12305, !nonnull !13, !noundef !13
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %.val12.i.i.i.i25.i.epil = load i64, ptr %i.dj, align 8, !noalias !12305, !noundef !13
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %.epil.init ; 2 uses
  store ptr %.val11.i.i.i.i24.i.epil, ptr %i.dk, align 8, !noalias !12312
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %.val12.i.i.i.i25.i.epil, ptr %i.dl, align 8, !noalias !12321
  %i.dm = add i64 %.epil.init, 1
  br label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i: ; preds = %.preheader.i22.i.epil.preheader, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i.loopexit.unr-lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.i
  %i.dn = phi ptr [ %i.ah, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.i ], [ %i.ct, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i.loopexit.unr-lcssa ], [ %i.ct, %.preheader.i22.i.epil.preheader ] ; 3 uses
  %storemerge.i.i.i26.i = phi i64 [ %i.ai, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.i ], [ %i.dg, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i.loopexit.unr-lcssa ], [ %i.dm, %.preheader.i22.i.epil.preheader ] ; 4 uses
  store i64 %storemerge.i.i.i26.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !12299, !noalias !12322
  %i.do = getelementptr inbounds nuw i8, ptr %i.ba, i64 89
  %i.dp = load i8, ptr %i.do, align 1, !range !1313, !noalias !12246, !noundef !13
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %.loopexit.i, label %bb.d

.loopexit7.i:                                     ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @299) #44, !noalias !12246
  unreachable

bb.d:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !12246, !nonnull !13, !noundef !13 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !noalias !12246, !noundef !13 ; 2 uses
  %.idx19.i = shl nuw nsw i64 %i.du, 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx19.i
  %i.dw = icmp eq i64 %i.du, 0
  br i1 %i.dw, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.h, %bb.d, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i
  %i.dx = phi ptr [ %i.dn, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i ], [ %i.dn, %bb.d ], [ %i.em, %bb.h ]
  %i.dy = phi i64 [ %storemerge.i.i.i26.i, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i ], [ %storemerge.i.i.i26.i, %bb.d ], [ %i.en, %bb.h ] ; 2 uses
  %i.dz = icmp eq ptr %i.ak, %i.af
  br i1 %i.dz, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.h
  %i.ea = phi ptr [ %i.em, %bb.h ], [ %i.dn, %bb.d ]
  %i.eb = phi i64 [ %i.en, %bb.h ], [ %storemerge.i.i.i26.i, %bb.d ] ; 4 uses
  %.sroa.03.017.i = phi ptr [ %i.ec, %bb.h ], [ %i.ds, %bb.d ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.03.017.i, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.03.017.i, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !12246, !noundef !13 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, %.8.val
  %.pre29.i = load ptr, ptr %.sroa.03.017.i, align 8, !noalias !12246 ; 2 uses
  br i1 %i.ef, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.pre29.i, ptr nonnull %i.l, i64 %.8.val), !noalias !12246
  %.not13.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not13.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12323)
  %i.eg = load i64, ptr %i.a, align 8, !range !14, !alias.scope !12323, !noalias !12326, !noundef !13
  %i.eh = icmp eq i64 %i.eb, %i.eg
  br i1 %i.eh, label %bb.g, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #42, !noalias !12326
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i: ; preds = %bb.g, %bb.f
  %i.ei = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !12323, !noalias !12326, !nonnull !13, !noundef !13 ; 2 uses
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.eb ; 2 uses
  store ptr %.pre29.i, ptr %i.ej, align 8, !noalias !12328
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 %i.ee, ptr %i.ek, align 8, !noalias !12329
  %i.el = add i64 %i.eb, 1                        ; 2 uses
  store i64 %i.el, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !12323, !noalias !12326
  br label %bb.h

bb.h:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i, %bb.e
  %i.em = phi ptr [ %i.ei, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i ], [ %i.ea, %bb.e ] ; 2 uses
  %i.en = phi i64 [ %i.el, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i ], [ %i.eb, %bb.e ] ; 2 uses
  %i.eo = icmp eq ptr %i.ec, %i.dv
  br i1 %i.eo, label %.loopexit.i, label %.lr.ph.i

_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i
  %lcmp.mod118.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod118.not, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit.loopexit.unr-lcssa, %.preheader.i.preheader.i
  %.epil.init117 = phi i64 [ %i.bv, %.preheader.i.preheader.i ], [ %i.ci, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader.i ], [ %i.cj, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit.loopexit.unr-lcssa ]
  %lcmp.mod120 = trunc i64 %i.bn to i1
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.sroa.01.0.i.i.i.i.i.epil.init ; 2 uses
  %.val11.i.i.i.i.i.epil = load ptr, ptr %i.ep, align 8, !noalias !12282, !nonnull !13, !noundef !13
  %i.eq = getelementptr i8, ptr %i.ep, i64 8
  %.val12.i.i.i.i.i.epil = load i64, ptr %i.eq, align 8, !noalias !12282, !noundef !13
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %.epil.init117 ; 2 uses
  store ptr %.val11.i.i.i.i.i.epil, ptr %i.er, align 8, !noalias !12289
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i64 %.val12.i.i.i.i.i.epil, ptr %i.es, align 8, !noalias !12298
  %i.et = add i64 %.epil.init117, 1
  br label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit

_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit: ; preds = %.preheader.i.i.epil.preheader, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit.loopexit.unr-lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i
  %storemerge.i.i.i.i = phi i64 [ %i.bj, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i ], [ %i.ci, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit.loopexit.unr-lcssa ], [ %i.et, %.preheader.i.i.epil.preheader ]
  store i64 %storemerge.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !12276, !noalias !12330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !12243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12246
  br label %bb.i

.loopexit6:                                       ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i, %bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val6 = load ptr, ptr %i.eu, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val7 = load i64, ptr %i.ev, align 8, !noundef !13 ; 2 uses
  %.idx.i16 = mul nuw nsw i64 %.val7, 96
  %i.ew = getelementptr inbounds nuw i8, ptr %.val6, i64 %.idx.i16
  %i.ex = icmp eq i64 %.val7, 0
  br i1 %i.ex, label %.loopexit, label %.lr.ph.i.i17

.lr.ph.i.i17:                                     ; preds = %.loopexit6, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i
  %i.ey = phi ptr [ %i.ez, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i ], [ %.val6, %.loopexit6 ] ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 96 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 80
  %i.fb = load i64, ptr %i.fa, align 8, !noalias !12331, !noundef !13
  %i.fc = icmp eq i64 %i.fb, %.8.val
  br i1 %i.fc, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i: ; preds = %.lr.ph.i.i17
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 72
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !12331, !nonnull !13, !noundef !13
  %bcmp.i.i.i19 = tail call i32 @bcmp(ptr nonnull %i.fe, ptr nonnull readonly %.0.val, i64 %.8.val), !noalias !12331
  %i.ff = icmp eq i32 %bcmp.i.i.i19, 0
  br i1 %i.ff, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i, %.lr.ph.i.i17
  %i.fg = icmp eq ptr %i.ez, %i.ew
  br i1 %i.fg, label %.loopexit, label %.lr.ph.i.i17

bb.i:                                             ; preds = %.loopexit, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator29gather_group_direct_conflicts.exit, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit
  ret void

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i
  %i.fh = getelementptr i8, ptr %i.ey, i64 56
  %.val12 = load ptr, ptr %i.fh, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.ey, i64 64
  %.val13 = load i64, ptr %i.fi, align 8, !noundef !13 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12344)
  %i.fj = shl nuw nsw i64 %.val13, 4              ; 2 uses
  %i.fk = icmp eq i64 %.val13, 0
  br i1 %i.fk, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator29gather_group_direct_conflicts.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i20

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i20: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !12346
  %i.fl = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fj, i64 noundef range(i64 1, 9) 8) #43, !noalias !12346 ; 4 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.j, label %.lr.ph.preheader.i.i.i21

bb.j:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i20
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.fj) #46, !noalias !12349
  unreachable

.lr.ph.preheader.i.i.i21:                         ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i20
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %.val12, i64 %.val13
  br label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %bb.k, %.lr.ph.preheader.i.i.i21
  %.sroa.0.022.i.i.i23 = phi ptr [ %i.fr, %bb.k ], [ %.val12, %.lr.ph.preheader.i.i.i21 ] ; 4 uses
  %.sroa.7.021.i.i.i24 = phi i64 [ %i.fq, %bb.k ], [ 0, %.lr.ph.preheader.i.i.i21 ] ; 2 uses
  %.sroa.10.020.i.i.i25 = phi i64 [ %i.fp, %bb.k ], [ %.val13, %.lr.ph.preheader.i.i.i21 ]
  %i.fo = icmp eq ptr %.sroa.0.022.i.i.i23, %i.fn
  br i1 %i.fo, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator29gather_group_direct_conflicts.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i22
  %i.fp = add nsw i64 %.sroa.10.020.i.i.i25, -1   ; 2 uses
  %i.fq = add nuw nsw i64 %.sroa.7.021.i.i.i24, 1
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i23, i64 16
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %.sroa.7.021.i.i.i24 ; 2 uses
  %.val.i.i.i26 = load ptr, ptr %.sroa.0.022.i.i.i23, align 8, !alias.scope !12344, !noalias !12350, !nonnull !13, !noundef !13
  %i.ft = getelementptr i8, ptr %.sroa.0.022.i.i.i23, i64 8
  %.val13.i.i.i27 = load i64, ptr %i.ft, align 8, !alias.scope !12344, !noalias !12350, !noundef !13
  store ptr %.val.i.i.i26, ptr %i.fs, align 8, !noalias !12349
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 %.val13.i.i.i27, ptr %i.fu, align 8, !noalias !12349
  %i.fv = icmp eq i64 %i.fp, 0
  br i1 %i.fv, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator29gather_group_direct_conflicts.exit, label %.lr.ph.i.i.i22
end_hunk_8
