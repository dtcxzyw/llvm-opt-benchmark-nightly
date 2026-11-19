Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_base32-9e01f370e39e803c.uu_base32.920a41f3072ac136-cgu.0?download=true
inline.NumInlined: 585
inline.NumDeleted: 338
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECscxmO3cvmuC8_9uu_base32:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164
  %i.g = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit
    i64 1, label %bb.e
  ], !prof !15

default.unreachable:                              ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECscxmO3cvmuC8_9uu_base32.exit
  unreachable

bb.d:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECscxmO3cvmuC8_9uu_base32.exit
  %i.i = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECscxmO3cvmuC8_9uu_base32.exit
  %i.l = getelementptr i8, ptr %.val.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !165, !noalias !164
  store i8 3, ptr %i.a, align 8, !alias.scope !165, !noalias !164
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #23, !noalias !164
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECscxmO3cvmuC8_9uu_base32.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECscxmO3cvmuC8_9uu_base32.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features8encoding13Base32WrapperECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %.val.i = load i64, ptr %0, align 8, !range !11, !alias.scope !168, !noundef !9 ; 2 uses
  %i.a = icmp sgt i64 %.val.i, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features8encoding15EncodingWrapperECscxmO3cvmuC8_9uu_base32.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !168, !nonnull !9, !noundef !9
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !168
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features8encoding15EncodingWrapperECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features8encoding15EncodingWrapperECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features8encoding15EncodingWrapperECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !11, !noundef !9 ; 2 uses
  %i.a = icmp sgt i64 %.val, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCskRnCIJne9er_13data_encoding8EncodingECscxmO3cvmuC8_9uu_base32.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCskRnCIJne9er_13data_encoding8EncodingECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCskRnCIJne9er_13data_encoding8EncodingECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !11, !noundef !9 ; 2 uses
  %i.a = icmp sgt i64 %.val, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECscxmO3cvmuC8_9uu_base32.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !182
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.d = load i64, ptr %i.c, align 8, !range !184, !alias.scope !183, !noundef !9 ; 3 uses
  %i.e = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp samesign ugt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECscxmO3cvmuC8_9uu_base32.exit [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECscxmO3cvmuC8_9uu_base32.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.i, align 8, !range !11, !alias.scope !183, !noundef !9 ; 2 uses
  %i.j = icmp sgt i64 %.val.i, 0
  br i1 %i.j, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECscxmO3cvmuC8_9uu_base32.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !183, !nonnull !9, !noundef !9
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !185
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECscxmO3cvmuC8_9uu_base32.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECscxmO3cvmuC8_9uu_base32.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.l, align 8, !range !11, !alias.scope !186, !noundef !9 ; 2 uses
  %i.m = icmp sgt i64 %.val2.i, 0
  br i1 %i.m, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECscxmO3cvmuC8_9uu_base32.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !183, !nonnull !9, !noundef !9
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !187
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECscxmO3cvmuC8_9uu_base32.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECscxmO3cvmuC8_9uu_base32.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !183 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load ptr, ptr %i.p, align 8, !alias.scope !183, !nonnull !9, !align !12, !noundef !9 ; 3 uses
  %i.q = load ptr, ptr %.val5.i, align 8, !invariant.load !9, !noalias !183 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void %i.q(ptr noundef nonnull %.val4.i) #25, !noalias !183, !inline_history !181
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !10, !invariant.load !9, !noalias !183 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECscxmO3cvmuC8_9uu_base32.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !13, !invariant.load !9, !noalias !183
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #23, !noalias !183
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECscxmO3cvmuC8_9uu_base32.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCs6JMX4GRUq9U_4core5slice6rotate10ptr_rotatehECscxmO3cvmuC8_9uu_base32(i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = icmp eq i64 %2, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %_RINvNtNtCs6JMX4GRUq9U_4core5slice6rotate15ptr_rotate_swaphECscxmO3cvmuC8_9uu_base32.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %. = tail call i64 @llvm.umin.i64(i64 %2, i64 %0)
  %i.d = icmp ult i64 %., 257
  br i1 %i.d, label %bb.d, label %bb.c

_RINvNtNtCs6JMX4GRUq9U_4core5slice6rotate15ptr_rotate_swaphECscxmO3cvmuC8_9uu_base32.exit: ; preds = %.loopexit.i, %bb.aa, %bb.v, %_RINvNtNtCs6JMX4GRUq9U_4core5slice6rotate18ptr_rotate_memmovehECscxmO3cvmuC8_9uu_base32.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %2, %0
  %i.f = icmp ult i64 %i.e, 24
  br i1 %i.f, label %bb.r, label %.preheader

bb.d:                                             ; preds = %bb.b
  %i.g = icmp ult i64 %2, %0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = sub nsw i64 0, %0
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %2 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 1 %i.i, i64 range(i64 -9223372036854775807, -9223372036854775808) %0, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 range(i64 -9223372036854775807, -9223372036854775808) %2, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 8 %i.a, i64 range(i64 -9223372036854775807, -9223372036854775808) %0, i1 false)
  br label %_RINvNtNtCs6JMX4GRUq9U_4core5slice6rotate18ptr_rotate_memmovehECscxmO3cvmuC8_9uu_base32.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 1 %1, i64 range(i64 -9223372036854775807, -9223372036854775808) %2, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.i, i64 range(i64 -9223372036854775807, -9223372036854775808) %0, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 8 %i.a, i64 range(i64 -9223372036854775807, -9223372036854775808) %2, i1 false)
  br label %_RINvNtNtCs6JMX4GRUq9U_4core5slice6rotate18ptr_rotate_memmovehECscxmO3cvmuC8_9uu_base32.exit

