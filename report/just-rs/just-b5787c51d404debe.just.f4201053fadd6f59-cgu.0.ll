Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0_@_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next:bb.a

bb.ac:                                            ; preds = %.lr.ph114
  %i.el = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ej
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !107377, !noalias !107380, !noundef !28
  %i.en = add i64 %i.ej, %i.d                     ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.f
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.en
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !107376, !noalias !107379, !noundef !28
  %.not21.i = icmp eq i8 %i.em, %i.eq
  br i1 %.not21.i, label %.preheader44, label %.sink.split.i

.split40.us:                                      ; preds = %.lr.ph114, %.lr.ph120
  %.us-phi41 = phi i64 [ %i.dg, %.lr.ph120 ], [ %i.ej, %.lr.ph114 ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi41, i64 noundef range(i64 0, -9223372036854775808) %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #74, !noalias !107381
  unreachable

bb.ad:                                            ; preds = %.lr.ph112
  %.reass.i = add i64 %invariant.op.i, %.sroa.04.0.i111
  br label %.sink.split.i

_RINvMsx_NtNtCsj6eKBz9Db1c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskXtk6F4WjxZ_4just.exit: ; preds = %.split38.us, %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.er, align 8, !alias.scope !107374, !noalias !107382
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cp, ptr %i.es, align 8, !alias.scope !107374, !noalias !107382
  br label %bb.s

.loopexit:                                        ; preds = %.lr.ph.i.split, %.sink.split.i, %bb.u, %.loopexit100, %bb.t
  %i.et = phi i64 [ %i.cs, %bb.u ], [ %i.f, %bb.t ], [ %i.f, %.loopexit100 ], [ %i.dr, %.lr.ph.i.split ], [ %i.f, %.sink.split.i ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ew = icmp eq i64 %i.et, 0
  br i1 %i.ew, label %.split13, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %bb.af
  %.sroa.02.042 = phi i64 [ %i.fb, %bb.af ], [ %i.et, %.loopexit ] ; 5 uses
  %.not16 = icmp ult i64 %.sroa.02.042, %i.f
  br i1 %.not16, label %bb.ae, label %.split28

.split13:                                         ; preds = %bb.af, %.loopexit, %.split
  %.sroa.02.030 = phi i64 [ %.sroa.02.042.lcssa, %.split ], [ 0, %.loopexit ], [ 0, %bb.af ]
  %phi.call = phi i64 [ %..i, %.split ], [ 0, %.loopexit ], [ %i.et, %bb.af ]
  store i64 %phi.call, ptr %i.c, align 8
  store i64 %i.d, ptr %i.eu, align 8
  store i64 %.sroa.02.030, ptr %i.ev, align 8
  br label %bb.s

.split28:                                         ; preds = %.lr.ph
  %i.ex = icmp eq i64 %.sroa.02.042, %i.f
  br i1 %i.ex, label %.split, label %bb.af

bb.ae:                                            ; preds = %.lr.ph
  %i.ey = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sroa.02.042
  %i.ez = load i8, ptr %i.ey, align 1, !noundef !28
  %i.fa = icmp sgt i8 %i.ez, -65
  br i1 %i.fa, label %.split, label %bb.af

.split:                                           ; preds = %.split28, %bb.ae
  %.sroa.02.042.lcssa = phi i64 [ %i.f, %.split28 ], [ %.sroa.02.042, %bb.ae ] ; 2 uses
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.et, i64 %.sroa.02.042.lcssa)
  br label %.split13

bb.af:                                            ; preds = %.split28, %bb.ae
  %i.fb = add i64 %.sroa.02.042, 1                ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %.split13, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_fmtCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !107389
  store ptr %0, ptr %i.b, align 8, !noalias !107389
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !noalias !107389
  %i.d = invoke noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @363, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #71
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !noalias !107389, !noundef !28 ; 5 uses
  %.not.i5 = icmp eq ptr %i.f, null               ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i5, label %bb.i, label %_RINvNtNtCsj6eKBz9Db1c_4core2io5write17default_write_fmtINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit, !prof !44

bb.e:                                             ; preds = %bb.c
  br i1 %.not.i5, label %_RINvNtNtCsj6eKBz9Db1c_4core2io5write17default_write_fmtINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !107390
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i
    i64 1, label %bb.h
  ], !prof !69

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.i = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  call void @llvm.assume(i1 %i.i)
  call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !107391, !noalias !107390
  store i8 3, ptr %i.a, align 8, !alias.scope !107391, !noalias !107390
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !107392
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !107390
  br label %_RINvNtNtCsj6eKBz9Db1c_4core2io5write17default_write_fmtINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit

