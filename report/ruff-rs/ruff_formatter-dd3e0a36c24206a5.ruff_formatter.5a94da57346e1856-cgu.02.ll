Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_formatter-dd3e0a36c24206a5.ruff_formatter.5a94da57346e1856-cgu.02?download=true
inline.NumInlined: 324
inline.NumDeleted: 83
begin_hunk_0_@_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer10print_char:bb.a
  %i.bj = zext i8 %i.bi to i32
  br label %.thread7
}

; Function Attrs: nonlazybind uwtable
define internal fastcc i64 @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11print_entry(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i48 %3, i8 noundef range(i8 8, 14) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = tail call noundef align 8 ptr @_RNvYNtNtNtCs7Ma6rQP8bRy_14ruff_formatter7printer5queue10PrintQueueNtB4_5Queue3topB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.j = tail call noundef align 8 ptr @_RNvXs_NtNtCs7Ma6rQP8bRy_14ruff_formatter7printer5queueNtB4_10PrintQueueNtB4_5Queue3pop(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) ; 3 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.j, align 8, !range !52, !noundef !4
  %i.l = icmp eq i8 %i.k, 10
  br i1 %i.l, label %bb.c, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread, !prof !63

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i8, ptr %i.m, align 8, !range !53, !noundef !4
  switch i8 %i.n, label %default.unreachable [
    i8 0, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 1, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 2, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 3, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 4, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 5, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 6, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 7, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 8, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 9, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 10, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 11, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 12, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 13, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 14, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 15, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 16, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit
    i8 17, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit
    i8 18, label %bb.d
    i8 19, label %bb.d
    i8 20, label %bb.e
    i8 21, label %bb.e
    i8 22, label %bb.f
    i8 23, label %bb.f
    i8 24, label %bb.g
    i8 25, label %bb.g
    i8 26, label %bb.h
    i8 27, label %bb.h
    i8 28, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
    i8 29, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread
  ]

default.unreachable:                              ; preds = %bb.bs, %bb.n, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.c
  br label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit

bb.e:                                             ; preds = %bb.c, %bb.c
  br label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit

bb.f:                                             ; preds = %bb.c, %bb.c
  br label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit

bb.g:                                             ; preds = %bb.c, %bb.c
  br label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit

bb.h:                                             ; preds = %bb.c, %bb.c
  br label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit

_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i.ph.i = phi i8 [ 9, %bb.d ], [ 10, %bb.e ], [ 13, %bb.h ], [ 12, %bb.g ], [ 11, %bb.f ], [ 8, %bb.c ], [ 8, %bb.c ]
  %i.o = icmp eq i8 %.sroa.0.0.i.ph.i, %4
  br i1 %i.o, label %bb.i, label %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread, !prof !64

_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit.thread: ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.b, %bb.a, %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit
  %i.p = tail call fastcc i64 @_RINvNtCs7Ma6rQP8bRy_14ruff_formatter7printer17invalid_start_taguEB4_(i8 noundef %4, ptr noundef align 8 %i.i) ; 2 uses
  %.sroa.471.0.extract.shift = and i64 %i.p, 268435200
  br label %bb.gl

bb.i:                                             ; preds = %_RNCNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB4_7Printer11print_entry0B6_.exit
  tail call void @_RNvYNtNtNtCs7Ma6rQP8bRy_14ruff_formatter7printer10call_stack14PrintCallStackNtB4_9CallStack4pushB8_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %4, i48 %3)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 48 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 24 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 11 uses
  %.sroa.53.0..sroa_idx.i653.i = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 10 uses
  %.sroa.5.0..sroa_idx.i656.i = getelementptr inbounds nuw i8, ptr %0, i64 185 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 218 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 15 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 14 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 219 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit, %bb.i
  %.sroa.014.0 = phi i32 [ 1, %bb.i ], [ %.sroa.014.1, %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit ] ; 4 uses
  %i.au = call noundef align 8 ptr @_RNvXs_NtNtCs7Ma6rQP8bRy_14ruff_formatter7printer5queueNtB4_10PrintQueueNtB4_5Queue3pop(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) ; 35 uses
  %.not83 = icmp eq ptr %i.au, null
  br i1 %.not83, label %bb.l, label %bb.k, !prof !62

bb.k:                                             ; preds = %bb.j
  %i.av = load i8, ptr %i.au, align 8, !range !52, !noundef !4
  %i.aw = icmp eq i8 %i.av, 10
  br i1 %i.aw, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ax = call noundef i8 @_RNvYNtNtNtCs7Ma6rQP8bRy_14ruff_formatter7printer10call_stack14PrintCallStackNtB4_9CallStack8top_kindB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 2 uses
  %.not.i135 = icmp eq i8 %i.ax, -1
  %..i = zext i1 %.not.i135 to i64
  %.sroa.7.0.insert.ext.i = zext i8 %i.ax to i64
  %.sroa.7.0.insert.shift.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i, 16
  %.sroa.5.0.insert.ext.i = zext nneg i8 %4 to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 8
  %.sroa.5.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.shift.i, %.sroa.5.0.insert.shift.i ; 2 uses
  %.sroa.04.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.insert.i, %..i
  br label %bb.gl

bb.m:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.az = load i8, ptr %i.ay, align 8, !range !53, !noundef !4 ; 2 uses
  switch i8 %i.az, label %bb.n [
    i8 16, label %bb.gi
    i8 17, label %bb.gj
    i8 26, label %bb.gi
    i8 27, label %bb.gj
  ]

bb.n:                                             ; preds = %bb.gj, %bb.gi, %bb.m, %bb.k
  %.sroa.014.1 = phi i32 [ %.sroa.014.0, %bb.m ], [ %i.yw, %bb.gi ], [ %i.yx, %bb.gj ], [ %.sroa.014.0, %bb.k ]
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.ba = call i48 @_RNvYNtNtNtCs7Ma6rQP8bRy_14ruff_formatter7printer10call_stack14PrintCallStackNtB4_9CallStack3topB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2), !noalias !68 ; 32 uses
  %i.bb = load i8, ptr %i.au, align 8, !range !52, !noalias !70, !noundef !4
  switch i8 %i.bb, label %default.unreachable [
    i8 0, label %bb.o
    i8 1, label %bb.y
    i8 2, label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit
    i8 3, label %bb.z
    i8 4, label %bb.aa
    i8 5, label %bb.al
    i8 6, label %bb.ba
    i8 7, label %bb.bp
    i8 8, label %bb.bq
    i8 9, label %bb.br
    i8 10, label %bb.bs
  ]

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i688.i = load i8, ptr %i.aj, align 8, !alias.scope !72, !noalias !75
  %.sroa.53.0.copyload.i690.i = load i16, ptr %.sroa.53.0..sroa_idx.i653.i, align 2, !alias.scope !72, !noalias !75 ; 4 uses
  %i.bc = trunc nuw i8 %.sroa.0.0.copyload.i688.i to i1 ; 2 uses
  %i.bd = icmp ne i16 %.sroa.53.0.copyload.i690.i, 0
  %or.cond.not.i691.i = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond.not.i691.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.4.0.copyload.i693.i = load i8, ptr %.sroa.5.0..sroa_idx.i656.i, align 1, !alias.scope !72, !noalias !75
  store i8 0, ptr %i.aj, align 8, !alias.scope !72, !noalias !75
  store i16 0, ptr %.sroa.53.0..sroa_idx.i653.i, align 2, !alias.scope !72, !noalias !75
  %.sroa.4.0.copyload..i694.i = select i1 %i.bc, i8 %.sroa.4.0.copyload.i693.i, i8 0 ; 3 uses
  %i.be = load i8, ptr %i.ak, align 2, !range !61, !alias.scope !72, !noalias !75, !noundef !4 ; 2 uses
  %i.bf = zext i8 %i.be to i32
  %i.bg = zext i16 %.sroa.53.0.copyload.i690.i to i32
  %i.bh = mul nuw nsw i32 %i.bf, %i.bg
  %i.bi = zext i8 %.sroa.4.0.copyload..i694.i to i32
  %i.bj = add nuw nsw i32 %i.bh, %i.bi
  %i.bk = zext i16 %.sroa.53.0.copyload.i690.i to i64
  %i.bl = zext i8 %.sroa.4.0.copyload..i694.i to i64 ; 2 uses
  %i.bm = load i8, ptr %i.ag, align 4, !range !77, !alias.scope !72, !noalias !75, !noundef !4
  %i.bn = trunc nuw i8 %i.bm to i1                ; 2 uses
  %narrow390 = select i1 %i.bn, i8 %i.be, i8 1
  %5 = zext i8 %narrow390 to i64
  %.sroa.011.0.i696.i = mul nuw nsw i64 %5, %i.bk ; 2 uses
  %i.bo = add nuw nsw i64 %.sroa.011.0.i696.i, %i.bl
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %i.bo), !noalias !78
  %.not450.a = icmp eq i16 %.sroa.53.0.copyload.i690.i, 0
  br i1 %.not450.a, label %.preheader, label %.lr.ph438.a

.lr.ph438.a:                                      ; preds = %bb.p
  %i.bp = select i1 %i.bn, i8 32, i8 9
  %.pre490.a = load i64, ptr %i.y, align 8, !alias.scope !79, !noalias !78
  br label %bb.x

bb.q:                                             ; preds = %._crit_edge441, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.bq = load i32, ptr %i.am, align 8, !range !85, !alias.scope !82, !noalias !78, !noundef !4
  %i.br = load i32, ptr %i.an, align 4, !alias.scope !82, !noalias !78 ; 2 uses
  store i32 0, ptr %i.am, align 8, !alias.scope !82, !noalias !78
  %i.bs = trunc nuw i32 %i.bq to i1
  br i1 %i.bs, label %bb.r, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit

bb.r:                                             ; preds = %bb.q
  %i.bt = load i64, ptr %i.y, align 8, !alias.scope !82, !noalias !78, !noundef !4 ; 2 uses
  %i.bu = icmp ugt i64 %i.bt, 4294967295
  %i.bv = shl nuw i64 %i.bt, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.bu, i64 513, i64 %i.bv ; 2 uses
  %i.bw = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.bw, label %bb.s, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !62

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !86
  store i8 2, ptr %i.g, align 1, !noalias !86
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #19, !noalias !86
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.r
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.bx = load i64, ptr %i.ap, align 8, !alias.scope !82, !noalias !78, !noundef !4 ; 5 uses
  %.not.i136 = icmp eq i64 %i.bx, 0
  br i1 %.not.i136, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %i.by = load ptr, ptr %i.aq, align 8, !alias.scope !82, !noalias !78, !nonnull !4, !noundef !4
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %i.bx ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 -8
  %i.cb = load i32, ptr %i.ca, align 4, !noalias !86, !noundef !4
  %i.cc = icmp eq i32 %i.cb, %i.br
  br i1 %i.cc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr i8, ptr %i.bz, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !noalias !86, !noundef !4
  %.not3.i = icmp eq i32 %i.ce, %.sroa.6.0.extract.trunc.i.i.i
  br i1 %.not3.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %i.cf = load i64, ptr %i.ao, align 8, !range !87, !alias.scope !88, !noalias !78, !noundef !4
  %i.cg = icmp eq i64 %i.bx, %i.cf
  br i1 %i.cg, label %bb.w, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i

bb.w:                                             ; preds = %bb.v
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8grow_oneBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao), !noalias !78
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i: ; preds = %bb.w, %bb.v
  %i.ch = load ptr, ptr %i.aq, align 8, !alias.scope !88, !noalias !78, !nonnull !4, !noundef !4
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.bx ; 2 uses
  store i32 %i.br, ptr %i.ci, align 4, !noalias !78
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 %.sroa.6.0.extract.trunc.i.i.i, ptr %i.cj, align 4, !noalias !78
  %i.ck = add i64 %i.bx, 1
  store i64 %i.ck, ptr %i.ap, align 8, !alias.scope !88, !noalias !78
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit

.preheader:                                       ; preds = %bb.x, %bb.p
  %.not451.a = icmp eq i8 %.sroa.4.0.copyload..i694.i, 0
  br i1 %.not451.a, label %._crit_edge441, label %.lr.ph440.preheader

.lr.ph440.preheader:                              ; preds = %.preheader
  %.pre491.a = load i64, ptr %i.y, align 8, !alias.scope !91, !noalias !78
  br label %.lr.ph440

bb.x:                                             ; preds = %.lr.ph438.a, %bb.x
  %i.cl = phi i64 [ %.pre490.a, %.lr.ph438.a ], [ %i.cq, %bb.x ] ; 3 uses
  %.sroa.024.0.i697.i436 = phi i64 [ 0, %.lr.ph438.a ], [ %i.cm, %bb.x ]
  %i.cm = add nuw nsw i64 %.sroa.024.0.i697.i436, 1 ; 2 uses
  %i.cn = icmp sgt i64 %i.cl, -1
  call void @llvm.assume(i1 %i.cn), !noalias !78
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 1), !noalias !78
  %i.co = load ptr, ptr %i.al, align 8, !alias.scope !79, !noalias !78, !nonnull !4, !noundef !4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cl
  store i8 %i.bp, ptr %i.cp, align 1, !noalias !78
  %i.cq = add nuw i64 %i.cl, 1                    ; 2 uses
  store i64 %i.cq, ptr %i.y, align 8, !alias.scope !79, !noalias !78
  %exitcond481.not = icmp eq i64 %i.cm, %.sroa.011.0.i696.i
  br i1 %exitcond481.not, label %.preheader, label %bb.x

._crit_edge441:                                   ; preds = %.lr.ph440, %.preheader
  %i.cr = load i32, ptr %i.ac, align 4, !alias.scope !72, !noalias !75, !noundef !4
  %i.cs = add i32 %i.bj, %i.cr
  store i32 %i.cs, ptr %i.ac, align 4, !alias.scope !72, !noalias !75
  br label %bb.q

.lr.ph440:                                        ; preds = %.lr.ph440.preheader, %.lr.ph440
  %i.ct = phi i64 [ %i.cy, %.lr.ph440 ], [ %.pre491.a, %.lr.ph440.preheader ] ; 3 uses
  %.sroa.026.0.i698.i439 = phi i64 [ %i.cu, %.lr.ph440 ], [ 0, %.lr.ph440.preheader ]
  %i.cu = add nuw nsw i64 %.sroa.026.0.i698.i439, 1 ; 2 uses
  %i.cv = icmp sgt i64 %i.ct, -1
  call void @llvm.assume(i1 %i.cv), !noalias !78
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 1), !noalias !78
  %i.cw = load ptr, ptr %i.al, align 8, !alias.scope !91, !noalias !78, !nonnull !4, !noundef !4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ct
  store i8 32, ptr %i.cx, align 1, !noalias !78
  %i.cy = add nuw i64 %i.ct, 1                    ; 2 uses
  store i64 %i.cy, ptr %i.y, align 8, !alias.scope !91, !noalias !78
  %exitcond482.not.a = icmp eq i64 %i.cu, %i.bl
  br i1 %exitcond482.not.a, label %._crit_edge441, label %.lr.ph440

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i, %bb.u, %bb.q
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 1), !noalias !78
  %i.cz = load i64, ptr %i.y, align 8, !alias.scope !94, !noalias !78, !noundef !4 ; 2 uses
  %i.da = icmp sgt i64 %i.cz, -1
  call void @llvm.assume(i1 %i.da), !noalias !78
  %i.db = load ptr, ptr %i.al, align 8, !alias.scope !94, !noalias !78, !nonnull !4, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cz
  store i8 32, ptr %i.dc, align 1, !noalias !78
  %.pre.i = load i64, ptr %i.y, align 8, !alias.scope !94, !noalias !78
  %i.dd = add i64 %.pre.i, 1
  store i64 %i.dd, ptr %i.y, align 8, !alias.scope !94, !noalias !78
  %i.de = load i32, ptr %i.ac, align 4, !alias.scope !72, !noalias !75, !noundef !4
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.ac, align 4, !alias.scope !72, !noalias !75
  br label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit

bb.y:                                             ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  %i.dh = and i48 %i.ba, 4294967296
  %i.di = icmp eq i48 %i.dh, 0
  br i1 %i.di, label %bb.bt, label %bb.bu

bb.z:                                             ; preds = %bb.n
  %i.dj = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !noalias !70, !noundef !4
  store i32 1, ptr %i.am, align 8, !alias.scope !65, !noalias !97
  store i32 %i.dk, ptr %i.an, align 4, !alias.scope !65, !noalias !97
  br label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit

bb.aa:                                            ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !70, !nonnull !4, !noundef !4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noalias !70, !noundef !4 ; 5 uses
  %.sroa.0.0.copyload.i676.i = load i8, ptr %i.aj, align 8, !alias.scope !98, !noalias !101
  %.sroa.53.0.copyload.i678.i = load i16, ptr %.sroa.53.0..sroa_idx.i653.i, align 2, !alias.scope !98, !noalias !101 ; 4 uses
  %i.dp = trunc nuw i8 %.sroa.0.0.copyload.i676.i to i1 ; 2 uses
  %i.dq = icmp ne i16 %.sroa.53.0.copyload.i678.i, 0
  %or.cond.not.i679.i = select i1 %i.dp, i1 true, i1 %i.dq
  br i1 %or.cond.not.i679.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.4.0.copyload.i681.i = load i8, ptr %.sroa.5.0..sroa_idx.i656.i, align 1, !alias.scope !98, !noalias !101
  store i8 0, ptr %i.aj, align 8, !alias.scope !98, !noalias !101
  store i16 0, ptr %.sroa.53.0..sroa_idx.i653.i, align 2, !alias.scope !98, !noalias !101
  %.sroa.4.0.copyload..i682.i = select i1 %i.dp, i8 %.sroa.4.0.copyload.i681.i, i8 0 ; 3 uses
  %i.dr = load i8, ptr %i.ak, align 2, !range !61, !alias.scope !98, !noalias !101, !noundef !4 ; 2 uses
  %i.ds = zext i8 %i.dr to i32
  %i.dt = zext i16 %.sroa.53.0.copyload.i678.i to i32
  %i.du = mul nuw nsw i32 %i.ds, %i.dt
  %i.dv = zext i8 %.sroa.4.0.copyload..i682.i to i32
  %i.dw = add nuw nsw i32 %i.du, %i.dv
  %i.dx = zext i16 %.sroa.53.0.copyload.i678.i to i64
  %i.dy = zext i8 %.sroa.4.0.copyload..i682.i to i64 ; 2 uses
  %i.dz = load i8, ptr %i.ag, align 4, !range !77, !alias.scope !98, !noalias !101, !noundef !4
  %i.ea = trunc nuw i8 %i.dz to i1                ; 2 uses
  %narrow387 = select i1 %i.ea, i8 %i.dr, i8 1
  %6 = zext i8 %narrow387 to i64
  %.sroa.011.0.i684.i = mul nuw nsw i64 %6, %i.dx ; 2 uses
  %i.eb = add nuw nsw i64 %.sroa.011.0.i684.i, %i.dy
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %i.eb), !noalias !103
  %.not446.a = icmp eq i16 %.sroa.53.0.copyload.i678.i, 0
  br i1 %.not446.a, label %.preheader388, label %.lr.ph426

.lr.ph426:                                        ; preds = %bb.ab
  %i.ec = select i1 %i.ea, i8 32, i8 9
  %.pre486 = load i64, ptr %i.y, align 8, !alias.scope !104, !noalias !103
  br label %bb.aj

bb.ac:                                            ; preds = %._crit_edge429, %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.ed = load i32, ptr %i.am, align 8, !range !85, !alias.scope !107, !noalias !103, !noundef !4
  %i.ee = load i32, ptr %i.an, align 4, !alias.scope !107, !noalias !103 ; 2 uses
  store i32 0, ptr %i.am, align 8, !alias.scope !107, !noalias !103
  %i.ef = trunc nuw i32 %i.ed to i1
  br i1 %i.ef, label %bb.ad, label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit150

