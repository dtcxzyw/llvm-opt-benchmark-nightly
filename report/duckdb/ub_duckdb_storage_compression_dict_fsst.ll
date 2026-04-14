inline.NumInlined: 1572
inline.NumDeleted: 732
begin_hunk_0_@_ZN6duckdb9dict_fsst24DictFSSTCompressionState8FinalizeEv:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !200
  %i.m = add i64 %i.l, 23
  %3 = and i64 %i.m, -8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.o = load i64, ptr %i.n, align 8, !tbaa !91
  %4 = add i64 %i.o, 7
  %i.p = add i64 %4, %3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
end_hunk_0
begin_hunk_1_@_ZN6duckdb9dict_fsst24DictFSSTCompressionState8FinalizeEv:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !203  ; 9 uses
  %i.z = load i64, ptr %i.q, align 8, !tbaa !200
  %i.aa = add i64 %i.z, 23
  %i.ab = and i64 %i.aa, -8                       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !91 ; 2 uses
  %5 = add i64 %i.ad, 7
  %i.ae = add i64 %5, %i.ab
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %i.ag = load i64, ptr %i.r, align 8, !tbaa !194
  %6 = add i64 %i.ag, 7
  %i.ah = add i64 %6, %i.af
  %i.ai = and i64 %i.ah, -8
  %.val = load i8, ptr %i.c, align 8, !tbaa !207  ; 2 uses
  %i.aj = icmp ult i8 %.val, 4
end_hunk_1
begin_hunk_2_@_ZN6duckdb9dict_fsst24DictFSSTCompressionState8FinalizeEv:bb.a
  br label %_ZN6duckdb20BitpackingPrimitives10PackBufferIjLb0EEEvPhPT_mh.exit34

_ZN6duckdb20BitpackingPrimitives10PackBufferIjLb0EEEvPhPT_mh.exit34: ; preds = %._crit_edge.i32, %bb.q
  %.0 = and i64 %.0.in, -8
  %7 = add i64 %i.s, 7
  %i.dh = add i64 %7, %.0
  %i.di = and i64 %i.dh, -8
  %i.dj = add i64 %i.di, %i.u
  ret i64 %i.dj
end_hunk_2
begin_hunk_3_@_ZNK6duckdb9dict_fsst24DictFSSTCompressionState22CalculateRequiredSpaceEv:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.d = load i64, ptr %i.c, align 8, !tbaa !217
  %i.e = add i64 %i.b, 23
  %i.f = add i64 %i.e, %i.d
  %1 = and i64 %i.f, -8                           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.h = load i8, ptr %i.g, align 8, !tbaa !190
  %i.i = and i8 %i.h, -3
  %i.j = icmp eq i8 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.l = load i64, ptr %i.k, align 8
  %2 = add i64 %i.l, 7
  %i.m = add i64 %2, %1
  %3 = and i64 %i.m, -8
  %.0 = select i1 %i.j, i64 %3, i64 %1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !194
  %4 = add i64 %i.o, 7
  %i.p = add i64 %4, %.0
  %i.q = and i64 %i.p, -8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load i64, ptr %i.r, align 8, !tbaa !195
end_hunk_3
begin_hunk_4_@_ZN6duckdb9dict_fsst24DictFSSTCompressionState19FlushEncodingBufferEv:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !91
  %i.bq = add i64 %i.bp, 23
  %4 = and i64 %i.bq, -8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !194
  %5 = add i64 %i.bs, 7
  %i.bt = add i64 %5, %4
  %6 = and i64 %i.bt, -8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !195
  %7 = add i64 %i.bv, 7
  %i.bw = add i64 %7, %6
  %i.bx = and i64 %i.bw, -8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !200
end_hunk_4
begin_hunk_5_@_ZN6duckdb9dict_fsst24DictFSSTCompressionState16CompressInternalERNS_19UnifiedVectorFormatERKNS_8string_tEbRNS0_12EncodedInputEmmb:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !200
  %i.cc = add i64 %i.cb, 23
  %24 = and i64 %i.cc, -8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !194
  %25 = add i64 %i.ce, 7
  %i.cf = add i64 %25, %24
  %i.cg = and i64 %i.cf, -8
  %i.ch = add i64 %i.cg, %i.bz                    ; 2 uses
  store i64 %i.ch, ptr %i.v, align 8, !tbaa !46
end_hunk_5
begin_hunk_6_@_ZN6duckdb9dict_fsst24DictFSSTCompressionState16CompressInternalERNS_19UnifiedVectorFormatERKNS_8string_tEbRNS0_12EncodedInputEmmb:bb.a
  %i.ga = zext i32 %i.du to i64                   ; 5 uses
  %i.gb = add nuw nsw i64 %i.ga, 23
  %i.gc = add i64 %i.gb, %i.fz
  %26 = and i64 %i.gc, -8
  %27 = add i64 %i.fc, 7
  %i.gd = add i64 %27, %26
  %i.ge = and i64 %i.gd, -8
  %i.gf = add i64 %i.ge, %i.fx                    ; 2 uses
  store i64 %i.gf, ptr %i.q, align 8, !tbaa !46
end_hunk_6
begin_hunk_7_@_ZN6duckdb9dict_fsst24DictFSSTCompressionState16CompressInternalERNS_19UnifiedVectorFormatERKNS_8string_tEbRNS0_12EncodedInputEmmb:bb.a
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !200
  %i.lw = add i64 %i.lv, 23
  %28 = and i64 %i.lw, -8
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !194
  %29 = add i64 %i.ly, 7
  %i.lz = add i64 %29, %28
  %i.ma = and i64 %i.lz, -8
  %i.mb = add i64 %i.ma, %i.lt                    ; 2 uses
  store i64 %i.mb, ptr %i.m, align 8, !tbaa !46