bb.i:                                             ; preds = %bb.d
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @364, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @366) #70
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RINvNtNtCsj6eKBz9Db1c_4core2io5write17default_write_fmtINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.d, %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i
  %.sroa.0.0.i6 = phi ptr [ %i.f, %bb.d ], [ null, %bb.e ], [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !107389
  ret ptr %.sroa.0.0.i6
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal { ptr, i64 } @_RNvYINtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterReKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator3nthCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #46 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !107401, !noundef !28 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !107401, !noundef !28 ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c
  %.not.i.i = icmp ugt i64 %1, %i.d
  %i.e = add i64 %i.c, %1                         ; 5 uses
  %.sroa.0.0.i.i = select i1 %.not.i.i, i64 %i.b, i64 %i.e ; 3 uses
  store i64 %.sroa.0.0.i.i, ptr %0, align 8, !alias.scope !107401
  %.not = icmp ne i64 %i.e, %.sroa.0.0.i.i
  %.not.i.i2 = icmp eq i64 %i.b, %.sroa.0.0.i.i
  %or.cond = or i1 %.not, %.not.i.i2
  br i1 %or.cond, label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterReKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw nsw i64 %i.e, 1
  store i64 %i.f, ptr %0, align 8, !alias.scope !107402
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = icmp ult i64 %i.e, 2
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.e ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !107402, !nonnull !28, !noundef !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !107402, !noundef !28
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterReKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit

_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterReKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit: ; preds = %bb.b, %bb.a
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ %i.l, %bb.b ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.j, %bb.b ]
  %i.m = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.n = insertvalue { ptr, i64 } %i.m, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.n
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #47 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !107413, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !107413 ; 4 uses
  %2 = ptrtoaddr ptr %i.b to i64
  %i.c = ptrtoaddr ptr %.promoted.i.i.i to i64
  %i.d = sub i64 %2, %i.c
  %i.e = add i64 %1, -1
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e)
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %i.h = and i64 %i.g, 3                          ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 4, i64 %i.h
  %n.vec = sub i64 %i.g, %i.j                     ; 3 uses
  %i.k = getelementptr i8, ptr %.promoted.i.i.i, i64 %n.vec
  %i.l = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i.i.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !107411

middle.block:                                     ; preds = %vector.body
  %i.n = getelementptr i8, ptr %pointer.phi, i64 4
  store ptr %i.n, ptr %0, align 8, !alias.scope !107413
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.k, %middle.block ]
  %.sroa.01.0.i.i.i.ph = phi i64 [ %1, %bb.b ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.o = phi ptr [ %i.q, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.r, %bb.c ], [ %.sroa.01.0.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !alias.scope !107413
  %i.r = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %scalar.ph, !llvm.loop !107412

_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit: ; preds = %scalar.ph, %bb.c, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %scalar.ph ], [ 0, %bb.c ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #24 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre3 = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not.i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %.pre3 to i64
  %i.b = ptrtoaddr ptr %.pre to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = add i64 %2, -1
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.d)
  %i.f = add i64 %i.e, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.g = and i64 %i.f, 3                          ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 4, i64 %i.g
  %n.vec = sub i64 %i.f, %i.i                     ; 3 uses
  %i.j = getelementptr i8, ptr %.pre, i64 %n.vec
  %i.k = sub i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.pre, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !107414

middle.block:                                     ; preds = %vector.body
  %i.m = getelementptr i8, ptr %pointer.phi, i64 4
  store ptr %i.m, ptr %1, align 8, !alias.scope !107438
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.ph = phi ptr [ %.pre, %.preheader ], [ %i.j, %middle.block ]
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ %2, %.preheader ], [ %i.k, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %i.n = phi ptr [ %i.p, %bb.b ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.q, %bb.b ], [ %.sroa.01.0.i.i.i.i.ph, %scalar.ph.preheader ]
  %i.o = icmp eq ptr %i.n, %.pre3
  br i1 %i.o, label %_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  store ptr %i.p, ptr %1, align 8, !alias.scope !107438
  %i.q = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.loopexit, label %scalar.ph, !llvm.loop !107425

_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit: ; preds = %scalar.ph
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.s = phi ptr [ %.pre, %bb.a ], [ %i.p, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107442)
  %i.t = icmp eq ptr %i.s, %.pre3
  br i1 %i.t, label %bb.c, label %switch.lookup

switch.lookup:                                    ; preds = %.loopexit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.u, ptr %1, align 8, !alias.scope !107443, !noalias !107444
  %.val.i.i = load i8, ptr %i.s, align 1, !range !38, !noalias !107445, !noundef !28 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !107446, !noalias !107443
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107446, !noalias !107443
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107446, !noalias !107443
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107446, !noalias !107443
  %i.v = zext nneg i8 %.val.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_, i64 %i.v
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.w = zext nneg i8 %.val.i.i to i64
  %switch.gep10 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.5099, i64 %i.w
  %switch.load11 = load i8, ptr %switch.gep10, align 1
  %switch.ext = zext i8 %switch.load11 to i64
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %switch.load, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107446, !noalias !107443
  store i64 %switch.ext, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107446, !noalias !107443
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107446, !noalias !107443
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

bb.c:                                             ; preds = %.loopexit
  store i64 -1, ptr %0, align 8, !alias.scope !107444, !noalias !107443
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2v_15EnumValueParserB1A_ENtB2v_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit: ; preds = %bb.c, %switch.lookup, %_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #47 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !107457, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !107457 ; 4 uses
  %2 = ptrtoaddr ptr %i.b to i64
  %i.c = ptrtoaddr ptr %.promoted.i.i.i to i64
  %i.d = sub i64 %2, %i.c
  %i.e = add i64 %1, -1
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e)
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %i.h = and i64 %i.g, 3                          ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 4, i64 %i.h
  %n.vec = sub i64 %i.g, %i.j                     ; 3 uses
  %i.k = getelementptr i8, ptr %.promoted.i.i.i, i64 %n.vec
  %i.l = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i.i.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !107455

