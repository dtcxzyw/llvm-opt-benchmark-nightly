Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.14?download=true
inline.NumInlined: 1814
inline.NumDeleted: 645
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB4_13IndentVisitor18indent_string_part:bb.a
.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs5_NtCs8frGy5WneL6_4fish9tokenizerNtB5_9TokenizerNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
  %i.aj = load i8, ptr %i.ah, align 2, !range !29, !noundef !8
  %.not10 = icmp eq i8 %i.aj, 2
  br i1 %.not10, label %._crit_edge.loopexit, label %.lr.ph

bb.i:                                             ; preds = %._crit_edge.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !8, !align !17, !noundef !8 ; 2 uses
  %i.am = load i64, ptr %i.d, align 8, !noundef !8 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noundef !8 ; 2 uses
  %i.ap = icmp ult i64 %2, %i.am
  %.not11 = icmp ugt i64 %2, %i.ao
  %or.cond12 = or i1 %i.ap, %.not11
  br i1 %or.cond12, label %bb.k, label %bb.l, !prof !34

bb.j:                                             ; preds = %.thread19, %._crit_edge.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.aq, align 8
  br label %_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice10specializeSlINtB5_8SpecFilllE9spec_fill.exit

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.am, i64 noundef %2, i64 noundef %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #28
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !8, !noundef !8
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.am ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.av = load i32, ptr %i.au, align 4, !noundef !8 ; 2 uses
  %i.aw = sub nuw i64 %2, %i.am
  %.idx.i = shl nuw nsw i64 %i.aw, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx.i
  %i.ay = icmp eq i64 %2, %i.am
  br i1 %i.ay, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice10specializeSlINtB5_8SpecFilllE9spec_fill.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.l
  %i.az = shl i64 %2, 2
  %i.ba = shl i64 %i.am, 2
  %i.bb = add i64 %i.az, -4
  %i.bc = sub i64 %i.bb, %i.ba                    ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.be, 9223372036854775800     ; 3 uses
  %i.bf = shl i64 %n.vec, 2
  %i.bg = getelementptr i8, ptr %i.at, i64 %i.bf
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.at, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !alias.scope !1009
  store <4 x i32> %broadcast.splat, ptr %i.bi, align 4, !alias.scope !1009
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !1007

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice10specializeSlINtB5_8SpecFilllE9spec_fill.exit, label %.lr.ph.i.preheader20