end_hunk_7
begin_hunk_8_@_ZN6duckdb9dict_fsst24DictFSSTCompressionState16CompressInternalERNS_19UnifiedVectorFormatERKNS_8string_tEbRNS0_12EncodedInputEmmb:bb.a
  %i.pt = zext i32 %i.nn to i64                   ; 5 uses
  %i.pu = add nuw nsw i64 %i.pt, 23
  %i.pv = add i64 %i.pu, %i.ps
  %30 = and i64 %i.pv, -8
  %31 = add i64 %i.ov, 7
  %i.pw = add i64 %31, %30
  %i.px = and i64 %i.pw, -8
  %i.py = add i64 %i.px, %i.pq                    ; 2 uses
  store i64 %i.py, ptr %i.h, align 8, !tbaa !46
end_hunk_8
begin_hunk_9_@_ZN6duckdb9dict_fsst24DictFSSTCompressionState16CompressInternalERNS_19UnifiedVectorFormatERKNS_8string_tEbRNS0_12EncodedInputEmmb:bb.a
  %i.aby = zext i32 %i.aak to i64                 ; 5 uses
  %i.abz = add nuw nsw i64 %i.aby, 23
  %i.aca = add i64 %i.abz, %i.abx
  %32 = and i64 %i.aca, -8
  %i.acb = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.acc = load i64, ptr %i.acb, align 8, !tbaa !91
  %33 = add i64 %i.acc, 7
  %i.acd = add i64 %33, %32
  %34 = and i64 %i.acd, -8
  %35 = add i64 %i.abs, 7
  %i.ace = add i64 %35, %34
  %i.acf = and i64 %i.ace, -8
  %i.acg = add i64 %i.acf, %i.abv                 ; 2 uses
  store i64 %i.acg, ptr %i.c, align 8, !tbaa !46
end_hunk_9
begin_hunk_10_@_ZN6duckdb9dict_fsstL9AddLookupILNS0_21DictionaryAppendStateE1EEEbRNS0_24DictFSSTCompressionStateEmbb:bb.a
  %i.z = load i64, ptr %i.y, align 8, !tbaa !217
  %i.aa = add i64 %i.x, 23
  %i.ab = add i64 %i.aa, %i.z
  %6 = and i64 %i.ab, -8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !91
  %7 = add i64 %i.ad, 7
  %i.ae = add i64 %7, %6
  %8 = and i64 %i.ae, -8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !194
  %9 = add i64 %i.ag, 7
  %i.ah = add i64 %9, %8
  %i.ai = and i64 %i.ah, -8
  %i.aj = add i64 %i.ai, %i.v                     ; 2 uses
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !46
end_hunk_10
begin_hunk_11_@_ZN6duckdb9dict_fsstL15AddToDictionaryILNS0_21DictionaryAppendStateE1EEEbRNS0_24DictFSSTCompressionStateERKNS_8string_tEbb:bb.a
  %spec.select = add i64 %i.bo, %spec.select.v
  %i.br = add i64 %i.bq, 7
  %i.bs = add i64 %i.br, %spec.select
  %6 = and i64 %i.bs, -8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !91
  %7 = add i64 %i.bu, 7
  %i.bv = add i64 %7, %6
  %8 = and i64 %i.bv, -8
  %9 = add i64 %i.ao, 7
  %i.bw = add i64 %9, %8
  %i.bx = and i64 %i.bw, -8
  %i.by = add i64 %i.bx, %i.bk                    ; 2 uses
  store i64 %i.by, ptr %i.c, align 8, !tbaa !46
end_hunk_11
begin_hunk_12_@_ZN6duckdb9dict_fsst24DictFSSTCompressionState9TryEncodeEv:bb.a
  %i.fa = add i64 %.0107.lcssa, 23
  %i.fb = or i64 %i.fa, 7
  %i.fc = add i64 %i.fb, %i.ew
  %4 = and i64 %i.fc, -8
  %5 = add nuw nsw i64 %i.ez, 7
  %i.fd = add i64 %5, %4
  %i.fe = and i64 %i.fd, -8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !195
end_hunk_12
begin_hunk_13_@_ZN6duckdb9dict_fsst25CompressedStringScanState10InitializeEb:bb.a
  %i.bf = mul i64 %.0.i.i49, %i.be
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = load i64, ptr %i.ah, align 8, !tbaa !319
  %i.bi = add i64 %i.bh, 23
  %i.bj = and i64 %i.bi, -8                       ; 2 uses
  %i.bk = zext i32 %i.ae to i64
  %7 = add nuw nsw i64 %i.bk, 7
  %i.bl = add i64 %7, %i.bj
  %8 = and i64 %i.bl, -8                          ; 2 uses
  %9 = add nuw nsw i64 %i.av, 7
  %i.bm = add i64 %9, %8
  %i.bn = and i64 %i.bm, -8                       ; 2 uses
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !299, !nonnull !65, !align !66 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 216
end_hunk_13
begin_hunk_14_@_ZN6duckdb9dict_fsst25CompressedStringScanState10InitializeEb:bb.a
  br i1 %.041, label %.sink.split, label %bb.ah

bb.m:                                             ; preds = %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit50
  %i.ch = load ptr, ptr %i.o, align 8, !tbaa !317 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 144
end_hunk_14
begin_hunk_15_@_ZN6duckdb9dict_fsst25CompressedStringScanState10InitializeEb:bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bn
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !334
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 %8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !335
  %i.co = load i8, ptr %i.r, align 8, !tbaa !292
end_hunk_15
