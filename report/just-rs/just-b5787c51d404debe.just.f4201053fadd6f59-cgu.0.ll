Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27283
inline.NumDeleted: 11247
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 611
loop-unroll.NumUnrolled: 736
begin_hunk_0_@_RINvNtNtCsj6eKBz9Db1c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENCNvMs_NtB1Y_9attributeNtB2U_9Attribute3news6_0ENtNtB1Y_6signal6SignalINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1Y_13compile_error12CompileErrorENCINvXso_B3Y_IB3W_INtNtNtNtB1d_11collections5btree3set8BTreeSetB3z_EB4I_EINtNtNtB4_6traits7collect12FromIteratorIB3W_B3z_B4I_EE9from_iterBQ_E0B5C_EB1Y_:bb.a
  br label %.body

_RNCINvXso_NtCsj6eKBz9Db1c_4core6resultINtB8_6ResultINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just6signal6SignalENtNtB1Q_13compile_error12CompileErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1M_B2o_EE9from_iterINtNtNtB37_8adapters3map3MapINtNtNtBW_3vec9into_iter8IntoIterNtNtB1Q_14string_literal13StringLiteralENCNvMs_NtB1Q_9attributeNtB5S_9Attribute3news6_0EE0B1Q_.exit: ; preds = %.loopexit.i.i, %bb.x, %bb.w, %.thread.i.i
  %.sroa.9.0 = phi i64 [ 0, %.thread.i.i ], [ %.sroa.014.0.i.i.i.i, %.loopexit.i.i ], [ 0, %bb.w ], [ 0, %bb.x ] ; 2 uses
  %.sroa.7.0 = phi i64 [ undef, %.thread.i.i ], [ %.sroa.8.0.i.i.i.i, %.loopexit.i.i ], [ undef, %bb.w ], [ undef, %bb.x ] ; 3 uses
  %.sroa.0.0 = phi ptr [ null, %.thread.i.i ], [ %.sroa.0.0.i.i18.i.i, %.loopexit.i.i ], [ null, %bb.w ], [ null, %bb.x ] ; 4 uses
  %i.jh = load i8, ptr %i.h, align 8, !range !442, !noundef !29
  %.not.not = icmp eq i8 %i.jh, -1
  br i1 %.not.not, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %_RNCINvXso_NtCsj6eKBz9Db1c_4core6resultINtB8_6ResultINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just6signal6SignalENtNtB1Q_13compile_error12CompileErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1M_B2o_EE9from_iterINtNtNtB37_8adapters3map3MapINtNtNtBW_3vec9into_iter8IntoIterNtNtB1Q_14string_literal13StringLiteralENCNvMs_NtB1Q_9attributeNtB5S_9Attribute3news6_0EE0B1Q_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !22343)
  store ptr %.sroa.0.0, ptr %0, align 8, !alias.scope !22346
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !22346
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !22346
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 -1, ptr %i.ji, align 8, !alias.scope !22348, !noalias !22343
  br label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just6signal6SignalEEB1E_.exit, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.bb:                                            ; preds = %_RNCINvXso_NtCsj6eKBz9Db1c_4core6resultINtB8_6ResultINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just6signal6SignalENtNtB1Q_13compile_error12CompileErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1M_B2o_EE9from_iterINtNtNtB37_8adapters3map3MapINtNtNtBW_3vec9into_iter8IntoIterNtNtB1Q_14string_literal13StringLiteralENCNvMs_NtB1Q_9attributeNtB5S_9Attribute3news6_0EE0B1Q_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22349
  %.not.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !22349
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.0.0, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !22349
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.7.0, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !22349
  %.sroa.616.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i, align 8, !noalias !22349
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.0.0, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !22349
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.7.0, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !22349
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sink31.i.i.i = phi i64 [ 1, %bb.bc ], [ 0, %bb.bb ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i = phi i64 [ %.sroa.9.0, %bb.bc ], [ 0, %bb.bb ]
  store i64 %.sink31.i.i.i, ptr %i.c, align 8, !noalias !22349
  %i.jj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink31.i.i.i, ptr %i.jj, align 8, !noalias !22349
  %i.jk = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i, ptr %i.jk, align 8, !noalias !22349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22356
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10dying_nextB1b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %bb.bd
  %i.jl = load ptr, ptr %i.b, align 8, !noalias !22356, !noundef !29
  %.not3.i.i.i.i.i = icmp eq ptr %i.jl, null
  br i1 %.not3.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just6signal6SignalEEB1E_.exit, label %.lr.ph.i.i.i.i.i7

.lr.ph.i.i.i.i.i7:                                ; preds = %.noexc8, %.lr.ph.i.i.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22356
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10dying_nextB1b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
  %i.jm = load ptr, ptr %i.b, align 8, !noalias !22356, !noundef !29
  %.not.i.i.i.i.i = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just6signal6SignalEEB1E_.exit, label %.lr.ph.i.i.i.i.i7

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just6signal6SignalEEB1E_.exit: ; preds = %.lr.ph.i.i.i.i.i7, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22349
  br label %bb.ba

bb.be:                                            ; preds = %bb.bg
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.bf:                                            ; preds = %bb.bg, %.body
  resume { ptr, i32 } %.pn

bb.bg:                                            ; preds = %.body
  %.val = load ptr, ptr %i.g, align 8, !alias.scope !11472, !nonnull !29, !noundef !29
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCskXtk6F4WjxZ_4just13compile_error12CompileErrorEEB1s_(ptr %.val) #72
          to label %bb.bf unwind label %bb.be
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RINvNtNtCsj6eKBz9Db1c_4core5slice3cmp13chaining_implNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2m_s_0EBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 72057594037927936) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %.not = icmp eq i64 %..i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.a = add nuw nsw i64 %.sroa.01.017, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.a, %..i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.b = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.b, %._crit_edge ], [ %i.e, %.lr.ph ]
  ret i8 %.sroa.0.0

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.017 = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.01.017
  %i.d = getelementptr inbounds nuw [128 x i8], ptr %2, i64 %.sroa.01.017
  %i.e = tail call fastcc noundef i8 @_RNvXs6_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.d) #76, !inline_history !22361 ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RINvNtNtCsj6eKBz9Db1c_4core5slice3cmp13chaining_implNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2t_s_0EBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 88686269585142076) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 88686269585142076) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %.not = icmp eq i64 %..i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread17, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread

_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread: ; preds = %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i, %bb.i, %bb.e, %bb.h, %bb.b, %bb.d, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.a, %._crit_edge ], [ 1, %bb.d ], [ %i.v, %bb.b ], [ 1, %bb.h ], [ %i.af, %bb.e ], [ -1, %bb.i ], [ %.sroa.0.0.i.fr.i, %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i ]
  ret i8 %.sroa.0.0

.lr.ph:                                           ; preds = %bb.a, %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread17
  %.sroa.01.019 = phi i64 [ %i.aq, %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread17 ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.01.019 ; 7 uses
  %i.c = getelementptr inbounds nuw [104 x i8], ptr %2, i64 %.sroa.01.019 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22370)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !22372, !noalias !22373, !nonnull !29, !noundef !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !22372, !noalias !22373, !noundef !29 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !22373, !noalias !22372, !nonnull !29, !noundef !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !22373, !noalias !22372, !noundef !29 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.k)
  %i.l = tail call i32 @memcmp(ptr nonnull %i.e, ptr nonnull %i.i, i64 %spec.store.select.i.i), !noalias !22374 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp eq i32 %i.l, 0
  %i.o = sub i64 %i.g, %i.k
  %spec.select.i.i = select i1 %i.n, i64 %i.o, i64 %i.m ; 2 uses
  %i.p = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i, i64 0)
  %i.q = icmp eq i64 %spec.select.i.i, 0
  br i1 %i.q, label %bb.b, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i

bb.b:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 98
  %i.s = load i8, ptr %i.r, align 2, !range !274, !alias.scope !22372, !noalias !22373, !noundef !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 98
  %i.u = load i8, ptr %i.t, align 2, !range !274, !alias.scope !22373, !noalias !22372, !noundef !29
  %i.v = sub nsw i8 %i.s, %i.u                    ; 2 uses
  switch i8 %i.v, label %default.unreachable [
    i8 -1, label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread
    i8 0, label %bb.c
    i8 1, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.e, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %i.x = load i8, ptr %i.w, align 1, !range !190, !alias.scope !22372, !noalias !22373, !noundef !29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 97
  %i.z = load i8, ptr %i.y, align 1, !range !190, !alias.scope !22373, !noalias !22372, !noundef !29 ; 2 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.e, %bb.b
  br label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ad = load i8, ptr %i.ac, align 8, !range !274, !alias.scope !22372, !noalias !22373, !noundef !29
  %i.ae = load i8, ptr %i.ab, align 8, !range !274, !alias.scope !22373, !noalias !22372, !noundef !29
  %i.af = sub nsw i8 %i.ad, %i.ae                 ; 2 uses
  switch i8 %i.af, label %default.unreachable [
    i8 -1, label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread
    i8 0, label %bb.g
    i8 1, label %bb.d
  ]

bb.f:                                             ; preds = %bb.c
  %4 = zext nneg i8 %i.z to i64
  %5 = zext nneg i8 %i.x to i64
  %i.ag = tail call i8 @llvm.scmp.i8.i64(i64 %5, i64 %4)
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 99
  %i.ai = load i8, ptr %i.ah, align 1, !range !22375, !alias.scope !22372, !noalias !22373, !noundef !29 ; 3 uses
  %.not.i.i = icmp eq i8 %i.ai, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 99
  %i.ak = load i8, ptr %i.aj, align 1, !range !22375, !alias.scope !22373, !noalias !22372, !noundef !29 ; 3 uses
  %.not14.i.i = icmp eq i8 %i.ak, -1              ; 2 uses
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not14.i.i, label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread, label %bb.k

bb.i:                                             ; preds = %bb.g
  br i1 %.not14.i.i, label %bb.j, label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.an = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.am) #76
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i

bb.k:                                             ; preds = %bb.h
  %6 = zext nneg i8 %i.ai to i64
  %7 = zext nneg i8 %i.ak to i64
  %i.ao = tail call i8 @llvm.scmp.i8.i64(i64 %6, i64 %7)
  %i.ap = icmp eq i8 %i.ai, %i.ak
  br i1 %i.ap, label %bb.j, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i

_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.k, %bb.j, %bb.f, %.lr.ph
  %.sroa.0.0.i.i = phi i8 [ %i.p, %.lr.ph ], [ %i.ag, %bb.f ], [ %i.an, %bb.j ], [ %i.ao, %bb.k ]
  %.sroa.0.0.i.fr.i = freeze i8 %.sroa.0.0.i.i    ; 2 uses
  switch i8 %.sroa.0.0.i.fr.i, label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread [
    i8 0, label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread17
    i8 -2, label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread17
  ]

_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread17: ; preds = %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i, %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i
  %i.aq = add nuw nsw i64 %.sroa.01.019, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %..i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RINvNtNtCsj6eKBz9Db1c_4core5slice3cmp13chaining_implTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBT_14string_literal13StringLiteralENtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB30_s_0EBT_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 39755913951960241) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 39755913951960241) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %.not = icmp eq i64 %..i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit
  %i.a = add nuw nsw i64 %.sroa.01.019, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.a, %..i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.b = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit.thread

_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit.thread: ; preds = %bb.j, %bb.g, %bb.k, %bb.d, %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit, %bb.f, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.b, %._crit_edge ], [ 1, %bb.f ], [ %i.y, %bb.d ], [ -1, %bb.k ], [ %i.ai, %bb.g ], [ 1, %bb.j ], [ %.sroa.0.0.i, %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit ]
  ret i8 %.sroa.0.0

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.019 = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %.sroa.01.019 ; 8 uses
  %i.d = getelementptr inbounds nuw [232 x i8], ptr %2, i64 %.sroa.01.019 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22379)
  %i.e = tail call fastcc noundef i8 @_RNvXs6_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.d) #76, !inline_history !22381 ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22385)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !22387, !noalias !22388, !nonnull !29, !noundef !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !22387, !noalias !22388, !noundef !29 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !22388, !noalias !22387, !nonnull !29, !noundef !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !22388, !noalias !22387, !noundef !29 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.n)
  %i.o = tail call i32 @memcmp(ptr nonnull %i.h, ptr nonnull %i.l, i64 %spec.store.select.i.i), !noalias !22389, !inline_history !22381 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %i.j, %i.n
  %spec.select.i.i = select i1 %i.q, i64 %i.r, i64 %i.p ; 2 uses
  %i.s = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i, i64 0)
  %i.t = icmp eq i64 %spec.select.i.i, 0
  br i1 %i.t, label %bb.d, label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 226
  %i.v = load i8, ptr %i.u, align 2, !range !274, !alias.scope !22387, !noalias !22388, !noundef !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 226
  %i.x = load i8, ptr %i.w, align 2, !range !274, !alias.scope !22388, !noalias !22387, !noundef !29
  %i.y = sub nsw i8 %i.v, %i.x                    ; 2 uses
  switch i8 %i.y, label %default.unreachable [
    i8 -1, label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit.thread
    i8 0, label %bb.e
    i8 1, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.g, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.aa = load i8, ptr %i.z, align 1, !range !190, !alias.scope !22387, !noalias !22388, !noundef !29 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 225
  %i.ac = load i8, ptr %i.ab, align 1, !range !190, !alias.scope !22388, !noalias !22387, !noundef !29 ; 2 uses
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.g, %bb.d
  br label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.ag = load i8, ptr %i.af, align 8, !range !274, !alias.scope !22387, !noalias !22388, !noundef !29
  %i.ah = load i8, ptr %i.ae, align 8, !range !274, !alias.scope !22388, !noalias !22387, !noundef !29
  %i.ai = sub nsw i8 %i.ag, %i.ah                 ; 2 uses
  switch i8 %i.ai, label %default.unreachable [
    i8 -1, label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit.thread
    i8 0, label %bb.i
    i8 1, label %bb.f
  ]

bb.h:                                             ; preds = %bb.e
  %4 = zext nneg i8 %i.ac to i64
  %5 = zext nneg i8 %i.aa to i64
  %i.aj = tail call i8 @llvm.scmp.i8.i64(i64 %5, i64 %4)
  br label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 227
  %i.al = load i8, ptr %i.ak, align 1, !range !22375, !alias.scope !22387, !noalias !22388, !noundef !29 ; 3 uses
  %.not.i.i = icmp eq i8 %i.al, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 227
  %i.an = load i8, ptr %i.am, align 1, !range !22375, !alias.scope !22388, !noalias !22387, !noundef !29 ; 3 uses
  %.not14.i.i = icmp eq i8 %i.an, -1              ; 2 uses
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not14.i.i, label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit.thread, label %bb.m

bb.k:                                             ; preds = %bb.i
  br i1 %.not14.i.i, label %bb.l, label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit.thread

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.aq = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ap) #76, !inline_history !22381
  br label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit

bb.m:                                             ; preds = %bb.j
  %6 = zext nneg i8 %i.al to i64
  %7 = zext nneg i8 %i.an to i64
  %i.ar = tail call i8 @llvm.scmp.i8.i64(i64 %6, i64 %7)
  %i.as = icmp eq i8 %i.al, %i.an
  br i1 %i.as, label %bb.l, label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit

_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit: ; preds = %bb.c, %bb.h, %bb.l, %bb.m, %.lr.ph
  %.sroa.0.0.i = phi i8 [ %i.e, %.lr.ph ], [ %i.s, %bb.c ], [ %i.aj, %bb.h ], [ %i.aq, %bb.l ], [ %i.ar, %bb.m ] ; 2 uses
  %i.at = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.at, label %bb.b, label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit.thread
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCskpFEDU8Hp5a_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
.preheader.preheader:
  %.sroa.0.0.copyload.i121 = load <4 x i32>, ptr %0, align 4, !noalias !22390
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i18122 = load <4 x i32>, ptr %i.a, align 4, !noalias !22393
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i19123 = load <4 x i32>, ptr %i.b, align 4, !noalias !22396
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !noalias !22399
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0> ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0> ; 2 uses
  %.cast = shufflevector <4 x i32> %.sroa.0.0.copyload.i19123, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.g = shufflevector <4 x i32> %.sroa.0.0.copyload.i18122, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.h = shufflevector <4 x i32> %.sroa.0.0.copyload.i121, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %i.cp, %bb.a ]
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %i.cl, %bb.a ]
  %.sroa.023.062.i = phi i64 [ 0, %.preheader.preheader ], [ %i.o, %bb.a ]
  %i.i = phi <8 x i32> [ %i.h, %.preheader.preheader ], [ %i.cm, %bb.a ]
  %i.j = phi <8 x i32> [ %i.g, %.preheader.preheader ], [ %i.ce, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %i.h, %.preheader.preheader ], [ %i.cq, %bb.a ]
  %i.l = phi <8 x i32> [ %i.g, %.preheader.preheader ], [ %i.ci, %bb.a ] ; 2 uses
  %i.m = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cj, %bb.a ]
  %i.n = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cn, %bb.a ]
  %i.o = add nuw nsw i64 %.sroa.023.062.i, 1      ; 2 uses
  %i.p = add <8 x i32> %i.j, %i.i                 ; 2 uses
  %i.q = bitcast <8 x i32> %i.p to <4 x i64>
  %i.r = xor <4 x i64> %.sroa.19.0.i, %i.q
  %i.s = bitcast <4 x i64> %i.r to <32 x i8>
  %i.t = shufflevector <32 x i8> %i.s, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.u = add <8 x i32> %i.l, %i.k                 ; 2 uses
  %i.v = bitcast <8 x i32> %i.u to <4 x i64>
  %i.w = xor <4 x i64> %.sroa.46.0.i, %i.v
  %i.x = bitcast <4 x i64> %i.w to <32 x i8>
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.z = bitcast <32 x i8> %i.t to <8 x i32>
  %i.aa = add <8 x i32> %i.m, %i.z                ; 2 uses
  %i.ab = xor <8 x i32> %i.aa, %i.j               ; 2 uses
  %i.ac = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ab, <8 x i32> %i.ab, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ad = bitcast <32 x i8> %i.y to <8 x i32>
  %i.ae = add <8 x i32> %i.n, %i.ad               ; 2 uses
  %i.af = xor <8 x i32> %i.ae, %i.l               ; 2 uses
  %i.ag = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.af, <8 x i32> %i.af, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ah = add <8 x i32> %i.ac, %i.p               ; 2 uses
  %i.ai = bitcast <8 x i32> %i.ah to <32 x i8>
  %i.aj = xor <32 x i8> %i.t, %i.ai
  %i.ak = shufflevector <32 x i8> %i.aj, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.al = add <8 x i32> %i.ag, %i.u               ; 2 uses
  %i.am = bitcast <8 x i32> %i.al to <32 x i8>
  %i.an = xor <32 x i8> %i.y, %i.am
  %i.ao = shufflevector <32 x i8> %i.an, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.ap = bitcast <32 x i8> %i.ak to <8 x i32>    ; 2 uses
  %i.aq = add <8 x i32> %i.aa, %i.ap              ; 2 uses
  %i.ar = xor <8 x i32> %i.aq, %i.ac              ; 2 uses
  %i.as = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ar, <8 x i32> %i.ar, <8 x i32> splat (i32 7)) ; 2 uses
  %i.at = bitcast <32 x i8> %i.ao to <8 x i32>    ; 2 uses
  %i.au = add <8 x i32> %i.ae, %i.at              ; 2 uses
  %i.av = xor <8 x i32> %i.au, %i.ag              ; 2 uses
  %i.aw = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.av, <8 x i32> %i.av, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ax = shufflevector <8 x i32> %i.aq, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.ay = shufflevector <8 x i32> %i.ap, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.az = shufflevector <8 x i32> %i.ah, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ba = shufflevector <8 x i32> %i.au, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.bb = shufflevector <8 x i32> %i.at, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.bc = shufflevector <8 x i32> %i.al, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.bd = add <8 x i32> %i.as, %i.az              ; 2 uses
  %i.be = xor <8 x i32> %i.bd, %i.ay
  %i.bf = bitcast <8 x i32> %i.be to <32 x i8>
  %i.bg = shufflevector <32 x i8> %i.bf, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bh = add <8 x i32> %i.aw, %i.bc              ; 2 uses
  %i.bi = xor <8 x i32> %i.bh, %i.bb
  %i.bj = bitcast <8 x i32> %i.bi to <32 x i8>
  %i.bk = shufflevector <32 x i8> %i.bj, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bl = bitcast <32 x i8> %i.bg to <8 x i32>
  %i.bm = add <8 x i32> %i.ax, %i.bl              ; 2 uses
  %i.bn = xor <8 x i32> %i.bm, %i.as              ; 2 uses
  %i.bo = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bn, <8 x i32> %i.bn, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bp = bitcast <32 x i8> %i.bk to <8 x i32>
  %i.bq = add <8 x i32> %i.ba, %i.bp              ; 2 uses
  %i.br = xor <8 x i32> %i.bq, %i.aw              ; 2 uses
  %i.bs = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.br, <8 x i32> %i.br, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bt = add <8 x i32> %i.bo, %i.bd              ; 2 uses
  %i.bu = bitcast <8 x i32> %i.bt to <32 x i8>
  %i.bv = xor <32 x i8> %i.bg, %i.bu
  %i.bw = shufflevector <32 x i8> %i.bv, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.bx = add <8 x i32> %i.bs, %i.bh              ; 2 uses
  %i.by = bitcast <8 x i32> %i.bx to <32 x i8>
  %i.bz = xor <32 x i8> %i.bk, %i.by
  %i.ca = shufflevector <32 x i8> %i.bz, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.cb = bitcast <32 x i8> %i.bw to <8 x i32>    ; 2 uses
  %i.cc = add <8 x i32> %i.bm, %i.cb              ; 2 uses
  %i.cd = xor <8 x i32> %i.cc, %i.bo              ; 2 uses
  %i.ce = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cd, <8 x i32> %i.cd, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cf = bitcast <32 x i8> %i.ca to <8 x i32>    ; 2 uses
  %i.cg = add <8 x i32> %i.bq, %i.cf              ; 2 uses
  %i.ch = xor <8 x i32> %i.cg, %i.bs              ; 2 uses
  %i.ci = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ch, <8 x i32> %i.ch, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cj = shufflevector <8 x i32> %i.cc, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %i.ck = shufflevector <8 x i32> %i.cb, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.cl = bitcast <8 x i32> %i.ck to <4 x i64>
  %i.cm = shufflevector <8 x i32> %i.bt, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.cn = shufflevector <8 x i32> %i.cg, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %i.co = shufflevector <8 x i32> %i.cf, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.cp = bitcast <8 x i32> %i.co to <4 x i64>
  %i.cq = shufflevector <8 x i32> %i.bx, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, 6
  br i1 %exitcond.not.i, label %_RNvMNtNtCskpFEDU8Hp5a_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCskXtk6F4WjxZ_4just.exit, label %bb.a

_RNvMNtNtCskpFEDU8Hp5a_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCskXtk6F4WjxZ_4just.exit: ; preds = %bb.a
  %i.cr = bitcast <4 x i64> %i.f to <8 x i32>
  %i.cs = add <8 x i32> %i.co, %i.cr              ; 2 uses
  %i.ct = add <8 x i32> %i.cn, %.cast             ; 2 uses
  %i.cu = add <8 x i32> %i.ci, %i.g               ; 2 uses
  %i.cv = add <8 x i32> %i.cq, %i.h               ; 2 uses
  %i.cw = bitcast <4 x i64> %i.e to <8 x i32>
  %i.cx = add <8 x i32> %i.ck, %i.cw              ; 2 uses
  %i.cy = add <8 x i32> %i.cj, %.cast             ; 2 uses
  %i.cz = add <8 x i32> %i.ce, %i.g               ; 2 uses
  %i.da = add <8 x i32> %i.cm, %i.h               ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.cy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.cy, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !22402
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.db, align 4, !noalias !22405
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.dc, align 4, !noalias !22402
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.dd, align 4, !noalias !22405
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.de, align 4, !noalias !22402
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.df, align 4, !noalias !22405
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.dg, align 4, !noalias !22402
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.dh, align 4, !noalias !22405
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.di, align 4, !noalias !22402
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.dj, align 4, !noalias !22405
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.dk, align 4, !noalias !22402
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.dl, align 4, !noalias !22405
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dm, align 4, !noalias !22402
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dn, align 4, !noalias !22405
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.do, align 4, !noalias !22402
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.dp, align 4, !noalias !22405
  %i.dq = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %i.dr = bitcast <4 x i64> %i.dq to <8 x i32>
  %i.ds = shufflevector <8 x i32> %i.dr, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %i.ds, ptr %i.c, align 4
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainNtNtCsaKJjC64KgbL_3std4path7PathBufNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCs4wP2HXfJTCR_5alloc3vec3VecBZ_EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nsw i64 %1, %i.c                     ; 2 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 333333)
  %..i8 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.d) ; 2 uses
  %..i9 = tail call noundef i64 @llvm.umax.i64(i64 %..i8, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ult i64 %..i8, 171                  ; 3 uses
  br i1 %i.e, label %bb.g, label %bb.b
end_hunk_0
begin_hunk_1_@_RNvMNtCskXtk6F4WjxZ_4just4lineNtB2_4Line15is_continuation:bb.a

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !37984, !noalias !37981, !noundef !29
  %i.u = icmp sgt i8 %i.t, -65
  br i1 %i.u, label %bb.f, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, !prof !165

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !37984, !noalias !37981, !noundef !29
  %i.x = icmp sgt i8 %i.w, -65
  br i1 %i.x, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, !prof !166

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i, %bb.g, %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #75, !noalias !37981
  unreachable

_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit: ; preds = %bb.d, %bb.f, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.z = getelementptr i8, ptr %i.y, i64 %i.l
  %i.aa = getelementptr i8, ptr %i.z, i64 -1
  %rhsc = load i8, ptr %i.aa, align 1
  %i.ab = icmp eq i8 %rhsc, 92
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit: ; preds = %bb.h, %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ab, %bb.h ], [ false, %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just4lineNtB2_4Line6sigils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val, i8 %.289.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %.not.i = icmp eq i64 %.16.val, 0
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %.8.val, align 8, !range !267, !noundef !29
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37987)
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !37987, !nonnull !29, !noundef !29 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !37987, !noundef !29 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !37987, !noundef !29 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !37987, !noundef !29 ; 3 uses
  %i.l = add i64 %i.k, %i.i                       ; 5 uses
  %i.m = icmp ugt i64 %i.i, %i.l
  %i.n = icmp ugt i64 %i.l, %i.g
  %or.cond.i.i.i = or i1 %i.m, %i.n
  br i1 %or.cond.i.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, label %bb.d, !prof !160

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %i.i, %i.g
  br i1 %i.o, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %i.i, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.q = icmp eq i64 %i.l, %i.g
  br i1 %i.q, label %bb.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !37990, !noalias !37987, !noundef !29
  %i.t = icmp sgt i8 %i.s, -65
  br i1 %i.t, label %bb.f, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, !prof !165

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !37990, !noalias !37987, !noundef !29
  %i.w = icmp sgt i8 %i.v, -65
  br i1 %i.w, label %bb.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, !prof !166

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i, %bb.g, %bb.c
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g, i64 noundef %i.i, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #75
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i
  unreachable

bb.h:                                             ; preds = %.invoke, %bb.am, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ad, %bb.bb, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.cv, %bb.ad ], [ %.pn.i.i.i.i.i, %bb.bb ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just5sigil5SigilEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #72
          to label %bb.bf unwind label %bb.be

bb.i:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i, %bb.f, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.k ; 4 uses
  %i.aa = icmp samesign eq i64 %i.k, 0
  br i1 %i.aa, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ab = trunc nuw i8 %.289.val to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB7_7set_val9SetValZSTE6insertB1b_.exit
  %i.ad = phi i64 [ 0, %.lr.ph ], [ %i.kh, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB7_7set_val9SetValZSTE6insertB1b_.exit ]
  %i.ae = phi ptr [ null, %.lr.ph ], [ %i.kg, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB7_7set_val9SetValZSTE6insertB1b_.exit ] ; 9 uses
  %.sroa.0.089 = phi ptr [ %i.y, %.lr.ph ], [ %.sroa.0.1.ph, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB7_7set_val9SetValZSTE6insertB1b_.exit ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.089, i64 1 ; 3 uses
  %i.ag = load i8, ptr %.sroa.0.089, align 1, !noalias !37993, !noundef !29 ; 5 uses
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %bb.k, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i: ; preds = %bb.j
  %i.ai = and i8 %i.ag, 31
  %i.aj = zext nneg i8 %i.ai to i32               ; 3 uses
  %i.ak = icmp ne ptr %i.af, %i.z
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.089, i64 2 ; 3 uses
  %i.am = load i8, ptr %i.af, align 1, !noalias !37993, !noundef !29
  %i.an = shl nuw nsw i32 %i.aj, 6
  %i.ao = and i8 %i.am, 63
  %i.ap = zext nneg i8 %i.ao to i32               ; 2 uses
  %i.aq = or disjoint i32 %i.an, %i.ap
  %i.ar = icmp samesign ugt i8 %i.ag, -33
  br i1 %i.ar, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = zext nneg i8 %i.ag to i32
  br label %bb.l

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i
  %i.at = icmp ne ptr %i.al, %i.z
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.089, i64 3 ; 3 uses
  %i.av = load i8, ptr %i.al, align 1, !noalias !37993, !noundef !29
  %i.aw = shl nuw nsw i32 %i.ap, 6
  %i.ax = and i8 %i.av, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay            ; 2 uses
  %i.ba = shl nuw nsw i32 %i.aj, 12
  %i.bb = or disjoint i32 %i.az, %i.ba
  %i.bc = icmp samesign ugt i8 %i.ag, -17
  br i1 %i.bc, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i, label %bb.l

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i
  %i.bd = icmp ne ptr %i.au, %i.z
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.089, i64 4
  %i.bf = load i8, ptr %i.au, align 1, !noalias !37993, !noundef !29
  %i.bg = shl nuw nsw i32 %i.aj, 18
  %i.bh = and i32 %i.bg, 1835008
  %i.bi = shl nuw nsw i32 %i.az, 6
  %i.bj = and i8 %i.bf, 63
  %i.bk = zext nneg i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %i.bm = or disjoint i32 %i.bl, %i.bh
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i
  %.sroa.0.1.ph = phi ptr [ %i.al, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i ], [ %i.au, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i ], [ %i.be, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i ], [ %i.af, %bb.k ] ; 2 uses
  %.sroa.4.0.i13.ph = phi i32 [ %i.aq, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i ], [ %i.bb, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i ], [ %i.bm, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i ], [ %i.as, %bb.k ] ; 2 uses
  %i.bn = icmp samesign ult i32 %.sroa.4.0.i13.ph, 1114112
  tail call void @llvm.assume(i1 %i.bn)
  switch i32 %.sroa.4.0.i13.ph, label %.thread [
    i32 45, label %bb.o
    i32 63, label %bb.m
    i32 64, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  br i1 %i.ab, label %bb.o, label %.thread

bb.n:                                             ; preds = %bb.l
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.n
  %.sroa.04.0 = phi i8 [ 2, %bb.n ], [ 1, %bb.l ], [ 0, %bb.m ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37999)
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load i64, ptr %i.ac, align 8, !alias.scope !38002, !noalias !38003, !noundef !29 ; 3 uses
  %1 = zext nneg i8 %.sroa.04.0 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.p
  %.sroa.3.0.i.i.i = phi i64 [ %i.bo, %bb.p ], [ %i.ce, %bb.t ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.ae, %bb.p ], [ %i.cd, %bb.t ] ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 12 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.br = load i16, ptr %i.bq, align 2, !noalias !38005, !noundef !29 ; 4 uses
  %i.bs = zext i16 %i.br to i64                   ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bs
  %i.bu = icmp eq i16 %i.br, 0
  br i1 %i.bu, label %._crit_edge, label %.lr.ph348

bb.r:                                             ; preds = %.lr.ph348
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i347, i64 1 ; 2 uses
  %i.bw = add nuw nsw i64 %.sroa.8.0.i.i.i.i346, 1
  %i.bx = icmp eq ptr %i.bv, %i.bt
  br i1 %i.bx, label %._crit_edge, label %.lr.ph348

.lr.ph348:                                        ; preds = %bb.q, %bb.r
  %.sroa.0.03.i.i.i.i347 = phi ptr [ %i.bv, %bb.r ], [ %i.bp, %bb.q ] ; 2 uses
  %.sroa.8.0.i.i.i.i346 = phi i64 [ %i.bw, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %.val6.i.i.i.i = load i8, ptr %.sroa.0.03.i.i.i.i347, align 1, !range !190, !noalias !38005, !noundef !29
  %2 = zext nneg i8 %.val6.i.i.i.i to i64
  %i.by = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %1, i64 %2)
  switch i8 %i.by, label %bb.s [
    i8 -1, label %._crit_edge
    i8 0, label %.thread
    i8 1, label %bb.r
  ]

bb.s:                                             ; preds = %.lr.ph348
  unreachable

._crit_edge:                                      ; preds = %bb.r, %.lr.ph348, %bb.q
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.bs, %bb.q ], [ %i.bs, %bb.r ], [ %.sroa.8.0.i.i.i.i346, %.lr.ph348 ] ; 12 uses
  %i.bz = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.bz, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 24
  %i.cb = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 12
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.4.0.i.ph.i.i.i
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !38005, !nonnull !29, !noundef !29
  %i.ce = add i64 %.sroa.3.0.i.i.i, -1
  br label %bb.q

bb.u:                                             ; preds = %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10 ; 3 uses
  %i.cg = icmp ult i16 %i.br, 11
  br i1 %i.cg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 5
  br i1 %i.ch, label %bb.ab, label %bb.y

bb.w:                                             ; preds = %bb.u
  %.not.i.i.i.i.not.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, %i.bs
  br i1 %.not.i.i.i.i.not.i, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.4.0.i.ph.i.i.i ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = sub nuw nsw i64 %i.bs, %.sroa.4.0.i.ph.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr nonnull align 1 %i.ci, i64 %i.ck, i1 false), !alias.scope !38008, !noalias !38011
  br label %bb.ag

bb.y:                                             ; preds = %bb.v
  switch i64 %.sroa.4.0.i.ph.i.i.i, label %bb.z [
    i64 5, label %bb.ab
    i64 6, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.cl = add nsw i64 %.sroa.4.0.i.ph.i.i.i, -7
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.v
  %.sroa.09.0.i.i.i.i = phi i1 [ true, %bb.aa ], [ true, %bb.z ], [ false, %bb.v ], [ false, %bb.y ]
  %.sroa.510.0.i.i.i.i = phi i64 [ 0, %bb.aa ], [ %i.cl, %bb.z ], [ %.sroa.4.0.i.ph.i.i.i, %bb.v ], [ %.sroa.4.0.i.ph.i.i.i, %bb.y ] ; 4 uses
  %.sroa.013.0.i.i.i.i = phi i64 [ 5, %bb.aa ], [ 6, %bb.z ], [ 4, %bb.v ], [ %.sroa.4.0.i.ph.i.i.i, %bb.y ] ; 3 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !38024
  %i.cm = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !38024 ; 8 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %.invoke, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1t_.exit.i.i.i.i.i, !prof !341

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1t_.exit.i.i.i.i.i: ; preds = %bb.ab
  store ptr null, ptr %i.cm, align 8, !noalias !38024
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38028)
  %i.cp = load i16, ptr %i.cf, align 2, !noalias !38031, !noundef !29
  %i.cq = zext i16 %i.cp to i64
  %i.cr = xor i64 %.sroa.013.0.i.i.i.i, -1
  %i.cs = add nsw i64 %i.cq, %i.cr                ; 4 uses
  %i.ct = trunc i64 %i.cs to i16
  store i16 %i.ct, ptr %i.co, align 2, !alias.scope !38028, !noalias !38024
  %i.cu = icmp ult i64 %i.cs, 12
  br i1 %i.cu, label %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i.i, label %bb.ac, !prof !5801

bb.ac:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1t_.exit.i.i.i.i.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cs, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1200) #75
          to label %.noexc.i.i.i.i.i unwind label %bb.ad, !noalias !38024

