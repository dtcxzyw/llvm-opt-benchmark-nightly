Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslLviULm4Laq_10rayon_core3job9JobResultTINtNtNtNtCs1JJT1bG4y5L_5rayon4iter7collect8consumer13CollectResultTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEB1l_EEEB2v_:bb.a
  %.val.i = load ptr, ptr %i.am, align 8, !alias.scope !24394, !noundef !67
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i = load i64, ptr %i.an, align 8, !alias.scope !24394, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24402)
  %i.ao = icmp eq i64 %.val1.i, 0
  br i1 %i.ao, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph.i.i.i6.i

.lr.ph.i.i.i6.i:                                  ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs1JJT1bG4y5L_5rayon4iter7collect8consumer13CollectResultTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEB1L_.exit.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEBH_.exit.i.i.i15.i
  %.sroa.0.07.i.i.i7.i = phi i64 [ %i.aq, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEBH_.exit.i.i.i15.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs1JJT1bG4y5L_5rayon4iter7collect8consumer13CollectResultTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEB1L_.exit.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i7.i ; 4 uses
  %i.aq = add nuw nsw i64 %.sroa.0.07.i.i.i7.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24403)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24406)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.val1.i.i.i.i.i.i.i8.i = load i64, ptr %i.as, align 8, !alias.scope !24407, !noalias !24394, !noundef !67 ; 4 uses
  %i.at = icmp eq i64 %.val1.i.i.i.i.i.i.i8.i, 0
  br i1 %i.at, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i11.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i9.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i9.i: ; preds = %.lr.ph.i.i.i6.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.val.i.i.i.i.i.i.i10.i = load ptr, ptr %i.au, align 8, !alias.scope !24407, !noalias !24394, !nonnull !67, !noundef !67
  %i.av = shl i64 %.val1.i.i.i.i.i.i.i8.i, 3
  %i.aw = icmp slt i64 %.val1.i.i.i.i.i.i.i8.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = and i64 %i.av, -16                      ; 2 uses
  %i.ay = add i64 %i.ax, 16                       ; 2 uses
  %i.az = add nsw i64 %.val1.i.i.i.i.i.i.i8.i, 17
  %i.ba = add i64 %i.az, %i.ay                    ; 3 uses
  %i.bb = icmp uge i64 %i.ba, %i.ay
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp ult i64 %i.ba, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = sub nuw nsw i64 -16, %i.ax
  %i.be = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i10.i, i64 %i.bd
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !24408
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i11.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i11.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i9.i, %.lr.ph.i.i.i6.i
  %.val2.i.i.i.i.i.i.i12.i = load i64, ptr %i.ar, align 8, !alias.scope !24407, !noalias !24394 ; 2 uses
  %i.bf = icmp eq i64 %.val2.i.i.i.i.i.i.i12.i, 0
  br i1 %i.bf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEBH_.exit.i.i.i15.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i13.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i13.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i11.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.val3.i.i.i.i.i.i.i14.i = load ptr, ptr %i.bg, align 8, !alias.scope !24407, !noalias !24394, !nonnull !67, !noundef !67
  %i.bh = mul nuw i64 %.val2.i.i.i.i.i.i.i12.i, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i14.i, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !24408
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEBH_.exit.i.i.i15.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEBH_.exit.i.i.i15.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i13.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i11.i
  %i.bi = icmp eq i64 %i.aq, %.val1.i
  br i1 %i.bi, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph.i.i.i6.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslLviULm4Laq_10rayon_core3job9JobResultTINtNtNtNtCs1JJT1bG4y5L_5rayon4iter7collect8consumer13CollectResultTjNtNtCskcxRuJ53GpR_9rustworkx9iterators19MultiplePathMappingEEB1l_EEEB2v_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !126, !noundef !67
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskcxRuJ53GpR_9rustworkx.exit
    i64 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !67, !align !98, !noundef !67 ; 5 uses
  %i.d = load ptr, ptr %.val1, align 8, !invariant.load !67 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !70, !invariant.load !67 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !127, !invariant.load !67
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.i) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskcxRuJ53GpR_9rustworkx.exit

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !70, !invariant.load !67 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCs87CvPiUlf0m_5alloc5boxedINtB5_3BoxDNtNtCslwFuT2d6ECx_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit5.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !127, !invariant.load !67
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.o) #59
  br label %_RNvXs8_NtCs87CvPiUlf0m_5alloc5boxedINtB5_3BoxDNtNtCslwFuT2d6ECx_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit5.i

