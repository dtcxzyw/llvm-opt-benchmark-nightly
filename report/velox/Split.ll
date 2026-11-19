Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Split?download=true
inline.NumInlined: 6859
inline.NumDeleted: 2220
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_113SplitFunction10applyInnerILb1ElEEvNS0_10StringViewES5_T0_iRNS0_4exec12VectorWriterINS0_5ArrayINS0_7VarcharEEEvEE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 5 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !435  ; 2 uses
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 5 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !434, !range !229, !noundef !230
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !336  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !218
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(112) %i.m, i1 noundef zeroext true), !inline_history !21
  store i8 0, ptr %i.i, align 8, !tbaa !434
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !339  ; 2 uses
  %i.s = add nsw i32 %i.r, %i.h                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !378
  %i.v = icmp sgt i32 %i.s, %i.u
  br i1 %i.v, label %bb.d, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE8add_itemEv.exit, !prof !220

bb.d:                                             ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i
  %i.w = sitofp i32 %i.s to double
  %i.x = tail call noundef double @log2(double noundef %i.w) #17
  %i.y = tail call double @llvm.ceil.f64(double %i.x)
  %exp2.i.i.i = tail call double @exp2(double %i.y)
  %i.z = fptosi double %exp2.i.i.i to i32         ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !336 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !218
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(112) %i.ab, i32 noundef %i.z), !inline_history !22
  store i32 %i.z, ptr %i.t, align 4, !tbaa !378
  %.pre.i = load i32, ptr %i.q, align 8, !tbaa !339
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE8add_itemEv.exit

_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE8add_itemEv.exit: ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i, %bb.d
  %i.af = phi i32 [ %i.r, %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i ], [ %.pre.i, %bb.d ]
  store i32 %i.h, ptr %i.f, align 4, !tbaa !435
  %i.ag = add i32 %i.af, %i.g
  store i8 1, ptr %i.i, align 8, !tbaa !434
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !336 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !218
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(112) %i.ai, i32 noundef %i.ag), !inline_history !23
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !336 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !441 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !444 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 216 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !377
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.e, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i

bb.e:                                             ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE8add_itemEv.exit
  %i.at = tail call noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(272) %i.an) ; 0 uses
  br label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i: ; preds = %bb.e, %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE8add_itemEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !340
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !338
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %i.an, i32 noundef %i.ax, i1 noundef zeroext true)
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !340 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 44
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !432
  %i.bb = and i8 %i.ba, 2
  %.not.i3.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i3.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i, label %bb.g, !prof !256

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #32
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i: ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !433
  %i.be = lshr i32 %i.ap, 3
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bf ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !202
  %i.bi = trunc i32 %i.ap to i8
  %i.bj = and i8 %i.bi, 7
  %i.bk = shl nuw i8 1, %i.bj
  %i.bl = or i8 %i.bh, %i.bk
  store i8 %i.bl, ptr %i.bg, align 1, !tbaa !202
  br label %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit

_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit: ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i
  %i.bm = load ptr, ptr %i.aq, align 8, !tbaa !377
  %i.bn = sext i32 %i.ap to i64
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.bm, i64 %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !450
  %i.bp = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i8 1, ptr %i.bp, align 8, !tbaa !322
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !334 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.f, align 4, !tbaa !427
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !340 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 44
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !432
  %i.by = and i8 %i.bx, 2
  %.not.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i, label %bb.h, !prof !256

bb.h:                                             ; preds = %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #32
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i: ; preds = %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit
  %i.bz = load i32, ptr %i.q, align 8, !tbaa !403
  %i.ca = load i32, ptr %i.bs, align 8, !tbaa !318
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !433
  %i.cd = sext i32 %i.ca to i64                   ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  store i32 %i.bz, ptr %i.ce, align 4, !tbaa !219
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 112
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !340 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !432
  %i.cj = and i8 %i.ci, 2
  %.not.i4.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i4.i.i, label %_ZN8facebook5velox15ArrayVectorBase16setOffsetAndSizeEiii.exit.i, label %bb.i, !prof !256

