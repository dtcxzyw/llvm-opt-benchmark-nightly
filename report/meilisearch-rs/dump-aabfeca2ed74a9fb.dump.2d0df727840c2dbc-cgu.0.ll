Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31029
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@"_ZN73_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..cmp..Ord$GT$3cmp17h619e9bf26d2df8f1E":bb.a
  %i.ap = add nsw i16 %i.ao, %i.an
  %i.aq = add nsw i16 %i.ap, %.sroa.041.0.i       ; 9 uses
  %i.ar = icmp sgt i16 %i.aq, -1
  br i1 %i.ar, label %bb.m, label %bb.l, !prof !26

bb.i:                                             ; preds = %bb.e
  %i.as = icmp samesign ult i16 %i.ab, 120
  br i1 %i.as, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = add nsw i16 %i.ab, -120
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.au = add nsw i16 %i.ab, -60
  br label %bb.h

bb.l:                                             ; preds = %bb.h
  %i.av = icmp samesign ugt i16 %i.aq, -61
  br i1 %i.av, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.aw = icmp samesign ult i16 %i.aq, 60
  br i1 %i.aw, label %bb.p, label %bb.q, !prof !26

bb.n:                                             ; preds = %bb.l
  %i.ax = add nsw i16 %i.aq, 120
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.ay = add nsw i16 %i.aq, 60
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.r, %bb.o, %bb.n, %bb.m
  %.sroa.042.0.i = phi i16 [ %i.ax, %bb.n ], [ %i.bg, %bb.s ], [ %i.bf, %bb.r ], [ %i.ay, %bb.o ], [ %i.aq, %bb.m ]
  %.sroa.043.0.i = phi i8 [ -2, %bb.n ], [ 1, %bb.s ], [ 2, %bb.r ], [ -1, %bb.o ], [ 0, %bb.m ]
  %i.az = icmp ult i8 %.sroa.05.sroa.7.0.extract.trunc, 24
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = sub nsw i8 %.sroa.05.sroa.7.0.extract.trunc, %i.h
  %i.bb = add nsw i8 %i.ba, %.sroa.01.2.extract.trunc.i
  %i.bc = add nsw i8 %i.bb, %.sroa.043.0.i        ; 13 uses
  %i.bd = icmp sgt i8 %i.bc, -1
  br i1 %i.bd, label %bb.u, label %bb.t, !prof !26

bb.q:                                             ; preds = %bb.m
  %i.be = icmp samesign ult i16 %i.aq, 120
  br i1 %i.be, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = add nsw i16 %i.aq, -120
  br label %bb.p

bb.s:                                             ; preds = %bb.q
  %i.bg = add nsw i16 %i.aq, -60
  br label %bb.p

bb.t:                                             ; preds = %bb.p
  %i.bh = icmp samesign ugt i8 %i.bc, -25
  br i1 %i.bh, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.bi = icmp samesign ult i8 %i.bc, 24
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !26

bb.v:                                             ; preds = %bb.t
  %i.bj = icmp samesign ugt i8 %i.bc, -49
  br i1 %i.bj, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bk = add nsw i8 %i.bc, 24
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bl = add nsw i8 %i.bc, 72
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.bm = add nsw i8 %i.bc, 48
  br label %bb.z

bb.z:                                             ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.y, %bb.x, %bb.w, %bb.u
  %.sroa.044.0.i = phi i8 [ %i.bl, %bb.x ], [ %i.bx, %bb.ac ], [ %i.bz, %bb.ae ], [ %i.by, %bb.ad ], [ %i.bk, %bb.w ], [ %i.bm, %bb.y ], [ %i.bc, %bb.u ]
  %.sroa.045.0.i = phi i16 [ -3, %bb.x ], [ 1, %bb.ac ], [ 2, %bb.ae ], [ 3, %bb.ad ], [ -1, %bb.w ], [ -2, %bb.y ], [ 0, %bb.u ]
  %i.bn = ashr i32 %.sroa.8.0.copyload, 10        ; 6 uses
  %i.bo = trunc i32 %.sroa.8.0.copyload to i16
  %i.bp = and i16 %i.bo, 511
  %i.bq = add nsw i16 %.sroa.045.0.i, %i.bp       ; 5 uses
  %.sroa.037.0.i = tail call i32 @llvm.abs.i32(i32 %i.bn, i1 true)
  %i.br = mul i32 %.sroa.037.0.i, 33555415
  %i.bs = and i32 %i.br, 100695055
  %i.bt = icmp samesign ult i32 %i.bs, 31745
  %.sroa.012.0.i = select i1 %i.bt, i16 366, i16 365 ; 2 uses
  %i.bu = icmp sgt i16 %i.bq, %.sroa.012.0.i
  br i1 %i.bu, label %bb.af, label %bb.ag, !prof !19

