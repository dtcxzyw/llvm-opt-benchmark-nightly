Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups11new_located:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12621)
  %.sroa.0.07.i.i = and i64 %.val2.i, %i.z        ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.bd, align 1, !noalias !12626
  %i.be = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.bf, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i14, label %._crit_edge.i.i12, !prof !1245

._crit_edge.i.i12:                                ; preds = %.lr.ph.i.i14, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.k ], [ %.sroa.0.0.i.i, %.lr.ph.i.i14 ]
  %.lcssa.i.i = phi i16 [ %i.bf, %bb.k ], [ %i.bw, %.lr.ph.i.i14 ]
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = add i64 %.sroa.0.0.lcssa.i.i, %i.bh
  %i.bj = and i64 %i.bi, %.val2.i                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !12629, !noundef !21 ; 2 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.l, label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupEE14insert_no_growB21_.exit, !prof !24

bb.l:                                             ; preds = %._crit_edge.i.i12
  %.val2.i.i.i13 = load <16 x i8>, ptr %.val.i, align 16, !noalias !12629
  %i.bn = icmp slt <16 x i8> %.val2.i.i.i13, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.bo, 0
  %i.bp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bo, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !12629
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupEE14insert_no_growB21_.exit

.lr.ph.i.i14:                                     ; preds = %bb.k, %.lr.ph.i.i14
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i, %.lr.ph.i.i14 ], [ %.sroa.0.07.i.i, %bb.k ]
  %i.br = phi i64 [ %i.bs, %.lr.ph.i.i14 ], [ 0, %bb.k ]
  %i.bs = add i64 %i.br, 16                       ; 2 uses
  %i.bt = add i64 %i.bs, %.sroa.0.010.i.i
  %.sroa.0.0.i.i = and i64 %i.bt, %.val2.i        ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.i.i
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.bu, align 1, !noalias !12626
  %i.bv = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.bw, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i14, label %._crit_edge.i.i12, !prof !1247

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupEE14insert_no_growB21_.exit: ; preds = %._crit_edge.i.i12, %bb.l
  %i.bx = phi i8 [ %.pre.i, %bb.l ], [ %i.bl, %._crit_edge.i.i12 ]
  %.sroa.0.0.i5.i.i = phi i64 [ %i.bq, %bb.l ], [ %i.bj, %._crit_edge.i.i12 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.i5.i.i
  %i.bz = add i64 %.sroa.0.0.i5.i.i, -16
  %i.ca = and i64 %i.bz, %.val2.i
  store i8 %i.ab, ptr %i.by, align 1, !noalias !12629
  %i.cb = getelementptr i8, ptr %.val.i, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  store i8 %i.ab, ptr %i.cc, align 1, !noalias !12629
  %i.cd = sub nsw i64 0, %.sroa.0.0.i5.i.i
  %i.ce = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.cd ; 4 uses
  %i.cf = and i8 %i.bx, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 -32
  store i64 %i.t, ptr %i.ch, align 16, !noalias !12621
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.ce, i64 -24
  store i64 %i.w, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !12621
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.ce, i64 -16
  store i32 %i.m, ptr %.sroa.5.0..sroa_idx, align 16, !noalias !12621
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.ce, i64 -12
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 4, !noalias !12621
  %i.ci = load <2 x i64>, ptr %i.az, align 8, !alias.scope !12621, !noalias !12624
  %i.cj = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.cg, i64 0
  %i.ck = sub <2 x i64> %i.ci, %i.cj
  store <2 x i64> %i.ck, ptr %i.az, align 8, !alias.scope !12621, !noalias !12624
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.cl = getelementptr inbounds i8, ptr %i.ap, i64 -12
  store i8 1, ptr %i.cl, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupEE14insert_no_growB21_.exit
  ret i32 %i.m
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups11new_virtual(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, i64 noundef range(i64 1, 0) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i8 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !21 ; 5 uses
  %i.h = icmp ult i64 %i.g, 115292150460684698
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12630)
  %i.i = load i64, ptr %0, align 8, !range !98, !alias.scope !12630, !noalias !12633, !noundef !21
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit unwind label %bb.c, !noalias !12633

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.a) #44
          to label %bb.e unwind label %bb.d, !noalias !12630

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !12630
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit: ; preds = %bb.a, %bb.b
  %i.m = trunc i64 %i.g to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !12630, !noalias !12633, !nonnull !21, !noundef !21
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !12630
  %i.q = add nuw nsw i64 %i.g, 1
  store i64 %i.q, ptr %i.f, align 8, !alias.scope !12630, !noalias !12633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.m
}