bb.i:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #32
  unreachable

_ZN8facebook5velox15ArrayVectorBase16setOffsetAndSizeEiii.exit.i: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !433
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cd
  store i32 %i.bt, ptr %i.cm, align 4, !tbaa !219
  %i.cn = load i32, ptr %i.bs, align 8, !tbaa !318
  %i.co = load ptr, ptr %i.br, align 8, !tbaa !218
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 144
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(94) %i.br, i32 noundef %i.cn, i1 noundef zeroext false), !inline_history !7
  %i.cr = load i8, ptr %i.i, align 8, !tbaa !434, !range !229, !noundef !230
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.j, label %_ZN8facebook5velox4exec12VectorWriterINS0_5ArrayINS0_7VarcharEEEvE6commitEv.exit

bb.j:                                             ; preds = %_ZN8facebook5velox15ArrayVectorBase16setOffsetAndSizeEiii.exit.i
  %i.ct = load ptr, ptr %i.ah, align 8, !tbaa !336 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !218
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(112) %i.ct, i1 noundef zeroext true), !inline_history !8
  store i8 0, ptr %i.i, align 8, !tbaa !434
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_5ArrayINS0_7VarcharEEEvE6commitEv.exit

_ZN8facebook5velox4exec12VectorWriterINS0_5ArrayINS0_7VarcharEEEvE6commitEv.exit: ; preds = %_ZN8facebook5velox15ArrayVectorBase16setOffsetAndSizeEiii.exit.i, %bb.j
  %i.cx = load i32, ptr %i.f, align 4, !tbaa !435
  %i.cy = load i32, ptr %i.q, align 8, !tbaa !339
  %i.cz = add nsw i32 %i.cy, %i.cx
  store i32 %i.cz, ptr %i.q, align 8, !tbaa !339
  store i32 0, ptr %i.f, align 4, !tbaa !435
  br label %bb.as

bb.k:                                             ; preds = %bb.a
  %i.da = trunc i64 %2 to i32                     ; 2 uses
  %i.db = trunc i64 %0 to i32
  %i.dc = icmp ult i32 %i.db, 13
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.de = select i1 %i.dc, ptr %i.dd, ptr %1
  %i.df = and i64 %0, 4294967295
  %i.dg = icmp ult i32 %i.da, 13
  %i.dh = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.di = select i1 %i.dg, ptr %i.dh, ptr %3      ; 2 uses
  %i.dj = and i64 %2, 4294967295                  ; 5 uses
  %i.dk = icmp eq i32 %i.da, 0                    ; 2 uses
  %i.dl = zext i1 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 8 uses
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 4 uses
  %invariant.op = sub i64 1, %i.dj
  %.sroa.47.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.47, i64 4
  %.sroa.47.4..sroa_idx55 = getelementptr inbounds nuw i8, ptr %.sroa.47, i64 4
  br label %bb.l