.noexc.i.i.i.i.i:                                 ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.cv = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef 24, i64 noundef 8) #70, !noalias !38024
  br label %.body

_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1t_.exit.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.013.0.i.i.i.i ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !range !190, !noalias !38031, !noundef !29 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr nonnull readonly align 1 %i.cy, i64 range(i64 0, 65536) %i.cs, i1 false), !alias.scope !38032, !noalias !38024
  %i.da = trunc nuw nsw i64 %.sroa.013.0.i.i.i.i to i16
  store i16 %i.da, ptr %i.cf, align 2, !noalias !38031
  %spec.select.i.i.i.i = select i1 %.sroa.09.0.i.i.i.i, ptr %i.cm, ptr %.sroa.0.0.i.i.i ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 10 ; 2 uses
  %i.dc = load i16, ptr %i.db, align 2, !noalias !38036, !noundef !29 ; 2 uses
  %i.dd = zext i16 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 12 ; 2 uses
  %.not.i14.not.i.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i.i, %i.dd
  br i1 %.not.i14.not.i.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.510.0.i.i.i.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = sub nuw nsw i64 %i.dd, %.sroa.510.0.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull align 1 %i.df, i64 %i.dh, i1 false), !alias.scope !38040, !noalias !38036
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i.i
  %i.di = add i16 %i.dc, 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.510.0.i.i.i.i
  store i8 %.sroa.04.0, ptr %i.dj, align 1, !alias.scope !38040, !noalias !38036
  store i16 %i.di, ptr %i.db, align 2, !noalias !38036
  %i.dk = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !noalias !38043, !noundef !29 ; 2 uses
  %.not.i82.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i82.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ag:                                            ; preds = %bb.x, %bb.w
  %i.dl = add nuw nsw i16 %i.br, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.4.0.i.ph.i.i.i
  store i8 %.sroa.04.0, ptr %i.dm, align 1, !alias.scope !38008, !noalias !38011
  store i16 %i.dl, ptr %i.cf, align 2, !noalias !38011
  br label %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB7_7set_val9SetValZSTE6insertB1b_.exit

._crit_edge.i.i.i:                                ; preds = %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i, %bb.af
  %.sroa.11.0.lcssa.i.i.i = phi i8 [ %i.cx, %bb.af ], [ %i.gq, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i ]
  %.sroa.9.0.lcssa.i.i.i = phi i64 [ 0, %bb.af ], [ %i.ea, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i ]
  %.sroa.7.0.lcssa.i.i.i = phi ptr [ %i.cm, %bb.af ], [ %i.ge, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38046)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !38049
  %i.dn = tail call noalias noundef align 8 dereferenceable_or_null(120) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !38049 ; 11 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.ah, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1y_.exit.i.i.i.i.i.i.i.i, !prof !341

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #71
          to label %.noexc.i.i34.i.i.i unwind label %bb.al, !noalias !38049

.noexc.i.i34.i.i.i:                               ; preds = %bb.ah
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1y_.exit.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i
  store ptr null, ptr %i.dn, align 8, !noalias !38049
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 10 ; 2 uses
  store i16 0, ptr %i.dp, align 2, !noalias !38049
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store ptr %i.ae, ptr %i.dq, align 8, !noalias !38049
  %i.dr = add i64 %i.bo, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ai, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1H_.exit.i.i.i.i, !prof !341

bb.ai:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1y_.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #71
          to label %bb.aj unwind label %bb.ak, !noalias !38049

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef 120, i64 noundef 8) #70, !noalias !38049
  br label %.body.i.i.i.i.i

bb.al:                                            ; preds = %bb.ah
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.al, %bb.ak
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1H_.exit.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1y_.exit.i.i.i.i.i.i.i.i
  store ptr %i.dn, ptr %i.ae, align 8, !noalias !38052
  %i.du = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i16 0, ptr %i.du, align 8, !noalias !38057
  store ptr %i.dn, ptr %i.a, align 8, !alias.scope !38058, !noalias !38059
  store i64 %i.dr, ptr %i.ac, align 8, !alias.scope !38058, !noalias !38059
  %i.dv = icmp eq i64 %.sroa.9.0.lcssa.i.i.i, %i.bo
  br i1 %i.dv, label %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtBb_7set_val9SetValZSTE12insert_entry0B1p_.exit.i.i.i, label %bb.am, !prof !36

bb.am:                                            ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1H_.exit.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1313, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1314) #75
          to label %.noexc16 unwind label %bb.h

.noexc16:                                         ; preds = %bb.am
  unreachable

_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtBb_7set_val9SetValZSTE12insert_entry0B1p_.exit.i.i.i: ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1H_.exit.i.i.i.i
  store i16 1, ptr %i.dp, align 2, !noalias !38060
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store i8 %.sroa.11.0.lcssa.i.i.i, ptr %i.dw, align 4, !noalias !38060
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
end_hunk_1
begin_hunk_2_@_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_attributes:bb.a
bb.qr:                                            ; preds = %.loopexit8921
  %i.azz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !45744
  unreachable

bb.qs:                                            ; preds = %bb.ql
  %i.baa = load ptr, ptr %i.dw, align 8, !alias.scope !45742, !noalias !45739, !nonnull !29, !noundef !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.baa, ptr noundef nonnull readonly align 8 dereferenceable(200) %i.cs, i64 200, i1 false), !noalias !45742
  store i64 1, ptr %i.dx, align 8, !alias.scope !45742, !noalias !45739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.cv

bb.qt:                                            ; preds = %bb.qm
  %i.bab = load ptr, ptr %i.dw, align 8, !alias.scope !45742, !noalias !45739, !nonnull !29, !noundef !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bab, ptr noundef nonnull readonly align 8 dereferenceable(200) %i.cs, i64 200, i1 false), !noalias !45742
  store i64 1, ptr %i.dx, align 8, !alias.scope !45742, !noalias !45739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.cw

bb.qu:                                            ; preds = %bb.qn
  %i.bac = load ptr, ptr %i.dw, align 8, !alias.scope !45742, !noalias !45739, !nonnull !29, !noundef !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bac, ptr noundef nonnull readonly align 8 dereferenceable(200) %i.cs, i64 200, i1 false), !noalias !45742
  store i64 1, ptr %i.dx, align 8, !alias.scope !45742, !noalias !45739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.cx

bb.qv:                                            ; preds = %bb.qo
  %i.bad = load ptr, ptr %i.dw, align 8, !alias.scope !45742, !noalias !45739, !nonnull !29, !noundef !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bad, ptr noundef nonnull readonly align 8 dereferenceable(200) %i.cs, i64 200, i1 false), !noalias !45742
  store i64 1, ptr %i.dx, align 8, !alias.scope !45742, !noalias !45739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.cy

bb.qw:                                            ; preds = %bb.qp
  %i.bae = load ptr, ptr %i.dw, align 8, !alias.scope !45742, !noalias !45739, !nonnull !29, !noundef !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bae, ptr noundef nonnull readonly align 8 dereferenceable(200) %i.cs, i64 200, i1 false), !noalias !45742
  store i64 1, ptr %i.dx, align 8, !alias.scope !45742, !noalias !45739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.cz

bb.qx:                                            ; preds = %bb.qq
  %i.baf = load ptr, ptr %i.dw, align 8, !alias.scope !45742, !noalias !45739, !nonnull !29, !noundef !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.baf, ptr noundef nonnull readonly align 8 dereferenceable(200) %i.cs, i64 200, i1 false), !noalias !45742
  store i64 1, ptr %i.dx, align 8, !alias.scope !45742, !noalias !45739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.da

.thread1438:                                      ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtBK_10expression10ExpressionEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_.exit.i957, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.582.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.566.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.554.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.520.i.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.59.i.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %.loopexit1585

bb.qy:                                            ; preds = %bb.gk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit
  %.sroa.53.i.sroa.0.4 = phi ptr [ %.sroa.53.i.sroa.0.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.53.i.sroa.0.2, %bb.gk ] ; 2 uses
  %.sroa.53.i.sroa.4.4 = phi i64 [ %.sroa.53.i.sroa.4.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.53.i.sroa.4.2, %bb.gk ] ; 2 uses
  %.sroa.53.i.sroa.5.4 = phi ptr [ %.sroa.53.i.sroa.5.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.53.i.sroa.5.2, %bb.gk ] ; 2 uses
  %.sroa.53.i.sroa.6.4 = phi i64 [ %.sroa.53.i.sroa.6.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.53.i.sroa.6.2, %bb.gk ] ; 2 uses
  %.sroa.53.i.sroa.7.4 = phi i64 [ %.sroa.53.i.sroa.7.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.53.i.sroa.7.2, %bb.gk ] ; 2 uses
  %.sroa.53.i.sroa.8.4 = phi i64 [ %.sroa.53.i.sroa.8.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.53.i.sroa.8.2, %bb.gk ] ; 2 uses
  %.sroa.53.i.sroa.9.4 = phi i64 [ %.sroa.53.i.sroa.9.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.53.i.sroa.9.2, %bb.gk ] ; 2 uses
  %.sroa.53.i.sroa.10.4 = phi i64 [ %.sroa.53.i.sroa.10.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.53.i.sroa.10.2, %bb.gk ] ; 2 uses
  %.sroa.53.i.sroa.11.4 = phi i64 [ %.sroa.53.i.sroa.11.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.53.i.sroa.11.2, %bb.gk ] ; 2 uses
  %.sroa.59.i.sroa.0.4 = phi ptr [ %.sroa.59.i.sroa.0.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.59.i.sroa.0.2, %bb.gk ] ; 2 uses
  %.sroa.59.i.sroa.4.4 = phi i64 [ %.sroa.59.i.sroa.4.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.59.i.sroa.4.2, %bb.gk ] ; 2 uses
  %.sroa.59.i.sroa.5.4 = phi ptr [ %.sroa.59.i.sroa.5.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.59.i.sroa.5.2, %bb.gk ] ; 2 uses
  %.sroa.59.i.sroa.6.4 = phi i64 [ %.sroa.59.i.sroa.6.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.59.i.sroa.6.2, %bb.gk ] ; 2 uses
  %.sroa.59.i.sroa.7.4 = phi i64 [ %.sroa.59.i.sroa.7.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.59.i.sroa.7.2, %bb.gk ] ; 2 uses
  %.sroa.59.i.sroa.8.4 = phi i64 [ %.sroa.59.i.sroa.8.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.59.i.sroa.8.2, %bb.gk ] ; 2 uses
  %.sroa.59.i.sroa.9.4 = phi i64 [ %.sroa.59.i.sroa.9.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.59.i.sroa.9.2, %bb.gk ] ; 2 uses
  %.sroa.59.i.sroa.10.4 = phi i64 [ %.sroa.59.i.sroa.10.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.59.i.sroa.10.2, %bb.gk ] ; 2 uses
  %.sroa.59.i.sroa.11.4 = phi i64 [ %.sroa.59.i.sroa.11.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.59.i.sroa.11.2, %bb.gk ] ; 2 uses
  %.sroa.520.i.sroa.0.4 = phi ptr [ %.sroa.520.i.sroa.0.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.520.i.sroa.0.2, %bb.gk ] ; 2 uses
  %.sroa.520.i.sroa.4.4 = phi i64 [ %.sroa.520.i.sroa.4.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.520.i.sroa.4.2, %bb.gk ] ; 2 uses
  %.sroa.520.i.sroa.5.4 = phi ptr [ %.sroa.520.i.sroa.5.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.520.i.sroa.5.2, %bb.gk ] ; 2 uses
  %.sroa.520.i.sroa.6.4 = phi i64 [ %.sroa.520.i.sroa.6.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.520.i.sroa.6.2, %bb.gk ] ; 2 uses
  %.sroa.520.i.sroa.7.4 = phi i64 [ %.sroa.520.i.sroa.7.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.520.i.sroa.7.2, %bb.gk ] ; 2 uses
  %.sroa.520.i.sroa.8.4 = phi i64 [ %.sroa.520.i.sroa.8.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.520.i.sroa.8.2, %bb.gk ] ; 2 uses
  %.sroa.520.i.sroa.9.4 = phi i64 [ %.sroa.520.i.sroa.9.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.520.i.sroa.9.2, %bb.gk ] ; 2 uses
  %.sroa.520.i.sroa.10.4 = phi i64 [ %.sroa.520.i.sroa.10.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.520.i.sroa.10.2, %bb.gk ] ; 2 uses
  %.sroa.520.i.sroa.11.4 = phi i64 [ %.sroa.520.i.sroa.11.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.520.i.sroa.11.2, %bb.gk ] ; 2 uses
  %.sroa.669.i.sroa.0.6 = phi i64 [ %.sroa.669.i.sroa.0.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.669.i.sroa.0.2, %bb.gk ] ; 2 uses
  %.sroa.669.i.sroa.5.6 = phi ptr [ %.sroa.669.i.sroa.5.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.669.i.sroa.5.2, %bb.gk ] ; 2 uses
  %.sroa.669.i.sroa.6.6 = phi i64 [ %.sroa.669.i.sroa.6.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.669.i.sroa.6.2, %bb.gk ] ; 2 uses
  %.sroa.669.i.sroa.7.6 = phi ptr [ %.sroa.669.i.sroa.7.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.669.i.sroa.7.2, %bb.gk ] ; 2 uses
  %.sroa.669.i.sroa.8.6 = phi i64 [ %.sroa.669.i.sroa.8.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.669.i.sroa.8.2, %bb.gk ] ; 2 uses
  %.sroa.669.i.sroa.9.6 = phi i64 [ %.sroa.669.i.sroa.9.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.669.i.sroa.9.2, %bb.gk ] ; 2 uses
  %.sroa.669.i.sroa.10.6 = phi i64 [ %.sroa.669.i.sroa.10.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.669.i.sroa.10.2, %bb.gk ] ; 2 uses
  %.sroa.669.i.sroa.11.6 = phi i64 [ %.sroa.669.i.sroa.11.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.669.i.sroa.11.2, %bb.gk ] ; 2 uses
  %.sroa.51.sroa.20.sroa.0.6 = phi i56 [ %.sroa.51.sroa.20.0.extract.trunc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.51.sroa.20.sroa.0.0, %bb.gk ]
  %.sroa.51.sroa.0.6 = phi i8 [ %.sroa.51.sroa.0.0.extract.trunc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.51.sroa.0.0, %bb.gk ] ; 2 uses
  %.sroa.57.3 = phi i64 [ %.sroa.57.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.57.2, %bb.gk ] ; 3 uses
  %.sroa.50.6 = phi i64 [ %.sroa.50.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.50.0, %bb.gk ] ; 2 uses
  %.sroa.49.6 = phi i64 [ %.sroa.49.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.49.0, %bb.gk ] ; 2 uses
  %.sroa.48.6 = phi i64 [ %.sroa.48.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.48.0, %bb.gk ] ; 2 uses
  %.val628 = phi i64 [ %.sroa.47.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.47.0, %bb.gk ] ; 4 uses
  %.sroa.46.6 = phi i64 [ %.sroa.46.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.46.0, %bb.gk ] ; 3 uses
  %.sroa.44.6 = phi ptr [ %.sroa.44.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.44.0, %bb.gk ] ; 2 uses
  %.sroa.43.6 = phi i64 [ %.sroa.43.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.43.0, %bb.gk ] ; 2 uses
  %.sroa.36.6 = phi ptr [ %.sroa.36.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.36.0, %bb.gk ] ; 2 uses
  %.sroa.20.6 = phi i64 [ %.sroa.20.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.20.0, %bb.gk ] ; 2 uses
  %.sroa.0996.6 = phi i64 [ %.sroa.0996.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.0996.0, %bb.gk ] ; 8 uses
  %.sroa.669.i.sroa.12.6 = phi i64 [ %.sroa.669.i.sroa.12.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.669.i.sroa.12.2, %bb.gk ] ; 2 uses
  %.sroa.669.i.sroa.13.6 = phi i64 [ %.sroa.669.i.sroa.13.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_.exit ], [ %.sroa.669.i.sroa.13.2, %bb.gk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.582.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.566.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.554.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.520.i.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.59.i.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %i.bag = icmp eq i64 %.sroa.0996.6, -1
  %i.bah = zext i56 %.sroa.51.sroa.20.sroa.0.6 to i64 ; 2 uses
  br i1 %i.bag, label %.loopexit1585, label %bb.qz

.loopexit1585:                                    ; preds = %bb.qy, %.thread1438
  %.sroa.20.61499 = phi i64 [ %.sroa.20.5, %.thread1438 ], [ %.sroa.20.6, %bb.qy ]
  %.sroa.36.61498 = phi ptr [ %.sroa.36.5, %.thread1438 ], [ %.sroa.36.6, %bb.qy ]
  %.sroa.43.61497 = phi i64 [ %.sroa.43.5, %.thread1438 ], [ %.sroa.43.6, %bb.qy ]
  %.sroa.44.61496 = phi ptr [ %.sroa.44.5, %.thread1438 ], [ %.sroa.44.6, %bb.qy ]
  %.sroa.46.61495 = phi i64 [ %.sroa.46.5, %.thread1438 ], [ %.sroa.46.6, %bb.qy ]
  %.sroa.47.61494 = phi i64 [ %.sroa.47.5, %.thread1438 ], [ %.val628, %bb.qy ]
  %.sroa.48.61493 = phi i64 [ %.sroa.48.5, %.thread1438 ], [ %.sroa.48.6, %bb.qy ]
  %.sroa.49.61492 = phi i64 [ %.sroa.49.5, %.thread1438 ], [ %.sroa.49.6, %bb.qy ]
  %.sroa.50.61491 = phi i64 [ %.sroa.50.5, %.thread1438 ], [ %.sroa.50.6, %bb.qy ]
  %.sroa.51.sroa.0.61490 = phi i8 [ %.sroa.51.sroa.0.5, %.thread1438 ], [ %.sroa.51.sroa.0.6, %bb.qy ]
  %.sroa.51.sroa.20.sroa.0.61489 = phi i64 [ %.sroa.51.sroa.20.sroa.0.5.in, %.thread1438 ], [ %i.bah, %bb.qy ]
  %.sroa.51.sroa.20.0.insert.shift = shl nuw i64 %.sroa.51.sroa.20.sroa.0.61489, 8
  %.sroa.51.sroa.0.0.insert.ext = zext i8 %.sroa.51.sroa.0.61490 to i64
  %.sroa.51.sroa.0.0.insert.insert = or disjoint i64 %.sroa.51.sroa.20.0.insert.shift, %.sroa.51.sroa.0.0.insert.ext
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.58)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.59)
  %i.bai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.20.61499, ptr %i.bai, align 8
  %.sroa.41249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.36.61498, ptr %.sroa.41249.0..sroa_idx, align 8
  %.sroa.51250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.43.61497, ptr %.sroa.51250.0..sroa_idx, align 8
  %.sroa.61251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.44.61496, ptr %.sroa.61251.0..sroa_idx, align 8
  %.sroa.71252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.46.61495, ptr %.sroa.71252.0..sroa_idx, align 8
  %.sroa.81253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.47.61494, ptr %.sroa.81253.0..sroa_idx, align 8
  %.sroa.91254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.48.61493, ptr %.sroa.91254.0..sroa_idx, align 8
  %.sroa.101255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.49.61492, ptr %.sroa.101255.0..sroa_idx, align 8
  %.sroa.111256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.50.61491, ptr %.sroa.111256.0..sroa_idx, align 8
  %.sroa.121257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.51.sroa.0.0.insert.insert, ptr %.sroa.121257.0..sroa_idx, align 8
  br label %.sink.split

bb.qz:                                            ; preds = %bb.qy
  %.sroa.51.sroa.20.0.insert.shift1152 = shl nuw i64 %i.bah, 8
  %.sroa.51.sroa.0.0.insert.ext1135 = zext i8 %.sroa.51.sroa.0.6 to i64
  %.sroa.51.sroa.0.0.insert.insert1137 = or disjoint i64 %.sroa.51.sroa.20.0.insert.shift1152, %.sroa.51.sroa.0.0.insert.ext1135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5229.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.56, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5229.sroa.5.0..sroa.5229.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.58, i64 120, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.5229.sroa.6.0..sroa.5229.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.59, i64 1088, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.58)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.59)
  store i64 %.sroa.0996.6, ptr %i.bz, align 8
  store i64 %.sroa.20.6, ptr %.sroa.4228.0..sroa_idx, align 8
  store ptr %.sroa.36.6, ptr %.sroa.4228.sroa.4.0..sroa.4228.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.43.6, ptr %.sroa.4228.sroa.5.0..sroa.4228.0..sroa_idx.sroa_idx, align 8
  store ptr %.sroa.44.6, ptr %.sroa.4228.sroa.6.0..sroa.4228.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.46.6, ptr %.sroa.4228.sroa.7.0..sroa.4228.0..sroa_idx.sroa_idx, align 8
  store i64 %.val628, ptr %.sroa.4228.sroa.8.0..sroa.4228.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.48.6, ptr %.sroa.4228.sroa.9.0..sroa.4228.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.49.6, ptr %.sroa.4228.sroa.10.0..sroa.4228.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.50.6, ptr %.sroa.4228.sroa.11.0..sroa.4228.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.51.sroa.0.0.insert.insert1137, ptr %.sroa.4228.sroa.12.0..sroa.4228.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.57.3, ptr %.sroa.5229.sroa.4.0..sroa.5229.0..sroa_idx.sroa_idx, align 8
  %i.baj = icmp ne i64 %.sroa.0996.6, 3
  call void @llvm.assume(i1 %i.baj)
  %i.bak = add nsw i64 %.sroa.0996.6, -2
  %i.bal = icmp samesign ugt i64 %.sroa.0996.6, 1 ; 2 uses
  %i.bam = select i1 %i.bal, i64 %i.bak, i64 1
  %i.ban = inttoptr i64 %.sroa.46.6 to ptr        ; 2 uses
  switch i64 %i.bam, label %2 [
    i64 1, label %_RNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB4_9Attribute10repeatable.exit.thread
    i64 8, label %_RNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB4_9Attribute10repeatable.exit.thread
    i64 12, label %_RNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB4_9Attribute10repeatable.exit.thread
    i64 15, label %_RNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB4_9Attribute10repeatable.exit.thread
  ]

.thread1525.loopexit:                             ; preds = %.loopexit1556.a, %.loopexit1555
  %lpad.loopexit1586 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1506

.thread1525.loopexit.split-lp:                    ; preds = %.invoke12180, %bb.tm, %bb.se, %bb.rr
  %lpad.loopexit.split-lp1587 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1506

bb.ra:                                            ; preds = %bb.ul
  %lpad.thr_comm.split-lp1524 = landingpad { ptr, i32 }
          cleanup
  br label %.body

2:                                                ; preds = %bb.qz
  %.not.i712 = icmp eq ptr %i.ht, null
  br i1 %.not.i712, label %_RNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB4_9Attribute10repeatable.exit.thread, label %bb.rb

bb.rb:                                            ; preds = %2
  %3 = add i64 %.sroa.0996.6, 254
  %4 = and i64 %3, 255
  %5 = select i1 %i.bal, i64 %4, i64 1
  br label %bb.rc

bb.rc:                                            ; preds = %bb.rf, %bb.rb
  %.sroa.3.0.i.i = phi i64 [ %.val620965.a, %bb.rb ], [ %i.bbd, %bb.rf ] ; 2 uses
  %.sroa.0.0.i.i713 = phi ptr [ %i.ht, %bb.rb ], [ %i.bbc, %bb.rf ] ; 4 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i713, i64 100 ; 2 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i713, i64 98
  %i.baq = load i16, ptr %i.bap, align 2, !noalias !45745, !noundef !29 ; 2 uses
  %i.bar = zext i16 %i.baq to i64                 ; 3 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bao, i64 %i.bar
  %i.bat = icmp eq i16 %i.baq, 0
  br i1 %i.bat, label %._crit_edge15310, label %.lr.ph15309

bb.rd:                                            ; preds = %.lr.ph15309
  %i.bau = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i15307, i64 1 ; 2 uses
  %i.bav = add nuw nsw i64 %.sroa.8.0.i.i.i15306, 1
  %i.baw = icmp eq ptr %i.bau, %i.bas
  br i1 %i.baw, label %._crit_edge15310, label %.lr.ph15309

.lr.ph15309:                                      ; preds = %bb.rc, %bb.rd
  %.sroa.0.03.i.i.i15307 = phi ptr [ %i.bau, %bb.rd ], [ %i.bao, %bb.rc ] ; 2 uses
  %.sroa.8.0.i.i.i15306 = phi i64 [ %i.bav, %bb.rd ], [ 0, %bb.rc ] ; 4 uses
  %.val6.i.i.i = load i8, ptr %.sroa.0.03.i.i.i15307, align 1, !range !34820, !noalias !45745, !noundef !29
  %6 = zext nneg i8 %.val6.i.i.i to i64
  %i.bax = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %5, i64 %6)
  switch i8 %i.bax, label %bb.re [
    i8 -1, label %._crit_edge15310
    i8 0, label %bb.rg
    i8 1, label %bb.rd
  ]

bb.re:                                            ; preds = %.lr.ph15309
  unreachable

._crit_edge15310:                                 ; preds = %bb.rd, %.lr.ph15309, %bb.rc
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.bar, %bb.rc ], [ %i.bar, %bb.rd ], [ %.sroa.8.0.i.i.i15306, %.lr.ph15309 ] ; 2 uses
  %i.bay = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.bay, label %_RNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB4_9Attribute10repeatable.exit.thread, label %bb.rf

bb.rf:                                            ; preds = %._crit_edge15310
  %i.baz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i713, i64 112
  %i.bba = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  call void @llvm.assume(i1 %i.bba)
  %i.bbb = getelementptr inbounds nuw [8 x i8], ptr %i.baz, i64 %.sroa.4.0.i.ph.i.i
  %i.bbc = load ptr, ptr %i.bbb, align 8, !noalias !45745, !nonnull !29, !noundef !29
  %i.bbd = add i64 %.sroa.3.0.i.i, -1
  br label %bb.rc

_RNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB4_9Attribute10repeatable.exit.thread: ; preds = %._crit_edge15310, %2, %bb.qz, %bb.qz, %bb.qz, %bb.qz
  %i.bbe = icmp samesign ult i64 %.sroa.0996.6, 2
  br i1 %i.bbe, label %bb.rm, label %bb.rq

bb.rg:                                            ; preds = %.lr.ph15309
  %i.bbf = icmp samesign ult i64 %.sroa.8.0.i.i.i15306, 11
  call void @llvm.assume(i1 %i.bbf)
  %i.bbg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i713, i64 8
  %i.bbh = getelementptr inbounds nuw [8 x i8], ptr %i.bbg, i64 %.sroa.8.0.i.i.i15306
  %i.bbi = load i64, ptr %i.bbh, align 8, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bbj, ptr noundef nonnull align 8 dereferenceable(72) %i.cz, i64 72, i1 false)
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.bbi, ptr %i.bbk, align 8
  store i64 -9223372036854775785, ptr %i.bw, align 8
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !45748
  %i.bbl = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !45748 ; 3 uses
  %i.bbm = icmp eq ptr %i.bbl, null
  br i1 %i.bbm, label %bb.rh, label %bb.rk, !prof !7

bb.rh:                                            ; preds = %bb.rg
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71
          to label %.noexc.i.i715 unwind label %bb.ri, !noalias !45759

.noexc.i.i715:                                    ; preds = %bb.rh
  unreachable

bb.ri:                                            ; preds = %bb.rh
  %i.bbn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.bw) #72
          to label %.thread1506 unwind label %bb.rj, !noalias !45760

bb.rj:                                            ; preds = %bb.ri
  %i.bbo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !45760
  unreachable

bb.rk:                                            ; preds = %bb.rg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bbl, ptr noundef nonnull align 8 dereferenceable(128) %i.bw, i64 128, i1 false), !noalias !45760
  %.sroa.41181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.41181.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.da, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %bb.rl

bb.rl:                                            ; preds = %bb.sj, %bb.rw, %bb.rk
  %.sink = phi ptr [ %i.beh, %bb.sj ], [ %i.bcv, %bb.rw ], [ %i.bbl, %bb.rk ]
  %i.bbp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bbp, align 8
  store i64 1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9attribute9AttributeEBF_(ptr noalias nofree noundef align 8 dereferenceable(1352) %i.bz)
          to label %bb.sk unwind label %.loopexit.split-lp1581

bb.rm:                                            ; preds = %_RNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB4_9Attribute10repeatable.exit.thread
  %.val625 = load ptr, ptr %i.de, align 8, !noundef !29 ; 2 uses
  %.not.i719 = icmp eq ptr %.val625, null
  br i1 %.not.i719, label %.loopexit1556.a, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.rm
  %.val626 = load i64, ptr %i.gt, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.rp
  %.sroa.3.0.i.i720 = phi i64 [ %i.bcl, %bb.rp ], [ %.val626, %.preheader.i.preheader ] ; 2 uses
  %.sroa.0.0.i.i721 = phi ptr [ %i.bck, %bb.rp ], [ %.val625, %.preheader.i.preheader ] ; 4 uses
  %i.bbq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i721, i64 8 ; 2 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i721, i64 362
  %i.bbs = load i16, ptr %i.bbr, align 2, !noalias !45761, !noundef !29 ; 2 uses
  %i.bbt = zext i16 %i.bbs to i64                 ; 3 uses
  %.idx15356 = mul nuw nsw i64 %i.bbt, 24
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbq, i64 %.idx15356
  %i.bbv = icmp eq i16 %i.bbs, 0
  br i1 %i.bbv, label %._crit_edge15317, label %.lr.ph15316.preheader

.lr.ph15316.preheader:                            ; preds = %.preheader.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ban) ]
  br label %.lr.ph15316

bb.rn:                                            ; preds = %.lr.ph15316
  %i.bbw = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i15315, i64 24 ; 2 uses
  %i.bbx = add nuw nsw i64 %.sroa.8.0.i.i.i72215314, 1
  %i.bby = icmp eq ptr %i.bbw, %i.bbu
  br i1 %i.bby, label %._crit_edge15317, label %.lr.ph15316

.lr.ph15316:                                      ; preds = %.lr.ph15316.preheader, %bb.rn
  %.sroa.0.01.i.i.i15315 = phi ptr [ %i.bbw, %bb.rn ], [ %i.bbq, %.lr.ph15316.preheader ] ; 3 uses
  %.sroa.8.0.i.i.i72215314 = phi i64 [ %i.bbx, %bb.rn ], [ 0, %.lr.ph15316.preheader ] ; 4 uses
  %i.bbz = getelementptr i8, ptr %.sroa.0.01.i.i.i15315, i64 8
  %.val7.i.i.i = load ptr, ptr %i.bbz, align 8, !noalias !45761, !nonnull !29, !noundef !29
  %i.bca = getelementptr i8, ptr %.sroa.0.01.i.i.i15315, i64 16
  %.val8.i.i.i = load i64, ptr %i.bca, align 8, !noalias !45761, !noundef !29 ; 2 uses
  %spec.store.select.i.i.i.i.i.i723 = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val628, i64 range(i64 0, -9223372036854775808) %.val8.i.i.i)
  %i.bcb = call i32 @memcmp(ptr nonnull readonly %i.ban, ptr nonnull readonly %.val7.i.i.i, i64 %spec.store.select.i.i.i.i.i.i723), !alias.scope !45764, !noalias !45761 ; 2 uses
  %i.bcc = sext i32 %i.bcb to i64
  %i.bcd = icmp eq i32 %i.bcb, 0
  %i.bce = sub nsw i64 %.val628, %.val8.i.i.i
  %spec.select.i.i.i.i.i.i724 = select i1 %i.bcd, i64 %i.bce, i64 %i.bcc
  %i.bcf = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i724, i64 0)
  switch i8 %i.bcf, label %bb.ro [
    i8 -1, label %._crit_edge15317
    i8 0, label %bb.rr
    i8 1, label %bb.rn
  ]

bb.ro:                                            ; preds = %.lr.ph15316
  unreachable

._crit_edge15317:                                 ; preds = %bb.rn, %.lr.ph15316, %.preheader.i
  %.sroa.4.0.i.ph.i.i726 = phi i64 [ %i.bbt, %.preheader.i ], [ %i.bbt, %bb.rn ], [ %.sroa.8.0.i.i.i72215314, %.lr.ph15316 ] ; 2 uses
  %i.bcg = icmp eq i64 %.sroa.3.0.i.i720, 0
  br i1 %i.bcg, label %.loopexit1556.a, label %bb.rp

bb.rp:                                            ; preds = %._crit_edge15317
  %i.bch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i721, i64 368
  %i.bci = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i726, 12
  call void @llvm.assume(i1 %i.bci)
  %i.bcj = getelementptr inbounds nuw [8 x i8], ptr %i.bch, i64 %.sroa.4.0.i.ph.i.i726
  %i.bck = load ptr, ptr %i.bcj, align 8, !noalias !45761, !nonnull !29, !noundef !29
  %i.bcl = add i64 %.sroa.3.0.i.i720, -1
  br label %.preheader.i

bb.rq:                                            ; preds = %bb.rz, %_RNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB4_9Attribute10repeatable.exit.thread
  %i.bcm = phi i64 [ %.pre8756, %bb.rz ], [ %.sroa.0996.6, %_RNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB4_9Attribute10repeatable.exit.thread ] ; 3 uses
  %i.bcn = icmp ne i64 %i.bcm, 3
  call void @llvm.assume(i1 %i.bcn)
  %i.bco = icmp eq i64 %i.bcm, 14
  br i1 %i.bco, label %bb.sa, label %._crit_edge

._crit_edge:                                      ; preds = %bb.rq
  %.pre8758.a = load i64, ptr %i.gu, align 8
  br label %bb.so

.loopexit1556.a:                                  ; preds = %._crit_edge15317, %bb.rm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.4228.sroa.6.0..sroa.4228.0..sroa_idx.sroa_idx)
          to label %bb.ry unwind label %.thread1525.loopexit

bb.rr:                                            ; preds = %.lr.ph15316
  %i.bcp = icmp samesign ult i64 %.sroa.8.0.i.i.i72215314, 11
  call void @llvm.assume(i1 %i.bcp)
  %i.bcq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i721, i64 272
  %i.bcr = getelementptr inbounds nuw [8 x i8], ptr %i.bcq, i64 %.sroa.8.0.i.i.i72215314
  %i.bcs = load i64, ptr %i.bcr, align 8, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.4228.sroa.6.0..sroa.4228.0..sroa_idx.sroa_idx)
          to label %bb.rs unwind label %.thread1525.loopexit.split-lp