bb.aa:                                            ; preds = %bb.u
  %i.bv = icmp samesign ult i8 %i.bc, 48
  br i1 %i.bv, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = icmp samesign ult i8 %i.bc, 72
  br i1 %i.bw, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.bx = add nsw i8 %i.bc, -24
  br label %bb.z

bb.ad:                                            ; preds = %bb.ab
  %i.by = add nsw i8 %i.bc, -72
  br label %bb.z

bb.ae:                                            ; preds = %bb.ab
  %i.bz = add nsw i8 %i.bc, -48
  br label %bb.z

bb.af:                                            ; preds = %bb.z
  %i.ca = sub nuw nsw i16 %i.bq, %.sroa.012.0.i
  %i.cb = add nsw i32 %i.bn, 1
  br label %bb.ai

bb.ag:                                            ; preds = %bb.z
  %i.cc = icmp slt i16 %i.bq, 1
  br i1 %i.cc, label %bb.ah, label %bb.ai, !prof !19

bb.ah:                                            ; preds = %bb.ag
  %i.cd = add nsw i32 %i.bn, -1                   ; 2 uses
  %i.ce = icmp slt i32 %i.bn, 1
  %i.cf = sub nsw i32 1, %i.bn
  %.sroa.038.0.i = select i1 %i.ce, i32 %i.cf, i32 %i.cd
  %i.cg = mul i32 %.sroa.038.0.i, 33555415
  %i.ch = and i32 %i.cg, 100695055
  %i.ci = icmp samesign ult i32 %i.ch, 31745
  %.sroa.013.0.i = select i1 %i.ci, i16 366, i16 365
  %i.cj = add nsw i16 %i.bq, %.sroa.013.0.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %.sroa.07.0.i = phi i16 [ %i.ca, %bb.af ], [ %i.cj, %bb.ah ], [ %i.bq, %bb.ag ]
  %.sroa.02.0.i = phi i32 [ %i.cb, %bb.af ], [ %i.cd, %bb.ah ], [ %i.bn, %bb.ag ]
  %.sroa.3.0.insert.ext.i.i = zext nneg i16 %.sroa.042.0.i to i64
  %.sroa.2.0.insert.ext.i.i = zext nneg i16 %.sroa.040.0.i to i64
  %i.ck = icmp ult i32 %.sroa.05.sroa.0.0.extract.trunc, 1000000000
  tail call void @llvm.assume(i1 %i.ck)
  %.sroa.4.0.insert.ext.i.i = zext nneg i8 %.sroa.044.0.i to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i, 48
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i, 40
  %.sroa.3.0.insert.insert.i.i = add nuw nsw i64 %.sroa.4.0.insert.shift.i.i, %.sroa.3.0.insert.shift.i.i
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.2.0.insert.insert.i.i = add nuw nsw i64 %.sroa.3.0.insert.insert.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.ext.i.i = and i64 %.sroa.05.0.copyload, 1073741823
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  br label %_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E.exit

_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E.exit: ; preds = %bb.c, %bb.ai
  %.sroa.02.0.sink.i = phi i32 [ %.sroa.02.0.i, %bb.ai ], [ %i.ad, %bb.c ]
  %.sroa.07.0.sink.i = phi i16 [ %.sroa.07.0.i, %bb.ai ], [ %i.af, %bb.c ]
  %.sroa.0.0.insert.insert.i.sink.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %bb.ai ], [ %.sroa.05.0.copyload, %bb.c ]
  %i.cl = ashr i32 %i.b, 10
  %i.cm = sext i32 %i.cl to i128
  %i.cn = shl nsw i128 %i.cm, 74
  %i.co = trunc i32 %i.b to i16
  %i.cp = and i16 %i.co, 511
  %i.cq = zext nneg i16 %i.cp to i128
  %i.cr = shl nuw nsw i128 %i.cq, 64
  %i.cs = or disjoint i128 %i.cr, %i.cn
  %i.ct = zext i64 %.sroa.01.0.copyload to i128
  %i.cu = or disjoint i128 %i.cs, %i.ct
  %i.cv = sext i32 %.sroa.02.0.sink.i to i128
  %i.cw = shl nsw i128 %i.cv, 74
  %i.cx = zext nneg i16 %.sroa.07.0.sink.i to i128
  %i.cy = shl nuw nsw i128 %i.cx, 64
  %i.cz = or i128 %i.cy, %i.cw
  %i.da = zext i64 %.sroa.0.0.insert.insert.i.sink.i to i128
  %i.db = or disjoint i128 %i.cz, %i.da
  %i.dc = tail call i8 @llvm.scmp.i8.i128(i128 %i.cu, i128 %i.db)
  ret i8 %i.dc
}

