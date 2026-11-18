Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8939
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvMNtCs9gmjTwvRRSu_10typst_html10introspectNtB2_16HtmlIntrospector8position:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = trunc i128 %2 to i64
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = lshr i128 %2, 64
  %i.h = trunc nuw i128 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411       ; 2 uses
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12122)
  %i.l = lshr i64 %i.k, 57
  %i.m = trunc nuw nsw i64 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !12123, !noundef !52 ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !alias.scope !12123, !nonnull !52, !noundef !52 ; 2 uses
  %i.q = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ai, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.k, %bb.b ], [ %i.aj, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.o  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.s, align 1, !noalias !12124 ; 2 uses
  %i.t = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.r
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.ah, %bb.d ], [ %i.u, %bb.c ] ; 3 uses
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = add i64 %.sroa.01.0.i.i.i.i, %i.w
  %i.y = and i64 %i.x, %i.o
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [32 x i8], ptr %i.p, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -32
  %.val2.i.i.i.i = load i128, ptr %i.ab, align 16, !noalias !12125, !noundef !52
  %i.ac = icmp eq i128 %2, %.val2.i.i.i.i
  br i1 %i.ac, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs9gmjTwvRRSu_10typst_html.exit.i, label %bb.d, !prof !54

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.e, label %.loopexit, !prof !55

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.ah = and i16 %i.ag, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.aj = add i64 %.sroa.01.0.i.i.i.i, %i.ai
  br label %bb.c

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.aa, i64 -16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !52 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !52 ; 2 uses
  %i.ao = icmp ult i64 %i.al, %i.an
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs9gmjTwvRRSu_10typst_html.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @970) #51
  unreachable

bb.g:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs9gmjTwvRRSu_10typst_html.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !52, !noundef !52
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.aq, i64 %i.al ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %.val = load ptr, ptr %i.at, align 8, !nonnull !52, !noundef !52 ; 4 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 56
  %.val9 = load i64, ptr %i.au, align 8
  %.not.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecjENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds i8, ptr %.val, i64 -16
  %i.aw = atomicrmw add ptr %i.av, i64 1 monotonic, align 8
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecjENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit, !prof !55

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowjECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %.val) #54
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecjENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.g, %bb.h
  %i.ay = load i64, ptr %i.as, align 8, !range !66, !noundef !52 ; 2 uses
  %.not8 = icmp eq i64 %i.ay, 2
  br i1 %.not8, label %bb.l, label %bb.k

.loopexit:                                        ; preds = %._crit_edge.i.i.i, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.loopexit
  ret void

bb.k:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecjENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit
  %.sroa.47.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.0..sroa.0.0.1.sroa_idx, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecjENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit, %bb.k
  store i64 %i.ay, ptr %0, align 8
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.val, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.val9, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtCs9gmjTwvRRSu_10typst_html3domNtB2_12HtmlDocument16introspector_mut(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.4.i.i.i.i34.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 16               ; 13 uses
  %.sroa.4.i.i.i.i.i.i.i.i.i.i = alloca [32 x i8], align 16 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5.i.i.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [168 x i8], align 8               ; 12 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12321)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !12321, !nonnull !52, !noundef !52 ; 31 uses
  %i.q = cmpxchg ptr %i.p, i64 1, i64 0 acquire monotonic, align 8, !noalias !12321
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.q, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = load atomic i64, ptr %i.r monotonic, align 8, !noalias !12321
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.by, label %bb.bz

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12321
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12322)
  %i.u = tail call { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 232), !noalias !12323 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0        ; 3 uses
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = inttoptr i64 %i.v to ptr
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !12323
  %i.z = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.v) #53, !noalias !12323
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i.i.i

_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.3.0.copyload.i.i = phi ptr [ %i.y, %bb.d ], [ %i.z, %bb.e ] ; 12 uses
  %i.aa = icmp eq ptr %.sroa.3.0.copyload.i.i, null
  br i1 %i.aa, label %bb.f, label %_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorNtNtB8_5alloc6GlobalE3newBY_.exit.i.i, !prof !55