bb.rs:                                            ; preds = %bb.rr
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bct, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i64 %i.bcs, ptr %i.bcu, align 8
  store i64 -9223372036854775786, ptr %i.bv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !45768
  %i.bcv = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !45768 ; 3 uses
  %i.bcw = icmp eq ptr %i.bcv, null
  br i1 %i.bcw, label %bb.rt, label %bb.rw, !prof !7

bb.rt:                                            ; preds = %bb.rs
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71
          to label %.noexc.i.i727 unwind label %bb.ru, !noalias !45779

.noexc.i.i727:                                    ; preds = %bb.rt
  unreachable

bb.ru:                                            ; preds = %bb.rt
  %i.bcx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.bv) #72
          to label %.thread1506 unwind label %bb.rv, !noalias !45780

bb.rv:                                            ; preds = %bb.ru
  %i.bcy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !45780
  unreachable

bb.rw:                                            ; preds = %bb.rs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bcv, ptr noundef nonnull align 8 dereferenceable(128) %i.bv, i64 128, i1 false), !noalias !45780
  %.sroa.41183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.41183.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.da, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.rl

bb.rx:                                            ; preds = %bb.ry
  %i.bcz = landingpad { ptr, i32 }
          cleanup
  br label %.thread1506

bb.ry:                                            ; preds = %.loopexit1556.a
  %i.bda = load i64, ptr %i.gu, align 8, !noundef !29
  invoke fastcc void @_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringjE6insertCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.de, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bt, i64 noundef %i.bda)
          to label %bb.rz unwind label %bb.rx

bb.rz:                                            ; preds = %bb.ry
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  %.pre8756 = load i64, ptr %i.bz, align 8, !range !13682
  br label %bb.rq

bb.sa:                                            ; preds = %bb.rq
  %.val622 = load ptr, ptr %i.dd, align 8, !noundef !29 ; 2 uses
  %.sroa.4228.0..sroa_idx.val = load ptr, ptr %.sroa.4228.sroa.4.0..sroa.4228.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.4228.0..sroa_idx.val624 = load i64, ptr %.sroa.4228.sroa.5.0..sroa.4228.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.not.i733 = icmp eq ptr %.val622, null
  br i1 %.not.i733, label %.loopexit1555, label %.preheader.i734.preheader

.preheader.i734.preheader:                        ; preds = %bb.sa
  %.val623 = load i64, ptr %i.gv, align 8
  br label %.preheader.i734

.preheader.i734:                                  ; preds = %.preheader.i734.preheader, %bb.sd
  %.sroa.3.0.i.i735 = phi i64 [ %i.bdw, %bb.sd ], [ %.val623, %.preheader.i734.preheader ] ; 2 uses
  %.sroa.0.0.i.i736 = phi ptr [ %i.bdv, %bb.sd ], [ %.val622, %.preheader.i734.preheader ] ; 4 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i736, i64 8 ; 2 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i736, i64 362
  %i.bdd = load i16, ptr %i.bdc, align 2, !noalias !45781, !noundef !29 ; 2 uses
  %i.bde = zext i16 %i.bdd to i64                 ; 3 uses
  %.idx15357 = mul nuw nsw i64 %i.bde, 24
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bdb, i64 %.idx15357
  %i.bdg = icmp eq i16 %i.bdd, 0
  br i1 %i.bdg, label %._crit_edge15324, label %.lr.ph15323.preheader

.lr.ph15323.preheader:                            ; preds = %.preheader.i734
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4228.0..sroa_idx.val) ]
  br label %.lr.ph15323

bb.sb:                                            ; preds = %.lr.ph15323
  %i.bdh = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i73815322, i64 24 ; 2 uses
  %i.bdi = add nuw nsw i64 %.sroa.8.0.i.i.i73715321, 1
  %i.bdj = icmp eq ptr %i.bdh, %i.bdf
  br i1 %i.bdj, label %._crit_edge15324, label %.lr.ph15323

.lr.ph15323:                                      ; preds = %.lr.ph15323.preheader, %bb.sb
  %.sroa.0.01.i.i.i73815322 = phi ptr [ %i.bdh, %bb.sb ], [ %i.bdb, %.lr.ph15323.preheader ] ; 3 uses
  %.sroa.8.0.i.i.i73715321 = phi i64 [ %i.bdi, %bb.sb ], [ 0, %.lr.ph15323.preheader ] ; 4 uses
  %i.bdk = getelementptr i8, ptr %.sroa.0.01.i.i.i73815322, i64 8
  %.val7.i.i.i739 = load ptr, ptr %i.bdk, align 8, !noalias !45781, !nonnull !29, !noundef !29
  %i.bdl = getelementptr i8, ptr %.sroa.0.01.i.i.i73815322, i64 16
  %.val8.i.i.i740 = load i64, ptr %i.bdl, align 8, !noalias !45781, !noundef !29 ; 2 uses
  %spec.store.select.i.i.i.i.i.i741 = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.4228.0..sroa_idx.val624, i64 range(i64 0, -9223372036854775808) %.val8.i.i.i740)
  %i.bdm = call i32 @memcmp(ptr nonnull readonly %.sroa.4228.0..sroa_idx.val, ptr nonnull readonly %.val7.i.i.i739, i64 %spec.store.select.i.i.i.i.i.i741), !alias.scope !45784, !noalias !45781 ; 2 uses
  %i.bdn = sext i32 %i.bdm to i64
  %i.bdo = icmp eq i32 %i.bdm, 0
  %i.bdp = sub nsw i64 %.sroa.4228.0..sroa_idx.val624, %.val8.i.i.i740
  %spec.select.i.i.i.i.i.i742 = select i1 %i.bdo, i64 %i.bdp, i64 %i.bdn
  %i.bdq = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i742, i64 0)
  switch i8 %i.bdq, label %bb.sc [
    i8 -1, label %._crit_edge15324
    i8 0, label %bb.se
    i8 1, label %bb.sb
  ]

bb.sc:                                            ; preds = %.lr.ph15323
  unreachable

._crit_edge15324:                                 ; preds = %bb.sb, %.lr.ph15323, %.preheader.i734
  %.sroa.4.0.i.ph.i.i745 = phi i64 [ %i.bde, %.preheader.i734 ], [ %i.bde, %bb.sb ], [ %.sroa.8.0.i.i.i73715321, %.lr.ph15323 ] ; 2 uses
  %i.bdr = icmp eq i64 %.sroa.3.0.i.i735, 0
  br i1 %i.bdr, label %.loopexit1555, label %bb.sd

bb.sd:                                            ; preds = %._crit_edge15324
  %i.bds = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i736, i64 368
  %i.bdt = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i745, 12
  call void @llvm.assume(i1 %i.bdt)
  %i.bdu = getelementptr inbounds nuw [8 x i8], ptr %i.bds, i64 %.sroa.4.0.i.ph.i.i745
  %i.bdv = load ptr, ptr %i.bdu, align 8, !noalias !45781, !nonnull !29, !noundef !29
  %i.bdw = add i64 %.sroa.3.0.i.i735, -1
  br label %.preheader.i734

.loopexit1555:                                    ; preds = %._crit_edge15324, %bb.sa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.4228.0..sroa_idx)
          to label %bb.sm unwind label %.thread1525.loopexit

bb.se:                                            ; preds = %.lr.ph15323
  %i.bdx = icmp samesign ult i64 %.sroa.8.0.i.i.i73715321, 11
  call void @llvm.assume(i1 %i.bdx)
  %i.bdy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i736, i64 272
  %i.bdz = getelementptr inbounds nuw [8 x i8], ptr %i.bdy, i64 %.sroa.8.0.i.i.i73715321
  %i.bea = load i64, ptr %i.bdz, align 8, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.experimental.noalias.scope.decl(metadata !45788)
  call void @llvm.experimental.noalias.scope.decl(metadata !45791)
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(104) %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.4228.0..sroa_idx)
          to label %bb.sf unwind label %.thread1525.loopexit.split-lp

bb.sf:                                            ; preds = %bb.se
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bz, i64 104
  %i.bec = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bec, ptr noundef nonnull readonly align 8 dereferenceable(72) %.sroa.4228.sroa.6.0..sroa.4228.0..sroa_idx.sroa_idx, i64 72, i1 false), !alias.scope !45793
  %i.bed = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bee = load <4 x i8>, ptr %i.beb, align 8, !alias.scope !45791, !noalias !45788
  store <4 x i8> %i.bee, ptr %i.bed, align 8, !alias.scope !45788, !noalias !45791
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bs, i64 112
  store i64 %i.bea, ptr %i.bef, align 8
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.beg, ptr noundef nonnull align 8 dereferenceable(104) %i.br, i64 104, i1 false)
  store i64 -9223372036854775781, ptr %i.bs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !45794
  %i.beh = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !45794 ; 3 uses
  %i.bei = icmp eq ptr %i.beh, null
  br i1 %i.bei, label %bb.sg, label %bb.sj, !prof !7

bb.sg:                                            ; preds = %bb.sf
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71
          to label %.noexc.i.i749 unwind label %bb.sh, !noalias !45805

.noexc.i.i749:                                    ; preds = %bb.sg
  unreachable

bb.sh:                                            ; preds = %bb.sg
  %i.bej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.bs) #72
          to label %.thread1506 unwind label %bb.si, !noalias !45806

bb.si:                                            ; preds = %bb.sh
  %i.bek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !45806
  unreachable

bb.sj:                                            ; preds = %bb.sf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.beh, ptr noundef nonnull align 8 dereferenceable(128) %i.bs, i64 128, i1 false), !noalias !45806
  %.sroa.41185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.41185.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.da, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %bb.rl

.sink.split:                                      ; preds = %.loopexit1585, %bb.un
  %.ph15359 = phi i64 [ %i.hs, %.loopexit1585 ], [ %i.bpf, %bb.un ]
  %.val620972.ph = phi i64 [ %.val620965.a, %.loopexit1585 ], [ %.val620963, %bb.un ]
  %.ph15360 = phi ptr [ %i.ht, %.loopexit1585 ], [ %i.bpg, %bb.un ]
  store i64 1, ptr %0, align 8
  br label %bb.sk

bb.sk:                                            ; preds = %.sink.split, %bb.rl
  %i.bel = phi i64 [ %i.hs, %bb.rl ], [ %.ph15359, %.sink.split ]
  %.val620972 = phi i64 [ %.val620965.a, %bb.rl ], [ %.val620972.ph, %.sink.split ]
  %i.bem = phi ptr [ %i.ht, %bb.rl ], [ %.ph15360, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtB1d_10expression10ExpressionEEEB1d_.exit

bb.sl:                                            ; preds = %bb.sm
  %i.ben = landingpad { ptr, i32 }
          cleanup
  br label %.thread1506

bb.sm:                                            ; preds = %.loopexit1555
  %i.beo = load i64, ptr %i.gu, align 8, !noundef !29 ; 2 uses
  invoke fastcc void @_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringjE6insertCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dd, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bq, i64 noundef %i.beo)
          to label %bb.sn unwind label %bb.sl

bb.sn:                                            ; preds = %bb.sm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %.val.pre = load i64, ptr %i.bz, align 8, !range !13682
  br label %bb.so

bb.so:                                            ; preds = %._crit_edge, %bb.sn
  %i.bep = phi i64 [ %i.beo, %bb.sn ], [ %.pre8758.a, %._crit_edge ] ; 4 uses
  %.val = phi i64 [ %.val.pre, %bb.sn ], [ %i.bcm, %._crit_edge ] ; 3 uses
  %i.beq = icmp ne i64 %.val, 3
  call void @llvm.assume(i1 %i.beq)
  %i.ber = icmp samesign ugt i64 %.val, 1
  %i.bes = trunc nuw nsw i64 %.val to i8
  %i.bet = add nsw i8 %i.bes, -2
  %switch.idx.cast.i.i747 = select i1 %i.ber, i8 %i.bet, i8 1 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45807)
  %.not.i.i757 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i757, label %.thread.i788, label %7

7:                                                ; preds = %bb.so
  %8 = zext nneg i8 %switch.idx.cast.i.i747 to i64
  br label %bb.sp

bb.sp:                                            ; preds = %bb.ss, %7
  %.sroa.3.0.i.i.i758 = phi i64 [ %.val620965.a, %7 ], [ %i.bfj, %bb.ss ] ; 2 uses
  %.sroa.0.0.i.i.i759 = phi ptr [ %i.ht, %7 ], [ %i.bfi, %bb.ss ] ; 11 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i759, i64 100 ; 6 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i759, i64 98
  %i.bew = load i16, ptr %i.bev, align 2, !noalias !45810, !noundef !29 ; 4 uses
  %i.bex = zext i16 %i.bew to i64                 ; 5 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %i.beu, i64 %i.bex
  %i.bez = icmp eq i16 %i.bew, 0
  br i1 %i.bez, label %._crit_edge15332, label %.lr.ph15331

bb.sq:                                            ; preds = %.lr.ph15331
  %i.bfa = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i76115329, i64 1 ; 2 uses
  %i.bfb = add nuw nsw i64 %.sroa.8.0.i.i.i.i76015328, 1
  %i.bfc = icmp eq ptr %i.bfa, %i.bey
  br i1 %i.bfc, label %._crit_edge15332, label %.lr.ph15331

.lr.ph15331:                                      ; preds = %bb.sp, %bb.sq
  %.sroa.0.03.i.i.i.i76115329 = phi ptr [ %i.bfa, %bb.sq ], [ %i.beu, %bb.sp ] ; 2 uses
  %.sroa.8.0.i.i.i.i76015328 = phi i64 [ %i.bfb, %bb.sq ], [ 0, %bb.sp ] ; 3 uses
  %.val6.i.i.i.i = load i8, ptr %.sroa.0.03.i.i.i.i76115329, align 1, !range !34820, !noalias !45810, !noundef !29
  %9 = zext nneg i8 %.val6.i.i.i.i to i64
  %i.bfd = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %8, i64 %9)
  switch i8 %i.bfd, label %bb.sr [
    i8 -1, label %._crit_edge15332
    i8 0, label %bb.st
    i8 1, label %bb.sq
  ]

bb.sr:                                            ; preds = %.lr.ph15331
  unreachable

._crit_edge15332:                                 ; preds = %bb.sq, %.lr.ph15331, %bb.sp
  %.sroa.4.0.i.ph.i.i.i763 = phi i64 [ %i.bex, %bb.sp ], [ %i.bex, %bb.sq ], [ %.sroa.8.0.i.i.i.i76015328, %.lr.ph15331 ] ; 14 uses
  %i.bfe = icmp eq i64 %.sroa.3.0.i.i.i758, 0
  br i1 %i.bfe, label %bb.su, label %bb.ss

bb.ss:                                            ; preds = %._crit_edge15332
  %i.bff = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i759, i64 112
  %i.bfg = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i763, 12
  call void @llvm.assume(i1 %i.bfg)
  %i.bfh = getelementptr inbounds nuw [8 x i8], ptr %i.bff, i64 %.sroa.4.0.i.ph.i.i.i763
  %i.bfi = load ptr, ptr %i.bfh, align 8, !noalias !45810, !nonnull !29, !noundef !29
  %i.bfj = add i64 %.sroa.3.0.i.i.i758, -1
  br label %bb.sp

bb.st:                                            ; preds = %.lr.ph15331
  %i.bfk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i759, i64 8
  %i.bfl = getelementptr inbounds nuw [8 x i8], ptr %i.bfk, i64 %.sroa.8.0.i.i.i.i76015328
  store i64 %i.bep, ptr %i.bfl, align 8, !noalias !45807
  br label %bb.uh

bb.su:                                            ; preds = %._crit_edge15332
  %i.bfm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i759, i64 98 ; 3 uses
  %i.bfn = icmp ult i16 %i.bew, 11
  br i1 %i.bfn, label %bb.sw, label %bb.sv

bb.sv:                                            ; preds = %bb.su
  %i.bfo = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i763, 5
  br i1 %i.bfo, label %bb.tb, label %bb.sy

bb.sw:                                            ; preds = %bb.su
  %.not.i.i.i.i.not.i787 = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i763, %i.bex
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.beu, i64 %.sroa.4.0.i.ph.i.i.i763 ; 3 uses
  br i1 %.not.i.i.i.i.not.i787, label %bb.sx, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindEB18_.exit.i.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindEB18_.exit.i.i.i.i.i: ; preds = %bb.sw
  store i8 %switch.idx.cast.i.i747, ptr %i.bfp, align 1, !alias.scope !45816, !noalias !45819
  br label %bb.tg

bb.sx:                                            ; preds = %bb.sw
  %i.bfq = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i763, 1 ; 2 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.beu, i64 %i.bfq
  %i.bfs = sub nuw nsw i64 %i.bex, %.sroa.4.0.i.ph.i.i.i763 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bfr, ptr nonnull align 1 %i.bfp, i64 %i.bfs, i1 false), !alias.scope !45816, !noalias !45819
  store i8 %switch.idx.cast.i.i747, ptr %i.bfp, align 1, !alias.scope !45816, !noalias !45819
  %i.bft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i759, i64 8 ; 2 uses
  %i.bfu = getelementptr inbounds nuw [8 x i8], ptr %i.bft, i64 %.sroa.4.0.i.ph.i.i.i763
  %i.bfv = getelementptr inbounds nuw [8 x i8], ptr %i.bft, i64 %i.bfq
  %i.bfw = shl nuw nsw i64 %i.bfs, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bfv, ptr nonnull align 8 %i.bfu, i64 %i.bfw, i1 false), !alias.scope !45832, !noalias !45819
  br label %bb.tg

bb.sy:                                            ; preds = %bb.sv
  switch i64 %.sroa.4.0.i.ph.i.i.i763, label %bb.sz [
    i64 5, label %bb.tb
    i64 6, label %bb.ta
  ]

bb.sz:                                            ; preds = %bb.sy
  %i.bfx = add nsw i64 %.sroa.4.0.i.ph.i.i.i763, -7
  br label %bb.tb

bb.ta:                                            ; preds = %bb.sy
  br label %bb.tb

bb.tb:                                            ; preds = %bb.ta, %bb.sz, %bb.sy, %bb.sv
  %.sroa.09.0.i.i.i.i764 = phi i1 [ true, %bb.ta ], [ true, %bb.sz ], [ false, %bb.sv ], [ false, %bb.sy ]
  %.sroa.510.0.i.i.i.i765 = phi i64 [ 0, %bb.ta ], [ %i.bfx, %bb.sz ], [ %.sroa.4.0.i.ph.i.i.i763, %bb.sv ], [ %.sroa.4.0.i.ph.i.i.i763, %bb.sy ] ; 6 uses
  %.sroa.013.0.i.i.i.i766 = phi i64 [ 5, %bb.ta ], [ 6, %bb.sz ], [ 4, %bb.sv ], [ %.sroa.4.0.i.ph.i.i.i763, %bb.sy ] ; 5 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !45835
  %i.bfy = call noalias noundef align 8 dereferenceable_or_null(112) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !45835 ; 9 uses
  %i.bfz = icmp eq ptr %i.bfy, null
  br i1 %i.bfz, label %.invoke12180, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindjEE13new_uninit_inB1t_.exit.i.i.i.i.i, !prof !341

.invoke12180:                                     ; preds = %.thread.i788, %bb.tb, %bb.tt
  %i.bga = phi i64 [ 208, %bb.tt ], [ 112, %bb.tb ], [ 112, %.thread.i788 ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.bga) #71
          to label %.cont12181 unwind label %.thread1525.loopexit.split-lp

.cont12181:                                       ; preds = %.invoke12180
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindjEE13new_uninit_inB1t_.exit.i.i.i.i.i: ; preds = %bb.tb
  store ptr null, ptr %i.bfy, align 8, !noalias !45835
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bfy, i64 98
  call void @llvm.experimental.noalias.scope.decl(metadata !45839)
  %i.bgc = load i16, ptr %i.bfm, align 2, !noalias !45842, !noundef !29
  %i.bgd = zext i16 %i.bgc to i64
  %i.bge = xor i64 %.sroa.013.0.i.i.i.i766, -1
  %i.bgf = add nsw i64 %i.bgd, %i.bge             ; 5 uses
  %i.bgg = trunc i64 %i.bgf to i16
  store i16 %i.bgg, ptr %i.bgb, align 2, !alias.scope !45839, !noalias !45835
  %i.bgh = icmp ult i64 %i.bgf, 12
  br i1 %i.bgh, label %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindjNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i.i, label %bb.tc, !prof !5801

bb.tc:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindjEE13new_uninit_inB1t_.exit.i.i.i.i.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bgf, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1200) #75
          to label %.noexc.i.i.i.i.i767 unwind label %bb.td, !noalias !45835

.noexc.i.i.i.i.i767:                              ; preds = %bb.tc
  unreachable

bb.td:                                            ; preds = %bb.tc
  %i.bgi = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bfy, i64 noundef 112, i64 noundef 8) #70, !noalias !45835
  br label %.thread1506

_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindjNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindjEE13new_uninit_inB1t_.exit.i.i.i.i.i
  %i.bgj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i759, i64 8 ; 2 uses
  %i.bgk = getelementptr inbounds nuw [8 x i8], ptr %i.bgj, i64 %.sroa.013.0.i.i.i.i766
  %i.bgl = load i64, ptr %i.bgk, align 8, !noalias !45842, !noundef !29 ; 2 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.beu, i64 %.sroa.013.0.i.i.i.i766
  %i.bgn = load i8, ptr %i.bgm, align 1, !range !34820, !noalias !45842, !noundef !29 ; 2 uses
  %i.bgo = add nuw nsw i64 %.sroa.013.0.i.i.i.i766, 1 ; 2 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.beu, i64 %i.bgo
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bfy, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bgq, ptr nonnull readonly align 1 %i.bgp, i64 range(i64 0, 65536) %i.bgf, i1 false), !alias.scope !45843, !noalias !45835
  %i.bgr = getelementptr inbounds nuw [8 x i8], ptr %i.bgj, i64 %i.bgo
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bfy, i64 8
  %i.bgt = shl nuw nsw i64 %i.bgf, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bgs, ptr nonnull readonly align 8 %i.bgr, i64 %i.bgt, i1 false), !alias.scope !45847, !noalias !45835
  %i.bgu = trunc nuw nsw i64 %.sroa.013.0.i.i.i.i766 to i16
  store i16 %i.bgu, ptr %i.bfm, align 2, !noalias !45842
  %spec.select.i.i.i.i768 = select i1 %.sroa.09.0.i.i.i.i764, ptr %i.bfy, ptr %.sroa.0.0.i.i.i759 ; 4 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i768, i64 98 ; 2 uses
  %i.bgw = load i16, ptr %i.bgv, align 2, !noalias !45851, !noundef !29 ; 2 uses
  %i.bgx = zext i16 %i.bgw to i64                 ; 2 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i768, i64 100 ; 2 uses
  %.not.i14.not.i.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i.i765, %i.bgx
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgy, i64 %.sroa.510.0.i.i.i.i765 ; 3 uses
  br i1 %.not.i14.not.i.i.i.i, label %bb.te, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindEB18_.exit.i15.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindEB18_.exit.i15.i.i.i.i: ; preds = %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindjNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i.i
  store i8 %switch.idx.cast.i.i747, ptr %i.bgz, align 1, !alias.scope !45855, !noalias !45851
  br label %bb.tf

bb.te:                                            ; preds = %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindjNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i.i
  %i.bha = add nuw nsw i64 %.sroa.510.0.i.i.i.i765, 1 ; 2 uses
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgy, i64 %i.bha
  %i.bhc = sub nuw nsw i64 %i.bgx, %.sroa.510.0.i.i.i.i765 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bhb, ptr nonnull align 1 %i.bgz, i64 %i.bhc, i1 false), !alias.scope !45855, !noalias !45851
  store i8 %switch.idx.cast.i.i747, ptr %i.bgz, align 1, !alias.scope !45855, !noalias !45851
  %i.bhd = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i768, i64 8 ; 2 uses
  %i.bhe = getelementptr inbounds nuw [8 x i8], ptr %i.bhd, i64 %.sroa.510.0.i.i.i.i765
  %i.bhf = getelementptr inbounds nuw [8 x i8], ptr %i.bhd, i64 %i.bha
  %i.bhg = shl nuw nsw i64 %i.bhc, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bhf, ptr nonnull align 8 %i.bhe, i64 %i.bhg, i1 false), !alias.scope !45858, !noalias !45851
  br label %bb.tf

bb.tf:                                            ; preds = %bb.te, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindEB18_.exit.i15.i.i.i.i
  %i.bhh = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i768, i64 8
  %i.bhi = add i16 %i.bgw, 1
  %i.bhj = getelementptr inbounds nuw [8 x i8], ptr %i.bhh, i64 %.sroa.510.0.i.i.i.i765
  store i64 %i.bep, ptr %i.bhj, align 8, !alias.scope !45858, !noalias !45851
  store i16 %i.bhi, ptr %i.bgv, align 2, !noalias !45851
  %i.bhk = load ptr, ptr %.sroa.0.0.i.i.i759, align 8, !noalias !45861, !noundef !29 ; 2 uses
  %.not.i105.i.i.i = icmp eq ptr %i.bhk, null
  br i1 %.not.i105.i.i.i, label %._crit_edge.i.i.i777, label %.lr.ph.i.i.i769

bb.tg:                                            ; preds = %bb.sx, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindEB18_.exit.i.i.i.i.i
  %i.bhl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i759, i64 8
  %i.bhm = add nuw nsw i16 %i.bew, 1
  %i.bhn = getelementptr inbounds nuw [8 x i8], ptr %i.bhl, i64 %.sroa.4.0.i.ph.i.i.i763
  store i64 %i.bep, ptr %i.bhn, align 8, !alias.scope !45832, !noalias !45819
  store i16 %i.bhm, ptr %i.bfm, align 2, !noalias !45819
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindjE12insert_entryB1n_.exit.i

._crit_edge.i.i.i777:                             ; preds = %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i, %bb.tf
  %.sroa.13.0.lcssa.i.i.i = phi i64 [ 0, %bb.tf ], [ %i.bic, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i ]
  %.sroa.11.0.lcssa.i.i.i = phi ptr [ %i.bfy, %bb.tf ], [ %i.bkl, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i ] ; 3 uses
  %.sroa.74.0.lcssa.i.i.i = phi i64 [ %i.bgl, %bb.tf ], [ %i.bky, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i ]
  %.sroa.0.0.lcssa.i.i.i = phi i8 [ %i.bgn, %bb.tf ], [ %i.bla, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !45864)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !45867
  %i.bho = call noalias noundef align 8 dereferenceable_or_null(208) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !45867 ; 12 uses
  %i.bhp = icmp eq ptr %i.bho, null
  br i1 %i.bhp, label %bb.th, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindjEE13new_uninit_inB1y_.exit.i.i.i.i.i.i.i.i, !prof !341

bb.th:                                            ; preds = %._crit_edge.i.i.i777
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #71
          to label %.noexc.i.i41.i.i.i unwind label %bb.tl, !noalias !45867

.noexc.i.i41.i.i.i:                               ; preds = %bb.th
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just9attribute13AttributeKindjEE13new_uninit_inB1y_.exit.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i777
  store ptr null, ptr %i.bho, align 8, !noalias !45867
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bho, i64 98 ; 2 uses
  store i16 0, ptr %i.bhq, align 2, !noalias !45867
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bho, i64 112
  store ptr %i.ht, ptr %i.bhr, align 8, !noalias !45867
end_hunk_2
begin_hunk_3_@_RNvMNtCskXtk6F4WjxZ_4just8analyzerNtB2_8Analyzer8justfile:bb.a
          cleanup
  br label %bb.ld

.loopexit2199.a:                                  ; preds = %bb.hh, %bb.kd, %bb.kn, %bb.kf
  %lpad.loopexit2201 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

.loopexit.split-lp2200:                           ; preds = %bb.kt, %bb.ku
  %.sroa.0148.0.ph.ph = phi i1 [ false, %bb.ku ], [ true, %bb.kt ]
  %lpad.loopexit.split-lp2202 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

bb.lc:                                            ; preds = %.loopexit.split-lp2200, %.loopexit2199.a
  %.sroa.0148.0.ph = phi i1 [ true, %.loopexit2199.a ], [ %.sroa.0148.0.ph.ph, %.loopexit.split-lp2200 ]
  %lpad.phi2203 = phi { ptr, i32 } [ %lpad.loopexit2201, %.loopexit2199.a ], [ %lpad.loopexit.split-lp2202, %.loopexit.split-lp2200 ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1E_4name4NameEEB1E_(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.baw)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit811 unwind label %.loopexit.split-lp7073.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit811: ; preds = %bb.lc
  br i1 %.sroa.0148.0.ph, label %bb.ld, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathEBF_.exit805

bb.ld:                                            ; preds = %bb.lb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit811
  %lpad.phi20162028 = phi { ptr, i32 } [ %lpad.phi2203, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit811 ], [ %lpad.thr_comm.split-lp2032, %bb.lb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50599)
  %.val.i812 = load i64, ptr %i.dp, align 8, !alias.scope !50599 ; 2 uses
  %i.bfo = icmp eq i64 %.val.i812, 0
  br i1 %i.bfo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathEBF_.exit805, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bfp = mul nuw i64 %.val.i812, 72
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val597, i64 noundef %i.bfp, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !50599
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathEBF_.exit805

bb.lf:                                            ; preds = %.thread1936, %bb.hd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathEBF_.exit805
  %.pn394.pn.ph = phi { ptr, i32 } [ %.pn388.pn1944, %.thread1936 ], [ %i.bat, %bb.hd ], [ %.pn394, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathEBF_.exit805 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCskXtk6F4WjxZ_4just5table5TableNtNtBG_8disabled8DisabledEEBG_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dr) #72
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit789.thread.thread unwind label %.loopexit.split-lp7073.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit789.thread.thread: ; preds = %bb.lf, %.split, %.thread1918, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit789.thread
  %.pn394.pn.pn1925 = phi { ptr, i32 } [ %i.bas, %.thread1918 ], [ %.pn377.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit789.thread ], [ %.pn377.pn.pn, %.split ], [ %.pn394.pn.ph, %bb.lf ]
  %.sroa.0192.201924 = phi i1 [ true, %.thread1918 ], [ %.sroa.0192.25, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit789.thread ], [ true, %.split ], [ true, %bb.lf ]
  %.sroa.0189.201923 = phi i1 [ true, %.thread1918 ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit789.thread ], [ false, %.split ], [ true, %bb.lf ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCskXtk6F4WjxZ_4just5table5TableINtNtBG_5alias5AliasNtNtBG_10modulepath10ModulepathEEEBG_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ck) #72
          to label %bb.hc unwind label %.loopexit.split-lp7073.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread7065:                                      ; preds = %.split, %.thread1911, %bb.hc
  %.pn394.pn.pn.pn1917 = phi { ptr, i32 } [ %i.bar, %.thread1911 ], [ %.pn394.pn.pn.pn, %bb.hc ], [ %.pn377.pn.pn, %.split ]
  %.sroa.0189.191915 = phi i1 [ true, %.thread1911 ], [ %.sroa.0189.19, %bb.hc ], [ false, %.split ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCskXtk6F4WjxZ_4just5table5TableINtNtBG_5alias5AliasINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtBG_6recipe6RecipeEEEEBG_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ch) #72
          to label %bb.hb unwind label %.loopexit.split-lp7073.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lg:                                            ; preds = %.thread1904, %bb.hb
  %.pn394.pn.pn.pn.pn1910 = phi { ptr, i32 } [ %i.baq, %.thread1904 ], [ %.pn394.pn.pn.pn.pn, %bb.hb ]
  %.sroa.0192.181909 = phi i1 [ true, %.thread1904 ], [ %.sroa.0192.18, %bb.hb ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCskXtk6F4WjxZ_4just5table5TableNtNtBG_8disabled8DisabledEEBG_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.du) #72
          to label %bb.kz unwind label %.loopexit.split-lp7073.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lh:                                            ; preds = %.thread2018, %bb.kz
  %.pn394.pn.pn.pn.pn.pn2024 = phi { ptr, i32 } [ %i.bfn, %.thread2018 ], [ %.pn394.pn.pn.pn.pn.pn, %bb.kz ]
  %.sroa.0189.292022 = phi i8 [ 1, %.thread2018 ], [ %.sroa.0189.29, %bb.kz ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCskXtk6F4WjxZ_4just5table5TableINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtBG_6recipe6RecipeEEEBG_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cg) #72
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit.thread unwind label %.loopexit.split-lp7073.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.li:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  %i.bfq = load i8, ptr %i.azv, align 8, !range !442, !noundef !29
  %.not401 = icmp eq i8 %i.bfq, -1
  br i1 %.not401, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bfr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bfr, ptr noundef nonnull align 8 dereferenceable(80) %i.eg, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  store i64 -1, ptr %0, align 8
  br label %bb.nh

bb.lk:                                            ; preds = %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  %i.bfs = invoke { ptr, i64 } @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bai)
          to label %bb.ll unwind label %.loopexit.split-lp2210.loopexit ; 2 uses

bb.ll:                                            ; preds = %bb.lk
  %i.bft = extractvalue { ptr, i64 } %i.bfs, 0
  %i.bfu = extractvalue { ptr, i64 } %i.bfs, 1
  %.val608 = load ptr, ptr %i.ds, align 8, !noundef !29
  %.val609 = load i64, ptr %i.azw, align 8
  %i.bfv = call fastcc noundef align 8 ptr @_RNvMNtCskXtk6F4WjxZ_4just5tableINtB2_5TableINtNtB4_6recipe6RecipeNtNtB4_21unresolved_dependency20UnresolvedDependencyEE3getB4_(ptr %.val608, i64 %.val609, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bft, i64 noundef %i.bfu) ; 2 uses
  %.not402 = icmp eq ptr %i.bfv, null
  br i1 %.not402, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll, %bb.ln
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  invoke fastcc void @_RNvXs5_NtCskXtk6F4WjxZ_4just6recipeINtB5_6RecipeNtNtB7_21unresolved_dependency20UnresolvedDependencyENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(352) %i.ee, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.bah)
          to label %bb.lp unwind label %.loopexit.split-lp2210.loopexit

bb.ln:                                            ; preds = %bb.ll
  %i.bfw = getelementptr i8, ptr %i.bah, i64 336
  %.val610 = load i32, ptr %i.bfw, align 8, !noundef !29
  %i.bfx = getelementptr i8, ptr %i.bfv, i64 336
  %.val611 = load i32, ptr %i.bfx, align 8, !noundef !29
  %.not2158 = icmp ugt i32 %.val610, %.val611
  br i1 %.not2158, label %bb.lo, label %bb.lm

bb.lo:                                            ; preds = %bb.ln, %bb.lq
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bah, i64 304 ; 3 uses
  %i.bfz = invoke fastcc noundef zeroext i1 @_RNvMNtCskXtk6F4WjxZ_4just13attribute_setNtB2_12AttributeSet8contains(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bfy, i8 noundef 25)
          to label %bb.lr unwind label %.loopexit.split-lp2210.loopexit

bb.lp:                                            ; preds = %bb.lm
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5tableINtB2_5TableINtNtB4_6recipe6RecipeNtNtB4_21unresolved_dependency20UnresolvedDependencyEE6insertB4_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ds, ptr noalias nofree noundef align 8 captures(address) dereferenceable(352) %i.ee)
          to label %bb.lq unwind label %.loopexit.split-lp2210.loopexit