bb.ad:                                            ; preds = %bb.ac
  %i.eg = load i64, ptr %i.y, align 8, !alias.scope !107, !noalias !103, !noundef !4 ; 2 uses
  %i.eh = icmp ugt i64 %i.eg, 4294967295
  %i.ei = shl nuw i64 %i.eg, 32
  %.sroa.09.0.insert.insert.i.i143 = select i1 %i.eh, i64 513, i64 %i.ei ; 2 uses
  %i.ej = trunc i64 %.sroa.09.0.insert.insert.i.i143 to i1
  br i1 %i.ej, label %bb.ae, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i144, !prof !62

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !110
  store i8 2, ptr %i.f, align 1, !noalias !110
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #19, !noalias !110
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i144: ; preds = %bb.ad
  %.sroa.6.0.extract.shift.i.i.i145 = lshr i64 %.sroa.09.0.insert.insert.i.i143, 32
  %.sroa.6.0.extract.trunc.i.i.i146 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i145 to i32 ; 2 uses
  %i.ek = load i64, ptr %i.ap, align 8, !alias.scope !107, !noalias !103, !noundef !4 ; 5 uses
  %.not.i147 = icmp eq i64 %i.ek, 0
  br i1 %.not.i147, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i144
  %i.el = load ptr, ptr %i.aq, align 8, !alias.scope !107, !noalias !103, !nonnull !4, !noundef !4
  %i.em = getelementptr [8 x i8], ptr %i.el, i64 %i.ek ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 -8
  %i.eo = load i32, ptr %i.en, align 4, !noalias !110, !noundef !4
  %i.ep = icmp eq i32 %i.eo, %i.ee
  br i1 %i.ep, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eq = getelementptr i8, ptr %i.em, i64 -4
  %i.er = load i32, ptr %i.eq, align 4, !noalias !110, !noundef !4
  %.not3.i149 = icmp eq i32 %i.er, %.sroa.6.0.extract.trunc.i.i.i146
  br i1 %.not3.i149, label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit150, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i144
  %i.es = load i64, ptr %i.ao, align 8, !range !87, !alias.scope !111, !noalias !103, !noundef !4
  %i.et = icmp eq i64 %i.ek, %i.es
  br i1 %i.et, label %bb.ai, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i148

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8grow_oneBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao), !noalias !103
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i148

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i148: ; preds = %bb.ai, %bb.ah
  %i.eu = load ptr, ptr %i.aq, align 8, !alias.scope !111, !noalias !103, !nonnull !4, !noundef !4
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ek ; 2 uses
  store i32 %i.ee, ptr %i.ev, align 4, !noalias !103
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 %.sroa.6.0.extract.trunc.i.i.i146, ptr %i.ew, align 4, !noalias !103
  %i.ex = add i64 %i.ek, 1
  store i64 %i.ex, ptr %i.ap, align 8, !alias.scope !111, !noalias !103
  br label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit150

.preheader388:                                    ; preds = %bb.aj, %bb.ab
  %.not447.a = icmp eq i8 %.sroa.4.0.copyload..i682.i, 0
  br i1 %.not447.a, label %._crit_edge429, label %.lr.ph428.preheader

.lr.ph428.preheader:                              ; preds = %.preheader388
  %.pre487.a = load i64, ptr %i.y, align 8, !alias.scope !114, !noalias !103
  br label %.lr.ph428

bb.aj:                                            ; preds = %.lr.ph426, %bb.aj
  %i.ey = phi i64 [ %.pre486, %.lr.ph426 ], [ %i.fd, %bb.aj ] ; 3 uses
  %.sroa.024.0.i685.i424 = phi i64 [ 0, %.lr.ph426 ], [ %i.ez, %bb.aj ]
  %i.ez = add nuw nsw i64 %.sroa.024.0.i685.i424, 1 ; 2 uses
  %i.fa = icmp sgt i64 %i.ey, -1
  call void @llvm.assume(i1 %i.fa), !noalias !103
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 1), !noalias !103
  %i.fb = load ptr, ptr %i.al, align 8, !alias.scope !104, !noalias !103, !nonnull !4, !noundef !4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ey
  store i8 %i.ec, ptr %i.fc, align 1, !noalias !103
  %i.fd = add nuw i64 %i.ey, 1                    ; 2 uses
  store i64 %i.fd, ptr %i.y, align 8, !alias.scope !104, !noalias !103
  %exitcond475.not = icmp eq i64 %i.ez, %.sroa.011.0.i684.i
  br i1 %exitcond475.not, label %.preheader388, label %bb.aj

._crit_edge429:                                   ; preds = %.lr.ph428, %.preheader388
  %i.fe = load i32, ptr %i.ac, align 4, !alias.scope !98, !noalias !101, !noundef !4
  %i.ff = add i32 %i.dw, %i.fe
  store i32 %i.ff, ptr %i.ac, align 4, !alias.scope !98, !noalias !101
  br label %bb.ac

.lr.ph428:                                        ; preds = %.lr.ph428.preheader, %.lr.ph428
  %i.fg = phi i64 [ %i.fl, %.lr.ph428 ], [ %.pre487.a, %.lr.ph428.preheader ] ; 3 uses
  %.sroa.026.0.i686.i427 = phi i64 [ %i.fh, %.lr.ph428 ], [ 0, %.lr.ph428.preheader ]
  %i.fh = add nuw nsw i64 %.sroa.026.0.i686.i427, 1 ; 2 uses
  %i.fi = icmp sgt i64 %i.fg, -1
  call void @llvm.assume(i1 %i.fi), !noalias !103
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 1), !noalias !103
  %i.fj = load ptr, ptr %i.al, align 8, !alias.scope !114, !noalias !103, !nonnull !4, !noundef !4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fg
  store i8 32, ptr %i.fk, align 1, !noalias !103
  %i.fl = add nuw i64 %i.fg, 1                    ; 2 uses
  store i64 %i.fl, ptr %i.y, align 8, !alias.scope !114, !noalias !103
  %exitcond476.not.a = icmp eq i64 %i.fh, %i.dy
  br i1 %exitcond476.not.a, label %._crit_edge429, label %.lr.ph428

_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit150: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i148, %bb.ag, %bb.ac
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %i.do), !noalias !103
  %i.fm = load i64, ptr %i.y, align 8, !alias.scope !117, !noalias !103, !noundef !4 ; 3 uses
  %i.fn = icmp sgt i64 %i.fm, -1
  call void @llvm.assume(i1 %i.fn), !noalias !103
  %.not.i152 = icmp eq i64 %i.do, 0
  br i1 %.not.i152, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit154, label %bb.ak

bb.ak:                                            ; preds = %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit150
  %i.fo = load ptr, ptr %i.al, align 8, !alias.scope !117, !noalias !103, !nonnull !4, !noundef !4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fp, ptr nonnull readonly align 1 %i.dm, i64 %i.do, i1 false), !noalias !103
  %.pre.i153 = load i64, ptr %i.y, align 8, !alias.scope !117, !noalias !103
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit154

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit154: ; preds = %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit150, %bb.ak
  %i.fq = phi i64 [ %.pre.i153, %bb.ak ], [ %i.fm, %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit150 ]
  %i.fr = add i64 %i.fq, %i.do
  store i64 %i.fr, ptr %i.y, align 8, !alias.scope !117, !noalias !103
  %i.fs = trunc i64 %i.do to i32
  %i.ft = load i32, ptr %i.ac, align 4, !alias.scope !98, !noalias !101, !noundef !4
  %i.fu = add i32 %i.ft, %i.fs
  store i32 %i.fu, ptr %i.ac, align 4, !alias.scope !98, !noalias !101
  br label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit

bb.al:                                            ; preds = %bb.n
  %i.fv = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !70, !nonnull !4, !noundef !4 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !70, !noundef !4 ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !noalias !70, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload.i664.i = load i8, ptr %i.aj, align 8, !alias.scope !120, !noalias !123
  %.sroa.53.0.copyload.i666.i = load i16, ptr %.sroa.53.0..sroa_idx.i653.i, align 2, !alias.scope !120, !noalias !123 ; 4 uses
  %i.gb = trunc nuw i8 %.sroa.0.0.copyload.i664.i to i1 ; 2 uses
  %i.gc = icmp ne i16 %.sroa.53.0.copyload.i666.i, 0
  %or.cond.not.i667.i = select i1 %i.gb, i1 true, i1 %i.gc
  br i1 %or.cond.not.i667.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.sroa.4.0.copyload.i669.i = load i8, ptr %.sroa.5.0..sroa_idx.i656.i, align 1, !alias.scope !120, !noalias !123
  store i8 0, ptr %i.aj, align 8, !alias.scope !120, !noalias !123
  store i16 0, ptr %.sroa.53.0..sroa_idx.i653.i, align 2, !alias.scope !120, !noalias !123
  %.sroa.4.0.copyload..i670.i = select i1 %i.gb, i8 %.sroa.4.0.copyload.i669.i, i8 0 ; 3 uses
  %i.gd = load i8, ptr %i.ak, align 2, !range !61, !alias.scope !120, !noalias !123, !noundef !4 ; 2 uses
  %i.ge = zext i8 %i.gd to i32
  %i.gf = zext i16 %.sroa.53.0.copyload.i666.i to i32
  %i.gg = mul nuw nsw i32 %i.ge, %i.gf
  %i.gh = zext i8 %.sroa.4.0.copyload..i670.i to i32
  %i.gi = add nuw nsw i32 %i.gg, %i.gh
  %i.gj = zext i16 %.sroa.53.0.copyload.i666.i to i64
  %i.gk = zext i8 %.sroa.4.0.copyload..i670.i to i64 ; 2 uses
  %i.gl = load i8, ptr %i.ag, align 4, !range !77, !alias.scope !120, !noalias !123, !noundef !4
  %i.gm = trunc nuw i8 %i.gl to i1                ; 2 uses
  %narrow386 = select i1 %i.gm, i8 %i.gd, i8 1
  %7 = zext i8 %narrow386 to i64
  %.sroa.011.0.i672.i = mul nuw nsw i64 %7, %i.gj ; 2 uses
  %i.gn = add nuw nsw i64 %.sroa.011.0.i672.i, %i.gk
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %i.gn), !noalias !125
  %.not444 = icmp eq i16 %.sroa.53.0.copyload.i666.i, 0
  br i1 %.not444, label %.preheader389, label %.lr.ph417

.lr.ph417:                                        ; preds = %bb.am
  %i.go = select i1 %i.gm, i8 32, i8 9
  %.pre484 = load i64, ptr %i.y, align 8, !alias.scope !126, !noalias !125
  br label %bb.au

bb.an:                                            ; preds = %._crit_edge420, %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.gp = load i32, ptr %i.am, align 8, !range !85, !alias.scope !129, !noalias !125, !noundef !4
  %i.gq = load i32, ptr %i.an, align 4, !alias.scope !129, !noalias !125 ; 2 uses
  store i32 0, ptr %i.am, align 8, !alias.scope !129, !noalias !125
  %i.gr = trunc nuw i32 %i.gp to i1
  br i1 %i.gr, label %bb.ao, label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit171

bb.ao:                                            ; preds = %bb.an
  %i.gs = load i64, ptr %i.y, align 8, !alias.scope !129, !noalias !125, !noundef !4 ; 2 uses
  %i.gt = icmp ugt i64 %i.gs, 4294967295
  %i.gu = shl nuw i64 %i.gs, 32
  %.sroa.09.0.insert.insert.i.i164 = select i1 %i.gt, i64 513, i64 %i.gu ; 2 uses
  %i.gv = trunc i64 %.sroa.09.0.insert.insert.i.i164 to i1
  br i1 %i.gv, label %bb.ap, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i165, !prof !62

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !132
  store i8 2, ptr %i.e, align 1, !noalias !132
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #19, !noalias !132
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i165: ; preds = %bb.ao
  %.sroa.6.0.extract.shift.i.i.i166 = lshr i64 %.sroa.09.0.insert.insert.i.i164, 32
  %.sroa.6.0.extract.trunc.i.i.i167 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i166 to i32 ; 2 uses
  %i.gw = load i64, ptr %i.ap, align 8, !alias.scope !129, !noalias !125, !noundef !4 ; 5 uses
  %.not.i168 = icmp eq i64 %i.gw, 0
  br i1 %.not.i168, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i165
  %i.gx = load ptr, ptr %i.aq, align 8, !alias.scope !129, !noalias !125, !nonnull !4, !noundef !4
  %i.gy = getelementptr [8 x i8], ptr %i.gx, i64 %i.gw ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 -8
  %i.ha = load i32, ptr %i.gz, align 4, !noalias !132, !noundef !4
  %i.hb = icmp eq i32 %i.ha, %i.gq
  br i1 %i.hb, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hc = getelementptr i8, ptr %i.gy, i64 -4
  %i.hd = load i32, ptr %i.hc, align 4, !noalias !132, !noundef !4
  %.not3.i170 = icmp eq i32 %i.hd, %.sroa.6.0.extract.trunc.i.i.i167
  br i1 %.not3.i170, label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit171, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i165
  %i.he = load i64, ptr %i.ao, align 8, !range !87, !alias.scope !133, !noalias !125, !noundef !4
  %i.hf = icmp eq i64 %i.gw, %i.he
  br i1 %i.hf, label %bb.at, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i169

bb.at:                                            ; preds = %bb.as
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8grow_oneBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao), !noalias !125
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i169

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i169: ; preds = %bb.at, %bb.as
  %i.hg = load ptr, ptr %i.aq, align 8, !alias.scope !133, !noalias !125, !nonnull !4, !noundef !4
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.gw ; 2 uses
  store i32 %i.gq, ptr %i.hh, align 4, !noalias !125
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store i32 %.sroa.6.0.extract.trunc.i.i.i167, ptr %i.hi, align 4, !noalias !125
  %i.hj = add i64 %i.gw, 1
  store i64 %i.hj, ptr %i.ap, align 8, !alias.scope !133, !noalias !125
  br label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit171

.preheader389:                                    ; preds = %bb.au, %bb.am
  %.not445 = icmp eq i8 %.sroa.4.0.copyload..i670.i, 0
  br i1 %.not445, label %._crit_edge420, label %.lr.ph419.preheader

.lr.ph419.preheader:                              ; preds = %.preheader389
  %.pre485 = load i64, ptr %i.y, align 8, !alias.scope !136, !noalias !125
  br label %.lr.ph419

bb.au:                                            ; preds = %.lr.ph417, %bb.au
  %i.hk = phi i64 [ %.pre484, %.lr.ph417 ], [ %i.hp, %bb.au ] ; 3 uses
  %.sroa.024.0.i673.i415 = phi i64 [ 0, %.lr.ph417 ], [ %i.hl, %bb.au ]
  %i.hl = add nuw nsw i64 %.sroa.024.0.i673.i415, 1 ; 2 uses
  %i.hm = icmp sgt i64 %i.hk, -1
  call void @llvm.assume(i1 %i.hm), !noalias !125
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 1), !noalias !125
  %i.hn = load ptr, ptr %i.al, align 8, !alias.scope !126, !noalias !125, !nonnull !4, !noundef !4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hk
  store i8 %i.go, ptr %i.ho, align 1, !noalias !125
  %i.hp = add nuw i64 %i.hk, 1                    ; 2 uses
  store i64 %i.hp, ptr %i.y, align 8, !alias.scope !126, !noalias !125
  %exitcond472.not = icmp eq i64 %i.hl, %.sroa.011.0.i672.i
  br i1 %exitcond472.not, label %.preheader389, label %bb.au

._crit_edge420:                                   ; preds = %.lr.ph419, %.preheader389
  %i.hq = load i32, ptr %i.ac, align 4, !alias.scope !120, !noalias !123, !noundef !4
  %i.hr = add i32 %i.gi, %i.hq
  store i32 %i.hr, ptr %i.ac, align 4, !alias.scope !120, !noalias !123
  br label %bb.an

.lr.ph419:                                        ; preds = %.lr.ph419.preheader, %.lr.ph419
  %i.hs = phi i64 [ %i.hx, %.lr.ph419 ], [ %.pre485, %.lr.ph419.preheader ] ; 3 uses
  %.sroa.026.0.i674.i418 = phi i64 [ %i.ht, %.lr.ph419 ], [ 0, %.lr.ph419.preheader ]
  %i.ht = add nuw nsw i64 %.sroa.026.0.i674.i418, 1 ; 2 uses
  %i.hu = icmp sgt i64 %i.hs, -1
  call void @llvm.assume(i1 %i.hu), !noalias !125
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 1), !noalias !125
  %i.hv = load ptr, ptr %i.al, align 8, !alias.scope !136, !noalias !125, !nonnull !4, !noundef !4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hs
  store i8 32, ptr %i.hw, align 1, !noalias !125
  %i.hx = add nuw i64 %i.hs, 1                    ; 2 uses
  store i64 %i.hx, ptr %i.y, align 8, !alias.scope !136, !noalias !125
  %exitcond473.not = icmp eq i64 %i.ht, %i.gk
  br i1 %exitcond473.not, label %._crit_edge420, label %.lr.ph419

_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit171: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i169, %bb.ar, %bb.an
  %i.hy = icmp eq i32 %i.ga, 0
  br i1 %i.hy, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit171
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fy ; 4 uses
  %i.ia = icmp samesign eq i64 %i.fy, 0
  br i1 %i.ia, label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit, label %.lr.ph423

bb.aw:                                            ; preds = %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit171
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %i.fy), !noalias !125
  %i.ib = load i64, ptr %i.y, align 8, !alias.scope !139, !noalias !125, !noundef !4 ; 3 uses
  %i.ic = icmp sgt i64 %i.ib, -1
  call void @llvm.assume(i1 %i.ic), !noalias !125
  %.not.i176 = icmp eq i64 %i.fy, 0
  br i1 %.not.i176, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit178, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.id = load ptr, ptr %i.al, align 8, !alias.scope !139, !noalias !125, !nonnull !4, !noundef !4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ib
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ie, ptr nonnull readonly align 1 %i.fw, i64 %i.fy, i1 false), !noalias !125
  %.pre.i177 = load i64, ptr %i.y, align 8, !alias.scope !139, !noalias !125
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit178

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit178: ; preds = %bb.aw, %bb.ax
  %i.if = phi i64 [ %.pre.i177, %bb.ax ], [ %i.ib, %bb.aw ]
  %i.ig = add i64 %i.if, %i.fy
  store i64 %i.ig, ptr %i.y, align 8, !alias.scope !139, !noalias !125
  %i.ih = add i32 %i.ga, -1
  %i.ii = load i32, ptr %i.ac, align 4, !alias.scope !120, !noalias !123, !noundef !4
  %i.ij = add i32 %i.ih, %i.ii
  store i32 %i.ij, ptr %i.ac, align 4, !alias.scope !120, !noalias !123
  br label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit

.lr.ph423:                                        ; preds = %bb.av, %bb.az
  %.sroa.0351.0421 = phi ptr [ %.sroa.0351.1.ph, %bb.az ], [ %i.fw, %bb.av ] ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0351.0421, i64 1 ; 3 uses
  %i.il = load i8, ptr %.sroa.0351.0421, align 1, !noalias !142, !noundef !4 ; 5 uses
  %i.im = icmp sgt i8 %i.il, -1
  br i1 %i.im, label %bb.ay, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i179

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i179: ; preds = %.lr.ph423
  %i.in = and i8 %i.il, 31
  %i.io = zext nneg i8 %i.in to i32               ; 3 uses
  %i.ip = icmp ne ptr %i.ik, %i.hz
  call void @llvm.assume(i1 %i.ip), !noalias !125
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0351.0421, i64 2 ; 3 uses
  %i.ir = load i8, ptr %i.ik, align 1, !noalias !142, !noundef !4
  %i.is = shl nuw nsw i32 %i.io, 6
  %i.it = and i8 %i.ir, 63
  %i.iu = zext nneg i8 %i.it to i32               ; 2 uses
  %i.iv = or disjoint i32 %i.is, %i.iu
  %i.iw = icmp samesign ugt i8 %i.il, -33
  br i1 %i.iw, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i182, label %bb.az

bb.ay:                                            ; preds = %.lr.ph423
  %i.ix = zext nneg i8 %i.il to i32
  br label %bb.az

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i182: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i179
  %i.iy = icmp ne ptr %i.iq, %i.hz
  call void @llvm.assume(i1 %i.iy), !noalias !125
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0351.0421, i64 3 ; 3 uses
  %i.ja = load i8, ptr %i.iq, align 1, !noalias !142, !noundef !4
  %i.jb = shl nuw nsw i32 %i.iu, 6
  %i.jc = and i8 %i.ja, 63
  %i.jd = zext nneg i8 %i.jc to i32
  %i.je = or disjoint i32 %i.jb, %i.jd            ; 2 uses
  %i.jf = shl nuw nsw i32 %i.io, 12
  %i.jg = or disjoint i32 %i.je, %i.jf
  %i.jh = icmp samesign ugt i8 %i.il, -17
  br i1 %i.jh, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i183, label %bb.az

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i183: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i182
  %i.ji = icmp ne ptr %i.iz, %i.hz
  call void @llvm.assume(i1 %i.ji), !noalias !125
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0351.0421, i64 4
  %i.jk = load i8, ptr %i.iz, align 1, !noalias !142, !noundef !4
  %i.jl = shl nuw nsw i32 %i.io, 18
  %i.jm = and i32 %i.jl, 1835008
  %i.jn = shl nuw nsw i32 %i.je, 6
  %i.jo = and i8 %i.jk, 63
  %i.jp = zext nneg i8 %i.jo to i32
  %i.jq = or disjoint i32 %i.jn, %i.jp
  %i.jr = or disjoint i32 %i.jq, %i.jm
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i179, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i183, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i182
  %.sroa.0351.1.ph = phi ptr [ %i.iq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i179 ], [ %i.iz, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i182 ], [ %i.jj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i183 ], [ %i.ik, %bb.ay ] ; 2 uses
  %.sroa.4.0.i180.ph = phi i32 [ %i.iv, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i179 ], [ %i.jg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i182 ], [ %i.jr, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i183 ], [ %i.ix, %bb.ay ] ; 2 uses
  %i.js = icmp samesign ult i32 %.sroa.4.0.i180.ph, 1114112
  call void @llvm.assume(i1 %i.js)
  call fastcc void @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer10print_char(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %.sroa.4.0.i180.ph), !noalias !125
  %i.jt = icmp eq ptr %.sroa.0351.1.ph, %i.hz
  br i1 %i.jt, label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit, label %.lr.ph423

