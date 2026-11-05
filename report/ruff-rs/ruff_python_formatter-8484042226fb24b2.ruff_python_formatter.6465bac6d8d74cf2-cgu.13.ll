Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_formatter-8484042226fb24b2.ruff_python_formatter.6465bac6d8d74cf2-cgu.13?download=true
inline.NumInlined: 628
inline.NumDeleted: 209
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvXs4_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_4TextINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1b_:bb.a
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.g = load i64, ptr %i.a, align 8, !range !27, !noundef !8
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !36, !noundef !8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.j, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.q = call { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 3 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.t = invoke noundef nonnull align 2 ptr @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB2_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE7optionsB12_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
          to label %bb.h unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.d, i64 %i.f, i1 false)
  store i64 %i.f, ptr %i.p, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.h, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef range(i64 1, 0) %i.s, i64 noundef 1) #21
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.h:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.t, i64 6
  %.val2 = load i8, ptr %i.w, align 2, !range !24, !noundef !8
  %i.x = invoke noundef i32 @_RNvMsi_NtCs7Ma6rQP8bRy_14ruff_formatter14format_elementNtB5_9TextWidth9from_text(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, i8 noundef %.val2)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.r, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.s, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.x, ptr %i.aa, align 4
  store i8 5, ptr %i.c, align 8
  %i.ab = load ptr, ptr %2, align 8, !nonnull !8, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !8, !align !9, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !8, !nonnull !8
  call void %i.af(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 -1, ptr %0, align 8
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.u
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs4_NtCs7Ma6rQP8bRy_14ruff_formatter9argumentsINtB5_9ArgumentsNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB11_E3fmtB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #5 !guid !1230 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %.idx.i = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.sroa.0.02.i = phi ptr [ %i.m, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1233
  %i.g = load ptr, ptr %.sroa.0.02.i, align 8, !alias.scope !1232, !nonnull !8, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1232, !nonnull !8, !align !9, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !8, !noalias !1234, !nonnull !8
  call void %i.k(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !1234, !inline_history !10
  %i.l = load i32, ptr %i.a, align 8, !range !11, !noalias !1233, !noundef !8
  %.not.i = icmp eq i32 %i.l, -1
  br i1 %.not.i, label %bb.c, label %bb.b

._crit_edge.i:                                    ; preds = %bb.c, %bb.a
  store i32 -1, ptr %0, align 8, !alias.scope !1231
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1233
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1233
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %._crit_edge.i, label %.lr.ph.i

_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit: ; preds = %._crit_edge.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string8implicitNtB5_20FormatLiteralContentINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1250 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 4                 ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 33 uses
  %i.i = load ptr, ptr %2, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !8, !nonnull !8 ; 3 uses
  %i.n = tail call noundef nonnull align 8 ptr %i.m(ptr noundef nonnull %i.i) ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noundef !8 ; 5 uses
  %i.r = load i32, ptr %1, align 4, !noundef !8   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 4, !noundef !8 ; 4 uses
  %i.u = zext i32 %i.r to i64                     ; 6 uses
  %i.v = zext i32 %i.t to i64                     ; 5 uses
  %.not.i = icmp ugt i32 %i.r, %i.t
  br i1 %.not.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = icmp eq i32 %i.r, 0
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not5.i = icmp ugt i64 %i.q, %i.u
  br i1 %.not5.i, label %bb.e, label %.split.i

bb.d:                                             ; preds = %bb.e, %.split.i, %bb.b
  %i.x = icmp eq i32 %i.t, 0
  br i1 %i.x, label %bb.h, label %bb.f

.split.i:                                         ; preds = %bb.c
  %i.y = icmp eq i64 %i.q, %i.u
  br i1 %i.y, label %bb.d, label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.u
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !1251, !noundef !8
  %i.ab = icmp sgt i8 %i.aa, -65
  br i1 %i.ab, label %bb.d, label %bb.i

bb.f:                                             ; preds = %bb.d
  %.not6.i = icmp ugt i64 %i.q, %i.v
  br i1 %.not6.i, label %bb.g, label %.split7.i

.split7.i:                                        ; preds = %bb.f
  %i.ac = icmp eq i64 %i.q, %i.v
  br i1 %i.ac, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.v
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !1251, !noundef !8
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %.split7.i, %bb.d
  %i.ag = sub nuw nsw i64 %i.v, %i.u
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i16, ptr %i.ai, align 4, !noundef !8 ; 3 uses
  %i.ak = and i16 %i.aj, 48
  %3 = icmp eq i16 %i.ak, 0
  br i1 %3, label %9, label %4

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.a, %.split.i, %.split7.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q, i64 noundef %i.u, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #20
  unreachable

4:                                                ; preds = %bb.h
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %6 = load i8, ptr %5, align 2, !range !15, !noundef !8
  %7 = trunc nuw i8 %6 to i1
  %8 = xor i1 %7, true
  br label %9

9:                                                ; preds = %bb.h, %4
  %.sroa.0.0 = phi i1 [ %8, %4 ], [ false, %bb.h ]
  call void @_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9normalize16normalize_string(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.ag, i64 noundef 0, i16 noundef %i.aj, i1 noundef zeroext %.sroa.0.0)
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %11 = load i8, ptr %10, align 1, !range !15, !noundef !8
  %12 = trunc nuw i8 %11 to i1
  br i1 %12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs8CpBcHC8tKo_21ruff_python_formatter.exit, %bb.n, %9
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.am = load i8, ptr %i.al, align 4, !range !15, !noundef !8
  %i.an = trunc nuw i8 %i.am to i1                ; 2 uses
  br i1 %i.an, label %bb.z, label %thread-pre-split

bb.k:                                             ; preds = %9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ar)
          to label %bb.n unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %.body57, %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.at, %bb.m ], [ %eh.lpad-body58, %.body57 ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(24) %i.h) #19
          to label %common.resume unwind label %bb.be