bb.lq:                                            ; preds = %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  br label %bb.lo

bb.lr:                                            ; preds = %bb.lo
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bah, i64 346
  %i.bgb = load i8, ptr %i.bga, align 2, !range !274, !alias.scope !50602
  %i.bgc = trunc nuw i8 %i.bgb to i1
  %spec.select.i = select i1 %i.bgc, i1 true, i1 %i.azy
  %not..i = xor i1 %i.bfz, true
  %.sroa.0.0.i815 = select i1 %not..i, i1 %spec.select.i, i1 false
  br i1 %.sroa.0.0.i815, label %bb.mx, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bah, i64 8
  %i.bge = load ptr, ptr %i.bgd, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bah, i64 16
  %i.bgg = load i64, ptr %i.bgf, align 8, !noundef !29 ; 2 uses
  %.idx3615 = shl nuw nsw i64 %i.bgg, 5
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bge, i64 %.idx3615
  %i.bgi = icmp eq i64 %i.bgg, 0
  br i1 %i.bgi, label %._crit_edge3596, label %.lr.ph3595

.lr.ph3595:                                       ; preds = %bb.ls, %bb.mu
  %.sroa.0112.03593 = phi i1 [ %.sroa.0112.1, %bb.mu ], [ false, %bb.ls ] ; 2 uses
  %.sroa.0105.03592 = phi ptr [ %i.bgj, %bb.mu ], [ %i.bge, %bb.ls ] ; 7 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %.sroa.0105.03592, i64 32 ; 2 uses
  %.not = xor i1 %.sroa.0112.03593, true
  %or.cond = select i1 %.not, i1 %i.bab, i1 false
  br i1 %or.cond, label %bb.lt, label %bb.lu

._crit_edge3596:                                  ; preds = %bb.mu, %bb.ls
  %i.bgk = invoke fastcc noundef align 8 ptr @_RNvMNtCskXtk6F4WjxZ_4just13attribute_setNtB2_12AttributeSet3get(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bfy, i8 noundef 2)
          to label %bb.my unwind label %.loopexit2204 ; 2 uses

bb.lt:                                            ; preds = %.lr.ph3595
  %i.bgl = getelementptr i8, ptr %.sroa.0105.03592, i64 8
  %.sroa.0105.0.val = load ptr, ptr %i.bgl, align 8, !nonnull !29, !noundef !29
  %i.bgm = getelementptr i8, ptr %.sroa.0105.03592, i64 16
  %.sroa.0105.0.val514 = load i64, ptr %i.bgm, align 8, !noundef !29
  %i.bgn = invoke fastcc noundef zeroext i1 @_RNvMNtCskXtk6F4WjxZ_4just4lineNtB2_4Line10is_comment(ptr nonnull %.sroa.0105.0.val, i64 %.sroa.0105.0.val514)
          to label %bb.lu unwind label %.loopexit2209

bb.lu:                                            ; preds = %bb.lt, %.lr.ph3595
  %.sroa.0108.0 = phi i1 [ false, %.lr.ph3595 ], [ %i.bgn, %bb.lt ]
  br i1 %.sroa.0112.03593, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  %i.bgo = getelementptr i8, ptr %.sroa.0105.03592, i64 8 ; 3 uses
  %.sroa.0105.0.val515 = load ptr, ptr %i.bgo, align 8, !nonnull !29, !noundef !29
  %i.bgp = getelementptr i8, ptr %.sroa.0105.03592, i64 16 ; 3 uses
  %.sroa.0105.0.val516 = load i64, ptr %i.bgp, align 8, !noundef !29
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just4lineNtB2_4Line6sigils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ed, ptr nonnull %.sroa.0105.0.val515, i64 %.sroa.0105.0.val516, i8 %.val517)
          to label %bb.lx unwind label %.loopexit2209

bb.lw:                                            ; preds = %bb.mm, %bb.lu
  br i1 %.sroa.0108.0, label %bb.mu, label %bb.mt

bb.lx:                                            ; preds = %bb.lv
  %.val523 = load ptr, ptr %i.ed, align 8, !noundef !29 ; 3 uses
  %.val524 = load i64, ptr %i.bad, align 8        ; 2 uses
  %.not.i6445 = icmp eq ptr %.val523, null
  br i1 %.not.i6445, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.lx, %bb.ma
  %.sroa.3.0.i.i6446 = phi i64 [ %i.bhf, %bb.ma ], [ %.val524, %bb.lx ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.bhe, %bb.ma ], [ %.val523, %bb.lx ] ; 3 uses
  %i.bgq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 12 ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.bgs = load i16, ptr %i.bgr, align 2, !noalias !50605, !noundef !29 ; 2 uses
  %i.bgt = zext i16 %i.bgs to i64                 ; 3 uses
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgq, i64 %i.bgt
  %i.bgv = icmp eq i16 %i.bgs, 0
  br i1 %i.bgv, label %._crit_edge13066, label %.lr.ph13065

bb.ly:                                            ; preds = %.lr.ph13065
  %i.bgw = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i13064, i64 1 ; 2 uses
  %i.bgx = add nuw nsw i64 %.sroa.8.0.i.i.i644713063, 1
  %i.bgy = icmp eq ptr %i.bgw, %i.bgu
  br i1 %i.bgy, label %._crit_edge13066, label %.lr.ph13065

.lr.ph13065:                                      ; preds = %.preheader, %bb.ly
  %.sroa.0.03.i.i.i13064 = phi ptr [ %i.bgw, %bb.ly ], [ %i.bgq, %.preheader ] ; 2 uses
  %.sroa.8.0.i.i.i644713063 = phi i64 [ %i.bgx, %bb.ly ], [ 0, %.preheader ] ; 2 uses
  %.val6.i.i.i6448 = load i8, ptr %.sroa.0.03.i.i.i13064, align 1, !range !190, !noalias !50605, !noundef !29
  %16 = zext nneg i8 %.val6.i.i.i6448 to i64
  %i.bgz = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 0, i64 %16)
  switch i8 %i.bgz, label %bb.lz [
    i8 -1, label %._crit_edge13066
    i8 0, label %.loopexit13129
    i8 1, label %bb.ly
  ]

bb.lz:                                            ; preds = %.lr.ph13065
  unreachable

._crit_edge13066:                                 ; preds = %bb.ly, %.lr.ph13065, %.preheader
  %.sroa.4.0.i.ph.i.i6450 = phi i64 [ %i.bgt, %.preheader ], [ %i.bgt, %bb.ly ], [ %.sroa.8.0.i.i.i644713063, %.lr.ph13065 ] ; 2 uses
  %i.bha = icmp eq i64 %.sroa.3.0.i.i6446, 0
  br i1 %i.bha, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit.thread, label %bb.ma

bb.ma:                                            ; preds = %._crit_edge13066
  %i.bhb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.bhc = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i6450, 12
  call void @llvm.assume(i1 %i.bhc)
  %i.bhd = getelementptr inbounds nuw [8 x i8], ptr %i.bhb, i64 %.sroa.4.0.i.ph.i.i6450
  %i.bhe = load ptr, ptr %i.bhd, align 8, !noalias !50605, !nonnull !29, !noundef !29
  %i.bhf = add i64 %.sroa.3.0.i.i6446, -1
  br label %.preheader

.loopexit2214:                                    ; preds = %bb.mh
  %lpad.loopexit2216 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

.loopexit.split-lp2215:                           ; preds = %bb.mj, %bb.mn, %bb.mp, %bb.mq
  %lpad.loopexit.split-lp2217 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

bb.mb:                                            ; preds = %.loopexit.split-lp2215, %.loopexit2214
  %lpad.phi2218 = phi { ptr, i32 } [ %lpad.loopexit2216, %.loopexit2214 ], [ %lpad.loopexit.split-lp2217, %.loopexit.split-lp2215 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just5sigil5SigilEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ed) #72
          to label %.body unwind label %.loopexit.split-lp7073.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit.thread: ; preds = %._crit_edge13066, %._crit_edge13074, %bb.lx
  %i.bhg = load ptr, ptr %i.bgo, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.bhh = load i64, ptr %i.bgp, align 8, !noundef !29
  %.not405 = icmp eq i64 %i.bhh, 0
  br i1 %.not405, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit822.thread, label %bb.mg

.loopexit13129:                                   ; preds = %.lr.ph13065, %bb.me
  %.sroa.3.0.i.i6452 = phi i64 [ %i.bhw, %bb.me ], [ %.val524, %.lr.ph13065 ] ; 2 uses
  %.sroa.0.0.i.i6453 = phi ptr [ %i.bhv, %bb.me ], [ %.val523, %.lr.ph13065 ] ; 3 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i6453, i64 12 ; 2 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i6453, i64 10
  %i.bhk = load i16, ptr %i.bhj, align 2, !noalias !50608, !noundef !29 ; 2 uses
  %i.bhl = zext i16 %i.bhk to i64                 ; 3 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhi, i64 %i.bhl
  %i.bhn = icmp eq i16 %i.bhk, 0
  br i1 %i.bhn, label %._crit_edge13074, label %.lr.ph13073

bb.mc:                                            ; preds = %.lr.ph13073
  %i.bho = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i645513071, i64 1 ; 2 uses
  %i.bhp = add nuw nsw i64 %.sroa.8.0.i.i.i645413070, 1
  %i.bhq = icmp eq ptr %i.bho, %i.bhm
  br i1 %i.bhq, label %._crit_edge13074, label %.lr.ph13073

.lr.ph13073:                                      ; preds = %.loopexit13129, %bb.mc
  %.sroa.0.03.i.i.i645513071 = phi ptr [ %i.bho, %bb.mc ], [ %i.bhi, %.loopexit13129 ] ; 2 uses
  %.sroa.8.0.i.i.i645413070 = phi i64 [ %i.bhp, %bb.mc ], [ 0, %.loopexit13129 ] ; 2 uses
  %.val6.i.i.i6456 = load i8, ptr %.sroa.0.03.i.i.i645513071, align 1, !range !190, !noalias !50608, !noundef !29
  switch i8 %.val6.i.i.i6456, label %bb.md [
    i8 2, label %._crit_edge13074
    i8 1, label %bb.mf
    i8 0, label %bb.mc
  ]

bb.md:                                            ; preds = %.lr.ph13073
  unreachable

._crit_edge13074:                                 ; preds = %bb.mc, %.lr.ph13073, %.loopexit13129
  %.sroa.4.0.i.ph.i.i6459 = phi i64 [ %i.bhl, %.loopexit13129 ], [ %i.bhl, %bb.mc ], [ %.sroa.8.0.i.i.i645413070, %.lr.ph13073 ] ; 2 uses
  %i.bhr = icmp eq i64 %.sroa.3.0.i.i6452, 0
  br i1 %i.bhr, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit.thread, label %bb.me

bb.me:                                            ; preds = %._crit_edge13074
  %i.bhs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i6453, i64 24
  %i.bht = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i6459, 12
  call void @llvm.assume(i1 %i.bht)
  %i.bhu = getelementptr inbounds nuw [8 x i8], ptr %i.bhs, i64 %.sroa.4.0.i.ph.i.i6459
  %i.bhv = load ptr, ptr %i.bhu, align 8, !noalias !50608, !nonnull !29, !noundef !29
  %i.bhw = add i64 %.sroa.3.0.i.i6452, -1
  br label %.loopexit13129

bb.mf:                                            ; preds = %.lr.ph13073
  %i.bhx = load ptr, ptr %i.bgo, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.bhy = load i64, ptr %i.bgp, align 8, !noundef !29
  %.not406 = icmp eq i64 %i.bhy, 0
  br i1 %.not406, label %bb.mn, label %bb.mo, !prof !341

bb.mg:                                            ; preds = %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit.thread
  %i.bhz = load i64, ptr %i.bhg, align 8, !range !267, !noundef !29
  %i.bia = icmp eq i64 %i.bhz, -1
  br i1 %i.bia, label %bb.mh, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit822.thread

bb.mh:                                            ; preds = %bb.mg
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhg, i64 8 ; 2 uses
  %i.bic = invoke { ptr, i64 } @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bib)
          to label %bb.mi unwind label %.loopexit2214 ; 2 uses

bb.mi:                                            ; preds = %bb.mh
  %i.bid = extractvalue { ptr, i64 } %i.bic, 1
  %.not.i817 = icmp eq i64 %i.bid, 0
  br i1 %.not.i817, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit822.thread, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit: ; preds = %bb.mi
  %i.bie = extractvalue { ptr, i64 } %i.bic, 0
  %rhsc = load i8, ptr %i.bie, align 1
  switch i8 %rhsc, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit822.thread [
    i8 32, label %bb.mj
    i8 9, label %bb.mj
  ]

bb.mj:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  store i64 -9223372036854775771, ptr %i.dz, align 8
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token5error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.ea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bib, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.dz)
          to label %bb.mk unwind label %.loopexit.split-lp2215

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit822.thread: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit, %bb.mi, %bb.mg, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit.thread
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just5sigil5SigilEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ed)
          to label %bb.mm unwind label %.loopexit2209

bb.mk:                                            ; preds = %bb.mj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  %i.bif = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bif, ptr noundef nonnull align 8 dereferenceable(80) %i.ea, i64 80, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %bb.ml

bb.ml:                                            ; preds = %bb.mr, %bb.mk
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just5sigil5SigilEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ed)
          to label %bb.ms unwind label %.loopexit.split-lp2210.loopexit.split-lp

bb.mm:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit822.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  br label %bb.lw

bb.mn:                                            ; preds = %bb.mf
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @939) #71
          to label %bb.o unwind label %.loopexit.split-lp2215

bb.mo:                                            ; preds = %bb.mf
  %i.big = load i64, ptr %i.bhx, align 8, !range !267, !noundef !29
  %i.bih = icmp eq i64 %i.big, -1
  br i1 %i.bih, label %bb.mp, label %bb.mq, !prof !36

bb.mp:                                            ; preds = %bb.mo
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bhx, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  store i64 -9223372036854775764, ptr %i.eb, align 8
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token5error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.ec, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bii, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.eb)
          to label %bb.mr unwind label %.loopexit.split-lp2215

bb.mq:                                            ; preds = %bb.mo
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @940) #71
          to label %bb.o unwind label %.loopexit.split-lp2215

bb.mr:                                            ; preds = %bb.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  %i.bij = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bij, ptr noundef nonnull align 8 dereferenceable(80) %i.ec, i64 80, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  br label %bb.ml

bb.ms:                                            ; preds = %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  br label %bb.nh

bb.mt:                                            ; preds = %bb.lw
  %i.bik = getelementptr i8, ptr %.sroa.0105.03592, i64 8
  %.sroa.0105.0.val518 = load ptr, ptr %i.bik, align 8
  %i.bil = getelementptr i8, ptr %.sroa.0105.03592, i64 16
  %.sroa.0105.0.val519 = load i64, ptr %i.bil, align 8, !noundef !29
  %i.bim = invoke fastcc noundef zeroext i1 @_RNvMNtCskXtk6F4WjxZ_4just4lineNtB2_4Line15is_continuation(ptr %.sroa.0105.0.val518, i64 %.sroa.0105.0.val519)
          to label %bb.mu unwind label %.loopexit2209

bb.mu:                                            ; preds = %bb.mt, %bb.lw
  %.sroa.0112.1 = phi i1 [ false, %bb.lw ], [ %i.bim, %bb.mt ]
  %i.bin = icmp eq ptr %i.bgj, %i.bgh
  br i1 %i.bin, label %._crit_edge3596, label %.lr.ph3595

bb.mv:                                            ; preds = %bb.my
  %i.bio = invoke fastcc noundef align 8 ptr @_RNvMNtCskXtk6F4WjxZ_4just13attribute_setNtB2_12AttributeSet3get(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bfy, i8 noundef 10)
          to label %bb.mw unwind label %.loopexit2204 ; 2 uses

bb.mw:                                            ; preds = %bb.mv
  %.not408.1 = icmp eq ptr %i.bio, null
  br i1 %.not408.1, label %bb.mx, label %bb.mz

.loopexit2204:                                    ; preds = %bb.mv, %._crit_edge3596
  %lpad.loopexit2206 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp2205:                           ; preds = %bb.mz, %bb.nf
  %lpad.loopexit.split-lp2207 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.mx:                                            ; preds = %bb.mw, %bb.lr
  %i.bip = icmp eq ptr %i.bag, %i.azq
  br i1 %i.bip, label %._crit_edge3603, label %bb.gw

bb.my:                                            ; preds = %._crit_edge3596
  %.not408 = icmp eq ptr %i.bgk, null
  br i1 %.not408, label %bb.mv, label %bb.mz

bb.mz:                                            ; preds = %bb.mw, %bb.my
  %.lcssa3642 = phi ptr [ %i.bgk, %bb.my ], [ %i.bio, %bb.mw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  invoke fastcc void @_RNvXs1_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1352) %i.dv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1352) %.lcssa3642)
          to label %bb.na unwind label %.loopexit.split-lp2205

bb.na:                                            ; preds = %bb.mz
  %i.biq = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 1352)
          to label %bb.ne unwind label %bb.nb, !noalias !50611 ; 3 uses

bb.nb:                                            ; preds = %bb.na
  %i.bir = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9attribute9AttributeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1352) %i.dv) #72
          to label %.body unwind label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.bis = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.nd:                                            ; preds = %bb.ne
  %i.bit = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just9attribute9AttributeEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dw) #72
          to label %.body unwind label %.loopexit.split-lp7073.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ne:                                            ; preds = %bb.na
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %i.biq, ptr noundef nonnull align 8 dereferenceable(1352) %i.dv, i64 1352, i1 false)
  store ptr %i.biq, ptr %i.dw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  %i.biu = invoke { ptr, i64 } @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bai)
          to label %bb.nf unwind label %bb.nd     ; 2 uses

bb.nf:                                            ; preds = %bb.ne
  %i.biv = extractvalue { ptr, i64 } %i.biu, 0
  %i.biw = extractvalue { ptr, i64 } %i.biu, 1
  %i.bix = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %i.biq, ptr %i.bix, align 8
  %i.biy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store ptr %i.biv, ptr %i.biy, align 8
  %i.biz = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 %i.biw, ptr %i.biz, align 8
  store i64 -9223372036854775756, ptr %i.dx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token5error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bai, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.dx)
          to label %bb.ng unwind label %.loopexit.split-lp2205

bb.ng:                                            ; preds = %bb.nf
end_hunk_3
begin_hunk_4_@_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe3run:bb.a

bb.cx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit484.i
  %.sroa.58.0.copyload.i.i.i.i = load i64, ptr %i.hr, align 8, !alias.scope !69293, !noalias !69206
  %.sroa.47.0.copyload.i.i.i.i = load i64, ptr %i.hs, align 8, !alias.scope !69293, !noalias !69206 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !noalias !69292
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %.sroa.06.0.copyload.i.i.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !69292
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i64 %.sroa.47.0.copyload.i.i.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !69292
  %.sroa.616.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i.i, align 8, !noalias !69292
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store ptr %.sroa.06.0.copyload.i.i.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !69292
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  store i64 %.sroa.47.0.copyload.i.i.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !69292
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit484.i
  %.sink31.i.i.i.i = phi i64 [ 1, %bb.cx ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit484.i ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i.i = phi i64 [ %.sroa.58.0.copyload.i.i.i.i, %bb.cx ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit484.i ]
  store i64 %.sink31.i.i.i.i, ptr %i.bu, align 8, !noalias !69292
  %i.pt = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store i64 %.sink31.i.i.i.i, ptr %i.pt, align 8, !noalias !69292
  %i.pu = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i.i, ptr %i.pu, align 8, !noalias !69292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !69294
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB7_7set_val9SetValZSTE10dying_nextB1b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.bu)
          to label %.noexc330.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !69206

.noexc330.i:                                      ; preds = %bb.cy
  %i.pv = load ptr, ptr %i.bt, align 8, !noalias !69294, !noundef !29
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.pv, null
  br i1 %.not3.i.i.i.i.i.i, label %.loopexit215.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc330.i, %.noexc331.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !69294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !69294
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB7_7set_val9SetValZSTE10dying_nextB1b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.bu)
          to label %.noexc331.i unwind label %.loopexit.i, !noalias !69206

.noexc331.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i
  %i.pw = load ptr, ptr %i.bt, align 8, !noalias !69294, !noundef !29
  %.not.i.i.i.i.i.i = icmp eq ptr %i.pw, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit215.i, label %.lr.ph.i.i.i.i.i.i

_RNvMNtCskXtk6F4WjxZ_4just4lineNtB2_4Line15is_continuation.exit.i: ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit.i.i
  %i.px = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.op
  %i.py = getelementptr i8, ptr %i.px, i64 %i.or
  %i.pz = getelementptr i8, ptr %i.py, i64 -1
  %rhsc.i320.i = load i8, ptr %i.pz, align 1, !noalias !69206
  %.not857.i.a = icmp eq i8 %rhsc.i320.i, 92
  br i1 %.not857.i.a, label %bb.cz, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_RNtNtCskXtk6F4WjxZ_4just4line4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1O_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBR_.exit317.thread.i

bb.cz:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just4lineNtB2_4Line15is_continuation.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !69299)
  %i.qa = load ptr, ptr %.sroa.4142.0..sroa_idx.i, align 8, !alias.scope !69299, !noalias !69206, !nonnull !29, !noundef !29 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.pq ; 4 uses
  %i.qc = icmp samesign eq i64 %i.pq, 0
  br i1 %i.qc, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qd = getelementptr inbounds i8, ptr %i.qb, i64 -1
  %i.qe = load i8, ptr %i.qd, align 1, !noalias !69301, !noundef !29
  %i.qf = icmp sgt i8 %i.qe, -1
  br i1 %i.qf, label %.thread.i.i, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit17.i.i.i

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit17.i.i.i: ; preds = %bb.da
  %i.qg = icmp ne i64 %i.pq, 1
  call void @llvm.assume(i1 %i.qg)
  %i.qh = getelementptr inbounds i8, ptr %i.qb, i64 -2
  %i.qi = load i8, ptr %i.qh, align 1, !noalias !69301, !noundef !29 ; 3 uses
  %i.qj = and i8 %i.qi, 31
  %i.qk = zext nneg i8 %i.qj to i32
  %i.ql = icmp slt i8 %i.qi, -64
  br i1 %i.ql, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit19.i.i.i, label %bb.dc

.thread.i.i:                                      ; preds = %bb.da
  %i.qm = icmp sgt i64 %i.pq, -1
  call void @llvm.assume(i1 %i.qm)
  br label %bb.df

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit17.i.i.i
  %i.qn = icmp ne i64 %i.pq, 2
  call void @llvm.assume(i1 %i.qn)
  %i.qo = getelementptr inbounds i8, ptr %i.qb, i64 -3
  %i.qp = load i8, ptr %i.qo, align 1, !noalias !69301, !noundef !29 ; 3 uses
  %i.qq = and i8 %i.qp, 15
  %i.qr = zext nneg i8 %i.qq to i32
  %i.qs = icmp slt i8 %i.qp, -64
  br i1 %i.qs, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit21.i.i.i, label %bb.db

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit19.i.i.i
  %i.qt = icmp ne i64 %i.pq, 3
  call void @llvm.assume(i1 %i.qt)
  %i.qu = getelementptr inbounds i8, ptr %i.qb, i64 -4
  %i.qv = load i8, ptr %i.qu, align 1, !noalias !69301, !noundef !29
  %i.qw = and i8 %i.qv, 7
  %i.qx = zext nneg i8 %i.qw to i32
  %i.qy = shl nuw nsw i32 %i.qx, 6
  %i.qz = and i8 %i.qp, 63
  %i.ra = zext nneg i8 %i.qz to i32
  %i.rb = or disjoint i32 %i.qy, %i.ra
  br label %bb.db

bb.db:                                            ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit21.i.i.i, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit19.i.i.i
  %.sroa.010.1.i.i.i = phi i32 [ %i.rb, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit21.i.i.i ], [ %i.qr, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit19.i.i.i ]
  %i.rc = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
  %i.rd = and i8 %i.qi, 63
  %i.re = zext nneg i8 %i.rd to i32
  %i.rf = or disjoint i32 %i.rc, %i.re
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit17.i.i.i
  %.sroa.010.0.i.i.i = phi i32 [ %i.rf, %bb.db ], [ %i.qk, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit17.i.i.i ] ; 4 uses
  %i.rg = icmp sgt i64 %i.pq, -1
  call void @llvm.assume(i1 %i.rg)
  %i.rh = icmp samesign ult i32 %.sroa.010.0.i.i.i, 17408
  call void @llvm.assume(i1 %i.rh)
  %i.ri = icmp samesign ult i32 %.sroa.010.0.i.i.i, 2
  br i1 %i.ri, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rj = icmp samesign ult i32 %.sroa.010.0.i.i.i, 32
  br i1 %i.rj, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.rk = icmp samesign ult i32 %.sroa.010.0.i.i.i, 1024
  %..i.i = select i1 %i.rk, i64 -3, i64 -4
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc, %.thread.i.i
  %.sroa.03.0.neg.i.i = phi i64 [ -2, %bb.dd ], [ %..i.i, %bb.de ], [ -1, %bb.dc ], [ -1, %.thread.i.i ]
  %i.rl = add nsw i64 %.sroa.03.0.neg.i.i, %i.pq  ; 2 uses
  store i64 %i.rl, ptr %.sroa.5143.0..sroa_idx.i, align 8, !alias.scope !69299, !noalias !69206
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i: ; preds = %bb.df, %bb.cz
  %i.rm = phi i64 [ 0, %bb.cz ], [ %i.rl, %bb.df ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ob) ]
  %i.rn = icmp eq ptr %i.ob, %i.hg
  br i1 %i.rn, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_RNtNtCskXtk6F4WjxZ_4just4line4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1O_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBR_.exit317.thread.i, label %.lr.ph, !llvm.loop !69302

bb.dg:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_RNtNtCskXtk6F4WjxZ_4just4line4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1O_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0EBR_.exit317.thread.i
  %i.ro = load ptr, ptr %.sroa.4142.0..sroa_idx.i, align 8, !noalias !69206, !nonnull !29, !noundef !29 ; 3 uses
  %i.rp = load i64, ptr %i.hr, align 8, !noalias !69206, !noundef !29 ; 8 uses
  %i.rq = icmp eq i64 %i.rp, 0
  br i1 %i.rq, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %.not.i333.i = icmp ult i64 %i.rp, %i.ny
  br i1 %.not.i333.i, label %bb.di, label %.split.i.i

.split.i.i:                                       ; preds = %bb.dh
  %i.rr = icmp eq i64 %i.rp, %i.ny
  br i1 %i.rr, label %bb.dj, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rp
  %i.rt = load i8, ptr %i.rs, align 1, !alias.scope !69303, !noalias !69206, !noundef !29
  %i.ru = icmp sgt i8 %i.rt, -65
  br i1 %i.ru, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di, %.split.i.i, %bb.dg
  %i.rv = sub nuw i64 %i.ny, %i.rp                ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rp ; 2 uses
  %i.rx = icmp eq i64 %i.ny, %i.rp
  br i1 %i.rx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit363.i, label %bb.dl

bb.dk:                                            ; preds = %bb.di, %.split.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ro, i64 noundef %i.ny, i64 noundef %i.rp, i64 noundef %i.ny, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1268) #71
          to label %bb.ch unwind label %.loopexit.split-lp235.loopexit.split-lp.i, !noalias !69206

bb.dl:                                            ; preds = %bb.dj
  %.val303.i = load ptr, ptr %i.ch, align 8, !noalias !69206, !noundef !29 ; 4 uses
  %.val304.i = load i64, ptr %i.hs, align 8, !noalias !69206 ; 3 uses
  %.not.i335.i = icmp eq ptr %.val303.i, null
  br i1 %.not.i335.i, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit356.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.dl, %bb.do
  %.sroa.3.0.i.i.i = phi i64 [ %i.sn, %bb.do ], [ %.val304.i, %bb.dl ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.sm, %bb.do ], [ %.val303.i, %bb.dl ] ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 12 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.sa = load i16, ptr %i.rz, align 2, !noalias !69306, !noundef !29 ; 2 uses
  %i.sb = zext i16 %i.sa to i64                   ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.sb
  %i.sd = icmp eq i16 %i.sa, 0
  br i1 %i.sd, label %._crit_edge, label %.lr.ph1839

bb.dm:                                            ; preds = %.lr.ph1839
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i1838, i64 1 ; 2 uses
  %i.sf = add nuw nsw i64 %.sroa.8.0.i.i.i.i1837, 1
  %i.sg = icmp eq ptr %i.se, %i.sc
  br i1 %i.sg, label %._crit_edge, label %.lr.ph1839

.lr.ph1839:                                       ; preds = %.preheader.i, %bb.dm
  %.sroa.0.03.i.i.i.i1838 = phi ptr [ %i.se, %bb.dm ], [ %i.ry, %.preheader.i ] ; 2 uses
  %.sroa.8.0.i.i.i.i1837 = phi i64 [ %i.sf, %bb.dm ], [ 0, %.preheader.i ] ; 2 uses
  %.val6.i.i.i.i = load i8, ptr %.sroa.0.03.i.i.i.i1838, align 1, !range !190, !noalias !69306, !noundef !29
  %10 = zext nneg i8 %.val6.i.i.i.i to i64
  %i.sh = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 0, i64 %10)
  switch i8 %i.sh, label %bb.dn [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit.i
    i8 1, label %bb.dm
  ]

bb.dn:                                            ; preds = %.lr.ph1839
  unreachable

._crit_edge:                                      ; preds = %bb.dm, %.lr.ph1839, %.preheader.i
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.sb, %.preheader.i ], [ %i.sb, %bb.dm ], [ %.sroa.8.0.i.i.i.i1837, %.lr.ph1839 ] ; 2 uses
  %i.si = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.si, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit.i, label %bb.do

bb.do:                                            ; preds = %._crit_edge
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 24
  %i.sk = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 12
  call void @llvm.assume(i1 %i.sk)
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %.sroa.4.0.i.ph.i.i.i
  %i.sm = load ptr, ptr %i.sl, align 8, !noalias !69306, !nonnull !29, !noundef !29
  %i.sn = add i64 %.sroa.3.0.i.i.i, -1
  br label %.preheader.i

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit.i: ; preds = %._crit_edge, %.lr.ph1839
  %.sroa.0.0.i336.i = phi i1 [ false, %.lr.ph1839 ], [ true, %._crit_edge ] ; 2 uses
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dr, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit.i
  %.sroa.3.0.i.i338.i = phi i64 [ %i.tc, %bb.dr ], [ %.val304.i, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit.i ] ; 2 uses
  %.sroa.0.0.i.i339.i = phi ptr [ %i.tb, %bb.dr ], [ %.val303.i, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit.i ] ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i339.i, i64 12 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i339.i, i64 10
  %i.sq = load i16, ptr %i.sp, align 2, !noalias !69309, !noundef !29 ; 2 uses
  %i.sr = zext i16 %i.sq to i64                   ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.sr
  %i.st = icmp eq i16 %i.sq, 0
  br i1 %i.st, label %._crit_edge1846, label %.lr.ph1845

bb.dq:                                            ; preds = %.lr.ph1845
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i341.i1843, i64 1 ; 2 uses
  %i.sv = add nuw nsw i64 %.sroa.8.0.i.i.i340.i1842, 1
  %i.sw = icmp eq ptr %i.su, %i.ss
  br i1 %i.sw, label %._crit_edge1846, label %.lr.ph1845

.lr.ph1845:                                       ; preds = %bb.dp, %bb.dq
  %.sroa.0.03.i.i.i341.i1843 = phi ptr [ %i.su, %bb.dq ], [ %i.so, %bb.dp ] ; 2 uses
  %.sroa.8.0.i.i.i340.i1842 = phi i64 [ %i.sv, %bb.dq ], [ 0, %bb.dp ] ; 2 uses
  %.val6.i.i.i342.i = load i8, ptr %.sroa.0.03.i.i.i341.i1843, align 1, !range !190, !noalias !69309, !noundef !29
  switch i8 %.val6.i.i.i342.i, label %default.unreachable [
    i8 2, label %._crit_edge1846
    i8 1, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit346.i
    i8 0, label %bb.dq
  ]

default.unreachable:                              ; preds = %.lr.ph1845
  unreachable

._crit_edge1846:                                  ; preds = %bb.dq, %.lr.ph1845, %bb.dp
  %.sroa.4.0.i.ph.i.i345.i = phi i64 [ %i.sr, %bb.dp ], [ %i.sr, %bb.dq ], [ %.sroa.8.0.i.i.i340.i1842, %.lr.ph1845 ] ; 2 uses
  %i.sx = icmp eq i64 %.sroa.3.0.i.i338.i, 0
  br i1 %i.sx, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit346.i, label %bb.dr

bb.dr:                                            ; preds = %._crit_edge1846
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i339.i, i64 24
  %i.sz = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i345.i, 12
  call void @llvm.assume(i1 %i.sz)
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %.sroa.4.0.i.ph.i.i345.i
  %i.tb = load ptr, ptr %i.ta, align 8, !noalias !69309, !nonnull !29, !noundef !29
  %i.tc = add i64 %.sroa.3.0.i.i338.i, -1
  br label %bb.dp

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit346.i: ; preds = %._crit_edge1846, %.lr.ph1845
  %.sroa.0.0.i344.i = phi i1 [ true, %.lr.ph1845 ], [ false, %._crit_edge1846 ] ; 2 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dv, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit346.i
  %.sroa.3.0.i.i348.i = phi i64 [ %i.ts, %bb.dv ], [ %.val304.i, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit346.i ] ; 2 uses
  %.sroa.0.0.i.i349.i = phi ptr [ %i.tr, %bb.dv ], [ %.val303.i, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit346.i ] ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i349.i, i64 12 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i349.i, i64 10
  %i.tf = load i16, ptr %i.te, align 2, !noalias !69312, !noundef !29 ; 2 uses
  %i.tg = zext i16 %i.tf to i64                   ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.tg
  %i.ti = icmp eq i16 %i.tf, 0
  br i1 %i.ti, label %._crit_edge1854, label %.lr.ph1853

bb.dt:                                            ; preds = %.lr.ph1853
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i351.i1851, i64 1 ; 2 uses
  %i.tk = add nuw nsw i64 %.sroa.8.0.i.i.i350.i1850, 1
  %i.tl = icmp eq ptr %i.tj, %i.th
  br i1 %i.tl, label %._crit_edge1854, label %.lr.ph1853

.lr.ph1853:                                       ; preds = %bb.ds, %bb.dt
  %.sroa.0.03.i.i.i351.i1851 = phi ptr [ %i.tj, %bb.dt ], [ %i.td, %bb.ds ] ; 2 uses
  %.sroa.8.0.i.i.i350.i1850 = phi i64 [ %i.tk, %bb.dt ], [ 0, %bb.ds ] ; 2 uses
  %.val6.i.i.i352.i = load i8, ptr %.sroa.0.03.i.i.i351.i1851, align 1, !range !190, !noalias !69312, !noundef !29
  %11 = zext nneg i8 %.val6.i.i.i352.i to i64
  %i.tm = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 2, i64 %11)
  switch i8 %i.tm, label %bb.du [
    i8 -1, label %._crit_edge1854
    i8 0, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit356.i
    i8 1, label %bb.dt
  ]