bb.f:                                             ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef %i.v, i64 noundef %i.w) #54, !noalias !12323
  unreachable

_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorNtNtB8_5alloc6GlobalE3newBY_.exit.i.i: ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorNtNtBa_5alloc6GlobalE3new0B10_.exit.i.i.i.i
  store i64 1, ptr %.sroa.3.0.copyload.i.i, align 8, !noalias !12323
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i, i64 8
  store i64 1, ptr %i.ab, align 8, !noalias !12323
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.sroa.3.0.copyload.i.i, ptr %i.ac, align 8, !alias.scope !12322, !noalias !12321
  store i64 8, ptr %i.n, align 8, !alias.scope !12322, !noalias !12321
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 232, ptr %i.ad, align 8, !alias.scope !12322, !noalias !12321
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i8 1, ptr %i.ae, align 8, !alias.scope !12322, !noalias !12321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12324
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12325)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12326
  %i.af = getelementptr i8, ptr %i.p, i64 24
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !noalias !12326, !nonnull !52, !noundef !52
  %i.ag = getelementptr i8, ptr %i.p, i64 32
  %.val6.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !12326, !noundef !52 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12327)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12328
  %i.ah = shl nuw nsw i64 %.val6.i.i.i.i.i.i, 6   ; 2 uses
  %i.ai = icmp eq i64 %.val6.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorNtNtB8_5alloc6GlobalE3newBY_.exit.i.i
  store i64 0, ptr %i.j, align 8, !noalias !12328
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aj, align 8, !noalias !12328
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtNtBM_13introspection8position12HtmlPositionEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorNtNtB8_5alloc6GlobalE3newBY_.exit.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !12329
  %i.al = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, 9) 8) #53, !noalias !12329 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.g, label %.lr.ph.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ah) #54
          to label %.noexc.i.i unwind label %.body.thread9.i.i, !noalias !12321

.body.thread9.i.i:                                ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i
  store i64 %.val6.i.i.i.i.i.i, ptr %i.j, align 8, !noalias !12328
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.al, ptr %i.ao, align 8, !noalias !12328
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  br label %bb.h

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.h
  %lpad.loopexit.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.h:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.013.026.i.i.i.i.i.i.i.i = phi ptr [ %.val5.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.at, %bb.n ] ; 6 uses
  %.sroa.7.025.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.au, %bb.n ] ; 3 uses
  %.sroa.10.024.i.i.i.i.i.i.i.i = phi i64 [ %.val6.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %1, %bb.n ]
  %1 = add nsw i64 %.sroa.10.024.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.026.i.i.i.i.i.i.i.i, i64 64
  %i.au = add nuw nsw i64 %.sroa.7.025.i.i.i.i.i.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12331)
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.013.026.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i, !noalias !12332

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.026.i.i.i.i.i.i.i.i, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12334)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.026.i.i.i.i.i.i.i.i, i64 48
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !12335, !noalias !12336, !nonnull !52, !noundef !52 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.026.i.i.i.i.i.i.i.i, i64 56
  %.val4.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !12335, !noalias !12336
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecjENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 -16
  %i.az = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8, !noalias !12337
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.j, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecjENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i, !prof !55

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowjECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i) #54
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.l

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.j
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecjENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %.noexc.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  %i.bb = load i64, ptr %i.av, align 8, !range !66, !alias.scope !12335, !noalias !12336, !noundef !52 ; 2 uses
  %.not.i.i12.i.i.i.i.i.i.i.i = icmp eq i64 %i.bb, 2
  br i1 %.not.i.i12.i.i.i.i.i.i.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecjENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.026.i.i.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !12338
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %bb.p unwind label %bb.m, !noalias !12332

bb.m:                                             ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !12332
  unreachable