_RINvNtNtCs6JMX4GRUq9U_4core5slice6rotate18ptr_rotate_memmovehECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCs6JMX4GRUq9U_4core5slice6rotate15ptr_rotate_swaphECscxmO3cvmuC8_9uu_base32.exit

.preheader:                                       ; preds = %bb.c, %.loopexit.i
  %.sroa.016.0.i = phi i64 [ %.sroa.016.2.i, %.loopexit.i ], [ %2, %bb.c ] ; 25 uses
  %.sroa.010.0.i = phi ptr [ %.sroa.010.2.i, %.loopexit.i ], [ %1, %bb.c ] ; 10 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i, %.loopexit.i ], [ %0, %bb.c ] ; 20 uses
  %.not.i2 = icmp ult i64 %.sroa.0.0.i, %.sroa.016.0.i
  br i1 %.not.i2, label %.preheader.i, label %.preheader55.i

.preheader55.i:                                   ; preds = %.preheader
  %i.k = sub i64 0, %.sroa.016.0.i                ; 5 uses
  %.not37.i = icmp eq i64 %.sroa.016.0.i, 0
  %i.l = lshr i64 %.sroa.016.0.i, 3               ; 9 uses
  %i.m = and i64 %.sroa.016.0.i, 7                ; 2 uses
  %.not.i38.i = icmp eq i64 %i.l, 0               ; 2 uses
  %i.n = and i64 %.sroa.016.0.i, -8               ; 2 uses
  %i.o = icmp samesign ult i64 %i.m, 4
  %i.p = and i64 %.sroa.016.0.i, 2
  %i.q = icmp eq i64 %i.p, 0
  %i.r = and i64 %.sroa.016.0.i, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %.not37.i, label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit54.us.i, label %.preheader55.split.i

_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit54.us.i: ; preds = %.preheader55.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit54.us.i
  br label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit54.us.i

.preheader55.split.i:                             ; preds = %.preheader55.i
  %.not4.i45.i = icmp eq i64 %i.m, 0
  br i1 %.not4.i45.i, label %.preheader55.split.split.us.i, label %.preheader55.split.split.i.preheader

.preheader55.split.split.i.preheader:             ; preds = %.preheader55.split.i
  %i.t = and i64 %.sroa.016.0.i, -8               ; 2 uses
  %i.u = sub i64 %i.t, %.sroa.016.0.i
  %min.iters.check110 = icmp ult i64 %.sroa.016.0.i, 32
  %3 = getelementptr i8, ptr %.sroa.010.0.i, i64 %i.u
  %4 = getelementptr i8, ptr %.sroa.010.0.i, i64 %i.t
  %n.vec116 = and i64 %i.l, 2305843009213693948   ; 3 uses
  %cmp.n125 = icmp eq i64 %i.l, %n.vec116
  %i.v = and i64 %.sroa.016.0.i, 8
  %lcmp.mod.not = icmp eq i64 %i.v, 0
  br label %.preheader55.split.split.i

.preheader55.split.split.us.i:                    ; preds = %.preheader55.split.i
  br i1 %.not.i38.i, label %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.us.us.i, label %.preheader.i39.preheader.us.i.preheader

.preheader.i39.preheader.us.i.preheader:          ; preds = %.preheader55.split.split.us.i
  %min.iters.check83 = icmp ult i64 %.sroa.016.0.i, 32
  %5 = getelementptr i8, ptr %.sroa.010.0.i, i64 %.sroa.016.0.i
  %n.vec89 = and i64 %i.l, 2305843009213693948    ; 3 uses
  %cmp.n98 = icmp eq i64 %i.l, %n.vec89
  %i.w = and i64 %.sroa.016.0.i, 8
  %lcmp.mod143.not = icmp eq i64 %i.w, 0
  br label %.preheader.i39.preheader.us.i