bb.du:                                            ; preds = %.lr.ph1853
  unreachable

._crit_edge1854:                                  ; preds = %bb.dt, %.lr.ph1853, %bb.ds
  %.sroa.4.0.i.ph.i.i355.i = phi i64 [ %i.tg, %bb.ds ], [ %i.tg, %bb.dt ], [ %.sroa.8.0.i.i.i350.i1850, %.lr.ph1853 ] ; 2 uses
  %i.tn = icmp eq i64 %.sroa.3.0.i.i348.i, 0
  br i1 %i.tn, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit356.i, label %bb.dv

bb.dv:                                            ; preds = %._crit_edge1854
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i349.i, i64 24
  %i.tp = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i355.i, 12
  call void @llvm.assume(i1 %i.tp)
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %.sroa.4.0.i.ph.i.i355.i
  %i.tr = load ptr, ptr %i.tq, align 8, !noalias !69312, !nonnull !29, !noundef !29
  %i.ts = add i64 %.sroa.3.0.i.i348.i, -1
  br label %bb.ds

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit356.i: ; preds = %._crit_edge1854, %.lr.ph1853, %bb.dl
  %i.tt = phi i1 [ false, %bb.dl ], [ %.sroa.0.0.i344.i, %.lr.ph1853 ], [ %.sroa.0.0.i344.i, %._crit_edge1854 ] ; 4 uses
  %.not252164167.i = phi i1 [ true, %bb.dl ], [ %.sroa.0.0.i336.i, %.lr.ph1853 ], [ %.sroa.0.0.i336.i, %._crit_edge1854 ]
  %.sroa.0.0.i354.i = phi i1 [ %i.hx, %bb.dl ], [ %i.jo, %.lr.ph1853 ], [ %i.hx, %._crit_edge1854 ]
  br i1 %.not253.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit356.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4109.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !69315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !69315
  invoke void @_RNvMNtNtCs2uF6e5yHHeh_6chrono6offset5localNtB2_5Local3now(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.br)
          to label %.noexc358.i unwind label %.loopexit.split-lp235.loopexit.i, !noalias !69206

.noexc358.i:                                      ; preds = %bb.dw
  invoke fastcc void @_RINvNtCskXtk6F4WjxZ_4just15datetime_format15datetime_formatNtNtNtCs2uF6e5yHHeh_6chrono6offset5local5LocalEB4_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.bs, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4109.0.copyload.i, i64 noundef %.sroa.5110.0.copyload.i)
          to label %.noexc359.i unwind label %.loopexit.split-lp235.loopexit.i, !noalias !69206

.noexc359.i:                                      ; preds = %.noexc358.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !69315
  %i.tu = load i64, ptr %i.bs, align 8, !range !8559, !noalias !69315, !noundef !29 ; 2 uses
  %.not.i357.i = icmp eq i64 %i.tu, -2
  %.sroa.7117.sroa.5.0.copyload127.i = load i64, ptr %.sroa.7117.sroa.5.0..sroa.7117.8..sroa_idx118.sroa_idx.i, align 8, !noalias !69319 ; 2 uses
  br i1 %.not.i357.i, label %bb.dz, label %bb.dy

bb.dx:                                            ; preds = %bb.dz, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit356.i
  %.sroa.7.sroa.8.sroa.0.1.i = phi ptr [ %.sroa.7.sroa.8.sroa.0.0.i, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit356.i ], [ %.sroa.7117.sroa.0.0.copyload126.i, %bb.dz ] ; 17 uses
  %.sroa.7.sroa.8.sroa.7.1.i = phi i64 [ %.sroa.7.sroa.8.sroa.7.0.i, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit356.i ], [ %.sroa.7117.sroa.5.0.copyload127.i, %bb.dz ] ; 6 uses
  %.sroa.7.sroa.0.0.i = phi i64 [ -1, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just5sigil5SigilNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit356.i ], [ %.sroa.4115.8.copyload116.i, %bb.dz ] ; 18 uses
  %i.tv = load i8, ptr %i.hu, align 8, !range !274, !noalias !69206, !noundef !29
  %i.tw = trunc nuw i8 %i.tv to i1
  br i1 %i.tw, label %bb.ea, label %bb.ec

bb.dy:                                            ; preds = %.noexc359.i
  %.sroa.7117.sroa.0.0.copyload.i = load ptr, ptr %i.ht, align 8, !noalias !69319
  %.sroa.7117.sroa.5.0.copyload.i = load i64, ptr %.sroa.7117.8..sroa_idx118.i, align 8, !noalias !69319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !69315
  store i64 31, ptr %i.cu, align 8, !alias.scope !69193, !noalias !69209
  %.sroa.4189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.tu, ptr %.sroa.4189.0..sroa_idx.i, align 8, !alias.scope !69193, !noalias !69209
  %.sroa.5190.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %.sroa.7117.sroa.0.0.copyload.i, ptr %.sroa.5190.0..sroa_idx.i, align 8, !alias.scope !69193, !noalias !69209
  %.sroa.5190.sroa.4.0..sroa.5190.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store i64 %.sroa.7117.sroa.5.0.copyload.i, ptr %.sroa.5190.sroa.4.0..sroa.5190.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !69193, !noalias !69209
  %.sroa.6191.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store i64 %.sroa.7117.sroa.5.0.copyload127.i, ptr %.sroa.6191.0..sroa_idx.i, align 8, !alias.scope !69193, !noalias !69209
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit484.i

bb.dz:                                            ; preds = %.noexc359.i
  %.sroa.4115.8.copyload116.i = load i64, ptr %i.ht, align 8, !noalias !69319
  %.sroa.7117.sroa.0.0.copyload126.i = load ptr, ptr %.sroa.7117.8..sroa_idx118.i, align 8, !noalias !69319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !69315
  br label %bb.dx

bb.ea:                                            ; preds = %bb.eh, %bb.ec, %bb.dx
  %i.tx = load i8, ptr %i.hz, align 2, !range !274, !noalias !69206, !noundef !29
  %i.ty = trunc nuw i8 %i.tx to i1
  br i1 %i.ty, label %bb.el, label %bb.ek

.split.i:                                         ; preds = %.split.thread.i, %.split.loopexit.split-lp.i, %.split.loopexit.i, %bb.fg, %bb.ez, %bb.eb
  %.sroa.7.sroa.0.0700.i = phi i64 [ %.sroa.7.sroa.0.0.i, %.split.thread.i ], [ %.sroa.7.sroa.0.0.i, %bb.fg ], [ %.sroa.7.sroa.0.0.lcssa.i, %bb.eb ], [ %.sroa.7.sroa.0.0.i, %bb.ez ], [ %.sroa.7.sroa.0.0.i, %.split.loopexit.i ], [ %.sroa.7.sroa.0.0.i, %.split.loopexit.split-lp.i ] ; 2 uses
  %.sroa.0115.0.i = phi i8 [ %.sroa.0115.2.i, %.split.thread.i ], [ %.sroa.0115.2.i, %bb.fg ], [ %.sroa.0115.1.i, %bb.eb ], [ %.sroa.0115.3.i, %bb.ez ], [ %.sroa.0115.2.i, %.split.loopexit.i ], [ %.sroa.0115.2.i, %.split.loopexit.split-lp.i ]
  %.pn266.pn.pn.i = phi { ptr, i32 } [ %.pn266.pn181.i, %.split.thread.i ], [ %.pn266.i, %bb.fg ], [ %i.uc, %bb.eb ], [ %i.us, %bb.ez ], [ %lpad.loopexit253.i, %.split.loopexit.i ], [ %lpad.loopexit.split-lp254.i, %.split.loopexit.split-lp.i ] ; 2 uses
  %i.tz = trunc nuw i8 %.sroa.0115.0.i to i1
  %i.ua = add i64 %.sroa.7.sroa.0.0700.i, -1
  %i.ub = icmp ult i64 %i.ua, -2
  %or.cond212.not.i = select i1 %i.ub, i1 %i.tz, i1 false
  br i1 %or.cond212.not.i, label %bb.ht, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit326.i

bb.eb:                                            ; preds = %bb.ei, %bb.ef
  %.sroa.7.sroa.0.0.lcssa.i = phi i64 [ -1, %bb.ef ], [ %.sroa.7.sroa.0.0.i, %bb.ei ]
  %.sroa.0115.1.i = phi i8 [ 1, %bb.ef ], [ %.sroa.0115.2.i, %bb.ei ]
  %i.uc = landingpad { ptr, i32 }
          cleanup
  br label %.split.i

bb.ec:                                            ; preds = %bb.dx
  %i.ud = load i8, ptr %i.em, align 8, !range !15324, !noalias !69206, !noundef !29 ; 2 uses
  %i.ue = icmp samesign ult i8 %i.ud, 2
  %.not255.i = icmp eq i64 %.sroa.7.sroa.0.0.i, -1
  %or.cond280.i = select i1 %i.ue, i1 %.not255.i, i1 false
  br i1 %or.cond280.i, label %bb.ed, label %bb.ea

bb.ed:                                            ; preds = %bb.ec
  br i1 %.sroa.0.0.i354.i, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.uf = load i8, ptr %i.hy, align 8, !range !274, !noalias !69206, !noundef !29
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  %i.uh = invoke fastcc noundef zeroext i1 @_RNvMNtCskXtk6F4WjxZ_4just13attribute_setNtB2_12AttributeSet8contains(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv, i8 noundef 19)
          to label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe8no_quiet.exit.i unwind label %bb.eb, !noalias !69204

_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe8no_quiet.exit.i: ; preds = %bb.ef
  br i1 %i.uh, label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe8no_quiet.exit._crit_edge.i, label %bb.eg

_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe8no_quiet.exit._crit_edge.i: ; preds = %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe8no_quiet.exit.i
  %.pre820.i = load i8, ptr %i.em, align 8, !range !15324, !noalias !69206
  br label %bb.eh

bb.eg:                                            ; preds = %bb.eh, %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe8no_quiet.exit.i, %bb.ed
  %i.ui = load i8, ptr %i.hu, align 8, !range !274, !noalias !69206, !noundef !29
  %i.uj = trunc nuw i8 %i.ui to i1
  br i1 %i.uj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit363.i, label %bb.ei

bb.eh:                                            ; preds = %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe8no_quiet.exit._crit_edge.i, %bb.ee
  %i.uk = phi i8 [ %.pre820.i, %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe8no_quiet.exit._crit_edge.i ], [ %i.ud, %bb.ee ]
  %i.ul = icmp eq i8 %i.uk, 0
  br i1 %i.ul, label %bb.eg, label %bb.ea

bb.ei:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit425.i, %bb.eg
  %.sroa.0115.2.i = phi i8 [ %.sroa.0115.3.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit425.i ], [ 1, %bb.eg ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !69206
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8settingsNtB2_8Settings13shell_command(ptr noalias nofree noundef align 8 captures(none) dereferenceable(200) %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.gt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %i.ek)
          to label %bb.fe unwind label %bb.eb, !noalias !69206

bb.ej:                                            ; preds = %bb.fd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.8.sroa.0.1.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.8.sroa.0.1.i, i64 noundef %.sroa.7.sroa.0.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !69320
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit363.i

bb.ek:                                            ; preds = %bb.ea
  %.sroa.872.0.copyload.i = load i8, ptr %.sroa.872.0..sroa_idx.i, align 1, !noalias !69206
  %.sroa.1073.0.copyload.i = load i64, ptr %.sroa.1073.0..sroa_idx.i, align 2, !noalias !69206 ; 8 uses
  %.sroa.1073.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.1073.0.copyload.i to i8
  %.sroa.1073.sroa.5.0.extract.shift.i = lshr i64 %.sroa.1073.0.copyload.i, 8
  %.sroa.1073.sroa.5.0.extract.trunc.i = trunc i64 %.sroa.1073.sroa.5.0.extract.shift.i to i8
  %.sroa.1073.sroa.6.0.extract.shift.i = lshr i64 %.sroa.1073.0.copyload.i, 16
  %.sroa.1073.sroa.6.0.extract.trunc.i = trunc i64 %.sroa.1073.sroa.6.0.extract.shift.i to i8
  %.sroa.1073.sroa.7.0.extract.shift.i = lshr i64 %.sroa.1073.0.copyload.i, 24
  %.sroa.1073.sroa.7.0.extract.trunc.i = trunc i64 %.sroa.1073.sroa.7.0.extract.shift.i to i8
  %.sroa.1073.sroa.8.0.extract.shift.i = lshr i64 %.sroa.1073.0.copyload.i, 32
  %.sroa.1073.sroa.8.0.extract.trunc.i = trunc i64 %.sroa.1073.sroa.8.0.extract.shift.i to i8
  %.sroa.1073.sroa.9.0.extract.shift.i = lshr i64 %.sroa.1073.0.copyload.i, 40
  %.sroa.1073.sroa.9.0.extract.trunc.i = trunc i64 %.sroa.1073.sroa.9.0.extract.shift.i to i8
  %.sroa.1073.sroa.10.0.extract.shift.i = lshr i64 %.sroa.1073.0.copyload.i, 48
  %.sroa.1073.sroa.10.0.extract.trunc.i = trunc i64 %.sroa.1073.sroa.10.0.extract.shift.i to i8
  %.sroa.1073.sroa.11.0.extract.shift.i = lshr i64 %.sroa.1073.0.copyload.i, 56
  %.sroa.1073.sroa.11.0.extract.trunc.i = trunc nuw i64 %.sroa.1073.sroa.11.0.extract.shift.i to i8
  %.sroa.21.0.copyload.i = load i32, ptr %.sroa.21.0..sroa_idx.i, align 2, !noalias !69206
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ea
  %.sroa.872.0.i = phi i8 [ %.sroa.872.0.copyload.i, %bb.ek ], [ 1, %bb.ea ] ; 2 uses
  %.sroa.19.0.in.i = phi ptr [ %.sroa.19.0..sroa_idx.i, %bb.ek ], [ %i.ia, %bb.ea ]
  %.sroa.21.0.i = phi i32 [ %.sroa.21.0.copyload.i, %bb.ek ], [ 255, %bb.ea ] ; 2 uses
  %.sroa.1073.sroa.0.0.i = phi i8 [ %.sroa.1073.sroa.0.0.extract.trunc.i, %bb.ek ], [ 0, %bb.ea ] ; 2 uses
  %.sroa.1073.sroa.5.0.i = phi i8 [ %.sroa.1073.sroa.5.0.extract.trunc.i, %bb.ek ], [ 0, %bb.ea ] ; 2 uses
  %.sroa.1073.sroa.6.0.i = phi i8 [ %.sroa.1073.sroa.6.0.extract.trunc.i, %bb.ek ], [ 0, %bb.ea ] ; 2 uses
  %.sroa.1073.sroa.7.0.i = phi i8 [ %.sroa.1073.sroa.7.0.extract.trunc.i, %bb.ek ], [ 0, %bb.ea ] ; 2 uses
  %.sroa.1073.sroa.8.0.i = phi i8 [ %.sroa.1073.sroa.8.0.extract.trunc.i, %bb.ek ], [ 0, %bb.ea ] ; 2 uses
  %.sroa.1073.sroa.9.0.i = phi i8 [ %.sroa.1073.sroa.9.0.extract.trunc.i, %bb.ek ], [ 0, %bb.ea ] ; 2 uses
  %.sroa.1073.sroa.10.0.i = phi i8 [ %.sroa.1073.sroa.10.0.extract.trunc.i, %bb.ek ], [ 0, %bb.ea ] ; 2 uses
  %.sroa.1073.sroa.11.0.i = phi i8 [ %.sroa.1073.sroa.11.0.extract.trunc.i, %bb.ek ], [ 0, %bb.ea ] ; 2 uses
  %.sroa.2374.0.i = load i8, ptr %.sroa.6326.0..sroa_idx, align 2, !noalias !69206 ; 2 uses
  %.sroa.19.0.i = load i32, ptr %.sroa.19.0.in.i, align 2, !noalias !69206 ; 2 uses
  %i.um = call noundef i32 @isatty(i32 noundef 2) #70, !noalias !69325
  %.not.i106 = icmp eq i32 %i.um, 0               ; 2 uses
  %.not257.i = icmp eq i64 %.sroa.7.sroa.0.0.i, -1
  br i1 %.not257.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit419.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !69206
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.8.sroa.0.1.i) ]
  switch i8 %.sroa.2374.0.i, label %default.unreachable36.i.i [
    i8 0, label %bb.eo
    i8 1, label %bb.en
    i8 2, label %bb.es
  ]

default.unreachable36.i.i:                        ; preds = %bb.em
  unreachable

bb.en:                                            ; preds = %bb.em
  br i1 %.not.i106, label %bb.es, label %bb.eo

end_hunk_4
begin_hunk_5_@_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringjE6insertCskXtk6F4WjxZ_4just:bb.a
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bm ]
  %i.ib = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil, 1
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %.sroa.0.09.i.i.i.i.i.i.epil
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !71611, !noalias !71614, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.fu, ptr %i.id, align 8, !noalias !71617
  %i.ie = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil to i16
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 360
  store i16 %i.ie, ptr %i.if, align 8, !noalias !71614
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i.i, label %bb.bm, !llvm.loop !71618

_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.bm, %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i.i.unr-lcssa
  %spec.select.i36.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.fu, ptr %i.ct ; 11 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i, i64 362 ; 2 uses
  %i.ih = load i16, ptr %i.ig, align 2, !noalias !71619, !noundef !29 ; 2 uses
  %i.ii = zext i16 %i.ih to i64                   ; 5 uses
  %i.ij = add i16 %i.ih, 1
  %i.ik = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71623)
  %i.il = add nuw nsw i64 %.sroa.5.0.i.i.i, 1     ; 7 uses
  %.not.i11.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.ii
  %i.im = getelementptr inbounds nuw [24 x i8], ptr %i.ik, i64 %.sroa.5.0.i.i.i ; 7 uses
  br i1 %.not.i11.not.i.i.i, label %bb.bn, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertjECskXtk6F4WjxZ_4just.exit.i12.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertjECskXtk6F4WjxZ_4just.exit.i12.i.i.i: ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i.i
  store i64 %.sroa.03.0.i.i, ptr %i.im, align 8, !alias.scope !71626, !noalias !71628
  %.sroa.965.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store ptr %.sroa.8.0.i.i, ptr %.sroa.965.0..sroa_idx.i.i, align 8, !alias.scope !71626, !noalias !71628
  %.sroa.1272.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store i64 %.sroa.9.0.i.i, ptr %.sroa.1272.0..sroa_idx.i.i, align 8, !alias.scope !71626, !noalias !71628
  %i.in = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i, i64 272
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %.sroa.5.0.i.i.i
  store i64 %.sroa.913.0.i.i, ptr %i.io, align 8, !alias.scope !71629, !noalias !71619
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringjEEECskXtk6F4WjxZ_4just.exit.i13.i.i.i

bb.bn:                                            ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i.i
  %i.ip = getelementptr inbounds nuw [24 x i8], ptr %i.ik, i64 %i.il
  %i.iq = sub nuw nsw i64 %i.ii, %.sroa.5.0.i.i.i ; 2 uses
  %i.ir = mul nuw nsw i64 %i.iq, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ip, ptr nonnull align 8 %i.im, i64 %i.ir, i1 false), !alias.scope !71632, !noalias !71633
  store i64 %.sroa.03.0.i.i, ptr %i.im, align 8, !alias.scope !71626, !noalias !71628
  %.sroa.965.0..sroa_idx66.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store ptr %.sroa.8.0.i.i, ptr %.sroa.965.0..sroa_idx66.i.i, align 8, !alias.scope !71626, !noalias !71628
  %.sroa.1272.0..sroa_idx73.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store i64 %.sroa.9.0.i.i, ptr %.sroa.1272.0..sroa_idx73.i.i, align 8, !alias.scope !71626, !noalias !71628
  %i.is = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i, i64 272 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.sroa.5.0.i.i.i ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.il
  %i.iv = shl nuw nsw i64 %i.iq, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iu, ptr nonnull align 8 %i.it, i64 %i.iv, i1 false), !alias.scope !71629, !noalias !71619
  store i64 %.sroa.913.0.i.i, ptr %i.it, align 8, !alias.scope !71629, !noalias !71619
  %i.iw = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i, i64 368 ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.il
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.sroa.5.0.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iz, ptr nonnull align 8 %i.ix, i64 %i.iv, i1 false), !alias.scope !71634, !noalias !71619
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringjEEECskXtk6F4WjxZ_4just.exit.i13.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringjEEECskXtk6F4WjxZ_4just.exit.i13.i.i.i: ; preds = %bb.bn, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertjECskXtk6F4WjxZ_4just.exit.i12.i.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i, i64 368 ; 6 uses
  %i.jb = add nuw nsw i64 %i.ii, 2                ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.il
  store ptr %.sroa.16.0.i.i, ptr %i.jc, align 8, !alias.scope !71634, !noalias !71619
  store i16 %i.ij, ptr %i.ig, align 2, !noalias !71619
  %i.jd = icmp samesign ult i64 %i.il, %i.jb
  br i1 %i.jd, label %.lr.ph.i.i14.i.i.i.preheader, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i

.lr.ph.i.i14.i.i.i.preheader:                     ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringjEEECskXtk6F4WjxZ_4just.exit.i13.i.i.i
  %i.je = add nuw nsw i64 %i.ii, 1
  %i.jf = sub nsw i64 %i.je, %.sroa.5.0.i.i.i
  %i.jg = sub nsw i64 %i.ii, %.sroa.5.0.i.i.i
  %xtraiter224 = and i64 %i.jf, 3                 ; 2 uses
  %lcmp.mod225.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod225.not, label %.lr.ph.i.i14.i.i.i.prol.loopexit, label %.lr.ph.i.i14.i.i.i.prol

.lr.ph.i.i14.i.i.i.prol:                          ; preds = %.lr.ph.i.i14.i.i.i.preheader, %.lr.ph.i.i14.i.i.i.prol
  %.sroa.0.06.i.i15.i.i.i.prol = phi i64 [ %i.jh, %.lr.ph.i.i14.i.i.i.prol ], [ %i.il, %.lr.ph.i.i14.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i14.i.i.i.prol ], [ 0, %.lr.ph.i.i14.i.i.i.preheader ]
  %i.jh = add nuw nsw i64 %.sroa.0.06.i.i15.i.i.i.prol, 1 ; 2 uses
  %i.ji = icmp samesign ult i64 %.sroa.0.06.i.i15.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ji)
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.sroa.0.06.i.i15.i.i.i.prol
  %i.jk = load ptr, ptr %i.jj, align 8, !noalias !71619, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %spec.select.i36.i.i, ptr %i.jk, align 8, !noalias !71619
  %i.jl = trunc nuw nsw i64 %.sroa.0.06.i.i15.i.i.i.prol to i16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 360
  store i16 %i.jl, ptr %i.jm, align 8, !noalias !71619
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter224
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i14.i.i.i.prol.loopexit, label %.lr.ph.i.i14.i.i.i.prol, !llvm.loop !71637

.lr.ph.i.i14.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i14.i.i.i.prol, %.lr.ph.i.i14.i.i.i.preheader
  %.sroa.0.06.i.i15.i.i.i.unr = phi i64 [ %i.il, %.lr.ph.i.i14.i.i.i.preheader ], [ %i.jh, %.lr.ph.i.i14.i.i.i.prol ]
  %i.jn = icmp ult i64 %i.jg, 3
  br i1 %i.jn, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i, label %.lr.ph.i.i14.i.i.i

.lr.ph.i.i14.i.i.i:                               ; preds = %.lr.ph.i.i14.i.i.i.prol.loopexit, %.lr.ph.i.i14.i.i.i
  %.sroa.0.06.i.i15.i.i.i = phi i64 [ %i.kd, %.lr.ph.i.i14.i.i.i ], [ %.sroa.0.06.i.i15.i.i.i.unr, %.lr.ph.i.i14.i.i.i.prol.loopexit ] ; 7 uses
  %i.jo = add nuw nsw i64 %.sroa.0.06.i.i15.i.i.i, 1 ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.sroa.0.06.i.i15.i.i.i
  %i.jq = load ptr, ptr %i.jp, align 8, !noalias !71619, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %spec.select.i36.i.i, ptr %i.jq, align 8, !noalias !71619
  %i.jr = trunc nuw nsw i64 %.sroa.0.06.i.i15.i.i.i to i16
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 360
  store i16 %i.jr, ptr %i.js, align 8, !noalias !71619
  %i.jt = add nuw nsw i64 %.sroa.0.06.i.i15.i.i.i, 2 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jo
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !71619, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %spec.select.i36.i.i, ptr %i.jv, align 8, !noalias !71619
  %i.jw = trunc nuw nsw i64 %i.jo to i16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 360
  store i16 %i.jw, ptr %i.jx, align 8, !noalias !71619
  %i.jy = add nuw nsw i64 %.sroa.0.06.i.i15.i.i.i, 3 ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jt
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !71619, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %spec.select.i36.i.i, ptr %i.ka, align 8, !noalias !71619
  %i.kb = trunc nuw nsw i64 %i.jt to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 360
  store i16 %i.kb, ptr %i.kc, align 8, !noalias !71619
  %i.kd = add nuw nsw i64 %.sroa.0.06.i.i15.i.i.i, 4 ; 2 uses
  %i.ke = icmp ult i64 %.sroa.0.06.i.i15.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jy
  %i.kg = load ptr, ptr %i.kf, align 8, !noalias !71619, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %spec.select.i36.i.i, ptr %i.kg, align 8, !noalias !71619
  %i.kh = trunc nuw nsw i64 %i.jy to i16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 360
  store i16 %i.kh, ptr %i.ki, align 8, !noalias !71619
  %exitcond.not.i.i16.i.i.i.3 = icmp eq i64 %i.kd, %i.jb
  br i1 %exitcond.not.i.i16.i.i.i.3, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i, label %.lr.ph.i.i14.i.i.i

bb.bo:                                            ; preds = %bb.bl, %bb.ar
  %.pn.ph.i26.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.bl ], [ %i.dq, %bb.ar ] ; 2 uses
  %i.kj = icmp eq i64 %.sroa.03.0.i.i, 0
  br i1 %i.kj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit14.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.i.i, i64 noundef %.sroa.03.0.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !71638
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit14.i

_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %.lr.ph.i.i14.i.i.i.prol.loopexit, %.lr.ph.i.i14.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringjEEECskXtk6F4WjxZ_4just.exit.i13.i.i.i
  %.not16.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i30.i.i, -1
  br i1 %.not16.i.i, label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringjE12insert_entryCskXtk6F4WjxZ_4just.exit, label %.preheader.i.i

bb.bq:                                            ; preds = %bb.al
  store i16 1, ptr %i.cy, align 2, !noalias !71552
  %i.kk = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %.sroa.03.0.i.i, ptr %i.kk, align 8, !noalias !71539
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !noalias !71539
  %.sroa.6.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store i64 %.sroa.9.0.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 8, !noalias !71539
  %i.kl = getelementptr inbounds nuw i8, ptr %i.cw, i64 272
  store i64 %.sroa.913.0.i.i, ptr %i.kl, align 8, !noalias !71552
  %i.km = getelementptr inbounds nuw i8, ptr %i.cw, i64 376
  store ptr %.sroa.16.0.i.i, ptr %i.km, align 8, !noalias !71552
  store ptr %i.cw, ptr %.sroa.16.0.i.i, align 8, !noalias !71552
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.16.0.i.i, i64 360
  store i16 1, ptr %i.kn, align 8, !noalias !71552
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringjE12insert_entryCskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit14.i: ; preds = %bb.bs, %bb.br, %bb.bp, %bb.bo, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.ab, %bb.aa
  %.pn32.i = phi { ptr, i32 } [ %i.ko, %bb.bs ], [ %i.ko, %bb.br ], [ %.pn.ph.i26.i.i, %bb.bp ], [ %i.df, %bb.an ], [ %i.df, %bb.am ], [ %.pn.ph.i.i.i, %bb.aa ], [ %.pn.ph.i26.i.i, %bb.bo ], [ %.pn.ph.i.i.i, %bb.ab ], [ %i.dh, %bb.ao ], [ %i.dh, %bb.ap ]
  resume { ptr, i32 } %.pn32.i

bb.br:                                            ; preds = %bb.i
  %i.ko = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kp = icmp eq i64 %.sroa.021.0.copyload.i, 0
  br i1 %i.kp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit14.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.523.0.copyload.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.523.0.copyload.i, i64 noundef %.sroa.021.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !71643
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit14.i

_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringjE12insert_entryCskXtk6F4WjxZ_4just.exit: ; preds = %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.j, %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringjNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.thread.i.i, %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringjNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i, %bb.bq
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !noalias !71458, !noundef !29
  %i.ks = add i64 %i.kr, 1
  store i64 %i.ks, ptr %i.kq, align 8, !noalias !71458
  br label %bb.bt

bb.bt:                                            ; preds = %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringjE5entryCskXtk6F4WjxZ_4just.exit.thread, %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringjE12insert_entryCskXtk6F4WjxZ_4just.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB7_7set_val9SetValZSTE6insertB1b_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 42) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71648)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !71648, !noalias !71651, !noundef !29 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !71648, !noalias !71651, !noundef !29 ; 3 uses
  %2 = zext nneg i8 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.c, %bb.b ], [ %i.s, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.a, %bb.b ], [ %i.r, %bb.f ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 12 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.f = load i16, ptr %i.e, align 2, !noalias !71653, !noundef !29 ; 4 uses
  %i.g = zext i16 %i.f to i64                     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.i = icmp eq i16 %i.f, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i59, i64 1 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i.i58, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i.i59 = phi ptr [ %i.j, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i58 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.val6.i.i.i = load i8, ptr %.sroa.0.03.i.i.i59, align 1, !range !40372, !noalias !71653, !noundef !29
  %3 = zext nneg i8 %.val6.i.i.i to i64
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  switch i8 %i.m, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.8.0.i.i.i58, %.lr.ph ] ; 12 uses
  %i.n = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.p = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.0.i.ph.i.i
  %i.r = load ptr, ptr %i.q, align 8, !noalias !71653, !nonnull !29, !noundef !29
  %i.s = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

bb.g:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10 ; 3 uses
  %i.u = icmp ult i16 %i.f, 11
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  br i1 %i.v, label %bb.n, label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.g
  br i1 %.not.i.i.i.i.not, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.4.0.i.ph.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = sub nuw nsw i64 %i.g, %.sroa.4.0.i.ph.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %i.w, i64 %i.y, i1 false), !alias.scope !71656, !noalias !71659
  br label %bb.t

bb.k:                                             ; preds = %bb.h
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.l [
    i64 5, label %bb.n
    i64 6, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.z = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.h
  %.sroa.09.0.i.i.i = phi i1 [ true, %bb.m ], [ true, %bb.l ], [ false, %bb.h ], [ false, %bb.k ]
  %.sroa.510.0.i.i.i = phi i64 [ 0, %bb.m ], [ %i.z, %bb.l ], [ %.sroa.4.0.i.ph.i.i, %bb.h ], [ %.sroa.4.0.i.ph.i.i, %bb.k ] ; 4 uses
  %.sroa.013.0.i.i.i = phi i64 [ 5, %bb.m ], [ 6, %bb.l ], [ 4, %bb.h ], [ %.sroa.4.0.i.ph.i.i, %bb.k ] ; 3 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !71672
  %i.aa = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !71672 ; 8 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.o, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1t_.exit.i.i.i.i, !prof !341

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #71, !noalias !71672
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1t_.exit.i.i.i.i: ; preds = %bb.n
  store ptr null, ptr %i.aa, align 8, !noalias !71672
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71676)
  %i.ad = load i16, ptr %i.t, align 2, !noalias !71679, !noundef !29
  %i.ae = zext i16 %i.ad to i64
  %i.af = xor i64 %.sroa.013.0.i.i.i, -1
  %i.ag = add nsw i64 %i.ae, %i.af                ; 4 uses
  %i.ah = trunc i64 %i.ag to i16
  store i16 %i.ah, ptr %i.ac, align 2, !alias.scope !71676, !noalias !71672
  %i.ai = icmp ult i64 %i.ag, 12
  br i1 %i.ai, label %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i, label %bb.p, !prof !5801

bb.p:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1t_.exit.i.i.i.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1200) #75
          to label %.noexc.i.i.i.i unwind label %bb.q, !noalias !71672

.noexc.i.i.i.i:                                   ; preds = %bb.p
  unreachable

common.resume.i.i:                                ; preds = %bb.ap, %bb.q
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %.pn.i.i.i.i, %bb.ap ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.q:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef 24, i64 noundef 8) #70, !noalias !71672
  br label %common.resume.i.i

_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1t_.exit.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.013.0.i.i.i ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !range !40372, !noalias !71679, !noundef !29 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.an, ptr nonnull readonly align 1 %i.am, i64 range(i64 0, 65536) %i.ag, i1 false), !alias.scope !71680, !noalias !71672
  %i.ao = trunc nuw nsw i64 %.sroa.013.0.i.i.i to i16
  store i16 %i.ao, ptr %i.t, align 2, !noalias !71679
  %spec.select.i.i.i = select i1 %.sroa.09.0.i.i.i, ptr %i.aa, ptr %.sroa.0.0.i.i ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 10 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !noalias !71684, !noundef !29 ; 2 uses
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 12 ; 2 uses
  %.not.i14.not.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i, %i.ar
  br i1 %.not.i14.not.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.510.0.i.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = sub nuw nsw i64 %i.ar, %.sroa.510.0.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %i.at, i64 %i.av, i1 false), !alias.scope !71688, !noalias !71684
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i
  %i.aw = add i16 %i.aq, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.510.0.i.i.i
  store i8 %1, ptr %i.ax, align 1, !alias.scope !71688, !noalias !71684
  store i16 %i.aw, ptr %i.ap, align 2, !noalias !71684
  %i.ay = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !71691, !noundef !29 ; 2 uses
  %.not.i82.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i82.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.t:                                             ; preds = %bb.j, %bb.i
  %i.az = add nuw nsw i16 %i.f, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.4.0.i.ph.i.i
  store i8 %1, ptr %i.ba, align 1, !alias.scope !71656, !noalias !71659
  store i16 %i.az, ptr %i.t, align 2, !noalias !71659
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB9_7set_val9SetValZSTE12insert_entryB1n_.exit

._crit_edge.i.i:                                  ; preds = %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i, %bb.s
  %.sroa.11.0.lcssa.i.i = phi i8 [ %i.al, %bb.s ], [ %i.ee, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i ]
  %.sroa.9.0.lcssa.i.i = phi i64 [ 0, %bb.s ], [ %i.bo, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i ]
  %.sroa.7.0.lcssa.i.i = phi ptr [ %i.aa, %bb.s ], [ %i.ds, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71694)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !71697
  %i.bb = tail call noalias noundef align 8 dereferenceable_or_null(120) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !71697 ; 10 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.u, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1y_.exit.i.i.i.i.i.i.i, !prof !341

bb.u:                                             ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #71
          to label %.noexc.i.i34.i.i unwind label %bb.y, !noalias !71697

.noexc.i.i34.i.i:                                 ; preds = %bb.u
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1y_.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i
  store ptr null, ptr %i.bb, align 8, !noalias !71697
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 10 ; 2 uses
  store i16 0, ptr %i.bd, align 2, !noalias !71697
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.a, ptr %i.be, align 8, !noalias !71697
  %i.bf = add i64 %i.c, 1                         ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.v, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1H_.exit.i.i.i, !prof !341