; Function Attrs: nonlazybind uwtable
define i56 @_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, i56 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !21 ; 2 uses
  %i.d = icmp ugt i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !21, !noundef !21
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %i.a ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i8, ptr %i.h, align 8, !range !6627, !alias.scope !12635, !noundef !21
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %_RNvMs6_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_9GroupKind8lang_mut.exit
    i8 2, label %_RNvMs6_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_9GroupKind8lang_mut.exit
    i8 3, label %_RNvMs6_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_9GroupKind8lang_mut.exit
    i8 4, label %bb.e
    i8 5, label %bb.e
    i8 6, label %bb.e
    i8 7, label %bb.e
    i8 8, label %bb.e
    i8 9, label %bb.e
    i8 10, label %bb.c
    i8 11, label %bb.e
    i8 12, label %bb.e
    i8 13, label %bb.e
    i8 14, label %bb.e
    i8 15, label %bb.e
    i8 16, label %_RNvMs6_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_9GroupKind8lang_mut.exit
    i8 17, label %bb.e
    i8 18, label %bb.e
    i8 19, label %bb.e
    i8 20, label %bb.e
    i8 21, label %bb.e
    i8 22, label %bb.e
    i8 23, label %bb.e
    i8 24, label %bb.e
    i8 25, label %_RNvMs6_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_9GroupKind8lang_mut.exit
    i8 26, label %_RNvMs6_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_9GroupKind8lang_mut.exit
    i8 27, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #42
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.c
  %.sink = phi i64 [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 26, %bb.c ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink ; 7 uses
  %.sroa.0.0.extract.trunc.i = trunc i56 %2 to i8 ; 3 uses
  %.sroa.617.0.extract.shift.i = lshr i56 %2, 8
  %.sroa.617.0.extract.trunc.i = trunc i56 %.sroa.617.0.extract.shift.i to i16 ; 2 uses
  %.sroa.8.0.extract.shift.i = lshr i56 %2, 24
  %.sroa.8.0.extract.trunc.i = trunc i56 %.sroa.8.0.extract.shift.i to i24 ; 2 uses
  %.sroa.9.0.extract.shift.i = lshr i56 %2, 48
  %.sroa.9.0.extract.trunc.i = trunc nuw i56 %.sroa.9.0.extract.shift.i to i8 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.0.0.extract.trunc.i, 2
  br i1 %.not.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.01.0.copyload.i.i.i = load i8, ptr %i.j, align 1, !alias.scope !12638, !noalias !12645 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %.sroa.5.sroa.0.0.copyload.i.i.i = load i16, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !alias.scope !12638, !noalias !12645
  %.not.i.i.i = icmp eq i8 %.sroa.01.0.copyload.i.i.i, 2
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i, label %.cont.i

.cont.i:                                          ; preds = %bb.f
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %.sroa.5.sroa.4.sroa.0.0.copyload.i.i.i = load i24, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 1, !alias.scope !12638, !noalias !12645
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %.sroa.5.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 1, !alias.scope !12638, !noalias !12645
  %i.k = icmp eq i8 %.sroa.5.sroa.5.0.copyload.i.i.i, %.sroa.9.0.extract.trunc.i
  %i.l = icmp eq i24 %.sroa.5.sroa.4.sroa.0.0.copyload.i.i.i, %.sroa.8.0.extract.trunc.i
  %or.cond.i.i.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond.i.i.i, label %.cont22.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit

.cont22.i:                                        ; preds = %.cont.i
  %i.m = trunc nuw i8 %.sroa.01.0.copyload.i.i.i to i1
  %i.n = trunc i56 %2 to i1                       ; 2 uses
  br i1 %i.m, label %3, label %bb.g

3:                                                ; preds = %.cont22.i
  br i1 %i.n, label %.split.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit

bb.g:                                             ; preds = %.cont22.i
  br i1 %i.n, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i

.split.i:                                         ; preds = %3
  %4 = icmp eq i16 %.sroa.5.sroa.0.0.copyload.i.i.i, %.sroa.617.0.extract.trunc.i
  br i1 %4, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i: ; preds = %.split.i, %bb.g, %bb.f
  store i8 %.sroa.0.0.extract.trunc.i, ptr %i.j, align 1, !alias.scope !12648
  store i16 %.sroa.617.0.extract.trunc.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !alias.scope !12648
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i24 %.sroa.8.0.extract.trunc.i, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !12648
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  store i8 %.sroa.9.0.extract.trunc.i, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !12648
  br label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit

_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit: ; preds = %bb.e, %.cont.i, %3, %bb.g, %.split.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i
  %.sroa.0.1.i = phi i8 [ 2, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i ], [ 1, %bb.g ], [ 1, %.split.i ], [ 2, %bb.e ], [ %.sroa.0.0.extract.trunc.i, %.cont.i ], [ 0, %3 ]
  %.sroa.617.0.insert.insert.i = and i56 %2, -256
  %.sroa.0.0.insert.ext.i = zext i8 %.sroa.0.1.i to i56
  %.sroa.0.0.insert.insert.i = or disjoint i56 %.sroa.617.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  br label %_RNvMs6_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_9GroupKind8lang_mut.exit

_RNvMs6_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_9GroupKind8lang_mut.exit: ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit
  %.sroa.03.0 = phi i56 [ %.sroa.0.0.insert.insert.i, %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit ], [ %2, %bb.b ], [ %2, %bb.b ], [ %2, %bb.b ], [ %2, %bb.b ], [ %2, %bb.b ], [ %2, %bb.b ]
  ret i56 %.sroa.03.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define { i32, i8 } @_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups6by_loc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(16) %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i128, ptr %1, align 16             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12649)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !12649, !noundef !21
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = trunc i128 %.val to i64
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = lshr i128 %.val, 64
  %i.h = trunc nuw i128 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411       ; 2 uses
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12655)
  %i.l = lshr i64 %i.k, 57
  %i.m = trunc nuw nsw i64 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !12658, !noalias !12659, !noundef !21 ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !alias.scope !12658, !noalias !12659, !nonnull !21, !noundef !21 ; 2 uses
  %i.q = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ai, %bb.e ]
  %.pn.i.i = phi i64 [ %i.k, %bb.b ], [ %i.aj, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.o      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.s, align 1, !noalias !12662 ; 2 uses
  %i.t = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.r
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i = phi i16 [ %i.ah, %bb.d ], [ %i.u, %bb.c ] ; 3 uses
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = add i64 %.sroa.01.0.i.i.i, %i.w
  %i.y = and i64 %i.x, %i.o
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [32 x i8], ptr %i.p, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -32
  %.val2.i.i.i = load i128, ptr %i.ab, align 16, !noalias !12665, !noundef !21
  %i.ac = icmp eq i128 %.val, %.val2.i.i.i
  br i1 %i.ac, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit, label %bb.d, !prof !85

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.e, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit.thread, !prof !24

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ag = add i16 %.sroa.06.0.i31.i.i, -1
  %i.ah = and i16 %i.ag, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ai = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.aj = add i64 %.sroa.01.0.i.i.i, %i.ai
  br label %bb.c

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit: ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.aa, i64 -16
  %i.al = load i32, ptr %i.ak, align 4, !noundef !21
  %i.am = getelementptr inbounds i8, ptr %i.aa, i64 -12
  %i.an = load i8, ptr %i.am, align 4, !range !22, !noundef !21
  br label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit.thread

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit
  %.sroa.3.0 = phi i8 [ %i.an, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit ], [ 2, %bb.a ], [ 2, %._crit_edge.i.i ]
  %.sroa.0.0 = phi i32 [ %i.al, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit ], [ undef, %bb.a ], [ undef, %._crit_edge.i.i ]
  %i.ao = insertvalue { i32, i8 } poison, i32 %.sroa.0.0, 0
  %i.ap = insertvalue { i32, i8 } %i.ao, i8 %.sroa.3.0, 1
  ret { i32, i8 } %i.ap
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups8new_weak(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, i64 noundef range(i64 1, 0) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i8 1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !21 ; 5 uses
  %i.h = icmp ult i64 %i.g, 115292150460684698
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12668)
  %i.i = load i64, ptr %0, align 8, !range !98, !alias.scope !12668, !noalias !12671, !noundef !21
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit unwind label %bb.c, !noalias !12671

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.a) #44
          to label %bb.e unwind label %bb.d, !noalias !12668

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !12668
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit: ; preds = %bb.a, %bb.b
  %i.m = trunc i64 %i.g to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !12668, !noalias !12671, !nonnull !21, !noundef !21
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !12668
  %i.q = add nuw nsw i64 %i.g, 1
  store i64 %i.q, ptr %i.f, align 8, !alias.scope !12668, !noalias !12671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.m
}

; Function Attrs: nonlazybind uwtable
define { i8, i8 } @_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups9breakable(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !6627, !noundef !21
  switch i8 %i.a, label %default.unreachable2 [
    i8 0, label %bb.g
    i8 1, label %bb.i
    i8 2, label %bb.g
    i8 3, label %bb.g
    i8 4, label %bb.g
    i8 5, label %bb.g
    i8 6, label %bb.g
    i8 7, label %bb.g
    i8 8, label %bb.g
    i8 9, label %bb.g
    i8 10, label %bb.g
    i8 11, label %bb.g
    i8 12, label %bb.g
    i8 13, label %bb.g
    i8 14, label %bb.g
    i8 15, label %bb.g
    i8 16, label %bb.g
    i8 17, label %bb.g
    i8 18, label %bb.g
    i8 19, label %bb.g
    i8 20, label %bb.g
    i8 21, label %bb.j
    i8 22, label %bb.g
    i8 23, label %bb.g
    i8 24, label %bb.h
    i8 25, label %bb.b
    i8 26, label %bb.g
    i8 27, label %bb.c
  ]

default.unreachable2:                             ; preds = %bb.d, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !noundef !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12673)
  %i.d = zext i32 %i.c to i64                     ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvNtCs8jFhWeO2DFb_9typst_pdf7convert12handle_frame:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !15435
  invoke fastcc void @_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text12compute_deco(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef align 8 dereferenceable(72) %i.ao, i8 %.val29.i, double %i.aac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.agv, i8 noundef 1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(112) %i.am)
          to label %bb.fe unwind label %.loopexit.i.i.i346, !noalias !15437

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !15435
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionbE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i

bb.ff:                                            ; preds = %.noexc105.i.i.i, %.noexc104.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.al, ptr noundef nonnull align 8 dereferenceable(112) %i.p, i64 112, i1 false), !noalias !15642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !15610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !15435
  invoke fastcc void @_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text12compute_deco(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef align 8 dereferenceable(72) %i.ao, i8 %.val29.i, double %i.aac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahd, i8 noundef 2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(112) %i.al)
          to label %bb.fg unwind label %.loopexit.i.i.i346, !noalias !15437

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !15435
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionbE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i

bb.fh:                                            ; preds = %bb.et
  %i.ail = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !15437
  unreachable

bb.fi:                                            ; preds = %._crit_edge.i.i.i350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.513.0..sroa_idx.i.i.i, i64 12, i1 false), !noalias !15435
  br label %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text13compute_attrs.exit.i.i