bb.ba:                                            ; preds = %bb.n
  %i.ju = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.jv = load ptr, ptr %i.ah, align 8, !alias.scope !65, !noalias !97, !nonnull !4, !noundef !4
  %i.jw = load i64, ptr %i.ai, align 8, !alias.scope !65, !noalias !97, !noundef !4
  %i.jx = call { ptr, i64 } @_RNvMs0_NtCs7Ma6rQP8bRy_14ruff_formatter11source_codeNtB5_15SourceCodeSlice4text(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ju, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.jv, i64 noundef %i.jw), !noalias !68 ; 2 uses
  %i.jy = extractvalue { ptr, i64 } %i.jx, 0      ; 4 uses
  %i.jz = extractvalue { ptr, i64 } %i.jx, 1      ; 6 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.kb = load i32, ptr %i.ka, align 4, !noalias !70, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload.i652.i = load i8, ptr %i.aj, align 8, !alias.scope !145, !noalias !148
  %.sroa.53.0.copyload.i654.i = load i16, ptr %.sroa.53.0..sroa_idx.i653.i, align 2, !alias.scope !145, !noalias !148 ; 4 uses
  %i.kc = trunc nuw i8 %.sroa.0.0.copyload.i652.i to i1 ; 2 uses
  %i.kd = icmp ne i16 %.sroa.53.0.copyload.i654.i, 0
  %or.cond.not.i655.i = select i1 %i.kc, i1 true, i1 %i.kd
  br i1 %or.cond.not.i655.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %.sroa.4.0.copyload.i657.i = load i8, ptr %.sroa.5.0..sroa_idx.i656.i, align 1, !alias.scope !145, !noalias !148
  store i8 0, ptr %i.aj, align 8, !alias.scope !145, !noalias !148
  store i16 0, ptr %.sroa.53.0..sroa_idx.i653.i, align 2, !alias.scope !145, !noalias !148
  %.sroa.4.0.copyload..i658.i = select i1 %i.kc, i8 %.sroa.4.0.copyload.i657.i, i8 0 ; 3 uses
  %i.ke = load i8, ptr %i.ak, align 2, !range !61, !alias.scope !145, !noalias !148, !noundef !4 ; 2 uses
  %i.kf = zext i8 %i.ke to i32
  %i.kg = zext i16 %.sroa.53.0.copyload.i654.i to i32
  %i.kh = mul nuw nsw i32 %i.kf, %i.kg
  %i.ki = zext i8 %.sroa.4.0.copyload..i658.i to i32
  %i.kj = add nuw nsw i32 %i.kh, %i.ki
  %i.kk = zext i16 %.sroa.53.0.copyload.i654.i to i64
  %i.kl = zext i8 %.sroa.4.0.copyload..i658.i to i64 ; 2 uses
  %i.km = load i8, ptr %i.ag, align 4, !range !77, !alias.scope !145, !noalias !148, !noundef !4
  %i.kn = trunc nuw i8 %i.km to i1                ; 2 uses
  %narrow = select i1 %i.kn, i8 %i.ke, i8 1
  %8 = zext i8 %narrow to i64
  %.sroa.011.0.i660.i = mul nuw nsw i64 %8, %i.kk ; 2 uses
  %i.ko = add nuw nsw i64 %.sroa.011.0.i660.i, %i.kl
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %i.ko), !noalias !150
  %.not442 = icmp eq i16 %.sroa.53.0.copyload.i654.i, 0
  br i1 %.not442, label %.preheader391.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bb
  %i.kp = select i1 %i.kn, i8 32, i8 9
  %.pre = load i64, ptr %i.y, align 8, !alias.scope !151, !noalias !150
  br label %bb.bj

bb.bc:                                            ; preds = %._crit_edge, %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.kq = load i32, ptr %i.am, align 8, !range !85, !alias.scope !154, !noalias !150, !noundef !4
  %i.kr = load i32, ptr %i.an, align 4, !alias.scope !154, !noalias !150 ; 2 uses
  store i32 0, ptr %i.am, align 8, !alias.scope !154, !noalias !150
  %i.ks = trunc nuw i32 %i.kq to i1
  br i1 %i.ks, label %bb.bd, label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit192

bb.bd:                                            ; preds = %bb.bc
  %i.kt = load i64, ptr %i.y, align 8, !alias.scope !154, !noalias !150, !noundef !4 ; 2 uses
  %i.ku = icmp ugt i64 %i.kt, 4294967295
  %i.kv = shl nuw i64 %i.kt, 32
  %.sroa.09.0.insert.insert.i.i185 = select i1 %i.ku, i64 513, i64 %i.kv ; 2 uses
  %i.kw = trunc i64 %.sroa.09.0.insert.insert.i.i185 to i1
  br i1 %i.kw, label %bb.be, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i186, !prof !62

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !157
  store i8 2, ptr %i.d, align 1, !noalias !157
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #19, !noalias !157
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i186: ; preds = %bb.bd
  %.sroa.6.0.extract.shift.i.i.i187 = lshr i64 %.sroa.09.0.insert.insert.i.i185, 32
  %.sroa.6.0.extract.trunc.i.i.i188 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i187 to i32 ; 2 uses
  %i.kx = load i64, ptr %i.ap, align 8, !alias.scope !154, !noalias !150, !noundef !4 ; 5 uses
  %.not.i189 = icmp eq i64 %i.kx, 0
  br i1 %.not.i189, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i186
  %i.ky = load ptr, ptr %i.aq, align 8, !alias.scope !154, !noalias !150, !nonnull !4, !noundef !4
  %i.kz = getelementptr [8 x i8], ptr %i.ky, i64 %i.kx ; 2 uses
  %i.la = getelementptr i8, ptr %i.kz, i64 -8
  %i.lb = load i32, ptr %i.la, align 4, !noalias !157, !noundef !4
  %i.lc = icmp eq i32 %i.lb, %i.kr
  br i1 %i.lc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ld = getelementptr i8, ptr %i.kz, i64 -4
  %i.le = load i32, ptr %i.ld, align 4, !noalias !157, !noundef !4
  %.not3.i191 = icmp eq i32 %i.le, %.sroa.6.0.extract.trunc.i.i.i188
  br i1 %.not3.i191, label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit192, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i186
  %i.lf = load i64, ptr %i.ao, align 8, !range !87, !alias.scope !158, !noalias !150, !noundef !4
  %i.lg = icmp eq i64 %i.kx, %i.lf
  br i1 %i.lg, label %bb.bi, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i190

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8grow_oneBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao), !noalias !150
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i190

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i190: ; preds = %bb.bi, %bb.bh
  %i.lh = load ptr, ptr %i.aq, align 8, !alias.scope !158, !noalias !150, !nonnull !4, !noundef !4
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.kx ; 2 uses
  store i32 %i.kr, ptr %i.li, align 4, !noalias !150
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  store i32 %.sroa.6.0.extract.trunc.i.i.i188, ptr %i.lj, align 4, !noalias !150
  %i.lk = add i64 %i.kx, 1
  store i64 %i.lk, ptr %i.ap, align 8, !alias.scope !158, !noalias !150
  br label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit192

.preheader391.a:                                  ; preds = %bb.bj, %bb.bb
  %.not443 = icmp eq i8 %.sroa.4.0.copyload..i658.i, 0
  br i1 %.not443, label %._crit_edge, label %.lr.ph411.preheader

.lr.ph411.preheader:                              ; preds = %.preheader391.a
  %.pre483 = load i64, ptr %i.y, align 8, !alias.scope !161, !noalias !150
  br label %.lr.ph411

bb.bj:                                            ; preds = %.lr.ph, %bb.bj
  %i.ll = phi i64 [ %.pre, %.lr.ph ], [ %i.lq, %bb.bj ] ; 3 uses
  %.sroa.024.0.i661.i409 = phi i64 [ 0, %.lr.ph ], [ %i.lm, %bb.bj ]
  %i.lm = add nuw nsw i64 %.sroa.024.0.i661.i409, 1 ; 2 uses
  %i.ln = icmp sgt i64 %i.ll, -1
  call void @llvm.assume(i1 %i.ln), !noalias !150
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 1), !noalias !150
  %i.lo = load ptr, ptr %i.al, align 8, !alias.scope !151, !noalias !150, !nonnull !4, !noundef !4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.ll
  store i8 %i.kp, ptr %i.lp, align 1, !noalias !150
  %i.lq = add nuw i64 %i.ll, 1                    ; 2 uses
  store i64 %i.lq, ptr %i.y, align 8, !alias.scope !151, !noalias !150
  %exitcond.not = icmp eq i64 %i.lm, %.sroa.011.0.i660.i
  br i1 %exitcond.not, label %.preheader391.a, label %bb.bj

._crit_edge:                                      ; preds = %.lr.ph411, %.preheader391.a
  %i.lr = load i32, ptr %i.ac, align 4, !alias.scope !145, !noalias !148, !noundef !4
  %i.ls = add i32 %i.kj, %i.lr
  store i32 %i.ls, ptr %i.ac, align 4, !alias.scope !145, !noalias !148
  br label %bb.bc

.lr.ph411:                                        ; preds = %.lr.ph411.preheader, %.lr.ph411
  %i.lt = phi i64 [ %i.ly, %.lr.ph411 ], [ %.pre483, %.lr.ph411.preheader ] ; 3 uses
  %.sroa.026.0.i662.i410 = phi i64 [ %i.lu, %.lr.ph411 ], [ 0, %.lr.ph411.preheader ]
  %i.lu = add nuw nsw i64 %.sroa.026.0.i662.i410, 1 ; 2 uses
  %i.lv = icmp sgt i64 %i.lt, -1
  call void @llvm.assume(i1 %i.lv), !noalias !150
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 1), !noalias !150
  %i.lw = load ptr, ptr %i.al, align 8, !alias.scope !161, !noalias !150, !nonnull !4, !noundef !4
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lt
  store i8 32, ptr %i.lx, align 1, !noalias !150
  %i.ly = add nuw i64 %i.lt, 1                    ; 2 uses
  store i64 %i.ly, ptr %i.y, align 8, !alias.scope !161, !noalias !150
  %exitcond470.not = icmp eq i64 %i.lu, %i.kl
  br i1 %exitcond470.not, label %._crit_edge, label %.lr.ph411

_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit192: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i190, %bb.bg, %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jy) ]
  %i.lz = icmp eq i32 %i.kb, 0
  br i1 %i.lz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit192
  %i.ma = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jz ; 4 uses
  %i.mb = icmp samesign eq i64 %i.jz, 0
  br i1 %i.mb, label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit, label %.lr.ph414

bb.bl:                                            ; preds = %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit192
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %i.jz), !noalias !150
  %i.mc = load i64, ptr %i.y, align 8, !alias.scope !164, !noalias !150, !noundef !4 ; 3 uses
  %i.md = icmp sgt i64 %i.mc, -1
  call void @llvm.assume(i1 %i.md), !noalias !150
  %.not.i197 = icmp eq i64 %i.jz, 0
  br i1 %.not.i197, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit199, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.me = load ptr, ptr %i.al, align 8, !alias.scope !164, !noalias !150, !nonnull !4, !noundef !4
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mf, ptr nonnull readonly align 1 %i.jy, i64 %i.jz, i1 false), !noalias !150
  %.pre.i198 = load i64, ptr %i.y, align 8, !alias.scope !164, !noalias !150
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit199

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit199: ; preds = %bb.bl, %bb.bm
  %i.mg = phi i64 [ %.pre.i198, %bb.bm ], [ %i.mc, %bb.bl ]
  %i.mh = add i64 %i.mg, %i.jz
  store i64 %i.mh, ptr %i.y, align 8, !alias.scope !164, !noalias !150
  %i.mi = add i32 %i.kb, -1
  %i.mj = load i32, ptr %i.ac, align 4, !alias.scope !145, !noalias !148, !noundef !4
  %i.mk = add i32 %i.mi, %i.mj
  store i32 %i.mk, ptr %i.ac, align 4, !alias.scope !145, !noalias !148
  br label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit

.lr.ph414:                                        ; preds = %bb.bk, %bb.bo
  %.sroa.0349.0412 = phi ptr [ %.sroa.0349.1.ph, %bb.bo ], [ %i.jy, %bb.bk ] ; 5 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0349.0412, i64 1 ; 3 uses
  %i.mm = load i8, ptr %.sroa.0349.0412, align 1, !noalias !167, !noundef !4 ; 5 uses
  %i.mn = icmp sgt i8 %i.mm, -1
  br i1 %i.mn, label %bb.bn, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i200

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i200: ; preds = %.lr.ph414
  %i.mo = and i8 %i.mm, 31
  %i.mp = zext nneg i8 %i.mo to i32               ; 3 uses
  %i.mq = icmp ne ptr %i.ml, %i.ma
  call void @llvm.assume(i1 %i.mq), !noalias !150
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0349.0412, i64 2 ; 3 uses
  %i.ms = load i8, ptr %i.ml, align 1, !noalias !167, !noundef !4
  %i.mt = shl nuw nsw i32 %i.mp, 6
  %i.mu = and i8 %i.ms, 63
  %i.mv = zext nneg i8 %i.mu to i32               ; 2 uses
  %i.mw = or disjoint i32 %i.mt, %i.mv
  %i.mx = icmp samesign ugt i8 %i.mm, -33
  br i1 %i.mx, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i203, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph414
  %i.my = zext nneg i8 %i.mm to i32
  br label %bb.bo

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i203: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i200
  %i.mz = icmp ne ptr %i.mr, %i.ma
  call void @llvm.assume(i1 %i.mz), !noalias !150
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0349.0412, i64 3 ; 3 uses
  %i.nb = load i8, ptr %i.mr, align 1, !noalias !167, !noundef !4
  %i.nc = shl nuw nsw i32 %i.mv, 6
  %i.nd = and i8 %i.nb, 63
  %i.ne = zext nneg i8 %i.nd to i32
  %i.nf = or disjoint i32 %i.nc, %i.ne            ; 2 uses
  %i.ng = shl nuw nsw i32 %i.mp, 12
  %i.nh = or disjoint i32 %i.nf, %i.ng
  %i.ni = icmp samesign ugt i8 %i.mm, -17
  br i1 %i.ni, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i204, label %bb.bo

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i204: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i203
  %i.nj = icmp ne ptr %i.na, %i.ma
  call void @llvm.assume(i1 %i.nj), !noalias !150
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0349.0412, i64 4
  %i.nl = load i8, ptr %i.na, align 1, !noalias !167, !noundef !4
  %i.nm = shl nuw nsw i32 %i.mp, 18
  %i.nn = and i32 %i.nm, 1835008
  %i.no = shl nuw nsw i32 %i.nf, 6
  %i.np = and i8 %i.nl, 63
  %i.nq = zext nneg i8 %i.np to i32
  %i.nr = or disjoint i32 %i.no, %i.nq
  %i.ns = or disjoint i32 %i.nr, %i.nn
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i200, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i204, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i203
  %.sroa.0349.1.ph = phi ptr [ %i.mr, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i200 ], [ %i.na, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i203 ], [ %i.nk, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i204 ], [ %i.ml, %bb.bn ] ; 2 uses
  %.sroa.4.0.i201.ph = phi i32 [ %i.mw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i200 ], [ %i.nh, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i203 ], [ %i.ns, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i204 ], [ %i.my, %bb.bn ] ; 2 uses
  %i.nt = icmp samesign ult i32 %.sroa.4.0.i201.ph, 1114112
  call void @llvm.assume(i1 %i.nt)
  call fastcc void @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer10print_char(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %.sroa.4.0.i201.ph), !noalias !150
  %i.nu = icmp eq ptr %.sroa.0349.1.ph, %i.ma
  br i1 %i.nu, label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit, label %.lr.ph414

bb.bp:                                            ; preds = %bb.n
  %i.nv = call fastcc noundef zeroext i1 @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer19flush_line_suffixes(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 @9) ; 0 uses
  br label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit

bb.bq:                                            ; preds = %bb.n
  %i.nw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.val87 = load ptr, ptr %i.nw, align 8, !nonnull !4, !noundef !4
  %i.nx = getelementptr i8, ptr %i.au, i64 16
  %.val88 = load i64, ptr %i.nx, align 8, !noundef !4
  %i.ny = getelementptr inbounds nuw i8, ptr %.val87, i64 16
  call void @_RNvXs_NtNtCs7Ma6rQP8bRy_14ruff_formatter7printer5queueNtB4_10PrintQueueNtB4_5Queue11extend_back(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 %i.ny, i64 noundef %.val88)
  br label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit

bb.br:                                            ; preds = %bb.n
  %i.nz = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.ob = load i8, ptr %i.oa, align 1, !range !77, !noalias !70, !noundef !4
  %i.oc = trunc nuw i8 %i.ob to i1
  %i.od = call fastcc i64 @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer18print_best_fitting(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.nz, i1 noundef zeroext %i.oc, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2) ; 3 uses
  %i.oe = and i64 %i.od, 255
  %.not650.i = icmp eq i64 %i.oe, 255
  br i1 %.not650.i, label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit, label %bb.dc

bb.bs:                                            ; preds = %bb.n
  %i.of = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.og = load i8, ptr %i.of, align 8, !range !53, !noalias !70, !noundef !4 ; 2 uses
  switch i8 %i.og, label %default.unreachable [
    i8 0, label %bb.de
    i8 1, label %switch.lookup
    i8 2, label %bb.df
    i8 3, label %switch.lookup
    i8 4, label %bb.dg
    i8 5, label %switch.lookup
    i8 6, label %bb.dh
    i8 7, label %switch.lookup
    i8 8, label %bb.di
    i8 9, label %switch.lookup
    i8 10, label %bb.dj
    i8 11, label %switch.lookup
    i8 12, label %bb.dk
    i8 13, label %switch.lookup
    i8 14, label %bb.dm
    i8 15, label %switch.lookup
    i8 29, label %bb.dt
    i8 17, label %switch.lookup
    i8 18, label %bb.dp
    i8 19, label %switch.lookup
    i8 20, label %bb.dq
    i8 21, label %switch.lookup
    i8 28, label %bb.ds
    i8 23, label %switch.lookup
    i8 24, label %bb.dr
    i8 25, label %switch.lookup
    i8 27, label %switch.lookup
    i8 26, label %bb.do
    i8 22, label %bb.dn
    i8 16, label %_RNvMNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element3tagNtB2_3Tag4kind.exit268
  ]

bb.bt:                                            ; preds = %bb.y
  %i.oh = load i8, ptr %i.dg, align 1, !range !170, !noalias !70, !noundef !4 ; 2 uses
  %switch.i = icmp samesign ult i8 %i.oh, 2
  br i1 %switch.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.y, %bb.bt
  %.val90 = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %i.oi = icmp ult i64 %.val90, 576460752303423488
  call void @llvm.assume(i1 %i.oi)
  %.not386 = icmp eq i64 %.val90, 0
  br i1 %.not386, label %bb.cg, label %bb.cj

bb.bv:                                            ; preds = %bb.bt
  %i.oj = icmp eq i8 %i.oh, 0
  br i1 %i.oj, label %bb.bw, label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit

bb.bw:                                            ; preds = %bb.bv
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.aj, align 8, !alias.scope !171, !noalias !174
  %.sroa.53.0.copyload.i.i = load i16, ptr %.sroa.53.0..sroa_idx.i653.i, align 2, !alias.scope !171, !noalias !174 ; 4 uses
  %i.ok = trunc nuw i8 %.sroa.0.0.copyload.i.i to i1 ; 2 uses
  %i.ol = icmp ne i16 %.sroa.53.0.copyload.i.i, 0
  %or.cond.not.i.i = select i1 %i.ok, i1 true, i1 %i.ol
  br i1 %or.cond.not.i.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i656.i, align 1, !alias.scope !171, !noalias !174
  store i8 0, ptr %i.aj, align 8, !alias.scope !171, !noalias !174
  store i16 0, ptr %.sroa.53.0..sroa_idx.i653.i, align 2, !alias.scope !171, !noalias !174
  %.sroa.4.0.copyload..i.i = select i1 %i.ok, i8 %.sroa.4.0.copyload.i.i, i8 0 ; 3 uses
  %i.om = load i8, ptr %i.ak, align 2, !range !61, !alias.scope !171, !noalias !174, !noundef !4 ; 2 uses
  %i.on = zext i8 %i.om to i32
  %i.oo = zext i16 %.sroa.53.0.copyload.i.i to i32
  %i.op = mul nuw nsw i32 %i.on, %i.oo
  %i.oq = zext i8 %.sroa.4.0.copyload..i.i to i32
  %i.or = add nuw nsw i32 %i.op, %i.oq
  %i.os = zext i16 %.sroa.53.0.copyload.i.i to i64
  %i.ot = zext i8 %.sroa.4.0.copyload..i.i to i64 ; 2 uses
  %i.ou = load i8, ptr %i.ag, align 4, !range !77, !alias.scope !171, !noalias !174, !noundef !4
  %i.ov = trunc nuw i8 %i.ou to i1                ; 2 uses
  %narrow389 = select i1 %i.ov, i8 %i.om, i8 1
  %9 = zext i8 %narrow389 to i64
  %.sroa.011.0.i.i = mul nuw nsw i64 %9, %i.os    ; 2 uses
  %i.ow = add nuw nsw i64 %.sroa.011.0.i.i, %i.ot
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %i.ow), !noalias !176
  %.not448 = icmp eq i16 %.sroa.53.0.copyload.i.i, 0
  br i1 %.not448, label %.preheader387, label %.lr.ph432