bb.n:                                             ; preds = %bb.k, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecjENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i
  store ptr %.val.i.i.i.i.i.i.i.i.i.i, ptr %i.ar, align 8, !alias.scope !12339, !noalias !12328
  store i64 %.val4.i.i.i.i.i.i.i.i.i.i, ptr %i.as, align 8, !alias.scope !12339, !noalias !12328
  store i64 %i.bb, ptr %i.aq, align 8, !alias.scope !12339, !noalias !12328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !12340
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.al, i64 %.sroa.7.025.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.be, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false), !noalias !12332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12328
  %i.bf = icmp eq i64 %1, 0
  br i1 %i.bf, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtNtBM_13introspection8position12HtmlPositionEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i, label %bb.h

bb.o:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !12332
  unreachable

bb.p:                                             ; preds = %bb.l, %.loopexit.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bc, %bb.l ], [ %lpad.loopexit.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ]
  store i64 %.sroa.7.025.i.i.i.i.i.i.i.i, ptr %i.ap, align 8, !noalias !12328
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtNtB1f_13introspection8position12HtmlPositionEEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #49
          to label %.body.thread.i.i unwind label %bb.o, !noalias !12332

_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtNtBM_13introspection8position12HtmlPositionEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i: ; preds = %bb.n, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i
  %2 = phi ptr [ %i.ak, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i ], [ %i.ap, %bb.n ]
  store i64 %.val6.i.i.i.i.i.i, ptr %2, align 8, !noalias !12328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !12341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12328
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12343)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !12344, !noalias !12326, !noundef !52 ; 6 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.z, label %bb.q

bb.q:                                             ; preds = %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtNtBM_13introspection8position12HtmlPositionEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i
  %i.bl = add i64 %i.bj, 1                        ; 2 uses
  %i.bm = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bl, i64 48) ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  br i1 %i.bn, label %bb.s, label %bb.r, !prof !55

bb.r:                                             ; preds = %bb.q
  %i.bo = extractvalue { i64, i1 } %i.bm, 0       ; 3 uses
  %i.bp = add i64 %i.bj, 17                       ; 2 uses
  %i.bq = add i64 %i.bo, %i.bp                    ; 5 uses
  %i.br = icmp ult i64 %i.bq, %i.bo
  %i.bs = icmp ugt i64 %i.bq, 9223372036854775792
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.br, %i.bs
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i, !prof !70

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.bt = icmp eq i64 %i.bq, 0
  br i1 %i.bt, label %bb.u, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i7.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i7.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !12345
  %i.bu = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !12345 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bw = invoke { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.aa, !noalias !12326

bb.t:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i7.i.i.i.i.i.i
  %i.bx = invoke { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.bq)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.aa, !noalias !12326

.noexc.i.i.i.i.i.i:                               ; preds = %bb.t, %bb.s
  %.pn.i.i.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.bw, %bb.s ], [ %i.bx, %bb.t ] ; 2 uses
  %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i.i.i.i.i.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i.i.i.i.i.i.i, 1
  %.pre.i.i.i.i.i.i.i.i = add i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i, 17
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEE17new_uninitializedCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i7.i.i.i.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i9.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i7.i.i.i.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i.i.i.i.i.i.i.i, i64 %i.bo
  %i.bz = icmp ult i64 %i.bj, 8
  %i.ca = lshr i64 %i.bl, 3
  %i.cb = mul nuw nsw i64 %i.ca, 7
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.bz, i64 %i.bj, i64 %i.cb
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEE17new_uninitializedCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEE17new_uninitializedCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i: ; preds = %bb.u, %.noexc.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i ], [ %i.bp, %bb.u ]
  %.sroa.7.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.12.0.ph.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i, %bb.u ]
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i ], [ %i.bj, %bb.u ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ null, %.noexc.i.i.i.i.i.i ], [ %i.by, %bb.u ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12346
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !12346
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.5.0.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !12346
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !12346
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !12346
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12350)
  %i.cc = load ptr, ptr %i.bh, align 8, !alias.scope !12351, !noalias !12326, !nonnull !52, !noundef !52 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr nonnull align 1 %i.cc, i64 %.pre-phi.i.i.i.i.i.i.i.i, i1 false), !noalias !12352
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !12351, !noalias !12326, !noundef !52 ; 3 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.loopexit.i.i9.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEE17new_uninitializedCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cc, align 16, !noalias !12353
  %i.cg = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.cl = ptrtoint ptr %i.cc to i64
  br label %bb.v

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableToINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEEENCNvMse_B1y_B1v_15clone_from_impl0EECs9gmjTwvRRSu_10typst_html(i64 %.sroa.011.048.i.i.i.i.i.i.i.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.g) #49, !noalias !12354
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3raw8RawTableToINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #49, !noalias !12346
  br label %.body.i.i.i.i.i.i

