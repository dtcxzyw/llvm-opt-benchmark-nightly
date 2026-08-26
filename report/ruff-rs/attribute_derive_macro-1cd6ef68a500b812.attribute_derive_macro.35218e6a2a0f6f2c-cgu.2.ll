Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/attribute_derive_macro-1cd6ef68a500b812.attribute_derive_macro.35218e6a2a0f6f2c-cgu.2?download=true
inline.NumInlined: 55
inline.NumDeleted: 35
begin_hunk_0_@_RNvXsG_NtCsghEUimwObfx_11proc_macro23impNtB5_5IdentNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs4yOyJKxaiYq_22attribute_derive_macro:bb.a

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsH_NtCsghEUimwObfx_11proc_macro23impNtB5_7LiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs4yOyJKxaiYq_22attribute_derive_macro(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 4                ; 2 uses
  %i.c = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsC_NtCsghEUimwObfx_11proc_macro28fallbackNtB5_7LiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs4yOyJKxaiYq_22attribute_derive_macro(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs1m_CstuaXukgBIa_10proc_macroNtB6_7LiteralNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs4yOyJKxaiYq_22attribute_derive_macro(ptr nonnull sret([16 x i8]) align 4 %i.b, ptr nonnull align 4 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReNtNtCsSv8PdaUzvZ_12interpolator11formattable11FormattableEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4yOyJKxaiYq_22attribute_derive_macro(ptr align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCsSv8PdaUzvZ_12interpolator11formattable11FormattableENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs4yOyJKxaiYq_22attribute_derive_macro.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.e, i64 48) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4yOyJKxaiYq_22attribute_derive_macro.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 3 uses
  %i.i = add i64 %i.c, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4yOyJKxaiYq_22attribute_derive_macro.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4yOyJKxaiYq_22attribute_derive_macro.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4yOyJKxaiYq_22attribute_derive_macro.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4yOyJKxaiYq_22attribute_derive_macro.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.h, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %.sroa.8.0.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  tail call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCs4yOyJKxaiYq_22attribute_derive_macro(ptr nonnull %i.a, ptr %i.o, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCsSv8PdaUzvZ_12interpolator11formattable11FormattableENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs4yOyJKxaiYq_22attribute_derive_macro.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtCsSv8PdaUzvZ_12interpolator11formattable11FormattableENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs4yOyJKxaiYq_22attribute_derive_macro.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4yOyJKxaiYq_22attribute_derive_macro.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTNtCsghEUimwObfx_11proc_macro25IdentBQ_EuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4yOyJKxaiYq_22attribute_derive_macro(ptr align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtCsghEUimwObfx_11proc_macro25IdentB1e_EuENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs4yOyJKxaiYq_22attribute_derive_macro.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtCsghEUimwObfx_11proc_macro25IdentB1b_EuEECs4yOyJKxaiYq_22attribute_derive_macro.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse214__mm_load_si128Cs4yOyJKxaiYq_22attribute_derive_macro(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.l)
  %i.m = load <2 x i64>, ptr %i.d, align 16
  store <2 x i64> %i.m, ptr %i.c, align 16
  %i.n = call i32 @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_movemask_epi8Cs4yOyJKxaiYq_22attribute_derive_macro(ptr nonnull align 16 %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.o = load i64, ptr %i.i, align 8              ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtCsghEUimwObfx_11proc_macro25IdentB1b_EuEECs4yOyJKxaiYq_22attribute_derive_macro.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = trunc i32 %i.n to i16
  %i.s = xor i16 %i.r, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %.sroa.05.019.i.i = phi ptr [ %.sroa.05.229.i.i, %bb.d ], [ %i.l, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.4.018.i.i = phi ptr [ %.sroa.4.228.i.i, %bb.d ], [ %i.q, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.10.sroa.1.017.i.i = phi i64 [ %i.ad, %bb.d ], [ %i.o, %.lr.ph.preheader.i.i ]
  %.sroa.76.016.i.i = phi i16 [ %i.af, %bb.d ], [ %i.s, %.lr.ph.preheader.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not9.i.i.i = icmp eq i16 %.sroa.76.016.i.i, 0
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTNtCsghEUimwObfx_11proc_macro25IdentBW_EuEE9next_implKb0_ECs4yOyJKxaiYq_22attribute_derive_macro.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i
  %.sroa.4.1.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.4.018.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.05.1.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.sroa.05.019.i.i, %.lr.ph.i.i ]
  call void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse214__mm_load_si128Cs4yOyJKxaiYq_22attribute_derive_macro(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %.sroa.4.1.i.i)
  %i.t = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.t, ptr %i.a, align 16
  %i.u = call i32 @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_movemask_epi8Cs4yOyJKxaiYq_22attribute_derive_macro(ptr nonnull align 16 %i.a)
  %i.v = trunc i32 %i.u to i16                    ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.05.1.i.i, i64 -768 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.4.1.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.v, -1
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTNtCsghEUimwObfx_11proc_macro25IdentBW_EuEE9next_implKb0_ECs4yOyJKxaiYq_22attribute_derive_macro.exit.thread.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTNtCsghEUimwObfx_11proc_macro25IdentBW_EuEE9next_implKb0_ECs4yOyJKxaiYq_22attribute_derive_macro.exit.thread.i.i: ; preds = %.lr.ph.i.i.i
  %i.y = xor i16 %i.v, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTNtCsghEUimwObfx_11proc_macro25IdentBW_EuEE9next_implKb0_ECs4yOyJKxaiYq_22attribute_derive_macro.exit.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i = icmp eq ptr %.sroa.05.019.i.i, null
  br i1 %.not.i.i, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtCsghEUimwObfx_11proc_macro25IdentB1b_EuEECs4yOyJKxaiYq_22attribute_derive_macro.exit.i, label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTNtCsghEUimwObfx_11proc_macro25IdentBW_EuEE9next_implKb0_ECs4yOyJKxaiYq_22attribute_derive_macro.exit.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTNtCsghEUimwObfx_11proc_macro25IdentBW_EuEE9next_implKb0_ECs4yOyJKxaiYq_22attribute_derive_macro.exit.thread.i.i
  %.lcssa.i30.i.i = phi i16 [ %i.y, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTNtCsghEUimwObfx_11proc_macro25IdentBW_EuEE9next_implKb0_ECs4yOyJKxaiYq_22attribute_derive_macro.exit.thread.i.i ], [ %.sroa.76.016.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTNtCsghEUimwObfx_11proc_macro25IdentBW_EuEE9next_implKb0_ECs4yOyJKxaiYq_22attribute_derive_macro.exit.i.i ] ; 3 uses
  %.sroa.05.229.i.i = phi ptr [ %i.w, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTNtCsghEUimwObfx_11proc_macro25IdentBW_EuEE9next_implKb0_ECs4yOyJKxaiYq_22attribute_derive_macro.exit.thread.i.i ], [ %.sroa.05.019.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTNtCsghEUimwObfx_11proc_macro25IdentBW_EuEE9next_implKb0_ECs4yOyJKxaiYq_22attribute_derive_macro.exit.i.i ] ; 2 uses
  %.sroa.4.228.i.i = phi ptr [ %i.x, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTNtCsghEUimwObfx_11proc_macro25IdentBW_EuEE9next_implKb0_ECs4yOyJKxaiYq_22attribute_derive_macro.exit.thread.i.i ], [ %.sroa.4.018.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTNtCsghEUimwObfx_11proc_macro25IdentBW_EuEE9next_implKb0_ECs4yOyJKxaiYq_22attribute_derive_macro.exit.i.i ]
  %i.z = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i30.i.i, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [48 x i8], ptr %.sroa.05.229.i.i, i64 %i.ab
  %i.ad = add i64 %.sroa.10.sroa.1.017.i.i, -1    ; 2 uses
  %i.ae = add i16 %.lcssa.i30.i.i, -1
  %i.af = and i16 %i.ae, %.lcssa.i30.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 -48
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTTNtCsghEUimwObfx_11proc_macro25IdentBD_EuEECs4yOyJKxaiYq_22attribute_derive_macro(ptr nonnull align 8 %i.ag)
  %i.ah = icmp eq i64 %i.ad, 0
  br i1 %i.ah, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtCsghEUimwObfx_11proc_macro25IdentB1b_EuEECs4yOyJKxaiYq_22attribute_derive_macro.exit.i, label %.lr.ph.i.i

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtCsghEUimwObfx_11proc_macro25IdentB1b_EuEECs4yOyJKxaiYq_22attribute_derive_macro.exit.i: ; preds = %bb.d, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTNtCsghEUimwObfx_11proc_macro25IdentBW_EuEE9next_implKb0_ECs4yOyJKxaiYq_22attribute_derive_macro.exit.i.i, %bb.c, %bb.b
  %i.ai = load i64, ptr %i.f, align 8             ; 2 uses
  %i.aj = add i64 %i.ai, 1
  %i.ak = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aj, i64 48) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  br i1 %i.al, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4yOyJKxaiYq_22attribute_derive_macro.exit.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtCsghEUimwObfx_11proc_macro25IdentB1b_EuEECs4yOyJKxaiYq_22attribute_derive_macro.exit.i
  %i.am = extractvalue { i64, i1 } %i.ak, 0       ; 3 uses
  %i.an = add i64 %i.ai, 17
  %i.ao = add i64 %i.an, %i.am                    ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.am
  br i1 %i.ap, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4yOyJKxaiYq_22attribute_derive_macro.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp ugt i64 %i.ao, 9223372036854775792
  br i1 %i.aq, label %bb.g, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4yOyJKxaiYq_22attribute_derive_macro.exit.i

bb.g:                                             ; preds = %bb.f
  br label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4yOyJKxaiYq_22attribute_derive_macro.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4yOyJKxaiYq_22attribute_derive_macro.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtCsghEUimwObfx_11proc_macro25IdentB1b_EuEECs4yOyJKxaiYq_22attribute_derive_macro.exit.i
  %.sroa.8.0.i = phi i64 [ undef, %bb.e ], [ undef, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtCsghEUimwObfx_11proc_macro25IdentB1b_EuEECs4yOyJKxaiYq_22attribute_derive_macro.exit.i ], [ %i.am, %bb.f ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.e ], [ undef, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtCsghEUimwObfx_11proc_macro25IdentB1b_EuEECs4yOyJKxaiYq_22attribute_derive_macro.exit.i ], [ %i.ao, %bb.f ], [ undef, %bb.g ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.e ], [ 0, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtCsghEUimwObfx_11proc_macro25IdentB1b_EuEECs4yOyJKxaiYq_22attribute_derive_macro.exit.i ], [ 16, %bb.f ], [ 0, %bb.g ]
  %i.ar = load ptr, ptr %0, align 8
  %i.as = sub nsw i64 0, %.sroa.8.0.i
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCs4yOyJKxaiYq_22attribute_derive_macro(ptr nonnull %i.e, ptr %i.at, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtCsghEUimwObfx_11proc_macro25IdentB1e_EuENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs4yOyJKxaiYq_22attribute_derive_macro.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtCsghEUimwObfx_11proc_macro25IdentB1e_EuENtNtCscdodAO9FK5_5alloc5alloc6GlobalECs4yOyJKxaiYq_22attribute_derive_macro.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4yOyJKxaiYq_22attribute_derive_macro.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsz_NtCsghEUimwObfx_11proc_macro23impNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs4yOyJKxaiYq_22attribute_derive_macro(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call ptr @_RNvXss_NtCsghEUimwObfx_11proc_macro28fallbackNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs4yOyJKxaiYq_22attribute_derive_macro(ptr nonnull align 8 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = tail call i32 @_RNvXsU_CstuaXukgBIa_10proc_macroNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs4yOyJKxaiYq_22attribute_derive_macro(ptr nonnull align 4 %i.h), !noalias !24 ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !noalias !24
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCstuaXukgBIa_10proc_macro9TokenTreeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsghEUimwObfx_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
          to label %_RNvXsA_NtCsghEUimwObfx_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs4yOyJKxaiYq_22attribute_derive_macro.exit unwind label %bb.d, !noalias !24

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCstuaXukgBIa_10proc_macro11TokenStreamECsghEUimwObfx_11proc_macro2(ptr nonnull align 4 %i.b) #18
          to label %bb.f unwind label %bb.e, !noalias !24

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !24
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

_RNvXsA_NtCsghEUimwObfx_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs4yOyJKxaiYq_22attribute_derive_macro.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvXsA_NtCsghEUimwObfx_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs4yOyJKxaiYq_22attribute_derive_macro.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3_INtB7_12GenericShuntIB3_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterTNtCsghEUimwObfx_11proc_macro25IdentB2b_EENCNvMs4_Cs4yOyJKxaiYq_22attribute_derive_macroNtB2Y_9Conflicts9to_tokens0EINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtCse5aIBq46JC5_7manyhow5error5ErrorEENCINvXsb_B2d_NtB2d_11TokenStreamINtNtNtB9_6traits7collect12FromIteratorB5G_E9from_iterBU_E0ENCINvXs6_NtB2d_3impNtB76_11TokenStreamIB60_B7g_E9from_iterBQ_Es_0ENtNtB64_8iterator8Iterator7flattenB2Y_(ptr nofree writeonly sret([120 x i8]) align 8 captures(none) initializes((0, 8), (32, 40), (64, 120)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %.sroa.5 = alloca [56 x i8], align 8            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false)
  store ptr null, ptr %0, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtCs4yOyJKxaiYq_22attribute_derive_macro9AttrFieldENvMs7_B1i_B1g_10join_fieldENtNtNtCsdQT5ZjIgVrW_5quote9___private3ext14RepIteratorExt15quote_into_iterB1i_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtCs4yOyJKxaiYq_22attribute_derive_macro9AttrFieldENvMs7_B1i_B1g_14assign_partialENtNtNtCsdQT5ZjIgVrW_5quote9___private3ext14RepIteratorExt15quote_into_iterB1i_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtCs4yOyJKxaiYq_22attribute_derive_macro9AttrFieldENvMs7_B1i_B1g_7partialENtNtNtCsdQT5ZjIgVrW_5quote9___private3ext14RepIteratorExt15quote_into_iterB1i_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs0_NtCsSv8PdaUzvZ_12interpolator5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare hidden zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRDNtB6_7DisplayEL_Bx_3fmtCs4yOyJKxaiYq_22attribute_derive_macro(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #9

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTTNtCsghEUimwObfx_11proc_macro25IdentBW_EuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceCs4yOyJKxaiYq_22attribute_derive_macro(ptr) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse214__mm_load_si128Cs4yOyJKxaiYq_22attribute_derive_macro(ptr sret([16 x i8]) align 16, ptr) unnamed_addr #10

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_movemask_epi8Cs4yOyJKxaiYq_22attribute_derive_macro(ptr align 16) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECs4yOyJKxaiYq_22attribute_derive_macro(ptr align 8) unnamed_addr #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTTNtCsghEUimwObfx_11proc_macro25IdentBD_EuEECs4yOyJKxaiYq_22attribute_derive_macro(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCs4yOyJKxaiYq_22attribute_derive_macro(ptr, ptr, i64, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocateCs4yOyJKxaiYq_22attribute_derive_macro(ptr, i64, i64) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 zeroext, i64, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxCsghEUimwObfx_11proc_macro2(i64, i64) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXNtNtCs4NRVxsYgnAr_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterTNtCsghEUimwObfx_11proc_macro25IdentB27_EENCNvMs4_Cs4yOyJKxaiYq_22attribute_derive_macroNtB2U_9Conflicts9to_tokens0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCse5aIBq46JC5_7manyhow5error5ErrorEENtNtNtB5_6traits8iterator8Iterator4folduNCINvB11_8map_foldNtB29_11TokenStreamNtNtB29_3imp11TokenStreamuNCINvXsb_B29_B6l_INtNtB5t_7collect12FromIteratorB6l_E9from_iterBE_E0NCIB66_B6E_NtCstuaXukgBIa_10proc_macro11TokenStreamuNCINvXs6_B6G_B6E_IB7m_B6E_E9from_iterIBZ_BE_B74_EE0NCINvNvB5p_8for_each4callB8l_NCINvXsj_B8n_B8l_INtB7o_6ExtendB8l_E6extendIBZ_B9B_B90_EE0E0E0E0EB2U_(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtCskqTXHgZZ9qE_8smallvec5DrainANtCsghEUimwObfx_11proc_macro29TokenTreej6_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1n_8adapters3map8map_foldBA_NtCstuaXukgBIa_10proc_macro9TokenTreeuNvNtBC_3imp19into_compiler_tokenNCINvNvB1h_8for_each4callB2U_NCINvXsg_B2W_NtB2W_11TokenStreamINtNtB1l_7collect12FromIteratorB2U_E9from_iterINtB2n_3MapB3_B3w_EE0E0E0ECs4yOyJKxaiYq_22attribute_derive_macro(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtCsghEUimwObfx_11proc_macro29TokenTreeEEINtNtNtB9_7sources4once4OnceB1M_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1M_NtCstuaXukgBIa_10proc_macro9TokenTreeuNvNtB1O_3imp19into_compiler_tokenNCINvNvB2Z_8for_each4callB44_NCINvXsg_B46_NtB46_11TokenStreamINtNtB33_7collect12FromIteratorB44_E9from_iterINtB3I_3MapBO_B4G_EE0E0E0ECs4yOyJKxaiYq_22attribute_derive_macro(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtCslNEiUQgeYIG_3syn10punctuated8IntoIterNtNtB1d_4data5FieldEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjB1Q_EINtNtBb_6result6ResultNtCs4yOyJKxaiYq_22attribute_derive_macro9AttrFieldNtNtCse5aIBq46JC5_7manyhow5error5ErrorEuINtNtNtBb_3ops12control_flow11ControlFlowIB5h_B3O_EENCINvMs7_B3Q_B3O_12parse_fieldsNtB1S_6FieldsE0NCINvXB7_INtB7_12GenericShuntINtB2Y_3MapBS_B66_EIB3t_NtNtBb_7convert10InfallibleB4C_EEB2b_8try_folduNCINvNvB2b_12try_for_each4callB3O_B5V_NcNtB5V_5Break0E0B5V_E0E0B5g_EB3Q_(ptr sret([344 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtNtCs4NRVxsYgnAr_4core6option8IntoItercENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNtNtBP_8adapters3map8map_foldcNtNtB8_4char11ToLowercaseuNvMNtB25_7methodsc12to_lowercaseNCINvNvMsg_NtB1B_7flattenINtB3a_13FlattenCompatppE9iter_fold7flattenB23_uNCINvNvXsi_B3a_B3o_BJ_4fold7flattenB23_uNCINvNvBJ_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB5m_6StringINtNtBN_7collect6ExtendcE6extendINtB3a_7FlatMapB3_B23_B2t_EE0E0E0E0E0ECs4yOyJKxaiYq_22attribute_derive_macro(i32, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtCsghEUimwObfx_11proc_macro29TokenTreeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtNtBa_8adapters3map8map_foldBS_NtCstuaXukgBIa_10proc_macro9TokenTreeuNvNtBU_3imp19into_compiler_tokenNCINvNvB1w_8for_each4callB2L_NCINvXsg_B2N_NtB2N_11TokenStreamINtNtB1A_7collect12FromIteratorB2L_E9from_iterINtB2f_3MapB3_B3n_EE0E0E0ECs4yOyJKxaiYq_22attribute_derive_macro(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterTNtCsghEUimwObfx_11proc_macro25IdentBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1G_8adapters3map12map_try_foldRBV_INtNtB1I_6result6ResultNtBY_11TokenStreamNtNtCse5aIBq46JC5_7manyhow5error5ErrorEuINtNtNtB1I_3ops12control_flow11ControlFlowINtNtB4L_9try_trait17NeverShortCircuituEENCNvMs4_Cs4yOyJKxaiYq_22attribute_derive_macroNtB69_9Conflicts9to_tokens0NCINvXB2M_INtB2M_12GenericShuntINtB2K_3MapB3_B61_EIB3o_NtNtB1I_7convert10InfallibleB42_EEB1A_8try_folduNCINvMB5p_B5m_10wrap_mut_2uB3K_NCINvB2K_8map_foldB3K_NtNtBY_3imp11TokenStreamuNCINvXsb_BY_B3K_INtNtB1E_7collect12FromIteratorB3K_E9from_iterB7m_E0NCIB9p_B9I_NtCstuaXukgBIa_10proc_macro11TokenStreamuNCINvXs6_B9K_B9I_IBao_B9I_E9from_iterIB7I_B7m_Ba7_EE0NCINvNvB1A_8for_each4callBbo_NCINvXsj_Bbq_Bbo_INtBaq_6ExtendBbo_E6extendIB7I_BcE_Bc3_EE0E0E0E0E0B5m_E0E0B4G_EB69_(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterTNtCsghEUimwObfx_11proc_macro25IdentBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1G_8adapters3map12map_try_foldRBV_INtNtB1I_6result6ResultNtBY_11TokenStreamNtNtCse5aIBq46JC5_7manyhow5error5ErrorEuINtNtNtB1I_3ops12control_flow11ControlFlowIB4H_B3K_EENCNvMs4_Cs4yOyJKxaiYq_22attribute_derive_macroNtB5F_9Conflicts9to_tokens0NCINvXB2M_INtB2M_12GenericShuntINtB2K_3MapB3_B5x_EIB3o_NtNtB1I_7convert10InfallibleB42_EEB1A_8try_folduNCINvNvB1A_12try_for_each4callB3K_B5m_NcNtB5m_5Break0E0B5m_E0E0B4G_EB5F_(ptr sret([32 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYNtNtCsghEUimwObfx_11proc_macro212token_stream8IntoIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldNtB7_9TokenTreeNtCstuaXukgBIa_10proc_macro9TokenTreeuNvNtB7_3imp19into_compiler_tokenNCINvNvBV_8for_each4callB2K_NCINvXsg_B2M_NtB2M_11TokenStreamINtNtBZ_7collect12FromIteratorB2K_E9from_iterINtB21_3MapB3_B3m_EE0E0E0ECs4yOyJKxaiYq_22attribute_derive_macro(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvNtCsghEUimwObfx_11proc_macro29detection17inside_proc_macro() unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtCskqTXHgZZ9qE_8smallvec5DrainANtCsghEUimwObfx_11proc_macro29TokenTreej6_ENtB2_12IntoIterator9into_iterCs4yOyJKxaiYq_22attribute_derive_macro(ptr sret([40 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden ptr @_RINvYINtCskqTXHgZZ9qE_8smallvec5DrainANtCsghEUimwObfx_11proc_macro29TokenTreej6_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator7collectNtNtBC_8fallback11TokenStreamECs4yOyJKxaiYq_22attribute_derive_macro(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtCskqTXHgZZ9qE_8smallvec5DrainANtCsghEUimwObfx_11proc_macro29TokenTreej6_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3mapNtCstuaXukgBIa_10proc_macro9TokenTreeNvNtBC_3imp19into_compiler_tokenECs4yOyJKxaiYq_22attribute_derive_macro(ptr sret([40 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsghEUimwObfx_11proc_macro23impNtB2_19DeferredTokenStream3new(ptr sret([32 x i8]) align 8, i32) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskqTXHgZZ9qE_8smallvec5DrainANtCsghEUimwObfx_11proc_macro29TokenTreej6_EECs4yOyJKxaiYq_22attribute_derive_macro(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_7sources4once4OnceNtCsghEUimwObfx_11proc_macro29TokenTreeENtB2_12IntoIterator9into_iterCsdQT5ZjIgVrW_5quote(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden ptr @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtCsghEUimwObfx_11proc_macro29TokenTreeENtNtNtBa_6traits8iterator8Iterator7collectNtNtBU_8fallback11TokenStreamECs4yOyJKxaiYq_22attribute_derive_macro(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtCsghEUimwObfx_11proc_macro29TokenTreeENtNtNtBa_6traits8iterator8Iterator3mapNtCstuaXukgBIa_10proc_macro9TokenTreeNvNtBU_3imp19into_compiler_tokenECs4yOyJKxaiYq_22attribute_derive_macro(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCsghEUimwObfx_11proc_macro29TokenTreeEECsdQT5ZjIgVrW_5quote(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters5chain5ChainINtNtBQ_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtCsghEUimwObfx_11proc_macro29TokenTreeEEINtNtNtB6_7sources4once4OnceB22_EENtB2_12IntoIterator9into_iterCs4yOyJKxaiYq_22attribute_derive_macro(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden ptr @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterNtCsghEUimwObfx_11proc_macro29TokenTreeEEINtNtNtBa_7sources4once4OnceB1H_EENtNtNtBa_6traits8iterator8Iterator7collectNtNtB1J_8fallback11TokenStreamECs4yOyJKxaiYq_22attribute_derive_macro(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterNtCsghEUimwObfx_11proc_macro29TokenTreeEEINtNtNtBa_7sources4once4OnceB1H_EENtNtNtBa_6traits8iterator8Iterator3mapNtCstuaXukgBIa_10proc_macro9TokenTreeNvNtB1J_3imp19into_compiler_tokenECs4yOyJKxaiYq_22attribute_derive_macro(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtCsghEUimwObfx_11proc_macro29TokenTreeEEINtNtNtBI_7sources4once4OnceB1Z_EEECs4yOyJKxaiYq_22attribute_derive_macro(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectNtNtCsghEUimwObfx_11proc_macro212token_stream8IntoIterNtB2_12IntoIterator9into_iterBP_(ptr sret([40 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden ptr @_RINvYNtNtCsghEUimwObfx_11proc_macro212token_stream8IntoIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator7collectNtNtB7_8fallback11TokenStreamECs4yOyJKxaiYq_22attribute_derive_macro(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvYNtNtCsghEUimwObfx_11proc_macro212token_stream8IntoIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3mapNtCstuaXukgBIa_10proc_macro9TokenTreeNvNtB7_3imp19into_compiler_tokenECs4yOyJKxaiYq_22attribute_derive_macro(ptr sret([40 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsghEUimwObfx_11proc_macro212token_stream8IntoIterEBF_(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsghEUimwObfx_11proc_macro23impNtB4_11TokenStream3new(ptr sret([32 x i8]) align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsghEUimwObfx_11proc_macro23impNtB2_19DeferredTokenStream12evaluate_now(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsj_CstuaXukgBIa_10proc_macroNtB6_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBv_E6extendINtNtNtBU_8adapters3map3MapIB1S_INtB1W_12GenericShuntIB1S_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterTNtCsghEUimwObfx_11proc_macro25IdentB3G_EENCNvMs4_Cs4yOyJKxaiYq_22attribute_derive_macroNtB4t_9Conflicts9to_tokens0EINtNtBW_6result6ResultNtNtBW_7convert10InfallibleNtNtCse5aIBq46JC5_7manyhow5error5ErrorEENCINvXsb_B3I_NtB3I_11TokenStreamINtBQ_12FromIteratorB7b_E9from_iterB2n_E0ENCINvXs6_NtB3I_3impNtB8j_11TokenStreamIB7v_B8t_E9from_iterB2i_E0EEB4t_(ptr align 4, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsghEUimwObfx_11proc_macro23imp19DeferredTokenStreamEBF_(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsb_NtCsghEUimwObfx_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB17_8adapters3map3MapIB25_INtB29_12GenericShuntIB25_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterTNtB8_5IdentB3U_EENCNvMs4_Cs4yOyJKxaiYq_22attribute_derive_macroNtB4j_9Conflicts9to_tokens0EINtNtB19_6result6ResultNtNtB19_7convert10InfallibleNtNtCse5aIBq46JC5_7manyhow5error5ErrorEENCINvXsb_B8_NtB8_11TokenStreamINtB13_12FromIteratorB72_E9from_iterB2B_E0ENCINvXs6_NtB8_3impNtB8a_11TokenStreamIB7l_B8j_E9from_iterB2w_Es_0EEB4j_(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsghEUimwObfx_11proc_macro28fallback11TokenStreamEBF_(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs8_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtCsghEUimwObfx_11proc_macro29TokenTreeENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterCs4yOyJKxaiYq_22attribute_derive_macro(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #2
end_hunk_0