bb.v:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1y_.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #71
          to label %bb.w unwind label %bb.x, !noalias !71697

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef 120, i64 noundef 8) #70, !noalias !71697
  br label %.body.i.i.i.i

bb.y:                                             ; preds = %bb.u
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.y, %bb.x
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1H_.exit.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1y_.exit.i.i.i.i.i.i.i
  store ptr %i.bb, ptr %i.a, align 8, !noalias !71700
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 0, ptr %i.bi, align 8, !noalias !71705
  store ptr %i.bb, ptr %0, align 8, !alias.scope !71694, !noalias !71706
  store i64 %i.bf, ptr %i.b, align 8, !alias.scope !71694, !noalias !71706
  %i.bj = icmp eq i64 %.sroa.9.0.lcssa.i.i, %i.c
  br i1 %i.bj, label %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtBb_7set_val9SetValZSTE12insert_entry0B1p_.exit.i.i, label %bb.z, !prof !36

bb.z:                                             ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1H_.exit.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1313, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1314) #75, !noalias !71706
  unreachable

end_hunk_5
begin_hunk_6_@_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB7_7set_val9SetValZSTE6insertB1b_:bb.a
  %i.ex = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 2 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.es
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !71737, !noalias !71740, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.ds, ptr %i.ez, align 8, !noalias !71743
  %i.fa = trunc nuw nsw i64 %i.es to i16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i16 %i.fa, ptr %i.fb, align 8, !noalias !71740
  %i.fc = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 3 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ex
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !71737, !noalias !71740, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.ds, ptr %i.fe, align 8, !noalias !71743
  %i.ff = trunc nuw nsw i64 %i.ex to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i16 %i.ff, ptr %i.fg, align 8, !noalias !71740
  %i.fh = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i, 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.fc
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !71737, !noalias !71740, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.ds, ptr %i.fj, align 8, !noalias !71743
  %i.fk = trunc nuw nsw i64 %i.fc to i16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i16 %i.fk, ptr %i.fl, align 8, !noalias !71740
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i.unr-lcssa, label %bb.ao

bb.ap:                                            ; preds = %bb.am, %bb.aj
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ek, %bb.am ], [ %i.eb, %bb.aj ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef 120, i64 noundef 8) #70, !noalias !71721
  br label %common.resume.i.i

_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i.unr-lcssa: ; preds = %bb.ao
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i.unr-lcssa, %bb.an
  %.sroa.0.09.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.an ], [ %i.fh, %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.fm, %bb.aq ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aq ]
  %i.fm = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil, 1
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.sroa.0.09.i.i.i.i.i.i.epil
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !71737, !noalias !71740, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.ds, ptr %i.fo, align 8, !noalias !71743
  %i.fp = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i16 %i.fp, ptr %i.fq, align 8, !noalias !71740
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i, label %bb.aq, !llvm.loop !71744

_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i: ; preds = %bb.aq, %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i.unr-lcssa
  %spec.select.i36.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.ds, ptr %i.bn ; 9 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i, i64 10 ; 2 uses
  %i.fs = load i16, ptr %i.fr, align 2, !noalias !71745, !noundef !29 ; 2 uses
  %i.ft = zext i16 %i.fs to i64                   ; 5 uses
  %i.fu = add i16 %i.fs, 1
  %i.fv = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i, i64 12 ; 2 uses
  %i.fw = add nuw nsw i64 %.sroa.5.0.i.i.i, 1     ; 6 uses
  %.not.i8.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.ft
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.sroa.5.0.i.i.i ; 2 uses
  br i1 %.not.i8.not.i.i.i, label %bb.ar, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB4_7set_val9SetValZSTEEEB28_.exit.i10.i.i.i

bb.ar:                                            ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fw
  %i.fz = sub nuw nsw i64 %i.ft, %.sroa.5.0.i.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fy, ptr nonnull align 1 %i.fx, i64 %i.fz, i1 false), !alias.scope !71748, !noalias !71745
  %i.ga = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i, i64 24 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fw
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.sroa.5.0.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = shl nuw nsw i64 %i.fz, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gd, ptr nonnull align 8 %i.gb, i64 %i.ge, i1 false), !alias.scope !71751, !noalias !71745
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB4_7set_val9SetValZSTEEEB28_.exit.i10.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB4_7set_val9SetValZSTEEEB28_.exit.i10.i.i.i: ; preds = %bb.ar, %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i
  store i8 %.sroa.11.083.i.i, ptr %i.fx, align 1, !alias.scope !71748, !noalias !71745
  %i.gf = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i, i64 24 ; 6 uses
  %i.gg = add nuw nsw i64 %i.ft, 2                ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.fw
  store ptr %.sroa.7.085.i.i, ptr %i.gh, align 8, !alias.scope !71751, !noalias !71745
  store i16 %i.fu, ptr %i.fr, align 2, !noalias !71745
  %i.gi = icmp samesign ult i64 %i.fw, %i.gg
  br i1 %i.gi, label %.lr.ph.i.i11.i.i.i.preheader, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i

.lr.ph.i.i11.i.i.i.preheader:                     ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB4_7set_val9SetValZSTEEEB28_.exit.i10.i.i.i
  %i.gj = add nuw nsw i64 %i.ft, 1
  %i.gk = sub nsw i64 %i.gj, %.sroa.5.0.i.i.i
  %i.gl = sub nsw i64 %i.ft, %.sroa.5.0.i.i.i
  %xtraiter120 = and i64 %i.gk, 3                 ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol

.lr.ph.i.i11.i.i.i.prol:                          ; preds = %.lr.ph.i.i11.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.prol = phi i64 [ %i.gm, %.lr.ph.i.i11.i.i.i.prol ], [ %i.fw, %.lr.ph.i.i11.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.preheader ]
  %i.gm = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol, 1 ; 2 uses
  %i.gn = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %.sroa.0.06.i.i12.i.i.i.prol
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !71745, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %spec.select.i36.i.i, ptr %i.gp, align 8, !noalias !71745
  %i.gq = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store i16 %i.gq, ptr %i.gr, align 8, !noalias !71745
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter120
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol, !llvm.loop !71754

.lr.ph.i.i11.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i11.i.i.i.prol, %.lr.ph.i.i11.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.unr = phi i64 [ %i.fw, %.lr.ph.i.i11.i.i.i.preheader ], [ %i.gm, %.lr.ph.i.i11.i.i.i.prol ]
  %i.gs = icmp ult i64 %i.gl, 3
  br i1 %i.gs, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i, label %.lr.ph.i.i11.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i
  %.sroa.0.06.i.i12.i.i.i = phi i64 [ %i.hi, %.lr.ph.i.i11.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.unr, %.lr.ph.i.i11.i.i.i.prol.loopexit ] ; 7 uses
  %i.gt = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %.sroa.0.06.i.i12.i.i.i
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !71745, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %spec.select.i36.i.i, ptr %i.gv, align 8, !noalias !71745
  %i.gw = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i to i16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i16 %i.gw, ptr %i.gx, align 8, !noalias !71745
  %i.gy = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 2 ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gt
  %i.ha = load ptr, ptr %i.gz, align 8, !noalias !71745, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %spec.select.i36.i.i, ptr %i.ha, align 8, !noalias !71745
  %i.hb = trunc nuw nsw i64 %i.gt to i16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i16 %i.hb, ptr %i.hc, align 8, !noalias !71745
  %i.hd = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 3 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gy
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !71745, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %spec.select.i36.i.i, ptr %i.hf, align 8, !noalias !71745
  %i.hg = trunc nuw nsw i64 %i.gy to i16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i16 %i.hg, ptr %i.hh, align 8, !noalias !71745
  %i.hi = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 4 ; 2 uses
  %i.hj = icmp ult i64 %.sroa.0.06.i.i12.i.i.i, 9
  tail call void @llvm.assume(i1 %i.hj)
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.hd
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !71745, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %spec.select.i36.i.i, ptr %i.hl, align 8, !noalias !71745
  %i.hm = trunc nuw nsw i64 %i.hd to i16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i16 %i.hm, ptr %i.hn, align 8, !noalias !71745
  %exitcond.not.i.i13.i.i.i.3 = icmp eq i64 %i.hi, %i.gg
  br i1 %exitcond.not.i.i13.i.i.i.3, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i, label %.lr.ph.i.i11.i.i.i

_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i: ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB4_7set_val9SetValZSTEEEB28_.exit.i10.i.i.i
  %i.ho = load ptr, ptr %i.bn, align 8, !noalias !71691, !noundef !29 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.thread:                                          ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !71755
  %i.hp = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !71755 ; 5 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.as, label %_RINvMs8_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1w_.exit.i, !prof !341

bb.as:                                            ; preds = %.thread
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #71, !noalias !71755
  unreachable

_RINvMs8_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1w_.exit.i: ; preds = %.thread
  store ptr null, ptr %i.hp, align 8, !noalias !71755
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 10
  store ptr %i.hp, ptr %0, align 8, !noalias !71755
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.hs, align 8, !noalias !71755
  store i16 1, ptr %i.hr, align 2, !noalias !71756
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  store i8 %1, ptr %i.ht, align 4, !noalias !71756
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB9_7set_val9SetValZSTE12insert_entryB1n_.exit

_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB9_7set_val9SetValZSTE12insert_entryB1n_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.t, %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtBb_7set_val9SetValZSTE12insert_entry0B1p_.exit.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB4_7set_val9SetValZSTEEEB28_.exit.i.i.i.i, %_RINvMs8_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB8_7set_val9SetValZSTNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1w_.exit.i
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !noalias !71755, !noundef !29
  %i.hw = add i64 %i.hv, 1
  store i64 %i.hw, ptr %i.hu, align 8, !noalias !71755
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCskXtk6F4WjxZ_4just10token_kind9TokenKindNtNtB9_7set_val9SetValZSTE12insert_entryB1n_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtB7_7set_val9SetValZSTE6insertB1b_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 3) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71759)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !71759, !noalias !71762, !noundef !29 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !71759, !noalias !71762, !noundef !29 ; 3 uses
  %2 = zext nneg i8 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.c, %bb.b ], [ %i.s, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.a, %bb.b ], [ %i.r, %bb.f ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 12 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.f = load i16, ptr %i.e, align 2, !noalias !71764, !noundef !29 ; 4 uses
  %i.g = zext i16 %i.f to i64                     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.i = icmp eq i16 %i.f, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i59, i64 1 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i.i58, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i.i59 = phi ptr [ %i.j, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i58 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.val6.i.i.i = load i8, ptr %.sroa.0.03.i.i.i59, align 1, !range !190, !noalias !71764, !noundef !29
  %3 = zext nneg i8 %.val6.i.i.i to i64
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  switch i8 %i.m, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.8.0.i.i.i58, %.lr.ph ] ; 12 uses
  %i.n = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.p = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.0.i.ph.i.i
  %i.r = load ptr, ptr %i.q, align 8, !noalias !71764, !nonnull !29, !noundef !29
  %i.s = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

bb.g:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10 ; 3 uses
  %i.u = icmp ult i16 %i.f, 11
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  br i1 %i.v, label %bb.n, label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.g
  br i1 %.not.i.i.i.i.not, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.4.0.i.ph.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = sub nuw nsw i64 %i.g, %.sroa.4.0.i.ph.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %i.w, i64 %i.y, i1 false), !alias.scope !71767, !noalias !71770
  br label %bb.t

bb.k:                                             ; preds = %bb.h
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.l [
    i64 5, label %bb.n
    i64 6, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.z = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.h
  %.sroa.09.0.i.i.i = phi i1 [ true, %bb.m ], [ true, %bb.l ], [ false, %bb.h ], [ false, %bb.k ]
  %.sroa.510.0.i.i.i = phi i64 [ 0, %bb.m ], [ %i.z, %bb.l ], [ %.sroa.4.0.i.ph.i.i, %bb.h ], [ %.sroa.4.0.i.ph.i.i, %bb.k ] ; 4 uses
  %.sroa.013.0.i.i.i = phi i64 [ 5, %bb.m ], [ 6, %bb.l ], [ 4, %bb.h ], [ %.sroa.4.0.i.ph.i.i, %bb.k ] ; 3 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !71783
  %i.aa = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !71783 ; 8 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.o, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1t_.exit.i.i.i.i, !prof !341

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #71, !noalias !71783
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1t_.exit.i.i.i.i: ; preds = %bb.n
  store ptr null, ptr %i.aa, align 8, !noalias !71783
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71787)
  %i.ad = load i16, ptr %i.t, align 2, !noalias !71790, !noundef !29
  %i.ae = zext i16 %i.ad to i64
  %i.af = xor i64 %.sroa.013.0.i.i.i, -1
  %i.ag = add nsw i64 %i.ae, %i.af                ; 4 uses
  %i.ah = trunc i64 %i.ag to i16
  store i16 %i.ah, ptr %i.ac, align 2, !alias.scope !71787, !noalias !71783
  %i.ai = icmp ult i64 %i.ag, 12
  br i1 %i.ai, label %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i, label %bb.p, !prof !5801

bb.p:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1t_.exit.i.i.i.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1200) #75
          to label %.noexc.i.i.i.i unwind label %bb.q, !noalias !71783

.noexc.i.i.i.i:                                   ; preds = %bb.p
  unreachable

common.resume.i.i:                                ; preds = %bb.ap, %bb.q
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %.pn.i.i.i.i, %bb.ap ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.q:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef 24, i64 noundef 8) #70, !noalias !71783
  br label %common.resume.i.i

_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1t_.exit.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.013.0.i.i.i ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !range !190, !noalias !71790, !noundef !29 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.an, ptr nonnull readonly align 1 %i.am, i64 range(i64 0, 65536) %i.ag, i1 false), !alias.scope !71791, !noalias !71783
  %i.ao = trunc nuw nsw i64 %.sroa.013.0.i.i.i to i16
  store i16 %i.ao, ptr %i.t, align 2, !noalias !71790
  %spec.select.i.i.i = select i1 %.sroa.09.0.i.i.i, ptr %i.aa, ptr %.sroa.0.0.i.i ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 10 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !noalias !71795, !noundef !29 ; 2 uses
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 12 ; 2 uses
  %.not.i14.not.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i, %i.ar
  br i1 %.not.i14.not.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.510.0.i.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = sub nuw nsw i64 %i.ar, %.sroa.510.0.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %i.at, i64 %i.av, i1 false), !alias.scope !71799, !noalias !71795
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1H_.exit.i.i.i
  %i.aw = add i16 %i.aq, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.510.0.i.i.i
  store i8 %1, ptr %i.ax, align 1, !alias.scope !71799, !noalias !71795
  store i16 %i.aw, ptr %i.ap, align 2, !noalias !71795
  %i.ay = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !71802, !noundef !29 ; 2 uses
  %.not.i82.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i82.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.t:                                             ; preds = %bb.j, %bb.i
  %i.az = add nuw nsw i16 %i.f, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.4.0.i.ph.i.i
  store i8 %1, ptr %i.ba, align 1, !alias.scope !71767, !noalias !71770
  store i16 %i.az, ptr %i.t, align 2, !noalias !71770
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtB9_7set_val9SetValZSTE12insert_entryB1n_.exit

._crit_edge.i.i:                                  ; preds = %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i, %bb.s
  %.sroa.11.0.lcssa.i.i = phi i8 [ %i.al, %bb.s ], [ %i.ee, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i ]
  %.sroa.9.0.lcssa.i.i = phi i64 [ 0, %bb.s ], [ %i.bo, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i ]
  %.sroa.7.0.lcssa.i.i = phi ptr [ %i.aa, %bb.s ], [ %i.ds, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1H_.exit.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71805)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !71808
  %i.bb = tail call noalias noundef align 8 dereferenceable_or_null(120) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !71808 ; 10 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.u, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1y_.exit.i.i.i.i.i.i.i, !prof !341

bb.u:                                             ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #71
          to label %.noexc.i.i34.i.i unwind label %bb.y, !noalias !71808

.noexc.i.i34.i.i:                                 ; preds = %bb.u
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1y_.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i
  store ptr null, ptr %i.bb, align 8, !noalias !71808
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 10 ; 2 uses
  store i16 0, ptr %i.bd, align 2, !noalias !71808
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.a, ptr %i.be, align 8, !noalias !71808
  %i.bf = add i64 %i.c, 1                         ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.v, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1H_.exit.i.i.i, !prof !341

bb.v:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1y_.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #71
          to label %bb.w unwind label %bb.x, !noalias !71808

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef 120, i64 noundef 8) #70, !noalias !71808
  br label %.body.i.i.i.i

bb.y:                                             ; preds = %bb.u
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.y, %bb.x
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1H_.exit.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1y_.exit.i.i.i.i.i.i.i
  store ptr %i.bb, ptr %i.a, align 8, !noalias !71811
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 0, ptr %i.bi, align 8, !noalias !71816
  store ptr %i.bb, ptr %0, align 8, !alias.scope !71805, !noalias !71817
  store i64 %i.bf, ptr %i.b, align 8, !alias.scope !71805, !noalias !71817
  %i.bj = icmp eq i64 %.sroa.9.0.lcssa.i.i, %i.c
  br i1 %i.bj, label %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtBb_7set_val9SetValZSTE12insert_entry0B1p_.exit.i.i, label %bb.z, !prof !36

bb.z:                                             ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtCskXtk6F4WjxZ_4just16unstable_feature15UnstableFeatureNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1H_.exit.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1313, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1314) #75, !noalias !71817
  unreachable

end_hunk_6
begin_hunk_7_@_RNvXs2_NtNtCsl9sG9epDjy6_3nix5errno6constsNtB5_5ErrnoNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt
define internal noundef zeroext i1 @_RNvXs2_NtNtCsl9sG9epDjy6_3nix5errno6constsNtB5_5ErrnoNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i32, ptr %0, align 4, !range !49715, !noundef !29
  %trunc = trunc nuw i32 %i.a to i8
  %switch.tableidx = xor i8 %trunc, -128          ; 2 uses
  %i.b = zext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs2_NtNtCsl9sG9epDjy6_3nix5errno6constsNtB5_5ErrnoNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext i8 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs2_NtNtCsl9sG9epDjy6_3nix5errno6constsNtB5_5ErrnoNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.5088, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2a_NtCsaKJjC64KgbL_3std4pathNtB6_16StripPrefixErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1989, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1988)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 15 uses
  %i.b = alloca [8 x i8], align 8                 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !29 ; 4 uses
  %.idx = mul nuw nsw i64 %i.f, 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i8, ptr %i.h, align 8, !range !274
  %.fr64 = freeze i8 %i.i
  %i.j = trunc i8 %.fr64 to i1
  %i.k = load ptr, ptr %1, align 8, !nonnull !29  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !29, !align !174 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8, !captures !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.433.0..sroa_idx, align 8
  %i.p = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @85, ptr noundef nonnull %i.a) ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  br i1 %i.p, label %.split.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not65.peel = icmp eq i64 %i.f, 1
  br i1 %.not65.peel, label %.loopexit, label %.lr.ph.split.peel.next

.lr.ph.split.peel.next:                           ; preds = %bb.c
  %i.q = load ptr, ptr %i.n, align 8, !invariant.load !29, !nonnull !29
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph
  br i1 %i.p, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not66.peel = icmp eq i64 %i.f, 1
  br i1 %.not66.peel, label %.loopexit, label %.lr.ph.split.us.peel.next

.lr.ph.split.us.peel.next:                        ; preds = %bb.e
  %i.r = load ptr, ptr %i.n, align 8, !invariant.load !29, !nonnull !29
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.split.us.peel.next
  %.sroa.0.058.us = phi ptr [ %i.s, %bb.h ], [ %i.o, %.lr.ph.split.us.peel.next ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.058.us, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.058.us, ptr %i.b, align 8, !captures !182
  %i.t = call noundef zeroext i1 %i.r(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @870, i64 noundef 1) #76
  br i1 %i.t, label %.loopexit54, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.433.0..sroa_idx, align 8
  %i.u = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @85, ptr noundef nonnull %i.a)
  br i1 %i.u, label %.split.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not66 = icmp eq ptr %i.s, %i.g
  br i1 %.not66, label %.loopexit, label %bb.f, !llvm.loop !83436

.loopexit:                                        ; preds = %bb.k, %bb.h, %bb.c, %bb.e, %bb.a, %.loopexit54
  %i.v = phi i1 [ true, %.loopexit54 ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.h ], [ false, %bb.k ]
  ret i1 %i.v

bb.i:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.433.0..sroa_idx, align 8
  %i.w = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @85, ptr noundef nonnull %i.a)
  br i1 %i.w, label %.split.us, label %bb.k

bb.j:                                             ; preds = %bb.k, %.lr.ph.split.peel.next
  %.sroa.0.058 = phi ptr [ %i.x, %bb.k ], [ %i.o, %.lr.ph.split.peel.next ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.058, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.058, ptr %i.b, align 8, !captures !182
  %i.y = call noundef zeroext i1 %i.q(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 2) #76
  br i1 %i.y, label %.loopexit54, label %bb.i

.split.us:                                        ; preds = %bb.i, %bb.g, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit54

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not65 = icmp eq ptr %i.x, %i.g
  br i1 %.not65, label %.loopexit, label %bb.j, !llvm.loop !83437

.loopexit54:                                      ; preds = %bb.j, %bb.f, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RNvXs3_NtCskXtk6F4WjxZ_4just11interpreterINtB5_11InterpreterNtNtB7_14string_literal13StringLiteralENtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmpB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83441)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !83438, !noalias !83441, !nonnull !29, !noundef !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !83438, !noalias !83441, !noundef !29 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !83441, !noalias !83438, !nonnull !29, !noundef !29
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !83441, !noalias !83438, !noundef !29 ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.h)
  %i.i = tail call i32 @memcmp(ptr nonnull %i.b, ptr nonnull %i.f, i64 %spec.store.select.i), !noalias !83443 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp eq i32 %i.i, 0
  %i.l = sub i64 %i.d, %i.h
  %spec.select.i = select i1 %i.k, i64 %i.l, i64 %i.j ; 2 uses
  %i.m = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i, i64 0)
  %i.n = icmp eq i64 %spec.select.i, 0
  br i1 %i.n, label %bb.b, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.p = load i8, ptr %i.o, align 2, !range !274, !alias.scope !83438, !noalias !83441, !noundef !29
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.r = load i8, ptr %i.q, align 2, !range !274, !alias.scope !83441, !noalias !83438, !noundef !29
  %i.s = sub nsw i8 %i.p, %i.r                    ; 2 uses
  switch i8 %i.s, label %default.unreachable [
    i8 -1, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit
    i8 0, label %bb.c
    i8 1, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit.loopexit
  ]

default.unreachable:                              ; preds = %bb.n, %bb.l, %bb.d, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.u = load i8, ptr %i.t, align 1, !range !190, !alias.scope !83438, !noalias !83441, !noundef !29 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.w = load i8, ptr %i.v, align 1, !range !190, !alias.scope !83441, !noalias !83438, !noundef !29 ; 2 uses
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = load i8, ptr %i.z, align 8, !range !274, !alias.scope !83438, !noalias !83441, !noundef !29
  %i.ab = load i8, ptr %i.y, align 8, !range !274, !alias.scope !83441, !noalias !83438, !noundef !29
  %i.ac = sub nsw i8 %i.aa, %i.ab                 ; 2 uses
  switch i8 %i.ac, label %default.unreachable [
    i8 -1, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit
    i8 0, label %bb.f
    i8 1, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit.loopexit
  ]

bb.e:                                             ; preds = %bb.c
  %2 = zext nneg i8 %i.w to i64
  %3 = zext nneg i8 %i.u to i64
  %i.ad = tail call i8 @llvm.scmp.i8.i64(i64 %3, i64 %2)
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.af = load i8, ptr %i.ae, align 1, !range !22375, !alias.scope !83438, !noalias !83441, !noundef !29 ; 3 uses
  %.not.i = icmp eq i8 %i.af, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 99
  %i.ah = load i8, ptr %i.ag, align 1, !range !22375, !alias.scope !83441, !noalias !83438, !noundef !29 ; 3 uses
  %.not14.i = icmp eq i8 %i.ah, -1                ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not14.i, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit, label %bb.j

bb.h:                                             ; preds = %bb.f
  br i1 %.not14.i, label %bb.i, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aj) #76
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit

bb.j:                                             ; preds = %bb.g
  %4 = zext nneg i8 %i.af to i64
  %5 = zext nneg i8 %i.ah to i64
  %i.al = tail call i8 @llvm.scmp.i8.i64(i64 %4, i64 %5)
  %i.am = icmp eq i8 %i.af, %i.ah
  br i1 %i.am, label %bb.i, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit

_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit: ; preds = %bb.a, %bb.e, %bb.i, %bb.j
  %.sroa.0.0.i = phi i8 [ %i.m, %bb.a ], [ %i.ad, %bb.e ], [ %i.ak, %bb.i ], [ %i.al, %bb.j ] ; 2 uses
  %i.an = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.an, label %bb.k, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit

bb.k:                                             ; preds = %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !29, !noundef !29
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !29 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !29, !noundef !29
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.av = load i64, ptr %i.au, align 8, !noundef !29 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83452)
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 88686269585142076) %i.av, i64 range(i64 0, 88686269585142076) %i.ar) ; 2 uses
  %.not.i.i = icmp eq i64 %..i.i.i, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread17.i.i, %bb.k
  %i.aw = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 88686269585142076) %i.ar, i64 range(i64 0, 88686269585142076) %i.av)
  br label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit

.lr.ph.i.i:                                       ; preds = %bb.k, %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread17.i.i
  %.sroa.01.019.i.i = phi i64 [ %i.cm, %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread17.i.i ], [ 0, %bb.k ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [104 x i8], ptr %i.ap, i64 %.sroa.01.019.i.i ; 7 uses
  %i.ay = getelementptr inbounds nuw [104 x i8], ptr %i.at, i64 %.sroa.01.019.i.i ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83462)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !83464, !noalias !83465, !nonnull !29, !noundef !29
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !83464, !noalias !83465, !noundef !29 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !83465, !noalias !83464, !nonnull !29, !noundef !29
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !83465, !noalias !83464, !noundef !29 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.bg)
  %i.bh = tail call i32 @memcmp(ptr nonnull %i.ba, ptr nonnull %i.be, i64 %spec.store.select.i.i.i.i), !noalias !83466 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp eq i32 %i.bh, 0
  %i.bk = sub i64 %i.bc, %i.bg
  %spec.select.i.i.i.i = select i1 %i.bj, i64 %i.bk, i64 %i.bi ; 2 uses
  %i.bl = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  %i.bm = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %i.bm, label %bb.l, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 98
  %i.bo = load i8, ptr %i.bn, align 2, !range !274, !alias.scope !83464, !noalias !83465, !noundef !29
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 98
  %i.bq = load i8, ptr %i.bp, align 2, !range !274, !alias.scope !83465, !noalias !83464, !noundef !29
  %i.br = sub nsw i8 %i.bo, %i.bq                 ; 2 uses
  switch i8 %i.br, label %default.unreachable [
    i8 -1, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit
    i8 0, label %bb.m
    i8 1, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit.loopexit
  ]

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 97
  %i.bt = load i8, ptr %i.bs, align 1, !range !190, !alias.scope !83464, !noalias !83465, !noundef !29 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ay, i64 97
  %i.bv = load i8, ptr %i.bu, align 1, !range !190, !alias.scope !83465, !noalias !83464, !noundef !29 ; 2 uses
  %i.bw = icmp eq i8 %i.bt, %i.bv
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.bz = load i8, ptr %i.by, align 8, !range !274, !alias.scope !83464, !noalias !83465, !noundef !29
  %i.ca = load i8, ptr %i.bx, align 8, !range !274, !alias.scope !83465, !noalias !83464, !noundef !29
  %i.cb = sub nsw i8 %i.bz, %i.ca                 ; 2 uses
  switch i8 %i.cb, label %default.unreachable [
    i8 -1, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit
    i8 0, label %bb.p
    i8 1, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit.loopexit
  ]

bb.o:                                             ; preds = %bb.m
  %6 = zext nneg i8 %i.bv to i64
  %7 = zext nneg i8 %i.bt to i64
  %i.cc = tail call i8 @llvm.scmp.i8.i64(i64 %7, i64 %6)
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 99
  %i.ce = load i8, ptr %i.cd, align 1, !range !22375, !alias.scope !83464, !noalias !83465, !noundef !29 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %i.ce, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ay, i64 99
  %i.cg = load i8, ptr %i.cf, align 1, !range !22375, !alias.scope !83465, !noalias !83464, !noundef !29 ; 3 uses
  %.not14.i.i.i.i = icmp eq i8 %i.cg, -1          ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not14.i.i.i.i, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit, label %bb.t

bb.r:                                             ; preds = %bb.p
  br i1 %.not14.i.i.i.i, label %bb.s, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.cj = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ci) #76
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i.i.i

bb.t:                                             ; preds = %bb.q
  %8 = zext nneg i8 %i.ce to i64
  %9 = zext nneg i8 %i.cg to i64
  %i.ck = tail call i8 @llvm.scmp.i8.i64(i64 %8, i64 %9)
  %i.cl = icmp eq i8 %i.ce, %i.cg
  br i1 %i.cl, label %bb.s, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i.i.i

_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i.i.i: ; preds = %bb.t, %bb.s, %bb.o, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.bl, %.lr.ph.i.i ], [ %i.cc, %bb.o ], [ %i.cj, %bb.s ], [ %i.ck, %bb.t ]
  %.sroa.0.0.i.fr.i.i.i = freeze i8 %.sroa.0.0.i.i.i.i ; 2 uses
  switch i8 %.sroa.0.0.i.fr.i.i.i, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit [
    i8 0, label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread17.i.i
    i8 -2, label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread17.i.i
  ]

_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread17.i.i: ; preds = %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i.i.i, %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i.i.i
  %i.cm = add nuw nsw i64 %.sroa.01.019.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cm, %..i.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit.loopexit: ; preds = %bb.l, %bb.n, %bb.b, %bb.d
  br label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit

_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit: ; preds = %bb.l, %bb.n, %bb.q, %bb.r, %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i.i.i, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit.loopexit, %bb.g, %bb.d, %bb.h, %bb.b, %._crit_edge.i.i, %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit
  %.sroa.0.0 = phi i8 [ -1, %bb.h ], [ %.sroa.0.0.i, %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit ], [ %i.aw, %._crit_edge.i.i ], [ 1, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB5_8SliceOrd7compareBG_.exit.loopexit ], [ %i.s, %bb.b ], [ %i.ac, %bb.d ], [ 1, %bb.g ], [ %i.br, %bb.l ], [ %.sroa.0.0.i.fr.i.i.i, %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i.i.i ], [ -1, %bb.r ], [ %i.cb, %bb.n ], [ 1, %bb.q ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCskXtk6F4WjxZ_4just13list_operatorNtB5_12ListOperatorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !274, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 4, i64 11
  %.1 = select i1 %i.b, ptr @1999, ptr @1998
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCskXtk6F4WjxZ_4just14string_contextNtB5_13StringContextNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !83467, !noundef !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  switch i64 %i.f, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2000, i64 noundef 6, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @141)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2001, i64 noundef 8, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @141)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2002, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @141)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2003, i64 noundef 18, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @141)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2004, i64 noundef 25, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @141)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.b ], [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCskXtk6F4WjxZ_4just4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2005, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1660, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1509)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCskXtk6F4WjxZ_4just5errorNtB5_5ErrorNtNtB7_13color_display12ColorDisplay3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 13 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.02598 = alloca [64 x i8], align 8        ; 13 uses
  %.sroa.16 = alloca [7 x i8], align 1            ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [17 x i8], align 1                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [48 x i8], align 8                ; 8 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [48 x i8], align 8               ; 9 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [8 x i8], align 8                ; 6 uses
  %i.az = alloca [8 x i8], align 8                ; 6 uses
  %i.ba = alloca [48 x i8], align 8               ; 9 uses
  %i.bb = alloca [64 x i8], align 8               ; 11 uses
  %i.bc = alloca [8 x i8], align 8                ; 4 uses
  %i.bd = alloca [8 x i8], align 8                ; 6 uses
  %i.be = alloca [8 x i8], align 8                ; 6 uses
  %i.bf = alloca [8 x i8], align 8                ; 6 uses
  %i.bg = alloca [48 x i8], align 8               ; 9 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [8 x i8], align 8                ; 4 uses
  %i.bk = alloca [32 x i8], align 8               ; 7 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [8 x i8], align 8                ; 4 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [32 x i8], align 8               ; 7 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [48 x i8], align 8               ; 9 uses
  %i.bu = alloca [88 x i8], align 8               ; 14 uses
  %i.bv = alloca [48 x i8], align 8               ; 8 uses
  %i.bw = alloca [8 x i8], align 8                ; 4 uses
  %i.bx = alloca [48 x i8], align 8               ; 9 uses
  %i.by = alloca [16 x i8], align 8               ; 5 uses
  %i.bz = alloca [48 x i8], align 8               ; 9 uses
  %i.ca = alloca [16 x i8], align 8               ; 5 uses
  %i.cb = alloca [64 x i8], align 8               ; 11 uses
  %i.cc = alloca [16 x i8], align 8               ; 5 uses
  %i.cd = alloca [16 x i8], align 8               ; 5 uses
  %i.ce = alloca [8 x i8], align 8                ; 4 uses
  %i.cf = alloca [48 x i8], align 8               ; 11 uses
  %i.cg = alloca [8 x i8], align 8                ; 5 uses
  %i.ch = alloca [8 x i8], align 8                ; 5 uses
  %i.ci = alloca [32 x i8], align 8               ; 7 uses
  %i.cj = alloca [8 x i8], align 8                ; 4 uses
end_hunk_7
begin_hunk_8_@_RNvXs4_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:bb.a
  %i.ae = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1453, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2162, i64 noundef 8, ptr noundef nonnull %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1466, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1660, i64 noundef 5, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1509)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.m, align 8
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2164, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @410, i64 noundef 4, ptr noundef nonnull %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1465, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @405, i64 noundef 9, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2163)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.s

bb.g:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.l, align 8
  %i.am = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2166, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1672, i64 noundef 3, ptr noundef nonnull %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2157, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1673, i64 noundef 8, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2165, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1674, i64 noundef 3, ptr noundef nonnull %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2157, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1660, i64 noundef 5, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1509)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.s

bb.h:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ap, ptr %i.k, align 8
  %i.aq = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2168, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1672, i64 noundef 3, ptr noundef nonnull %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2157, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1673, i64 noundef 8, ptr noundef nonnull %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2167, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1674, i64 noundef 3, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2158)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.at, ptr %i.j, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2170, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2161, i64 noundef 9, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2157, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2171, i64 noundef 4, ptr noundef nonnull %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2157, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2172, i64 noundef 9, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2169)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.s

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.av, ptr %i.i, align 8
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1849, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1602, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1739, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2174, i64 noundef 11, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2173)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.s

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.h, align 8
  %i.ay = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1828, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2162, i64 noundef 8, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2158)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.s

bb.l:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bb, ptr %i.g, align 8
  %i.bc = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1999, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1672, i64 noundef 3, ptr noundef nonnull %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2160, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1673, i64 noundef 8, ptr noundef nonnull %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2167, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1674, i64 noundef 3, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2158)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.s