_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.us.us.i: ; preds = %.preheader55.split.split.us.i, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.us.us.i
  %.sroa.010.3.us61.us.i = phi ptr [ %i.x, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.us.us.i ], [ %.sroa.010.0.i, %.preheader55.split.split.us.i ]
  %.sroa.0.2.us62.us.i = phi i64 [ %i.y, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.us.us.i ], [ %.sroa.0.0.i, %.preheader55.split.split.us.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.3.us61.us.i, i64 %i.k ; 2 uses
  %i.y = sub nuw nsw i64 %.sroa.0.2.us62.us.i, %.sroa.016.0.i ; 3 uses
  %i.z = icmp ult i64 %i.y, %.sroa.016.0.i
  br i1 %i.z, label %.loopexit.i, label %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.us.us.i

.preheader.i39.preheader.us.i:                    ; preds = %.preheader.i39.preheader.us.i.preheader, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.loopexit.us.i
  %indvar80 = phi i64 [ %indvar.next81, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.loopexit.us.i ], [ 0, %.preheader.i39.preheader.us.i.preheader ] ; 2 uses
  %.sroa.010.3.us61.i = phi ptr [ %i.aa, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.loopexit.us.i ], [ %.sroa.010.0.i, %.preheader.i39.preheader.us.i.preheader ] ; 6 uses
  %.sroa.0.2.us62.i = phi i64 [ %i.aq, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.loopexit.us.i ], [ %.sroa.0.0.i, %.preheader.i39.preheader.us.i.preheader ]
  %i.aa = getelementptr inbounds i8, ptr %.sroa.010.3.us61.i, i64 %i.k ; 7 uses
  br i1 %min.iters.check83, label %.preheader.i39.us.i.preheader, label %vector.memcheck84

vector.memcheck84:                                ; preds = %.preheader.i39.preheader.us.i
  %6 = mul i64 %indvar80, %i.k                    ; 2 uses
  %7 = getelementptr i8, ptr %.sroa.010.0.i, i64 %6
  %8 = getelementptr i8, ptr %5, i64 %6
  %bound085 = icmp ult ptr %i.aa, %8
  %bound186 = icmp ult ptr %.sroa.010.3.us61.i, %7
  %found.conflict87 = and i1 %bound085, %bound186
  br i1 %found.conflict87, label %.preheader.i39.us.i.preheader, label %vector.body90

vector.body90:                                    ; preds = %vector.memcheck84, %vector.body90
  %index91 = phi i64 [ %index.next96, %vector.body90 ], [ 0, %vector.memcheck84 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index91 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.us61.i, i64 %index91 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %wide.load92 = load <2 x i64>, ptr %i.ab, align 1, !alias.scope !238, !noalias !239
  %wide.load93 = load <2 x i64>, ptr %i.ad, align 1, !alias.scope !238, !noalias !239
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %wide.load94 = load <2 x i64>, ptr %i.ac, align 1, !alias.scope !240
  %wide.load95 = load <2 x i64>, ptr %i.ae, align 1, !alias.scope !240
  store <2 x i64> %wide.load94, ptr %i.ab, align 1, !alias.scope !238, !noalias !239
  store <2 x i64> %wide.load95, ptr %i.ad, align 1, !alias.scope !238, !noalias !239
  store <2 x i64> %wide.load92, ptr %i.ac, align 1, !alias.scope !240
  store <2 x i64> %wide.load93, ptr %i.ae, align 1, !alias.scope !240
  %index.next96 = add nuw i64 %index91, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.af, label %middle.block97, label %vector.body90, !llvm.loop !194

middle.block97:                                   ; preds = %vector.body90
  br i1 %cmp.n98, label %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.loopexit.us.i, label %.preheader.i39.us.i.preheader

.preheader.i39.us.i.preheader:                    ; preds = %vector.memcheck84, %.preheader.i39.preheader.us.i, %middle.block97
  %.sroa.0.04.i.i40.us.i.ph = phi i64 [ 0, %vector.memcheck84 ], [ 0, %.preheader.i39.preheader.us.i ], [ %n.vec89, %middle.block97 ] ; 5 uses
  %.neg146 = or disjoint i64 %.sroa.0.04.i.i40.us.i.ph, 1
  br i1 %lcmp.mod143.not, label %.preheader.i39.us.i.prol.loopexit, label %.preheader.i39.us.i.prol

.preheader.i39.us.i.prol:                         ; preds = %.preheader.i39.us.i.preheader
  %i.ag = or disjoint i64 %.sroa.0.04.i.i40.us.i.ph, 1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.0.04.i.i40.us.i.ph ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.us61.i, i64 %.sroa.0.04.i.i40.us.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %.sroa.0.0.copyload.i.i.i41.us.i.prol = load i64, ptr %i.ah, align 1, !alias.scope !236
  %.sroa.02.0.copyload.i.i.i42.us.i.prol = load i64, ptr %i.ai, align 1, !alias.scope !237
  store i64 %.sroa.02.0.copyload.i.i.i42.us.i.prol, ptr %i.ah, align 1, !alias.scope !236
  store i64 %.sroa.0.0.copyload.i.i.i41.us.i.prol, ptr %i.ai, align 1, !alias.scope !237
  br label %.preheader.i39.us.i.prol.loopexit

.preheader.i39.us.i.prol.loopexit:                ; preds = %.preheader.i39.us.i.prol, %.preheader.i39.us.i.preheader
  %.sroa.0.04.i.i40.us.i.unr = phi i64 [ %.sroa.0.04.i.i40.us.i.ph, %.preheader.i39.us.i.preheader ], [ %i.ag, %.preheader.i39.us.i.prol ]
  %i.aj = icmp eq i64 %i.l, %.neg146
  br i1 %i.aj, label %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.loopexit.us.i, label %.preheader.i39.us.i

.preheader.i39.us.i:                              ; preds = %.preheader.i39.us.i.prol.loopexit, %.preheader.i39.us.i
  %.sroa.0.04.i.i40.us.i = phi i64 [ %i.an, %.preheader.i39.us.i ], [ %.sroa.0.04.i.i40.us.i.unr, %.preheader.i39.us.i.prol.loopexit ] ; 4 uses
  %i.ak = add nuw nsw i64 %.sroa.0.04.i.i40.us.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.0.04.i.i40.us.i ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.us61.i, i64 %.sroa.0.04.i.i40.us.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %.sroa.0.0.copyload.i.i.i41.us.i = load i64, ptr %i.al, align 1, !alias.scope !236
  %.sroa.02.0.copyload.i.i.i42.us.i = load i64, ptr %i.am, align 1, !alias.scope !237
  store i64 %.sroa.02.0.copyload.i.i.i42.us.i, ptr %i.al, align 1, !alias.scope !236
  store i64 %.sroa.0.0.copyload.i.i.i41.us.i, ptr %i.am, align 1, !alias.scope !237
  %i.an = add nuw nsw i64 %.sroa.0.04.i.i40.us.i, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ak ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.us61.i, i64 %i.ak ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %.sroa.0.0.copyload.i.i.i41.us.i.1 = load i64, ptr %i.ao, align 1, !alias.scope !241
  %.sroa.02.0.copyload.i.i.i42.us.i.1 = load i64, ptr %i.ap, align 1, !alias.scope !242
  store i64 %.sroa.02.0.copyload.i.i.i42.us.i.1, ptr %i.ao, align 1, !alias.scope !241
  store i64 %.sroa.0.0.copyload.i.i.i41.us.i.1, ptr %i.ap, align 1, !alias.scope !242
  %exitcond.not.i.i43.us.i.1 = icmp eq i64 %i.an, %i.l
  br i1 %exitcond.not.i.i43.us.i.1, label %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.loopexit.us.i, label %.preheader.i39.us.i, !llvm.loop !198

_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.loopexit.us.i: ; preds = %.preheader.i39.us.i.prol.loopexit, %.preheader.i39.us.i, %middle.block97
  %i.aq = sub i64 %.sroa.0.2.us62.i, %.sroa.016.0.i ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %.sroa.016.0.i
  %indvar.next81 = add i64 %indvar80, 1
  br i1 %i.ar, label %.loopexit.i, label %.preheader.i39.preheader.us.i

.preheader.i:                                     ; preds = %.preheader
  %.not36.i = icmp eq i64 %.sroa.0.0.i, 0
  %i.as = sub i64 0, %.sroa.0.0.i
  %i.at = lshr i64 %.sroa.0.0.i, 3                ; 5 uses
  %i.au = and i64 %.sroa.0.0.i, 7                 ; 2 uses
  %.not.i.i = icmp eq i64 %i.at, 0
  %.not4.i.i = icmp eq i64 %i.au, 0
  %i.av = and i64 %.sroa.0.0.i, -8                ; 2 uses
  %i.aw = icmp samesign ult i64 %i.au, 4
  %i.ax = and i64 %.sroa.0.0.i, 2
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = and i64 %.sroa.0.0.i, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %.not36.i, label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.us.i, label %.preheader.split.i.preheader

.preheader.split.i.preheader:                     ; preds = %.preheader.i
  %i.bb = and i64 %.sroa.0.0.i, -8                ; 2 uses
  %i.bc = sub i64 %i.bb, %.sroa.0.0.i
  %min.iters.check = icmp ult i64 %.sroa.0.0.i, 32
  %9 = getelementptr i8, ptr %.sroa.010.0.i, i64 %i.bc
  %10 = getelementptr i8, ptr %.sroa.010.0.i, i64 %i.bb
  %n.vec = and i64 %i.at, 2305843009213693948     ; 3 uses
  %cmp.n = icmp eq i64 %i.at, %n.vec
  %i.bd = and i64 %.sroa.0.0.i, 8
  %lcmp.mod145.not = icmp eq i64 %i.bd, 0
  br label %.preheader.split.i

_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.us.i: ; preds = %.preheader.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.us.i
  br label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.us.i

.preheader.split.i:                               ; preds = %.preheader.split.i.preheader, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %indvar = phi i64 [ 0, %.preheader.split.i.preheader ], [ %indvar.next, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ] ; 2 uses
  %.sroa.016.1.i = phi i64 [ %.sroa.016.0.i, %.preheader.split.i.preheader ], [ %i.cc, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ]
  %.sroa.010.1.i = phi ptr [ %.sroa.010.0.i, %.preheader.split.i.preheader ], [ %i.cb, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ] ; 8 uses
  %i.be = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.as ; 6 uses
  br i1 %.not.i.i, label %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.split.i
  br i1 %min.iters.check, label %.preheader.i.i.preheader128, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i.i.preheader
  %11 = mul i64 %indvar, %.sroa.0.0.i             ; 2 uses
  %12 = getelementptr i8, ptr %9, i64 %11
  %13 = getelementptr i8, ptr %10, i64 %11
  %bound0 = icmp ult ptr %i.be, %13
  %bound1 = icmp ult ptr %.sroa.010.1.i, %12
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.i.preheader128, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bf, align 1, !alias.scope !245, !noalias !246
  %wide.load70 = load <2 x i64>, ptr %i.bh, align 1, !alias.scope !245, !noalias !246
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %wide.load71 = load <2 x i64>, ptr %i.bg, align 1, !alias.scope !247
  %wide.load72 = load <2 x i64>, ptr %i.bi, align 1, !alias.scope !247
  store <2 x i64> %wide.load71, ptr %i.bf, align 1, !alias.scope !245, !noalias !246
  store <2 x i64> %wide.load72, ptr %i.bh, align 1, !alias.scope !245, !noalias !246
  store <2 x i64> %wide.load, ptr %i.bg, align 1, !alias.scope !247
  store <2 x i64> %wide.load70, ptr %i.bi, align 1, !alias.scope !247
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i.i, label %.preheader.i.i.preheader128

.preheader.i.i.preheader128:                      ; preds = %vector.memcheck, %.preheader.i.i.preheader, %middle.block
  %.sroa.0.04.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg147 = or disjoint i64 %.sroa.0.04.i.i.i.ph, 1
  br i1 %lcmp.mod145.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader128
  %i.bk = or disjoint i64 %.sroa.0.04.i.i.i.ph, 1
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.0.04.i.i.i.ph ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i, i64 %.sroa.0.04.i.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %.sroa.0.0.copyload.i.i.i.i.prol = load i64, ptr %i.bl, align 1, !alias.scope !243
  %.sroa.02.0.copyload.i.i.i.i.prol = load i64, ptr %i.bm, align 1, !alias.scope !244
  store i64 %.sroa.02.0.copyload.i.i.i.i.prol, ptr %i.bl, align 1, !alias.scope !243
  store i64 %.sroa.0.0.copyload.i.i.i.i.prol, ptr %i.bm, align 1, !alias.scope !244
  br label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader128
  %.sroa.0.04.i.i.i.unr = phi i64 [ %.sroa.0.04.i.i.i.ph, %.preheader.i.i.preheader128 ], [ %i.bk, %.preheader.i.i.prol ]
  %i.bn = icmp eq i64 %i.at, %.neg147
  br i1 %i.bn, label %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.sroa.0.04.i.i.i = phi i64 [ %i.br, %.preheader.i.i ], [ %.sroa.0.04.i.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 4 uses
  %i.bo = add nuw nsw i64 %.sroa.0.04.i.i.i, 1    ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.0.04.i.i.i ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i, i64 %.sroa.0.04.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bp, align 1, !alias.scope !243
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.bq, align 1, !alias.scope !244
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.bp, align 1, !alias.scope !243
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.bq, align 1, !alias.scope !244
  %i.br = add nuw nsw i64 %.sroa.0.04.i.i.i, 2    ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bo ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i, i64 %i.bo ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %.sroa.0.0.copyload.i.i.i.i.1 = load i64, ptr %i.bs, align 1, !alias.scope !248
  %.sroa.02.0.copyload.i.i.i.i.1 = load i64, ptr %i.bt, align 1, !alias.scope !249
  store i64 %.sroa.02.0.copyload.i.i.i.i.1, ptr %i.bs, align 1, !alias.scope !248
  store i64 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.bt, align 1, !alias.scope !249
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.br, %i.at
  br i1 %exitcond.not.i.i.i.1, label %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i.i, label %.preheader.i.i, !llvm.loop !209

_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i.i: ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %middle.block, %.preheader.split.i
  br i1 %.not4.i.i, label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i, label %bb.g

bb.g:                                             ; preds = %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.av ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 %i.av ; 4 uses
  br i1 %i.aw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %.sroa.0.0.copyload.i.i5.i.i = load i32, ptr %i.bu, align 1, !alias.scope !250
  %.sroa.02.0.copyload.i.i6.i.i = load i32, ptr %i.bv, align 1, !alias.scope !251
  store i32 %.sroa.02.0.copyload.i.i6.i.i, ptr %i.bu, align 1, !alias.scope !250
  store i32 %.sroa.0.0.copyload.i.i5.i.i, ptr %i.bv, align 1, !alias.scope !251
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.g ], [ 4, %bb.h ] ; 4 uses
  br i1 %i.ay, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.0.0.i.i.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.0.0.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %.sroa.0.0.copyload.i9.i.i.i = load i16, ptr %i.bw, align 1, !alias.scope !252
  %.sroa.02.0.copyload.i10.i.i.i = load i16, ptr %i.bx, align 1, !alias.scope !253
  store i16 %.sroa.02.0.copyload.i10.i.i.i, ptr %i.bw, align 1, !alias.scope !252
  store i16 %.sroa.0.0.copyload.i9.i.i.i, ptr %i.bx, align 1, !alias.scope !253
  %i.by = or disjoint i64 %.sroa.0.0.i.i.i, 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.1.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %bb.i ], [ %i.by, %bb.j ] ; 2 uses
  br i1 %i.ba, label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.0.1.i.i.i ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.0.1.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %.sroa.0.0.copyload.i11.i.i.i = load i8, ptr %i.bz, align 1, !alias.scope !254
  %.sroa.02.0.copyload.i12.i.i.i = load i8, ptr %i.ca, align 1, !alias.scope !255
  store i8 %.sroa.02.0.copyload.i12.i.i.i, ptr %i.bz, align 1, !alias.scope !254
  store i8 %.sroa.0.0.copyload.i11.i.i.i, ptr %i.ca, align 1, !alias.scope !255
  br label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.l, %bb.k, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i.i
  %i.cb = getelementptr i8, ptr %.sroa.010.1.i, i64 %.sroa.0.0.i ; 2 uses
  %i.cc = sub i64 %.sroa.016.1.i, %.sroa.0.0.i    ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %.sroa.0.0.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cd, label %.loopexit.i, label %.preheader.split.i

.loopexit.i:                                      ; preds = %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit54.i, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.loopexit.us.i, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.us.us.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.sroa.016.2.i = phi i64 [ %.sroa.016.0.i, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.loopexit.us.i ], [ %.sroa.016.0.i, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.us.us.i ], [ %i.cc, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %.sroa.016.0.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit54.i ] ; 2 uses
  %.sroa.010.2.i = phi ptr [ %i.aa, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.loopexit.us.i ], [ %i.x, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.us.us.i ], [ %i.cb, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %i.cg, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit54.i ]
  %.sroa.0.1.i = phi i64 [ %i.aq, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.loopexit.us.i ], [ %i.y, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.us.us.i ], [ %.sroa.0.0.i, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %i.dd, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit54.i ] ; 2 uses
  %i.ce = icmp eq i64 %.sroa.016.2.i, 0
  %i.cf = icmp eq i64 %.sroa.0.1.i, 0
  %or.cond.i = or i1 %i.ce, %i.cf
  br i1 %or.cond.i, label %_RINvNtNtCs6JMX4GRUq9U_4core5slice6rotate15ptr_rotate_swaphECscxmO3cvmuC8_9uu_base32.exit, label %.preheader

.preheader55.split.split.i:                       ; preds = %.preheader55.split.split.i.preheader, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit54.i
  %indvar107 = phi i64 [ 0, %.preheader55.split.split.i.preheader ], [ %indvar.next108, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit54.i ] ; 2 uses
  %.sroa.010.3.i = phi ptr [ %.sroa.010.0.i, %.preheader55.split.split.i.preheader ], [ %i.cg, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit54.i ] ; 7 uses
  %.sroa.0.2.i = phi i64 [ %.sroa.0.0.i, %.preheader55.split.split.i.preheader ], [ %i.dd, %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit54.i ]
  %i.cg = getelementptr i8, ptr %.sroa.010.3.i, i64 %i.k ; 8 uses
  br i1 %.not.i38.i, label %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.i, label %.preheader.i39.i.preheader

.preheader.i39.i.preheader:                       ; preds = %.preheader55.split.split.i
  br i1 %min.iters.check110, label %.preheader.i39.i.preheader129, label %vector.memcheck111

vector.memcheck111:                               ; preds = %.preheader.i39.i.preheader
  %14 = mul i64 %indvar107, %i.k                  ; 2 uses
  %15 = getelementptr i8, ptr %3, i64 %14
  %16 = getelementptr i8, ptr %4, i64 %14
  %bound0112 = icmp ult ptr %i.cg, %16
  %bound1113 = icmp ult ptr %.sroa.010.3.i, %15
  %found.conflict114 = and i1 %bound0112, %bound1113
  br i1 %found.conflict114, label %.preheader.i39.i.preheader129, label %vector.body117

vector.body117:                                   ; preds = %vector.memcheck111, %vector.body117
  %index118 = phi i64 [ %index.next123, %vector.body117 ], [ 0, %vector.memcheck111 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index118 ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i, i64 %index118 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %wide.load119 = load <2 x i64>, ptr %i.ch, align 1, !alias.scope !256, !noalias !257
  %wide.load120 = load <2 x i64>, ptr %i.cj, align 1, !alias.scope !256, !noalias !257
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %wide.load121 = load <2 x i64>, ptr %i.ci, align 1, !alias.scope !258
  %wide.load122 = load <2 x i64>, ptr %i.ck, align 1, !alias.scope !258
  store <2 x i64> %wide.load121, ptr %i.ch, align 1, !alias.scope !256, !noalias !257
  store <2 x i64> %wide.load122, ptr %i.cj, align 1, !alias.scope !256, !noalias !257
  store <2 x i64> %wide.load119, ptr %i.ci, align 1, !alias.scope !258
  store <2 x i64> %wide.load120, ptr %i.ck, align 1, !alias.scope !258
  %index.next123 = add nuw i64 %index118, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.cl, label %middle.block124, label %vector.body117, !llvm.loop !222

middle.block124:                                  ; preds = %vector.body117
  br i1 %cmp.n125, label %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.i, label %.preheader.i39.i.preheader129

.preheader.i39.i.preheader129:                    ; preds = %vector.memcheck111, %.preheader.i39.i.preheader, %middle.block124
  %.sroa.0.04.i.i40.i.ph = phi i64 [ 0, %vector.memcheck111 ], [ 0, %.preheader.i39.i.preheader ], [ %n.vec116, %middle.block124 ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.i.i40.i.ph, 1
  br i1 %lcmp.mod.not, label %.preheader.i39.i.prol.loopexit, label %.preheader.i39.i.prol

.preheader.i39.i.prol:                            ; preds = %.preheader.i39.i.preheader129
  %i.cm = or disjoint i64 %.sroa.0.04.i.i40.i.ph, 1
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.sroa.0.04.i.i40.i.ph ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i, i64 %.sroa.0.04.i.i40.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %.sroa.0.0.copyload.i.i.i41.i.prol = load i64, ptr %i.cn, align 1, !alias.scope !236
  %.sroa.02.0.copyload.i.i.i42.i.prol = load i64, ptr %i.co, align 1, !alias.scope !237
  store i64 %.sroa.02.0.copyload.i.i.i42.i.prol, ptr %i.cn, align 1, !alias.scope !236
  store i64 %.sroa.0.0.copyload.i.i.i41.i.prol, ptr %i.co, align 1, !alias.scope !237
  br label %.preheader.i39.i.prol.loopexit

.preheader.i39.i.prol.loopexit:                   ; preds = %.preheader.i39.i.prol, %.preheader.i39.i.preheader129
  %.sroa.0.04.i.i40.i.unr = phi i64 [ %.sroa.0.04.i.i40.i.ph, %.preheader.i39.i.preheader129 ], [ %i.cm, %.preheader.i39.i.prol ]
  %i.cp = icmp eq i64 %i.l, %.neg
  br i1 %i.cp, label %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.i, label %.preheader.i39.i

.preheader.i39.i:                                 ; preds = %.preheader.i39.i.prol.loopexit, %.preheader.i39.i
  %.sroa.0.04.i.i40.i = phi i64 [ %i.ct, %.preheader.i39.i ], [ %.sroa.0.04.i.i40.i.unr, %.preheader.i39.i.prol.loopexit ] ; 4 uses
  %i.cq = add nuw nsw i64 %.sroa.0.04.i.i40.i, 1  ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.sroa.0.04.i.i40.i ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i, i64 %.sroa.0.04.i.i40.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %.sroa.0.0.copyload.i.i.i41.i = load i64, ptr %i.cr, align 1, !alias.scope !236
  %.sroa.02.0.copyload.i.i.i42.i = load i64, ptr %i.cs, align 1, !alias.scope !237
  store i64 %.sroa.02.0.copyload.i.i.i42.i, ptr %i.cr, align 1, !alias.scope !236
  store i64 %.sroa.0.0.copyload.i.i.i41.i, ptr %i.cs, align 1, !alias.scope !237
  %i.ct = add nuw nsw i64 %.sroa.0.04.i.i40.i, 2  ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cq ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i, i64 %i.cq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %.sroa.0.0.copyload.i.i.i41.i.1 = load i64, ptr %i.cu, align 1, !alias.scope !259
  %.sroa.02.0.copyload.i.i.i42.i.1 = load i64, ptr %i.cv, align 1, !alias.scope !260
  store i64 %.sroa.02.0.copyload.i.i.i42.i.1, ptr %i.cu, align 1, !alias.scope !259
  store i64 %.sroa.0.0.copyload.i.i.i41.i.1, ptr %i.cv, align 1, !alias.scope !260
  %exitcond.not.i.i43.i.1 = icmp eq i64 %i.ct, %i.l
  br i1 %exitcond.not.i.i43.i.1, label %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.i, label %.preheader.i39.i, !llvm.loop !226

_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.i: ; preds = %.preheader.i39.i.prol.loopexit, %.preheader.i39.i, %middle.block124, %.preheader55.split.split.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.n ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.010.3.i, i64 %i.n ; 4 uses
  br i1 %i.o, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %.sroa.0.0.copyload.i.i5.i46.i = load i32, ptr %i.cw, align 1, !alias.scope !261
  %.sroa.02.0.copyload.i.i6.i47.i = load i32, ptr %i.cx, align 1, !alias.scope !262
  store i32 %.sroa.02.0.copyload.i.i6.i47.i, ptr %i.cw, align 1, !alias.scope !261
  store i32 %.sroa.0.0.copyload.i.i5.i46.i, ptr %i.cx, align 1, !alias.scope !262
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.i
  %.sroa.0.0.i.i48.i = phi i64 [ 0, %_RINvNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECscxmO3cvmuC8_9uu_base32.exit.i44.i ], [ 4, %bb.m ] ; 4 uses
  br i1 %i.q, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.0.0.i.i48.i ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sroa.0.0.i.i48.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %.sroa.0.0.copyload.i9.i.i49.i = load i16, ptr %i.cy, align 1, !alias.scope !263
  %.sroa.02.0.copyload.i10.i.i50.i = load i16, ptr %i.cz, align 1, !alias.scope !264
  store i16 %.sroa.02.0.copyload.i10.i.i50.i, ptr %i.cy, align 1, !alias.scope !263
  store i16 %.sroa.0.0.copyload.i9.i.i49.i, ptr %i.cz, align 1, !alias.scope !264
  %i.da = or disjoint i64 %.sroa.0.0.i.i48.i, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.0.1.i.i51.i = phi i64 [ %.sroa.0.0.i.i48.i, %bb.n ], [ %i.da, %bb.o ] ; 2 uses
  br i1 %i.s, label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit54.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.0.1.i.i51.i ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sroa.0.1.i.i51.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %.sroa.0.0.copyload.i11.i.i52.i = load i8, ptr %i.db, align 1, !alias.scope !265
  %.sroa.02.0.copyload.i12.i.i53.i = load i8, ptr %i.dc, align 1, !alias.scope !266
  store i8 %.sroa.02.0.copyload.i12.i.i53.i, ptr %i.db, align 1, !alias.scope !265
  store i8 %.sroa.0.0.copyload.i11.i.i52.i, ptr %i.dc, align 1, !alias.scope !266
  br label %_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit54.i

_RNvNtCs6JMX4GRUq9U_4core3ptr25swap_nonoverlapping_bytes.exit54.i: ; preds = %bb.q, %bb.p
  %i.dd = sub i64 %.sroa.0.2.i, %.sroa.016.0.i    ; 3 uses
  %i.de = icmp ult i64 %i.dd, %.sroa.016.0.i
  %indvar.next108 = add i64 %indvar107, 1
  br i1 %i.de, label %.loopexit.i, label %.preheader55.split.split.i

bb.r:                                             ; preds = %bb.c
  %i.df = sub nsw i64 0, %0
  %i.dg = getelementptr inbounds i8, ptr %1, i64 %i.df ; 5 uses
  %i.dh = load i8, ptr %i.dg, align 1, !noundef !9
  br label %.outer

.outer:                                           ; preds = %bb.w, %bb.r
  %.sroa.019.0.i.ph = phi i64 [ %spec.select.i, %bb.w ], [ %2, %bb.r ] ; 3 uses
  %.sroa.027.0.i.ph = phi i8 [ %i.dj, %bb.w ], [ %i.dh, %bb.r ]
  %.sroa.06.0.i.ph = phi i64 [ %i.dl, %bb.w ], [ %2, %bb.r ]
  br label %bb.s

bb.s:                                             ; preds = %.outer, %bb.t
  %.sroa.027.0.i = phi i8 [ %i.dj, %bb.t ], [ %.sroa.027.0.i.ph, %.outer ]
  %.sroa.06.0.i = phi i64 [ %i.dk, %bb.t ], [ %.sroa.06.0.i.ph, %.outer ] ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.06.0.i ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !noundef !9 ; 3 uses
  store i8 %.sroa.027.0.i, ptr %i.di, align 1
  %.not.i3 = icmp ult i64 %.sroa.06.0.i, %0
  br i1 %.not.i3, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dk = add i64 %.sroa.06.0.i, %2
  br label %bb.s

bb.u:                                             ; preds = %bb.s
  %i.dl = sub nuw i64 %.sroa.06.0.i, %0           ; 3 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 %i.dj, ptr %i.dg, align 1
  %i.dn = icmp ugt i64 %.sroa.019.0.i.ph, 1
  br i1 %i.dn, label %.lr.ph.i, label %_RINvNtNtCs6JMX4GRUq9U_4core5slice6rotate15ptr_rotate_swaphECscxmO3cvmuC8_9uu_base32.exit

bb.w:                                             ; preds = %bb.u
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 %.sroa.019.0.i.ph)
  br label %.outer

.lr.ph.i:                                         ; preds = %bb.v, %bb.aa
  %.sroa.021.036.i = phi i64 [ %i.dw, %bb.aa ], [ 1, %bb.v ] ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.021.036.i ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !noundef !9
  %i.dq = add i64 %.sroa.021.036.i, %2
  br label %bb.x

bb.x:                                             ; preds = %.backedge, %.lr.ph.i
  %.sroa.027.1.i = phi i8 [ %i.dp, %.lr.ph.i ], [ %i.ds, %.backedge ]
  %.sroa.06.2.i = phi i64 [ %i.dq, %.lr.ph.i ], [ %.sroa.06.2.i.be, %.backedge ] ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.06.2.i ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !noundef !9 ; 2 uses
  store i8 %.sroa.027.1.i, ptr %i.dr, align 1
  %.not34.i = icmp ult i64 %.sroa.06.2.i, %0
  br i1 %.not34.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dt = add i64 %.sroa.06.2.i, %2
  br label %.backedge

bb.z:                                             ; preds = %bb.x
  %i.du = sub nuw i64 %.sroa.06.2.i, %0           ; 2 uses
  %i.dv = icmp eq i64 %i.du, %.sroa.021.036.i
  br i1 %i.dv, label %bb.aa, label %.backedge

.backedge:                                        ; preds = %bb.z, %bb.y
  %.sroa.06.2.i.be = phi i64 [ %i.du, %bb.z ], [ %i.dt, %bb.y ]
  br label %bb.x

bb.aa:                                            ; preds = %bb.z
  store i8 %i.ds, ptr %i.do, align 1
  %i.dw = add nuw i64 %.sroa.021.036.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dw, %.sroa.019.0.i.ph
  br i1 %exitcond.not.i, label %_RINvNtNtCs6JMX4GRUq9U_4core5slice6rotate15ptr_rotate_swaphECscxmO3cvmuC8_9uu_base32.exit, label %.lr.ph.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_read_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i8 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit, %bb.a
  %.sroa.01.0.ph = phi i64 [ %i.bu, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit ], [ 0, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECscxmO3cvmuC8_9uu_base32.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.n = load i64, ptr %i.c, align 8, !alias.scope !291, !noundef !9 ; 2 uses
  %i.o = load i64, ptr %i.d, align 8, !alias.scope !291, !noundef !9 ; 2 uses
  %.not.i.i = icmp ult i64 %i.n, %i.o
  %.pre.i.i = load ptr, ptr %0, align 8, !alias.scope !291 ; 3 uses
  br i1 %.not.i.i, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !292
  %i.p = load i64, ptr %i.f, align 8, !alias.scope !291, !noundef !9
  store ptr %.pre.i.i, ptr %i.b, align 8, !noalias !292
  store i64 %i.p, ptr %i.g, align 8, !noalias !292
  store i64 0, ptr %i.h, align 8, !noalias !292
  %i.q = load i8, ptr %i.j, align 8, !range !18, !alias.scope !291, !noundef !9
  store i8 %i.q, ptr %i.i, align 8, !noalias !292
  %i.r = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #23, !noalias !293 ; 2 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !291
  %i.s = load i64, ptr %i.h, align 8, !noalias !292, !noundef !9 ; 2 uses
  store i64 %i.s, ptr %i.d, align 8, !alias.scope !291
  %i.t = load i8, ptr %i.i, align 8, !range !18, !noalias !292, !noundef !9
  store i8 %i.t, ptr %i.j, align 8, !alias.scope !291
  %.not3.i.i = icmp eq ptr %i.r, null
  br i1 %.not3.i.i, label %bb.d, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.thread

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.thread: ; preds = %bb.c
  %i.u = ptrtoint ptr %i.r to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !292
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !292
  br label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.b, %bb.d
  %i.v = phi i64 [ %i.o, %bb.b ], [ %i.s, %bb.d ]
  %i.w = phi i64 [ %i.n, %bb.b ], [ 0, %bb.d ]    ; 2 uses
  %i.x = sub nuw i64 %i.v, %i.w                   ; 9 uses
  %i.y = icmp eq ptr %.pre.i.i, null
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.thread, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit
  %.sroa.8.025 = phi i64 [ %i.u, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.thread ], [ %i.x, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit ] ; 5 uses
  %i.z = inttoptr i64 %.sroa.8.025 to ptr         ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = and i64 %.sroa.8.025, 3
  switch i64 %i.aa, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split28
    i64 1, label %.split27
  ], !prof !15

default.unreachable:                              ; preds = %bb.e
  unreachable

.split:                                           ; preds = %bb.e
  %i.ab = lshr i64 %.sroa.8.025, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !9, !noundef !9
  %i.ag = call noundef zeroext i1 %i.af(i32 noundef %i.ac) #23, !inline_history !0
  br i1 %i.ag, label %.thread, label %.loopexit

.split28:                                         ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !range !19, !noundef !9
  %i.aj = icmp eq i8 %i.ai, 35
  br i1 %i.aj, label %.thread, label %.loopexit

.split27:                                         ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %i.z, i64 31
  %i.al = load i8, ptr %i.ak, align 8, !range !19, !noundef !9
  %i.am = icmp eq i8 %i.al, 35
  br i1 %i.am, label %bb.o, label %.loopexit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %bb.e
  %i.an = lshr i64 %.sroa.8.025, 32
  %i.ao = icmp ult i64 %.sroa.8.025, 188978561024 ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.an to i8
  %spec.select.i.i.i = select i1 %i.ao, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.ap = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.aq, label %bb.n, label %.loopexit

bb.f:                                             ; preds = %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.w ; 3 uses
  %i.as = icmp samesign ult i64 %i.x, 16
  br i1 %i.as, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %bb.f
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %i.at = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef range(i64 0, -9223372036854775808) %i.x) #23
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit

end_hunk_0