_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text13compute_attrs.exit.i.i: ; preds = %bb.fi, %._crit_edge.i.i.i350, %._crit_edge.thread.i.i.i
  %.sroa.6.0.lcssa139.i.i.i = phi i32 [ -1, %._crit_edge.thread.i.i.i ], [ %.sroa.6.3.i.i.i, %._crit_edge.i.i.i350 ], [ %.sroa.6.3.i.i.i, %bb.fi ]
  %.sroa.16.0.lcssa136.i.i.i = phi i8 [ 2, %._crit_edge.thread.i.i.i ], [ %.sroa.16.2.i.i.i, %._crit_edge.i.i.i350 ], [ %.sroa.16.2.i.i.i, %bb.fi ]
  %.sroa.18.0.lcssa135.i.i.i = phi i8 [ 2, %._crit_edge.thread.i.i.i ], [ %.sroa.18.2.i.i.i, %._crit_edge.i.i.i350 ], [ %.sroa.18.2.i.i.i, %bb.fi ]
  %.sroa.14.sroa.6.sroa.0.0.lcssa134.i.i.i = phi i32 [ 2, %._crit_edge.thread.i.i.i ], [ %i.aaz, %._crit_edge.i.i.i350 ], [ %i.aaz, %bb.fi ]
  %.sroa.312.0.copyload133.i.i.i = phi i32 [ 2, %._crit_edge.thread.i.i.i ], [ 2, %._crit_edge.i.i.i350 ], [ %.sroa.312.0.copyload.pre.i.i.i, %bb.fi ]
  %i.aim = phi <2 x float> [ <float undef, float 0.000000e+00>, %._crit_edge.thread.i.i.i ], [ %i.ahn, %._crit_edge.i.i.i350 ], [ %i.ahn, %bb.fi ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.52.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i.i, i64 12, i1 false), !noalias !15435
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.41.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.52.i.i.i, i64 12, i1 false), !noalias !15643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(72) %.sroa.11.sroa.3.6..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ao, i64 72, i1 false), !noalias !15644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !15435
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !15434
  store i32 %.sroa.312.0.copyload133.i.i.i, ptr %i.ax, align 4, !alias.scope !15408, !noalias !15643
  store i32 %.sroa.6.0.lcssa139.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i351, align 4, !alias.scope !15408, !noalias !15643
  store <2 x float> %i.aim, ptr %.sroa.6.0..sroa_idx.i34.i, align 4, !alias.scope !15408, !noalias !15643
  store i32 %.sroa.14.sroa.6.sroa.0.0.lcssa134.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !alias.scope !15408, !noalias !15643
  store i8 %.sroa.16.0.lcssa136.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !alias.scope !15408, !noalias !15643
  store i8 %.sroa.18.0.lcssa135.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 1, !alias.scope !15408, !noalias !15643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !15434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef nonnull align 2 dereferenceable(72) %.sroa.11.sroa.3.6..sroa_idx.i.i, i64 72, i1 false), !noalias !15434
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.3.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !15645)
  call void @llvm.experimental.noalias.scope.decl(metadata !15648)
  %.val.i.i.i352 = load i8, ptr %i.mj, align 8, !range !9051, !alias.scope !15648, !noalias !15650, !noundef !21 ; 2 uses
  %.not.i9.i.i353 = icmp eq i8 %.val.i.i.i352, 2
  br i1 %.not.i9.i.i353, label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtB1M_6option6OptionBI_EECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.fk

.lr.ph.split.us.i.i.i354:                         ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ar, i64 64, i1 false), !noalias !15650
  store i8 %.val.i.i.i352, ptr %.sroa.59.0..sroa_idx.i.i.i, align 8, !noalias !15651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i.i355, ptr noundef nonnull readonly align 1 dereferenceable(7) %.sroa.8.0..sroa_idx.i10.i.i, i64 7, i1 false), !noalias !15650
  call void @llvm.experimental.noalias.scope.decl(metadata !15652)
  %i.ain = load i64, ptr %i.mk, align 8, !alias.scope !15655, !noalias !15656, !noundef !21
  %.val.i.us.i.i.i = load ptr, ptr %i.mi, align 8, !alias.scope !15655, !noalias !15656, !nonnull !21, !noundef !21 ; 2 uses
  %.not.i.i.us.i.i.i = icmp eq ptr %.val.i.us.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.us.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i.i, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph.split.us.i.i.i354
  %i.aio = getelementptr i8, ptr %.val.i.us.i.i.i, i64 -8
  %.val.i.i.us.i.i.i = load i64, ptr %i.aio, align 8, !noalias !15658, !noundef !21
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i.i: ; preds = %bb.fj, %.lr.ph.split.us.i.i.i354
  %.sroa.02.0.i.i.us.i.i.i = phi i64 [ %.val.i.i.us.i.i.i, %bb.fj ], [ 0, %.lr.ph.split.us.i.i.i354 ]
  %i.aip = icmp eq i64 %i.ain, %.sroa.02.0.i.i.us.i.i.i
  %i.aiq = zext i1 %i.aip to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.mi, i64 noundef %i.aiq)
          to label %._crit_edge.split.us.i.i.i unwind label %bb.fl, !noalias !15659, !inline_history !15660

._crit_edge.split.us.i.i.i:                       ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i.i
  %i.air = load ptr, ptr %i.mi, align 8, !alias.scope !15655, !noalias !15656, !nonnull !21, !noundef !21
  %i.ais = load i64, ptr %i.mk, align 8, !alias.scope !15655, !noalias !15656, !noundef !21 ; 2 uses
  %i.ait = getelementptr inbounds nuw [72 x i8], ptr %i.air, i64 %i.ais
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ait, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.j, i64 72, i1 false), !noalias !15661
  %i.aiu = add i64 %i.ais, 1
  store i64 %i.aiu, ptr %i.mk, align 8, !alias.scope !15655, !noalias !15656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15651
  br label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtB1M_6option6OptionBI_EECs8jFhWeO2DFb_9typst_pdf.exit.i.i

bb.fk:                                            ; preds = %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text13compute_attrs.exit.i.i
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.mi, i64 noundef 1)
          to label %.lr.ph.split.us.i.i.i354 unwind label %bb.fo, !noalias !15662

bb.fl:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i.i
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.j) #44
          to label %.body399 unwind label %bb.fm, !noalias !15661, !inline_history !15660

bb.fm:                                            ; preds = %bb.fl
  %i.aiw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !15658, !inline_history !15660
  unreachable

bb.fn:                                            ; preds = %bb.fo
  %i.aix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !15663
  unreachable

bb.fo:                                            ; preds = %bb.fk
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.ar)
          to label %.body399 unwind label %bb.fn, !noalias !15664

_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtB1M_6option6OptionBI_EECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %._crit_edge.split.us.i.i.i, %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text13compute_attrs.exit.i.i
  %i.aiz = load i64, ptr %i.iu, align 8, !alias.scope !15665, !noalias !15668, !noundef !21 ; 2 uses
  %.not.i11.i.i = icmp eq i64 %i.aiz, 0
  br i1 %.not.i11.i.i, label %.invoke2422.a, label %_RNvXs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut.exit.i.i356, !prof !24

_RNvXs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut.exit.i.i356: ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtB1M_6option6OptionBI_EECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %i.aja = load ptr, ptr %i.iv, align 8, !alias.scope !15665, !noalias !15668, !nonnull !21, !noundef !21
  %i.ajb = getelementptr [160 x i8], ptr %i.aja, i64 %i.aiz ; 2 uses
  %i.ajc = getelementptr i8, ptr %i.ajb, i64 -160
  store i128 %i.aab, ptr %i.ajc, align 16, !noalias !15428
  %.sroa.42.0..sroa_idx.i.i357 = getelementptr i8, ptr %i.ajb, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %.sroa.42.0..sroa_idx.i.i357, ptr noundef nonnull align 4 dereferenceable(36) %i.ax, i64 36, i1 false), !noalias !15429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !15434
  br label %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text18resolve_text_attrs.exit.i

_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text18resolve_text_attrs.exit.i: ; preds = %_RNvXs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut.exit.i.i356, %bb.cs
  %i.ajd = load i64, ptr %i.io, align 8, !alias.scope !15353, !noalias !15360, !noundef !21 ; 3 uses
  %i.aje = load i64, ptr %i.ip, align 8, !alias.scope !15353, !noalias !15360, !noundef !21 ; 2 uses
  %i.ajf = icmp ult i64 %i.ajd, %i.aje
  br i1 %i.ajf, label %bb.fp, label %.invoke2424.a