bb.m:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.be, ptr %i.f, align 8
  %i.bf = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2176, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2177, i64 noundef 8, ptr noundef nonnull %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2175, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1555, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1509)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.s

bb.n:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bi, ptr %i.e, align 8
  %i.bj = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2178, i64 noundef 17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1672, i64 noundef 3, ptr noundef nonnull %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2157, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1673, i64 noundef 8, ptr noundef nonnull %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2167, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1674, i64 noundef 3, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2158)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.s

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.d, align 8
  %i.bl = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2179, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2180, i64 noundef 7, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2158)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.s

bb.p:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bn, ptr %i.c, align 8
  %i.bo = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2181, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1672, i64 noundef 3, ptr noundef nonnull %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2157, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1674, i64 noundef 3, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2158)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bp, ptr %i.b, align 8
  %i.bq = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1784, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2182, i64 noundef 14, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %i.a, align 8
  %i.bt = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1995, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @410, i64 noundef 4, ptr noundef nonnull %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1465, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1854, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2183)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.x, %bb.c ], [ %i.ab, %bb.d ], [ %i.ae, %bb.e ], [ %i.ah, %bb.f ], [ %i.am, %bb.g ], [ %i.aq, %bb.h ], [ %i.au, %bb.i ], [ %i.aw, %bb.j ], [ %i.ay, %bb.k ], [ %i.bc, %bb.l ], [ %i.bf, %bb.m ], [ %i.bj, %bb.n ], [ %i.bl, %bb.o ], [ %i.bo, %bb.p ], [ %i.bq, %bb.q ], [ %i.bt, %bb.r ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2185, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2186, i64 noundef 10, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2184, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2187, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1792)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !29, !noundef !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !29 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !29, !noundef !29
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !29 ; 2 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.h)
  %i.i = tail call i32 @memcmp(ptr nonnull %i.b, ptr nonnull %i.f, i64 %spec.store.select) ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp eq i32 %i.i, 0
  %i.l = sub i64 %i.d, %i.h
  %spec.select = select i1 %i.k, i64 %i.l, i64 %i.j ; 2 uses
  %i.m = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select, i64 0)
  %i.n = icmp eq i64 %spec.select, 0
  br i1 %i.n, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.p = load i8, ptr %i.o, align 2, !range !274, !noundef !29
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.r = load i8, ptr %i.q, align 2, !range !274, !noundef !29
  %i.s = sub nsw i8 %i.p, %i.r                    ; 2 uses
  switch i8 %i.s, label %default.unreachable19 [
    i8 -1, label %bb.l
    i8 0, label %bb.c
    i8 1, label %bb.d
  ]

default.unreachable19:                            ; preds = %bb.e, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.u = load i8, ptr %i.t, align 1, !range !190, !noundef !29 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.w = load i8, ptr %i.v, align 1, !range !190, !noundef !29 ; 2 uses
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.e, %bb.b
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = load i8, ptr %i.z, align 8, !range !274, !noundef !29
  %i.ab = load i8, ptr %i.y, align 8, !range !274, !noundef !29
  %i.ac = sub nsw i8 %i.aa, %i.ab                 ; 2 uses
  switch i8 %i.ac, label %default.unreachable19 [
    i8 -1, label %bb.l
    i8 0, label %bb.g
    i8 1, label %bb.d
  ]

bb.f:                                             ; preds = %bb.c
  %2 = zext nneg i8 %i.w to i64
  %3 = zext nneg i8 %i.u to i64
  %i.ad = tail call i8 @llvm.scmp.i8.i64(i64 %3, i64 %2)
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.af = load i8, ptr %i.ae, align 1, !range !22375, !noundef !29 ; 3 uses
  %.not = icmp eq i8 %i.af, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 99
  %i.ah = load i8, ptr %i.ag, align 1, !range !22375, !noundef !29 ; 3 uses
  %.not14 = icmp eq i8 %i.ah, -1                  ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not14, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  br i1 %.not14, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aj) #76
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %4 = zext nneg i8 %i.af to i64
  %5 = zext nneg i8 %i.ah to i64
  %i.al = tail call i8 @llvm.scmp.i8.i64(i64 %4, i64 %5)
  %i.am = icmp eq i8 %i.af, %i.ah
  br i1 %i.am, label %bb.j, label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.e, %bb.b, %bb.f, %bb.d, %bb.j, %bb.k, %bb.a
  %.sroa.0.0 = phi i8 [ %i.m, %bb.a ], [ %i.s, %bb.b ], [ %i.ak, %bb.j ], [ %i.al, %bb.k ], [ -1, %bb.i ], [ %i.ac, %bb.e ], [ 1, %bb.h ], [ %i.ad, %bb.f ], [ 1, %bb.d ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtCskXtk6F4WjxZ_4just5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [8 x i8], align 8                ; 4 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [8 x i8], align 8                ; 4 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [8 x i8], align 8                ; 4 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [8 x i8], align 8                ; 4 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [8 x i8], align 8                ; 4 uses
  %i.bm = alloca [8 x i8], align 8                ; 4 uses
  %i.bn = alloca [8 x i8], align 8                ; 4 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [8 x i8], align 8                ; 4 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [8 x i8], align 8                ; 4 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [8 x i8], align 8                ; 4 uses
  %i.bu = alloca [8 x i8], align 8                ; 4 uses
  %i.bv = alloca [8 x i8], align 8                ; 4 uses
  %i.bw = alloca [8 x i8], align 8                ; 4 uses
  %i.bx = alloca [8 x i8], align 8                ; 4 uses
  %i.by = alloca [8 x i8], align 8                ; 4 uses
  %i.bz = alloca [8 x i8], align 8                ; 4 uses
  %i.ca = alloca [8 x i8], align 8                ; 4 uses
  %i.cb = alloca [8 x i8], align 8                ; 4 uses
  %i.cc = alloca [8 x i8], align 8                ; 4 uses
  %i.cd = alloca [8 x i8], align 8                ; 4 uses
  %i.ce = alloca [8 x i8], align 8                ; 4 uses
  %i.cf = alloca [8 x i8], align 8                ; 4 uses
  %i.cg = load i64, ptr %0, align 8, !range !11993, !noundef !29 ; 3 uses
  %i.ch = icmp ne i64 %i.cg, 58
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = add nsw i64 %i.cg, -5
  %i.cj = icmp samesign ugt i64 %i.cg, 4
  %i.ck = select i1 %i.cj, i64 %i.ci, i64 53
  switch i64 %i.ck, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
    i64 22, label %bb.y
    i64 23, label %bb.z
    i64 24, label %bb.aa
    i64 25, label %bb.ab
    i64 26, label %bb.ac
    i64 27, label %bb.ad
    i64 28, label %bb.ae
    i64 29, label %bb.af
    i64 30, label %bb.ag
    i64 31, label %bb.ah
    i64 32, label %bb.ai
    i64 33, label %bb.aj
    i64 34, label %bb.ak
    i64 35, label %bb.al
    i64 36, label %bb.am
    i64 37, label %bb.an
    i64 38, label %bb.ao
    i64 39, label %bb.ap
    i64 40, label %bb.aq
    i64 41, label %bb.ar
    i64 42, label %bb.as
    i64 43, label %bb.at
    i64 44, label %bb.au
    i64 45, label %bb.av
    i64 46, label %bb.aw
    i64 47, label %bb.ax
    i64 48, label %bb.ay
    i64 49, label %bb.az
    i64 50, label %bb.ba
    i64 51, label %bb.bb
    i64 52, label %bb.bc
    i64 53, label %bb.bd
    i64 54, label %bb.be
    i64 55, label %bb.bf
    i64 56, label %bb.bg
    i64 57, label %bb.bh
    i64 58, label %bb.bi
    i64 59, label %bb.bj
    i64 60, label %bb.bk
    i64 61, label %bb.bl
    i64 62, label %bb.bm
    i64 63, label %bb.bn
    i64 64, label %bb.bo
    i64 65, label %bb.bp
    i64 66, label %bb.bq
    i64 67, label %bb.br
    i64 68, label %bb.bs
    i64 69, label %bb.bt
    i64 70, label %bb.bu
    i64 71, label %bb.bv
    i64 72, label %bb.bw
    i64 73, label %bb.bx
    i64 74, label %bb.by
    i64 75, label %bb.bz
    i64 76, label %bb.ca
    i64 77, label %bb.cb
    i64 78, label %bb.cc
    i64 79, label %bb.cd
    i64 80, label %bb.ce
    i64 81, label %bb.cf
    i64 82, label %bb.cg
    i64 83, label %bb.ch
    i64 84, label %bb.ci
    i64 85, label %bb.cj
    i64 86, label %bb.ck
    i64 87, label %bb.cl
    i64 88, label %bb.cm
    i64 89, label %bb.cn
    i64 90, label %bb.co
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_8
begin_hunk_9_@_RNvXs5_NtCskXtk6F4WjxZ_4just9argumentsNtB5_10SubcommandNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut:bb.a
  store ptr @_RNvXs0_NtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i293, align 8, !noalias !99873
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #75, !noalias !99870
  unreachable

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit294: ; preds = %bb.dj
  %i.ka = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.kb = load i8, ptr %i.ka, align 8, !range !190, !alias.scope !99870, !noalias !99875, !noundef !29 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %.not208 = icmp eq i8 %i.kb, 2
  br i1 %.not208, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit294
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 155
  store i8 %i.kb, ptr %i.kc, align 1
  br label %bb.g

bb.dm:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsj6eKBz9Db1c_4core6option6OptionbEECskXtk6F4WjxZ_4just.exit294
  %i.kd = call fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawReECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2567, i64 noundef 59)
  br label %bb.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RNvXs6_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10792, !noundef !29 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775801
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 7          ; 3 uses
  %i.f = load i64, ptr %1, align 8, !range !10792, !noundef !29 ; 3 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775801
  tail call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %i.f, -9223372036854775808
  %i.i = icmp slt i64 %i.f, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 7          ; 2 uses
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66.loopexit72.split.loop.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.l = phi i64 [ %i.dg, %tailrecurse.backedge ], [ %i.e, %bb.a ]
  %.tr71133 = phi ptr [ %.tr71.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 47 uses
  %.tr132 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 47 uses
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %tailrecurse.backedge.sink.split
    i64 9, label %bb.u
    i64 10, label %bb.v
    i64 11, label %bb.x
    i64 12, label %tailrecurse.backedge.sink.split
    i64 13, label %bb.y
    i64 14, label %bb.z
    i64 15, label %bb.aj
  ]

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr132, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !29, !noundef !29
  %i.o = getelementptr inbounds nuw i8, ptr %.tr71133, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !29, !noundef !29
  %i.q = tail call fastcc noundef i8 @_RNvXs6_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.p) #76 ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %tailrecurse.backedge.sink.split, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.d:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr132, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !29, !noundef !29
  %i.u = getelementptr inbounds nuw i8, ptr %.tr71133, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !29, !noundef !29
  %i.w = tail call fastcc noundef i8 @_RNvXs6_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.v) #76 ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.ak, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.e:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr132, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !29, !noundef !29
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr132, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !29 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr71133, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !29, !noundef !29
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr71133, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !29 ; 2 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.af)
  %i.ag = tail call i32 @memcmp(ptr nonnull %i.z, ptr nonnull %i.ad, i64 %spec.store.select) ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp eq i32 %i.ag, 0
  %i.aj = sub i64 %i.ab, %i.af
  %spec.select = select i1 %i.ai, i64 %i.aj, i64 %i.ah ; 2 uses
  %i.ak = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select, i64 0)
  %i.al = icmp eq i64 %spec.select, 0
  br i1 %i.al, label %bb.ap, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.f:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %.tr132, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %.tr71133, i64 32
  %i.ao = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.an) #76 ; 2 uses
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.aq, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.g:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr132, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr71133, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.tr132, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !29, !noundef !29
  %i.au = getelementptr inbounds nuw i8, ptr %.tr71133, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !29, !noundef !29
  %i.aw = tail call fastcc noundef i8 @_RNvXs6_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.av) #76 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.ar, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.h:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr132, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !29, !noundef !29
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr71133, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !29, !noundef !29
  %i.bc = tail call fastcc noundef i8 @_RNvXs6_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bb) #76 ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.au, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.i:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %.tr132, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !29, !noundef !29
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr71133, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !29, !noundef !29
  %i.bi = tail call fastcc noundef i8 @_RNvXs6_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bh) #76 ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.av, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.j:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99879)
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr132, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !99876, !noalias !99879, !nonnull !29, !noundef !29
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr132, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !99876, !noalias !99879, !noundef !29 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr71133, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !99879, !noalias !99876, !nonnull !29, !noundef !29
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr71133, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !99879, !noalias !99876, !noundef !29 ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.br)
  %i.bs = tail call i32 @memcmp(ptr nonnull %i.bl, ptr nonnull %i.bp, i64 %spec.store.select.i), !noalias !99881 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp eq i32 %i.bs, 0
  %i.bv = sub i64 %i.bn, %i.br
  %spec.select.i = select i1 %i.bu, i64 %i.bv, i64 %i.bt ; 2 uses
  %i.bw = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i, i64 0)
  %i.bx = icmp eq i64 %spec.select.i, 0
  br i1 %i.bx, label %bb.k, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %.tr132, i64 98
  %i.bz = load i8, ptr %i.by, align 2, !range !274, !alias.scope !99876, !noalias !99879, !noundef !29
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr71133, i64 98
  %i.cb = load i8, ptr %i.ca, align 2, !range !274, !alias.scope !99879, !noalias !99876, !noundef !29
  %i.cc = sub nsw i8 %i.bz, %i.cb                 ; 2 uses
  switch i8 %i.cc, label %default.unreachable [
    i8 -1, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66
    i8 0, label %bb.l
    i8 1, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.ac, %bb.aa, %bb.n, %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr132, i64 97
  %i.ce = load i8, ptr %i.cd, align 1, !range !190, !alias.scope !99876, !noalias !99879, !noundef !29 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr71133, i64 97
  %i.cg = load i8, ptr %i.cf, align 1, !range !190, !alias.scope !99879, !noalias !99876, !noundef !29 ; 2 uses
  %i.ch = icmp eq i8 %i.ce, %i.cg
  br i1 %i.ch, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.aa, %bb.ac, %bb.n, %bb.k
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.n:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr71133, i64 96
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr132, i64 96
  %i.ck = load i8, ptr %i.cj, align 8, !range !274, !alias.scope !99876, !noalias !99879, !noundef !29
  %i.cl = load i8, ptr %i.ci, align 8, !range !274, !alias.scope !99879, !noalias !99876, !noundef !29
  %i.cm = sub nsw i8 %i.ck, %i.cl                 ; 2 uses
  switch i8 %i.cm, label %default.unreachable [
    i8 -1, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66
    i8 0, label %bb.p
    i8 1, label %bb.m
  ]

bb.o:                                             ; preds = %bb.l
  %2 = zext nneg i8 %i.cg to i64
  %3 = zext nneg i8 %i.ce to i64
  %i.cn = tail call i8 @llvm.scmp.i8.i64(i64 %3, i64 %2)
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit

bb.p:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %.tr132, i64 99
  %i.cp = load i8, ptr %i.co, align 1, !range !22375, !alias.scope !99876, !noalias !99879, !noundef !29 ; 3 uses
  %.not.i = icmp eq i8 %i.cp, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr71133, i64 99
  %i.cr = load i8, ptr %i.cq, align 1, !range !22375, !alias.scope !99879, !noalias !99876, !noundef !29 ; 3 uses
  %.not14.i = icmp eq i8 %i.cr, -1                ; 2 uses
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not14.i, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66, label %bb.t

bb.r:                                             ; preds = %bb.p
  br i1 %.not14.i, label %bb.s, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %.tr132, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr71133, i64 24
  %i.cu = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ct) #76
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit

bb.t:                                             ; preds = %bb.q
  %4 = zext nneg i8 %i.cp to i64
  %5 = zext nneg i8 %i.cr to i64
  %i.cv = tail call i8 @llvm.scmp.i8.i64(i64 %4, i64 %5)
  %i.cw = icmp eq i8 %i.cp, %i.cr
  br i1 %i.cw, label %bb.s, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit

_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit: ; preds = %bb.j, %bb.o, %bb.s, %bb.t
  %.sroa.0.0.i = phi i8 [ %i.bw, %bb.j ], [ %i.cn, %bb.o ], [ %i.cu, %bb.s ], [ %i.cv, %bb.t ] ; 2 uses
  %i.cx = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.cx, label %bb.az, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

tailrecurse.backedge.sink.split:                  ; preds = %.lr.ph, %bb.y, %bb.bf, %bb.bc, %bb.au, %bb.c, %.lr.ph
  %.sink239 = phi i64 [ 16, %bb.y ], [ 16, %bb.bf ], [ 8, %.lr.ph ], [ 16, %bb.c ], [ 16, %bb.au ], [ 16, %bb.bc ], [ 8, %.lr.ph ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr132, i64 %.sink239
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !29, !noundef !29
  %i.da = getelementptr inbounds nuw i8, ptr %.tr71133, i64 %.sink239
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !29, !noundef !29
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.sink.split, %bb.ax
  %.tr.be = phi ptr [ %i.if, %bb.ax ], [ %i.cz, %tailrecurse.backedge.sink.split ] ; 2 uses
  %.tr71.be = phi ptr [ %i.ih, %bb.ax ], [ %i.db, %tailrecurse.backedge.sink.split ] ; 2 uses
  %i.dc = load i64, ptr %.tr.be, align 8, !range !10792, !noundef !29 ; 3 uses
  %i.dd = icmp ne i64 %i.dc, -9223372036854775801
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = xor i64 %i.dc, -9223372036854775808
  %i.df = icmp slt i64 %i.dc, 0
  %i.dg = select i1 %i.df, i64 %i.de, i64 7       ; 3 uses
  %i.dh = load i64, ptr %.tr71.be, align 8, !range !10792, !noundef !29 ; 3 uses
  %i.di = icmp ne i64 %i.dh, -9223372036854775801
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = xor i64 %i.dh, -9223372036854775808
  %i.dk = icmp slt i64 %i.dh, 0
  %i.dl = select i1 %i.dk, i64 %i.dj, i64 7       ; 2 uses
  %i.dm = icmp eq i64 %i.dg, %i.dl
  br i1 %i.dm, label %.lr.ph, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66.loopexit72.split.loop.exit

bb.u:                                             ; preds = %.lr.ph
  %i.dn = getelementptr inbounds nuw i8, ptr %.tr132, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %.tr71133, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %.tr132, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !align !174, !noundef !29 ; 2 uses
  %.not = icmp eq ptr %i.dq, null
  %i.dr = getelementptr inbounds nuw i8, ptr %.tr71133, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !align !174, !noundef !29 ; 2 uses
  %.not49 = icmp eq ptr %i.ds, null               ; 2 uses
  br i1 %.not, label %bb.bb, label %bb.ba

bb.v:                                             ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw i8, ptr %.tr132, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !29, !noundef !29
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr132, i64 24
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !29 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr71133, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !29, !noundef !29
  %i.dz = getelementptr inbounds nuw i8, ptr %.tr71133, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !29 ; 3 uses
  %..i67 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 72057594037927936) %i.ea, i64 range(i64 0, 72057594037927936) %i.dw) ; 2 uses
  %.not137 = icmp eq i64 %..i67, 0
  br i1 %.not137, label %_RINvNtNtCsj6eKBz9Db1c_4core5slice3cmp13chaining_implNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2m_s_0EBS_.exit, label %.lr.ph136

bb.w:                                             ; preds = %.lr.ph136
  %i.eb = add nuw i64 %.sroa.01.0.i135, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.eb, %..i67
  br i1 %exitcond.not, label %_RINvNtNtCsj6eKBz9Db1c_4core5slice3cmp13chaining_implNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2m_s_0EBS_.exit, label %.lr.ph136

.lr.ph136:                                        ; preds = %bb.v, %bb.w
  %.sroa.01.0.i135 = phi i64 [ %i.eb, %bb.w ], [ 0, %bb.v ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [128 x i8], ptr %i.du, i64 %.sroa.01.0.i135
  %i.ed = getelementptr inbounds nuw [128 x i8], ptr %i.dy, i64 %.sroa.01.0.i135
  %i.ee = tail call fastcc noundef i8 @_RNvXs6_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ed) #76, !inline_history !99882 ; 2 uses
  %i.ef = icmp eq i8 %i.ee, 0
  br i1 %i.ef, label %bb.w, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

_RINvNtNtCsj6eKBz9Db1c_4core5slice3cmp13chaining_implNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2m_s_0EBS_.exit: ; preds = %bb.w, %bb.v
  %i.eg = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.dw, i64 %i.ea)
  %i.eh = icmp eq i64 %i.dw, %i.ea
  br i1 %i.eh, label %bb.be, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.x:                                             ; preds = %.lr.ph
  %i.ei = getelementptr inbounds nuw i8, ptr %.tr132, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !nonnull !29, !noundef !29
  %i.ek = getelementptr inbounds nuw i8, ptr %.tr71133, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !29, !noundef !29
  %i.em = tail call fastcc noundef i8 @_RNvXs6_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.el) #76 ; 2 uses
  %i.en = icmp eq i8 %i.em, 0
  br i1 %i.en, label %bb.bf, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.y:                                             ; preds = %.lr.ph
  %i.eo = getelementptr inbounds nuw i8, ptr %.tr132, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !nonnull !29, !noundef !29
  %i.eq = getelementptr inbounds nuw i8, ptr %.tr71133, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !nonnull !29, !noundef !29
  %i.es = tail call fastcc noundef i8 @_RNvXs6_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.er) #76 ; 2 uses
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %tailrecurse.backedge.sink.split, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.z:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99886)
  %i.eu = getelementptr inbounds nuw i8, ptr %.tr132, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !99883, !noalias !99886, !nonnull !29, !noundef !29
  %i.ew = getelementptr inbounds nuw i8, ptr %.tr132, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !99883, !noalias !99886, !noundef !29 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.tr71133, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !99886, !noalias !99883, !nonnull !29, !noundef !29
  %i.fa = getelementptr inbounds nuw i8, ptr %.tr71133, i64 24
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !99886, !noalias !99883, !noundef !29 ; 2 uses
  %spec.store.select.i60 = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 %i.fb)
  %i.fc = tail call i32 @memcmp(ptr nonnull %i.ev, ptr nonnull %i.ez, i64 %spec.store.select.i60), !noalias !99888 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp eq i32 %i.fc, 0
  %i.ff = sub i64 %i.ex, %i.fb
  %spec.select.i61 = select i1 %i.fe, i64 %i.ff, i64 %i.fd ; 2 uses
  %i.fg = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i61, i64 0)
  %i.fh = icmp eq i64 %spec.select.i61, 0
  br i1 %i.fh, label %bb.aa, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.aa:                                            ; preds = %bb.z
  %i.fi = getelementptr inbounds nuw i8, ptr %.tr132, i64 106
  %i.fj = load i8, ptr %i.fi, align 2, !range !274, !alias.scope !99883, !noalias !99886, !noundef !29
  %i.fk = getelementptr inbounds nuw i8, ptr %.tr71133, i64 106
  %i.fl = load i8, ptr %i.fk, align 2, !range !274, !alias.scope !99886, !noalias !99883, !noundef !29
  %i.fm = sub nsw i8 %i.fj, %i.fl                 ; 2 uses
  switch i8 %i.fm, label %default.unreachable [
    i8 -1, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66
    i8 0, label %bb.ab
    i8 1, label %bb.m
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.fn = getelementptr inbounds nuw i8, ptr %.tr132, i64 105
  %i.fo = load i8, ptr %i.fn, align 1, !range !190, !alias.scope !99883, !noalias !99886, !noundef !29 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.tr71133, i64 105
  %i.fq = load i8, ptr %i.fp, align 1, !range !190, !alias.scope !99886, !noalias !99883, !noundef !29 ; 2 uses
  %i.fr = icmp eq i8 %i.fo, %i.fq
  br i1 %i.fr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fs = getelementptr inbounds nuw i8, ptr %.tr71133, i64 104
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr132, i64 104
  %i.fu = load i8, ptr %i.ft, align 8, !range !274, !alias.scope !99883, !noalias !99886, !noundef !29
  %i.fv = load i8, ptr %i.fs, align 8, !range !274, !alias.scope !99886, !noalias !99883, !noundef !29
  %i.fw = sub nsw i8 %i.fu, %i.fv                 ; 2 uses
  switch i8 %i.fw, label %default.unreachable [
    i8 -1, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66
    i8 0, label %bb.ae
    i8 1, label %bb.m
  ]

bb.ad:                                            ; preds = %bb.ab
  %6 = zext nneg i8 %i.fq to i64
  %7 = zext nneg i8 %i.fo to i64
  %i.fx = tail call i8 @llvm.scmp.i8.i64(i64 %7, i64 %6)
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.ae:                                            ; preds = %bb.ac
  %i.fy = getelementptr inbounds nuw i8, ptr %.tr132, i64 107
  %i.fz = load i8, ptr %i.fy, align 1, !range !22375, !alias.scope !99883, !noalias !99886, !noundef !29 ; 3 uses
  %.not.i63 = icmp eq i8 %i.fz, -1
  %i.ga = getelementptr inbounds nuw i8, ptr %.tr71133, i64 107
  %i.gb = load i8, ptr %i.ga, align 1, !range !22375, !alias.scope !99886, !noalias !99883, !noundef !29 ; 3 uses
  %.not14.i64 = icmp eq i8 %i.gb, -1              ; 2 uses
  br i1 %.not.i63, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not14.i64, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not14.i64, label %bb.ah, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %i.gc = getelementptr inbounds nuw i8, ptr %.tr132, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %.tr71133, i64 32
  %i.ge = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.gc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.gd) #76
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.ai:                                            ; preds = %bb.af
  %8 = zext nneg i8 %i.fz to i64
  %9 = zext nneg i8 %i.gb to i64
  %i.gf = tail call i8 @llvm.scmp.i8.i64(i64 %8, i64 %9)
  %i.gg = icmp eq i8 %i.fz, %i.gb
  br i1 %i.gg, label %bb.ah, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.aj:                                            ; preds = %.lr.ph
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr132, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %.tr71133, i64 16
  %i.gj = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.gh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.gi) #76 ; 2 uses
  %i.gk = icmp eq i8 %i.gj, 0
  br i1 %i.gk, label %bb.bg, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66.loopexit72.split.loop.exit: ; preds = %tailrecurse.backedge, %bb.a
  %.lcssa131 = phi i64 [ %i.j, %bb.a ], [ %i.dl, %tailrecurse.backedge ]
  %.lcssa130 = phi i64 [ %i.e, %bb.a ], [ %i.dg, %tailrecurse.backedge ]
  %i.gl = tail call i8 @llvm.scmp.i8.i64(i64 %.lcssa130, i64 %.lcssa131)
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66: ; preds = %bb.c, %bb.au, %bb.h, %bb.av, %bb.i, %bb.bc, %bb.bd, %bb.bf, %bb.x, %bb.y, %bb.ax, %bb.bb, %bb.ba, %.lr.ph136, %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66.loopexit72.split.loop.exit, %bb.m, %bb.q, %bb.n, %bb.r, %bb.k, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.bh, %bb.bi, %bb.ay, %bb.al, %bb.am, %bb.aj, %bb.bj, %bb.be, %_RINvNtNtCsj6eKBz9Db1c_4core5slice3cmp13chaining_implNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2m_s_0EBS_.exit, %bb.az, %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit, %bb.g, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.f, %bb.ap, %bb.e, %bb.d, %bb.ao, %bb.an
  %.sroa.0.0 = phi i8 [ %i.cm, %bb.n ], [ -1, %bb.r ], [ %i.gs, %bb.an ], [ %i.gt, %bb.ao ], [ -1, %bb.am ], [ %i.fw, %bb.ac ], [ %i.w, %bb.d ], [ %i.gx, %bb.ap ], [ %i.ak, %bb.e ], [ %i.hg, %bb.aq ], [ %i.ao, %bb.f ], [ %i.ht, %bb.at ], [ %i.hr, %bb.as ], [ %i.hl, %bb.ar ], [ %i.aw, %bb.g ], [ 1, %bb.q ], [ %i.gf, %bb.ai ], [ %i.cc, %bb.k ], [ 1, %bb.m ], [ %i.gj, %bb.aj ], [ %., %bb.ay ], [ 1, %bb.al ], [ %i.jm, %bb.bj ], [ %i.gl, %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66.loopexit72.split.loop.exit ], [ %i.iq, %bb.az ], [ %.sroa.0.0.i, %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit ], [ -1, %bb.ag ], [ %i.fx, %bb.ad ], [ %.57, %bb.bi ], [ 1, %bb.bh ], [ %i.ee, %.lr.ph136 ], [ %i.fg, %bb.z ], [ %i.ix, %bb.be ], [ %i.eg, %_RINvNtNtCsj6eKBz9Db1c_4core5slice3cmp13chaining_implNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2m_s_0EBS_.exit ], [ 1, %bb.af ], [ %i.fm, %bb.aa ], [ %i.ge, %bb.ah ], [ 1, %bb.ba ], [ 1, %bb.ax ], [ %i.ja, %bb.bf ], [ %i.it, %bb.bd ], [ %i.ir, %bb.bc ], [ %i.em, %bb.x ], [ %i.es, %bb.y ], [ %i.bi, %bb.i ], [ %i.ic, %bb.av ], [ %i.bc, %bb.h ], [ %i.hw, %bb.au ], [ %i.q, %bb.c ], [ -1, %bb.bb ]
  ret i8 %.sroa.0.0

bb.ak:                                            ; preds = %bb.d
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr132, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !align !174, !noundef !29 ; 2 uses
  %.not54 = icmp eq ptr %i.gn, null
  %i.go = getelementptr inbounds nuw i8, ptr %.tr71133, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !align !174, !noundef !29 ; 2 uses
  %.not55 = icmp eq ptr %i.gp, null               ; 2 uses
  br i1 %.not54, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %.not55, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66, label %bb.ao

bb.am:                                            ; preds = %bb.ak
  br i1 %.not55, label %bb.an, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.an:                                            ; preds = %bb.am, %bb.ao
  %i.gq = getelementptr inbounds nuw i8, ptr %.tr132, i64 24
  %i.gr = getelementptr inbounds nuw i8, ptr %.tr71133, i64 24
  %i.gs = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.gq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.gr) #76
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.ao:                                            ; preds = %bb.al
  %i.gt = tail call fastcc noundef i8 @_RNvXs6_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.gn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.gp) #76 ; 2 uses
  %i.gu = icmp eq i8 %i.gt, 0
  br i1 %i.gu, label %bb.an, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.ap:                                            ; preds = %bb.e
  %i.gv = getelementptr inbounds nuw i8, ptr %.tr71133, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %.tr132, i64 32
  %i.gx = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.gv) #76
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.aq:                                            ; preds = %bb.f
  %i.gy = getelementptr inbounds nuw i8, ptr %.tr132, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !nonnull !29, !noundef !29
  %i.ha = getelementptr inbounds nuw i8, ptr %.tr132, i64 24
  %i.hb = load i64, ptr %i.ha, align 8, !noundef !29
  %i.hc = getelementptr inbounds nuw i8, ptr %.tr71133, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !nonnull !29, !noundef !29
  %i.he = getelementptr inbounds nuw i8, ptr %.tr71133, i64 24
  %i.hf = load i64, ptr %i.he, align 8, !noundef !29
  %i.hg = tail call fastcc noundef i8 @_RINvNtNtCsj6eKBz9Db1c_4core5slice3cmp13chaining_implNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2m_s_0EBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.gz, i64 noundef %i.hb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.hd, i64 noundef %i.hf) #76
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.ar:                                            ; preds = %bb.g
  %i.hh = getelementptr inbounds nuw i8, ptr %.tr132, i64 96
  %i.hi = load i8, ptr %i.hh, align 8, !range !15324, !noundef !29 ; 2 uses
  %10 = zext nneg i8 %i.hi to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %.tr71133, i64 96
  %i.hk = load i8, ptr %i.hj, align 8, !range !15324, !noundef !29 ; 2 uses
  %11 = zext nneg i8 %i.hk to i64
  %i.hl = tail call i8 @llvm.scmp.i8.i64(i64 %10, i64 %11)
  %i.hm = icmp eq i8 %i.hi, %i.hk
  br i1 %i.hm, label %bb.as, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.as:                                            ; preds = %bb.ar
  %i.hn = getelementptr inbounds nuw i8, ptr %.tr132, i64 88
  %i.ho = load ptr, ptr %i.hn, align 8, !nonnull !29, !noundef !29
  %i.hp = getelementptr inbounds nuw i8, ptr %.tr71133, i64 88
  %i.hq = load ptr, ptr %i.hp, align 8, !nonnull !29, !noundef !29
  %i.hr = tail call fastcc noundef i8 @_RNvXs6_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ho, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.hq) #76 ; 2 uses
  %i.hs = icmp eq i8 %i.hr, 0
  br i1 %i.hs, label %bb.at, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.at:                                            ; preds = %bb.as
  %i.ht = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ar) #76
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.au:                                            ; preds = %bb.h
  %i.hu = getelementptr inbounds nuw i8, ptr %.tr71133, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %.tr132, i64 24
  %i.hw = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.hv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.hu) #76 ; 2 uses
  %i.hx = icmp eq i8 %i.hw, 0
  br i1 %i.hx, label %tailrecurse.backedge.sink.split, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.av:                                            ; preds = %bb.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.tr132, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !nonnull !29, !noundef !29
  %i.ia = getelementptr inbounds nuw i8, ptr %.tr71133, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !nonnull !29, !noundef !29
  %i.ic = tail call fastcc noundef i8 @_RNvXs6_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.hz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ib) #76 ; 2 uses
  %i.id = icmp eq i8 %i.ic, 0
  br i1 %i.id, label %bb.aw, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.aw:                                            ; preds = %bb.av
  %i.ie = getelementptr inbounds nuw i8, ptr %.tr132, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !align !174, !noundef !29 ; 2 uses
  %.not51 = icmp eq ptr %i.if, null
  %i.ig = getelementptr inbounds nuw i8, ptr %.tr71133, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8, !align !174, !noundef !29 ; 3 uses
  br i1 %.not51, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not53 = icmp eq ptr %i.ih, null
  br i1 %.not53, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66, label %tailrecurse.backedge

bb.ay:                                            ; preds = %bb.aw
  %.not52 = icmp ne ptr %i.ih, null
  %. = sext i1 %.not52 to i8
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.az:                                            ; preds = %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit
  %i.ii = getelementptr inbounds nuw i8, ptr %.tr132, i64 112
  %i.ij = load ptr, ptr %i.ii, align 8, !nonnull !29, !noundef !29
  %i.ik = getelementptr inbounds nuw i8, ptr %.tr132, i64 120
  %i.il = load i64, ptr %i.ik, align 8, !noundef !29
  %i.im = getelementptr inbounds nuw i8, ptr %.tr71133, i64 112
  %i.in = load ptr, ptr %i.im, align 8, !nonnull !29, !noundef !29
  %i.io = getelementptr inbounds nuw i8, ptr %.tr71133, i64 120
  %i.ip = load i64, ptr %i.io, align 8, !noundef !29
  %i.iq = tail call fastcc noundef i8 @_RINvNtNtCsj6eKBz9Db1c_4core5slice3cmp13chaining_implTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBT_14string_literal13StringLiteralENtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB30_s_0EBT_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ij, i64 noundef %i.il, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.in, i64 noundef %i.ip) #76
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.ba:                                            ; preds = %bb.u
  br i1 %.not49, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66, label %bb.bd