.lr.ph432:                                        ; preds = %bb.bx
  %i.ox = select i1 %i.ov, i8 32, i8 9
  %.pre488 = load i64, ptr %i.y, align 8, !alias.scope !177, !noalias !176
  br label %bb.cf

bb.by:                                            ; preds = %._crit_edge435, %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.oy = load i32, ptr %i.am, align 8, !range !85, !alias.scope !180, !noalias !176, !noundef !4
  %i.oz = load i32, ptr %i.an, align 4, !alias.scope !180, !noalias !176 ; 2 uses
  store i32 0, ptr %i.am, align 8, !alias.scope !180, !noalias !176
  %i.pa = trunc nuw i32 %i.oy to i1
  br i1 %i.pa, label %bb.bz, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit217

bb.bz:                                            ; preds = %bb.by
  %i.pb = load i64, ptr %i.y, align 8, !alias.scope !180, !noalias !176, !noundef !4 ; 2 uses
  %i.pc = icmp ugt i64 %i.pb, 4294967295
  %i.pd = shl nuw i64 %i.pb, 32
  %.sroa.09.0.insert.insert.i.i206 = select i1 %i.pc, i64 513, i64 %i.pd ; 2 uses
  %i.pe = trunc i64 %.sroa.09.0.insert.insert.i.i206 to i1
  br i1 %i.pe, label %bb.ca, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i207, !prof !62

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !183
  store i8 2, ptr %i.c, align 1, !noalias !183
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #19, !noalias !183
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i207: ; preds = %bb.bz
  %.sroa.6.0.extract.shift.i.i.i208 = lshr i64 %.sroa.09.0.insert.insert.i.i206, 32
  %.sroa.6.0.extract.trunc.i.i.i209 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i208 to i32 ; 2 uses
  %i.pf = load i64, ptr %i.ap, align 8, !alias.scope !180, !noalias !176, !noundef !4 ; 5 uses
  %.not.i210 = icmp eq i64 %i.pf, 0
  br i1 %.not.i210, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i207
  %i.pg = load ptr, ptr %i.aq, align 8, !alias.scope !180, !noalias !176, !nonnull !4, !noundef !4
  %i.ph = getelementptr [8 x i8], ptr %i.pg, i64 %i.pf ; 2 uses
  %i.pi = getelementptr i8, ptr %i.ph, i64 -8
  %i.pj = load i32, ptr %i.pi, align 4, !noalias !183, !noundef !4
  %i.pk = icmp eq i32 %i.pj, %i.oz
  br i1 %i.pk, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.pl = getelementptr i8, ptr %i.ph, i64 -4
  %i.pm = load i32, ptr %i.pl, align 4, !noalias !183, !noundef !4
  %.not3.i212 = icmp eq i32 %i.pm, %.sroa.6.0.extract.trunc.i.i.i209
  br i1 %.not3.i212, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit217, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i207
  %i.pn = load i64, ptr %i.ao, align 8, !range !87, !alias.scope !184, !noalias !176, !noundef !4
  %i.po = icmp eq i64 %i.pf, %i.pn
  br i1 %i.po, label %bb.ce, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i211

bb.ce:                                            ; preds = %bb.cd
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8grow_oneBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao), !noalias !176
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i211

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i211: ; preds = %bb.ce, %bb.cd
  %i.pp = load ptr, ptr %i.aq, align 8, !alias.scope !184, !noalias !176, !nonnull !4, !noundef !4
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.pf ; 2 uses
  store i32 %i.oz, ptr %i.pq, align 4, !noalias !176
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  store i32 %.sroa.6.0.extract.trunc.i.i.i209, ptr %i.pr, align 4, !noalias !176
  %i.ps = add i64 %i.pf, 1
  store i64 %i.ps, ptr %i.ap, align 8, !alias.scope !184, !noalias !176
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit217

.preheader387:                                    ; preds = %bb.cf, %bb.bx
  %.not449 = icmp eq i8 %.sroa.4.0.copyload..i.i, 0
  br i1 %.not449, label %._crit_edge435, label %.lr.ph434.preheader

.lr.ph434.preheader:                              ; preds = %.preheader387
  %.pre489 = load i64, ptr %i.y, align 8, !alias.scope !187, !noalias !176
  br label %.lr.ph434

bb.cf:                                            ; preds = %.lr.ph432, %bb.cf
  %i.pt = phi i64 [ %.pre488, %.lr.ph432 ], [ %i.py, %bb.cf ] ; 3 uses
  %.sroa.024.0.i.i430 = phi i64 [ 0, %.lr.ph432 ], [ %i.pu, %bb.cf ]
  %i.pu = add nuw nsw i64 %.sroa.024.0.i.i430, 1  ; 2 uses
  %i.pv = icmp sgt i64 %i.pt, -1
  call void @llvm.assume(i1 %i.pv), !noalias !176
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 1), !noalias !176
  %i.pw = load ptr, ptr %i.al, align 8, !alias.scope !177, !noalias !176, !nonnull !4, !noundef !4
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.pt
  store i8 %i.ox, ptr %i.px, align 1, !noalias !176
  %i.py = add nuw i64 %i.pt, 1                    ; 2 uses
  store i64 %i.py, ptr %i.y, align 8, !alias.scope !177, !noalias !176
  %exitcond478.not = icmp eq i64 %i.pu, %.sroa.011.0.i.i
  br i1 %exitcond478.not, label %.preheader387, label %bb.cf

._crit_edge435:                                   ; preds = %.lr.ph434, %.preheader387
  %i.pz = load i32, ptr %i.ac, align 4, !alias.scope !171, !noalias !174, !noundef !4
  %i.qa = add i32 %i.or, %i.pz
  store i32 %i.qa, ptr %i.ac, align 4, !alias.scope !171, !noalias !174
  br label %bb.by

.lr.ph434:                                        ; preds = %.lr.ph434.preheader, %.lr.ph434
  %i.qb = phi i64 [ %i.qg, %.lr.ph434 ], [ %.pre489, %.lr.ph434.preheader ] ; 3 uses
  %.sroa.026.0.i.i433 = phi i64 [ %i.qc, %.lr.ph434 ], [ 0, %.lr.ph434.preheader ]
  %i.qc = add nuw nsw i64 %.sroa.026.0.i.i433, 1  ; 2 uses
  %i.qd = icmp sgt i64 %i.qb, -1
  call void @llvm.assume(i1 %i.qd), !noalias !176
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 1), !noalias !176
  %i.qe = load ptr, ptr %i.al, align 8, !alias.scope !187, !noalias !176, !nonnull !4, !noundef !4
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qb
  store i8 32, ptr %i.qf, align 1, !noalias !176
  %i.qg = add nuw i64 %i.qb, 1                    ; 2 uses
  store i64 %i.qg, ptr %i.y, align 8, !alias.scope !187, !noalias !176
  %exitcond479.not = icmp eq i64 %i.qc, %i.ot
  br i1 %exitcond479.not, label %._crit_edge435, label %.lr.ph434

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs7Ma6rQP8bRy_14ruff_formatter.exit217: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i211, %bb.cc, %bb.by
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 1), !noalias !176
  %i.qh = load i64, ptr %i.y, align 8, !alias.scope !190, !noalias !176, !noundef !4 ; 2 uses
  %i.qi = icmp sgt i64 %i.qh, -1
  call void @llvm.assume(i1 %i.qi), !noalias !176
  %i.qj = load ptr, ptr %i.al, align 8, !alias.scope !190, !noalias !176, !nonnull !4, !noundef !4
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 %i.qh
  store i8 32, ptr %i.qk, align 1, !noalias !176
  %.pre.i216 = load i64, ptr %i.y, align 8, !alias.scope !190, !noalias !176
  %i.ql = add i64 %.pre.i216, 1
  store i64 %i.ql, ptr %i.y, align 8, !alias.scope !190, !noalias !176
  %i.qm = load i32, ptr %i.ac, align 4, !alias.scope !171, !noalias !174, !noundef !4
  %i.qn = add i32 %i.qm, 1
  store i32 %i.qn, ptr %i.ac, align 4, !alias.scope !171, !noalias !174
  br label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit

bb.cg:                                            ; preds = %bb.bu
  %i.qo = load i64, ptr %i.as, align 8, !alias.scope !65, !noalias !97, !noundef !4 ; 7 uses
  %i.qp = load ptr, ptr %i.al, align 8, !alias.scope !65, !noalias !97, !nonnull !4, !noundef !4 ; 2 uses
  %i.qq = load i64, ptr %i.y, align 8, !alias.scope !65, !noalias !97, !noundef !4 ; 7 uses
  %i.qr = icmp eq i64 %i.qo, 0
  br i1 %i.qr, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.not.i227 = icmp ult i64 %i.qo, %i.qq
  br i1 %.not.i227, label %bb.ci, label %.split.i

.split.i:                                         ; preds = %bb.ch
  %i.qs = icmp eq i64 %i.qo, %i.qq
  br i1 %i.qs, label %bb.ck, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qo
  %i.qu = load i8, ptr %i.qt, align 1, !alias.scope !193, !noalias !68, !noundef !4
  %i.qv = icmp sgt i8 %i.qu, -65
  br i1 %i.qv, label %bb.ck, label %bb.cl

bb.cj:                                            ; preds = %bb.bu
  %i.qw = call fastcc noundef zeroext i1 @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer19flush_line_suffixes(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 %i.au) ; 0 uses
  br label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer13print_element.exit

bb.ck:                                            ; preds = %bb.ci, %.split.i, %bb.cg
  %i.qx = icmp eq i64 %i.qq, %i.qo
  br i1 %i.qx, label %bb.ct, label %bb.cm

bb.cl:                                            ; preds = %bb.ci, %.split.i
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.qp, i64 noundef %i.qq, i64 noundef %i.qo, i64 noundef %i.qq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19, !noalias !68
  unreachable

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.qy = load i32, ptr %i.am, align 8, !range !85, !alias.scope !196, !noalias !68, !noundef !4
  %i.qz = load i32, ptr %i.an, align 4, !alias.scope !196, !noalias !68 ; 2 uses
  store i32 0, ptr %i.am, align 8, !alias.scope !196, !noalias !68
  %i.ra = trunc nuw i32 %i.qy to i1
  br i1 %i.ra, label %bb.cn, label %_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer11push_marker.exit236

bb.cn:                                            ; preds = %bb.cm
  %i.rb = icmp ugt i64 %i.qq, 4294967295
  %i.rc = shl nuw i64 %i.qq, 32
  %.sroa.09.0.insert.insert.i.i229 = select i1 %i.rb, i64 513, i64 %i.rc ; 2 uses
  %i.rd = trunc i64 %.sroa.09.0.insert.insert.i.i229 to i1
  br i1 %i.rd, label %bb.co, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i230, !prof !62

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !199
  store i8 2, ptr %i.b, align 1, !noalias !199
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #19, !noalias !199
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i230: ; preds = %bb.cn
  %.sroa.6.0.extract.shift.i.i.i231 = lshr i64 %.sroa.09.0.insert.insert.i.i229, 32
  %.sroa.6.0.extract.trunc.i.i.i232 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i231 to i32 ; 2 uses
  %i.re = load i64, ptr %i.ap, align 8, !alias.scope !196, !noalias !68, !noundef !4 ; 5 uses
  %.not.i233 = icmp eq i64 %i.re, 0
  br i1 %.not.i233, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i230
  %i.rf = load ptr, ptr %i.aq, align 8, !alias.scope !196, !noalias !68, !nonnull !4, !noundef !4
  %i.rg = getelementptr [8 x i8], ptr %i.rf, i64 %i.re ; 2 uses
  %i.rh = getelementptr i8, ptr %i.rg, i64 -8
  %i.ri = load i32, ptr %i.rh, align 4, !noalias !199, !noundef !4
  %i.rj = icmp eq i32 %i.ri, %i.qz
  br i1 %i.rj, label %bb.cq, label %bb.cr
end_hunk_0
begin_hunk_1_@_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer17print_with_indent:bb.a
  br label %bb.p

bb.v:                                             ; preds = %bb.c, %.noexc205, %bb.r, %.noexc204
  %.sroa.028.2 = phi i8 [ 0, %bb.c ], [ 1, %.noexc205 ], [ 1, %bb.r ], [ 1, %.noexc204 ] ; 14 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 12 uses
  store i8 0, ptr %i.be, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 186 ; 11 uses
  store i16 %3, ptr %.sroa.616.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.sroa.555.0.insert.ext = zext i16 %3 to i32
  %.sroa.555.0.insert.shift = shl nuw i32 %.sroa.555.0.insert.ext, 16
  %.sroa.03.0.insert.ext.i = zext i32 %.sroa.555.0.insert.shift to i48
  %.sroa.03.0.insert.insert.i = or disjoint i48 %.sroa.03.0.insert.ext.i, 4294967296
  invoke void @_RNvMs0_NtNtCs7Ma6rQP8bRy_14ruff_formatter7printer10call_stackNtB5_14PrintCallStack3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i48 %.sroa.03.0.insert.insert.i)
          to label %bb.x unwind label %bb.b

.body:                                            ; preds = %bb.hc, %bb.fk, %bb.w, %.loopexit.split-lp
  %.pn69 = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.aaj, %bb.fk ], [ %i.bf, %bb.w ], [ %i.acw, %bb.hc ]
  %.sroa.034.2 = phi i8 [ 1, %.loopexit.split-lp ], [ 1, %bb.fk ], [ %.sroa.034.3, %bb.w ], [ 0, %bb.hc ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ma6rQP8bRy_14ruff_formatter7printer10call_stack14PrintCallStackEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.q) #18
          to label %.body468 unwind label %bb.t

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtB4_5slice4iter4IterNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEEEB1B_.exit.i484, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtB4_5slice4iter4IterNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEEEB1B_.exit.i, %bb.x
  %.sroa.034.3 = phi i8 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtB4_5slice4iter4IterNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEEEB1B_.exit.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtB4_5slice4iter4IterNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEEEB1B_.exit.i484 ], [ 1, %bb.x ]
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.bg, align 8, !nonnull !4, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val206 = load i64, ptr %i.bh, align 8, !noundef !4
  invoke void @_RNvMNtNtCs7Ma6rQP8bRy_14ruff_formatter7printer5queueNtB2_10PrintQueue3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull align 8 %.val, i64 noundef %.val206)
          to label %.preheader655 unwind label %bb.w

.preheader655:                                    ; preds = %bb.x
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 11 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 49 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 188 ; 24 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 220 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.5.0..sroa_idx.i656.i = getelementptr inbounds nuw i8, ptr %1, i64 185 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 218 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 17 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 172 ; 9 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 21 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 16 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 16 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 219 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader655
  %i.cl = invoke noundef align 8 ptr @_RNvXs_NtNtCs7Ma6rQP8bRy_14ruff_formatter7printer5queueNtB4_10PrintQueueNtB4_5Queue3pop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 33 uses

.loopexit:                                        ; preds = %.lr.ph695
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.aj
  %lpad.loopexit622 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph690
  %lpad.loopexit626 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.co
  %lpad.loopexit628 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph685
  %lpad.loopexit632 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.au
  %lpad.loopexit634 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bl
  %lpad.loopexit637 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph680.a
  %lpad.loopexit640 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bf
  %lpad.loopexit643 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cb
  %lpad.loopexit646 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph676
  %lpad.loopexit650 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bv
  %lpad.loopexit652 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc137.invoke, %.invoke, %.backedge, %bb.fi, %bb.z, %bb.ab, %bb.am, %bb.ax, %bb.bm, %bb.bn, %.noexc114, %bb.cc, %bb.cg, %switch.lookup, %bb.dn, %.noexc150, %bb.eg, %bb.ew, %.noexc188, %.noexc189, %.noexc192, %bb.fc, %bb.fd, %bb.fe, %.noexc201, %bb.fg, %.noexc190, %bb.eb, %.noexc158, %bb.ds, %bb.ai, %.noexc79, %bb.at, %.noexc89, %bb.be, %bb.bh, %bb.bu, %bb.bx, %bb.cn, %.noexc120, %bb.da, %.noexc130, %bb.dh, %.noexc134, %bb.dv, %bb.en
  %lpad.loopexit656 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke837, %bb.ct, %bb.el, %bb.dx, %bb.ha
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit622, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit626, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit628, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit632, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit634, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit637, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit640, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit643, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit646, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit650, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit652, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit656, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ma6rQP8bRy_14ruff_formatter7printer5queue10PrintQueueEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.p) #18
          to label %.body unwind label %bb.t

bb.y:                                             ; preds = %.backedge
  %.not64 = icmp eq ptr %i.cl, null
  br i1 %.not64, label %bb.fi, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.cm = invoke i48 @_RNvYNtNtNtCs7Ma6rQP8bRy_14ruff_formatter7printer10call_stack14PrintCallStackNtB4_9CallStack3topB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 36 uses

.noexc:                                           ; preds = %bb.z
  %i.cn = load i8, ptr %i.cl, align 8, !range !52, !noalias !245, !noundef !4
  switch i8 %i.cn, label %default.unreachable [
    i8 0, label %bb.aa
    i8 1, label %.noexc87
    i8 2, label %.backedge.backedge
    i8 3, label %bb.ak
    i8 4, label %bb.al
    i8 5, label %bb.aw
    i8 6, label %bb.bm
    i8 7, label %.invoke
    i8 8, label %.noexc114
    i8 9, label %bb.cc
    i8 10, label %bb.cd
  ]

default.unreachable:                              ; preds = %bb.cd, %.noexc
  unreachable

bb.aa:                                            ; preds = %.noexc
  %.sroa.0.0.copyload.i688.i = load i8, ptr %i.be, align 8, !alias.scope !248, !noalias !251
  %.sroa.53.0.copyload.i690.i = load i16, ptr %.sroa.616.0..sroa_idx, align 2, !alias.scope !248, !noalias !251 ; 4 uses
  %i.co = trunc nuw i8 %.sroa.0.0.copyload.i688.i to i1 ; 2 uses
  %i.cp = icmp ne i16 %.sroa.53.0.copyload.i690.i, 0
  %or.cond.not.i691.i = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond.not.i691.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.4.0.copyload.i693.i = load i8, ptr %.sroa.5.0..sroa_idx.i656.i, align 1, !alias.scope !248, !noalias !251
  store i8 0, ptr %i.be, align 8, !alias.scope !248, !noalias !251
  store i16 0, ptr %.sroa.616.0..sroa_idx, align 2, !alias.scope !248, !noalias !251
  %.sroa.4.0.copyload..i694.i = select i1 %i.co, i8 %.sroa.4.0.copyload.i693.i, i8 0 ; 3 uses
  %i.cq = load i8, ptr %i.cb, align 2, !range !61, !alias.scope !248, !noalias !251, !noundef !4 ; 2 uses
  %i.cr = zext i8 %i.cq to i32
  %i.cs = zext i16 %.sroa.53.0.copyload.i690.i to i32
  %i.ct = mul nuw nsw i32 %i.cr, %i.cs
  %i.cu = zext i8 %.sroa.4.0.copyload..i694.i to i32
  %i.cv = add nuw nsw i32 %i.ct, %i.cu
  %i.cw = zext i16 %.sroa.53.0.copyload.i690.i to i64
  %i.cx = zext i8 %.sroa.4.0.copyload..i694.i to i64 ; 2 uses
  %i.cy = load i8, ptr %i.by, align 4, !range !77, !alias.scope !248, !noalias !251, !noundef !4
  %i.cz = trunc nuw i8 %i.cy to i1                ; 2 uses
  %narrow625 = select i1 %i.cz, i8 %i.cq, i8 1
  %4 = zext i8 %narrow625 to i64
  %.sroa.011.0.i696.i = mul nuw nsw i64 %4, %i.cw ; 2 uses
  %i.da = add nuw nsw i64 %.sroa.011.0.i696.i, %i.cx
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef %i.da)
          to label %.noexc78.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc78.preheader:                               ; preds = %bb.ab
  %.not705.a = icmp eq i16 %.sroa.53.0.copyload.i690.i, 0
  br i1 %.not705.a, label %.preheader, label %.lr.ph693