bb.fp:                                            ; preds = %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text18resolve_text_attrs.exit.i
  %i.ajg = load ptr, ptr %i.iq, align 8, !alias.scope !15353, !noalias !15360, !nonnull !21, !noundef !21
  %i.ajh = getelementptr inbounds nuw i8, ptr %.sroa.07.01146, i64 188
  %.sroa.018.0.copyload.i = load i24, ptr %i.ajh, align 4, !alias.scope !15358, !noalias !15407 ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %.sroa.07.01146, i64 184
  %.sroa.06.0.copyload.i = load i32, ptr %i.aji, align 8, !alias.scope !15358, !noalias !15407 ; 4 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %i.ajd ; 2 uses
  %i.ajk = load i32, ptr %i.ajj, align 4, !noalias !15407, !noundef !21
  %.sroa.016.0.insert.ext.i = zext i24 %.sroa.018.0.copyload.i to i56 ; 2 uses
  %.sroa.016.3.insert.ext.i = zext i32 %.sroa.06.0.copyload.i to i56
  %.sroa.016.3.insert.shift.i = shl nuw i56 %.sroa.016.3.insert.ext.i, 24
  %.sroa.016.3.insert.insert.i = or disjoint i56 %.sroa.016.3.insert.shift.i, %.sroa.016.0.insert.ext.i ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15669)
  %i.ajl = zext i32 %i.ajk to i64                 ; 3 uses
  %i.ajm = load i64, ptr %i.ix, align 8, !alias.scope !15672, !noalias !15360, !noundef !21 ; 4 uses
  %i.ajn = icmp ugt i64 %i.ajm, %i.ajl
  br i1 %i.ajn, label %bb.fq, label %.invoke2424.a

bb.fq:                                            ; preds = %bb.fp
  %i.ajo = load ptr, ptr %i.iw, align 8, !alias.scope !15672, !noalias !15360, !nonnull !21, !noundef !21 ; 2 uses
  %i.ajp = getelementptr inbounds nuw [80 x i8], ptr %i.ajo, i64 %i.ajl ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 24
  %i.ajr = load i8, ptr %i.ajq, align 8, !range !6627, !alias.scope !15673, !noalias !15676, !noundef !21
  switch i8 %i.ajr, label %default.unreachable [
    i8 0, label %bb.fs
    i8 1, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i
    i8 2, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i
    i8 3, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i
    i8 4, label %bb.fs
    i8 5, label %bb.fs
    i8 6, label %bb.fs
    i8 7, label %bb.fs
    i8 8, label %bb.fs
    i8 9, label %bb.fs
    i8 10, label %bb.fr
    i8 11, label %bb.fs
    i8 12, label %bb.fs
    i8 13, label %bb.fs
    i8 14, label %bb.fs
    i8 15, label %bb.fs
    i8 16, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i
    i8 17, label %bb.fs
    i8 18, label %bb.fs
    i8 19, label %bb.fs
    i8 20, label %bb.fs
    i8 21, label %bb.fs
    i8 22, label %bb.fs
    i8 23, label %bb.fs
    i8 24, label %bb.fs
    i8 25, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i
    i8 26, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i
    i8 27, label %bb.fs
  ]

bb.fr:                                            ; preds = %bb.fq
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq
  %.sink.i.i358 = phi i64 [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 26, %bb.fr ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ]
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %.sink.i.i358 ; 6 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i24 %.sroa.018.0.copyload.i to i8 ; 3 uses
  %.sroa.617.0.extract.shift.i.i.i = lshr i56 %.sroa.016.0.insert.ext.i, 8
  %.sroa.617.0.extract.trunc.i.i.i = trunc nuw i56 %.sroa.617.0.extract.shift.i.i.i to i16 ; 2 uses
  %.sroa.8.0.extract.trunc.i.i.i = trunc i32 %.sroa.06.0.copyload.i to i24
  %.sroa.9.0.extract.shift.i.i.i = lshr i32 %.sroa.06.0.copyload.i, 24
  %.sroa.9.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.9.0.extract.shift.i.i.i to i8
  %.not.i.i36.i = icmp eq i8 %.sroa.0.0.extract.trunc.i.i.i, 2
  br i1 %.not.i.i36.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %.sroa.01.0.copyload.i.i.i.i.i = load i8, ptr %i.ajs, align 1, !alias.scope !15677, !noalias !15684 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ajs, i64 1 ; 2 uses
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 1, !alias.scope !15677, !noalias !15684
  %.not.i.i.i.i37.i = icmp eq i8 %.sroa.01.0.copyload.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i37.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i.i.i, label %.cont.i.i38.i

.cont.i.i38.i:                                    ; preds = %bb.ft
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ajs, i64 3
  %.sroa.5.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i24, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, align 1, !alias.scope !15677, !noalias !15684
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ajs, i64 6
  %.sroa.5.sroa.5.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, align 1, !alias.scope !15677, !noalias !15684
  %i.ajt = icmp eq i8 %.sroa.5.sroa.5.0.copyload.i.i.i.i.i, %.sroa.9.0.extract.trunc.i.i.i
  %i.aju = icmp eq i24 %.sroa.5.sroa.4.sroa.0.0.copyload.i.i.i.i.i, %.sroa.8.0.extract.trunc.i.i.i
  %or.cond.i.i.i.i.i359 = select i1 %i.ajt, i1 %i.aju, i1 false
  br i1 %or.cond.i.i.i.i.i359, label %.cont22.i.i.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i

.cont22.i.i.i:                                    ; preds = %.cont.i.i38.i
  %i.ajv = trunc nuw i8 %.sroa.01.0.copyload.i.i.i.i.i to i1
  %i.ajw = trunc i24 %.sroa.018.0.copyload.i to i1 ; 2 uses
  br i1 %i.ajv, label %6, label %bb.fu

6:                                                ; preds = %.cont22.i.i.i
  br i1 %i.ajw, label %.split.i.i.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i

bb.fu:                                            ; preds = %.cont22.i.i.i
  br i1 %i.ajw, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i.i.i

.split.i.i.i:                                     ; preds = %6
  %7 = icmp eq i16 %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, %.sroa.617.0.extract.trunc.i.i.i
  br i1 %7, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i.i.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i.i.i: ; preds = %.split.i.i.i, %bb.fu, %bb.ft
  store i8 %.sroa.0.0.extract.trunc.i.i.i, ptr %i.ajs, align 1, !alias.scope !15687, !noalias !15676
  store i16 %.sroa.617.0.extract.trunc.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 1, !alias.scope !15687, !noalias !15676
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ajs, i64 3
  store i32 %.sroa.06.0.copyload.i, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 1, !alias.scope !15687, !noalias !15676
  br label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i

_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i.i.i, %.split.i.i.i, %bb.fu, %6, %.cont.i.i38.i, %bb.fs
  %.sroa.0.1.i.i.i = phi i8 [ 2, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i.i.i ], [ 1, %bb.fu ], [ 1, %.split.i.i.i ], [ 2, %bb.fs ], [ %.sroa.0.0.extract.trunc.i.i.i, %.cont.i.i38.i ], [ 0, %6 ]
  %.sroa.617.0.insert.insert.i.i.i = and i56 %.sroa.016.3.insert.insert.i, -256
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %.sroa.0.1.i.i.i to i56
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i56 %.sroa.617.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  br label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i

_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i: ; preds = %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq
  %.sroa.03.0.i.i = phi i56 [ %.sroa.0.0.insert.insert.i.i.i, %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i ], [ %.sroa.016.3.insert.insert.i, %bb.fq ], [ %.sroa.016.3.insert.insert.i, %bb.fq ], [ %.sroa.016.3.insert.insert.i, %bb.fq ], [ %.sroa.016.3.insert.insert.i, %bb.fq ], [ %.sroa.016.3.insert.insert.i, %bb.fq ], [ %.sroa.016.3.insert.insert.i, %bb.fq ] ; 2 uses
  %.sroa.019.0.extract.trunc.i = trunc i56 %.sroa.03.0.i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !15362
  %.not27.i = icmp eq i8 %.sroa.019.0.extract.trunc.i, 2
  br i1 %.not27.i, label %bb.fv, label %bb.fy

bb.fv:                                            ; preds = %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i
  store i64 0, ptr %i.aw, align 8, !noalias !15362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !15362
  br label %bb.fw