bb.bb:                                            ; preds = %bb.u
  br i1 %.not49, label %bb.bc, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.bc:                                            ; preds = %bb.bb, %bb.bd
  %i.ir = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.do) #76 ; 2 uses
  %i.is = icmp eq i8 %i.ir, 0
  br i1 %i.is, label %tailrecurse.backedge.sink.split, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.bd:                                            ; preds = %bb.ba
  %i.it = tail call fastcc noundef i8 @_RNvXs6_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ds) #76 ; 2 uses
  %i.iu = icmp eq i8 %i.it, 0
  br i1 %i.iu, label %bb.bc, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.be:                                            ; preds = %_RINvNtNtCsj6eKBz9Db1c_4core5slice3cmp13chaining_implNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2m_s_0EBS_.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %.tr71133, i64 32
  %i.iw = getelementptr inbounds nuw i8, ptr %.tr132, i64 32
  %i.ix = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.iw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.iv) #76
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.bf:                                            ; preds = %bb.x
  %i.iy = getelementptr inbounds nuw i8, ptr %.tr71133, i64 24
  %i.iz = getelementptr inbounds nuw i8, ptr %.tr132, i64 24
  %i.ja = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.iz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.iy) #76 ; 2 uses
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %tailrecurse.backedge.sink.split, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.bg:                                            ; preds = %bb.aj
  %i.jc = getelementptr inbounds nuw i8, ptr %.tr132, i64 8
  %i.jd = load i32, ptr %i.jc, align 8, !range !5131, !noundef !29
  %i.je = getelementptr inbounds nuw i8, ptr %.tr132, i64 12
  %i.jf = trunc nuw i32 %i.jd to i1
  %i.jg = getelementptr inbounds nuw i8, ptr %.tr71133, i64 8
  %i.jh = load i32, ptr %i.jg, align 8, !range !5131, !noundef !29
  %i.ji = trunc nuw i32 %i.jh to i1               ; 2 uses
  br i1 %i.jf, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.ji, label %bb.bj, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.bi:                                            ; preds = %bb.bg
  %.57 = sext i1 %i.ji to i8
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66

bb.bj:                                            ; preds = %bb.bh
  %i.jj = getelementptr inbounds nuw i8, ptr %.tr71133, i64 12
  %i.jk = load i32, ptr %i.je, align 4, !noundef !29
  %i.jl = load i32, ptr %i.jj, align 4, !noundef !29
  %i.jm = tail call i8 @llvm.ucmp.i8.i32(i32 %i.jk, i32 %i.jl)
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit66
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtCskXtk6F4WjxZ_4just5aliasNtB5_5AliasNtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99889)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !99889, !noalias !99892, !noundef !29
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !99889, !noalias !99892, !noundef !29 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !341

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.g, align 8
  br label %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !99889, !noalias !99892, !noundef !29
  call fastcc void @_RINvNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsj6eKBz9Db1c_4core5clone5Clone5clone13clone_subtreeNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB2c_4name4NameNtNtBe_5alloc6GlobalEB2c_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %i.f, i64 noundef %i.i)
  br label %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1732) #75, !noalias !99894
  unreachable

_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit: ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.j, align 8, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.k, align 8, !noundef !29 ; 4 uses
  %i.l = mul nuw nsw i64 %.val1, 72               ; 3 uses
  %i.m = icmp eq i64 %.val1, 0
  br i1 %i.m, label %_RNvXs2_NtCskXtk6F4WjxZ_4just8namepathNtB5_8NamepathNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !99895
  %i.n = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, 9) 8) #70, !noalias !99895 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.l) #71
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull readonly align 8 %.val, i64 %i.l, i1 false), !noalias !99905
  br label %_RNvXs2_NtCskXtk6F4WjxZ_4just8namepathNtB5_8NamepathNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1E_4name4NameEEB1E_(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit unwind label %bb.j

_RNvXs2_NtCskXtk6F4WjxZ_4just8namepathNtB5_8NamepathNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.h, %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit
  %.sroa.5.0.i = phi ptr [ %i.n, %bb.h ], [ inttoptr (i64 8 to ptr), %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false)
  store i64 %.val1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEBF_.exit: ; preds = %bb.i
end_hunk_9
begin_hunk_10_@_RNvXs6_NtCskXtk6F4WjxZ_4just9argumentsNtB5_10SubcommandNtNtCs2FJGJNE9lTN_12clap_builder6derive4Args23augment_args_for_update:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !104340)
  store i64 1, ptr %.sroa.03237.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !104341, !noalias !104348
  store ptr @2578, ptr %.sroa.03237.sroa.0.sroa.3.0..sroa_idx, align 8, !alias.scope !104341, !noalias !104348
  store i64 8, ptr %.sroa.03237.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !104341, !noalias !104348
  store ptr @2566, ptr %.sroa.03237.sroa.2.0..sroa_idx, align 8, !alias.scope !104341, !noalias !104348
  store i64 9, ptr %.sroa.03237.sroa.3.0..sroa_idx, align 8, !alias.scope !104341, !noalias !104348
  store <2 x i32> %i.aci, ptr %.sroa.23238.0..sroa_idx3239, align 8, !alias.scope !104341, !noalias !104348
  invoke void @_RNvMNtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %i.br, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.a)
          to label %bb.nk unwind label %bb.ni, !noalias !104349

bb.ni:                                            ; preds = %bb.nh
  %i.acj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %i.br) #72
          to label %.body.thread unwind label %bb.nj, !noalias !104349

bb.nj:                                            ; preds = %bb.ni
  %i.ack = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !104349
  unreachable

bb.nk:                                            ; preds = %bb.nh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef nonnull align 8 dereferenceable(760) %i.br, i64 760, i1 false), !alias.scope !104348, !noalias !104350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  ret void

.body.thread:                                     ; preds = %bb.ni, %bb.ms, %bb.lq, %bb.la, %bb.jy, %bb.ji, %bb.is, %bb.ht, %bb.gz, %bb.gf, %bb.fp, %bb.ev, %bb.eb, %bb.dl, %bb.cv, %bb.ca, %bb.bk, %bb.al, %bb.v, %.body.i, %bb.of, %bb.oe, %bb.od, %bb.oc, %bb.ob, %bb.oa, %bb.nz, %bb.ny, %bb.nx, %bb.nw, %bb.nv, %bb.nu, %bb.nt, %bb.ns, %bb.nr, %bb.nq, %.thread3395, %bb.no, %.thread3420, %bb.nl
  %.pn40 = phi { ptr, i32 } [ %eh.lpad-body1449.ph, %bb.nl ], [ %i.abl, %bb.ms ], [ %.pn383419, %.thread3420 ], [ %i.zs, %bb.lq ], [ %eh.lpad-body1285.ph, %bb.no ], [ %i.yu, %bb.la ], [ %.pn3394, %.thread3395 ], [ %i.xb, %bb.jy ], [ %eh.lpad-body1123.ph, %bb.nq ], [ %i.wg, %bb.ji ], [ %eh.lpad-body1050.ph, %bb.nr ], [ %i.vi, %bb.is ], [ %eh.lpad-body961.ph, %bb.ns ], [ %i.ts, %bb.ht ], [ %eh.lpad-body884.ph, %bb.nt ], [ %i.si, %bb.gz ], [ %eh.lpad-body805.ph, %bb.nu ], [ %i.qy, %bb.gf ], [ %eh.lpad-body732.ph, %bb.nv ], [ %i.qa, %bb.fp ], [ %eh.lpad-body653.ph, %bb.nw ], [ %i.oq, %bb.ev ], [ %eh.lpad-body575.ph, %bb.nx ], [ %i.ng, %bb.eb ], [ %eh.lpad-body502.ph, %bb.ny ], [ %i.mi, %bb.dl ], [ %eh.lpad-body429.ph, %bb.nz ], [ %i.lk, %bb.cv ], [ %eh.lpad-body346.ph, %bb.oa ], [ %i.kg, %bb.ca ], [ %eh.lpad-body271.ph, %bb.ob ], [ %i.jj, %bb.bk ], [ %eh.lpad-body184.ph, %bb.oc ], [ %i.ht, %bb.al ], [ %eh.lpad-body111.ph, %bb.od ], [ %i.gv, %bb.v ], [ %eh.lpad-body47.ph, %bb.oe ], [ %i.ft, %.body.i ], [ %i.aco, %bb.of ], [ %i.acj, %bb.ni ]
  resume { ptr, i32 } %.pn40

bb.nl:                                            ; preds = %bb.mu, %bb.mw, %bb.nc
  %eh.lpad-body1449.ph = phi { ptr, i32 } [ %i.abn, %bb.mu ], [ %i.abq, %bb.mw ], [ %i.aca, %bb.nc ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.br) #72
          to label %.body.thread unwind label %bb.nm

bb.nm:                                            ; preds = %bb.of, %bb.oe, %bb.od, %bb.oc, %bb.ob, %bb.oa, %bb.nz, %bb.ny, %bb.nx, %bb.nw, %bb.nv, %bb.nu, %bb.nt, %bb.ns, %bb.nr, %bb.nq, %.thread3395, %bb.np, %bb.no, %.thread3420, %bb.nn, %bb.nl
  %i.acl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.nn:                                            ; preds = %bb.lz
  %i.acm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(640) %i.bs) #72
          to label %.thread3420 unwind label %bb.nm

.thread3420:                                      ; preds = %bb.ma, %bb.nn, %bb.mn, %bb.mh, %bb.md, %bb.lt, %.thread3432
  %.pn383419 = phi { ptr, i32 } [ %i.abc, %bb.mn ], [ %i.zu, %.thread3432 ], [ %i.aat, %bb.mh ], [ %i.zx, %bb.lt ], [ %i.aam, %bb.md ], [ %i.aag, %bb.ma ], [ %i.acm, %bb.nn ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.bx) #72
          to label %.body.thread unwind label %bb.nm

bb.no:                                            ; preds = %bb.lc, %bb.le, %bb.lk
  %eh.lpad-body1285.ph = phi { ptr, i32 } [ %i.yw, %bb.lc ], [ %i.yz, %bb.le ], [ %i.zj, %bb.lk ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.cb) #72
          to label %.body.thread unwind label %bb.nm

bb.np:                                            ; preds = %bb.kh
  %i.acn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(640) %i.cc) #72
          to label %.thread3395 unwind label %bb.nm

.thread3395:                                      ; preds = %bb.ki, %bb.np, %bb.kv, %bb.kp, %bb.kl, %bb.kb, %.thread3407
  %.pn3394 = phi { ptr, i32 } [ %i.yl, %bb.kv ], [ %i.xd, %.thread3407 ], [ %i.yc, %bb.kp ], [ %i.xg, %bb.kb ], [ %i.xv, %bb.kl ], [ %i.xp, %bb.ki ], [ %i.acn, %bb.np ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.ch) #72
          to label %.body.thread unwind label %bb.nm

bb.nq:                                            ; preds = %bb.jk, %bb.jm, %bb.js
  %eh.lpad-body1123.ph = phi { ptr, i32 } [ %i.wi, %bb.jk ], [ %i.wl, %bb.jm ], [ %i.ws, %bb.js ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.cl) #72
          to label %.body.thread unwind label %bb.nm

bb.nr:                                            ; preds = %bb.iu, %bb.iw, %bb.jc
  %eh.lpad-body1050.ph = phi { ptr, i32 } [ %i.vk, %bb.iu ], [ %i.vn, %bb.iw ], [ %i.vx, %bb.jc ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.cp) #72
          to label %.body.thread unwind label %bb.nm

bb.ns:                                            ; preds = %bb.hv, %bb.hx, %bb.id, %bb.ih, %bb.in
  %eh.lpad-body961.ph = phi { ptr, i32 } [ %i.tu, %bb.hv ], [ %i.uq, %bb.ih ], [ %i.uj, %bb.id ], [ %i.tx, %bb.hx ], [ %i.uz, %bb.in ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.cu) #72
          to label %.body.thread unwind label %bb.nm

bb.nt:                                            ; preds = %bb.hb, %bb.hd, %bb.hj, %bb.hn
  %eh.lpad-body884.ph = phi { ptr, i32 } [ %i.sk, %bb.hb ], [ %i.tc, %bb.hj ], [ %i.sn, %bb.hd ], [ %i.tj, %bb.hn ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.cz) #72
          to label %.body.thread unwind label %bb.nm

bb.nu:                                            ; preds = %bb.gh, %bb.gj, %bb.gp, %bb.gt
  %eh.lpad-body805.ph = phi { ptr, i32 } [ %i.ra, %bb.gh ], [ %i.rs, %bb.gp ], [ %i.rd, %bb.gj ], [ %i.ry, %bb.gt ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.de) #72
          to label %.body.thread unwind label %bb.nm

bb.nv:                                            ; preds = %bb.fr, %bb.ft, %bb.fz
  %eh.lpad-body732.ph = phi { ptr, i32 } [ %i.qc, %bb.fr ], [ %i.qf, %bb.ft ], [ %i.qp, %bb.fz ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.di) #72
          to label %.body.thread unwind label %bb.nm

bb.nw:                                            ; preds = %bb.ex, %bb.ez, %bb.ff, %bb.fj
  %eh.lpad-body653.ph = phi { ptr, i32 } [ %i.os, %bb.ex ], [ %i.pk, %bb.ff ], [ %i.ov, %bb.ez ], [ %i.pq, %bb.fj ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.dn) #72
          to label %.body.thread unwind label %bb.nm

bb.nx:                                            ; preds = %bb.ed, %bb.ef, %bb.el, %bb.ep
  %eh.lpad-body575.ph = phi { ptr, i32 } [ %i.ni, %bb.ed ], [ %i.oa, %bb.el ], [ %i.nl, %bb.ef ], [ %i.og, %bb.ep ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.ds) #72
          to label %.body.thread unwind label %bb.nm

bb.ny:                                            ; preds = %bb.dn, %bb.dp, %bb.dv
  %eh.lpad-body502.ph = phi { ptr, i32 } [ %i.mk, %bb.dn ], [ %i.mn, %bb.dp ], [ %i.mx, %bb.dv ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.dw) #72
          to label %.body.thread unwind label %bb.nm

bb.nz:                                            ; preds = %bb.cx, %bb.cz, %bb.df
  %eh.lpad-body429.ph = phi { ptr, i32 } [ %i.lm, %bb.cx ], [ %i.lp, %bb.cz ], [ %i.lz, %bb.df ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.ea) #72
          to label %.body.thread unwind label %bb.nm

bb.oa:                                            ; preds = %bb.cc, %bb.ce, %bb.ck, %bb.cq
  %eh.lpad-body346.ph = phi { ptr, i32 } [ %i.ki, %bb.cc ], [ %i.ks, %bb.ck ], [ %i.kl, %bb.ce ], [ %i.lc, %bb.cq ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.ee) #72
          to label %.body.thread unwind label %bb.nm

bb.ob:                                            ; preds = %bb.bm, %bb.bo, %bb.bu
  %eh.lpad-body271.ph = phi { ptr, i32 } [ %i.jl, %bb.bm ], [ %i.jo, %bb.bo ], [ %i.jy, %bb.bu ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.ej) #72
          to label %.body.thread unwind label %bb.nm

bb.oc:                                            ; preds = %bb.an, %bb.ap, %bb.av, %bb.az, %bb.bf
  %eh.lpad-body184.ph = phi { ptr, i32 } [ %i.hv, %bb.an ], [ %i.ir, %bb.az ], [ %i.ik, %bb.av ], [ %i.hy, %bb.ap ], [ %i.ja, %bb.bf ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.eo) #72
          to label %.body.thread unwind label %bb.nm

bb.od:                                            ; preds = %bb.x, %bb.z, %bb.af
  %eh.lpad-body111.ph = phi { ptr, i32 } [ %i.gx, %bb.x ], [ %i.ha, %bb.z ], [ %i.hk, %bb.af ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.es) #72
          to label %.body.thread unwind label %bb.nm

bb.oe:                                            ; preds = %bb.h, %bb.j, %bb.p
  %eh.lpad-body47.ph = phi { ptr, i32 } [ %i.fv, %bb.h ], [ %i.gc, %bb.j ], [ %i.gm, %bb.p ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.ew) #72
          to label %.body.thread unwind label %bb.nm

bb.of:                                            ; preds = %bb.c
  %i.aco = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.bk) #72, !noalias !102113
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.ey) #72
          to label %.body.thread unwind label %bb.nm
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCsj6eKBz9Db1c_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2605, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2604)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct3endCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i8 noundef range(i8 0, 3) %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  br i1 %i.a, label %_RNvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap3endCskXtk6F4WjxZ_4just.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @539, i64 noundef 1) ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap3endCskXtk6F4WjxZ_4just.exit, label %bb.c, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.b)
  br label %_RNvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap3endCskXtk6F4WjxZ_4just.exit

_RNvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap3endCskXtk6F4WjxZ_4just.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.c, %bb.c ], [ null, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !29 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !29 ; 2 uses
  %i.g = tail call i8 @llvm.ucmp.i8.i64(i64 %i.d, i64 %i.f)
  %i.h = icmp eq i64 %i.d, %i.f
  br i1 %i.h, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.i, align 8, !range !40372, !noundef !29 ; 2 uses
  %2 = zext nneg i8 %i.j to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load i8, ptr %i.k, align 8, !range !40372, !noundef !29 ; 2 uses
  %3 = zext nneg i8 %i.l to i64
  %i.m = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  %i.n = icmp eq i8 %i.j, %i.l
  br i1 %i.n, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !noundef !29 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i64, ptr %i.q, align 8, !noundef !29 ; 2 uses
  %i.s = tail call i8 @llvm.ucmp.i8.i64(i64 %i.p, i64 %i.r)
  %i.t = icmp eq i64 %i.p, %i.r
  br i1 %i.t, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i64, ptr %i.u, align 8, !noundef !29 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i64, ptr %i.w, align 8, !noundef !29 ; 2 uses
  %i.y = tail call i8 @llvm.ucmp.i8.i64(i64 %i.v, i64 %i.x)
  %i.z = icmp eq i64 %i.v, %i.x
  br i1 %i.z, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !29 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !29 ; 2 uses
  %i.ae = tail call i8 @llvm.ucmp.i8.i64(i64 %i.ab, i64 %i.ad)
  %i.af = icmp eq i64 %i.ab, %i.ad
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %0, align 8, !nonnull !29, !noundef !29
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !29
  %i.aj = load ptr, ptr %1, align 8, !nonnull !29, !noundef !29
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.al)
  %i.am = call noundef i8 @_RNvNtCsaKJjC64KgbL_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !29, !noundef !29
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !29 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !29, !noundef !29
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load i64, ptr %i.au, align 8, !noundef !29 ; 2 uses
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.av)
  %i.aw = call i32 @memcmp(ptr nonnull %i.ap, ptr nonnull %i.at, i64 %spec.store.select) ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp eq i32 %i.aw, 0
  %i.az = sub i64 %i.ar, %i.av
  %spec.select = select i1 %i.ay, i64 %i.az, i64 %i.ax
  %i.ba = call i8 @llvm.scmp.i8.i64(i64 %spec.select, i64 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.g, %bb.f, %bb.e, %bb.c, %bb.a
  %.sroa.0.0 = phi i8 [ %i.ba, %bb.g ], [ %i.am, %bb.f ], [ %i.ae, %bb.e ], [ %i.y, %bb.d ], [ %i.s, %bb.c ], [ %i.m, %bb.b ], [ %i.g, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, ptr } @_RNvXs7_NtNtCs4wP2HXfJTCR_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCsj6eKBz9Db1c_4core2io5write5Write14write_vectoredCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %2, 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp samesign ult i64 %2, 5
  br i1 %min.iters.check, label %.preheader.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.c = and i64 %2, 3                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 4, i64 %i.c
  %n.vec = sub nsw i64 %2, %i.e                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi14 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %i.i = getelementptr i8, ptr %i.g, i64 40
  %wide.vec = load <4 x i64>, ptr %i.h, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec15 = load <4 x i64>, ptr %i.i, align 8
  %strided.vec16 = shufflevector <4 x i64> %wide.vec15, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.j = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.k = add <2 x i64> %strided.vec16, %vec.phi14 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !104351

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader17

.preheader.preheader17:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader17, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.q, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader17 ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.p, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader17 ]
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.04.0.i
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val.i = load i64, ptr %i.o, align 8, !noundef !29
  %i.p = add i64 %.val.i, %.sroa.02.0.i           ; 4 uses
  %i.q = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.r = icmp eq i64 %i.q, %2
  br i1 %i.r, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1q_8adapters3map8map_foldRBQ_jjNCNvXs7_NtNtCs4wP2HXfJTCR_5alloc2io5implsINtNtB2W_3vec3VechENtNtBU_5write5Write14write_vectored0NCINvXsK_NtB1o_5accumjNtB4r_3Sum3sumINtB2a_3MapBF_B2K_EE0E0ECskXtk6F4WjxZ_4just.exit, label %.preheader, !llvm.loop !104352

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1q_8adapters3map8map_foldRBQ_jjNCNvXs7_NtNtCs4wP2HXfJTCR_5alloc2io5implsINtNtB2W_3vec3VechENtNtBU_5write5Write14write_vectored0NCINvXsK_NtB1o_5accumjNtB4r_3Sum3sumINtB2a_3MapBF_B2K_EE0E0ECskXtk6F4WjxZ_4just.exit: ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !104353, !noundef !29 ; 2 uses
  %i.u = load i64, ptr %0, align 8, !range !307, !alias.scope !104353, !noundef !29
  %i.v = sub i64 %i.u, %i.t
  %i.w = icmp ugt i64 %i.p, %i.v
  br i1 %i.w, label %bb.b, label %.lr.ph, !prof !7

bb.b:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1q_8adapters3map8map_foldRBQ_jjNCNvXs7_NtNtCs4wP2HXfJTCR_5alloc2io5implsINtNtB2W_3vec3VechENtNtBU_5write5Write14write_vectored0NCINvXsK_NtB1o_5accumjNtB4r_3Sum3sumINtB2a_3MapBF_B2K_EE0E0ECskXtk6F4WjxZ_4just.exit
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.t, i64 noundef %i.p, i64 noundef 1, i64 noundef 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1q_8adapters3map8map_foldRBQ_jjNCNvXs7_NtNtCs4wP2HXfJTCR_5alloc2io5implsINtNtB2W_3vec3VechENtNtBU_5write5Write14write_vectored0NCINvXsK_NtB1o_5accumjNtB4r_3Sum3sumINtB2a_3MapBF_B2K_EE0E0ECskXtk6F4WjxZ_4just.exit, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %i.s, align 8, !alias.scope !104356
  %.pre6 = load i64, ptr %0, align 8, !range !307, !alias.scope !104356
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit
  %i.y = phi i64 [ %.pre6, %.lr.ph ], [ %i.an, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit ] ; 3 uses
  %i.z = phi i64 [ %.pre, %.lr.ph ], [ %i.ap, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit ] ; 5 uses
  %.sroa.0.04 = phi ptr [ %1, %.lr.ph ], [ %i.aa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %.sroa.0.04, align 8, !nonnull !29, !noundef !29
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !29 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104361)
  %i.ae = sub i64 %i.y, %i.z
  %i.af = icmp ugt i64 %i.ad, %i.ae
  br i1 %i.af, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i, !prof !341

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i: ; preds = %bb.c
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.z, i64 noundef %i.ad, i64 noundef 1, i64 noundef 1)
  %i.ag = load i64, ptr %i.s, align 8, !alias.scope !104361, !noundef !29 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %.pre5 = load i64, ptr %0, align 8, !range !307, !alias.scope !104356
  br label %bb.d

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.c
  %i.ai = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.ai)
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i
  %i.aj = phi i64 [ %.pre5, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i ], [ %i.y, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i ]
  %i.ak = phi i64 [ %i.ag, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i ], [ %i.z, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i ] ; 2 uses
  %i.al = load ptr, ptr %i.x, align 8, !alias.scope !104361, !nonnull !29, !noundef !29
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.ab, i64 %i.ad, i1 false), !noalias !104361
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i, %bb.d
  %i.an = phi i64 [ %i.aj, %bb.d ], [ %i.y, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i ]
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %i.z, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i ]
  %i.ap = add i64 %i.ao, %i.ad                    ; 2 uses
  store i64 %i.ap, ptr %i.s, align 8, !alias.scope !104361
  %i.aq = icmp eq ptr %i.aa, %i.a
  br i1 %i.aq, label %._crit_edge.loopexit, label %bb.c

._crit_edge.loopexit:                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit
  %i.ar = inttoptr i64 %i.p to ptr
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.0.0.i313 = phi ptr [ null, %bb.a ], [ %i.ar, %._crit_edge.loopexit ]
  %i.as = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.0.0.i313, 1
  ret { i64, ptr } %i.as
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
end_hunk_10
begin_hunk_11_@llvm.bswap.i64

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32, i32) #58

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtNtCsgYJ0xFPoqCG_13clap_complete6engine6customNtB5_13PathCompleter3dir(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtNtCsgYJ0xFPoqCG_13clap_complete6engine6customNtB5_13PathCompleter4file(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs12_NtNtCsj6eKBz9Db1c_4core3num7nonzeroINtB6_7NonZeroyENtNtNtBa_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs10_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserhNtB6_18ValueParserFactory12value_parser(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9debug_set(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_8DebugSet6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsi_NtNtNtCsaKJjC64KgbL_3std3sys2fs4unixNtB5_4File4read(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs3_NtNtCsk7w47U2izUG_14regex_automata4meta5regexNtB5_5RegexNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCscpDzAHcVcWB_4uuid3fmtNtB6_4UuidNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Csh2YIbNO2017_16percent_encodingNtB4_13PercentEncodeNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_Csjcnq7zA68du_6caminoNtB5_11Utf8PathBufNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_Csjcnq7zA68du_6caminoNtB5_8Utf8PathNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtCs2FJGJNE9lTN_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(640), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCs2uF6e5yHHeh_6chrono6offset3utcNtB5_3UtcNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs2uF6e5yHHeh_6chrono6offset5fixedNtB5_11FixedOffsetNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketuEE9drop_slowCslr9lKHiKfPO_10rayon_core(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6scoped9ScopeDataE9drop_slowCslr9lKHiKfPO_10rayon_core(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex6RegexIE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsk7w47U2izUG_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsfxuqquxiU4q_10serde_core2de5implsNtB2_11UnitVisitorNtB4_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCsfxuqquxiU4q_10serde_core2de5implsNtB5_13StringVisitorNtB7_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i8 } @_RNvNtCsl7tMOFksck4_7dotenvy4iter14eval_end_state(i8 noundef range(i8 0, 8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtCsdftwklc2oBO_7similar4text11abstractioneNtB5_11DiffableStr17ends_with_newline(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsF_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserNtB5_17FalseyValueParserNtB5_16TypedValueParser15possible_values(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsF_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserNtB5_17FalseyValueParserNtB5_16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(760), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBd_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i8, i8 } @_RNvNtCse6cJcrsIENc_14pulldown_cmark5parse15body_to_tag_end(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCse6cJcrsIENc_14pulldown_cmark5parse13item_to_event(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(192)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell10UnsafeCellINtNtCs9ILO0rivZwZ_9rand_core5block8BlockRngNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsc_NtCsaKJjC64KgbL_3std2fsNtB5_4FileNtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seek(ptr noalias nofree noundef align 4 dereferenceable(4), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsb_NtCsaKJjC64KgbL_3std2fsNtB5_4FileNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5write(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs2_NtCsaKJjC64KgbL_3std7processNtB5_10ChildStdinNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5write(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtCsfxuqquxiU4q_10serde_core2deNtB5_5OneOfNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsaKJjC64KgbL_3std3sys5stdio4unixNtB5_6StderrNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5write(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCsg2HB1uAEQDf_9getrandom8backends27linux_android_with_fallback4init() unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs8home_dir(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 -1, 1114112) i32 @_RNvXsO_NtCsj6eKBz9Db1c_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtCsdftwklc2oBO_7similar4text11abstractioneNtB5_11DiffableStr14tokenize_lines(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #68

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #58

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #69

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #58

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #61

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #58

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #61

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #58

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+sse3,+sse4.1,+ssse3" }
attributes #14 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { inlinehint nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #46 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #49 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { norecurse nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #52 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #53 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #54 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #55 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #56 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #57 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #58 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #59 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #60 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #61 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #62 = { nofree nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #63 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #64 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #65 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #66 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #67 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #68 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #69 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #70 = { nounwind }
attributes #71 = { noreturn }
attributes #72 = { cold }
attributes #73 = { cold noreturn nounwind }
attributes #74 = { noinline }
attributes #75 = { noinline noreturn }
attributes #76 = { inlinehint }
attributes #77 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCs2FJGJNE9lTN_12clap_builder5error10ErrorInnerE3newCskXtk6F4WjxZ_4just: argument 0"}
!6 = distinct !{!6, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCs2FJGJNE9lTN_12clap_builder5error10ErrorInnerE3newCskXtk6F4WjxZ_4just"}
!7 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!8 = !{!9, !11, !13, !14, !16}
!9 = distinct !{!9, !10, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just: argument 0"}
!10 = distinct !{!10, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just"}
!11 = distinct !{!11, !12, !"_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just: argument 0"}
!12 = distinct !{!12, !"_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just"}
!13 = distinct !{!13, !12, !"_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just: argument 1"}
!14 = distinct !{!14, !15, !"_RNvXs25_NtCs4wP2HXfJTCR_5alloc6stringReNtB6_12SpecToString14spec_to_string: argument 0"}
!15 = distinct !{!15, !"_RNvXs25_NtCs4wP2HXfJTCR_5alloc6stringReNtB6_12SpecToString14spec_to_string"}
!16 = distinct !{!16, !17, !"_RNvXsB_NtCs4wP2HXfJTCR_5alloc6stringReNtB5_8ToString9to_stringCskXtk6F4WjxZ_4just: argument 0"}
!17 = distinct !{!17, !"_RNvXsB_NtCs4wP2HXfJTCR_5alloc6stringReNtB5_8ToString9to_stringCskXtk6F4WjxZ_4just"}
!18 = !{!11, !14, !16}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error11set_messageNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just: argument 0"}
!21 = distinct !{!21, !"_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error11set_messageNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just"}
!22 = !{!23}
!23 = distinct !{!23, !21, !"_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error11set_messageNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just: argument 1"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2FJGJNE9lTN_12clap_builder5error7MessageEECskXtk6F4WjxZ_4just: argument 0"}
!26 = distinct !{!26, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2FJGJNE9lTN_12clap_builder5error7MessageEECskXtk6F4WjxZ_4just"}
!27 = !{i64 0, i64 3}
!28 = !{!25, !20}
!29 = !{}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error7MessageECskXtk6F4WjxZ_4just: argument 0"}
!32 = distinct !{!32, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error7MessageECskXtk6F4WjxZ_4just"}
!33 = !{!31, !25, !20}
!34 = !{!31, !25, !20, !23}
!35 = !{!20, !23}
!36 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!37 = !{!38, !40, !42, !44, !45, !47, !48, !50}
!38 = distinct !{!38, !39, !"_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskXtk6F4WjxZ_4just: argument 0"}
!39 = distinct !{!39, !"_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskXtk6F4WjxZ_4just"}
!40 = distinct !{!40, !41, !"_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!41 = distinct !{!41, !"_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!42 = distinct !{!42, !43, !"_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just: argument 0"}
!43 = distinct !{!43, !"_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just"}
!44 = distinct !{!44, !43, !"_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just: argument 1"}
!45 = distinct !{!45, !46, !"_RNvYINtNtNtCsj6eKBz9Db1c_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskXtk6F4WjxZ_4just: argument 0"}
!46 = distinct !{!46, !"_RNvYINtNtNtCsj6eKBz9Db1c_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskXtk6F4WjxZ_4just"}
!47 = distinct !{!47, !46, !"_RNvYINtNtNtCsj6eKBz9Db1c_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskXtk6F4WjxZ_4just: argument 1"}
!48 = distinct !{!48, !49, !"_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskXtk6F4WjxZ_4just: argument 0"}
!49 = distinct !{!49, !"_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskXtk6F4WjxZ_4just"}
!50 = distinct !{!50, !49, !"_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskXtk6F4WjxZ_4just: argument 1"}
!51 = !{!42, !44, !45, !47, !48, !50}
!52 = !{!53, !55, !57, !59, !60, !62, !63, !65}
!53 = distinct !{!53, !54, !"_RINvNtNtCsj6eKBz9Db1c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECskXtk6F4WjxZ_4just: argument 0"}
!54 = distinct !{!54, !"_RINvNtNtCsj6eKBz9Db1c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECskXtk6F4WjxZ_4just"}
!55 = distinct !{!55, !56, !"_RNvXs4_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!56 = distinct !{!56, !"_RNvXs4_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!57 = distinct !{!57, !58, !"_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCskXtk6F4WjxZ_4just: argument 0"}
!58 = distinct !{!58, !"_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCskXtk6F4WjxZ_4just"}
!59 = distinct !{!59, !58, !"_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCskXtk6F4WjxZ_4just: argument 1"}
!60 = distinct !{!60, !61, !"_RNvYINtNtNtCsj6eKBz9Db1c_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just: argument 0"}
!61 = distinct !{!61, !"_RNvYINtNtNtCsj6eKBz9Db1c_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just"}
!62 = distinct !{!62, !61, !"_RNvYINtNtNtCsj6eKBz9Db1c_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just: argument 1"}
!63 = distinct !{!63, !64, !"_RNvXsp_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just: argument 0"}
!64 = distinct !{!64, !"_RNvXsp_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just"}
!65 = distinct !{!65, !64, !"_RNvXsp_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just: argument 1"}
!66 = !{!57, !59, !60, !62, !63, !65}
!67 = !{!68, !70, !72, !74, !75, !77, !78, !80}
!68 = distinct !{!68, !69, !"_RINvNtNtCsj6eKBz9Db1c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECskXtk6F4WjxZ_4just: argument 0"}
!69 = distinct !{!69, !"_RINvNtNtCsj6eKBz9Db1c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECskXtk6F4WjxZ_4just"}
!70 = distinct !{!70, !71, !"_RNvXs4_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!71 = distinct !{!71, !"_RNvXs4_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!72 = distinct !{!72, !73, !"_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCskXtk6F4WjxZ_4just: argument 0"}
!73 = distinct !{!73, !"_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCskXtk6F4WjxZ_4just"}
!74 = distinct !{!74, !73, !"_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCskXtk6F4WjxZ_4just: argument 1"}
!75 = distinct !{!75, !76, !"_RNvYINtNtNtCsj6eKBz9Db1c_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just: argument 0"}
!76 = distinct !{!76, !"_RNvYINtNtNtCsj6eKBz9Db1c_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just"}
!77 = distinct !{!77, !76, !"_RNvYINtNtNtCsj6eKBz9Db1c_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just: argument 1"}
!78 = distinct !{!78, !79, !"_RNvXsp_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just: argument 0"}
!79 = distinct !{!79, !"_RNvXsp_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just"}
end_hunk_11