middle.block:                                     ; preds = %vector.body
  %i.n = getelementptr i8, ptr %pointer.phi, i64 4
  store ptr %i.n, ptr %0, align 8, !alias.scope !107457
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.k, %middle.block ]
  %.sroa.01.0.i.i.i.ph = phi i64 [ %1, %bb.b ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.o = phi ptr [ %i.q, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.r, %bb.c ], [ %.sroa.01.0.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !alias.scope !107457
  %i.r = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %scalar.ph, !llvm.loop !107456

_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3d_15EnumValueParserB2i_ENtB3d_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit: ; preds = %scalar.ph, %bb.c, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %scalar.ph ], [ 0, %bb.c ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #24 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre3 = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not.i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %.pre3 to i64
  %i.b = ptrtoaddr ptr %.pre to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = add i64 %2, -1
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.d)
  %i.f = add i64 %i.e, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.g = and i64 %i.f, 3                          ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 4, i64 %i.g
  %n.vec = sub i64 %i.f, %i.i                     ; 3 uses
  %i.j = getelementptr i8, ptr %.pre, i64 %n.vec
  %i.k = sub i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.pre, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !107458

middle.block:                                     ; preds = %vector.body
  %i.m = getelementptr i8, ptr %pointer.phi, i64 4
  store ptr %i.m, ptr %1, align 8, !alias.scope !107482
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.ph = phi ptr [ %.pre, %.preheader ], [ %i.j, %middle.block ]
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ %2, %.preheader ], [ %i.k, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %i.n = phi ptr [ %i.p, %bb.b ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.q, %bb.b ], [ %.sroa.01.0.i.i.i.i.ph, %scalar.ph.preheader ]
  %i.o = icmp eq ptr %i.n, %.pre3
  br i1 %i.o, label %_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  store ptr %i.p, ptr %1, align 8, !alias.scope !107482
  %i.q = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.loopexit, label %scalar.ph, !llvm.loop !107469

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.s = phi ptr [ %.pre, %bb.a ], [ %i.p, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107486)
  %i.t = icmp eq ptr %i.s, %.pre3
  br i1 %i.t, label %_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.u, ptr %1, align 8, !alias.scope !107487, !noalias !107488
  %.val.i.i = load i8, ptr %i.s, align 1, !range !40, !noalias !107489, !noundef !28
  %i.v = trunc nuw i8 %.val.i.i to i1
  %spec.select.i.i.i.i.i = select i1 %i.v, ptr @8, ptr @2536
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8, !alias.scope !107490, !noalias !107487
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.x, align 8, !alias.scope !107490, !noalias !107487
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.y, align 8, !alias.scope !107490, !noalias !107487
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %spec.select.i.i.i.i.i, ptr %i.z, align 8, !alias.scope !107490, !noalias !107487
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 4, ptr %i.aa, align 8, !alias.scope !107490, !noalias !107487
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ab, align 8, !alias.scope !107490, !noalias !107487
  br label %_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit

_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just11dump_format10DumpFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1u_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit: ; preds = %scalar.ph, %bb.c, %.loopexit
  %storemerge = phi i64 [ -1, %.loopexit ], [ 0, %bb.c ], [ -1, %scalar.ph ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #47 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !107501, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !107501 ; 4 uses
  %2 = ptrtoaddr ptr %i.b to i64
  %i.c = ptrtoaddr ptr %.promoted.i.i.i to i64
  %i.d = sub i64 %2, %i.c
  %i.e = add i64 %1, -1
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e)
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %i.h = and i64 %i.g, 3                          ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 4, i64 %i.h
  %n.vec = sub i64 %i.g, %i.j                     ; 3 uses
  %i.k = getelementptr i8, ptr %.promoted.i.i.i, i64 %n.vec
  %i.l = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i.i.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !107499

middle.block:                                     ; preds = %vector.body
  %i.n = getelementptr i8, ptr %pointer.phi, i64 4
  store ptr %i.n, ptr %0, align 8, !alias.scope !107501
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.k, %middle.block ]
  %.sroa.01.0.i.i.i.ph = phi i64 [ %1, %bb.b ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.o = phi ptr [ %i.q, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.r, %bb.c ], [ %.sroa.01.0.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !alias.scope !107501
  %i.r = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %scalar.ph, !llvm.loop !107500

_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3h_15EnumValueParserB2i_ENtB3h_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit: ; preds = %scalar.ph, %bb.c, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %scalar.ph ], [ 0, %bb.c ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #24 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre3 = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not.i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %.pre3 to i64
  %i.b = ptrtoaddr ptr %.pre to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = add i64 %2, -1
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.d)
  %i.f = add i64 %i.e, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.g = and i64 %i.f, 3                          ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 4, i64 %i.g
  %n.vec = sub i64 %i.f, %i.i                     ; 3 uses
  %i.j = getelementptr i8, ptr %.pre, i64 %n.vec
  %i.k = sub i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.pre, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !107502

middle.block:                                     ; preds = %vector.body
  %i.m = getelementptr i8, ptr %pointer.phi, i64 4
  store ptr %i.m, ptr %1, align 8, !alias.scope !107526
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.ph = phi ptr [ %.pre, %.preheader ], [ %i.j, %middle.block ]
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ %2, %.preheader ], [ %i.k, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %i.n = phi ptr [ %i.p, %bb.b ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.q, %bb.b ], [ %.sroa.01.0.i.i.i.i.ph, %scalar.ph.preheader ]
  %i.o = icmp eq ptr %i.n, %.pre3
  br i1 %i.o, label %_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  store ptr %i.p, ptr %1, align 8, !alias.scope !107526
  %i.q = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.loopexit, label %scalar.ph, !llvm.loop !107513

_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit: ; preds = %scalar.ph
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.s = phi ptr [ %.pre, %bb.a ], [ %i.p, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107530)
  %i.t = icmp eq ptr %i.s, %.pre3
  br i1 %i.t, label %bb.c, label %switch.lookup

switch.lookup:                                    ; preds = %.loopexit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.u, ptr %1, align 8, !alias.scope !107531, !noalias !107532
  %.val.i.i = load i8, ptr %i.s, align 1, !range !50, !noalias !107533, !noundef !28 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !107534, !noalias !107531
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107534, !noalias !107531
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107534, !noalias !107531
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107534, !noalias !107531
  %i.v = zext nneg i8 %.val.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_, i64 %i.v
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.w = zext nneg i8 %.val.i.i to i64
  %switch.gep10 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.5100, i64 %i.w
  %switch.load11 = load i8, ptr %switch.gep10, align 1
  %switch.ext = zext i8 %switch.load11 to i64
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %switch.load, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107534, !noalias !107531
  store i64 %switch.ext, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107534, !noalias !107531
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107534, !noalias !107531
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

bb.c:                                             ; preds = %.loopexit
  store i64 -1, ptr %0, align 8, !alias.scope !107532, !noalias !107531
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2z_15EnumValueParserB1A_ENtB2z_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit: ; preds = %bb.c, %switch.lookup, %_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just13command_color12CommandColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2t_15EnumValueParserB1u_ENtB2t_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #47 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3l_15EnumValueParserB2i_ENtB3l_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !107545, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !107545 ; 4 uses
  %2 = ptrtoaddr ptr %i.b to i64
  %i.c = ptrtoaddr ptr %.promoted.i.i.i to i64
  %i.d = sub i64 %2, %i.c
  %i.e = add i64 %1, -1
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e)
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %i.h = and i64 %i.g, 3                          ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 4, i64 %i.h
  %n.vec = sub i64 %i.g, %i.j                     ; 3 uses
  %i.k = getelementptr i8, ptr %.promoted.i.i.i, i64 %n.vec
  %i.l = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i.i.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !107543