bb.l:                                             ; preds = %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit31, %bb.k
  %indvars.iv = phi i64 [ %i.df, %bb.k ], [ %i.gz, %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit31 ] ; 6 uses
  %.sroa.8.0 = phi ptr [ %i.de, %bb.k ], [ %i.gy, %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit31 ] ; 8 uses
  %.019 = phi i32 [ 0, %bb.k ], [ %13, %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit31 ] ; 2 uses
  br i1 %i.dk, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not2531.i.i = icmp ult i64 %indvars.iv, %i.dj
  br i1 %.not2531.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 %indvars.iv
  %i.ds = load i8, ptr %i.di, align 1, !tbaa !202
  %i.dt = sext i8 %i.ds to i32
  %i.du = ptrtoint ptr %i.dr to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %indvars.iv, %.lr.ph.i.i ], [ %i.ed, %bb.p ]
  %.02032.i.i = phi ptr [ %.sroa.8.0, %.lr.ph.i.i ], [ %i.eb, %bb.p ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.dv = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.dv, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.n
  %i.dw = call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.dt, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #17 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.dw, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.dw, ptr nonnull %i.di, i64 %i.dj)
  %i.dx = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.dx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %.sroa.8.0 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.p:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 2 uses
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = sub i64 %i.du, %i.ec                    ; 2 uses
  %.not25.i.i = icmp ult i64 %i.ed, %i.dj
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.n, !llvm.loop !20

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %bb.n, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.p, %bb.l, %bb.m, %bb.o
  %.1.i.i = phi i64 [ 0, %bb.l ], [ -1, %bb.m ], [ %i.ea, %bb.o ], [ -1, %bb.p ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ -1, %bb.n ]
  %spec.select = add i64 %.1.i.i, %i.dl           ; 4 uses
  %i.ee = icmp ugt i64 %spec.select, %indvars.iv
  br i1 %i.ee, label %select.unfold, label %bb.q

bb.q:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.ef = load i32, ptr %i.dm, align 4, !tbaa !435 ; 2 uses
  %i.eg = add nsw i32 %i.ef, 1                    ; 2 uses
  %i.eh = load i8, ptr %i.dn, align 8, !tbaa !434, !range !229, !noundef !230
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.r, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i23

bb.r:                                             ; preds = %bb.q
  %i.ej = load ptr, ptr %i.do, align 8, !tbaa !336 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !218
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(112) %i.ej, i1 noundef zeroext true), !inline_history !21
  store i8 0, ptr %i.dn, align 8, !tbaa !434
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i23

_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i23: ; preds = %bb.r, %bb.q
  %i.en = load i32, ptr %i.dp, align 8, !tbaa !339 ; 2 uses
  %i.eo = add nsw i32 %i.en, %i.eg                ; 2 uses
  %i.ep = load i32, ptr %i.dq, align 4, !tbaa !378
  %i.eq = icmp sgt i32 %i.eo, %i.ep
  br i1 %i.eq, label %bb.s, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE8add_itemEv.exit26, !prof !220

bb.s:                                             ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i23
  %i.er = sitofp i32 %i.eo to double
  %i.es = call noundef double @log2(double noundef %i.er) #17
  %i.et = call double @llvm.ceil.f64(double %i.es)
  %exp2.i.i.i24 = call double @exp2(double %i.et)
  %i.eu = fptosi double %exp2.i.i.i24 to i32      ; 2 uses
  %i.ev = load ptr, ptr %i.do, align 8, !tbaa !336 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !218
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(112) %i.ev, i32 noundef %i.eu), !inline_history !22
  store i32 %i.eu, ptr %i.dq, align 4, !tbaa !378
  %.pre.i25 = load i32, ptr %i.dp, align 8, !tbaa !339
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE8add_itemEv.exit26

_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE8add_itemEv.exit26: ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i23, %bb.s
  %i.ez = phi i32 [ %i.en, %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i23 ], [ %.pre.i25, %bb.s ]
  store i32 %i.eg, ptr %i.dm, align 4, !tbaa !435
  %i.fa = add i32 %i.ez, %i.ef
  store i8 1, ptr %i.dn, align 8, !tbaa !434
  %i.fb = load ptr, ptr %i.do, align 8, !tbaa !336 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !218
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(112) %i.fb, i32 noundef %i.fa), !inline_history !23
  %i.fe = load ptr, ptr %i.do, align 8, !tbaa !336 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.47)
  %i.ff = trunc i64 %spec.select to i32           ; 5 uses
  %i.fg = icmp slt i32 %i.ff, 0
  br i1 %i.fg, label %bb.t, label %bb.w, !prof !220

bb.t:                                             ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE8add_itemEv.exit26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17, !noalias !1147
  store i32 %i.ff, ptr %9, align 16, !tbaa !202, !alias.scope !1148, !noalias !1147
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.fh, align 16, !tbaa !202, !alias.scope !1148, !noalias !1147
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.31, i64 11, i64 17, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17, !noalias !1147
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.31) #32
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %10, align 8, !tbaa !221  ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.v
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !202
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i37 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %common.resume