_RNvXs8_NtCs87CvPiUlf0m_5alloc5boxedINtB5_3BoxDNtNtCslwFuT2d6ECx_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit5.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.e
  resume { ptr, i32 } %i.j

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.lr.ph.i.i.i9.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs1JJT1bG4y5L_5rayon4iter7collect8consumer13CollectResultTjNtNtCskcxRuJ53GpR_9rustworkx9iterators19MultiplePathMappingEEEB1L_.exit.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a
  ret void

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24411)
  %.val4.i = load ptr, ptr %i.p, align 8, !alias.scope !24411, !noundef !67
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val5.i = load i64, ptr %i.q, align 8, !alias.scope !24411, !noundef !67 ; 2 uses
  %i.r = icmp eq i64 %.val5.i, 0
  br i1 %i.r, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs1JJT1bG4y5L_5rayon4iter7collect8consumer13CollectResultTjNtNtCskcxRuJ53GpR_9rustworkx9iterators19MultiplePathMappingEEEB1L_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw [72 x i8], ptr %.val4.i, i64 %.sroa.0.07.i.i.i.i
  %i.t = add nuw nsw i64 %.sroa.0.07.i.i.i.i, 1   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  tail call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1g_jEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.u), !noalias !24411
  %i.v = icmp eq i64 %i.t, %.val5.i
  br i1 %i.v, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs1JJT1bG4y5L_5rayon4iter7collect8consumer13CollectResultTjNtNtCskcxRuJ53GpR_9rustworkx9iterators19MultiplePathMappingEEEB1L_.exit.i, label %.lr.ph.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs1JJT1bG4y5L_5rayon4iter7collect8consumer13CollectResultTjNtNtCskcxRuJ53GpR_9rustworkx9iterators19MultiplePathMappingEEEB1L_.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.w, align 8, !alias.scope !24411, !noundef !67
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i = load i64, ptr %i.x, align 8, !alias.scope !24411, !noundef !67 ; 2 uses
  %i.y = icmp eq i64 %.val1.i, 0
  br i1 %i.y, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph.i.i.i9.i

.lr.ph.i.i.i9.i:                                  ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs1JJT1bG4y5L_5rayon4iter7collect8consumer13CollectResultTjNtNtCskcxRuJ53GpR_9rustworkx9iterators19MultiplePathMappingEEEB1L_.exit.i, %.lr.ph.i.i.i9.i
  %.sroa.0.07.i.i.i10.i = phi i64 [ %i.aa, %.lr.ph.i.i.i9.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs1JJT1bG4y5L_5rayon4iter7collect8consumer13CollectResultTjNtNtCskcxRuJ53GpR_9rustworkx9iterators19MultiplePathMappingEEEB1L_.exit.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i10.i
  %i.aa = add nuw nsw i64 %.sroa.0.07.i.i.i10.i, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1g_jEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.ab), !noalias !24411
  %i.ac = icmp eq i64 %i.aa, %.val1.i
  br i1 %i.ac, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph.i.i.i9.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24414)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.a, align 8, !alias.scope !24414, !noundef !67 ; 3 uses
  %i.b = icmp eq i64 %.val3.i, 0
  br i1 %i.b, label %_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !24414 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !24414 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !24414
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = sub nsw i64 0, %i.l
  %i.t = getelementptr inbounds i8, ptr %.val2.i, i64 %i.s
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #59, !noalias !24414
  br label %_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit

_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.a, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24418)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !24418
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !24418
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !24418, !nonnull !67, !align !98, !noundef !67 ; 10 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !24418, !noundef !67 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %.pre7.i.i = load ptr, ptr %.val2.i, align 8, !noalias !24418
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.c, %.lr.ph.split.us.preheader.i.i
  %1 = phi ptr [ %3, %bb.c ], [ %.pre7.i.i, %.lr.ph.split.us.preheader.i.i ] ; 2 uses
  %.sroa.04.03.us.i.i = phi i64 [ %2, %bb.c ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %2 = add nuw i64 %.sroa.04.03.us.i.i, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.03.us.i.i ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noalias !24418, !noundef !67
  %i.h = icmp eq i8 %i.g, -128
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.i = add i64 %.sroa.04.03.us.i.i, -16
  %i.j = load i64, ptr %i.c, align 8, !noalias !24418, !noundef !67
  %i.k = and i64 %i.j, %i.i
  store i8 -1, ptr %i.f, align 1, !noalias !24418
  %i.l = load ptr, ptr %.val2.i, align 8, !noalias !24418, !nonnull !67, !noundef !67
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 16
  store i8 -1, ptr %i.n, align 1, !noalias !24418
  %i.o = load i64, ptr %i.e, align 8, !noalias !24418, !noundef !67
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.e, align 8, !noalias !24418
  %.pre.i.i = load ptr, ptr %.val2.i, align 8, !noalias !24418
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %3 = phi ptr [ %.pre.i.i, %bb.b ], [ %1, %.lr.ph.split.us.i.i ]
  %exitcond6.not.i.i = icmp eq i64 %.sroa.04.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.04.03.i.i = phi i64 [ %i.q, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.q = add nuw i64 %.sroa.04.03.i.i, 1
  %i.r = load ptr, ptr %.val2.i, align 8, !noalias !24418, !nonnull !67, !noundef !67
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.04.03.i.i ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !noalias !24418, !noundef !67
  %i.u = icmp eq i8 %i.t, -128
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.04.03.i.i, -1
  %i.v = add i64 %.sroa.04.03.i.i, -16
  %i.w = load i64, ptr %i.c, align 8, !noalias !24418, !noundef !67
  %i.x = and i64 %i.w, %i.v
  store i8 -1, ptr %i.s, align 1, !noalias !24418
  %i.y = load ptr, ptr %.val2.i, align 8, !noalias !24418, !nonnull !67, !noundef !67
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  store i8 -1, ptr %i.aa, align 1, !noalias !24418
  %i.ab = load ptr, ptr %.val2.i, align 8, !noalias !24418, !nonnull !67, !noundef !67
  %.neg6.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.neg6.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ac), !noalias !24418, !inline_history !24417
  %i.ad = load i64, ptr %i.e, align 8, !noalias !24418, !noundef !67
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr %i.e, align 8, !noalias !24418
  br label %bb.d

_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.af = load i64, ptr %i.c, align 8, !noalias !24418, !noundef !67 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 8
  %i.ah = add i64 %i.af, 1
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = mul nuw i64 %i.ai, 7
  %.sroa.01.0.i.i = select i1 %i.ag, i64 %i.af, i64 %i.aj
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !noalias !24418, !noundef !67
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.an = sub i64 %.sroa.01.0.i.i, %i.al
  store i64 %i.an, ptr %i.am, align 8, !noalias !24418
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown3raw8RawTablejEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.a
  %i.b = shl i64 %.8.val, 3
  %i.c = icmp slt i64 %.8.val, 2305843009213693950
  tail call void @llvm.assume(i1 %i.c)
  %i.d = and i64 %i.b, -16                        ; 2 uses
  %i.e = add i64 %i.d, 16                         ; 2 uses
  %i.f = add nsw i64 %.8.val, 17
  %i.g = add i64 %i.f, %i.e                       ; 3 uses
  %i.h = icmp uge i64 %i.g, %i.e
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp ult i64 %i.g, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.j = sub nuw nsw i64 -16, %i.d
  %i.k = getelementptr inbounds i8, ptr %.0.val, i64 %i.j
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown3raw8RawTablejEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown3raw8RawTablejEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.a, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEKj2_EEB1Z_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24441)
  %i.a = load i64, ptr %0, align 8, !alias.scope !24442, !noundef !67 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !24442, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24444)
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %_RNvXs5_NtNtCslwFuT2d6ECx_4core5array4iterINtB5_8IntoIterINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB9_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEKj2_ENtNtNtB9_3ops4drop4Drop4dropB1M_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sub nuw i64 %i.c, %i.a                   ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.a ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24445)
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit.i.i.i.i.i.i, %bb.b
  %.sroa.0.09.i.i.i.i.i.i = phi i64 [ %i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit.i.i.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.0.09.i.i.i.i.i.i ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i, 1 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24447)
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !24448, !nonnull !67, !noundef !67 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noalias !24448, !noundef !67
  %i.l = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.l, ptr %i.j, align 8, !noalias !24448
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  invoke fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtCslwFuT2d6ECx_4core4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEE9drop_slowB1i_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.h) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit.i.i.i.i.i.i unwind label %bb.d, !inline_history !25

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.n = icmp eq i64 %i.i, %i.f
  br i1 %i.n, label %_RNvXs5_NtNtCslwFuT2d6ECx_4core5array4iterINtB5_8IntoIterINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB9_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEKj2_ENtNtNtB9_3ops4drop4Drop4dropB1M_.exit, label %.lr.ph.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.i, %i.f
  br i1 %i.p, label %._crit_edge13.i.i.i.i.i.i, label %.lr.ph12.i.i.i.i.i.i