; Function Attrs: nonlazybind uwtable
define noundef range(i16 0, 289) i16 @"_ZN74_$LT$dump..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h61f58c981dfec459E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !116, !noundef !21
  %i.b = icmp eq i32 %i.a, 11
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef i16 @"_ZN77_$LT$std..io..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h9fa5a082e959804dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i16 [ %i.d, %bb.b ], [ 30, %bb.a ]
  ret i16 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN74_$LT$dump..reader..v4..errors..ErrorType$u20$as$u20$core..fmt..Display$GT$3fmt17h539507268ae5429aE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !30, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !21, !noundef !21
  %.val4 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !21, !noalias !21, !nonnull !21 ; 3 uses
  switch i8 %i.a, label %default.unreachable28 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable28:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1396, i64 noundef 8), !noalias !87388, !inline_history !13
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1716, i64 noundef 15), !noalias !87389, !inline_history !13
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1717, i64 noundef 4), !noalias !87390, !inline_history !13
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN74_$LT$dump..reader..v5..errors..ErrorType$u20$as$u20$core..fmt..Display$GT$3fmt17h65d4c467607f2b03E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !30, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !21, !noundef !21
  %.val4 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !21, !noalias !21, !nonnull !21 ; 3 uses
  switch i8 %i.a, label %default.unreachable28 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable28:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1396, i64 noundef 8), !noalias !87397, !inline_history !13
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1716, i64 noundef 15), !noalias !87398, !inline_history !13
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1717, i64 noundef 4), !noalias !87399, !inline_history !13
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$dump..reader..v2..settings..Criterion$u20$as$u20$core..fmt..Display$GT$3fmt17h3d5af15da6e1c33dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i64, ptr %0, align 8, !range !63, !noundef !21
  switch i64 %i.g, label %default.unreachable22 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i64 7, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15
  ]

default.unreachable22:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @390, i64 noundef 5)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1523, i64 noundef 4)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1524, i64 noundef 9)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1525, i64 noundef 9)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @843, i64 noundef 4)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1526, i64 noundef 9)
  br label %bb.h

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h01e9a858ccefee51E", ptr %.sroa.47.0..sroa_idx, align 8
  %.val9 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.o, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !87404
  store ptr @1528, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.p = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val10, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !87404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !87404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h01e9a858ccefee51E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.r, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87405
  store ptr @1530, ptr %i.a, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.819.0..sroa_idx, align 8
  %.sroa.1020.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1020.0..sroa_idx, align 8
  %i.s = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val8, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !87405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !87405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.h:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.b ], [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.p, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.s, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN76_$LT$dump..reader..v2..updates..UpdateMeta$u20$as$u20$core..clone..Clone$GT$5clone17h48d461d0d6e585d3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(224) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.0 = alloca [200 x i8], align 8           ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %1, align 8, !range !38, !noundef !21 ; 4 uses
  %i.r = add nsw i64 %i.q, -3
  %.inv = icmp samesign ult i64 %i.q, 3
  %i.s = select i1 %.inv, i64 3, i64 %i.r
  switch i64 %i.s, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i8, ptr %i.t, align 8, !range !44, !noundef !21
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.w = load i8, ptr %i.v, align 1, !range !30, !noundef !21
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !range !34, !noundef !21
  %.not = icmp eq i64 %i.y, -9223372036854775808
  br i1 %.not, label %bb.bn, label %bb.bm

bb.d:                                             ; preds = %bb.a
  store i64 4, ptr %0, align 8
  br label %bb.bo

bb.e:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.z, align 8, !nonnull !21, !noundef !21
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load i64, ptr %i.aa, align 8, !noundef !21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8026fd3e6d6fd74aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr nonnull %.val, i64 %.val3)
  store i64 5, ptr %0, align 8
  br label %bb.bo

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87421)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !87422
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ad = load i64, ptr %i.ac, align 8, !range !33, !alias.scope !87421, !noalias !87423, !noundef !21 ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZN82_$LT$dump..reader..v2..settings..AscDesc$u20$as$u20$core..str..traits..FromStr$GT$8from_str17ha80243dfd3c4a4afE":bb.a
bb.m:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.j, align 1
  %i.ad = icmp ne i32 %i.ac, 1668506980
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.f, %bb.m
  store i64 2, ptr %0, align 8
  br label %bb.l