.lr.ph.i.preheader20:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.02.04.i.ph = phi ptr [ %i.at, %.lr.ph.i.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader20, %.lr.ph.i
  %.sroa.02.04.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %.sroa.02.04.i.ph, %.lr.ph.i.preheader20 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i, i64 4 ; 2 uses
  store i32 %i.av, ptr %.sroa.02.04.i, align 4, !alias.scope !1009
  %i.bl = icmp eq ptr %i.bk, %i.ax
  br i1 %i.bl, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice10specializeSlINtB5_8SpecFilllE9spec_fill.exit, label %.lr.ph.i, !llvm.loop !1008

_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice10specializeSlINtB5_8SpecFilllE9spec_fill.exit: ; preds = %.lr.ph.i, %middle.block, %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB4_13IndentVisitor31record_line_continuations_until(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !align !23, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !8
  %i.h = sub nuw i64 %1, %i.d                     ; 7 uses
  %.not = icmp ugt i64 %1, %i.g
  br i1 %.not, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %.idx31 = shl nuw nsw i64 %i.d, 2               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx31 ; 4 uses
  %i.j = icmp ult i64 %i.h, 2
  br i1 %i.j, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.thread, label %_RNCNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB6_13IndentVisitor31record_line_continuations_until0B8_.exit.i.us.i.preheader

_RNCNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB6_13IndentVisitor31record_line_continuations_until0B8_.exit.i.us.i.preheader: ; preds = %bb.c
  %i.k = xor i64 %i.d, -1
  %i.l = add i64 %1, %i.k
  br label %_RNCNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB6_13IndentVisitor31record_line_continuations_until0B8_.exit.i.us.i

_RNCNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB6_13IndentVisitor31record_line_continuations_until0B8_.exit.i.us.i: ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB6_13IndentVisitor31record_line_continuations_until0B8_.exit.i.us.i.preheader, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB1q_13IndentVisitor31record_line_continuations_until0E0B1s_.exit.us.i
  %i.m = phi ptr [ %i.q, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB1q_13IndentVisitor31record_line_continuations_until0E0B1s_.exit.us.i ], [ %i.i, %_RNCNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB6_13IndentVisitor31record_line_continuations_until0B8_.exit.i.us.i.preheader ] ; 2 uses
  %i.n = phi i64 [ %i.r, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB1q_13IndentVisitor31record_line_continuations_until0E0B1s_.exit.us.i ], [ 0, %_RNCNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB6_13IndentVisitor31record_line_continuations_until0B8_.exit.i.us.i.preheader ] ; 7 uses
  %i.o = load i64, ptr %i.m, align 4, !alias.scope !1028, !noalias !1029, !noundef !8
  %i.p = icmp eq i64 %i.o, 42949673052
  br i1 %i.p, label %bb.e, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB1q_13IndentVisitor31record_line_continuations_until0E0B1s_.exit.us.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB1q_13IndentVisitor31record_line_continuations_until0E0B1s_.exit.us.i: ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB6_13IndentVisitor31record_line_continuations_until0B8_.exit.i.us.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.r = add nuw i64 %i.n, 1                      ; 2 uses
  %exitcond = icmp eq i64 %i.r, %i.l
  br i1 %exitcond, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.thread, label %_RNCNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB6_13IndentVisitor31record_line_continuations_until0B8_.exit.i.us.i

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #28
  unreachable

bb.e:                                             ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB6_13IndentVisitor31record_line_continuations_until0B8_.exit.i.us.i
  %.not18 = icmp ugt i64 %i.n, %i.h
  br i1 %.not18, label %bb.f, label %bb.g, !prof !34

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.n, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = and i64 %i.n, 2305843009213693936        ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.s ; 2 uses
  %.not.i87 = icmp eq i64 %i.s, 0
  br i1 %.not.i87, label %._crit_edge, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i

bb.h:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i89, i64 64
  %i.v = add nsw i64 %.sroa.5.0.i88, -16          ; 2 uses
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %._crit_edge, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.w = shl i64 %i.n, 2
  %.idx92 = and i64 %i.w, 60                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx92
  %.not.not.not.i.not.not.i90 = icmp samesign eq i64 %.idx92, 0
  br i1 %.not.not.not.i.not.not.i90, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.not.not.i.not.not.i, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %bb.i
  %i.z = phi ptr [ %i.y, %bb.i ], [ %i.t, %._crit_edge ] ; 2 uses
  %.val2.i.i = load i32, ptr %i.z, align 4, !range !27, !alias.scope !1030, !noalias !1031, !noundef !8
  %i.aa = icmp eq i32 %.val2.i.i, 35
  br i1 %i.aa, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.thread, label %bb.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.g, %bb.h
  %.sroa.0.05.i89 = phi ptr [ %i.u, %bb.h ], [ %i.i, %bb.g ] ; 2 uses
  %.sroa.5.0.i88 = phi i64 [ %i.v, %bb.h ], [ %i.s, %bb.g ]
  %i.ab = load <16 x i32>, ptr %.sroa.0.05.i89, align 4, !alias.scope !1030, !noalias !1032
  %i.ac = icmp eq <16 x i32> %i.ab, splat (i32 35)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %.not93 = icmp eq i16 %i.ad, 0
  br i1 %.not93, label %bb.h, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.thread

_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.i, %._crit_edge
  %i.ae = icmp eq i64 %i.n, -1
  br i1 %i.ae, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit
  %i.af = add nuw i64 %i.n, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.idx = shl nuw nsw i64 %1, 2                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  br label %bb.l

bb.k:                                             ; preds = %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #28
  unreachable

bb.l:                                             ; preds = %bb.u, %bb.j
  %.sroa.01.0 = phi i64 [ %i.af, %bb.j ], [ %i.be, %bb.u ] ; 4 uses
  %i.aj = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %i.ak = add i64 %i.aj, %.sroa.01.0              ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  br i1 %i.al, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load i64, ptr %i.ag, align 8, !alias.scope !1033, !noundef !8 ; 3 uses
  %i.an = load i64, ptr %0, align 8, !range !15, !alias.scope !1033, !noundef !8
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs8frGy5WneL6_4fish.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs5UXtnEuoeIl_11fish_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #33
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs8frGy5WneL6_4fish.exit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs8frGy5WneL6_4fish.exit: ; preds = %bb.m, %bb.n
  %i.ap = load ptr, ptr %i.ah, align 8, !alias.scope !1033, !nonnull !8, !noundef !8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.am
  store i64 %i.ak, ptr %i.aq, align 8
  %i.ar = add i64 %i.am, 1
  store i64 %i.ar, ptr %i.ag, align 8, !alias.scope !1033
  %i.as = add i64 %.sroa.01.0, 1                  ; 5 uses
  %i.at = icmp eq i64 %.sroa.01.0, -1
  br i1 %i.at, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #28
  unreachable

bb.p:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs8frGy5WneL6_4fish.exit
  %i.au = icmp ugt i64 %i.as, %i.h
  br i1 %i.au, label %bb.t, label %bb.r, !prof !9

bb.q:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs8frGy5WneL6_4fish.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #28
  unreachable

bb.r:                                             ; preds = %bb.p
  %.idx32 = shl nuw nsw i64 %i.as, 2              ; 2 uses
  %.neg33 = xor i64 %.sroa.01.0, -1
  %2 = add i64 %i.h, %.neg33
  %i.av = add nuw nsw i64 %.idx32, %.idx31
  %i.aw = icmp samesign eq i64 %i.av, %.idx
  br i1 %i.aw, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.thread, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx32
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader, %bb.s
  %.sroa.02.07.i = phi i64 [ %i.bb, %bb.s ], [ 0, %.lr.ph.i20.preheader ] ; 3 uses
  %i.ay = phi ptr [ %i.ba, %bb.s ], [ %i.ax, %.lr.ph.i20.preheader ] ; 2 uses
  %.val.i = load i32, ptr %i.ay, align 4, !range !27, !noalias !1034, !noundef !8
  %i.az = icmp eq i32 %.val.i, 10
  br i1 %i.az, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %i.bb = add nuw nsw i64 %.sroa.02.07.i, 1
  %i.bc = icmp eq ptr %i.ba, %i.ai
  br i1 %i.bc, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.thread, label %.lr.ph.i20

bb.t:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.as, i64 noundef %i.h, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #28
  unreachable

_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvMs_NtCs8frGy5WneL6_4fish10parse_utilNtB1q_13IndentVisitor31record_line_continuations_until0E0B1s_.exit.us.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i, %.lr.ph, %bb.r, %bb.s, %bb.c
  ret void

bb.u:                                             ; preds = %.lr.ph.i20
  %i.bd = icmp ult i64 %.sroa.02.07.i, %2
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = add i64 %.sroa.02.07.i, %i.as           ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.as
  br i1 %i.bf, label %bb.v, label %bb.l

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMs_NtCs8frGy5WneL6_4fish15parse_constantsNtB4_11SourceRange8as_usize(i32 noundef %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvXs1_NtCs8frGy5WneL6_4fish15parse_constantsINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEINtNtBO_7convert4FromNtB5_11SourceRangeE4from(i32 noundef %0, i32 noundef %1)
  ret { i64, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs_NtCslLGyqsphxMB_10widestring6utfstrNtB4_8Utf32Str12to_lowercase(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.f = load i64, ptr %i.c, align 8, !range !10, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !30, !noundef !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  %i.m = icmp ule i64 %2, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.i, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.idx = shl nuw nsw i64 %2, 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.0.019 = phi ptr [ %1, %.lr.ph ], [ %i.r, %bb.m ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 4 ; 2 uses
  %i.s = load i32, ptr %.sroa.0.019, align 4, !noalias !1042, !noundef !8 ; 4 uses
  %i.t = xor i32 %i.s, 55296
  %i.u = add i32 %i.t, -1114112
  %i.v = icmp ult i32 %i.u, -1112064
  br i1 %i.v, label %.split.i, label %bb.f

.split.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1042
  store i32 %i.s, ptr %i.a, align 4, !noalias !1042
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @990) #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split.i
  unreachable

bb.e:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #29
          to label %bb.o unwind label %bb.n

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %.split.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.f:                                             ; preds = %bb.d
  %i.w = icmp ult i32 %i.s, 1114112
  call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11conversions8to_lower(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, i32 noundef %i.s)
          to label %bb.g unwind label %.loopexit

._crit_edge:                                      ; preds = %bb.m, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %i.p, align 4, !range !27, !alias.scope !1043, !noalias !1044, !noundef !8
  %i.y = icmp eq i32 %i.x, 0
  %i.z = load i32, ptr %i.q, align 4, !range !27, !alias.scope !1043, !noalias !1044
  %i.aa = icmp eq i32 %i.z, 0
  %spec.select.i = select i1 %i.aa, i64 1, i64 2
  %.sroa.4.0.i = select i1 %i.y, i64 %spec.select.i, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.d, align 8
  store i64 %.sroa.4.0.i, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit, %bb.g
  %i.ab = invoke noundef i32 @_RNvXsO_NtCs3oUPovFnLWP_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.l, %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.j:                                             ; preds = %bb.h
  %.not6 = icmp eq i32 %i.ab, -1
  br i1 %.not6, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1045, !noundef !8 ; 3 uses
  %i.ae = load i64, ptr %i.e, align 8, !range !15, !alias.scope !1045, !noundef !8
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.l, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #33
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit unwind label %bb.i

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit: ; preds = %bb.l, %bb.k
  %i.ag = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1045, !nonnull !8, !noundef !8
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ad
  store i32 %i.ab, ptr %i.ah, align 4
  %i.ai = add i64 %i.ad, 1
  store i64 %i.ai, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1045
  br label %bb.h

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aj = icmp eq ptr %i.r, %i.n
  br i1 %i.aj, label %._crit_edge, label %bb.d

bb.n:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.o:                                             ; preds = %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs_NtCslLGyqsphxMB_10widestring6utfstrNtB4_8Utf32Str12to_uppercase(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