middle.block:                                     ; preds = %vector.body
  %i.n = getelementptr i8, ptr %pointer.phi, i64 4
  store ptr %i.n, ptr %0, align 8, !alias.scope !107545
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.k, %middle.block ]
  %.sroa.01.0.i.i.i.ph = phi i64 [ %1, %bb.b ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.o = phi ptr [ %i.q, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.r, %bb.c ], [ %.sroa.01.0.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3l_15EnumValueParserB2i_ENtB3l_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !alias.scope !107545
  %i.r = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3l_15EnumValueParserB2i_ENtB3l_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %scalar.ph, !llvm.loop !107544

_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB3l_15EnumValueParserB2i_ENtB3l_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit: ; preds = %scalar.ph, %bb.c, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %scalar.ph ], [ 0, %bb.c ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #24 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre3 = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not.i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %.pre3 to i64
  %i.b = ptrtoaddr ptr %.pre to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = add i64 %2, -1
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.d)
  %i.f = add i64 %i.e, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.g = and i64 %i.f, 3                          ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 4, i64 %i.g
  %n.vec = sub i64 %i.f, %i.i                     ; 3 uses
  %i.j = getelementptr i8, ptr %.pre, i64 %n.vec
  %i.k = sub i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.pre, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !107546

middle.block:                                     ; preds = %vector.body
  %i.m = getelementptr i8, ptr %pointer.phi, i64 4
  store ptr %i.m, ptr %1, align 8, !alias.scope !107570
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.ph = phi ptr [ %.pre, %.preheader ], [ %i.j, %middle.block ]
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ %2, %.preheader ], [ %i.k, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %i.n = phi ptr [ %i.p, %bb.b ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.q, %bb.b ], [ %.sroa.01.0.i.i.i.i.ph, %scalar.ph.preheader ]
  %i.o = icmp eq ptr %i.n, %.pre3
  br i1 %i.o, label %_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  store ptr %i.p, ptr %1, align 8, !alias.scope !107570
  %i.q = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.loopexit, label %scalar.ph, !llvm.loop !107557

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.s = phi ptr [ %.pre, %bb.a ], [ %i.p, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107574)
  %i.t = icmp eq ptr %i.s, %.pre3
  br i1 %i.t, label %_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.u, ptr %1, align 8, !alias.scope !107575, !noalias !107576
  %.val.i.i = load i8, ptr %i.s, align 1, !range !40, !noalias !107577, !noundef !28
  %i.v = trunc nuw i8 %.val.i.i to i1             ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.v, ptr @464, ptr @8
  %spec.select2.i.i.i.i.i = select i1 %i.v, i64 5, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8, !alias.scope !107578, !noalias !107575
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.x, align 8, !alias.scope !107578, !noalias !107575
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.y, align 8, !alias.scope !107578, !noalias !107575
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %spec.select.i.i.i.i.i, ptr %i.z, align 8, !alias.scope !107578, !noalias !107575
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %spec.select2.i.i.i.i.i, ptr %i.aa, align 8, !alias.scope !107578, !noalias !107575
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ab, align 8, !alias.scope !107578, !noalias !107575
  br label %_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit

_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just15evaluate_format14EvaluateFormatENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit: ; preds = %scalar.ph, %bb.c, %.loopexit
  %storemerge = phi i64 [ -1, %.loopexit ], [ 0, %bb.c ], [ -1, %scalar.ph ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2c_15EnumValueParserB1u_ENtB2c_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107607)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB30_15EnumValueParserB2i_ENtB30_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107609)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !107610, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !107610 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.433.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.534.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.25.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = icmp eq ptr %.promoted.i.i.i, %i.c
  br i1 %i.h, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB30_15EnumValueParserB2i_ENtB30_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskXtk6F4WjxZ_4just5shell5ShellNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Z_ENCNvXso_NtB1S_12value_parserINtB44_15EnumValueParserB1f_ENtB44_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3W_ENtB5E_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i
  %i.i = icmp eq ptr %i.k, %i.c
  br i1 %i.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB30_15EnumValueParserB2i_ENtB30_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i.i2 = phi i64 [ %.sroa.0.0.i8.i.i.i, %bb.c ], [ %1, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.k, %bb.c ], [ %.promoted.i.i.i, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !alias.scope !107610
  %.val.i.i.i = load i8, ptr %i.j, align 1, !range !57, !alias.scope !107611, !noalias !107612, !noundef !28
  %i.l = icmp eq i8 %.val.i.i.i, 3
  br i1 %i.l, label %bb.e, label %_RNCNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters10filter_map9FilterMapINtNtNtBg_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2k_ENtB32_16TypedValueParser15possible_values0ENtB6_13SpecAdvanceBy15spec_advance_by0B2o_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #71, !noalias !107613
  resume { ptr, i32 } %i.m

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !107614
  store ptr @2543, ptr %i.d, align 8, !noalias !107614
  store i64 7, ptr %i.e, align 8, !noalias !107614
  store i64 -1, ptr %i.f, align 8, !noalias !107614
  store i64 0, ptr %i.a, align 8, !noalias !107614
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx.i.i.i.i.i, align 8, !noalias !107614
  store i64 0, ptr %.sroa.534.0..sroa_idx.i.i.i.i.i, align 8, !noalias !107614
  store i8 0, ptr %i.g, align 8, !noalias !107614
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107616)
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrE8grow_oneCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #73
          to label %_RNvXs5_NtCskXtk6F4WjxZ_4just5shellNtB5_5ShellNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.i.i unwind label %bb.d, !noalias !107613