.lr.ph12.i.i.i.i.i.i:                             ; preds = %bb.d, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit8.i.i.i.i.i.i
  %.sroa.0.110.i.i.i.i.i.i = phi i64 [ %i.r, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit8.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.0.110.i.i.i.i.i.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i.i.i.i.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24450)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !24451, !nonnull !67, !noundef !67 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noalias !24451, !noundef !67
  %i.u = add i64 %i.t, -1                         ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !noalias !24451
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.e, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit8.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph12.i.i.i.i.i.i
  invoke fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtCslwFuT2d6ECx_4core4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEE9drop_slowB1i_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.q) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit8.i.i.i.i.i.i unwind label %bb.f, !inline_history !25

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit8.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph12.i.i.i.i.i.i
  %i.w = icmp eq i64 %i.r, %i.f
  br i1 %i.w, label %._crit_edge13.i.i.i.i.i.i, label %.lr.ph12.i.i.i.i.i.i

._crit_edge13.i.i.i.i.i.i:                        ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit8.i.i.i.i.i.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !24452, !inline_history !26
  unreachable

_RNvXs5_NtNtCslwFuT2d6ECx_4core5array4iterINtB5_8IntoIterINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB9_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEKj2_ENtNtNtB9_3ops4drop4Drop4dropB1M_.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit.i.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterTReINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyEEKj1_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24467)
  %i.a = load i64, ptr %0, align 8, !alias.scope !24468, !noundef !67 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !24468, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24470)
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %_RNvXs5_NtNtCslwFuT2d6ECx_4core5array4iterINtB5_8IntoIterTReINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB10_5types3any5PyAnyEEKj1_ENtNtNtB9_3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sub nuw i64 %i.c, %i.a                   ; 3 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.a ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24471)
  %i.h = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTReINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBJ_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %bb.b
  %.sroa.0.08.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.j, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTReINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBJ_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.08.i.i.i.i.i.i
  %i.j = add nuw nsw i64 %.sroa.0.08.i.i.i.i.i.i, 1 ; 4 uses
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val7.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !24472, !nonnull !67, !noundef !67 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !24472, !noundef !67
  %i.l = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.l, label %bb.e, label %bb.d, !prof !125

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val7.i.i.i.i.i.i)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTReINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBJ_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i unwind label %bb.g, !noalias !24472

bb.e:                                             ; preds = %bb.c
  tail call void @_Py_DecRef(ptr noundef nonnull %.val7.i.i.i.i.i.i) #59, !noalias !24472
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTReINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBJ_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_RNvMsn_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraph26___pymethod_adj_direction__:bb.a
.noexc3.i40.i:                                    ; preds = %bb.t
  unreachable

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i34.i: ; preds = %.lr.ph.i.i.i.i.i32.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !noalias !90664, !noundef !67
  %.sroa.8.0.in.i.i.i.i.i35.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.sroa.8.0.i.i.i.i.i36.i = load i64, ptr %.sroa.8.0.in.i.i.i.i.i35.i, align 8, !noalias !90664
  %i.ce = and i64 %.sroa.8.0.i.i.i.i.i36.i, 4294967295
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBU_5types3any5PyAnyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef range(i64 0, 4294967296) %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ca)
          to label %.noexc4.i39.i unwind label %.loopexit.split-lp.loopexit.i37.i

.noexc4.i39.i:                                    ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i34.i
  %i.cf = zext i32 %i.cd to i64                   ; 2 uses
  %i.cg = icmp ugt i64 %i.bo, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i32.i, label %_RINvXs9_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBV_5types3any5PyAnyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTjBP_EE9from_iterINtNtNtB2H_8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph5EdgesBQ_NtB4q_8DirectedENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5K_9PyDiGraph13adj_direction0EEB5M_.exit.i

.loopexit.split-lp.loopexit.i37.i:                ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i34.i
  %lpad.loopexit11.i38.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

.loopexit.split-lp.loopexit.split-lp.i25.i:       ; preds = %bb.t, %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i21.i
  %lpad.loopexit.split-lp12.i26.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_RINvXs9_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBV_5types3any5PyAnyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTjBP_EE9from_iterINtNtNtB2H_8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph5EdgesBQ_NtB4q_8DirectedENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5K_9PyDiGraph13adj_direction0EEB5M_.exit.i: ; preds = %.noexc4.i39.i, %.split.i.i.i.i.i31.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90662
  br label %_RNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraph13adj_direction.exit

_RNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraph13adj_direction.exit: ; preds = %_RINvXs9_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBV_5types3any5PyAnyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTjBP_EE9from_iterINtNtNtB2H_8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph5EdgesBQ_NtB4q_8DirectedENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5K_9PyDiGraph13adj_direction0EEB5M_.exit.i, %_RINvXs9_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBV_5types3any5PyAnyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTjBP_EE9from_iterINtNtNtB2H_8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph5EdgesBQ_NtB4q_8DirectedENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5K_9PyDiGraph13adj_directions_0EEB5M_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @_RNvYINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBO_5types3any5PyAnyENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtNtBO_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.h, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.g)
          to label %bb.u unwind label %bb.e

bb.u:                                             ; preds = %_RNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraph13adj_direction.exit
  %i.ch = load i64, ptr %i.h, align 8, !range !68, !noundef !67
  %i.ci = trunc nuw i64 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cj, ptr noundef nonnull align 8 dereferenceable(64) %i.ck, i64 64, i1 false)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard15PyClassGuardMutNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1W_.exit53

bb.w:                                             ; preds = %bb.u
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !67, !noundef !67
  store ptr %i.cl, ptr %i.cj, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard15PyClassGuardMutNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1W_.exit53

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard15PyClassGuardMutNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1W_.exit53: ; preds = %bb.w, %bb.v
  %.sink = phi i64 [ 1, %bb.v ], [ 0, %bb.w ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.r)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard15PyClassGuardMutNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1W_.exit54

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard15PyClassGuardMutNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1W_.exit54: ; preds = %bb.b, %bb.x, %bb.y, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard15PyClassGuardMutNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1W_.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.x:                                             ; preds = %bb.d
  %.sroa.024.0.copyload = load ptr, ptr %i.t, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.427.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.425.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.024.0.copyload, ptr %i.cm, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard15PyClassGuardMutNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1W_.exit54

bb.y:                                             ; preds = %bb.l, %bb.i
  store i64 1, ptr %0, align 8
  call void @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.r)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard15PyClassGuardMutNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1W_.exit54

bb.z:                                             ; preds = %bb.f
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard15PyClassGuardMutNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1W_.exit: ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body50
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsn_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraph26___pymethod_edge_subgraph__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 11 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [136 x i8], align 8               ; 15 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %.sroa.10 = alloca [56 x i8], align 8           ; 3 uses
  %i.f = alloca [136 x i8], align 8               ; 8 uses
  %.sroa.5.sroa.5 = alloca [56 x i8], align 8     ; 3 uses
  %.sroa.632 = alloca [64 x i8], align 8          ; 2 uses
  %i.g = alloca [72 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr null, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2253, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.j, i64 noundef 1)
  %i.k = load i64, ptr %i.i, align 8, !range !68, !noundef !67
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit30

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.p = invoke noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.o)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  invoke void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.q)
          to label %.thread86 unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.bh, %bb.d, %bb.c
  %.sroa.0.0 = phi ptr [ %1, %bb.bh ], [ %1, %bb.g ], [ null, %bb.d ], [ null, %bb.c ]
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %.thread.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.e
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %bb.e ], [ %1, %bb.q ], [ %1, %.thread.i ], [ %1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.e ], [ %.pn.i, %bb.q ], [ %.pn.pn.pn142.i, %.thread.i ], [ %.pn.pn.pn142.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ]
  %i.s = icmp eq ptr %.sroa.0.2, null
  br i1 %i.s, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 152
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit

.thread86:                                        ; preds = %bb.d
  %.sroa.017.0.copyload = load ptr, ptr %i.q, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.418.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.017.0.copyload, ptr %i.v, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit30