bb.v:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.011.048.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.eu, %.loopexit.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.012.047.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.012.1.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.046.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.1.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.813.045.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.cu, %.loopexit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.1014.044.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.cx, %.loopexit.i.i.i.i.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.813.045.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit21.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cm = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.046.i.i.i.i.i.i.i.i.i.i, %bb.v ] ; 2 uses
  %i.cn = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.012.047.i.i.i.i.i.i.i.i.i.i, %bb.v ]
  %.val9.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cm, align 16, !noalias !12355
  %i.co = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 -768 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.co to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit21.i.i.i.i.i.i.i.i.i.i

.loopexit21.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.v
  %.sroa.6.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.046.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.012.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.047.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.813.045.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cr = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.cs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = and i16 %i.cr, %.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %i.cv = sub nsw i64 0, %i.ct
  %i.cw = getelementptr inbounds [48 x i8], ptr %.sroa.012.1.i.i.i.i.i.i.i.i.i.i, i64 %i.cv ; 5 uses
  %i.cx = add i64 %.sroa.1014.044.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i)
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12356)
  %i.cz = load i128, ptr %i.cy, align 16, !alias.scope !12356, !noalias !12352, !noundef !52
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12357)
  %i.db = getelementptr inbounds i8, ptr %i.cw, i64 -16
  %i.dc = load i64, ptr %i.db, align 16, !alias.scope !12358, !noalias !12352, !noundef !52 ; 2 uses
  %i.dd = icmp ugt i64 %i.dc, 1                   ; 2 uses
  %i.de = load ptr, ptr %i.da, align 16, !alias.scope !12358, !noalias !12352, !nonnull !52
  %i.df = getelementptr inbounds i8, ptr %i.cw, i64 -24
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !12358, !noalias !12352
  %.sink11.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.dd, ptr %i.de, ptr %i.da ; 3 uses
  %.sink10.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.dd, i64 %i.dg, i64 %i.dc ; 3 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %.sink11.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sink10.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12359
  store i64 0, ptr %i.cj, align 16, !noalias !12359
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12360)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.sink10.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit21.i.i.i.i.i.i.i.i.i.i
  %i.di = add nsw i64 %.sink10.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.dj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = lshr i64 -1, %i.dj
  %i.dl = add nuw nsw i64 %i.dk, 1
  %i.dm = invoke fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E8try_growCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 16 dereferenceable(32) %i.f, i64 noundef %i.dl)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12359 ; 2 uses

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dn = extractvalue { i64, i64 } %i.dm, 0      ; 2 uses
  switch i64 %i.dn, label %bb.w [
    i64 -1, label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit._RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 0, label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  ], !prof !130

_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit._RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cj, align 16, !alias.scope !12361, !noalias !12359 ; 2 uses
  %.pre57.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1)
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 16, !alias.scope !12361, !noalias !12359
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.do = extractvalue { i64, i64 } %i.dm, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.dn, i64 noundef %i.do) #54
          to label %.noexc3.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12359

.noexc3.i.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.w
  unreachable

_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #51
          to label %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12359