_RNvXs5_NtCskXtk6F4WjxZ_4just5shellNtB5_5ShellNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.i.i: ; preds = %bb.e
  %i.n = load ptr, ptr %.sroa.433.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107617, !noalias !107618, !nonnull !28, !noundef !28 ; 3 uses
  store ptr @2544, ptr %i.n, align 8, !noalias !107619
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 2, ptr %i.o, align 8, !noalias !107620
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !107621 ; 3 uses
  %.sroa.20.0.copyload7.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !107621 ; 2 uses
  %.sroa.25.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.25.0..sroa_idx8.i.i.i.i, align 8, !noalias !107621 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !107614
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskXtk6F4WjxZ_4just5shell5ShellNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Z_ENCNvXso_NtB1S_12value_parserINtB44_15EnumValueParserB1f_ENtB44_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3W_ENtB5E_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs5_NtCskXtk6F4WjxZ_4just5shellNtB5_5ShellNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.i.i
  %i.p = icmp sgt i64 %.sroa.20.0.copyload7.i.i.i.i, 0
  br i1 %i.p, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.sroa.0.0.copyload.i.i.i.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.25.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.20.0.copyload7.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !107622
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.q = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, 0
  br i1 %i.q, label %_RNCNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters10filter_map9FilterMapINtNtNtBg_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2k_ENtB32_16TypedValueParser15possible_values0ENtB6_13SpecAdvanceBy15spec_advance_by0B2o_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.r = shl nuw i64 %.sroa.0.0.copyload1.i.i.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !107623
  br label %_RNCNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters10filter_map9FilterMapINtNtNtBg_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2k_ENtB32_16TypedValueParser15possible_values0ENtB6_13SpecAdvanceBy15spec_advance_by0B2o_.exit.i.i.i.i

_RNCNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters10filter_map9FilterMapINtNtNtBg_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2k_ENtB32_16TypedValueParser15possible_values0ENtB6_13SpecAdvanceBy15spec_advance_by0B2o_.exit.i.i.i.i: ; preds = %bb.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %.lr.ph
  %i.s = add i64 %.sroa.01.0.i.i.i2, -1
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskXtk6F4WjxZ_4just5shell5ShellNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Z_ENCNvXso_NtB1S_12value_parserINtB44_15EnumValueParserB1f_ENtB44_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3W_ENtB5E_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskXtk6F4WjxZ_4just5shell5ShellNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Z_ENCNvXso_NtB1S_12value_parserINtB44_15EnumValueParserB1f_ENtB44_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3W_ENtB5E_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i: ; preds = %_RNCNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters10filter_map9FilterMapINtNtNtBg_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2k_ENtB32_16TypedValueParser15possible_values0ENtB6_13SpecAdvanceBy15spec_advance_by0B2o_.exit.i.i.i.i, %_RNvXs5_NtCskXtk6F4WjxZ_4just5shellNtB5_5ShellNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.i.i
  %.sroa.0.0.i8.i.i.i = phi i64 [ %i.s, %_RNCNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters10filter_map9FilterMapINtNtNtBg_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2k_ENtB32_16TypedValueParser15possible_values0ENtB6_13SpecAdvanceBy15spec_advance_by0B2o_.exit.i.i.i.i ], [ %.sroa.01.0.i.i.i2, %_RNvXs5_NtCskXtk6F4WjxZ_4just5shellNtB5_5ShellNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.i.i ] ; 3 uses
  %i.t = icmp eq i64 %.sroa.0.0.i8.i.i.i, 0
  br i1 %i.t, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB30_15EnumValueParserB2i_ENtB30_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB30_15EnumValueParserB2i_ENtB30_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskXtk6F4WjxZ_4just5shell5ShellNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Z_ENCNvXso_NtB1S_12value_parserINtB44_15EnumValueParserB1f_ENtB44_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3W_ENtB5E_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i, %bb.c, %bb.b, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ %.sroa.0.0.i8.i.i.i, %bb.c ], [ 0, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskXtk6F4WjxZ_4just5shell5ShellNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Z_ENCNvXso_NtB1S_12value_parserINtB44_15EnumValueParserB1f_ENtB44_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3W_ENtB5E_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2c_15EnumValueParserB1u_ENtB2c_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107661)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !107662, !noalias !107663
  %.promoted.i.i.pre = load ptr, ptr %1, align 8, !alias.scope !107662, !noalias !107663
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107665)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !107666, !nonnull !28, !noundef !28 ; 3 uses
  %.promoted.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !107666 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.433.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.534.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.25.0..sroa_idx8.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = icmp eq ptr %.promoted.i.i.i.i, %i.c
  br i1 %i.h, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1A_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskXtk6F4WjxZ_4just5shell5ShellNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Z_ENCNvXso_NtB1S_12value_parserINtB44_15EnumValueParserB1f_ENtB44_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3W_ENtB5E_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i
  %i.i = icmp eq ptr %i.k, %i.c
  br i1 %i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1A_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i.i.i11 = phi i64 [ %.sroa.0.0.i8.i.i.i.i, %bb.c ], [ %2, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.k, %bb.c ], [ %.promoted.i.i.i.i, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 4 uses
  store ptr %i.k, ptr %1, align 8, !alias.scope !107666
  %.val.i.i.i.i = load i8, ptr %i.j, align 1, !range !57, !alias.scope !107667, !noalias !107668, !noundef !28
  %i.l = icmp eq i8 %.val.i.i.i.i, 3
  br i1 %i.l, label %bb.e, label %_RNCNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters10filter_map9FilterMapINtNtNtBg_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2k_ENtB32_16TypedValueParser15possible_values0ENtB6_13SpecAdvanceBy15spec_advance_by0B2o_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #71, !noalias !107669
  resume { ptr, i32 } %i.m

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !107670
  store ptr @2543, ptr %i.d, align 8, !noalias !107670
  store i64 7, ptr %i.e, align 8, !noalias !107670
  store i64 -1, ptr %i.f, align 8, !noalias !107670
  store i64 0, ptr %i.a, align 8, !noalias !107670
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !107670
  store i64 0, ptr %.sroa.534.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !107670
  store i8 0, ptr %i.g, align 8, !noalias !107670
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107672)
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrE8grow_oneCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #73
          to label %_RNvXs5_NtCskXtk6F4WjxZ_4just5shellNtB5_5ShellNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.i.i.i unwind label %bb.d, !noalias !107669