bb.fw:                                            ; preds = %.noexc404.a, %bb.fv
  %.sroa.012.0.i = phi ptr [ %.sroa.0.0.i.i, %.noexc404.a ], [ null, %bb.fv ]
  %.sroa.513.0.i = phi i64 [ %.sroa.3.0.i.i, %.noexc404.a ], [ undef, %bb.fv ]
  store ptr %.sroa.012.0.i, ptr %i.mo, align 8, !noalias !15362
  store i64 %.sroa.513.0.i, ptr %.sroa.3.0..sroa_idx.i361, align 8, !noalias !15362
  store ptr null, ptr %.sroa.511.0..sroa_idx.i362, align 8, !noalias !15362
  store ptr null, ptr %.sroa.7.0..sroa_idx.i363, align 8, !noalias !15362
  store ptr null, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !15362
  store i32 1, ptr %i.av, align 8, !noalias !15362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !15362
  invoke void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface12start_tagged(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.av)
          to label %bb.fz unwind label %.loopexit483, !noalias !15688

.loopexit483:                                     ; preds = %bb.fw, %bb.ga
  %lpad.loopexit485 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

.loopexit.split-lp484:                            ; preds = %bb.gb
  %lpad.loopexit.split-lp486 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fx:                                            ; preds = %.loopexit.split-lp484, %.loopexit483
  %lpad.phi487 = phi { ptr, i32 } [ %lpad.loopexit485, %.loopexit483 ], [ %lpad.loopexit.split-lp486, %.loopexit.split-lp484 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw) #44
          to label %.body399 unwind label %bb.gf, !noalias !15688

bb.fy:                                            ; preds = %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library4text4langNtB4_6Locale8rfc_3066(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ml, i56 %.sroa.03.0.i.i)
          to label %.noexc404.a unwind label %.loopexit478

.noexc404.a:                                      ; preds = %bb.fy
  store i64 1, ptr %i.aw, align 8, !noalias !15362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !15362
  %i.ajx = load i8, ptr %i.mm, align 1, !alias.scope !15689, !noalias !15362, !noundef !21 ; 2 uses
  %.not.i40.i360 = icmp sgt i8 %i.ajx, -1         ; 2 uses
  %i.ajy = and i8 %i.ajx, 127
  %i.ajz = zext nneg i8 %i.ajy to i64
  %i.aka = load ptr, ptr %i.ml, align 8, !alias.scope !15689, !noalias !15362, !nonnull !21
  %i.akb = load i64, ptr %i.mn, align 8, !alias.scope !15689, !noalias !15362
  %.sroa.3.0.i.i = select i1 %.not.i40.i360, i64 %i.akb, i64 %i.ajz
  %.sroa.0.0.i.i = select i1 %.not.i40.i360, ptr %i.aka, ptr %i.ml
  br label %bb.fw

bb.fz:                                            ; preds = %bb.fw
  %i.akc = load i32, ptr %i.ajj, align 4, !noalias !15692, !noundef !21
  %i.akd = zext i32 %i.akc to i64                 ; 3 uses
  %i.ake = icmp ugt i64 %i.ajm, %i.akd
  br i1 %i.ake, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.akf = getelementptr inbounds nuw [80 x i8], ptr %i.ajo, i64 %i.akd
  invoke void @_RNvMs4_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_5Group9push_text(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.akf, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(36) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.au)
          to label %_RNvMNtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB2_4Tags9push_text.exit.i unwind label %.loopexit483, !noalias !15688

bb.gb:                                            ; preds = %bb.fz
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.akd, i64 noundef %i.ajm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #42
          to label %.noexc42.i unwind label %.loopexit.split-lp484, !noalias !15688

.noexc42.i:                                       ; preds = %bb.gb
  unreachable

_RNvMNtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB2_4Tags9push_text.exit.i: ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !15362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !15362
  call void @llvm.experimental.noalias.scope.decl(metadata !15697)
  %i.akg = load i64, ptr %i.aw, align 8, !range !176, !alias.scope !15697, !noalias !15362, !noundef !21
  %i.akh = icmp eq i64 %i.akg, 0
  br i1 %i.akh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.gc

bb.gc:                                            ; preds = %_RNvMNtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB2_4Tags9push_text.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15700)
  %.val.i.i43.i = load ptr, ptr %i.ml, align 8, !alias.scope !15703, !noalias !15362 ; 4 uses
  %.val1.i.i.i364 = load i8, ptr %i.mm, align 1, !alias.scope !15703, !noalias !15362, !noundef !21
  %.not.i.i.i.i44.i = icmp sgt i8 %.val1.i.i.i364, -1
  br i1 %.not.i.i.i.i44.i, label %bb.gd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit.i

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i43.i) ]
  %.not.i.i.i.i.i.i.i365 = icmp eq ptr %.val.i.i43.i, inttoptr (i64 16 to ptr)
  %i.aki = getelementptr inbounds i8, ptr %.val.i.i43.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i365, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %bb.gd
  %i.akj = atomicrmw sub ptr %i.aki, i64 1 release, align 8, !noalias !15704
  %.not.i.i.i.i.i.i366 = icmp eq i64 %i.akj, 1
  br i1 %.not.i.i.i.i.i.i366, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15705
  %i.akk = getelementptr i8, ptr %.val.i.i43.i, i64 -8
  %.val.i.i.i.i.i.i45.i = load i64, ptr %i.akk, align 8, !noalias !15704, !noundef !21 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i45.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, label %bb.ge, !prof !85

bb.ge:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
          to label %.noexc405 unwind label %.loopexit.split-lp479

.noexc405:                                        ; preds = %bb.ge
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  %i.akl = add nuw nsw i64 %.val.i.i.i.i.i.i45.i, 16
  store ptr %i.aki, ptr %i.mp, align 8, !noalias !15705
  store i64 8, ptr %i.i, align 8, !noalias !15705
  store i64 %i.akl, ptr %i.mq, align 8, !noalias !15705
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc406 unwind label %.loopexit478

.noexc406:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15705
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %.noexc406, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, %bb.gd, %bb.gc, %_RNvMNtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB2_4Tags9push_text.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !15362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !15362
  br label %bb.gi

bb.gf:                                            ; preds = %bb.fx
  %i.akm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !15688
  unreachable

.body399:                                         ; preds = %.loopexit478, %.loopexit.split-lp479, %.body329, %bb.gh, %bb.fx, %bb.fo, %bb.fl, %bb.et, %.body.i.i.i
  %.pn48.i = phi { ptr, i32 } [ %lpad.phi487, %bb.fx ], [ %.pn46.i, %.body329 ], [ %i.aiv, %bb.fl ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body.i.i.i, %bb.et ], [ %i.aiy, %bb.fo ], [ %.pn46.i, %bb.gh ], [ %lpad.loopexit480, %.loopexit478 ], [ %lpad.loopexit.split-lp481, %.loopexit.split-lp479 ] ; 2 uses
  %i.akn = load ptr, ptr %i.et, align 8, !alias.scope !15706, !noalias !15709, !noundef !21
  %i.ako = icmp eq ptr %i.akn, null
  br i1 %i.ako, label %.body, label %bb.gg

bb.gg:                                            ; preds = %.body399
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.et)
          to label %.body unwind label %bb.qg

.loopexit478:                                     ; preds = %bb.qe, %bb.cq, %.split.preheader.i.i.i, %.noexc384.a, %.noexc385.a, %.noexc386.a, %.noexc387.a, %.noexc388.a, %.noexc389.a, %.noexc390.a, %.noexc391.a, %.noexc392.a, %.noexc393.a, %.noexc394, %_RNvXs0_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i32.i, %.noexc397, %bb.fy, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  %lpad.loopexit480 = landingpad { ptr, i32 }
          cleanup
  br label %.body399

.loopexit.split-lp479:                            ; preds = %.invoke2424.a, %.invoke2422.a, %bb.qj, %bb.ge
  %lpad.loopexit.split-lp481 = landingpad { ptr, i32 }
          cleanup
  br label %.body399

.body329:                                         ; preds = %.loopexit502, %.loopexit.split-lp503, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit, %bb.oa, %.body.i, %bb.go
  %.pn46.i = phi { ptr, i32 } [ %.pn.i284, %.body.i ], [ %.pn44.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit ], [ %.pn.i284, %bb.go ], [ %.pn44.i, %bb.oa ], [ %lpad.loopexit504, %.loopexit502 ], [ %lpad.loopexit.split-lp505, %.loopexit.split-lp503 ] ; 2 uses
  br i1 %.sroa.4.0.i, label %bb.gh, label %.body399

bb.gh:                                            ; preds = %.body329
  invoke void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface10end_tagged(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %4)
          to label %.body399 unwind label %bb.qg