bb.o:                                             ; preds = %bb.m
  %i.ag = icmp slt i64 %i.e, 0
  br i1 %i.ag, label %bb.q, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i31, !prof !37

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i31: ; preds = %bb.o
  %i.ah = icmp eq i64 %i.e, 0
  br i1 %i.ah, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h013701e2c0a8abfbE.exit36", label %bb.p

bb.p:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i31
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !90007
  %i.ai = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 1) #42, !noalias !90007 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.q, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h013701e2c0a8abfbE.exit36"

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.4.0.ph.i.i35 = phi i64 [ 1, %bb.p ], [ 0, %bb.o ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i35, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #41, !noalias !90008
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h013701e2c0a8abfbE.exit36": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i31, %bb.p
  %.sroa.10.0.i.i32 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i31 ], [ %i.ai, %bb.p ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i32, ptr nonnull readonly align 1 %1, i64 %i.e, i1 false), !noalias !90009
  store i64 1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i32, ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.r:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h73aa3e9a2a274862E.exit"
  %.not.i37 = icmp eq i64 %2, 4
  br i1 %.not.i37, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h73aa3e9a2a274862E.exit40.thread", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h73aa3e9a2a274862E.exit40"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h73aa3e9a2a274862E.exit40": ; preds = %bb.r
  %i.ak = load i32, ptr %1, align 1
  %i.al = xor i32 1668506980, %i.ak
  %i.am = getelementptr i8, ptr %1, i64 4
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = xor i32 40, %i.ao
  %i.aq = or i32 %i.al, %i.ap
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit49", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h73aa3e9a2a274862E.exit40.thread"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h73aa3e9a2a274862E.exit"
  %i.au = getelementptr i8, ptr %1, i64 %2
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %rhsc = load i8, ptr %i.av, align 1
  %i.aw = icmp eq i8 %rhsc, 41
  br i1 %i.aw, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_prefix_of17hefcc037b64272856E.exit", label %bb.r

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_prefix_of17hefcc037b64272856E.exit": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit"
  %i.ax = load i32, ptr %1, align 1
  %i.ay = icmp ne i32 677606241, %i.ax
  %i.az = zext i1 %i.ay to i32
  %bcmp.i.i.fr.i = freeze i32 %i.az
  %.not118 = icmp eq i32 %bcmp.i.i.fr.i, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4
  br i1 %.not118, label %bb.x, label %bb.y, !prof !26

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h73aa3e9a2a274862E.exit40.thread": ; preds = %bb.g, %bb.r, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit49", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h73aa3e9a2a274862E.exit40"
  store i64 2, ptr %0, align 8
  br label %bb.l

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit49": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h73aa3e9a2a274862E.exit40"
  %i.bb = getelementptr i8, ptr %1, i64 %2
  %i.bc = getelementptr i8, ptr %i.bb, i64 -1
  %rhsc116 = load i8, ptr %i.bc, align 1
  %i.bd = icmp eq i8 %rhsc116, 41
  br i1 %i.bd, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_prefix_of17hefcc037b64272856E.exit55", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h73aa3e9a2a274862E.exit40.thread"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_prefix_of17hefcc037b64272856E.exit55": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit49"
  %i.be = load i32, ptr %1, align 1
  %i.bf = xor i32 1668506980, %i.be
  %i.bg = getelementptr i8, ptr %1, i64 4
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = xor i32 40, %i.bi
  %i.bk = or i32 %i.bf, %i.bj
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %bcmp.i.i.fr.i53 = freeze i32 %i.bm
  %.not = icmp eq i32 %bcmp.i.i.fr.i53, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 5
  br i1 %.not, label %bb.s, label %bb.t, !prof !26