_RNvXs5_NtCskXtk6F4WjxZ_4just5shellNtB5_5ShellNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.i.i.i: ; preds = %bb.e
  %i.n = load ptr, ptr %.sroa.433.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !107673, !noalias !107674, !nonnull !28, !noundef !28 ; 3 uses
  store ptr @2544, ptr %i.n, align 8, !noalias !107675
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 2, ptr %i.o, align 8, !noalias !107676
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !107677 ; 3 uses
  %.sroa.20.0.copyload7.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !107677 ; 2 uses
  %.sroa.25.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.25.0..sroa_idx8.i.i.i.i.i, align 8, !noalias !107677 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !107670
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskXtk6F4WjxZ_4just5shell5ShellNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Z_ENCNvXso_NtB1S_12value_parserINtB44_15EnumValueParserB1f_ENtB44_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3W_ENtB5E_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs5_NtCskXtk6F4WjxZ_4just5shellNtB5_5ShellNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.i.i.i
  %i.p = icmp sgt i64 %.sroa.20.0.copyload7.i.i.i.i.i, 0
  br i1 %i.p, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.sroa.0.0.copyload.i.i.i.i.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.25.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %.sroa.20.0.copyload7.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !107678
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.q = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, 0
  br i1 %i.q, label %_RNCNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters10filter_map9FilterMapINtNtNtBg_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2k_ENtB32_16TypedValueParser15possible_values0ENtB6_13SpecAdvanceBy15spec_advance_by0B2o_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %i.r = shl nuw i64 %.sroa.0.0.copyload1.i.i.i.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !107679
  br label %_RNCNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters10filter_map9FilterMapINtNtNtBg_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2k_ENtB32_16TypedValueParser15possible_values0ENtB6_13SpecAdvanceBy15spec_advance_by0B2o_.exit.i.i.i.i.i

_RNCNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters10filter_map9FilterMapINtNtNtBg_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2k_ENtB32_16TypedValueParser15possible_values0ENtB6_13SpecAdvanceBy15spec_advance_by0B2o_.exit.i.i.i.i.i: ; preds = %bb.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, %.lr.ph
  %i.s = add i64 %.sroa.01.0.i.i.i.i11, -1
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskXtk6F4WjxZ_4just5shell5ShellNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Z_ENCNvXso_NtB1S_12value_parserINtB44_15EnumValueParserB1f_ENtB44_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3W_ENtB5E_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskXtk6F4WjxZ_4just5shell5ShellNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Z_ENCNvXso_NtB1S_12value_parserINtB44_15EnumValueParserB1f_ENtB44_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3W_ENtB5E_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i: ; preds = %_RNCNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters10filter_map9FilterMapINtNtNtBg_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2k_ENtB32_16TypedValueParser15possible_values0ENtB6_13SpecAdvanceBy15spec_advance_by0B2o_.exit.i.i.i.i.i, %_RNvXs5_NtCskXtk6F4WjxZ_4just5shellNtB5_5ShellNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.i.i.i
  %.sroa.0.0.i8.i.i.i.i = phi i64 [ %i.s, %_RNCNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_8adapters10filter_map9FilterMapINtNtNtBg_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB32_15EnumValueParserB2k_ENtB32_16TypedValueParser15possible_values0ENtB6_13SpecAdvanceBy15spec_advance_by0B2o_.exit.i.i.i.i.i ], [ %.sroa.01.0.i.i.i.i11, %_RNvXs5_NtCskXtk6F4WjxZ_4just5shellNtB5_5ShellNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.i.i.i ] ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.i8.i.i.i.i, 0
  br i1 %i.t, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskXtk6F4WjxZ_4just5shell5ShellNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Z_ENCNvXso_NtB1S_12value_parserINtB44_15EnumValueParserB1f_ENtB44_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3W_ENtB5E_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i, %..loopexit_crit_edge
  %.promoted.i.i = phi ptr [ %.promoted.i.i.pre, %..loopexit_crit_edge ], [ %i.k, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskXtk6F4WjxZ_4just5shell5ShellNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Z_ENCNvXso_NtB1S_12value_parserINtB44_15EnumValueParserB1f_ENtB44_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3W_ENtB5E_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i ] ; 2 uses
  %i.u = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.c, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskXtk6F4WjxZ_4just5shell5ShellNtNtNtCs2FJGJNE9lTN_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2Z_ENCNvXso_NtB1S_12value_parserINtB44_15EnumValueParserB1f_ENtB44_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB3W_ENtB5E_13SpecAdvanceBy15spec_advance_by0E0B1j_.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107683)
  %i.v = icmp eq ptr %.promoted.i.i, %i.u
  br i1 %i.v, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1A_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split, label %.lr.ph12

bb.i:                                             ; preds = %.lr.ph12
  %i.w = icmp eq ptr %i.y, %i.u
  br i1 %i.w, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1A_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split, label %.lr.ph12

.lr.ph12:                                         ; preds = %.loopexit, %bb.i
  %i.x = phi ptr [ %i.y, %bb.i ], [ %.promoted.i.i, %.loopexit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 3 uses
  store ptr %i.y, ptr %1, align 8, !alias.scope !107662, !noalias !107663
  tail call void @_RNvXs5_NtCskXtk6F4WjxZ_4just5shellNtB5_5ShellNtNtCs2FJGJNE9lTN_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.x), !noalias !107662
  %i.z = load i64, ptr %0, align 8, !range !37, !alias.scope !107663, !noalias !107662, !noundef !28
  %.not.i.i1 = icmp eq i64 %i.z, -1
  br i1 %.not.i.i1, label %bb.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1A_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1A_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split: ; preds = %bb.c, %bb.i, %bb.b, %.loopexit
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1A_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1A_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit: ; preds = %.lr.ph12, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just5shell5ShellENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2i_15EnumValueParserB1A_ENtB2i_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.sink.split
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #47 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB37_15EnumValueParserB2i_ENtB37_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !107694, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !107694 ; 4 uses
  %2 = ptrtoaddr ptr %i.b to i64
  %i.c = ptrtoaddr ptr %.promoted.i.i.i to i64
  %i.d = sub i64 %2, %i.c
  %i.e = add i64 %1, -1
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e)
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %i.h = and i64 %i.g, 3                          ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 4, i64 %i.h
  %n.vec = sub i64 %i.g, %i.j                     ; 3 uses
  %i.k = getelementptr i8, ptr %.promoted.i.i.i, i64 %n.vec
  %i.l = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i.i.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !107692