.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit._RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit21.i.i.i.i.i.i.i.i.i.i
  %i.dp = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit._RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %.loopexit21.i.i.i.i.i.i.i.i.i.i ]
  %.sink.i.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre57.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit._RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.loopexit21.i.i.i.i.i.i.i.i.i.i ]
  %i.dq = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit._RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.loopexit21.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dr = icmp ugt i64 %i.dq, 1                   ; 2 uses
  %.sink10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.dr, ptr %i.dp, ptr %i.f
  %.sink9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.dr, ptr %i.ck, ptr %i.cj ; 3 uses
  %i.ds = load i64, ptr %.sink9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !12360, !noalias !12359, !noundef !52 ; 3 uses
  %i.dt = icmp ult i64 %i.ds, %.sink.i.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.y, %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.7.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ds, %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ek, %bb.y ]
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sink11.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ei, %bb.y ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXsa_NvCs9gmjTwvRRSu_10typst_html1__NtB7_8HtmlElemNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element9Construct9construct:bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !21282
  unreachable

_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args3eatNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1a_.exit.i: ; preds = %bb.v
  %i.bs = extractvalue { i64, i64 } %i.bn, 1
  %i.bt = extractvalue { i64, i64 } %i.bn, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i8 0, ptr %i.bu, align 8, !alias.scope !21294, !noalias !21282
  store i64 %i.bt, ptr %i.d, align 8, !alias.scope !21294, !noalias !21282
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.bs, ptr %i.bv, align 8, !alias.scope !21294, !noalias !21282
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.e, i64 16, i1 false), !alias.scope !21298, !noalias !21282
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.bx, align 8, !alias.scope !21294, !noalias !21282
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.by, align 8, !alias.scope !21294, !noalias !21282
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %i.bz, align 8, !alias.scope !21294, !noalias !21282
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 0, ptr %i.ca, align 8, !alias.scope !21294, !noalias !21282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21282
  call fastcc void @_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic10with_hintsINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB1k_6string9EcoStringEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.c), !noalias !21282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21282
  %i.cb = call fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.b), !noalias !21282 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !21282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21282
  %i.cc = extractvalue { ptr, i64 } %i.cb, 0      ; 2 uses
  %i.cd = extractvalue { ptr, i64 } %i.cb, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21282
  %.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i, label %bb.ab, label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit.thread42

bb.ab:                                            ; preds = %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args3eatNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1a_.exit.i, %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args3eatNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1a_.exit.thread7.i
  %.sroa.7.16.i = phi i64 [ %i.ax, %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args3eatNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1a_.exit.thread7.i ], [ %i.cd, %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args3eatNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1a_.exit.i ] ; 2 uses
  %.not4.i = icmp eq i64 %.sroa.7.16.i, 0
  br i1 %.not4.i, label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit, label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit.thread

_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit: ; preds = %bb.b, %bb.a, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !21299
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB2_4Args16missing_argument(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @583, i64 noundef 3), !noalias !21300
  %i.ce = call fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.j), !noalias !21300 ; 2 uses
  %i.cf = extractvalue { ptr, i64 } %i.ce, 0      ; 2 uses
  %i.cg = extractvalue { ptr, i64 } %i.ce, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !21299
  %.not = icmp eq ptr %i.cf, null
  br i1 %.not, label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit.thread, label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit.thread42