.loopexit502:                                     ; preds = %bb.qd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs8jFhWeO2DFb_9typst_pdf.exit9.sink.split.i
  %lpad.loopexit504 = landingpad { ptr, i32 }
          cleanup
  br label %.body329

.loopexit.split-lp503:                            ; preds = %bb.qi
  %lpad.loopexit.split-lp505 = landingpad { ptr, i32 }
          cleanup
  br label %.body329

bb.gi:                                            ; preds = %bb.cj, %_RNvXs0_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i340, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit.i
  %.sroa.4.0.i = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit.i ], [ false, %bb.cj ], [ false, %_RNvXs0_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i340 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es), !noalias !15348
  %i.akp = getelementptr inbounds nuw i8, ptr %.sroa.07.01146, i64 152 ; 2 uses
  %i.akq = load ptr, ptr %i.akp, align 8, !alias.scope !15345, !noalias !15710, !nonnull !21, !noundef !21
  %i.akr = atomicrmw add ptr %i.akq, i64 1 monotonic, align 8, !noalias !15709
  %i.aks = icmp slt i64 %i.akr, 0
  br i1 %i.aks, label %bb.nw, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.akt = load ptr, ptr %i.akp, align 8, !alias.scope !15345, !noalias !15710, !nonnull !21, !noundef !21 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15711)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  store ptr %i.akt, ptr %i.cg, align 8, !noalias !15714
  call void @llvm.experimental.noalias.scope.decl(metadata !15716), !noalias !15709
  %i.aku = load i64, ptr %i.ms, align 8, !alias.scope !15719, !noalias !15720, !noundef !21
  %i.akv = icmp eq i64 %i.aku, 0
  br i1 %i.akv, label %select.unfold.i297, label %bb.gk
end_hunk_1
begin_hunk_2_@_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve12resolve_node:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !20682
  store i64 -1, ptr %i.al, align 8, !noalias !20682
  br i1 %.not1.i, label %.thread, label %switch.lookup151

bb.l:                                             ; preds = %bb.j, %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit
  %.sroa.5.sroa.0.0.i37 = phi i64 [ %i.bx, %bb.j ], [ undef, %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit ]
  %.sroa.0.0.i38 = phi i64 [ 1, %bb.j ], [ 0, %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.ca = load i8, ptr %i.bz, align 8, !range !22, !alias.scope !20690, !noalias !20693, !noundef !21
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.569.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.i, i64 32, i1 false), !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i)
  store i64 %.sroa.0.0.i38, ptr %i.am, align 8, !noalias !20682
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sroa.5.sroa.0.0.i37, ptr %.sroa.468.0..sroa_idx, align 8, !noalias !20682
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i8 %i.ca, ptr %.sroa.670.0..sroa_idx, align 8, !noalias !20682
  br label %bb.k

.thread97.loopexit:                               ; preds = %.lr.ph149
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread97

.thread97.loopexit.split-lp.loopexit:             ; preds = %.lr.ph
  %lpad.loopexit123 = landingpad { ptr, i32 }
          cleanup
  br label %.thread97

.thread97.loopexit.split-lp.loopexit.split-lp:    ; preds = %.noexc20, %bb.ad, %bb.w, %bb.u, %switch.lookup151
  %lpad.loopexit.split-lp124 = landingpad { ptr, i32 }
          cleanup
  br label %.thread97

switch.lookup151:                                 ; preds = %bb.k
  %switch.gep152 = getelementptr inbounds i8, ptr @switch.table._RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve12resolve_node.1707, i64 %.val54.i
  %switch.load153 = load i8, ptr %switch.gep152, align 1 ; 2 uses
  invoke fastcc void @_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator19flush_grouping_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %3)
          to label %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator4nest.exit unwind label %.thread97.loopexit.split-lp.loopexit.split-lp

_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator4nest.exit: ; preds = %switch.lookup151
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20705)
  %i.cb = load i64, ptr %i.al, align 8, !range !1338, !alias.scope !20708, !noalias !20703, !noundef !21
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator4nest.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20709)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.al)
          to label %bb.p unwind label %bb.n, !noalias !20703

bb.n:                                             ; preds = %bb.m
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !range !1338, !alias.scope !20712, !noalias !20703, !noundef !21
  %i.cg = icmp eq i64 %i.cf, -1
  br i1 %i.cg, label %.thread92, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ce)
          to label %.thread92 unwind label %bb.r, !noalias !20703

bb.p:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !range !1338, !alias.scope !20715, !noalias !20703, !noundef !21
  %i.cj = icmp eq i64 %i.ci, -1
  br i1 %i.cj, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ch)
          to label %bb.t unwind label %bb.s, !noalias !20703

bb.r:                                             ; preds = %bb.o
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20718
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.thread92

.thread92:                                        ; preds = %bb.n, %bb.o, %bb.s
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cl, %bb.s ], [ %i.cd, %bb.o ], [ %i.cd, %bb.n ]
  store i64 0, ptr %i.al, align 8, !alias.scope !20719
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !20719
  store i64 0, ptr %.sroa.02.0.i.sroa.gep, align 8, !alias.scope !20719
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 -1, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !20719
  %.sroa.856.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i8 %switch.load153, ptr %.sroa.856.0..sroa_idx, align 8, !alias.scope !20719
  br label %.thread97

bb.t:                                             ; preds = %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator4nest.exit, %bb.p, %bb.q
  store i64 0, ptr %i.al, align 8, !alias.scope !20719
  %.sroa.5.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx49, align 8, !alias.scope !20719
  store i64 0, ptr %.sroa.02.0.i.sroa.gep, align 8, !alias.scope !20719
  %.sroa.7.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 -1, ptr %.sroa.7.0..sroa_idx53, align 8, !alias.scope !20719
  %.sroa.856.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i8 %switch.load153, ptr %.sroa.856.0..sroa_idx57, align 8, !alias.scope !20719
  %.pre = load i64, ptr %i.ao, align 8, !range !3975, !noalias !20682
  %i.cm = icmp eq i64 %.pre, -1
  br i1 %i.cm, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = invoke { ptr, i64 } @_RNvMsm_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB5_7TagKind8alt_text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ao)
          to label %_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit unwind label %.thread97.loopexit.split-lp.loopexit.split-lp

_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit: ; preds = %bb.u
  %i.co = extractvalue { ptr, i64 } %i.cn, 0
  %i.cp = icmp ne ptr %i.co, null
  %i.cq = zext i1 %i.cp to i8
  br label %.thread

.thread:                                          ; preds = %bb.k, %_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit, %bb.t
  %.sroa.02.0.i143 = phi ptr [ %i.al, %bb.t ], [ %i.al, %_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit ], [ %3, %bb.k ] ; 3 uses
  %.sroa.02.0.i.sroa.phi142 = phi ptr [ %.sroa.02.0.i.sroa.gep, %bb.t ], [ %.sroa.02.0.i.sroa.gep, %_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit ], [ %.sroa.02.0.i.sroa.gep127, %bb.k ]
  %.sroa.03.0.i = phi i8 [ 0, %bb.t ], [ %i.cq, %_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit ], [ 0, %bb.k ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20720)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 58 ; 3 uses
  %i.cs = load i8, ptr %i.cr, align 2, !range !22, !alias.scope !20720, !noalias !20723, !noundef !21 ; 2 uses
  %i.ct = or i8 %i.cs, %.sroa.03.0.i
  store i8 %i.ct, ptr %i.cr, align 2, !alias.scope !20720, !noalias !20723
  %i.cu = load i8, ptr %i.an, align 8, !range !10080, !noalias !20725, !noundef !21
  %.not.i.i = icmp eq i8 %i.cu, -1
  %.sroa.06.0.i.i = select i1 %.not.i.i, ptr %1, ptr %i.an
  %i.cv = load i64, ptr %i.am, align 8, !range !1841, !noalias !20725, !noundef !21
  %.not10.i.i = icmp eq i64 %i.cv, 2
  %spec.select = select i1 %.not10.i.i, ptr %2, ptr %i.am ; 2 uses
  %.val16.i.i = load i8, ptr %i.be, align 8, !range !6627, !noalias !20725, !noundef !21
  %i.cw = icmp eq i8 %.val16.i.i, 1
  %i.cx = getelementptr i8, ptr %i.bd, i64 8      ; 2 uses
  br i1 %i.cw, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.thread
  %i.cy = getelementptr i8, ptr %i.bd, i64 16     ; 2 uses
  %.val15.i.i = load i64, ptr %i.cy, align 8, !noalias !20725, !noundef !21 ; 3 uses
  %i.cz = load i64, ptr %.sroa.02.0.i.sroa.phi142, align 8, !alias.scope !20729, !noundef !21 ; 2 uses
  %i.da = load i64, ptr %.sroa.02.0.i143, align 8, !range !98, !alias.scope !20729, !noundef !21
  %i.db = sub i64 %i.da, %i.cz
  %i.dc = icmp ugt i64 %.val15.i.i, %i.db
  br i1 %i.dc, label %bb.w, label %.noexc25.a, !prof !24

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.sroa.02.0.i143, i64 noundef %i.cz, i64 noundef %.val15.i.i, i64 noundef 8, i64 noundef 88)
          to label %..noexc25_crit_edge unwind label %.thread97.loopexit.split-lp.loopexit.split-lp

