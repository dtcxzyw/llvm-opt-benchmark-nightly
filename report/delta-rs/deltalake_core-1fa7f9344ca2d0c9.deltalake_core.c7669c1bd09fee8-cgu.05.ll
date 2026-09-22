Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.05?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1969
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.us.i
  %i.cn = load ptr, ptr %1, align 8, !alias.scope !21446, !noalias !21445, !nonnull !4, !noundef !4
  %i.co = load ptr, ptr %i.h, align 8, !alias.scope !21446, !noalias !21445, !nonnull !4, !align !6, !noundef !4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !invariant.load !4, !noalias !21445, !nonnull !4
  %i.cr = call noundef zeroext i1 %i.cq(ptr noundef nonnull %i.cn, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !21445, !inline_history !21422
  br i1 %i.cr, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %exitcond143.not.i = icmp eq i64 %i.bu, %i.n
  br i1 %exitcond143.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.us.i

.lr.ph125.split.i:                                ; preds = %.lr.ph125.i, %bb.m
  %.sroa.068.0123.i = phi i64 [ %i.cs, %bb.m ], [ %.sroa.0.0.i110.i, %.lr.ph125.i ] ; 4 uses
  %i.cs = add i64 %.sroa.068.0123.i, 1            ; 4 uses
  %i.ct = icmp ult i64 %.sroa.068.0123.i, %i.r
  br i1 %i.ct, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.i, label %bb.k, !prof !9

bb.k:                                             ; preds = %.lr.ph125.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !21460
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.i: ; preds = %.lr.ph125.split.i
  %i.cu = add i64 %.sroa.068.0123.i, %i.v         ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !noalias !21460, !noundef !4
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = xor i8 %i.cx, -1
  %i.db = lshr i8 %i.da, %i.cz
  %i.dc = trunc i8 %i.db to i1
  %i.dd = load ptr, ptr %1, align 8, !alias.scope !21446, !noalias !21445, !nonnull !4, !noundef !4 ; 2 uses
  %i.de = load ptr, ptr %i.h, align 8, !alias.scope !21446, !noalias !21445, !nonnull !4, !align !6, !noundef !4
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !invariant.load !4, !noalias !21445, !nonnull !4 ; 2 uses
  br i1 %i.dc, label %bb.n, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.i
  %i.dh = call noundef zeroext i1 %i.dg(ptr noundef nonnull %i.dd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !21445, !inline_history !21422
  br i1 %i.dh, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.i

_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.i
  %i.di = icmp ult i64 %i.cs, %i.m
  call void @llvm.assume(i1 %i.di)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cs
  %i.dk = load i32, ptr %i.dj, align 4, !noalias !21456, !noundef !4
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.068.0123.i
  %i.dm = load i32, ptr %i.dl, align 4, !noalias !21456, !noundef !4 ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %i.z, i64 %i.dn ; 2 uses
  %i.dp = sub i32 %i.dk, %i.dm                    ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  %i.dr = zext nneg i32 %i.dp to i64
  call void @llvm.assume(i1 %i.dq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21457
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !21458
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dr
  %i.dt = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly %i.do, ptr noundef nonnull readonly %i.ds), !noalias !21459
  %i.du = call noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dt), !noalias !21459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21457
  br i1 %i.du, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %i.dv = load ptr, ptr %1, align 8, !alias.scope !21446, !noalias !21445, !nonnull !4, !noundef !4
  %i.dw = load ptr, ptr %i.h, align 8, !alias.scope !21446, !noalias !21445, !nonnull !4, !align !6, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !invariant.load !4, !noalias !21445, !nonnull !4
  %i.dz = call noundef zeroext i1 %i.dy(ptr noundef nonnull %i.dv, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !21445, !inline_history !21422
  br i1 %i.dz, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %exitcond142.not.i = icmp eq i64 %i.cs, %i.n
  br i1 %exitcond142.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph125.split.i

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.i
  %i.ea = call noundef zeroext i1 %i.dg(ptr noundef nonnull %i.dd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !21445, !inline_history !21422
  br i1 %i.ea, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.m

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.eb = call noundef zeroext i1 %i.bm(ptr noundef nonnull %i.bj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !21445, !inline_history !21422
  br i1 %i.eb, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.i

_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.ec = icmp samesign ult i64 %i.az, %i.m
  call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.az
  %i.ee = load i32, ptr %i.ed, align 4, !noalias !21450, !noundef !4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.015.0122.i
  %i.eg = load i32, ptr %i.ef, align 4, !noalias !21450, !noundef !4 ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %i.z, i64 %i.eh ; 2 uses
  %i.ej = sub i32 %i.ee, %i.eg                    ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, -1
  %i.el = zext nneg i32 %i.ej to i64
  call void @llvm.assume(i1 %i.ek)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21451
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !21452
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.el
  %i.en = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly %i.ei, ptr noundef nonnull readonly %i.em), !noalias !21453
  %i.eo = call noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.en), !noalias !21453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21451
  br i1 %i.eo, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.i
  %i.ep = load ptr, ptr %1, align 8, !alias.scope !21446, !noalias !21445, !nonnull !4, !noundef !4
  %i.eq = load ptr, ptr %i.h, align 8, !alias.scope !21446, !noalias !21445, !nonnull !4, !align !6, !noundef !4
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !invariant.load !4, !noalias !21445, !nonnull !4
  %i.et = call noundef zeroext i1 %i.es(ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !21445, !inline_history !21422
  br i1 %i.et, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond140.not.i = icmp eq i64 %i.az, %.sroa.0.0.i.i
  br i1 %exitcond140.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.eu = call noundef zeroext i1 %i.bm(ptr noundef nonnull %i.bj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !21445, !inline_history !21422
  br i1 %i.eu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.m, %bb.j, %bb.h, %._crit_edge.i, %bb.b
  %i.ev = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ew = load ptr, ptr %i.h, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !invariant.load !4, !nonnull !4
  %i.ez = call noundef zeroext i1 %i.ey(ptr noundef nonnull %i.ev, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.o, %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.i, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.q, %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.us.i, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.i, %bb.l, %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.i, %bb.n, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.us.i, %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.us.i, %bb.i, %bb.a, %bb.g, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0 = phi i1 [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.us.i ], [ %i.ez, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.i ], [ true, %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.us.i ], [ true, %bb.g ], [ true, %bb.a ], [ true, %bb.i ], [ true, %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.us.i ], [ true, %bb.n ], [ true, %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.i ], [ true, %bb.l ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.q ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.i ], [ true, %bb.o ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @180, ptr %i.e, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @175, ptr %i.f, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx, align 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !6, !noundef !4
  %i.j = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @292, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.j, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !21493)
  call void @llvm.experimental.noalias.scope.decl(metadata !21494)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !21495, !noalias !21494, !noundef !4
  %i.m = lshr i64 %i.l, 3                         ; 7 uses
  %i.n = add nsw i64 %i.m, -1                     ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.n, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !21496, !noalias !21494, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.p, null            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !21493, !noalias !21494 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !21493, !noalias !21494 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !21493, !noalias !21494 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !21493, !noalias !21494 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !21493, !noalias !21494 ; 8 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.d
  %.sroa.015.0122.us.i = phi i64 [ %i.aa, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.015.0122.us.i, 1 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21497)
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.h, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !21493, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !21493, !inline_history !21470
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.us.i

_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.us.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.ag = icmp samesign ult i64 %i.aa, %i.m
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !21498, !noundef !4
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.015.0122.us.i
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !21498, !noundef !4
  %i.al = getelementptr inbounds i8, ptr %i.z, i64 %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21499
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !21500
  %i.am = getelementptr inbounds i8, ptr %i.z, i64 %i.ai
  %i.an = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly %i.al, ptr noundef nonnull readonly %i.am), !noalias !21501
  %i.ao = call noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an), !noalias !21501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21499
  br i1 %i.ao, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.us.i
  %i.ap = load ptr, ptr %1, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !noundef !4
  %i.aq = load ptr, ptr %i.h, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !align !6, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !4, !noalias !21493, !nonnull !4
  %i.at = call noundef zeroext i1 %i.as(ptr noundef nonnull %i.ap, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !21493, !inline_history !21470
  br i1 %i.at, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %exitcond141.not.i = icmp eq i64 %i.aa, %.sroa.0.0.i.i
  br i1 %exitcond141.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.p, %bb.d
  %i.au = icmp ugt i64 %i.n, 10
  br i1 %i.au, label %bb.f, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.p
  %.sroa.015.0122.i = phi i64 [ %i.av, %bb.p ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.av = add nuw nsw i64 %.sroa.015.0122.i, 1    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21497)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0122.i, %i.r
  br i1 %exitcond.not.i, label %bb.e, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.e:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !21502
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.aw = add i64 %.sroa.015.0122.i, %i.v         ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !21502, !noundef !4
  %i.ba = trunc i64 %i.aw to i8
  %i.bb = and i8 %i.ba, 7
  %i.bc = xor i8 %i.az, -1
  %i.bd = lshr i8 %i.bc, %i.bb
  %i.be = trunc i8 %i.bd to i1
  %i.bf = load ptr, ptr %1, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !noundef !4 ; 2 uses
  %i.bg = load ptr, ptr %i.h, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !align !6, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !invariant.load !4, !noalias !21493, !nonnull !4 ; 2 uses
  br i1 %i.be, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.bj = icmp ugt i64 %i.n, 20
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21503
  %i.bk = add nsw i64 %i.m, -21
  store i64 %i.bk, ptr %i.d, align 8, !noalias !21503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21503
  store ptr %i.d, ptr %i.c, align 8, !noalias !21503
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !21503
  %i.bl = load ptr, ptr %1, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !noundef !4
  %i.bm = load ptr, ptr %i.h, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !align !6, !noundef !4
  %i.bn = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bm, ptr noundef nonnull @68, ptr noundef nonnull %i.c), !noalias !21493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21503
  br i1 %i.bn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bo = add nsw i64 %i.m, -11
  %.sroa.0.0.i110.i = call noundef i64 @llvm.umax.i64(i64 %i.bo, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bp = icmp ult i64 %.sroa.0.0.i110.i, %i.n
  br i1 %i.bp, label %.lr.ph125.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph125.i:                                      ; preds = %bb.h
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.us.i, label %.lr.ph125.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.us.i: ; preds = %.lr.ph125.i, %bb.j
  %.sroa.068.0123.us.i = phi i64 [ %i.bq, %bb.j ], [ %.sroa.0.0.i110.i, %.lr.ph125.i ] ; 2 uses
  %i.bq = add nuw nsw i64 %.sroa.068.0123.us.i, 1 ; 4 uses
  %i.br = load ptr, ptr %1, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !noundef !4
  %i.bs = load ptr, ptr %i.h, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !align !6, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !invariant.load !4, !noalias !21493, !nonnull !4
  %i.bv = call noundef zeroext i1 %i.bu(ptr noundef nonnull %i.br, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !21493, !inline_history !21470
  br i1 %i.bv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.us.i

_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.us.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.us.i
  %i.bw = icmp ult i64 %i.bq, %i.m
  call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bq
  %i.by = load i64, ptr %i.bx, align 8, !noalias !21504, !noundef !4
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.068.0123.us.i
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !21504, !noundef !4
  %i.cb = getelementptr inbounds i8, ptr %i.z, i64 %i.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21505
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !21506
  %i.cc = getelementptr inbounds i8, ptr %i.z, i64 %i.by
  %i.cd = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly %i.cb, ptr noundef nonnull readonly %i.cc), !noalias !21507
  %i.ce = call noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cd), !noalias !21507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21505
  br i1 %i.ce, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.us.i
  %i.cf = load ptr, ptr %1, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !noundef !4
  %i.cg = load ptr, ptr %i.h, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !align !6, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !invariant.load !4, !noalias !21493, !nonnull !4
  %i.cj = call noundef zeroext i1 %i.ci(ptr noundef nonnull %i.cf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !21493, !inline_history !21470
  br i1 %i.cj, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %exitcond143.not.i = icmp eq i64 %i.bq, %i.n
  br i1 %exitcond143.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.us.i

.lr.ph125.split.i:                                ; preds = %.lr.ph125.i, %bb.m
  %.sroa.068.0123.i = phi i64 [ %i.ck, %bb.m ], [ %.sroa.0.0.i110.i, %.lr.ph125.i ] ; 4 uses
  %i.ck = add i64 %.sroa.068.0123.i, 1            ; 4 uses
  %i.cl = icmp ult i64 %.sroa.068.0123.i, %i.r
  br i1 %i.cl, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.i, label %bb.k, !prof !9

bb.k:                                             ; preds = %.lr.ph125.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !21508
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.i: ; preds = %.lr.ph125.split.i
  %i.cm = add i64 %.sroa.068.0123.i, %i.v         ; 2 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noalias !21508, !noundef !4
  %i.cq = trunc i64 %i.cm to i8
  %i.cr = and i8 %i.cq, 7
  %i.cs = xor i8 %i.cp, -1
  %i.ct = lshr i8 %i.cs, %i.cr
  %i.cu = trunc i8 %i.ct to i1
  %i.cv = load ptr, ptr %1, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !noundef !4 ; 2 uses
  %i.cw = load ptr, ptr %i.h, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !align !6, !noundef !4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !invariant.load !4, !noalias !21493, !nonnull !4 ; 2 uses
  br i1 %i.cu, label %bb.n, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.i
  %i.cz = call noundef zeroext i1 %i.cy(ptr noundef nonnull %i.cv, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !21493, !inline_history !21470
  br i1 %i.cz, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.i

_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.i
  %i.da = icmp ult i64 %i.ck, %i.m
  call void @llvm.assume(i1 %i.da)
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ck
  %i.dc = load i64, ptr %i.db, align 8, !noalias !21504, !noundef !4
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.068.0123.i
  %i.de = load i64, ptr %i.dd, align 8, !noalias !21504, !noundef !4
  %i.df = getelementptr inbounds i8, ptr %i.z, i64 %i.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21505
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !21506
  %i.dg = getelementptr inbounds i8, ptr %i.z, i64 %i.dc
  %i.dh = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly %i.df, ptr noundef nonnull readonly %i.dg), !noalias !21507
  %i.di = call noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dh), !noalias !21507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21505
  br i1 %i.di, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %i.dj = load ptr, ptr %1, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !noundef !4
  %i.dk = load ptr, ptr %i.h, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !align !6, !noundef !4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !invariant.load !4, !noalias !21493, !nonnull !4
  %i.dn = call noundef zeroext i1 %i.dm(ptr noundef nonnull %i.dj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !21493, !inline_history !21470
  br i1 %i.dn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %exitcond142.not.i = icmp eq i64 %i.ck, %i.n
  br i1 %exitcond142.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph125.split.i

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.i
  %i.do = call noundef zeroext i1 %i.cy(ptr noundef nonnull %i.cv, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !21493, !inline_history !21470
  br i1 %i.do, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.m

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.dp = call noundef zeroext i1 %i.bi(ptr noundef nonnull %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !21493, !inline_history !21470
  br i1 %i.dp, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.i

_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.dq = icmp samesign ult i64 %i.av, %i.m
  call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.av
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !21498, !noundef !4
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.015.0122.i
  %i.du = load i64, ptr %i.dt, align 8, !noalias !21498, !noundef !4
  %i.dv = getelementptr inbounds i8, ptr %i.z, i64 %i.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21499
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !21500
  %i.dw = getelementptr inbounds i8, ptr %i.z, i64 %i.ds
  %i.dx = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly %i.dv, ptr noundef nonnull readonly %i.dw), !noalias !21501
  %i.dy = call noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dx), !noalias !21501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21499
  br i1 %i.dy, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.i
  %i.dz = load ptr, ptr %1, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !noundef !4
  %i.ea = load ptr, ptr %i.h, align 8, !alias.scope !21494, !noalias !21493, !nonnull !4, !align !6, !noundef !4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !invariant.load !4, !noalias !21493, !nonnull !4
  %i.ed = call noundef zeroext i1 %i.ec(ptr noundef nonnull %i.dz, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !21493, !inline_history !21470
  br i1 %i.ed, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond140.not.i = icmp eq i64 %i.av, %.sroa.0.0.i.i
  br i1 %exitcond140.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ee = call noundef zeroext i1 %i.bi(ptr noundef nonnull %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !21493, !inline_history !21470
  br i1 %i.ee, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.m, %bb.j, %bb.h, %._crit_edge.i, %bb.b
  %i.ef = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.eg = load ptr, ptr %i.h, align 8, !nonnull !4, !align !6, !noundef !4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !invariant.load !4, !nonnull !4
  %i.ej = call noundef zeroext i1 %i.ei(ptr noundef nonnull %i.ef, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.o, %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.i, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.q, %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.us.i, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.i, %bb.l, %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.i, %bb.n, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.us.i, %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.us.i, %bb.i, %bb.a, %bb.g, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0 = phi i1 [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.us.i ], [ %i.ej, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.i ], [ true, %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.us.i ], [ true, %bb.g ], [ true, %bb.a ], [ true, %bb.i ], [ true, %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.us.i ], [ true, %bb.n ], [ true, %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.i ], [ true, %bb.l ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.q ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.i ], [ true, %bb.o ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @173, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @182, ptr %i.d, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @292, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !21535)
  call void @llvm.experimental.noalias.scope.decl(metadata !21536)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !21537, !noalias !21536, !noundef !4
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %i.l = add nsw i64 %i.k, -1                     ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.l, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !21538, !noalias !21536, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.n, null            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !21535, !noalias !21536 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !21535, !noalias !21536 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !21535, !noalias !21536 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !21535, !noalias !21536 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !21535, !noalias !21536 ; 4 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.d
  %.sroa.015.0122.us.i = phi i64 [ %i.y, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.015.0122.us.i, 1  ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21539)
  %i.z = load ptr, ptr %1, align 8, !alias.scope !21536, !noalias !21535, !nonnull !4, !noundef !4
  %i.aa = load ptr, ptr %i.f, align 8, !alias.scope !21536, !noalias !21535, !nonnull !4, !align !6, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !4, !noalias !21535, !nonnull !4
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !21535, !inline_history !21518
  br i1 %i.ad, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.us.i

_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.us.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.ae = icmp samesign ult i64 %i.y, %i.k
  call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.y
  %i.ag = load i32, ptr %i.af, align 4, !noalias !21540, !noundef !4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.015.0122.us.i
  %i.ai = load i32, ptr %i.ah, align 4, !noalias !21540, !noundef !4 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.x, i64 %i.aj
  %i.al = sub i32 %i.ag, %i.ai                    ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  %i.an = zext nneg i32 %i.al to i64
  call void @llvm.assume(i1 %i.am)
  %i.ao = call noundef zeroext i1 @_RNvXsh_NtCsbvkFyIu7lgC_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.an, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !21541
  br i1 %i.ao, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit118.us.i
  %i.ap = load ptr, ptr %1, align 8, !alias.scope !21536, !noalias !21535, !nonnull !4, !noundef !4
  %i.aq = load ptr, ptr %i.f, align 8, !alias.scope !21536, !noalias !21535, !nonnull !4, !align !6, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !4, !noalias !21535, !nonnull !4
  %i.at = call noundef zeroext i1 %i.as(ptr noundef nonnull %i.ap, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !21535, !inline_history !21518
  br i1 %i.at, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %exitcond141.not.i = icmp eq i64 %i.y, %.sroa.0.0.i.i
  br i1 %exitcond141.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.p, %bb.d
  %i.au = icmp ugt i64 %i.l, 10
  br i1 %i.au, label %bb.f, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.p
  %.sroa.015.0122.i = phi i64 [ %i.av, %bb.p ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.av = add nuw nsw i64 %.sroa.015.0122.i, 1    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21539)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0122.i, %i.p
  br i1 %exitcond.not.i, label %bb.e, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.e:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !21542
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.aw = add i64 %.sroa.015.0122.i, %i.t         ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !21542, !noundef !4
  %i.ba = trunc i64 %i.aw to i8
  %i.bb = and i8 %i.ba, 7
  %i.bc = xor i8 %i.az, -1
  %i.bd = lshr i8 %i.bc, %i.bb
  %i.be = trunc i8 %i.bd to i1
  %i.bf = load ptr, ptr %1, align 8, !alias.scope !21536, !noalias !21535, !nonnull !4, !noundef !4 ; 2 uses
  %i.bg = load ptr, ptr %i.f, align 8, !alias.scope !21536, !noalias !21535, !nonnull !4, !align !6, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !invariant.load !4, !noalias !21535, !nonnull !4 ; 2 uses
  br i1 %i.be, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.bj = icmp ugt i64 %i.l, 20
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21543
  %i.bk = add nsw i64 %i.k, -21
  store i64 %i.bk, ptr %i.b, align 8, !noalias !21543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21543
  store ptr %i.b, ptr %i.a, align 8, !noalias !21543
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !21543
  %i.bl = load ptr, ptr %1, align 8, !alias.scope !21536, !noalias !21535, !nonnull !4, !noundef !4
  %i.bm = load ptr, ptr %i.f, align 8, !alias.scope !21536, !noalias !21535, !nonnull !4, !align !6, !noundef !4
  %i.bn = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bm, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !21535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21543
  br i1 %i.bn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bo = add nsw i64 %i.k, -11
  %.sroa.0.0.i110.i = call noundef i64 @llvm.umax.i64(i64 %i.bo, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bp = icmp ult i64 %.sroa.0.0.i110.i, %i.l
  br i1 %i.bp, label %.lr.ph125.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph125.i:                                      ; preds = %bb.h
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.us.i, label %.lr.ph125.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.us.i: ; preds = %.lr.ph125.i, %bb.j
  %.sroa.068.0123.us.i = phi i64 [ %i.bq, %bb.j ], [ %.sroa.0.0.i110.i, %.lr.ph125.i ] ; 2 uses
  %i.bq = add nuw nsw i64 %.sroa.068.0123.us.i, 1 ; 4 uses
  %i.br = load ptr, ptr %1, align 8, !alias.scope !21536, !noalias !21535, !nonnull !4, !noundef !4
  %i.bs = load ptr, ptr %i.f, align 8, !alias.scope !21536, !noalias !21535, !nonnull !4, !align !6, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !invariant.load !4, !noalias !21535, !nonnull !4
  %i.bv = call noundef zeroext i1 %i.bu(ptr noundef nonnull %i.br, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !21535, !inline_history !21518
  br i1 %i.bv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.us.i

_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core.exit.us.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit113.thread.us.i
  %i.bw = icmp ult i64 %i.bq, %i.k
  call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bq
  %i.by = load i32, ptr %i.bx, align 4, !noalias !21544, !noundef !4
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.068.0123.us.i
  %i.ca = load i32, ptr %i.bz, align 4, !noalias !21544, !noundef !4 ; 2 uses
end_hunk_0