bb.g:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.x = load ptr, ptr %i.j, align 8, !nonnull !67, !noundef !67
  invoke fastcc void @_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtCs87CvPiUlf0m_5alloc3vec3VecAjj2_EKb1_ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.g, ptr noundef nonnull %i.x)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr %i.g, align 8, !range !68, !noundef !67
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.056.0.copyload = load i64, ptr %i.aa, align 8 ; 7 uses
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.457.0.copyload = load ptr, ptr %.sroa.457.0..sroa_idx, align 8 ; 12 uses
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.558.0.copyload = load i64, ptr %.sroa.558.0..sroa_idx, align 8 ; 4 uses
  br i1 %i.z, label %bb.bk, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !90781)
  %i.ab = icmp ult i64 %.sroa.558.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.ab)
  %.idx.i = shl nuw nsw i64 %.sroa.558.0.copyload, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.457.0.copyload, i64 %.idx.i
  %.not15.i.i.i.i.i = icmp eq i64 %.sroa.558.0.copyload, 0
  br i1 %.not15.i.i.i.i.i, label %_RINvNtNtCs87CvPiUlf0m_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterAjj2_ENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB2F_9PyDiGraph13edge_subgraph0EB2r_EB2H_.exit.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val7.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !90782, !noalias !90783
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !90781, !noalias !90784, !nonnull !67
  %.val8.i.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !90781, !noalias !90784, !nonnull !67
  %.val9.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !90781, !noalias !90784
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldAjj2_INtNtNtCs87CvPiUlf0m_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1a_zENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB2M_9PyDiGraph13edge_subgraph0NCINvNtB1f_16in_place_collect24write_in_place_with_dropB15_E0E0B2O_.exit.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i
  %i.ah = phi ptr [ %i.ai, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldAjj2_INtNtNtCs87CvPiUlf0m_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1a_zENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB2M_9PyDiGraph13edge_subgraph0NCINvNtB1f_16in_place_collect24write_in_place_with_dropB15_E0E0B2O_.exit.i.i.i.i.i ], [ %.sroa.457.0.copyload, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %.sroa.4.016.i.i.i.i.i = phi ptr [ %.pn6.i.i.i.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldAjj2_INtNtNtCs87CvPiUlf0m_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1a_zENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB2M_9PyDiGraph13edge_subgraph0NCINvNtB1f_16in_place_collect24write_in_place_with_dropB15_E0E0B2O_.exit.i.i.i.i.i ], [ %.sroa.457.0.copyload, %.lr.ph.i.i.preheader.i.i.i ] ; 6 uses
  %.sroa.013.0.copyload.i.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !90785 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.414.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i, align 8, !noalias !90785 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.aj = trunc i64 %.sroa.414.0.copyload.i.i.i.i.i to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !90786)
  %i.ak = and i64 %.sroa.013.0.copyload.i.i.i.i.i, 4294967295 ; 2 uses
  %i.al = icmp ugt i64 %.val7.i.i.i.i.i.i.i.i, %i.ak
  br i1 %i.al, label %bb.j, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldAjj2_INtNtNtCs87CvPiUlf0m_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1a_zENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB2M_9PyDiGraph13edge_subgraph0NCINvNtB1f_16in_place_collect24write_in_place_with_dropB15_E0E0B2O_.exit.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %i.ak ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !noalias !90787, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldAjj2_INtNtNtCs87CvPiUlf0m_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1a_zENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB2M_9PyDiGraph13edge_subgraph0NCINvNtB1f_16in_place_collect24write_in_place_with_dropB15_E0E0B2O_.exit.i.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.k
  %.pn.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.k ], [ %i.am, %bb.j ]
  %.sroa.02.0.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i.i.i, i64 8
  %.sroa.02.0.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.02.0.in.i.i.i.i.i.i.i.i.i, align 8, !noalias !90787, !noundef !67
  %i.ao = zext i32 %.sroa.02.0.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.ap = icmp ugt i64 %.val9.i.i.i.i.i.i.i.i, %i.ao
  br i1 %i.ap, label %bb.k, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldAjj2_INtNtNtCs87CvPiUlf0m_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1a_zENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB2M_9PyDiGraph13edge_subgraph0NCINvNtB1f_16in_place_collect24write_in_place_with_dropB15_E0E0B2O_.exit.i.i.i.i.i