bb.w:                                             ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE8add_itemEv.exit26
  %i.fo = icmp samesign ult i32 %i.ff, 13
  br i1 %i.fo, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %.sroa.47, align 4
  %i.fp = icmp eq i32 %i.ff, 0
  br i1 %i.fp, label %_ZN8facebook5velox10StringViewC2EPKci.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr null, ptr %.sroa.47.4..sroa_idx55, align 4, !tbaa !202
  %i.fq = and i64 %spec.select, 15
  %i.fr = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.fq) #17, !srcloc !445
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.47, ptr align 1 %.sroa.8.0, i64 %i.fr, i1 false)
  br label %_ZN8facebook5velox10StringViewC2EPKci.exit

bb.z:                                             ; preds = %bb.w
  %i.fs = load i32, ptr %.sroa.8.0, align 1
  store i32 %i.fs, ptr %.sroa.47, align 4
  store ptr %.sroa.8.0, ptr %.sroa.47.4..sroa_idx, align 4, !tbaa !202
  br label %_ZN8facebook5velox10StringViewC2EPKci.exit

_ZN8facebook5velox10StringViewC2EPKci.exit:       ; preds = %bb.x, %bb.y, %bb.z
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !441 ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fe, i64 72
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !444 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 216 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !377
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.aa, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i27

bb.aa:                                            ; preds = %_ZN8facebook5velox10StringViewC2EPKci.exit
  %i.ga = call noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(272) %i.fu) ; 0 uses
  br label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i27

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i27: ; preds = %bb.aa, %_ZN8facebook5velox10StringViewC2EPKci.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 32 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !340
  %.not.i.i28 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i28, label %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit31, label %bb.ab

bb.ab:                                            ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i27
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !338
  call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %i.fu, i32 noundef %i.ge, i1 noundef zeroext true)
  %i.gf = load ptr, ptr %i.gb, align 8, !tbaa !340 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 44
  %i.gh = load i8, ptr %i.gg, align 4, !tbaa !432
  %i.gi = and i8 %i.gh, 2
  %.not.i3.i.i29 = icmp eq i8 %i.gi, 0
  br i1 %.not.i3.i.i29, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i30, label %bb.ac, !prof !256

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #32
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i30: ; preds = %bb.ab
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !433
  %i.gl = lshr i32 %i.fw, 3
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gm ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !202
  %i.gp = trunc i32 %i.fw to i8
  %i.gq = and i8 %i.gp, 7
  %i.gr = shl nuw i8 1, %i.gq
  %i.gs = or i8 %i.go, %i.gr
  store i8 %i.gs, ptr %i.gn, align 1, !tbaa !202
  br label %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit31

_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit31: ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i27, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i30
  %i.gt = load ptr, ptr %i.fx, align 8, !tbaa !377
  %i.gu = sext i32 %i.fw to i64
  %i.gv = getelementptr inbounds [16 x i8], ptr %i.gt, i64 %i.gu ; 2 uses
  store i32 %i.ff, ptr %i.gv, align 8, !tbaa !219
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.47, i64 12, i1 false), !tbaa.struct !446
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  store i8 1, ptr %i.gw, align 8, !tbaa !322
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47)
  %i.gx = add i64 %spec.select, %i.dj             ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 %i.gx ; 2 uses
  %i.gz = sub i64 %indvars.iv, %i.gx              ; 2 uses
  %13 = add nuw nsw i32 %.019, 1
  %14 = add nuw nsw i32 %.019, 2
  %15 = zext nneg i32 %14 to i64
  %i.ha = icmp eq i64 %4, %15
  br i1 %i.ha, label %select.unfold, label %bb.l

select.unfold:                                    ; preds = %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit31, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %.sroa.013.1.ph = phi i64 [ %indvars.iv, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.gz, %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit31 ] ; 2 uses
  %.sroa.8.1.ph = phi ptr [ %.sroa.8.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.gy, %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit31 ] ; 3 uses
  %i.hb = load i32, ptr %i.dm, align 4, !tbaa !435 ; 2 uses
  %i.hc = add nsw i32 %i.hb, 1                    ; 2 uses
  %i.hd = load i8, ptr %i.dn, align 8, !tbaa !434, !range !229, !noundef !230
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.ad, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i32