_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit.thread42: ; preds = %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args3eatNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1a_.exit.i, %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit
  %.sroa.0.047 = phi ptr [ %i.cf, %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit ], [ %i.cc, %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args3eatNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1a_.exit.i ]
  %.sroa.7.046 = phi i64 [ %i.cg, %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit ], [ %i.cd, %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args3eatNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1a_.exit.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.047, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.046, ptr %i.ci, align 8
  store ptr null, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsEEB11_.exit

_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit.thread: ; preds = %bb.ab, %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit
  %.sroa.7.041 = phi i64 [ %i.cg, %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit ], [ %.sroa.7.16.i, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args5namedNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsEB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef align 8 dereferenceable(24) %2)
  %i.cj = load i64, ptr %i.m, align 8, !range !60, !noundef !52
  %i.ck = trunc nuw i64 %i.cj to i1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !noundef !52 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.co = load i64, ptr %i.cn, align 8            ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.ck, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cm, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.co, ptr %i.cq, align 8
  store ptr null, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsEEB11_.exit

bb.ad:                                            ; preds = %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args4findINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB5_7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef align 8 dereferenceable(24) %2)
          to label %bb.ae unwind label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.l, align 8, !range !66, !noundef !52 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cw = load i64, ptr %i.cv, align 8            ; 2 uses
  br i1 %i.cs, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cw, ptr %i.cy, align 8
  store ptr null, ptr %0, align 8
  %i.cz = icmp eq ptr %i.cm, null
  br i1 %i.cz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsEEB11_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.i.i.i.i.i32 = icmp eq ptr %i.cm, inttoptr (i64 16 to ptr)
  %i.da = getelementptr inbounds i8, ptr %i.cm, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i32, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsEEB11_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEENtNtNtB5_3ops4drop4Drop4drop0EB1T_.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEENtNtNtB5_3ops4drop4Drop4drop0EB1T_.exit.i.i.i.i: ; preds = %bb.ag
  %i.db = atomicrmw add ptr %i.da, i64 -1 release, align 8, !noalias !21301
  %.not.i.i.i.i = icmp eq i64 %i.db, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0EB1Q_.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsEEB11_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0EB1Q_.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEENtNtNtB5_3ops4drop4Drop4drop0EB1T_.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21301
  %i.dc = getelementptr i8, ptr %i.cm, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.dc, align 8, !noalias !21301, !noundef !52 ; 2 uses
  %narrow.i.not.i.i.i.i.i = icmp ugt i64 %.val.i.i.i.i.i, 384307168202282324
  br i1 %narrow.i.not.i.i.i.i.i, label %bb.ah, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEE4sizeBM_.exit.i.i.i.i, !prof !55

bb.ah:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0EB1Q_.exit.i.i.i.i
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #54, !noalias !21301
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEE4sizeBM_.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0EB1Q_.exit.i.i.i.i
  %i.dd = mul nuw nsw i64 %.val.i.i.i.i.i, 24
  %i.de = add nuw nsw i64 %i.dd, 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.da, ptr %i.df, align 8, !noalias !21301
  store i64 8, ptr %i.a, align 8, !noalias !21301
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.de, ptr %i.dg, align 8, !noalias !21301
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEBH_(ptr noalias nofree noundef nonnull align 8 %i.cm, i64 noundef %i.co)
          to label %bb.aj unwind label %bb.ai, !noalias !21301

bb.ai:                                            ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEE4sizeBM_.exit.i.i.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.ak, !noalias !21301

bb.aj:                                            ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEE4sizeBM_.exit.i.i.i.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !21301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21301
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsEEB11_.exit

bb.ak:                                            ; preds = %bb.ai
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !21301
  unreachable

bb.al:                                            ; preds = %bb.ae
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.623.0.copyload = load i64, ptr %.sroa.623.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store i64 %.sroa.7.041, ptr %i.dj, align 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store ptr %i.cm, ptr %i.dk, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i64 %i.co, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %i.cr, ptr %i.dm, align 16
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.cu, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %i.cw, ptr %.sroa.517.0..sroa_idx, align 16
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 %.sroa.623.0.copyload, ptr %.sroa.618.0..sroa_idx, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr inttoptr (i64 16 to ptr), ptr %i.dn, align 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store i64 0, ptr %i.do, align 8
  store i128 0, ptr %i.k, align 16
  call fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtCs9gmjTwvRRSu_10typst_html8HtmlElemEB1o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(112) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsEEB11_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsEEB11_.exit: ; preds = %bb.ac, %bb.af, %bb.ag, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEENtNtNtB5_3ops4drop4Drop4drop0EB1T_.exit.i.i.i.i, %bb.aj, %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit.thread42, %bb.al
  ret void

bb.am:                                            ; preds = %bb.ad
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsEEB11_(ptr %i.cm, i64 %i.co) #49
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21313)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21314
  %i.b = shl nuw nsw i64 %.16.val, 4              ; 2 uses
  %i.c = icmp eq i64 %.16.val, 0
  br i1 %i.c, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.thread.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !noalias !21314
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !noalias !21314
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !21315
  %i.f = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, 9) 8) #53, !noalias !21315 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %.lr.ph.preheader.i

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.b) #54, !noalias !21314
  unreachable