bb.s:                                             ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_prefix_of17hefcc037b64272856E.exit55"
  %.not.i.i56 = icmp eq i64 %2, 5
  %.pre.i = add i64 %2, -6                        ; 7 uses
  br i1 %.not.i.i56, label %bb.w, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.i"

bb.t:                                             ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_prefix_of17hefcc037b64272856E.exit55"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1744) #41
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.i": ; preds = %bb.s
  %i.bo = icmp slt i64 %.pre.i, 0
  br i1 %i.bo, label %bb.v, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i60, !prof !37

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i60: ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.i"
  %i.bp = icmp eq i64 %.pre.i, 0
  br i1 %i.bp, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h013701e2c0a8abfbE.exit65", label %bb.u

bb.u:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i60
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !90010
  %i.bq = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.pre.i, i64 noundef range(i64 1, 9) 1) #42, !noalias !90010 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.v, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h013701e2c0a8abfbE.exit65"

bb.v:                                             ; preds = %bb.u, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.i"
  %.sroa.4.0.ph.i.i64 = phi i64 [ 1, %bb.u ], [ 0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.i" ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i64, i64 %.pre.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #41, !noalias !90011
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h013701e2c0a8abfbE.exit65": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i60, %bb.u
  %.sroa.10.0.i.i61 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i60 ], [ %i.bq, %bb.u ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i61, ptr nonnull readonly align 1 %i.bn, i64 %.pre.i, i1 false), !noalias !90012
  store i64 1, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pre.i, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i61, ptr %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx, align 8
  %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.pre.i, ptr %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.w:                                             ; preds = %bb.s
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1745) #41
  unreachable

bb.x:                                             ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_prefix_of17hefcc037b64272856E.exit"
  %.not.i.i66 = icmp eq i64 %2, 4
  %.pre.i67 = add i64 %2, -5                      ; 7 uses
  br i1 %.not.i.i66, label %bb.ab, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.i68"

bb.y:                                             ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_prefix_of17hefcc037b64272856E.exit"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1746) #41
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.i68": ; preds = %bb.x
  %i.bs = icmp slt i64 %.pre.i67, 0
  br i1 %i.bs, label %bb.aa, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i73, !prof !37

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i73: ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.i68"
  %i.bt = icmp eq i64 %.pre.i67, 0
  br i1 %i.bt, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h013701e2c0a8abfbE.exit78", label %bb.z

bb.z:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i73
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !90013
  %i.bu = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.pre.i67, i64 noundef range(i64 1, 9) 1) #42, !noalias !90013 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.aa, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h013701e2c0a8abfbE.exit78"

bb.aa:                                            ; preds = %bb.z, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.i68"
  %.sroa.4.0.ph.i.i77 = phi i64 [ 1, %bb.z ], [ 0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.i68" ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i77, i64 %.pre.i67, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #41, !noalias !90014
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h013701e2c0a8abfbE.exit78": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i73, %bb.z
  %.sroa.10.0.i.i74 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i73 ], [ %i.bu, %bb.z ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i74, ptr nonnull readonly align 1 %i.ba, i64 %.pre.i67, i1 false), !noalias !90015
  store i64 0, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pre.i67, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i74, ptr %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx, align 8
  %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.pre.i67, ptr %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.ab:                                            ; preds = %bb.x
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1747) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN82_$LT$dump..reader..v4..meta..IndexUidFormatError$u20$as$u20$core..fmt..Display$GT$3fmt17hf2934f0ddce9221fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90018
  store ptr @1750, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !90018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN82_$LT$dump..reader..v5..meta..IndexUidFormatError$u20$as$u20$core..fmt..Display$GT$3fmt17h85098d484c8613cfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90021
  store ptr @1750, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !90021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d0bf99a22c91542E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nonnull %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.b = invoke fastcc { i64, ptr } @_ZN3std2io7BufRead9read_line17h5dded59587fad6c8E(ptr noalias noundef nonnull align 8 dereferenceable(48) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..BufRead$u20$for$u20$$RF$mut$u20$B$GT$9read_line17hcfc93e9c839a59ffE.exit" unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !90034)
  call void @llvm.experimental.noalias.scope.decl(metadata !90035)
  %.val.i.i = load i64, ptr %i.a, align 8, !range !23, !alias.scope !90036, !noundef !21 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !90036, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !90036
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit"

"_ZN3std2io5impls60_$LT$impl$u20$std..io..BufRead$u20$for$u20$$RF$mut$u20$B$GT$9read_line17hcfc93e9c839a59ffE.exit": ; preds = %bb.a
  %i.e = extractvalue { i64, ptr } %i.b, 0
  %i.f = extractvalue { i64, ptr } %i.b, 1        ; 2 uses
  %i.g = trunc nuw i64 %i.e to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN3std2io5impls60_$LT$impl$u20$std..io..BufRead$u20$for$u20$$RF$mut$u20$B$GT$9read_line17hcfc93e9c839a59ffE.exit"
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.e:                                             ; preds = %"_ZN3std2io5impls60_$LT$impl$u20$std..io..BufRead$u20$for$u20$$RF$mut$u20$B$GT$9read_line17hcfc93e9c839a59ffE.exit"
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !90037)
  call void @llvm.experimental.noalias.scope.decl(metadata !90038)
  %.val.i.i10 = load i64, ptr %i.a, align 8, !range !23, !alias.scope !90039, !noundef !21 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i10, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit12", label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val1.i.i11 = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !90039, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11, i64 noundef %.val.i.i10, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !90039
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit12"