bb.ad:                                            ; preds = %select.unfold
  %i.hf = load ptr, ptr %i.do, align 8, !tbaa !336 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !218
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(112) %i.hf, i1 noundef zeroext true), !inline_history !21
  store i8 0, ptr %i.dn, align 8, !tbaa !434
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i32

_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i32: ; preds = %bb.ad, %select.unfold
  %i.hj = load i32, ptr %i.dp, align 8, !tbaa !339 ; 2 uses
  %i.hk = add nsw i32 %i.hj, %i.hc                ; 2 uses
  %i.hl = load i32, ptr %i.dq, align 4, !tbaa !378
  %i.hm = icmp sgt i32 %i.hk, %i.hl
  br i1 %i.hm, label %bb.ae, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE8add_itemEv.exit35, !prof !220

bb.ae:                                            ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i32
  %i.hn = sitofp i32 %i.hk to double
  %i.ho = call noundef double @log2(double noundef %i.hn) #17
  %i.hp = call double @llvm.ceil.f64(double %i.ho)
  %exp2.i.i.i33 = call double @exp2(double %i.hp)
  %i.hq = fptosi double %exp2.i.i.i33 to i32      ; 2 uses
  %i.hr = load ptr, ptr %i.do, align 8, !tbaa !336 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !218
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(112) %i.hr, i32 noundef %i.hq), !inline_history !22
  store i32 %i.hq, ptr %i.dq, align 4, !tbaa !378
  %.pre.i34 = load i32, ptr %i.dp, align 8, !tbaa !339
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE8add_itemEv.exit35

_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE8add_itemEv.exit35: ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i32, %bb.ae
  %i.hv = phi i32 [ %i.hj, %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE25commitMostRecentChildItemEv.exit.i.i32 ], [ %.pre.i34, %bb.ae ]
  store i32 %i.hc, ptr %i.dm, align 4, !tbaa !435
  %i.hw = add i32 %i.hv, %i.hb
  store i8 1, ptr %i.dn, align 8, !tbaa !434
  %i.hx = load ptr, ptr %i.do, align 8, !tbaa !336 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !218
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(112) %i.hx, i32 noundef %i.hw), !inline_history !23
  %i.ia = load ptr, ptr %i.do, align 8, !tbaa !336 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.ib = trunc i64 %.sroa.013.1.ph to i32        ; 5 uses
  %i.ic = icmp slt i32 %i.ib, 0
  br i1 %i.ic, label %bb.af, label %bb.ai, !prof !220

bb.af:                                            ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE8add_itemEv.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !1149
  store i32 %i.ib, ptr %7, align 16, !tbaa !202, !alias.scope !1150, !noalias !1149
  %i.id = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.id, align 16, !tbaa !202, !alias.scope !1150, !noalias !1149
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.31, i64 11, i64 17, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !1149
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.31) #32
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ie = landingpad { ptr, i32 }
          cleanup
  %i.if = load ptr, ptr %8, align 8, !tbaa !221   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36: ; preds = %bb.ah
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !202
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i37: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %common.resume

bb.ai:                                            ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7VarcharEE8add_itemEv.exit35
  %i.ik = icmp samesign ult i32 %i.ib, 13
  br i1 %i.ik, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %.sroa.4, align 4
  %i.il = icmp eq i32 %i.ib, 0
  br i1 %i.il, label %_ZN8facebook5velox10StringViewC2EPKci.exit39, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.sroa.4.4..sroa_idx54 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  store ptr null, ptr %.sroa.4.4..sroa_idx54, align 4, !tbaa !202
  %i.im = and i64 %.sroa.013.1.ph, 15
  %i.in = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.im) #17, !srcloc !445
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4, ptr align 1 %.sroa.8.1.ph, i64 %i.in, i1 false)
  br label %_ZN8facebook5velox10StringViewC2EPKci.exit39