bb.m:                                             ; preds = %.invoke, %.noexc69, %.noexc68, %.noexc67, %.noexc66, %.noexc65, %.noexc64, %bb.ar, %bb.bc, %bb.ba, %bb.aq, %bb.ab, %bb.z, %bb.o, %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  %i.au = extractvalue { ptr, i64 } %i.as, 0
  %i.av = extractvalue { ptr, i64 } %i.as, 1      ; 7 uses
  %i.aw = load i64, ptr %i.aq, align 8
  %i.ax = icmp ult i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.o, label %bb.j

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.av, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.p unwind label %bb.m

bb.p:                                             ; preds = %bb.o
  %i.ay = load i64, ptr %i.e, align 8, !range !27, !noundef !8
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !36, !noundef !8 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.az, label %bb.q, label %bb.r, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.bd = load i64, ptr %i.bc, align 8
  br label %.invoke

bb.r:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.bc, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.bf = icmp ule i64 %i.av, %i.bb
  tail call void @llvm.assume(i1 %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not45 = icmp eq i64 %i.av, 0
  br i1 %.not45, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.w, %bb.r
  %i.bg = load i64, ptr %i.h, align 8, !range !18, !alias.scope !1252, !noundef !8
  %i.bh = icmp eq i64 %i.bg, -1
  br i1 %i.bh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.x

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr align 1 %i.au, i64 %i.av, i1 false)
  br label %bb.s

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.u, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.bk, %bb.x ], [ %i.bi, %bb.u ]
  store i64 %i.bb, ptr %i.h, align 8
  store ptr %i.be, ptr %i.ao, align 8
  store i64 %i.av, ptr %i.aq, align 8
  br label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i
  store i64 %i.bb, ptr %i.h, align 8
  store ptr %i.be, ptr %i.ao, align 8
  store i64 %i.av, ptr %i.aq, align 8
  br label %bb.j

thread-pre-split:                                 ; preds = %bb.j
  %.pr = load i64, ptr %i.h, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.y

bb.y:                                             ; preds = %thread-pre-split, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs8CpBcHC8tKo_21ruff_python_formatter.exit60, %bb.aa
  %i.bl = phi i64 [ %.pre, %thread-pre-split ], [ %i.bv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs8CpBcHC8tKo_21ruff_python_formatter.exit60 ], [ %i.bx, %bb.aa ] ; 2 uses
  %i.bm = phi i64 [ %.pr, %thread-pre-split ], [ %i.cc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs8CpBcHC8tKo_21ruff_python_formatter.exit60 ], [ %i.bw, %bb.aa ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bo = icmp eq i64 %i.bl, 0
  br i1 %i.bo, label %bb.am, label %bb.al

bb.z:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !8
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef %i.bs)
          to label %bb.aa unwind label %bb.m      ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.bu = extractvalue { ptr, i64 } %i.bt, 0
  %i.bv = extractvalue { ptr, i64 } %i.bt, 1      ; 8 uses
  %i.bw = load i64, ptr %i.h, align 8, !range !18, !noundef !8
  %i.bx = load i64, ptr %i.br, align 8            ; 2 uses
  %i.by = icmp ult i64 %i.bv, %i.bx
  br i1 %i.by, label %bb.ab, label %bb.y

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.bv, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ac unwind label %bb.m

bb.ac:                                            ; preds = %bb.ab
  %i.bz = load i64, ptr %i.d, align 8, !range !27, !noundef !8
  %i.ca = trunc nuw i64 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !36, !noundef !8 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ca, label %bb.ad, label %bb.ae, !prof !13

bb.ad:                                            ; preds = %bb.ac
  %i.ce = load i64, ptr %i.cd, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.q, %bb.ad
  %i.cf = phi i64 [ %i.cc, %bb.ad ], [ %i.bb, %bb.q ]
  %i.cg = phi i64 [ %i.ce, %bb.ad ], [ %i.bd, %bb.q ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.cg) #20
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ch = load ptr, ptr %i.cd, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.ci = icmp ule i64 %i.bv, %i.cc
  call void @llvm.assume(i1 %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not48 = icmp eq i64 %i.bv, 0
  br i1 %.not48, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.aj, %bb.ae
  %i.cj = load i64, ptr %i.h, align 8, !range !18, !alias.scope !1253, !noundef !8
  %i.ck = icmp eq i64 %i.cj, -1
  br i1 %i.ck, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs8CpBcHC8tKo_21ruff_python_formatter.exit60, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i56 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body57 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i56: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs8CpBcHC8tKo_21ruff_python_formatter.exit60 unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr align 1 %i.bu, i64 %i.bv, i1 false)
  br label %bb.af

bb.ak:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i56
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body57

.body57:                                          ; preds = %bb.ah, %bb.ak
  %eh.lpad-body58 = phi { ptr, i32 } [ %i.cn, %bb.ak ], [ %i.cl, %bb.ah ]
  store i64 %i.cc, ptr %i.h, align 8
  store ptr %i.ch, ptr %i.bp, align 8
  store i64 %i.bv, ptr %i.br, align 8
  br label %bb.l

end_hunk_0