bb.i:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.k = load i64, ptr %.sroa.56.0..sroa_idx, align 8, !noundef !21 ; 5 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.thread", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit": ; preds = %bb.i
  %i.l = getelementptr i8, ptr %i.j, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %rhsc = load i8, ptr %i.m, align 1
  %i.n = icmp eq i8 %rhsc, 10
  br i1 %i.n, label %bb.j, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.thread"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.thread": ; preds = %bb.j, %bb.i, %_ZN5alloc6string6String3pop17h805a725cdcc660b7E.exit28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit17", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit12"

bb.j:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit"
  %i.o = icmp sgt i64 %i.k, -1
  call void @llvm.assume(i1 %i.o)
  %i.p = add nsw i64 %i.k, -1                     ; 3 uses
  store i64 %i.p, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !90040
  %.not.i13 = icmp eq i64 %i.p, 0
  br i1 %.not.i13, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.thread", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit17"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit17": ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.j, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %rhsc4 = load i8, ptr %i.r, align 1
  %i.s = icmp eq i8 %rhsc4, 13
  br i1 %i.s, label %_ZN5alloc6string6String3pop17h805a725cdcc660b7E.exit28, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.thread"

_ZN5alloc6string6String3pop17h805a725cdcc660b7E.exit28: ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit17"
  %i.t = add nsw i64 %i.k, -2
  store i64 %i.t, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !90041
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.thread"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit12": ; preds = %bb.h, %bb.g, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h87a1ba770e17b190E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.b = invoke fastcc { i64, ptr } @_ZN3std2io7BufRead9read_line17h5dded59587fad6c8E(ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !90054)
  call void @llvm.experimental.noalias.scope.decl(metadata !90055)
  %.val.i.i = load i64, ptr %i.a, align 8, !range !23, !alias.scope !90056, !noundef !21 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !90056, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !90056
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit"

bb.d:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, ptr } %i.b, 0
  %i.f = extractvalue { i64, ptr } %i.b, 1        ; 2 uses
  %i.g = trunc nuw i64 %i.e to i1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !90057)
  call void @llvm.experimental.noalias.scope.decl(metadata !90058)
  %.val.i.i10 = load i64, ptr %i.a, align 8, !range !23, !alias.scope !90059, !noundef !21 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i10, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit12", label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i11 = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !90059, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11, i64 noundef %.val.i.i10, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !90059
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit12"

bb.j:                                             ; preds = %bb.f
  %i.j = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.k = load i64, ptr %.sroa.56.0..sroa_idx, align 8, !noundef !21 ; 5 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.thread", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit": ; preds = %bb.j
  %i.l = getelementptr i8, ptr %i.j, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %rhsc = load i8, ptr %i.m, align 1
  %i.n = icmp eq i8 %rhsc, 10
  br i1 %i.n, label %bb.k, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.thread"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit.thread": ; preds = %bb.k, %bb.j, %_ZN5alloc6string6String3pop17h805a725cdcc660b7E.exit28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit17", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit12"

bb.k:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hd5b12fbe0169ba0bE.exit"
  %i.o = icmp sgt i64 %i.k, -1
  call void @llvm.assume(i1 %i.o)
  %i.p = add nsw i64 %i.k, -1                     ; 3 uses
end_hunk_1