bb.k:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.val8.i.i.i.i.i.i.i.i, i64 %i.ao ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %.val.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ar, align 4, !noalias !90788, !noundef !67
  %i.as = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i, %i.aj
  br i1 %i.as, label %bb.l, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  store i64 %.sroa.013.0.copyload.i.i.i.i.i, ptr %.sroa.4.016.i.i.i.i.i, align 8, !noalias !90785
  %.sroa.7.16..sroa.4.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i.i, i64 8
  store i64 %.sroa.414.0.copyload.i.i.i.i.i, ptr %.sroa.7.16..sroa.4.8..sroa_idx.i.i.i.i.i, align 8, !noalias !90785
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i.i, i64 16
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldAjj2_INtNtNtCs87CvPiUlf0m_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1a_zENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB2M_9PyDiGraph13edge_subgraph0NCINvNtB1f_16in_place_collect24write_in_place_with_dropB15_E0E0B2O_.exit.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldAjj2_INtNtNtCs87CvPiUlf0m_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1a_zENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB2M_9PyDiGraph13edge_subgraph0NCINvNtB1f_16in_place_collect24write_in_place_with_dropB15_E0E0B2O_.exit.i.i.i.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %bb.l, %bb.j, %.lr.ph.i.i.i.i.i
  %.pn6.i.i.i.i.i.i = phi ptr [ %i.at, %bb.l ], [ %.sroa.4.016.i.i.i.i.i, %bb.j ], [ %.sroa.4.016.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.4.016.i.i.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.ac
  br i1 %.not.i.i.i.i.i, label %_RINvNtNtCs87CvPiUlf0m_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterAjj2_ENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB2F_9PyDiGraph13edge_subgraph0EB2r_EB2H_.exit.i, label %.lr.ph.i.i.i.i.i

_RINvNtNtCs87CvPiUlf0m_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterAjj2_ENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB2F_9PyDiGraph13edge_subgraph0EB2r_EB2H_.exit.i: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldAjj2_INtNtNtCs87CvPiUlf0m_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1a_zENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB2M_9PyDiGraph13edge_subgraph0NCINvNtB1f_16in_place_collect24write_in_place_with_dropB15_E0E0B2O_.exit.i.i.i.i.i, %bb.i
  %.sroa.4.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.457.0.copyload, %bb.i ], [ %.pn6.i.i.i.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter15filter_try_foldAjj2_INtNtNtCs87CvPiUlf0m_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1a_zENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB2M_9PyDiGraph13edge_subgraph0NCINvNtB1f_16in_place_collect24write_in_place_with_dropB15_E0E0B2O_.exit.i.i.i.i.i ] ; 3 uses
  %i.au = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i to i64
  %i.av = ptrtoint ptr %.sroa.457.0.copyload to i64
  %i.aw = sub nuw i64 %i.au, %i.av                ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !90789
  %i.ay = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc.i unwind label %bb.o, !noalias !90790 ; 2 uses

.noexc.i:                                         ; preds = %_RINvNtNtCs87CvPiUlf0m_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterAjj2_ENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB2F_9PyDiGraph13edge_subgraph0EB2r_EB2H_.exit.i
  %i.az = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !90789
  %i.ba = icmp eq i8 %i.az, 2
  br i1 %i.ba, label %bb.n, label %bb.m, !prof !77

bb.m:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %bb.n unwind label %bb.o, !noalias !90790

.loopexit.split-lp.loopexit.i.i:                  ; preds = %.preheader, %.noexc6.i.i
  %lpad.loopexit16.i.i = landingpad { ptr, i32 }
          cleanup
  %.val.i.i27 = load ptr, ptr %i.b, align 8, !noalias !90789
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4.i.i = load i64, ptr %i.bb, align 8, !noalias !90789, !noundef !67
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx(ptr %.val.i.i27, i64 %.val4.i.i) #63, !noalias !90789
  br label %.thread.i

bb.n:                                             ; preds = %bb.m, %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !90789
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.ay, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !90789
  %i.bc = icmp eq ptr %.sroa.457.0.copyload, %.sroa.4.0.lcssa.i.i.i.i.i
  br i1 %i.bc, label %.loopexit168.i, label %.preheader

.preheader:                                       ; preds = %bb.n, %.noexc7.i.i
  %.sroa.01.0.i.i9.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bh, %.noexc7.i.i ], [ 0, %bb.n ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.457.0.copyload, i64 %.sroa.01.0.i.i9.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !90791, !noalias !90792, !noundef !67
  %i.be = trunc i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  invoke fastcc void @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.be) #64
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.loopexit.i.i

.noexc6.i.i:                                      ; preds = %.preheader
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.val8.i.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !90791, !noalias !90792, !noundef !67
  %i.bg = trunc i64 %.val8.i.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  invoke fastcc void @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %i.bg) #64
          to label %.noexc7.i.i unwind label %.loopexit.split-lp.loopexit.i.i

.noexc7.i.i:                                      ; preds = %.noexc6.i.i
  %i.bh = add nuw i64 %.sroa.01.0.i.i9.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %i.ax
  br i1 %i.bi, label %.loopexit168.loopexit.i, label %.preheader

bb.o:                                             ; preds = %bb.m, %_RINvNtNtCs87CvPiUlf0m_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterAjj2_ENCNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB2F_9PyDiGraph13edge_subgraph0EB2r_EB2H_.exit.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit168.loopexit.i:                          ; preds = %.noexc7.i.i
  %.sroa.0.0.copyload.pre.i = load ptr, ptr %i.b, align 8, !noalias !90793
  %.sroa.6.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload.pre.i = load i64, ptr %.sroa.6.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !90793
  %.sroa.9138.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.9138.0.copyload.pre.i = load i64, ptr %.sroa.9138.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !90793
  %.sroa.10.0.copyload.pre.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !90793
  %i.bk = freeze i64 %.sroa.9138.0.copyload.pre.i
  %i.bl = icmp eq i64 %i.bk, 0
  br label %.loopexit168.i