.lr.ph693:                                        ; preds = %.noexc78.preheader
  %i.db = select i1 %i.cz, i8 32, i8 9
  %.pre744.a = load i64, ptr %i.bq, align 8, !alias.scope !253
  br label %bb.aj

bb.ac:                                            ; preds = %._crit_edge696, %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.dc = load i32, ptr %i.cd, align 8, !range !85, !alias.scope !256, !noundef !4
  %i.dd = load i32, ptr %i.ce, align 4, !alias.scope !256 ; 2 uses
  store i32 0, ptr %i.cd, align 8, !alias.scope !256
  %i.de = trunc nuw i32 %i.dc to i1
  br i1 %i.de, label %bb.ad, label %.noexc79

bb.ad:                                            ; preds = %bb.ac
  %i.df = load i64, ptr %i.bq, align 8, !alias.scope !256, !noundef !4 ; 2 uses
  %i.dg = icmp ugt i64 %i.df, 4294967295
  %i.dh = shl nuw i64 %i.df, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.dg, i64 513, i64 %i.dh ; 2 uses
  %i.di = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.di, label %bb.ae, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !62

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !256
  br label %.invoke837

.invoke837:                                       ; preds = %bb.gw, %bb.dd, %bb.cw, %bb.cj, %bb.bq, %bb.ba, %bb.ap, %bb.ae
  %.sink = phi ptr [ %i.c, %bb.gw ], [ %i.f, %bb.dd ], [ %i.g, %bb.cw ], [ %i.h, %bb.cj ], [ %i.i, %bb.bq ], [ %i.j, %bb.ba ], [ %i.k, %bb.ap ], [ %i.l, %bb.ae ] ; 2 uses
  store i8 2, ptr %.sink, align 1, !noalias !4
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %.sink, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #19
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke837
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.ad
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.dj = load i64, ptr %i.cg, align 8, !alias.scope !256, !noundef !4 ; 5 uses
  %.not.i256 = icmp eq i64 %i.dj, 0
  br i1 %.not.i256, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %i.dk = load ptr, ptr %i.ch, align 8, !alias.scope !256, !nonnull !4, !noundef !4
  %i.dl = getelementptr [8 x i8], ptr %i.dk, i64 %i.dj ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 -8
  %i.dn = load i32, ptr %i.dm, align 4, !noalias !256, !noundef !4
  %i.do = icmp eq i32 %i.dn, %i.dd
  br i1 %i.do, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dp = getelementptr i8, ptr %i.dl, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !noalias !256, !noundef !4
  %.not3.i = icmp eq i32 %i.dq, %.sroa.6.0.extract.trunc.i.i.i
  br i1 %.not3.i, label %.noexc79, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %i.dr = load i64, ptr %i.cf, align 8, !range !87, !alias.scope !259, !noundef !4
  %i.ds = icmp eq i64 %i.dj, %i.dr
  br i1 %i.ds, label %bb.ai, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8grow_oneBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i: ; preds = %bb.ai, %bb.ah
  %i.dt = load ptr, ptr %i.ch, align 8, !alias.scope !259, !nonnull !4, !noundef !4
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dj ; 2 uses
  store i32 %i.dd, ptr %i.du, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store i32 %.sroa.6.0.extract.trunc.i.i.i, ptr %i.dv, align 4
  %i.dw = add i64 %i.dj, 1
  store i64 %i.dw, ptr %i.cg, align 8, !alias.scope !259
  br label %.noexc79

.preheader:                                       ; preds = %.noexc80, %.noexc78.preheader
  %.not706.a = icmp eq i8 %.sroa.4.0.copyload..i694.i, 0
  br i1 %.not706.a, label %._crit_edge696, label %.lr.ph695.preheader

.lr.ph695.preheader:                              ; preds = %.preheader
  %.pre745.a = load i64, ptr %i.bq, align 8, !alias.scope !262
  br label %.lr.ph695

bb.aj:                                            ; preds = %.lr.ph693, %.noexc80
  %i.dx = phi i64 [ %.pre744.a, %.lr.ph693 ], [ %i.ec, %.noexc80 ] ; 3 uses
  %.sroa.024.0.i697.i692 = phi i64 [ 0, %.lr.ph693 ], [ %i.dz, %.noexc80 ]
  %i.dy = icmp sgt i64 %i.dx, -1
  call void @llvm.assume(i1 %i.dy)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef 1)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit

.noexc80:                                         ; preds = %bb.aj
  %i.dz = add nuw nsw i64 %.sroa.024.0.i697.i692, 1 ; 2 uses
  %i.ea = load ptr, ptr %i.cc, align 8, !alias.scope !253, !nonnull !4, !noundef !4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dx
  store i8 %i.db, ptr %i.eb, align 1
  %i.ec = add nuw i64 %i.dx, 1                    ; 2 uses
  store i64 %i.ec, ptr %i.bq, align 8, !alias.scope !253
  %exitcond735.not = icmp eq i64 %i.dz, %.sroa.011.0.i696.i
  br i1 %exitcond735.not, label %.preheader, label %bb.aj

._crit_edge696:                                   ; preds = %.noexc81, %.preheader
  %i.ed = load i32, ptr %i.bu, align 4, !alias.scope !248, !noalias !251, !noundef !4
  %i.ee = add i32 %i.cv, %i.ed
  store i32 %i.ee, ptr %i.bu, align 4, !alias.scope !248, !noalias !251
  br label %bb.ac

.lr.ph695:                                        ; preds = %.lr.ph695.preheader, %.noexc81
  %i.ef = phi i64 [ %i.ek, %.noexc81 ], [ %.pre745.a, %.lr.ph695.preheader ] ; 3 uses
  %.sroa.026.0.i698.i694 = phi i64 [ %i.eh, %.noexc81 ], [ 0, %.lr.ph695.preheader ]
  %i.eg = icmp sgt i64 %i.ef, -1
  call void @llvm.assume(i1 %i.eg)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef 1)
          to label %.noexc81 unwind label %.loopexit

.noexc81:                                         ; preds = %.lr.ph695
  %i.eh = add nuw nsw i64 %.sroa.026.0.i698.i694, 1 ; 2 uses
  %i.ei = load ptr, ptr %i.cc, align 8, !alias.scope !262, !nonnull !4, !noundef !4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ef
  store i8 32, ptr %i.ej, align 1
  %i.ek = add nuw i64 %i.ef, 1                    ; 2 uses
  store i64 %i.ek, ptr %i.bq, align 8, !alias.scope !262
  %exitcond736.not.a = icmp eq i64 %i.eh, %i.cx
  br i1 %exitcond736.not.a, label %._crit_edge696, label %.lr.ph695

.noexc79:                                         ; preds = %bb.ac, %bb.ag, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef 1)
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc82:                                         ; preds = %.noexc79
  %i.el = load i64, ptr %i.bq, align 8, !alias.scope !265, !noundef !4 ; 2 uses
  %i.em = icmp sgt i64 %i.el, -1
  call void @llvm.assume(i1 %i.em)
  %i.en = load ptr, ptr %i.cc, align 8, !alias.scope !265, !nonnull !4, !noundef !4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el
  store i8 32, ptr %i.eo, align 1
  %.pre.i = load i64, ptr %i.bq, align 8, !alias.scope !265
  %i.ep = add i64 %.pre.i, 1
  store i64 %i.ep, ptr %i.bq, align 8, !alias.scope !265
  %i.eq = load i32, ptr %i.bu, align 4, !alias.scope !248, !noalias !251, !noundef !4
  %i.er = add i32 %i.eq, 1
  store i32 %i.er, ptr %i.bu, align 4, !alias.scope !248, !noalias !251
  br label %.backedge.backedge

.noexc87:                                         ; preds = %.noexc
  %i.es = getelementptr inbounds nuw i8, ptr %i.cl, i64 1 ; 2 uses
  %i.et = and i48 %i.cm, 4294967296
  %i.eu = icmp eq i48 %i.et, 0
  br i1 %i.eu, label %bb.ce, label %.noexc117

bb.ak:                                            ; preds = %.noexc
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !noalias !245, !noundef !4
  store i32 1, ptr %i.cd, align 8, !alias.scope !242, !noalias !268
  store i32 %i.ew, ptr %i.ce, align 4, !alias.scope !242, !noalias !268
  br label %.backedge.backedge

bb.al:                                            ; preds = %.noexc
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !245, !nonnull !4, !noundef !4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !245, !noundef !4 ; 5 uses
  %.sroa.0.0.copyload.i676.i = load i8, ptr %i.be, align 8, !alias.scope !269, !noalias !272
  %.sroa.53.0.copyload.i678.i = load i16, ptr %.sroa.616.0..sroa_idx, align 2, !alias.scope !269, !noalias !272 ; 4 uses
  %i.fb = trunc nuw i8 %.sroa.0.0.copyload.i676.i to i1 ; 2 uses
  %i.fc = icmp ne i16 %.sroa.53.0.copyload.i678.i, 0
  %or.cond.not.i679.i = select i1 %i.fb, i1 true, i1 %i.fc
  br i1 %or.cond.not.i679.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.sroa.4.0.copyload.i681.i = load i8, ptr %.sroa.5.0..sroa_idx.i656.i, align 1, !alias.scope !269, !noalias !272
  store i8 0, ptr %i.be, align 8, !alias.scope !269, !noalias !272
  store i16 0, ptr %.sroa.616.0..sroa_idx, align 2, !alias.scope !269, !noalias !272
  %.sroa.4.0.copyload..i682.i = select i1 %i.fb, i8 %.sroa.4.0.copyload.i681.i, i8 0 ; 3 uses
  %i.fd = load i8, ptr %i.cb, align 2, !range !61, !alias.scope !269, !noalias !272, !noundef !4 ; 2 uses
  %i.fe = zext i8 %i.fd to i32
  %i.ff = zext i16 %.sroa.53.0.copyload.i678.i to i32
  %i.fg = mul nuw nsw i32 %i.fe, %i.ff
  %i.fh = zext i8 %.sroa.4.0.copyload..i682.i to i32
  %i.fi = add nuw nsw i32 %i.fg, %i.fh
  %i.fj = zext i16 %.sroa.53.0.copyload.i678.i to i64
  %i.fk = zext i8 %.sroa.4.0.copyload..i682.i to i64 ; 2 uses
  %i.fl = load i8, ptr %i.by, align 4, !range !77, !alias.scope !269, !noalias !272, !noundef !4
  %i.fm = trunc nuw i8 %i.fl to i1                ; 2 uses
  %narrow622 = select i1 %i.fm, i8 %i.fd, i8 1
  %5 = zext i8 %narrow622 to i64
  %.sroa.011.0.i684.i = mul nuw nsw i64 %5, %i.fj ; 2 uses
  %i.fn = add nuw nsw i64 %.sroa.011.0.i684.i, %i.fk
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef %i.fn)
          to label %.noexc88.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc88.preheader:                               ; preds = %bb.am
  %.not701.a = icmp eq i16 %.sroa.53.0.copyload.i678.i, 0
  br i1 %.not701.a, label %.preheader631, label %.lr.ph683

.lr.ph683:                                        ; preds = %.noexc88.preheader
  %i.fo = select i1 %i.fm, i8 32, i8 9
  %.pre740 = load i64, ptr %i.bq, align 8, !alias.scope !274
  br label %bb.au

bb.an:                                            ; preds = %._crit_edge686, %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.fp = load i32, ptr %i.cd, align 8, !range !85, !alias.scope !277, !noundef !4
  %i.fq = load i32, ptr %i.ce, align 4, !alias.scope !277 ; 2 uses
  store i32 0, ptr %i.cd, align 8, !alias.scope !277
  %i.fr = trunc nuw i32 %i.fp to i1
  br i1 %i.fr, label %bb.ao, label %.noexc89

bb.ao:                                            ; preds = %bb.an
  %i.fs = load i64, ptr %i.bq, align 8, !alias.scope !277, !noundef !4 ; 2 uses
  %i.ft = icmp ugt i64 %i.fs, 4294967295
  %i.fu = shl nuw i64 %i.fs, 32
  %.sroa.09.0.insert.insert.i.i269 = select i1 %i.ft, i64 513, i64 %i.fu ; 2 uses
  %i.fv = trunc i64 %.sroa.09.0.insert.insert.i.i269 to i1
  br i1 %i.fv, label %bb.ap, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i270, !prof !62

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !277
  br label %.invoke837

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i270: ; preds = %bb.ao
  %.sroa.6.0.extract.shift.i.i.i271 = lshr i64 %.sroa.09.0.insert.insert.i.i269, 32
  %.sroa.6.0.extract.trunc.i.i.i272 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i271 to i32 ; 2 uses
  %i.fw = load i64, ptr %i.cg, align 8, !alias.scope !277, !noundef !4 ; 5 uses
  %.not.i273 = icmp eq i64 %i.fw, 0
  br i1 %.not.i273, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i270
  %i.fx = load ptr, ptr %i.ch, align 8, !alias.scope !277, !nonnull !4, !noundef !4
  %i.fy = getelementptr [8 x i8], ptr %i.fx, i64 %i.fw ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 -8
  %i.ga = load i32, ptr %i.fz, align 4, !noalias !277, !noundef !4
  %i.gb = icmp eq i32 %i.ga, %i.fq
  br i1 %i.gb, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gc = getelementptr i8, ptr %i.fy, i64 -4
  %i.gd = load i32, ptr %i.gc, align 4, !noalias !277, !noundef !4
  %.not3.i275 = icmp eq i32 %i.gd, %.sroa.6.0.extract.trunc.i.i.i272
  br i1 %.not3.i275, label %.noexc89, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i270
  %i.ge = load i64, ptr %i.cf, align 8, !range !87, !alias.scope !280, !noundef !4
  %i.gf = icmp eq i64 %i.fw, %i.ge
  br i1 %i.gf, label %bb.at, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i274

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8grow_oneBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i274 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i274: ; preds = %bb.at, %bb.as
  %i.gg = load ptr, ptr %i.ch, align 8, !alias.scope !280, !nonnull !4, !noundef !4
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.fw ; 2 uses
  store i32 %i.fq, ptr %i.gh, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %.sroa.6.0.extract.trunc.i.i.i272, ptr %i.gi, align 4
  %i.gj = add i64 %i.fw, 1
  store i64 %i.gj, ptr %i.cg, align 8, !alias.scope !280
  br label %.noexc89

.preheader631:                                    ; preds = %.noexc90, %.noexc88.preheader
  %.not702.a = icmp eq i8 %.sroa.4.0.copyload..i682.i, 0
  br i1 %.not702.a, label %._crit_edge686, label %.lr.ph685.preheader

.lr.ph685.preheader:                              ; preds = %.preheader631
  %.pre741.a = load i64, ptr %i.bq, align 8, !alias.scope !283
  br label %.lr.ph685

bb.au:                                            ; preds = %.lr.ph683, %.noexc90
  %i.gk = phi i64 [ %.pre740, %.lr.ph683 ], [ %i.gp, %.noexc90 ] ; 3 uses
  %.sroa.024.0.i685.i682 = phi i64 [ 0, %.lr.ph683 ], [ %i.gm, %.noexc90 ]
  %i.gl = icmp sgt i64 %i.gk, -1
  call void @llvm.assume(i1 %i.gl)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef 1)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc90:                                         ; preds = %bb.au
  %i.gm = add nuw nsw i64 %.sroa.024.0.i685.i682, 1 ; 2 uses
  %i.gn = load ptr, ptr %i.cc, align 8, !alias.scope !274, !nonnull !4, !noundef !4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gk
  store i8 %i.fo, ptr %i.go, align 1
  %i.gp = add nuw i64 %i.gk, 1                    ; 2 uses
  store i64 %i.gp, ptr %i.bq, align 8, !alias.scope !274
  %exitcond729.not = icmp eq i64 %i.gm, %.sroa.011.0.i684.i
  br i1 %exitcond729.not, label %.preheader631, label %bb.au

._crit_edge686:                                   ; preds = %.noexc91, %.preheader631
  %i.gq = load i32, ptr %i.bu, align 4, !alias.scope !269, !noalias !272, !noundef !4
  %i.gr = add i32 %i.fi, %i.gq
  store i32 %i.gr, ptr %i.bu, align 4, !alias.scope !269, !noalias !272
  br label %bb.an

.lr.ph685:                                        ; preds = %.lr.ph685.preheader, %.noexc91
  %i.gs = phi i64 [ %i.gx, %.noexc91 ], [ %.pre741.a, %.lr.ph685.preheader ] ; 3 uses
  %.sroa.026.0.i686.i684 = phi i64 [ %i.gu, %.noexc91 ], [ 0, %.lr.ph685.preheader ]
  %i.gt = icmp sgt i64 %i.gs, -1
  call void @llvm.assume(i1 %i.gt)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef 1)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc91:                                         ; preds = %.lr.ph685
  %i.gu = add nuw nsw i64 %.sroa.026.0.i686.i684, 1 ; 2 uses
  %i.gv = load ptr, ptr %i.cc, align 8, !alias.scope !283, !nonnull !4, !noundef !4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gs
  store i8 32, ptr %i.gw, align 1
  %i.gx = add nuw i64 %i.gs, 1                    ; 2 uses
  store i64 %i.gx, ptr %i.bq, align 8, !alias.scope !283
  %exitcond730.not.a = icmp eq i64 %i.gu, %i.fk
  br i1 %exitcond730.not.a, label %._crit_edge686, label %.lr.ph685

.noexc89:                                         ; preds = %bb.an, %bb.ar, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i274
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef %i.fa)
          to label %.noexc285 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc285:                                        ; preds = %.noexc89
  %i.gy = load i64, ptr %i.bq, align 8, !alias.scope !286, !noundef !4 ; 3 uses
  %i.gz = icmp sgt i64 %i.gy, -1
  call void @llvm.assume(i1 %i.gz)
  %.not.i283 = icmp eq i64 %i.fa, 0
  br i1 %.not.i283, label %.noexc92, label %bb.av

bb.av:                                            ; preds = %.noexc285
  %i.ha = load ptr, ptr %i.cc, align 8, !alias.scope !286, !nonnull !4, !noundef !4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hb, ptr nonnull readonly align 1 %i.ey, i64 %i.fa, i1 false)
  %.pre.i284 = load i64, ptr %i.bq, align 8, !alias.scope !286
  br label %.noexc92

.noexc92:                                         ; preds = %bb.av, %.noexc285
  %i.hc = phi i64 [ %.pre.i284, %bb.av ], [ %i.gy, %.noexc285 ]
  %i.hd = add i64 %i.hc, %i.fa
  store i64 %i.hd, ptr %i.bq, align 8, !alias.scope !286
  %i.he = trunc i64 %i.fa to i32
  %i.hf = load i32, ptr %i.bu, align 4, !alias.scope !269, !noalias !272, !noundef !4
  %i.hg = add i32 %i.hf, %i.he
  store i32 %i.hg, ptr %i.bu, align 4, !alias.scope !269, !noalias !272
  br label %.backedge.backedge

bb.aw:                                            ; preds = %.noexc
  %i.hh = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !245, !nonnull !4, !noundef !4 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.hk = load i64, ptr %i.hj, align 8, !noalias !245, !noundef !4 ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !noalias !245, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload.i664.i = load i8, ptr %i.be, align 8, !alias.scope !289, !noalias !292
  %.sroa.53.0.copyload.i666.i = load i16, ptr %.sroa.616.0..sroa_idx, align 2, !alias.scope !289, !noalias !292 ; 4 uses
  %i.hn = trunc nuw i8 %.sroa.0.0.copyload.i664.i to i1 ; 2 uses
  %i.ho = icmp ne i16 %.sroa.53.0.copyload.i666.i, 0
  %or.cond.not.i667.i = select i1 %i.hn, i1 true, i1 %i.ho
  br i1 %or.cond.not.i667.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %.sroa.4.0.copyload.i669.i = load i8, ptr %.sroa.5.0..sroa_idx.i656.i, align 1, !alias.scope !289, !noalias !292
  store i8 0, ptr %i.be, align 8, !alias.scope !289, !noalias !292
  store i16 0, ptr %.sroa.616.0..sroa_idx, align 2, !alias.scope !289, !noalias !292
  %.sroa.4.0.copyload..i670.i = select i1 %i.hn, i8 %.sroa.4.0.copyload.i669.i, i8 0 ; 3 uses
  %i.hp = load i8, ptr %i.cb, align 2, !range !61, !alias.scope !289, !noalias !292, !noundef !4 ; 2 uses
  %i.hq = zext i8 %i.hp to i32
  %i.hr = zext i16 %.sroa.53.0.copyload.i666.i to i32
  %i.hs = mul nuw nsw i32 %i.hq, %i.hr
  %i.ht = zext i8 %.sroa.4.0.copyload..i670.i to i32
  %i.hu = add nuw nsw i32 %i.hs, %i.ht
  %i.hv = zext i16 %.sroa.53.0.copyload.i666.i to i64
  %i.hw = zext i8 %.sroa.4.0.copyload..i670.i to i64 ; 2 uses
  %i.hx = load i8, ptr %i.by, align 4, !range !77, !alias.scope !289, !noalias !292, !noundef !4
  %i.hy = trunc nuw i8 %i.hx to i1                ; 2 uses
  %narrow621 = select i1 %i.hy, i8 %i.hp, i8 1
  %6 = zext i8 %narrow621 to i64
  %.sroa.011.0.i672.i = mul nuw nsw i64 %6, %i.hv ; 2 uses
  %i.hz = add nuw nsw i64 %.sroa.011.0.i672.i, %i.hw
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef %i.hz)
          to label %.noexc96.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc96.preheader:                               ; preds = %bb.ax
  %.not699 = icmp eq i16 %.sroa.53.0.copyload.i666.i, 0
  br i1 %.not699, label %.preheader639, label %.lr.ph678