middle.block:                                     ; preds = %vector.body
  %i.n = getelementptr i8, ptr %pointer.phi, i64 4
  store ptr %i.n, ptr %0, align 8, !alias.scope !107694
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.k, %middle.block ]
  %.sroa.01.0.i.i.i.ph = phi i64 [ %1, %bb.b ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.o = phi ptr [ %i.q, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.r, %bb.c ], [ %.sroa.01.0.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB37_15EnumValueParserB2i_ENtB37_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !alias.scope !107694
  %i.r = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB37_15EnumValueParserB2i_ENtB37_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit, label %scalar.ph, !llvm.loop !107693

_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB37_15EnumValueParserB2i_ENtB37_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_.exit: ; preds = %scalar.ph, %bb.c, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %scalar.ph ], [ 0, %bb.c ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #24 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre3 = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not.i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %.pre3 to i64
  %i.b = ptrtoaddr ptr %.pre to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = add i64 %2, -1
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.d)
  %i.f = add i64 %i.e, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.g = and i64 %i.f, 3                          ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 4, i64 %i.g
  %n.vec = sub i64 %i.f, %i.i                     ; 3 uses
  %i.j = getelementptr i8, ptr %.pre, i64 %n.vec
  %i.k = sub i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.pre, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !107695

middle.block:                                     ; preds = %vector.body
  %i.m = getelementptr i8, ptr %pointer.phi, i64 4
  store ptr %i.m, ptr %1, align 8, !alias.scope !107719
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.ph = phi ptr [ %.pre, %.preheader ], [ %i.j, %middle.block ]
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ %2, %.preheader ], [ %i.k, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %i.n = phi ptr [ %i.p, %bb.b ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.q, %bb.b ], [ %.sroa.01.0.i.i.i.i.ph, %scalar.ph.preheader ]
  %i.o = icmp eq ptr %i.n, %.pre3
  br i1 %i.o, label %_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  store ptr %i.p, ptr %1, align 8, !alias.scope !107719
  %i.q = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.loopexit, label %scalar.ph, !llvm.loop !107706

_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit: ; preds = %scalar.ph
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.s = phi ptr [ %.pre, %bb.a ], [ %i.p, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107723)
  %i.t = icmp eq ptr %i.s, %.pre3
  br i1 %i.t, label %bb.c, label %switch.lookup

switch.lookup:                                    ; preds = %.loopexit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.u, ptr %1, align 8, !alias.scope !107724, !noalias !107725
  %.val.i.i = load i8, ptr %i.s, align 1, !range !38, !noalias !107726, !noundef !28 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !107727, !noalias !107724
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107727, !noalias !107724
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107727, !noalias !107724
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107727, !noalias !107724
  %i.v = zext nneg i8 %.val.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_, i64 %i.v
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.w = zext nneg i8 %.val.i.i to i64
  %switch.gep10 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1y_.5101, i64 %i.w
  %switch.load11 = load i8, ptr %switch.gep10, align 1
  %switch.ext = zext i8 %switch.load11 to i64
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %switch.load, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107727, !noalias !107724
  store i64 %switch.ext, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107727, !noalias !107724
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !107727, !noalias !107724
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

bb.c:                                             ; preds = %.loopexit
  store i64 -1, ptr %0, align 8, !alias.scope !107725, !noalias !107724
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit: ; preds = %bb.c, %switch.lookup, %_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9use_color8UseColorENCNvXso_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1y_.exit
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENvMB1i_B1g_6as_strENtNtNtB9_6traits8iterator8Iterator10advance_byCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #47 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENvMB26_B24_6as_strENtB4_13SpecAdvanceBy15spec_advance_byCskXtk6F4WjxZ_4just.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !107738, !nonnull !28, !noundef !28 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !107738 ; 5 uses
  %.promoted.i.i.i3 = ptrtoaddr ptr %.promoted.i.i.i to i64 ; 2 uses
  %i.d = mul i64 %i.c, 768614336404564651
  %.neg = mul i64 %.promoted.i.i.i3, -768614336404564651
  %i.e = add i64 %.neg, %i.d
  %i.f = lshr i64 %i.e, 3
  %i.g = add i64 %1, -1
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.g) ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.h, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.b
  %i.j = sub i64 %i.c, %.promoted.i.i.i3
  %i.k = and i64 %i.j, 7
  %ident.check.not = icmp eq i64 %i.k, 0
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.l = and i64 %i.i, 3                          ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 4, i64 %i.l
  %n.vec = sub nsw i64 %i.i, %i.n                 ; 3 uses
  %i.o = mul i64 %n.vec, 24
  %i.p = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.o
  %i.q = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i.i.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
end_hunk_0
