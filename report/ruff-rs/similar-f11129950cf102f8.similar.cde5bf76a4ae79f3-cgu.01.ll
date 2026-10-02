Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/similar-f11129950cf102f8.similar.cde5bf76a4ae79f3-cgu.01?download=true
inline.NumInlined: 118
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCshFZddwsEKsN_7similar:bb.a
  %i.j = icmp sgt <16 x i8> %.val10.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -384 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECshFZddwsEKsN_7similar.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !149
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [24 x i8], ptr %i.m, i64 %i.r
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECshFZddwsEKsN_7similar.exit, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtNtB10_4iter6traits8iterator8Iterator4nextCshFZddwsEKsN_7similar(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !152, !noundef !3 ; 2 uses
  %.not12.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !152 ; 2 uses
  br i1 %.not12.i, label %.lr.ph.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECshFZddwsEKsN_7similar.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted14.i = load ptr, ptr %i.g, align 8, !alias.scope !152
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !152
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !152
  br label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECshFZddwsEKsN_7similar.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted14.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.val10.i = load <16 x i8>, ptr %i.h, align 16, !noalias !152
  %i.j = icmp sgt <16 x i8> %.val10.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -384 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECshFZddwsEKsN_7similar.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !152
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [24 x i8], ptr %i.m, i64 %i.r
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECshFZddwsEKsN_7similar.exit, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNvMs2_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtBY_16IdentifyDistinctpE3new3KeyReB2e_EmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNvMs2_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB1m_16IdentifyDistinctpE3new3KeyReB2D_EmENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1q_.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 24
  %i.d = icmp slt i64 %.val1, 768614336404564650
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 32                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNvMs2_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB1m_16IdentifyDistinctpE3new3KeyReB2D_EmENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1q_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -32, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #16
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNvMs2_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB1m_16IdentifyDistinctpE3new3KeyReB2D_EmENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1q_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNvMs2_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB1m_16IdentifyDistinctpE3new3KeyReB2D_EmENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1q_.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtBX_3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 24
  %i.d = icmp slt i64 %.val1, 768614336404564650
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 32                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -32, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #16
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtBW_3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 24
  %i.d = icmp slt i64 %.val1, 768614336404564650
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 32                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -32, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #16
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtNtBX_4iter6traits7collect12IntoIterator9into_iterCshFZddwsEKsN_7similar(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE15into_allocationCshFZddwsEKsN_7similar.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 24                         ; 2 uses
  %2 = add i64 %i.g, 24
  %3 = icmp ult i64 %2, -15
  tail call void @llvm.assume(i1 %3)
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %4 = add i64 %i.h, 32                           ; 2 uses
  %i.i = add i64 %i.c, 17
  %i.j = add i64 %i.i, %4                         ; 3 uses
  %5 = icmp uge i64 %i.j, %4
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.j, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.k = sub i64 -32, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE15into_allocationCshFZddwsEKsN_7similar.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE15into_allocationCshFZddwsEKsN_7similar.exit: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtNtBW_4iter6traits7collect12IntoIterator9into_iterCshFZddwsEKsN_7similar(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !158
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE15into_allocationCshFZddwsEKsN_7similar.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 24                         ; 2 uses
  %2 = add i64 %i.g, 24
  %3 = icmp ult i64 %2, -15
  tail call void @llvm.assume(i1 %3)
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %4 = add i64 %i.h, 32                           ; 2 uses
  %i.i = add i64 %i.c, 17
  %i.j = add i64 %i.i, %4                         ; 3 uses
  %5 = icmp uge i64 %i.j, %4
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.j, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.k = sub i64 -32, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE15into_allocationCshFZddwsEKsN_7similar.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE15into_allocationCshFZddwsEKsN_7similar.exit: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRINtNvMs2_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB1O_16IdentifyDistinctpE3new3KeyReB35_EEB1S_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRRReECshFZddwsEKsN_7similar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRRmECshFZddwsEKsN_7similar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshFZddwsEKsN_7similar(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { cold }
attributes #18 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!5 = !{!"branch_weights", i32 2002, i32 2000}
!6 = !{i64 8}
!7 = !{!"branch_weights", i32 1, i32 1999}
!8 = !{!"branch_weights", i32 0, i32 1}
!9 = !{i64 0, i64 -9223372036854775807}
!10 = distinct !{!10, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar"}
!11 = distinct !{!11, !10, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 0"}
!12 = distinct !{!12, !10, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 2"}
!13 = distinct !{!13, !10, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 1"}
!14 = distinct !{!14, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar"}
!15 = distinct !{!15, !14, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 0"}
!16 = distinct !{!16, !14, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 2"}
!17 = distinct !{!17, !14, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 1"}
!18 = distinct !{!18, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar"}
!19 = distinct !{!19, !18, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 0"}
!20 = distinct !{!20, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar"}
!21 = distinct !{!21, !20, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 0"}
!22 = distinct !{!22, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECshFZddwsEKsN_7similar"}
!23 = distinct !{!23, !22, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECshFZddwsEKsN_7similar: argument 0"}
!24 = distinct !{!24, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar"}
!25 = distinct !{!25, !24, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar: argument 0"}
!26 = distinct !{!26, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTINtNvMs2_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB11_16IdentifyDistinctpE3new3KeyReB2i_EmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0B15_"}
!27 = distinct !{!27, !26, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTINtNvMs2_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB11_16IdentifyDistinctpE3new3KeyReB2i_EmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0B15_: argument 1"}
!28 = distinct !{!28, !26, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTINtNvMs2_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB11_16IdentifyDistinctpE3new3KeyReB2i_EmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0B15_: argument 0"}
!29 = distinct !{!29, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!30 = distinct !{!30, !29, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!31 = !{!11}
!32 = !{!13, !12}
!33 = !{!11, !13, !12}
!34 = !{!15}
!35 = !{!15, !17, !16, !11, !13, !12}
!36 = !{!21, !19}
!37 = !{!19}
!38 = !{!15, !11}
!39 = !{!17, !16, !13, !12}
!40 = !{!16, !12}
!41 = !{!23}
!42 = !{!25}
!43 = !{!25, !23}
!44 = !{!25, !23, !16, !12}
!45 = !{!27}
!46 = !{!28, !16, !12}
!47 = !{!28, !27, !16, !12}
!48 = !{!30}
!49 = distinct !{!49, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar"}
!50 = distinct !{!50, !49, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 0"}
!51 = distinct !{!51, !49, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 2"}
!52 = distinct !{!52, !49, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 1"}
!53 = distinct !{!53, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar"}
!54 = distinct !{!54, !53, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 0"}
!55 = distinct !{!55, !53, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 2"}
!56 = distinct !{!56, !53, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 1"}
!57 = distinct !{!57, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar"}
!58 = distinct !{!58, !57, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 0"}
!59 = distinct !{!59, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar"}
!60 = distinct !{!60, !59, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 0"}
!61 = distinct !{!61, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECshFZddwsEKsN_7similar"}
!62 = distinct !{!62, !61, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECshFZddwsEKsN_7similar: argument 0"}
!63 = distinct !{!63, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar"}
!64 = distinct !{!64, !63, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar: argument 0"}
!65 = distinct !{!65, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BV_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshFZddwsEKsN_7similar"}
!66 = distinct !{!66, !65, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BV_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshFZddwsEKsN_7similar: argument 1"}
!67 = distinct !{!67, !65, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BV_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshFZddwsEKsN_7similar: argument 0"}
!68 = distinct !{!68, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!69 = distinct !{!69, !68, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!70 = !{!50}
!71 = !{!52, !51}
!72 = !{!50, !52, !51}
!73 = !{!54}
!74 = !{!54, !56, !55, !50, !52, !51}
!75 = !{!60, !58}
!76 = !{!58}
!77 = !{!54, !50}
!78 = !{!56, !55, !52, !51}
!79 = !{!55, !51}
!80 = !{!62}
!81 = !{!64}
!82 = !{!64, !62}
!83 = !{!64, !62, !55, !51}
!84 = !{!66}
!85 = !{!67, !55, !51}
!86 = !{!67, !66, !55, !51}
!87 = !{!69}
!88 = distinct !{!88, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar"}
!89 = distinct !{!89, !88, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 0"}
!90 = distinct !{!90, !88, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 2"}
!91 = distinct !{!91, !88, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 1"}
!92 = distinct !{!92, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar"}
!93 = distinct !{!93, !92, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 0"}
!94 = distinct !{!94, !92, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 2"}
!95 = distinct !{!95, !92, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 1"}
!96 = distinct !{!96, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar"}
!97 = distinct !{!97, !96, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 0"}
!98 = distinct !{!98, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar"}
!99 = distinct !{!99, !98, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshFZddwsEKsN_7similar: argument 0"}
!100 = distinct !{!100, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECshFZddwsEKsN_7similar"}
!101 = distinct !{!101, !100, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECshFZddwsEKsN_7similar: argument 0"}
!102 = distinct !{!102, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar"}
!103 = distinct !{!103, !102, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar: argument 0"}
!104 = distinct !{!104, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshFZddwsEKsN_7similar"}
!105 = distinct !{!105, !104, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshFZddwsEKsN_7similar: argument 1"}
!106 = distinct !{!106, !104, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshFZddwsEKsN_7similar: argument 0"}
!107 = distinct !{!107, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!108 = distinct !{!108, !107, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!109 = !{!89}
!110 = !{!91, !90}
!111 = !{!89, !91, !90}
!112 = !{!93}
!113 = !{!93, !95, !94, !89, !91, !90}
!114 = !{!99, !97}
!115 = !{!97}
!116 = !{!93, !89}
!117 = !{!95, !94, !91, !90}
!118 = !{!94, !90}
!119 = !{!101}
!120 = !{!103}
!121 = !{!103, !101}
!122 = !{!103, !101, !94, !90}
!123 = !{!105}
!124 = !{!106, !94, !90}
!125 = !{!106, !105, !94, !90}
!126 = !{!108}
!127 = distinct !{!127, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar"}
!128 = distinct !{!128, !127, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar: argument 0"}
!129 = !{!128}
!130 = distinct !{!130, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar"}
!131 = distinct !{!131, !130, !"_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar: argument 0"}
!132 = distinct !{null, null}
!133 = !{!131}
!134 = distinct !{!134, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!135 = distinct !{!135, !134, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!136 = !{!135}
!137 = distinct !{!137, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!138 = distinct !{!138, !137, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!139 = !{!138}
!140 = distinct !{!140, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!141 = distinct !{!141, !140, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!142 = !{!141}
!143 = distinct !{!143, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!144 = distinct !{!144, !143, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!145 = !{!144}
!146 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!147 = distinct !{!147, !"_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECshFZddwsEKsN_7similar"}
!148 = distinct !{!148, !147, !"_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECshFZddwsEKsN_7similar: argument 0"}
!149 = !{!148}
!150 = distinct !{!150, !"_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECshFZddwsEKsN_7similar"}
!151 = distinct !{!151, !150, !"_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE9next_implKb0_ECshFZddwsEKsN_7similar: argument 0"}
!152 = !{!151}
!153 = distinct !{!153, !"_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE3newCshFZddwsEKsN_7similar"}
!154 = distinct !{!154, !153, !"_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTRReINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE3newCshFZddwsEKsN_7similar: argument 0"}
!155 = !{!154}
!156 = distinct !{!156, !"_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE3newCshFZddwsEKsN_7similar"}
!157 = distinct !{!157, !156, !"_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTRmINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE3newCshFZddwsEKsN_7similar: argument 0"}
!158 = !{!157}
end_hunk_0