.lr.ph678:                                        ; preds = %.noexc96.preheader
  %i.ia = select i1 %i.hy, i8 32, i8 9
  %.pre738 = load i64, ptr %i.bq, align 8, !alias.scope !294
  br label %bb.bf

bb.ay:                                            ; preds = %._crit_edge681, %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.ib = load i32, ptr %i.cd, align 8, !range !85, !alias.scope !297, !noundef !4
  %i.ic = load i32, ptr %i.ce, align 4, !alias.scope !297 ; 2 uses
  store i32 0, ptr %i.cd, align 8, !alias.scope !297
  %i.id = trunc nuw i32 %i.ib to i1
  br i1 %i.id, label %bb.az, label %.noexc97

bb.az:                                            ; preds = %bb.ay
  %i.ie = load i64, ptr %i.bq, align 8, !alias.scope !297, !noundef !4 ; 2 uses
  %i.if = icmp ugt i64 %i.ie, 4294967295
  %i.ig = shl nuw i64 %i.ie, 32
  %.sroa.09.0.insert.insert.i.i297 = select i1 %i.if, i64 513, i64 %i.ig ; 2 uses
  %i.ih = trunc i64 %.sroa.09.0.insert.insert.i.i297 to i1
  br i1 %i.ih, label %bb.ba, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i298, !prof !62

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !297
  br label %.invoke837

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i298: ; preds = %bb.az
  %.sroa.6.0.extract.shift.i.i.i299 = lshr i64 %.sroa.09.0.insert.insert.i.i297, 32
  %.sroa.6.0.extract.trunc.i.i.i300 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i299 to i32 ; 2 uses
  %i.ii = load i64, ptr %i.cg, align 8, !alias.scope !297, !noundef !4 ; 5 uses
  %.not.i301 = icmp eq i64 %i.ii, 0
  br i1 %.not.i301, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i298
  %i.ij = load ptr, ptr %i.ch, align 8, !alias.scope !297, !nonnull !4, !noundef !4
  %i.ik = getelementptr [8 x i8], ptr %i.ij, i64 %i.ii ; 2 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 -8
  %i.im = load i32, ptr %i.il, align 4, !noalias !297, !noundef !4
  %i.in = icmp eq i32 %i.im, %i.ic
  br i1 %i.in, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.io = getelementptr i8, ptr %i.ik, i64 -4
  %i.ip = load i32, ptr %i.io, align 4, !noalias !297, !noundef !4
  %.not3.i303 = icmp eq i32 %i.ip, %.sroa.6.0.extract.trunc.i.i.i300
  br i1 %.not3.i303, label %.noexc97, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i298
  %i.iq = load i64, ptr %i.cf, align 8, !range !87, !alias.scope !300, !noundef !4
  %i.ir = icmp eq i64 %i.ii, %i.iq
  br i1 %i.ir, label %bb.be, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i302

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8grow_oneBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i302 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i302: ; preds = %bb.be, %bb.bd
  %i.is = load ptr, ptr %i.ch, align 8, !alias.scope !300, !nonnull !4, !noundef !4
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.ii ; 2 uses
  store i32 %i.ic, ptr %i.it, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  store i32 %.sroa.6.0.extract.trunc.i.i.i300, ptr %i.iu, align 4
  %i.iv = add i64 %i.ii, 1
  store i64 %i.iv, ptr %i.cg, align 8, !alias.scope !300
  br label %.noexc97

.preheader639:                                    ; preds = %.noexc98, %.noexc96.preheader
  %.not700 = icmp eq i8 %.sroa.4.0.copyload..i670.i, 0
  br i1 %.not700, label %._crit_edge681, label %.lr.ph680.preheader.a

.lr.ph680.preheader.a:                            ; preds = %.preheader639
  %.pre739 = load i64, ptr %i.bq, align 8, !alias.scope !303
  br label %.lr.ph680.a

bb.bf:                                            ; preds = %.lr.ph678, %.noexc98
  %i.iw = phi i64 [ %.pre738, %.lr.ph678 ], [ %i.jb, %.noexc98 ] ; 3 uses
  %.sroa.024.0.i673.i677 = phi i64 [ 0, %.lr.ph678 ], [ %i.iy, %.noexc98 ]
  %i.ix = icmp sgt i64 %i.iw, -1
  call void @llvm.assume(i1 %i.ix)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef 1)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc98:                                         ; preds = %bb.bf
  %i.iy = add nuw nsw i64 %.sroa.024.0.i673.i677, 1 ; 2 uses
  %i.iz = load ptr, ptr %i.cc, align 8, !alias.scope !294, !nonnull !4, !noundef !4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.iw
  store i8 %i.ia, ptr %i.ja, align 1
  %i.jb = add nuw i64 %i.iw, 1                    ; 2 uses
  store i64 %i.jb, ptr %i.bq, align 8, !alias.scope !294
  %exitcond726.not = icmp eq i64 %i.iy, %.sroa.011.0.i672.i
  br i1 %exitcond726.not, label %.preheader639, label %bb.bf

._crit_edge681:                                   ; preds = %.noexc99, %.preheader639
  %i.jc = load i32, ptr %i.bu, align 4, !alias.scope !289, !noalias !292, !noundef !4
  %i.jd = add i32 %i.hu, %i.jc
  store i32 %i.jd, ptr %i.bu, align 4, !alias.scope !289, !noalias !292
  br label %bb.ay

.lr.ph680.a:                                      ; preds = %.lr.ph680.preheader.a, %.noexc99
  %i.je = phi i64 [ %i.jj, %.noexc99 ], [ %.pre739, %.lr.ph680.preheader.a ] ; 3 uses
  %.sroa.026.0.i674.i679 = phi i64 [ %i.jg, %.noexc99 ], [ 0, %.lr.ph680.preheader.a ]
  %i.jf = icmp sgt i64 %i.je, -1
  call void @llvm.assume(i1 %i.jf)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef 1)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc99:                                         ; preds = %.lr.ph680.a
  %i.jg = add nuw nsw i64 %.sroa.026.0.i674.i679, 1 ; 2 uses
  %i.jh = load ptr, ptr %i.cc, align 8, !alias.scope !303, !nonnull !4, !noundef !4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.je
  store i8 32, ptr %i.ji, align 1
  %i.jj = add nuw i64 %i.je, 1                    ; 2 uses
  store i64 %i.jj, ptr %i.bq, align 8, !alias.scope !303
  %exitcond727.not = icmp eq i64 %i.jg, %i.hw
  br i1 %exitcond727.not, label %._crit_edge681, label %.lr.ph680.a

.noexc97:                                         ; preds = %bb.ay, %bb.bc, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i302
  %i.jk = icmp eq i32 %i.hm, 0
  br i1 %i.jk, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.noexc97
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hk ; 4 uses
  br label %.noexc103

bb.bh:                                            ; preds = %.noexc97
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef %i.hk)
          to label %.noexc317 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc317:                                        ; preds = %bb.bh
  %i.jm = load i64, ptr %i.bq, align 8, !alias.scope !306, !noundef !4 ; 3 uses
  %i.jn = icmp sgt i64 %i.jm, -1
  call void @llvm.assume(i1 %i.jn)
  %.not.i315 = icmp eq i64 %i.hk, 0
  br i1 %.not.i315, label %.noexc101, label %bb.bi

bb.bi:                                            ; preds = %.noexc317
  %i.jo = load ptr, ptr %i.cc, align 8, !alias.scope !306, !nonnull !4, !noundef !4
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jp, ptr nonnull readonly align 1 %i.hi, i64 %i.hk, i1 false)
  %.pre.i316 = load i64, ptr %i.bq, align 8, !alias.scope !306
  br label %.noexc101

.noexc101:                                        ; preds = %bb.bi, %.noexc317
  %i.jq = phi i64 [ %.pre.i316, %bb.bi ], [ %i.jm, %.noexc317 ]
  %i.jr = add i64 %i.jq, %i.hk
  store i64 %i.jr, ptr %i.bq, align 8, !alias.scope !306
  %i.js = add i32 %i.hm, -1
  %i.jt = load i32, ptr %i.bu, align 4, !alias.scope !289, !noalias !292, !noundef !4
  %i.ju = add i32 %i.js, %i.jt
  store i32 %i.ju, ptr %i.bu, align 4, !alias.scope !289, !noalias !292
  br label %.backedge.backedge

.noexc103:                                        ; preds = %bb.bl, %bb.bg
  %.sroa.0559.0 = phi ptr [ %i.hi, %bb.bg ], [ %.sroa.0559.1.ph, %bb.bl ] ; 6 uses
  %i.jv = icmp eq ptr %.sroa.0559.0, %i.jl
  br i1 %i.jv, label %.backedge.backedge, label %bb.bj

bb.bj:                                            ; preds = %.noexc103
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0559.0, i64 1 ; 3 uses
  %i.jx = load i8, ptr %.sroa.0559.0, align 1, !noalias !309, !noundef !4 ; 5 uses
  %i.jy = icmp sgt i8 %i.jx, -1
  br i1 %i.jy, label %bb.bk, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i319

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i319: ; preds = %bb.bj
  %i.jz = and i8 %i.jx, 31
  %i.ka = zext nneg i8 %i.jz to i32               ; 3 uses
  %i.kb = icmp ne ptr %i.jw, %i.jl
  call void @llvm.assume(i1 %i.kb)
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0559.0, i64 2 ; 3 uses
  %i.kd = load i8, ptr %i.jw, align 1, !noalias !309, !noundef !4
  %i.ke = shl nuw nsw i32 %i.ka, 6
  %i.kf = and i8 %i.kd, 63
  %i.kg = zext nneg i8 %i.kf to i32               ; 2 uses
  %i.kh = or disjoint i32 %i.ke, %i.kg
  %i.ki = icmp samesign ugt i8 %i.jx, -33
  br i1 %i.ki, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i322, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.kj = zext nneg i8 %i.jx to i32
  br label %bb.bl

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i322: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i319
  %i.kk = icmp ne ptr %i.kc, %i.jl
  call void @llvm.assume(i1 %i.kk)
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0559.0, i64 3 ; 3 uses
  %i.km = load i8, ptr %i.kc, align 1, !noalias !309, !noundef !4
  %i.kn = shl nuw nsw i32 %i.kg, 6
  %i.ko = and i8 %i.km, 63
  %i.kp = zext nneg i8 %i.ko to i32
  %i.kq = or disjoint i32 %i.kn, %i.kp            ; 2 uses
  %i.kr = shl nuw nsw i32 %i.ka, 12
  %i.ks = or disjoint i32 %i.kq, %i.kr
  %i.kt = icmp samesign ugt i8 %i.jx, -17
  br i1 %i.kt, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i323, label %bb.bl

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i323: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i322
  %i.ku = icmp ne ptr %i.kl, %i.jl
  call void @llvm.assume(i1 %i.ku)
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0559.0, i64 4
  %i.kw = load i8, ptr %i.kl, align 1, !noalias !309, !noundef !4
  %i.kx = shl nuw nsw i32 %i.ka, 18
  %i.ky = and i32 %i.kx, 1835008
  %i.kz = shl nuw nsw i32 %i.kq, 6
  %i.la = and i8 %i.kw, 63
  %i.lb = zext nneg i8 %i.la to i32
  %i.lc = or disjoint i32 %i.kz, %i.lb
  %i.ld = or disjoint i32 %i.lc, %i.ky
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i319, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i323, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i322
  %.sroa.0559.1.ph = phi ptr [ %i.kc, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i319 ], [ %i.kl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i322 ], [ %i.kv, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i323 ], [ %i.jw, %bb.bk ]
  %.sroa.4.0.i320.ph = phi i32 [ %i.kh, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i319 ], [ %i.ks, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i322 ], [ %i.ld, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i323 ], [ %i.kj, %bb.bk ] ; 2 uses
  %i.le = icmp samesign ult i32 %.sroa.4.0.i320.ph, 1114112
  call void @llvm.assume(i1 %i.le)
  invoke fastcc void @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer10print_char(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i32 noundef %.sroa.4.0.i320.ph)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bm:                                            ; preds = %.noexc
  %i.lf = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.lg = load ptr, ptr %i.bz, align 8, !alias.scope !242, !noalias !268, !nonnull !4, !noundef !4
  %i.lh = load i64, ptr %i.ca, align 8, !alias.scope !242, !noalias !268, !noundef !4
  %i.li = invoke { ptr, i64 } @_RNvMs0_NtCs7Ma6rQP8bRy_14ruff_formatter11source_codeNtB5_15SourceCodeSlice4text(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.lf, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lg, i64 noundef %i.lh)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc104:                                        ; preds = %bb.bm
  %i.lj = extractvalue { ptr, i64 } %i.li, 0      ; 4 uses
  %i.lk = extractvalue { ptr, i64 } %i.li, 1      ; 5 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.lm = load i32, ptr %i.ll, align 4, !noalias !245, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload.i652.i = load i8, ptr %i.be, align 8, !alias.scope !312, !noalias !315
  %.sroa.53.0.copyload.i654.i = load i16, ptr %.sroa.616.0..sroa_idx, align 2, !alias.scope !312, !noalias !315 ; 4 uses
  %i.ln = trunc nuw i8 %.sroa.0.0.copyload.i652.i to i1 ; 2 uses
  %i.lo = icmp ne i16 %.sroa.53.0.copyload.i654.i, 0
  %or.cond.not.i655.i = select i1 %i.ln, i1 true, i1 %i.lo
  br i1 %or.cond.not.i655.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.noexc104
  %.sroa.4.0.copyload.i657.i = load i8, ptr %.sroa.5.0..sroa_idx.i656.i, align 1, !alias.scope !312, !noalias !315
  store i8 0, ptr %i.be, align 8, !alias.scope !312, !noalias !315
  store i16 0, ptr %.sroa.616.0..sroa_idx, align 2, !alias.scope !312, !noalias !315
  %.sroa.4.0.copyload..i658.i = select i1 %i.ln, i8 %.sroa.4.0.copyload.i657.i, i8 0 ; 3 uses
  %i.lp = load i8, ptr %i.cb, align 2, !range !61, !alias.scope !312, !noalias !315, !noundef !4 ; 2 uses
  %i.lq = zext i8 %i.lp to i32
  %i.lr = zext i16 %.sroa.53.0.copyload.i654.i to i32
  %i.ls = mul nuw nsw i32 %i.lq, %i.lr
  %i.lt = zext i8 %.sroa.4.0.copyload..i658.i to i32
  %i.lu = add nuw nsw i32 %i.ls, %i.lt
  %i.lv = zext i16 %.sroa.53.0.copyload.i654.i to i64
  %i.lw = zext i8 %.sroa.4.0.copyload..i658.i to i64 ; 2 uses
  %i.lx = load i8, ptr %i.by, align 4, !range !77, !alias.scope !312, !noalias !315, !noundef !4
  %i.ly = trunc nuw i8 %i.lx to i1                ; 2 uses
  %narrow = select i1 %i.ly, i8 %i.lp, i8 1
  %7 = zext i8 %narrow to i64
  %.sroa.011.0.i660.i = mul nuw nsw i64 %7, %i.lv ; 2 uses
  %i.lz = add nuw nsw i64 %.sroa.011.0.i660.i, %i.lw
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef %i.lz)
          to label %.noexc105.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc105.preheader:                              ; preds = %bb.bn
  %.not697 = icmp eq i16 %.sroa.53.0.copyload.i654.i, 0
  br i1 %.not697, label %.preheader649, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc105.preheader
  %i.ma = select i1 %i.ly, i8 32, i8 9
  %.pre = load i64, ptr %i.bq, align 8, !alias.scope !317
  br label %bb.bv

bb.bo:                                            ; preds = %._crit_edge, %.noexc104
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.mb = load i32, ptr %i.cd, align 8, !range !85, !alias.scope !320, !noundef !4
  %i.mc = load i32, ptr %i.ce, align 4, !alias.scope !320 ; 2 uses
  store i32 0, ptr %i.cd, align 8, !alias.scope !320
  %i.md = trunc nuw i32 %i.mb to i1
  br i1 %i.md, label %bb.bp, label %.noexc106

bb.bp:                                            ; preds = %bb.bo
  %i.me = load i64, ptr %i.bq, align 8, !alias.scope !320, !noundef !4 ; 2 uses
  %i.mf = icmp ugt i64 %i.me, 4294967295
  %i.mg = shl nuw i64 %i.me, 32
  %.sroa.09.0.insert.insert.i.i325 = select i1 %i.mf, i64 513, i64 %i.mg ; 2 uses
  %i.mh = trunc i64 %.sroa.09.0.insert.insert.i.i325 to i1
  br i1 %i.mh, label %bb.bq, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i326, !prof !62

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !320
  br label %.invoke837

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i326: ; preds = %bb.bp
  %.sroa.6.0.extract.shift.i.i.i327 = lshr i64 %.sroa.09.0.insert.insert.i.i325, 32
  %.sroa.6.0.extract.trunc.i.i.i328 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i327 to i32 ; 2 uses
  %i.mi = load i64, ptr %i.cg, align 8, !alias.scope !320, !noundef !4 ; 5 uses
  %.not.i329 = icmp eq i64 %i.mi, 0
  br i1 %.not.i329, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i326
  %i.mj = load ptr, ptr %i.ch, align 8, !alias.scope !320, !nonnull !4, !noundef !4
  %i.mk = getelementptr [8 x i8], ptr %i.mj, i64 %i.mi ; 2 uses
  %i.ml = getelementptr i8, ptr %i.mk, i64 -8
  %i.mm = load i32, ptr %i.ml, align 4, !noalias !320, !noundef !4
  %i.mn = icmp eq i32 %i.mm, %i.mc
  br i1 %i.mn, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mo = getelementptr i8, ptr %i.mk, i64 -4
  %i.mp = load i32, ptr %i.mo, align 4, !noalias !320, !noundef !4
  %.not3.i331 = icmp eq i32 %i.mp, %.sroa.6.0.extract.trunc.i.i.i328
  br i1 %.not3.i331, label %.noexc106, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i326
  %i.mq = load i64, ptr %i.cf, align 8, !range !87, !alias.scope !323, !noundef !4
  %i.mr = icmp eq i64 %i.mi, %i.mq
  br i1 %i.mr, label %bb.bu, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i330

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8grow_oneBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i330 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i330: ; preds = %bb.bu, %bb.bt
  %i.ms = load ptr, ptr %i.ch, align 8, !alias.scope !323, !nonnull !4, !noundef !4
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.mi ; 2 uses
  store i32 %i.mc, ptr %i.mt, align 4
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  store i32 %.sroa.6.0.extract.trunc.i.i.i328, ptr %i.mu, align 4
  %i.mv = add i64 %i.mi, 1
  store i64 %i.mv, ptr %i.cg, align 8, !alias.scope !323
  br label %.noexc106

.preheader649:                                    ; preds = %.noexc107, %.noexc105.preheader
  %.not698 = icmp eq i8 %.sroa.4.0.copyload..i658.i, 0
  br i1 %.not698, label %._crit_edge, label %.lr.ph676.preheader

.lr.ph676.preheader:                              ; preds = %.preheader649
  %.pre737 = load i64, ptr %i.bq, align 8, !alias.scope !326
  br label %.lr.ph676

bb.bv:                                            ; preds = %.lr.ph, %.noexc107
  %i.mw = phi i64 [ %.pre, %.lr.ph ], [ %i.nb, %.noexc107 ] ; 3 uses
  %.sroa.024.0.i661.i674 = phi i64 [ 0, %.lr.ph ], [ %i.my, %.noexc107 ]
  %i.mx = icmp sgt i64 %i.mw, -1
  call void @llvm.assume(i1 %i.mx)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef 1)
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc107:                                        ; preds = %bb.bv
  %i.my = add nuw nsw i64 %.sroa.024.0.i661.i674, 1 ; 2 uses
  %i.mz = load ptr, ptr %i.cc, align 8, !alias.scope !317, !nonnull !4, !noundef !4
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.mw
  store i8 %i.ma, ptr %i.na, align 1
  %i.nb = add nuw i64 %i.mw, 1                    ; 2 uses
  store i64 %i.nb, ptr %i.bq, align 8, !alias.scope !317
  %exitcond.not = icmp eq i64 %i.my, %.sroa.011.0.i660.i
  br i1 %exitcond.not, label %.preheader649, label %bb.bv