.lr.ph.preheader.i:                               ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %.16.val, ptr %i.a, align 8, !noalias !21314
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.h, align 8, !noalias !21314
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %.lr.ph.preheader.i
  %.sroa.014.033.i = phi ptr [ %i.j, %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.8.val, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.7.032.i = phi i64 [ %i.k, %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.031.i = phi i64 [ %1, %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.16.val, %.lr.ph.preheader.i ]
  %1 = add nsw i64 %.sroa.10.031.i, -1            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.014.033.i, i64 16
  %i.k = add nuw nsw i64 %.sroa.7.032.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21318)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.014.033.i, i64 15
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !21319, !noundef !52
  %.not.i.i12.i = icmp sgt i8 %i.m, -1
  %.val.i.i.i = load ptr, ptr %.sroa.014.033.i, align 8, !alias.scope !21320 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.014.033.i, i64 8
  %.val10.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !21320
  br i1 %.not.i.i12.i, label %bb.d, label %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !21321
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, !prof !55

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %.val.i.i.i) #54
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.f
  unreachable

_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i13.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.d ], [ %.val.i.i.i, %bb.e ], [ %.val.i.i.i, %bb.c ]
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.7.032.i ; 2 uses
  store ptr %.sroa.0.0.i13.i, ptr %i.r, align 8, !noalias !21314
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.val10.i.i.i, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !21314
  %i.s = icmp eq i64 %1, 0
  br i1 %i.s, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit, label %bb.c

bb.g:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !21314
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.032.i, ptr %i.i, align 8, !noalias !21314
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #49
          to label %bb.i unwind label %bb.g, !noalias !21314

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.u

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit: ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.thread.i
  %2 = phi ptr [ %i.e, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.thread.i ], [ %i.i, %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ]
  store i64 %.16.val, ptr %2, align 8, !noalias !21314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !21313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21314
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #28 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !52
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !52 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %..i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !21330
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !21330
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i, %..i
  br i1 %i.r, label %bb.g, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !21330, !noundef !52
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !52
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19 = load i64, ptr %i.aj, align 8
  %.promoted20 = load i64, ptr %i.ak, align 8, !alias.scope !21331
  %.promoted22 = load i64, ptr %i.al, align 8, !alias.scope !21331
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !52
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !21332, !noundef !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !21332, !noundef !52 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.au = xor i64 %i.at, %i.as                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !21332, !noundef !52
  %i.ay = add i64 %i.ax, %i.ao                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.ba = xor i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = add i64 %i.ba, %i.av                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 21)
  %i.bd = xor i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %i.am, align 8, !alias.scope !21332
  %i.be = add i64 %i.ay, %i.au                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bg = xor i64 %i.be, %i.bf
  store i64 %i.bg, ptr %i.aq, align 8, !alias.scope !21332
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 32)
  store i64 %i.bh, ptr %i.aw, align 8, !alias.scope !21332
  %i.bi = xor i64 %i.bb, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cv, ptr %i.aj, align 8
  store i64 %i.cy, ptr %i.ak, align 8, !alias.scope !21331
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !21331
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i16 = load i32, ptr %i.bl, align 1, !alias.scope !21333
  %i.bm = zext i32 %.sroa.014.0.copyload.i16 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i10, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10
  %.sroa.015.0.copyload.i15 = load i16, ptr %i.bq, align 1, !alias.scope !21333
  %i.br = zext i16 %.sroa.015.0.copyload.i15 to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11
  %i.bv = or disjoint i64 %.sroa.03.0.i10, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10, %bb.m ] ; 3 uses
  %.sroa.0.1.i13 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12, %.sroa.0.1.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !21333, !noundef !52
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i14 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cy, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19, %.lr.ph ], [ %i.cv, %bb.q ]
  %.sroa.0.118 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118
  %.sroa.07.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.07.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.co = xor i64 %i.cn, %i.cm                    ; 3 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.cq = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cs = xor i64 %i.cq, %i.cr                    ; 3 uses
end_hunk_1