..noexc25_crit_edge:                              ; preds = %bb.w
  %.val13.i.i.pre = load i64, ptr %i.cy, align 8, !noalias !20725
  br label %.noexc25.a

.noexc25.a:                                       ; preds = %..noexc25_crit_edge, %bb.v
  %.val13.i.i = phi i64 [ %.val13.i.i.pre, %..noexc25_crit_edge ], [ %.val15.i.i, %bb.v ] ; 2 uses
  %.val12.i.i = load ptr, ptr %i.cx, align 8, !noalias !20725, !nonnull !21, !noundef !21 ; 2 uses
  %.idx = shl nuw nsw i64 %.val13.i.i, 6
  %i.dd = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 %.idx
  %i.de = icmp eq i64 %.val13.i.i, 0
  br i1 %i.de, label %.loopexit, label %.lr.ph

bb.x:                                             ; preds = %.thread
  %.val.i.i = load ptr, ptr %i.cx, align 8, !noalias !20725, !nonnull !21, !noundef !21 ; 2 uses
  %i.df = getelementptr i8, ptr %i.bd, i64 16
  %.val11.i.i = load i64, ptr %i.df, align 8, !noalias !20725, !noundef !21 ; 2 uses
  %.idx150 = shl nuw nsw i64 %.val11.i.i, 6
  %i.dg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx150
  %i.dh = icmp eq i64 %.val11.i.i, 0
  br i1 %i.dh, label %.loopexit, label %.lr.ph149

.noexc26.a:                                       ; preds = %.lr.ph
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i147, i64 64 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.dd
  br i1 %i.dj, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc25.a, %.noexc26.a
  %.sroa.03.0.i.i147 = phi ptr [ %i.di, %.noexc26.a ], [ %.val12.i.i, %.noexc25.a ] ; 2 uses
  invoke fastcc void @_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve12resolve_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef dereferenceable(7) %.sroa.06.0.i.i, ptr noalias nofree noundef align 8 dereferenceable(56) %spec.select, ptr noalias nofree noundef align 8 dereferenceable(56) %.sroa.02.0.i143, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.03.0.i.i147)
          to label %.noexc26.a unwind label %.thread97.loopexit.split-lp.loopexit, !inline_history !20734

.noexc27:                                         ; preds = %.lr.ph149
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i148, i64 64 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.dg
  br i1 %i.dl, label %.loopexit, label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.x, %.noexc27
  %.sroa.01.0.i.i148 = phi ptr [ %i.dk, %.noexc27 ], [ %.val.i.i, %bb.x ] ; 3 uses
  %.sroa.01.0.val.i.i = load i64, ptr %.sroa.01.0.i.i148, align 8, !range !3932, !noalias !20725, !noundef !21
  %i.dm = getelementptr i8, ptr %.sroa.01.0.i.i148, i64 8
  %.sroa.01.0.val17.i.i = load i32, ptr %i.dm, align 8, !noalias !20725
  invoke fastcc void @_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve21resolve_artifact_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %spec.select, i64 %.sroa.01.0.val.i.i, i32 %.sroa.01.0.val17.i.i)
          to label %.noexc27 unwind label %.thread97.loopexit, !inline_history !20734

.loopexit:                                        ; preds = %.noexc26.a, %.noexc27, %.noexc25.a, %bb.x
  store i8 %i.cs, ptr %i.cr, align 2, !alias.scope !20720, !noalias !20723
  %.sroa.011.0.copyload.i = load i8, ptr %i.an, align 8, !noalias !20682 ; 5 uses
  %.not41.i = icmp eq i8 %.sroa.011.0.copyload.i, -1
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %.sroa.512.sroa.0.0.copyload.i = load i48, ptr %.sroa.512.0..sroa_idx.i, align 1, !noalias !20682
  %i.dn = zext i48 %.sroa.512.sroa.0.0.copyload.i to i56
  %.sroa.034.1.insert.ext.i = select i1 %.not41.i, i56 0, i56 %i.dn ; 4 uses
  %.sroa.034.1.insert.shift.i = shl nuw i56 %.sroa.034.1.insert.ext.i, 8
  %.sroa.617.0.extract.trunc.i = trunc i56 %.sroa.034.1.insert.ext.i to i16 ; 2 uses
  %.sroa.8.0.extract.shift.i = lshr i56 %.sroa.034.1.insert.ext.i, 16
  %.sroa.8.0.extract.trunc.i = trunc i56 %.sroa.8.0.extract.shift.i to i24 ; 2 uses
  %.sroa.9.0.extract.shift.i = lshr i56 %.sroa.034.1.insert.ext.i, 40
  %.sroa.9.0.extract.trunc.i = trunc nuw i56 %.sroa.9.0.extract.shift.i to i8 ; 2 uses
  switch i8 %.sroa.011.0.copyload.i, label %bb.y [
    i8 -1, label %bb.aa
    i8 2, label %bb.aa
  ]

bb.y:                                             ; preds = %.loopexit
  %.sroa.01.0.copyload.i.i.i = load i8, ptr %1, align 1, !alias.scope !20735, !noalias !20742 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %.sroa.5.sroa.0.0.copyload.i.i.i = load i16, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !alias.scope !20735, !noalias !20742
  %.not.i.i.i = icmp eq i8 %.sroa.01.0.copyload.i.i.i, 2
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i, label %.cont.i

.cont.i:                                          ; preds = %bb.y
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.sroa.5.sroa.4.sroa.0.0.copyload.i.i.i = load i24, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 1, !alias.scope !20735, !noalias !20742
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.5.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 1, !alias.scope !20735, !noalias !20742
  %i.do = icmp eq i8 %.sroa.5.sroa.5.0.copyload.i.i.i, %.sroa.9.0.extract.trunc.i
  %i.dp = icmp eq i24 %.sroa.5.sroa.4.sroa.0.0.copyload.i.i.i, %.sroa.8.0.extract.trunc.i
  %or.cond.i.i.i = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond.i.i.i, label %.cont22.i, label %bb.aa

.cont22.i:                                        ; preds = %.cont.i
  %i.dq = trunc nuw i8 %.sroa.01.0.copyload.i.i.i to i1
  %i.dr = trunc i8 %.sroa.011.0.copyload.i to i1  ; 2 uses
  br i1 %i.dq, label %5, label %bb.z

5:                                                ; preds = %.cont22.i
  br i1 %i.dr, label %.split.i, label %bb.aa

bb.z:                                             ; preds = %.cont22.i
  br i1 %i.dr, label %bb.aa, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i