bb.al:                                            ; preds = %bb.ai
  %i.io = load i32, ptr %.sroa.8.1.ph, align 1
  store i32 %i.io, ptr %.sroa.4, align 4
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  store ptr %.sroa.8.1.ph, ptr %.sroa.4.4..sroa_idx, align 4, !tbaa !202
  br label %_ZN8facebook5velox10StringViewC2EPKci.exit39

_ZN8facebook5velox10StringViewC2EPKci.exit39:     ; preds = %bb.aj, %bb.ak, %bb.al
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ia, i64 64
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !441 ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ia, i64 72
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !444 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 216 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !377
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.am, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i40

bb.am:                                            ; preds = %_ZN8facebook5velox10StringViewC2EPKci.exit39
  %i.iw = call noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(272) %i.iq) ; 0 uses
  br label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i40

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i40: ; preds = %bb.am, %_ZN8facebook5velox10StringViewC2EPKci.exit39
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 32 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !340
  %.not.i.i41 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i41, label %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit44, label %bb.an

bb.an:                                            ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i40
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iq, i64 56
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !338
  call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %i.iq, i32 noundef %i.ja, i1 noundef zeroext true)
  %i.jb = load ptr, ptr %i.ix, align 8, !tbaa !340 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 44
  %i.jd = load i8, ptr %i.jc, align 4, !tbaa !432
  %i.je = and i8 %i.jd, 2
  %.not.i3.i.i42 = icmp eq i8 %i.je, 0
  br i1 %.not.i3.i.i42, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i43, label %bb.ao, !prof !256

bb.ao:                                            ; preds = %bb.an
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #32
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i43: ; preds = %bb.an
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !433
  %i.jh = lshr i32 %i.is, 3
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ji ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !202
  %i.jl = trunc i32 %i.is to i8
  %i.jm = and i8 %i.jl, 7
  %i.jn = shl nuw i8 1, %i.jm
  %i.jo = or i8 %i.jk, %i.jn
  store i8 %i.jo, ptr %i.jj, align 1, !tbaa !202
  br label %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit44

_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit44: ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i.i40, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i43
  %i.jp = load ptr, ptr %i.it, align 8, !tbaa !377
  %i.jq = sext i32 %i.is to i64
  %i.jr = getelementptr inbounds [16 x i8], ptr %i.jp, i64 %i.jq ; 2 uses
  store i32 %i.ib, ptr %i.jr, align 8, !tbaa !219
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4, i64 12, i1 false), !tbaa.struct !446
  %i.js = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  store i8 1, ptr %i.js, align 8, !tbaa !322
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.jt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !334 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.jw = load i32, ptr %i.dm, align 4, !tbaa !427
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 96
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !340 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 44
  %i.ka = load i8, ptr %i.jz, align 4, !tbaa !432
  %i.kb = and i8 %i.ka, 2
  %.not.i.i.i45 = icmp eq i8 %i.kb, 0
  br i1 %.not.i.i.i45, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i46, label %bb.ap, !prof !256

bb.ap:                                            ; preds = %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit44
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #32
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i46: ; preds = %_ZN8facebook5velox4exec12StringWriter9setNoCopyERKNS0_10StringViewE.exit44
  %i.kc = load i32, ptr %i.dp, align 8, !tbaa !403
  %i.kd = load i32, ptr %i.jv, align 8, !tbaa !318
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !433
  %i.kg = sext i32 %i.kd to i64                   ; 2 uses
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.kg
  store i32 %i.kc, ptr %i.kh, align 4, !tbaa !219
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ju, i64 112
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !340 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 44
  %i.kl = load i8, ptr %i.kk, align 4, !tbaa !432
  %i.km = and i8 %i.kl, 2
  %.not.i4.i.i47 = icmp eq i8 %i.km, 0
  br i1 %.not.i4.i.i47, label %_ZN8facebook5velox15ArrayVectorBase16setOffsetAndSizeEiii.exit.i48, label %bb.aq, !prof !256

end_hunk_0