._crit_edge:                                      ; preds = %.noexc108, %.preheader649
  %i.nc = load i32, ptr %i.bu, align 4, !alias.scope !312, !noalias !315, !noundef !4
  %i.nd = add i32 %i.lu, %i.nc
  store i32 %i.nd, ptr %i.bu, align 4, !alias.scope !312, !noalias !315
  br label %bb.bo

.lr.ph676:                                        ; preds = %.lr.ph676.preheader, %.noexc108
  %i.ne = phi i64 [ %i.nj, %.noexc108 ], [ %.pre737, %.lr.ph676.preheader ] ; 3 uses
  %.sroa.026.0.i662.i675 = phi i64 [ %i.ng, %.noexc108 ], [ 0, %.lr.ph676.preheader ]
  %i.nf = icmp sgt i64 %i.ne, -1
  call void @llvm.assume(i1 %i.nf)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef 1)
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc108:                                        ; preds = %.lr.ph676
  %i.ng = add nuw nsw i64 %.sroa.026.0.i662.i675, 1 ; 2 uses
  %i.nh = load ptr, ptr %i.cc, align 8, !alias.scope !326, !nonnull !4, !noundef !4
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.ne
  store i8 32, ptr %i.ni, align 1
  %i.nj = add nuw i64 %i.ne, 1                    ; 2 uses
  store i64 %i.nj, ptr %i.bq, align 8, !alias.scope !326
  %exitcond724.not = icmp eq i64 %i.ng, %i.lw
  br i1 %exitcond724.not, label %._crit_edge, label %.lr.ph676

.noexc106:                                        ; preds = %bb.bo, %bb.bs, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i330
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lj) ]
  %i.nk = icmp eq i32 %i.lm, 0
  br i1 %i.nk, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.noexc106
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lk ; 4 uses
  br label %.noexc112

bb.bx:                                            ; preds = %.noexc106
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef %i.lk)
          to label %.noexc345 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc345:                                        ; preds = %bb.bx
  %i.nm = load i64, ptr %i.bq, align 8, !alias.scope !329, !noundef !4 ; 3 uses
  %i.nn = icmp sgt i64 %i.nm, -1
  call void @llvm.assume(i1 %i.nn)
  %.not.i343 = icmp eq i64 %i.lk, 0
  br i1 %.not.i343, label %.noexc110, label %bb.by

bb.by:                                            ; preds = %.noexc345
  %i.no = load ptr, ptr %i.cc, align 8, !alias.scope !329, !nonnull !4, !noundef !4
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.np, ptr nonnull readonly align 1 %i.lj, i64 %i.lk, i1 false)
  %.pre.i344 = load i64, ptr %i.bq, align 8, !alias.scope !329
  br label %.noexc110

.noexc110:                                        ; preds = %bb.by, %.noexc345
  %i.nq = phi i64 [ %.pre.i344, %bb.by ], [ %i.nm, %.noexc345 ]
  %i.nr = add i64 %i.nq, %i.lk
  store i64 %i.nr, ptr %i.bq, align 8, !alias.scope !329
  %i.ns = add i32 %i.lm, -1
  %i.nt = load i32, ptr %i.bu, align 4, !alias.scope !312, !noalias !315, !noundef !4
  %i.nu = add i32 %i.ns, %i.nt
  store i32 %i.nu, ptr %i.bu, align 4, !alias.scope !312, !noalias !315
  br label %.backedge.backedge

.noexc112:                                        ; preds = %bb.cb, %bb.bw
  %.sroa.0557.0 = phi ptr [ %i.lj, %bb.bw ], [ %.sroa.0557.1.ph, %bb.cb ] ; 6 uses
  %i.nv = icmp eq ptr %.sroa.0557.0, %i.nl
  br i1 %i.nv, label %.backedge.backedge, label %bb.bz

bb.bz:                                            ; preds = %.noexc112
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.0557.0, i64 1 ; 3 uses
  %i.nx = load i8, ptr %.sroa.0557.0, align 1, !noalias !332, !noundef !4 ; 5 uses
  %i.ny = icmp sgt i8 %i.nx, -1
  br i1 %i.ny, label %bb.ca, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i347

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i347: ; preds = %bb.bz
  %i.nz = and i8 %i.nx, 31
  %i.oa = zext nneg i8 %i.nz to i32               ; 3 uses
  %i.ob = icmp ne ptr %i.nw, %i.nl
  call void @llvm.assume(i1 %i.ob)
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.0557.0, i64 2 ; 3 uses
  %i.od = load i8, ptr %i.nw, align 1, !noalias !332, !noundef !4
  %i.oe = shl nuw nsw i32 %i.oa, 6
  %i.of = and i8 %i.od, 63
  %i.og = zext nneg i8 %i.of to i32               ; 2 uses
  %i.oh = or disjoint i32 %i.oe, %i.og
  %i.oi = icmp samesign ugt i8 %i.nx, -33
  br i1 %i.oi, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i350, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.oj = zext nneg i8 %i.nx to i32
  br label %bb.cb

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i350: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i347
  %i.ok = icmp ne ptr %i.oc, %i.nl
  call void @llvm.assume(i1 %i.ok)
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.0557.0, i64 3 ; 3 uses
  %i.om = load i8, ptr %i.oc, align 1, !noalias !332, !noundef !4
  %i.on = shl nuw nsw i32 %i.og, 6
  %i.oo = and i8 %i.om, 63
  %i.op = zext nneg i8 %i.oo to i32
  %i.oq = or disjoint i32 %i.on, %i.op            ; 2 uses
  %i.or = shl nuw nsw i32 %i.oa, 12
  %i.os = or disjoint i32 %i.oq, %i.or
  %i.ot = icmp samesign ugt i8 %i.nx, -17
  br i1 %i.ot, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i351, label %bb.cb

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i351: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i350
  %i.ou = icmp ne ptr %i.ol, %i.nl
  call void @llvm.assume(i1 %i.ou)
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.0557.0, i64 4
  %i.ow = load i8, ptr %i.ol, align 1, !noalias !332, !noundef !4
  %i.ox = shl nuw nsw i32 %i.oa, 18
  %i.oy = and i32 %i.ox, 1835008
  %i.oz = shl nuw nsw i32 %i.oq, 6
  %i.pa = and i8 %i.ow, 63
  %i.pb = zext nneg i8 %i.pa to i32
  %i.pc = or disjoint i32 %i.oz, %i.pb
  %i.pd = or disjoint i32 %i.pc, %i.oy
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i347, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i351, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i350
  %.sroa.0557.1.ph = phi ptr [ %i.oc, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i347 ], [ %i.ol, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i350 ], [ %i.ov, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i351 ], [ %i.nw, %bb.ca ]
  %.sroa.4.0.i348.ph = phi i32 [ %i.oh, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i347 ], [ %i.os, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i350 ], [ %i.pd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i351 ], [ %i.oj, %bb.ca ] ; 2 uses
  %i.pe = icmp samesign ult i32 %.sroa.4.0.i348.ph, 1114112
  call void @llvm.assume(i1 %i.pe)
  invoke fastcc void @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer10print_char(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i32 noundef %.sroa.4.0.i348.ph)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.invoke:                                          ; preds = %.noexc117, %.noexc
  %i.pf = phi ptr [ @9, %.noexc ], [ %i.cl, %.noexc117 ]
  %i.pg = invoke fastcc noundef zeroext i1 @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer19flush_line_suffixes(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 %i.pf)
          to label %.backedge.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc114:                                        ; preds = %.noexc
  %i.ph = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.val208 = load ptr, ptr %i.ph, align 8, !nonnull !4, !noundef !4
  %i.pi = getelementptr i8, ptr %i.cl, i64 16
  %.val209 = load i64, ptr %i.pi, align 8, !noundef !4
  %i.pj = getelementptr inbounds nuw i8, ptr %.val208, i64 16
  invoke void @_RNvXs_NtNtCs7Ma6rQP8bRy_14ruff_formatter7printer5queueNtB4_10PrintQueueNtB4_5Queue11extend_back(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 %i.pj, i64 noundef %.val209)
          to label %.backedge.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cc:                                            ; preds = %.noexc
  %i.pk = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.pm = load i8, ptr %i.pl, align 1, !range !77, !noalias !245, !noundef !4
  %i.pn = trunc nuw i8 %i.pm to i1
  %i.po = invoke fastcc i64 @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer18print_best_fitting(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.pk, i1 noundef zeroext %i.pn, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc116:                                        ; preds = %bb.cc
  %i.pp = and i64 %i.po, 255
  %.not650.i = icmp eq i64 %i.pp, 255
  br i1 %.not650.i, label %.backedge.backedge, label %bb.di

bb.cd:                                            ; preds = %.noexc
  %i.pq = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.pr = load i8, ptr %i.pq, align 8, !range !53, !noalias !245, !noundef !4 ; 2 uses
  switch i8 %i.pr, label %default.unreachable [
    i8 0, label %.noexc137
    i8 1, label %switch.lookup
    i8 2, label %.noexc142
    i8 3, label %switch.lookup
    i8 4, label %bb.dj
    i8 5, label %switch.lookup
    i8 6, label %.noexc144
    i8 7, label %switch.lookup
    i8 8, label %.noexc145
    i8 9, label %switch.lookup
    i8 10, label %bb.dk
    i8 11, label %switch.lookup
    i8 12, label %bb.dl
    i8 13, label %switch.lookup
    i8 14, label %bb.dn
    i8 15, label %switch.lookup
    i8 29, label %.noexc154
    i8 17, label %switch.lookup
    i8 18, label %.noexc150
    i8 19, label %switch.lookup
    i8 20, label %bb.dq
    i8 21, label %switch.lookup
    i8 28, label %bb.ds
    i8 23, label %switch.lookup
    i8 24, label %bb.dr
    i8 25, label %switch.lookup
    i8 27, label %switch.lookup
    i8 26, label %bb.dp
    i8 22, label %bb.do
    i8 16, label %.noexc137.invoke
  ]

bb.ce:                                            ; preds = %.noexc87
  %i.ps = load i8, ptr %i.es, align 1, !range !170, !noalias !245, !noundef !4 ; 2 uses
  %switch.i = icmp samesign ult i8 %i.ps, 2
  br i1 %switch.i, label %.noexc118, label %.noexc117

.noexc117:                                        ; preds = %bb.ce, %.noexc87
  %.val210 = load i64, ptr %i.ci, align 8, !noundef !4 ; 2 uses
  %i.pt = icmp ult i64 %.val210, 576460752303423488
  call void @llvm.assume(i1 %i.pt)
  %.not621 = icmp eq i64 %.val210, 0
  br i1 %.not621, label %bb.cp, label %.invoke

.noexc118:                                        ; preds = %bb.ce
  %i.pu = icmp eq i8 %i.ps, 0
  br i1 %i.pu, label %bb.cf, label %.backedge.backedge

bb.cf:                                            ; preds = %.noexc118
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.be, align 8, !alias.scope !335, !noalias !338
  %.sroa.53.0.copyload.i.i = load i16, ptr %.sroa.616.0..sroa_idx, align 2, !alias.scope !335, !noalias !338 ; 4 uses
  %i.pv = trunc nuw i8 %.sroa.0.0.copyload.i.i to i1 ; 2 uses
  %i.pw = icmp ne i16 %.sroa.53.0.copyload.i.i, 0
  %or.cond.not.i.i = select i1 %i.pv, i1 true, i1 %i.pw
  br i1 %or.cond.not.i.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i656.i, align 1, !alias.scope !335, !noalias !338
  store i8 0, ptr %i.be, align 8, !alias.scope !335, !noalias !338
  store i16 0, ptr %.sroa.616.0..sroa_idx, align 2, !alias.scope !335, !noalias !338
  %.sroa.4.0.copyload..i.i = select i1 %i.pv, i8 %.sroa.4.0.copyload.i.i, i8 0 ; 3 uses
  %i.px = load i8, ptr %i.cb, align 2, !range !61, !alias.scope !335, !noalias !338, !noundef !4 ; 2 uses
  %i.py = zext i8 %i.px to i32
  %i.pz = zext i16 %.sroa.53.0.copyload.i.i to i32
  %i.qa = mul nuw nsw i32 %i.py, %i.pz
  %i.qb = zext i8 %.sroa.4.0.copyload..i.i to i32
  %i.qc = add nuw nsw i32 %i.qa, %i.qb
  %i.qd = zext i16 %.sroa.53.0.copyload.i.i to i64
  %i.qe = zext i8 %.sroa.4.0.copyload..i.i to i64 ; 2 uses
  %i.qf = load i8, ptr %i.by, align 4, !range !77, !alias.scope !335, !noalias !338, !noundef !4
  %i.qg = trunc nuw i8 %i.qf to i1                ; 2 uses
  %narrow624 = select i1 %i.qg, i8 %i.px, i8 1
  %8 = zext i8 %narrow624 to i64
  %.sroa.011.0.i.i = mul nuw nsw i64 %8, %i.qd    ; 2 uses
  %i.qh = add nuw nsw i64 %.sroa.011.0.i.i, %i.qe
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef %i.qh)
          to label %.noexc119.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc119.preheader:                              ; preds = %bb.cg
  %.not703 = icmp eq i16 %.sroa.53.0.copyload.i.i, 0
  br i1 %.not703, label %.preheader625, label %.lr.ph688

.lr.ph688:                                        ; preds = %.noexc119.preheader
  %i.qi = select i1 %i.qg, i8 32, i8 9
  %.pre742 = load i64, ptr %i.bq, align 8, !alias.scope !340
  br label %bb.co

bb.ch:                                            ; preds = %._crit_edge691, %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.qj = load i32, ptr %i.cd, align 8, !range !85, !alias.scope !343, !noundef !4
  %i.qk = load i32, ptr %i.ce, align 4, !alias.scope !343 ; 2 uses
  store i32 0, ptr %i.cd, align 8, !alias.scope !343
  %i.ql = trunc nuw i32 %i.qj to i1
  br i1 %i.ql, label %bb.ci, label %.noexc120

bb.ci:                                            ; preds = %bb.ch
  %i.qm = load i64, ptr %i.bq, align 8, !alias.scope !343, !noundef !4 ; 2 uses
  %i.qn = icmp ugt i64 %i.qm, 4294967295
  %i.qo = shl nuw i64 %i.qm, 32
  %.sroa.09.0.insert.insert.i.i353 = select i1 %i.qn, i64 513, i64 %i.qo ; 2 uses
  %i.qp = trunc i64 %.sroa.09.0.insert.insert.i.i353 to i1
  br i1 %i.qp, label %bb.cj, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i354, !prof !62

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !343
  br label %.invoke837

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i354: ; preds = %bb.ci
  %.sroa.6.0.extract.shift.i.i.i355 = lshr i64 %.sroa.09.0.insert.insert.i.i353, 32
  %.sroa.6.0.extract.trunc.i.i.i356 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i355 to i32 ; 2 uses
  %i.qq = load i64, ptr %i.cg, align 8, !alias.scope !343, !noundef !4 ; 5 uses
  %.not.i357 = icmp eq i64 %i.qq, 0
  br i1 %.not.i357, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i354
  %i.qr = load ptr, ptr %i.ch, align 8, !alias.scope !343, !nonnull !4, !noundef !4
  %i.qs = getelementptr [8 x i8], ptr %i.qr, i64 %i.qq ; 2 uses
  %i.qt = getelementptr i8, ptr %i.qs, i64 -8
  %i.qu = load i32, ptr %i.qt, align 4, !noalias !343, !noundef !4
  %i.qv = icmp eq i32 %i.qu, %i.qk
  br i1 %i.qv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.qw = getelementptr i8, ptr %i.qs, i64 -4
  %i.qx = load i32, ptr %i.qw, align 4, !noalias !343, !noundef !4
  %.not3.i359 = icmp eq i32 %i.qx, %.sroa.6.0.extract.trunc.i.i.i356
  br i1 %.not3.i359, label %.noexc120, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i354
  %i.qy = load i64, ptr %i.cf, align 8, !range !87, !alias.scope !346, !noundef !4
  %i.qz = icmp eq i64 %i.qq, %i.qy
  br i1 %i.qz, label %bb.cn, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i358

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8grow_oneBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i358 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i358: ; preds = %bb.cn, %bb.cm
  %i.ra = load ptr, ptr %i.ch, align 8, !alias.scope !346, !nonnull !4, !noundef !4
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %i.qq ; 2 uses
  store i32 %i.qk, ptr %i.rb, align 4
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  store i32 %.sroa.6.0.extract.trunc.i.i.i356, ptr %i.rc, align 4
  %i.rd = add i64 %i.qq, 1
  store i64 %i.rd, ptr %i.cg, align 8, !alias.scope !346
  br label %.noexc120

.preheader625:                                    ; preds = %.noexc121, %.noexc119.preheader
  %.not704 = icmp eq i8 %.sroa.4.0.copyload..i.i, 0
  br i1 %.not704, label %._crit_edge691, label %.lr.ph690.preheader

.lr.ph690.preheader:                              ; preds = %.preheader625
  %.pre743 = load i64, ptr %i.bq, align 8, !alias.scope !349
  br label %.lr.ph690

bb.co:                                            ; preds = %.lr.ph688, %.noexc121
  %i.re = phi i64 [ %.pre742, %.lr.ph688 ], [ %i.rj, %.noexc121 ] ; 3 uses
  %.sroa.024.0.i.i687 = phi i64 [ 0, %.lr.ph688 ], [ %i.rg, %.noexc121 ]
  %i.rf = icmp sgt i64 %i.re, -1
  call void @llvm.assume(i1 %i.rf)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef 1)
          to label %.noexc121 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc121:                                        ; preds = %bb.co
  %i.rg = add nuw nsw i64 %.sroa.024.0.i.i687, 1  ; 2 uses
  %i.rh = load ptr, ptr %i.cc, align 8, !alias.scope !340, !nonnull !4, !noundef !4
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.re
  store i8 %i.qi, ptr %i.ri, align 1
  %i.rj = add nuw i64 %i.re, 1                    ; 2 uses
  store i64 %i.rj, ptr %i.bq, align 8, !alias.scope !340
  %exitcond732.not = icmp eq i64 %i.rg, %.sroa.011.0.i.i
  br i1 %exitcond732.not, label %.preheader625, label %bb.co

._crit_edge691:                                   ; preds = %.noexc122, %.preheader625
  %i.rk = load i32, ptr %i.bu, align 4, !alias.scope !335, !noalias !338, !noundef !4
  %i.rl = add i32 %i.qc, %i.rk
  store i32 %i.rl, ptr %i.bu, align 4, !alias.scope !335, !noalias !338
  br label %bb.ch

.lr.ph690:                                        ; preds = %.lr.ph690.preheader, %.noexc122
  %i.rm = phi i64 [ %i.rr, %.noexc122 ], [ %.pre743, %.lr.ph690.preheader ] ; 3 uses
  %.sroa.026.0.i.i689 = phi i64 [ %i.ro, %.noexc122 ], [ 0, %.lr.ph690.preheader ]
  %i.rn = icmp sgt i64 %i.rm, -1
  call void @llvm.assume(i1 %i.rn)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef 1)
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc122:                                        ; preds = %.lr.ph690
  %i.ro = add nuw nsw i64 %.sroa.026.0.i.i689, 1  ; 2 uses
  %i.rp = load ptr, ptr %i.cc, align 8, !alias.scope !349, !nonnull !4, !noundef !4
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.rm
  store i8 32, ptr %i.rq, align 1
  %i.rr = add nuw i64 %i.rm, 1                    ; 2 uses
  store i64 %i.rr, ptr %i.bq, align 8, !alias.scope !349
  %exitcond733.not = icmp eq i64 %i.ro, %i.qe
  br i1 %exitcond733.not, label %._crit_edge691, label %.lr.ph690

.noexc120:                                        ; preds = %bb.ch, %bb.cl, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs7Ma6rQP8bRy_14ruff_formatter12SourceMarkerE8push_mutBG_.exit.i358
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs7Ma6rQP8bRy_14ruff_formatter(ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i64 noundef 1)
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc123:                                        ; preds = %.noexc120
  %i.rs = load i64, ptr %i.bq, align 8, !alias.scope !352, !noundef !4 ; 2 uses
  %i.rt = icmp sgt i64 %i.rs, -1
  call void @llvm.assume(i1 %i.rt)
  %i.ru = load ptr, ptr %i.cc, align 8, !alias.scope !352, !nonnull !4, !noundef !4
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rs
  store i8 32, ptr %i.rv, align 1
  %.pre.i368 = load i64, ptr %i.bq, align 8, !alias.scope !352
  %i.rw = add i64 %.pre.i368, 1
  store i64 %i.rw, ptr %i.bq, align 8, !alias.scope !352
  %i.rx = load i32, ptr %i.bu, align 4, !alias.scope !335, !noalias !338, !noundef !4
  %i.ry = add i32 %i.rx, 1
  store i32 %i.ry, ptr %i.bu, align 4, !alias.scope !335, !noalias !338
  br label %.backedge.backedge