.loopexit168.i:                                   ; preds = %.loopexit168.loopexit.i, %bb.n
  %.sroa.10.0.copyload.i = phi i64 [ %.sroa.10.0.copyload.pre.i, %.loopexit168.loopexit.i ], [ %i.ay, %bb.n ]
  %.sroa.9138.0.copyload.i = phi i1 [ %i.bl, %.loopexit168.loopexit.i ], [ true, %bb.n ]
  %.sroa.6.0.copyload.i = phi i64 [ %.sroa.6.0.copyload.pre.i, %.loopexit168.loopexit.i ], [ 0, %bb.n ] ; 8 uses
  %.sroa.0.0.copyload.i = phi ptr [ %.sroa.0.0.copyload.pre.i, %.loopexit168.loopexit.i ], [ @111, %bb.n ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !90789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !90790
  %i.bm = icmp sgt i64 %i.aw, -1
  call void @llvm.assume(i1 %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !90790
  call void @llvm.experimental.noalias.scope.decl(metadata !90794)
  %i.bn = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc77.i unwind label %.thread259.i, !noalias !90790

.noexc77.i:                                       ; preds = %.loopexit168.i
  %i.bo = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !90795
  %i.bp = icmp eq i8 %i.bo, 2
  br i1 %i.bp, label %.noexc78.i, label %bb.p, !prof !77

bb.p:                                             ; preds = %.noexc77.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %.noexc78.i unwind label %.thread259.i, !noalias !90790

.noexc78.i:                                       ; preds = %bb.p, %.noexc77.i
  invoke fastcc void @_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.c, i64 noundef 8, i64 noundef %i.ax) #64
          to label %bb.r unwind label %.thread259.i

bb.q:                                             ; preds = %.loopexit.split-lp.i, %bb.v, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i, %bb.t
  %.pn.i = phi { ptr, i32 } [ %i.ca, %bb.v ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.bu, %bb.t ], [ %i.bu, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i ]
  %.val74.i = load ptr, ptr %i.e, align 8, !noalias !90790
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val75.i = load i64, ptr %i.bq, align 8, !noalias !90790, !noundef !67
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetANtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexj2_EECskcxRuJ53GpR_9rustworkx(ptr %.val74.i, i64 %.val75.i) #63, !noalias !90790
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx(ptr %.sroa.0.0.copyload.i, i64 %.sroa.6.0.copyload.i) #63, !noalias !90790
  br label %.body

.thread259.i:                                     ; preds = %.noexc78.i, %bb.p, %.loopexit168.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx(ptr %.sroa.0.0.copyload.i, i64 %.sroa.6.0.copyload.i) #63, !noalias !90790
  br label %.thread.i

bb.r:                                             ; preds = %.noexc78.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.bn, ptr %i.bs, align 8, !alias.scope !90796, !noalias !90790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !90790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !90790
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.sroa.5118.0.i = phi ptr [ %.sroa.457.0.copyload, %bb.r ], [ %i.bx, %bb.u ] ; 4 uses
  %i.bt = icmp eq ptr %.sroa.5118.0.i, %.sroa.4.0.lcssa.i.i.i.i.i
  br i1 %i.bt, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterAjj2_ENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.u

bb.t:                                             ; preds = %bb.u
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = icmp eq i64 %.sroa.056.0.copyload, 0
  br i1 %i.bv, label %bb.q, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i: ; preds = %bb.t
  %i.bw = shl nuw i64 %.sroa.056.0.copyload, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.457.0.copyload, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !90797
  br label %bb.q

bb.u:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.5118.0.i, i64 16
  %.sroa.5123.8.copyload.i = load i64, ptr %.sroa.5118.0.i, align 8, !noalias !90798
  %.sroa.7.8..sroa.5118.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5118.0.i, i64 8
  %.sroa.7.8.copyload.i = load i64, ptr %.sroa.7.8..sroa.5118.8..sroa_idx.i, align 8, !noalias !90798
  %.sroa.457.0.insert.ext.i = shl i64 %.sroa.7.8.copyload.i, 32
  %.sroa.056.0.insert.ext.i = and i64 %.sroa.5123.8.copyload.i, 4294967295
  %.sroa.056.0.insert.insert.i = or disjoint i64 %.sroa.457.0.insert.ext.i, %.sroa.056.0.insert.ext.i
  invoke fastcc void @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapANtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexj2_uE6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.056.0.insert.insert.i)
          to label %bb.s unwind label %bb.t

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterAjj2_ENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.s
  %i.by = icmp eq i64 %.sroa.056.0.copyload, 0
end_hunk_1