.split.i:                                         ; preds = %5
  %6 = icmp eq i16 %.sroa.5.sroa.0.0.copyload.i.i.i, %.sroa.617.0.extract.trunc.i
  br i1 %6, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i, label %bb.aa

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i: ; preds = %.split.i, %bb.z, %bb.y
  store i8 %.sroa.011.0.copyload.i, ptr %1, align 1, !alias.scope !20745, !noalias !20746
  store i16 %.sroa.617.0.extract.trunc.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !alias.scope !20745, !noalias !20746
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i24 %.sroa.8.0.extract.trunc.i, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !20745, !noalias !20746
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %.sroa.9.0.extract.trunc.i, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !20745, !noalias !20746
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit, %.loopexit, %.cont.i, %5, %bb.z, %.split.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i
  %.sroa.0.1.i = phi i8 [ 2, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i ], [ 1, %bb.z ], [ 1, %.split.i ], [ 2, %.loopexit ], [ %.sroa.011.0.copyload.i, %.cont.i ], [ 0, %5 ], [ 2, %.loopexit ] ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i8 %.sroa.0.1.i to i56
  %.sroa.0.0.insert.insert.i = or disjoint i56 %.sroa.034.1.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ds = load i64, ptr %2, align 8, !range !1841, !noundef !21
  %.not42.i = icmp eq i64 %i.ds, 2
  %i.dt = load i64, ptr %i.am, align 8, !range !1841, !noalias !20682, !noundef !21 ; 2 uses
  %.not43.i = icmp eq i64 %i.dt, 2
  %i.du = or i1 %.not42.i, %.not43.i
  br i1 %i.du, label %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !20747)
  call void @llvm.experimental.noalias.scope.decl(metadata !20750)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.dw = load i8, ptr %i.dv, align 8, !range !22, !alias.scope !20750, !noalias !20747, !noundef !21
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.dy = load i8, ptr %i.dx, align 8, !range !22, !alias.scope !20747, !noalias !20750, !noundef !21
  %i.dz = or i8 %i.dy, %i.dw                      ; 2 uses
  %.not9.i = icmp eq i8 %i.dz, 0
  store i8 %i.dz, ptr %i.dx, align 8, !alias.scope !20747, !noalias !20750
  %i.ea = trunc nuw i64 %i.dt to i1
  %or.cond.i18 = select i1 %.not9.i, i1 %i.ea, i1 false
  br i1 %or.cond.i18, label %bb.ac, label %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit

bb.ac:                                            ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !20750, !noalias !20747, !noundef !21 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ee = load double, ptr %i.ed, align 8, !alias.scope !20750, !noalias !20747, !noundef !21
  %i.ef = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.eg = load double, ptr %i.ef, align 8, !alias.scope !20750, !noalias !20747, !noundef !21
  %i.eh = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ei = load double, ptr %i.eh, align 8, !alias.scope !20750, !noalias !20747, !noundef !21
  %i.ej = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ek = load double, ptr %i.ej, align 8, !alias.scope !20750, !noalias !20747, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !20752)
  %i.el = load i64, ptr %2, align 8, !range !176, !alias.scope !20755, !noalias !20757, !noundef !21
  %i.em = trunc nuw i64 %i.el to i1
  br i1 %i.em, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i: ; preds = %bb.ac
  store i64 1, ptr %2, align 8, !alias.scope !20755, !noalias !20757
  %.sroa.4.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ec, ptr %.sroa.4.0..sroa_idx.i.i19, align 8, !alias.scope !20758, !noalias !20750
  %.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x double> splat (double +inf), ptr %.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !20758, !noalias !20750
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <2 x double> splat (double -inf), ptr %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !20758, !noalias !20750
  br label %bb.ad

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load i64, ptr %i.en, align 8, !alias.scope !20747, !noalias !20750
  %i.eo = icmp eq i64 %.pre.i, %i.ec
  br i1 %i.eo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !alias.scope !20747, !noalias !20750, !noundef !21
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !alias.scope !20747, !noalias !20750, !noundef !21
  %i.et = invoke { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point3min(double noundef %i.eq, double noundef %i.es, double noundef %i.ee, double noundef %i.eg)
          to label %.noexc20 unwind label %.thread97.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc20:                                         ; preds = %bb.ad
  %i.eu = extractvalue { double, double } %i.et, 0
  %i.ev = extractvalue { double, double } %i.et, 1
  store double %i.eu, ptr %i.ep, align 8, !alias.scope !20747, !noalias !20750
  store double %i.ev, ptr %i.er, align 8, !alias.scope !20747, !noalias !20750
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !alias.scope !20747, !noalias !20750, !noundef !21
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !alias.scope !20747, !noalias !20750, !noundef !21
  %i.fa = invoke { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point3max(double noundef %i.ex, double noundef %i.ez, double noundef %i.ei, double noundef %i.ek)
          to label %.noexc21 unwind label %.thread97.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc21:                                         ; preds = %.noexc20
  %i.fb = extractvalue { double, double } %i.fa, 0
  %i.fc = extractvalue { double, double } %i.fa, 1
  store double %i.fb, ptr %i.ew, align 8, !alias.scope !20747, !noalias !20750
  store double %i.fc, ptr %i.ey, align 8, !alias.scope !20747, !noalias !20750
  br label %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit

bb.ae:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  store i8 1, ptr %i.dx, align 8, !alias.scope !20747, !noalias !20750
  store i64 0, ptr %2, align 8, !alias.scope !20747, !noalias !20750
  br label %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit

_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit: ; preds = %bb.ae, %.noexc21, %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.765)
  %.sroa.074.0.copyload = load i64, ptr %i.ao, align 8, !noalias !20682 ; 3 uses
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20759
  store i64 %.sroa.074.0.copyload, ptr %i.b, align 8, !noalias !20764
  %.sroa.576.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.576.0..sroa_idx77, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.576.0..sroa_idx, i64 56, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fd, ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 56, i1 false)
  %.not.i13 = icmp eq i64 %.sroa.074.0.copyload, -1 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !range !1338, !noalias !20759
  %.not7.i = icmp eq i64 %i.fe, -1                ; 2 uses
  %or.cond.i = select i1 %.not.i13, i1 true, i1 %.not7.i
  br i1 %or.cond.i, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit
  br i1 %.not.i13, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.ah, %bb.af
  br i1 %.not7.i, label %bb.at, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag7TagKindECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(64) %i.b), !noalias !20759
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !20765)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.fd)
          to label %bb.al unwind label %bb.aj, !noalias !20759

bb.aj:                                            ; preds = %bb.ai
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !range !1338, !alias.scope !20768, !noalias !20759, !noundef !21
  %i.fi = icmp eq i64 %i.fh, -1
  br i1 %i.fi, label %common.resume, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.fg)
          to label %common.resume unwind label %bb.an, !noalias !20759

bb.al:                                            ; preds = %bb.ai
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !range !1338, !alias.scope !20771, !noalias !20759, !noundef !21
  %i.fl = icmp eq i64 %i.fk, -1
  br i1 %i.fl, label %bb.at, label %bb.am

bb.am:                                            ; preds = %bb.al
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.fj)
  br label %bb.at

bb.an:                                            ; preds = %bb.ak
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20774
  unreachable

bb.ao:                                            ; preds = %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.473)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.473, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.576.0..sroa_idx, i64 56, i1 false)
  %.sroa.473.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.473, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.473.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.765, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.473, i64 112, i1 false), !noalias !20775
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.473)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !20682
  store i64 %.sroa.074.0.copyload, ptr %i.ak, align 8, !noalias !20682
  %.sroa.765.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.765.0..sroa_idx66, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.765, i64 56, i1 false), !noalias !20682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !20682
  %.sroa.765.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.765, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.765.64..sroa_idx, i64 56, i1 false), !noalias !20682
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.765)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !20682
  call void @llvm.experimental.noalias.scope.decl(metadata !20776)
  call void @llvm.experimental.noalias.scope.decl(metadata !20779)
  invoke fastcc void @_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator19flush_grouping_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.aj)
          to label %bb.aq unwind label %bb.ap, !noalias !20776

bb.ap:                                            ; preds = %bb.ao
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulator11AccumulatorEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.aj) #44
          to label %bb.cb unwind label %bb.as, !noalias !20776

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(56) %i.aj, i64 24, i1 false), !alias.scope !20781
  %i.fo = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !range !1338, !alias.scope !20782, !noalias !20776, !noundef !21
  %i.fq = icmp eq i64 %i.fp, -1
  br i1 %i.fq, label %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator6finish.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.fo)
          to label %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator6finish.exit unwind label %bb.au

bb.as:                                            ; preds = %bb.ap
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20781
  unreachable

bb.at:                                            ; preds = %bb.am, %bb.ag, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20759
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.765)
  br label %bb.ca

bb.au:                                            ; preds = %bb.ar, %bb.ax
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb
end_hunk_2