bb.cp:                                            ; preds = %.noexc117
  %i.rz = load i64, ptr %i.cj, align 8, !alias.scope !242, !noalias !268, !noundef !4 ; 7 uses
  %i.sa = load ptr, ptr %i.cc, align 8, !alias.scope !242, !noalias !268, !nonnull !4, !noundef !4 ; 2 uses
  %i.sb = load i64, ptr %i.bq, align 8, !alias.scope !242, !noalias !268, !noundef !4 ; 7 uses
  %i.sc = icmp eq i64 %i.rz, 0
  br i1 %i.sc, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.not.i381 = icmp ult i64 %i.rz, %i.sb
  br i1 %.not.i381, label %bb.cr, label %.split.i

.split.i:                                         ; preds = %bb.cq
  %i.sd = icmp eq i64 %i.rz, %i.sb
  br i1 %i.sd, label %bb.cs, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.rz
  %i.sf = load i8, ptr %i.se, align 1, !alias.scope !355, !noundef !4
  %i.sg = icmp sgt i8 %i.sf, -65
  br i1 %i.sg, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr, %.split.i, %bb.cp
  %i.sh = icmp eq i64 %i.sb, %i.rz
  br i1 %i.sh, label %.noexc132, label %bb.cu

bb.ct:                                            ; preds = %bb.cr, %.split.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.sa, i64 noundef %i.sb, i64 noundef %i.rz, i64 noundef %i.sb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
          to label %.noexc129 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc129:                                        ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.si = load i32, ptr %i.cd, align 8, !range !85, !alias.scope !358, !noundef !4
  %i.sj = load i32, ptr %i.ce, align 4, !alias.scope !358 ; 2 uses
  store i32 0, ptr %i.cd, align 8, !alias.scope !358
  %i.sk = trunc nuw i32 %i.si to i1
  br i1 %i.sk, label %bb.cv, label %.noexc130

bb.cv:                                            ; preds = %bb.cu
  %i.sl = icmp ugt i64 %i.sb, 4294967295
  %i.sm = shl nuw i64 %i.sb, 32
  %.sroa.09.0.insert.insert.i.i383 = select i1 %i.sl, i64 513, i64 %i.sm ; 2 uses
  %i.sn = trunc i64 %.sroa.09.0.insert.insert.i.i383 to i1
  br i1 %i.sn, label %bb.cw, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i384, !prof !62

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !358
  br label %.invoke837

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i384: ; preds = %bb.cv
  %.sroa.6.0.extract.shift.i.i.i385 = lshr i64 %.sroa.09.0.insert.insert.i.i383, 32
  %.sroa.6.0.extract.trunc.i.i.i386 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i385 to i32 ; 2 uses
  %i.so = load i64, ptr %i.cg, align 8, !alias.scope !358, !noundef !4 ; 5 uses
  %.not.i387 = icmp eq i64 %i.so, 0
  br i1 %.not.i387, label %bb.cz, label %bb.cx

end_hunk_1
begin_hunk_2_@_RNvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB5_12FitsMeasurer15fill_entry_fits:bb.a
bb.dd:                                            ; preds = %bb.db
  %i.ks = call i64 @_RNvXs8_NtNtCs7Ma6rQP8bRy_14ruff_formatter7printer5queueNtB5_20SingleEntryPredicateNtB5_16FitsEndPredicate6is_end(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 %i.at) ; 4 uses
  %.sroa.461.0.extract.shift.i = lshr i64 %i.ks, 8 ; 2 uses
  %i.kt = and i64 %i.ks, 255
  %.not64.i = icmp eq i64 %i.kt, 255
  br i1 %.not64.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %.sroa.562.0.extract.shift.i = and i64 %i.ks, -65536
  br label %_RINvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB6_12FitsMeasurer4fitsNtNtB6_5queue20SingleEntryPredicateEB8_.exit

bb.df:                                            ; preds = %bb.dd
  %i.ku = trunc i64 %.sroa.461.0.extract.shift.i to i1
  br i1 %i.ku, label %_RINvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB6_12FitsMeasurer4fitsNtNtB6_5queue20SingleEntryPredicateEB8_.exit.thread, label %bb.g

_RINvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB6_12FitsMeasurer4fitsNtNtB6_5queue20SingleEntryPredicateEB8_.exit: ; preds = %_RNvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB5_12FitsMeasurer12fits_element.exit.i, %bb.de
  %.sroa.9.sroa.0.0.i = phi i64 [ %.sroa.562.0.extract.shift.i, %bb.de ], [ %.sroa.40.0.insert.shift.i.i, %_RNvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB5_12FitsMeasurer12fits_element.exit.i ] ; 2 uses
  %.sroa.6.0.i = phi i64 [ %.sroa.461.0.extract.shift.i, %bb.de ], [ %.sroa.459.0.extract.shift.i, %_RNvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB5_12FitsMeasurer12fits_element.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.ks, %bb.de ], [ %.sroa.0.0.insert.insert.i.i, %_RNvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB5_12FitsMeasurer12fits_element.exit.i ]
  %i.kv = shl nuw i64 %.sroa.6.0.i, 8
  %i.kw = and i64 %i.kv, 65280
  %i.kx = or disjoint i64 %i.kw, %.sroa.9.sroa.0.0.i ; 2 uses
  %i.ky = and i64 %.sroa.0.0.i, 255               ; 2 uses
  %.sroa.496.0.extract.shift = lshr exact i64 %i.kx, 8 ; 2 uses
  %.not106 = icmp eq i64 %i.ky, 255
  br i1 %.not106, label %_RINvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB6_12FitsMeasurer4fitsNtNtB6_5queue20SingleEntryPredicateEB8_.exit.thread, label %bb.dg

bb.dg:                                            ; preds = %_RINvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB6_12FitsMeasurer4fitsNtNtB6_5queue20SingleEntryPredicateEB8_.exit
  %i.kz = or disjoint i64 %i.kx, %i.ky
  %.sroa.597.0.extract.shift = lshr exact i64 %.sroa.9.sroa.0.0.i, 16
  br label %bb.dk

_RINvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB6_12FitsMeasurer4fitsNtNtB6_5queue20SingleEntryPredicateEB8_.exit.thread.loopexit: ; preds = %bb.db
  br label %_RINvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB6_12FitsMeasurer4fitsNtNtB6_5queue20SingleEntryPredicateEB8_.exit.thread

_RINvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB6_12FitsMeasurer4fitsNtNtB6_5queue20SingleEntryPredicateEB8_.exit.thread: ; preds = %bb.g, %bb.df, %bb.db, %_RINvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB6_12FitsMeasurer4fitsNtNtB6_5queue20SingleEntryPredicateEB8_.exit.thread.loopexit, %_RINvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB6_12FitsMeasurer4fitsNtNtB6_5queue20SingleEntryPredicateEB8_.exit
  %.sroa.496.0.extract.shift114 = phi i64 [ %.sroa.496.0.extract.shift, %_RINvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB6_12FitsMeasurer4fitsNtNtB6_5queue20SingleEntryPredicateEB8_.exit ], [ 1, %bb.db ], [ 1, %bb.g ], [ 1, %bb.df ], [ 0, %_RINvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB6_12FitsMeasurer4fitsNtNtB6_5queue20SingleEntryPredicateEB8_.exit.thread.loopexit ]
  %i.la = load i64, ptr %i.h, align 8, !range !460, !noundef !4
  %.not107 = icmp eq i64 %i.la, 0
  br i1 %.not107, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_RINvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB6_12FitsMeasurer4fitsNtNtB6_5queue20SingleEntryPredicateEB8_.exit.thread
  %i.lb = call i64 @_RNvYNtNtNtCs7Ma6rQP8bRy_14ruff_formatter7printer10call_stack13FitsCallStackNtB4_9CallStack3popB8_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.p, i8 noundef 7) ; 5 uses
  %i.lc = and i64 %i.lb, 255
  %.not108 = icmp eq i64 %i.lc, 255
  br i1 %.not108, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh, %_RINvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB6_12FitsMeasurer4fitsNtNtB6_5queue20SingleEntryPredicateEB8_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.dl

bb.dj:                                            ; preds = %bb.dh
  %.sroa.499.0.extract.shift = lshr i64 %i.lb, 8
  %i.ld = trunc i64 %i.lb to i48
  %i.le = lshr i48 %i.ld, 16
  %sh.diff = lshr i64 %i.lb, 16
  %tr.sh.diff = trunc nuw i64 %sh.diff to i48
  %i.lf = and i48 %tr.sh.diff, -4294967296
  %.sroa.686.7.insert.insert = or disjoint i48 %i.lf, %i.le
  %i.lg = zext i48 %.sroa.686.7.insert.insert to i64
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.dg
  %.sroa.6.sroa.0.0 = phi i64 [ %.sroa.597.0.extract.shift, %bb.dg ], [ %i.lg, %bb.dj ]
  %.sroa.5.0 = phi i64 [ %.sroa.496.0.extract.shift, %bb.dg ], [ %.sroa.499.0.extract.shift, %bb.dj ]
  %.sroa.0.0 = phi i64 [ %i.kz, %bb.dg ], [ %i.lb, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dm, %bb.di
  %.sroa.5.1 = phi i64 [ %.sroa.5.2, %bb.dm ], [ %.sroa.496.0.extract.shift114, %bb.di ]
  %.sroa.5.0.insert.insert = phi i64 [ %i.lj, %bb.dm ], [ 255, %bb.di ]
  %.sroa.5.0.insert.ext = shl nuw i64 %.sroa.5.1, 8
  %.sroa.5.0.insert.shift = and i64 %.sroa.5.0.insert.ext, 65280
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %.sroa.5.0.insert.shift
  ret i64 %.sroa.0.0.insert.insert

bb.dm:                                            ; preds = %bb.dk, %bb.d
  %.sroa.6.sroa.0.2 = phi i64 [ %.sroa.6.sroa.0.0, %bb.dk ], [ %.sroa.5105.0.extract.shift, %bb.d ]
  %.sroa.5.2 = phi i64 [ %.sroa.5.0, %bb.dk ], [ %.sroa.4104.0.extract.shift, %bb.d ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.dk ], [ %i.o, %bb.d ]
  %i.lh = shl nuw i64 %.sroa.6.sroa.0.2, 16
  %i.li = and i64 %.sroa.0.2, 255
  %i.lj = or disjoint i64 %i.li, %i.lh
  br label %bb.dl
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB5_12FitsMeasurer6finish(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !25, !noundef !4 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 5 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEENtNtNtBL_3ops4drop4Drop4dropB1o_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEENtNtNtBS_3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.k unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEENtNtNtBS_3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtB4_5slice4iter4IterNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEEEB1B_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtB4_5slice4iter4IterNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEEEB1B_.exit: ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 0, ptr %.sroa.3.0..sroa_idx4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 5 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs7Ma6rQP8bRy_14ruff_formatter7printer10call_stack10StackFrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtB4_5slice4iter4IterNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEEEB1B_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7Ma6rQP8bRy_14ruff_formatter7printer10call_stack10StackFrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.j unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtB4_5slice4iter4IterNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEEEB1B_.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7Ma6rQP8bRy_14ruff_formatter7printer10call_stack10StackFrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7Ma6rQP8bRy_14ruff_formatter7printer10call_stack10StackFrameEEB1d_.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7Ma6rQP8bRy_14ruff_formatter7printer10call_stack10StackFrameEEB1d_.exit: ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %.sroa.37.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i64 0, ptr %.sroa.37.0..sroa_idx10, align 8
  ret void

bb.j:                                             ; preds = %bb.i, %bb.f
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.k, %bb.i ], [ %i.i, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %.sroa.37.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i64 0, ptr %.sroa.37.0..sroa_idx8, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 0, ptr %.sroa.3.0..sroa_idx2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ma6rQP8bRy_14ruff_formatter7printer10call_stack13FitsCallStackEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.l) #18
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %.pn18 = phi { ptr, i32 } [ %eh.lpad-body, %bb.k ], [ %eh.lpad-body15, %bb.j ]
  resume { ptr, i32 } %.pn18
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RNvMs3_NtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB5_12FitsMeasurer9fits_text(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i48 %2) unnamed_addr #0 {
bb.a:
  %.sroa.04.5.extract.shift = lshr i48 %2, 40     ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.05.0.copyload = load i8, ptr %i.a, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 89
  %.sroa.56.0.copyload = load i8, ptr %.sroa.56.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 2
  store i8 0, ptr %i.a, align 8
  store i16 0, ptr %.sroa.6.0..sroa_idx, align 2
  %i.b = trunc nuw i8 %.sroa.05.0.copyload to i1
  %i.c = zext i16 %.sroa.6.0.copyload to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !25, !noundef !4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 218
  %i.g = load i8, ptr %i.f, align 2, !range !61, !noundef !4
  %i.h = zext i8 %i.g to i32
  %i.i = mul nuw nsw i32 %i.h, %i.c
  %narrow = select i1 %i.b, i8 %.sroa.56.0.copyload, i8 0
  %.sroa.015.0 = zext i8 %narrow to i32
  %i.j = add nuw nsw i32 %i.i, %.sroa.015.0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = add i32 %i.j, %i.l                       ; 5 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = load i32, ptr %1, align 8, !range !85, !noundef !4
  %i.o = trunc nuw i32 %i.n to i1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4, !noundef !4 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !4
  %i.u = trunc i64 %i.t to i32
  %i.v = add i32 %i.m, %i.u
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.c, %bb.e
  %.sink = phi i32 [ %i.ao, %bb.e ], [ %i.v, %bb.c ] ; 2 uses
  store i32 %.sink, ptr %i.k, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %.loopexit.sink.split, %bb.d
  %i.w = phi i32 [ %.sink, %.loopexit.sink.split ], [ %i.m, %bb.d ], [ %storemerge, %.backedge ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.y = load i16, ptr %i.x, align 8, !range !509, !noundef !4
  %i.z = zext i16 %i.y to i32
  %i.aa = icmp ugt i32 %i.w, %i.z
  %i.ab = icmp ne i48 %.sroa.04.5.extract.shift, 2
  %or.cond = and i1 %i.ab, %i.aa
  %spec.select = select i1 %or.cond, i8 1, i8 2
  br label %.loopexit42

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad ; 4 uses
  %i.ah = icmp samesign eq i64 %i.ad, 0
  br i1 %i.ah, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.aj = load i8, ptr %i.ai, align 4, !range !77
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = icmp eq i48 %.sroa.04.5.extract.shift, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 218
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.an = add i32 %i.m, -1
  %i.ao = add i32 %i.an, %i.q
  br label %.loopexit.sink.split

bb.f:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.03643 = phi ptr [ %i.af, %.lr.ph ], [ %.sroa.0.1.ph, %.backedge ] ; 5 uses
  %i.ap = phi i32 [ %i.m, %.lr.ph ], [ %storemerge, %.backedge ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.03643, i64 1 ; 3 uses
  %i.ar = load i8, ptr %.sroa.0.03643, align 1, !noalias !587, !noundef !4 ; 5 uses
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %bb.g, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i: ; preds = %bb.f
  %i.at = and i8 %i.ar, 31
  %i.au = zext nneg i8 %i.at to i32               ; 3 uses
  %i.av = icmp ne ptr %i.aq, %i.ag
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.03643, i64 2 ; 3 uses
  %i.ax = load i8, ptr %i.aq, align 1, !noalias !587, !noundef !4
  %i.ay = shl nuw nsw i32 %i.au, 6
  %i.az = and i8 %i.ax, 63
  %i.ba = zext nneg i8 %i.az to i32               ; 2 uses
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = icmp samesign ugt i8 %i.ar, -33
  br i1 %i.bc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = zext nneg i8 %i.ar to i32
  br label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i
  %i.be = icmp ne ptr %i.aw, %i.ag
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.03643, i64 3 ; 3 uses
  %i.bg = load i8, ptr %i.aw, align 1, !noalias !587, !noundef !4
  %i.bh = shl nuw nsw i32 %i.ba, 6
  %i.bi = and i8 %i.bg, 63
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bh, %i.bj            ; 2 uses
  %i.bl = shl nuw nsw i32 %i.au, 12
  %i.bm = or disjoint i32 %i.bk, %i.bl
  %i.bn = icmp samesign ugt i8 %i.ar, -17
  br i1 %i.bn, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i
  %i.bo = icmp ne ptr %i.bf, %i.ag
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.03643, i64 4
  %i.bq = load i8, ptr %i.bf, align 1, !noalias !587, !noundef !4
  %i.br = shl nuw nsw i32 %i.au, 18
  %i.bs = and i32 %i.br, 1835008
  %i.bt = shl nuw nsw i32 %i.bk, 6
  %i.bu = and i8 %i.bq, 63
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bt, %i.bv
  %i.bx = or disjoint i32 %i.bw, %i.bs
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i
  %.sroa.0.1.ph = phi ptr [ %i.aw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i ], [ %i.bf, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i ], [ %i.bp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i ], [ %i.aq, %bb.g ] ; 2 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.bb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit12.i ], [ %i.bm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit14.i ], [ %i.bx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ma6rQP8bRy_14ruff_formatter.exit16.i ], [ %i.bd, %bb.g ] ; 6 uses
  %i.by = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.by)
  switch i32 %.sroa.4.0.i.ph, label %bb.i [
    i32 9, label %bb.j
    i32 10, label %bb.k
  ]

.loopexit42:                                      ; preds = %bb.k, %bb.n, %.loopexit
  %.sroa.0.0 = phi i8 [ %spec.select, %.loopexit ], [ %., %bb.n ], [ 1, %bb.k ]
  ret i8 %.sroa.0.0

bb.i:                                             ; preds = %bb.h
  %i.bz = icmp samesign ult i32 %.sroa.4.0.i.ph, 127
  br i1 %i.bz, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ca = load i8, ptr %i.am, align 2, !range !61, !noundef !4
  %i.cb = zext i8 %i.ca to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  br i1 %i.ak, label %.loopexit42, label %bb.m

bb.l:                                             ; preds = %bb.p, %bb.o, %bb.q, %bb.j
  %.sroa.020.0 = phi i32 [ %i.cb, %bb.j ], [ 0, %bb.o ], [ %spec.select35, %bb.p ], [ %i.cl, %bb.q ]
  %i.cc = add i32 %i.ap, %.sroa.020.0
  br label %.backedge

.backedge:                                        ; preds = %bb.m, %bb.l
  %storemerge = phi i32 [ %i.cc, %bb.l ], [ 0, %bb.m ] ; 3 uses
  store i32 %storemerge, ptr %i.k, align 4
  %i.cd = icmp eq ptr %.sroa.0.1.ph, %i.ag
  br i1 %i.cd, label %.loopexit, label %bb.f

bb.m:                                             ; preds = %bb.k
  br i1 %i.al, label %bb.n, label %.backedge

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.cf = load i16, ptr %i.ce, align 8, !range !509, !noundef !4
  %i.cg = zext i16 %i.cf to i32
  %i.ch = icmp ugt i32 %i.ap, %i.cg
  %. = zext i1 %i.ch to i8
  br label %.loopexit42

bb.o:                                             ; preds = %bb.i
  %i.ci = icmp samesign ugt i32 %.sroa.4.0.i.ph, 159
  br i1 %i.ci, label %bb.q, label %bb.l

bb.p:                                             ; preds = %bb.i
  %i.cj = icmp samesign ugt i32 %.sroa.4.0.i.ph, 31
  %spec.select35 = zext i1 %i.cj to i32
  br label %bb.l

bb.q:                                             ; preds = %bb.o
  %i.ck = tail call fastcc i8 @_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12lookup_width(i32 noundef %.sroa.4.0.i.ph)
  %i.cl = zext i8 %i.ck to i32
  br label %bb.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i8 @_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12lookup_width(i32 noundef range(i32 160, 1114112) %0) unnamed_addr #2 {
bb.a:
  %i.a = zext nneg i32 %0 to i64                  ; 3 uses
  %i.b = lshr i64 %i.a, 13
  %i.c = getelementptr inbounds nuw i8, ptr @_RNvNtCsly1OcjGFjsJ_13unicode_width6tables10WIDTH_ROOT, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !noundef !4  ; 2 uses
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = icmp ult i8 %i.d, 20
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.a, 7
  %i.h = and i64 %i.g, 63
  %i.i = getelementptr inbounds nuw [64 x i8], ptr @_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12WIDTH_MIDDLE, i64 %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.k = load i8, ptr %i.j, align 1, !noundef !4  ; 2 uses
  %i.l = zext i8 %i.k to i64                      ; 2 uses
  %i.m = icmp ult i8 %i.k, -70
end_hunk_2
