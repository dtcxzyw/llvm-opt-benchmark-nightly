Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/bstr-a490daa9957f02e1.bstr.7a768d85a95191e5-cgu.00?download=true
inline.NumInlined: 467
inline.NumDeleted: 47
begin_hunk_0_@_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_revINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr:bb.a
  %i.c = alloca [80 x i8], align 8                ; 14 uses
  %i.d = alloca [80 x i8], align 8                ; 15 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 3 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load i64, ptr %i.q, align 8, !noundef !9 ; 23 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load i64, ptr %i.s, align 8, !noundef !9 ; 5 uses
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = load i8, ptr %i.v, align 8, !range !14, !noundef !9
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.dg, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search12find_rev_impINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr.exit16

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1049
  call void @_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton19start_state_reverseCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !1048
  %i.y = load i32, ptr %i.o, align 8, !range !15, !noalias !1049, !noundef !9
  %i.z = trunc nuw i32 %i.y to i1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1049, !nonnull !9, !align !16, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1049
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !1048, !noalias !1050
  store i64 2, ptr %0, align 8, !alias.scope !1048, !noalias !1050
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search12find_rev_impINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr.exit16

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noalias !1049, !noundef !9 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1049
  %i.af = icmp eq i64 %i.r, %i.t
  br i1 %i.af, label %bb.g, label %.preheader604

.preheader604:                                    ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !9 ; 25 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load i64, ptr %i.ai, align 8            ; 26 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 640
  %.val206 = load i32, ptr %i.ak, align 16        ; 5 uses
  %i.al = tail call i64 @llvm.uadd.sat.i64(i64 %i.r, i64 3)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 664
  %.val212 = load i32, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 668
  %.val213 = load i32, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.val194 = load i32, ptr %i.ao, align 8         ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 652
  %.val195 = load i32, ptr %i.ap, align 4         ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 656
  %.val220 = load i32, ptr %i.aq, align 16        ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 660
  %.val221 = load i32, ptr %i.ar, align 4         ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val230 = load ptr, ptr %i.as, align 16, !nonnull !9 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.val231 = load i64, ptr %i.at, align 8         ; 8 uses
  br label %bb.af

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  %.not.i17 = icmp eq i64 %i.r, 0
  br i1 %.not.i17, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val176 = load ptr, ptr %i.au, align 16, !nonnull !9, !noundef !9
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.val177 = load i64, ptr %i.av, align 8, !noundef !9
  %i.aw = tail call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton14next_eoi_stateCsavRPklju9Q7_4bstr(ptr nonnull %.val176, i64 %.val177, i32 noundef %i.ae) ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.val190 = load i32, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 652
  %.val191 = load i32, ptr %i.ay, align 4
  %i.az = icmp ne i32 %i.aw, 0
  %.not.i.i236 = icmp ule i32 %.val190, %i.aw
  %or.cond.not.i.i = select i1 %i.az, i1 %.not.i.i236, i1 false
  %i.ba = icmp ule i32 %i.aw, %.val191
  %.sroa.0.0.i.i237 = select i1 %or.cond.not.i.i, i1 %i.ba, i1 false
  br i1 %.sroa.0.0.i.i237, label %bb.j, label %bb.df

bb.i:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !1051, !noalias !1052, !noundef !9 ; 2 uses
  %i.bd = add i64 %i.r, -1                        ; 4 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  br i1 %i.be, label %bb.k, label %bb.ac

bb.j:                                             ; preds = %bb.h
  %i.bf = tail call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton13match_patternCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, i32 noundef %i.aw)
  br label %bb.df

bb.k:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !1051, !noalias !1052, !nonnull !9, !noundef !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bd
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !1053, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !1054, !noalias !1055, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057), !noalias !1055
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.val163 = load i64, ptr %i.bo, align 8, !noundef !9 ; 4 uses
  %i.bp = zext i32 %i.ae to i64                   ; 4 uses
  %i.bq = icmp ult i64 %.val163, %i.bp
  br i1 %i.bq, label %bb.o, label %bb.l, !prof !18

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val = load ptr, ptr %i.br, align 16, !nonnull !9, !noundef !9
  %i.bs = sub nuw i64 %.val163, %i.bp             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058), !noalias !1055
  %i.bt = icmp samesign ugt i64 %i.bs, 1
  br i1 %i.bt, label %bb.n, label %bb.m, !prof !19

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef range(i64 0, -9223372036854775808) %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #10, !noalias !1059
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bp ; 2 uses
  %.sroa.02.0.copyload.i.i147 = load i16, ptr %i.bu, align 1, !alias.scope !1058, !noalias !1060 ; 3 uses
  %i.bv = and i16 %.sroa.02.0.copyload.i.i147, 32767
  %i.bw = zext nneg i16 %i.bv to i64              ; 5 uses
  %i.bx = icmp slt i16 %.sroa.02.0.copyload.i.i147, 0
  %i.by = add i64 %i.bs, -2                       ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 2 ; 4 uses
  %i.ca = shl nuw nsw i64 %i.bw, 1                ; 6 uses
  %.not.i238 = icmp samesign ugt i64 %i.ca, %i.by
  br i1 %.not.i238, label %bb.p, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit, !prof !18

bb.o:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.bp, i64 noundef %.val163, i64 noundef %.val163, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #10, !noalias !1060
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #10, !noalias !1061
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit: ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca ; 2 uses
  %i.cc = sub nuw nsw i64 %i.by, %i.ca            ; 2 uses
  %i.cd = shl nuw nsw i64 %i.bw, 2                ; 4 uses
  %.not.i241 = icmp samesign ugt i64 %i.cd, %i.cc
  br i1 %.not.i241, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit245, !prof !18

bb.q:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #10, !noalias !1062
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit245: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd ; 3 uses
  %i.cf = sub nuw nsw i64 %i.cc, %i.cd            ; 4 uses
  br i1 %i.bx, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit245
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063), !noalias !1055
  %i.cg = icmp samesign ugt i64 %i.cf, 3
  br i1 %i.cg, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i161, label %bb.s, !prof !19

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #10, !noalias !1064
  unreachable

bb.t:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit245, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit250
  %.sroa.0525.0 = phi ptr [ %i.ck, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit250 ], [ inttoptr (i64 1 to ptr), %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit245 ]
  %.sroa.5526.0 = phi i64 [ %i.cj, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit250 ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit245 ]
  %.sroa.8527.0 = phi ptr [ %i.cl, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit250 ], [ %i.ce, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit245 ] ; 2 uses
  %.sroa.11528.0 = phi i64 [ %i.cm, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit250 ], [ %i.cf, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit245 ] ; 3 uses
  %.not.i.i151 = icmp eq i64 %.sroa.11528.0, 0
  br i1 %.not.i.i151, label %bb.w, label %bb.v

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i161: ; preds = %bb.r
  %.sroa.02.0.copyload.i1.i158 = load i32, ptr %i.ce, align 1, !alias.scope !1063, !noalias !1060
  %i.ch = zext i32 %.sroa.02.0.copyload.i1.i158 to i64
  %i.ci = add nsw i64 %i.cf, -4                   ; 2 uses
  %i.cj = shl nuw nsw i64 %i.ch, 2                ; 4 uses
  %.not.i246 = icmp samesign ugt i64 %i.cj, %i.ci
  br i1 %.not.i246, label %bb.u, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit250, !prof !18

bb.u:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i161
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #10, !noalias !1065
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit250: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i161
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  %i.cm = sub nuw nsw i64 %i.ci, %i.cj
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  %i.cn = load i8, ptr %.sroa.8527.0, align 1, !noalias !1060, !noundef !9
  %i.co = zext i8 %i.cn to i64                    ; 3 uses
  %.not20.not.i.i152 = icmp samesign ugt i64 %.sroa.11528.0, %i.co
  br i1 %.not20.not.i.i152, label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i153, label %bb.x, !prof !19

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #10, !noalias !1060
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cp = add nuw nsw i64 %i.co, 1
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef %i.cp, i64 noundef %.sroa.11528.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #10, !noalias !1060
  unreachable

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i153: ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.8527.0, i64 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %i.ae, ptr %i.cr, align 8, !alias.scope !1057, !noalias !1066
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %.lobit.i.i154 = lshr i16 %.sroa.02.0.copyload.i.i147, 15
  %i.ct = trunc nuw nsw i16 %.lobit.i.i154 to i8
  store i8 %i.ct, ptr %i.cs, align 4, !alias.scope !1057, !noalias !1066
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.bw, ptr %i.cu, align 8, !alias.scope !1057, !noalias !1066
  store ptr %i.bz, ptr %i.a, align 8, !alias.scope !1057, !noalias !1066
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ca, ptr %i.cv, align 8, !alias.scope !1057, !noalias !1066
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.cb, ptr %i.cw, align 8, !alias.scope !1057, !noalias !1066
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.cd, ptr %i.cx, align 8, !alias.scope !1057, !noalias !1066
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.0525.0, ptr %i.cy, align 8, !alias.scope !1057, !noalias !1066
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.5526.0, ptr %i.cz, align 8, !alias.scope !1057, !noalias !1066
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.cq, ptr %i.da, align 8, !alias.scope !1057, !noalias !1066
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.co, ptr %i.db, align 8, !alias.scope !1057, !noalias !1066
  %i.dc = add nsw i64 %i.bw, -1                   ; 2 uses
  %exitcond988.not1470 = icmp eq i64 %i.dc, 0
  br i1 %exitcond988.not1470, label %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit162, label %.lr.ph1472

bb.y:                                             ; preds = %bb.aa
  %i.dd = add nuw nsw i64 %.sroa.02.0.i.i1551471, 1 ; 2 uses
  %exitcond988.not = icmp eq i64 %i.dd, %i.dc
  br i1 %exitcond988.not, label %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit162, label %.lr.ph1472

.lr.ph1472:                                       ; preds = %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i153, %bb.y
  %.sroa.02.0.i.i1551471 = phi i64 [ %i.dd, %bb.y ], [ 0, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i153 ] ; 4 uses
  %exitcond989.not = icmp eq i64 %.sroa.02.0.i.i1551471, %i.bw
  br i1 %exitcond989.not, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph1472
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ca, i64 noundef %i.ca, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #10, !noalias !1067
  unreachable

bb.aa:                                            ; preds = %.lr.ph1472
  %i.de = shl nuw nsw i64 %.sroa.02.0.i.i1551471, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !noalias !1067, !noundef !9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.de
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !noalias !1067, !noundef !9
  %i.dk = icmp ule i8 %i.dg, %i.bn
  %i.dl = icmp ule i8 %i.bn, %i.dj
  %or.cond.i.i157 = and i1 %i.dk, %i.dl
  br i1 %or.cond.i.i157, label %bb.ab, label %bb.y

bb.ab:                                            ; preds = %bb.aa
  %i.dm = call noundef i32 @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.a, i64 noundef %.sroa.02.0.i.i1551471), !noalias !1055
  br label %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit162

_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit162: ; preds = %bb.y, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i153, %bb.ab
  %.sroa.0.0.i.i156 = phi i32 [ %i.dm, %bb.ab ], [ 0, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i153 ], [ 0, %bb.y ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1056
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.val192 = load i32, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 652
  %.val193 = load i32, ptr %i.do, align 4
  %i.dp = icmp ne i32 %.sroa.0.0.i.i156, 0        ; 2 uses
  %.not.i.i251 = icmp ule i32 %.val192, %.sroa.0.0.i.i156
  %or.cond.not.i.i252 = select i1 %i.dp, i1 %.not.i.i251, i1 false
  %i.dq = icmp ule i32 %.sroa.0.0.i.i156, %.val193
  %.sroa.0.0.i.i253 = select i1 %or.cond.not.i.i252, i1 %i.dq, i1 false
  br i1 %.sroa.0.0.i.i253, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bd, i64 noundef %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #10, !noalias !1053
  unreachable

bb.ad:                                            ; preds = %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit162
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 644
  %.val201 = load i32, ptr %i.dr, align 4
  %i.ds = icmp eq i32 %.val201, %.sroa.0.0.i.i156
  %.sroa.0.0.i254 = select i1 %i.dp, i1 %i.ds, i1 false
  br i1 %.sroa.0.0.i254, label %bb.de, label %bb.df

bb.ae:                                            ; preds = %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit162
  %i.dt = call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton13match_patternCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, i32 noundef %.sroa.0.0.i.i156)
  br label %bb.df

bb.af:                                            ; preds = %.preheader604, %bb.al
  %.sroa.0418.0 = phi i32 [ %.sroa.0418.2, %bb.al ], [ %i.ae, %.preheader604 ] ; 2 uses
  %.sroa.17.0 = phi i32 [ %.sroa.17.1, %bb.al ], [ undef, %.preheader604 ] ; 15 uses
  %.sroa.12.0 = phi i64 [ %.sroa.12.1, %bb.al ], [ undef, %.preheader604 ] ; 15 uses
  %.sroa.0403.0 = phi i64 [ %.sroa.0403.1, %bb.al ], [ 0, %.preheader604 ] ; 15 uses
  %.sroa.025.0.in.i1 = phi i64 [ %.sroa.025.3.i9, %bb.al ], [ %i.t, %.preheader604 ]
  %.sroa.025.0.i2 = add i64 %.sroa.025.0.in.i1, -1 ; 3 uses
  %.not.i4790 = icmp ult i64 %.sroa.025.0.i2, %i.r
  br i1 %.not.i4790, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af, %bb.aj
  %.sroa.025.1.i3792 = phi i64 [ %i.en, %bb.aj ], [ %.sroa.025.0.i2, %bb.af ] ; 8 uses
  %.sroa.0418.1791 = phi i32 [ %i.em, %bb.aj ], [ %.sroa.0418.0, %bb.af ]
  %i.du = icmp ult i64 %.sroa.025.1.i3792, %i.aj
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.025.1.i3792
  %i.dw = load i8, ptr %i.dv, align 1, !noalias !1048, !noundef !9
  %i.dx = tail call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton20next_state_uncheckedCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, i32 noundef %.sroa.0418.1791, i8 noundef %i.dw), !noalias !1048 ; 3 uses
  %.not = icmp ugt i32 %i.dx, %.val206
  %.not57.i6 = icmp ugt i64 %.sroa.025.1.i3792, %i.al
  %or.cond.i7 = and i1 %.not57.i6, %.not
  br i1 %or.cond.i7, label %bb.ag, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aj, %bb.ag, %bb.ai, %bb.ah, %.lr.ph, %bb.af
  %.sroa.0418.2 = phi i32 [ %.sroa.0418.0, %bb.af ], [ %i.ec, %bb.ag ], [ %i.em, %bb.ai ], [ %i.dx, %.lr.ph ], [ %i.eh, %bb.ah ], [ %i.em, %bb.aj ] ; 21 uses
  %.sroa.025.2.i8 = phi i64 [ %.sroa.025.0.i2, %bb.af ], [ %i.dy, %bb.ag ], [ %i.ei, %bb.ai ], [ %.sroa.025.1.i3792, %.lr.ph ], [ %i.ed, %bb.ah ], [ %i.en, %bb.aj ] ; 36 uses
  %.not593 = icmp ugt i32 %.sroa.0418.2, %.val206
  br i1 %.not593, label %bb.al, label %bb.ak

bb.ag:                                            ; preds = %.lr.ph
  %i.dy = add i64 %.sroa.025.1.i3792, -1          ; 3 uses
  %i.dz = icmp ult i64 %i.dy, %i.aj
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !noalias !1048, !noundef !9
  %i.ec = tail call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton20next_state_uncheckedCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, i32 noundef %i.dx, i8 noundef %i.eb), !noalias !1048 ; 3 uses
  %.not590 = icmp ugt i32 %i.ec, %.val206
  br i1 %.not590, label %bb.ah, label %._crit_edge

bb.ah:                                            ; preds = %bb.ag
  %i.ed = add i64 %.sroa.025.1.i3792, -2          ; 3 uses
  %i.ee = icmp ult i64 %i.ed, %i.aj
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ed
  %i.eg = load i8, ptr %i.ef, align 1, !noalias !1048, !noundef !9
  %i.eh = tail call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton20next_state_uncheckedCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, i32 noundef %i.ec, i8 noundef %i.eg), !noalias !1048 ; 3 uses
  %.not591 = icmp ugt i32 %i.eh, %.val206
  br i1 %.not591, label %bb.ai, label %._crit_edge

bb.ai:                                            ; preds = %bb.ah
  %i.ei = add i64 %.sroa.025.1.i3792, -3          ; 3 uses
  %i.ej = icmp ult i64 %i.ei, %i.aj
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ei
  %i.el = load i8, ptr %i.ek, align 1, !noalias !1048, !noundef !9
  %i.em = tail call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton20next_state_uncheckedCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, i32 noundef %i.eh, i8 noundef %i.el), !noalias !1048 ; 4 uses
  %.not592 = icmp ugt i32 %i.em, %.val206
  br i1 %.not592, label %bb.aj, label %._crit_edge

bb.aj:                                            ; preds = %bb.ai
  %i.en = add i64 %.sroa.025.1.i3792, -4          ; 3 uses
  %.not.i4 = icmp ult i64 %i.en, %i.r
  br i1 %.not.i4, label %._crit_edge, label %.lr.ph

bb.ak:                                            ; preds = %._crit_edge
  %i.eo = icmp ne i32 %.sroa.0418.2, 0            ; 3 uses
  %.not.i.i255 = icmp ule i32 %.val212, %.sroa.0418.2
  %or.cond.not.i.i256 = select i1 %i.eo, i1 %.not.i.i255, i1 false
  %i.ep = icmp ule i32 %.sroa.0418.2, %.val213
  %.sroa.0.0.i.i257 = select i1 %or.cond.not.i.i256, i1 %i.ep, i1 false
  br i1 %.sroa.0.0.i.i257, label %bb.an, label %bb.am

.sink.split:                                      ; preds = %bb.bz, %bb.cb, %bb.cd, %bb.bn, %bb.bp, %bb.br, %bb.ax, %bb.az, %bb.bb
  %.sink1318.sink = phi { i64, ptr } [ %i.hf, %bb.br ], [ %i.fz, %bb.bb ], [ %i.fp, %bb.az ], [ %i.fh, %bb.ax ], [ %i.gv, %bb.bp ], [ %i.gn, %bb.bn ], [ %i.hw, %bb.cb ], [ %i.ho, %bb.bz ], [ %i.ig, %bb.cd ]
  %.sroa.17.1.ph = phi i32 [ %i.ex, %bb.br ], [ %.sroa.17.0, %bb.bb ], [ %.sroa.17.0, %bb.az ], [ %.sroa.17.0, %bb.ax ], [ %i.ex, %bb.bp ], [ %i.ex, %bb.bn ], [ %.sroa.17.0, %bb.cb ], [ %.sroa.17.0, %bb.bz ], [ %.sroa.17.0, %bb.cd ]
  %.sroa.12.1.ph = phi i64 [ %i.ey, %bb.br ], [ %.sroa.12.0, %bb.bb ], [ %.sroa.12.0, %bb.az ], [ %.sroa.12.0, %bb.ax ], [ %i.ey, %bb.bp ], [ %i.ey, %bb.bn ], [ %.sroa.12.0, %bb.cb ], [ %.sroa.12.0, %bb.bz ], [ %.sroa.12.0, %bb.cd ]
  %.sroa.0403.1.ph = phi i64 [ 1, %bb.br ], [ %.sroa.0403.0, %bb.bb ], [ %.sroa.0403.0, %bb.az ], [ %.sroa.0403.0, %bb.ax ], [ 1, %bb.bp ], [ 1, %bb.bn ], [ %.sroa.0403.0, %bb.cb ], [ %.sroa.0403.0, %bb.bz ], [ %.sroa.0403.0, %bb.cd ]
  %i.eq = extractvalue { i64, ptr } %.sink1318.sink, 1
  %i.er = tail call noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsavRPklju9Q7_4bstr(ptr noundef %i.eq, ptr noundef nonnull readonly %i.ah), !noalias !1048 ; 2 uses
  %.not.i.i = icmp ult i64 %i.er, %.sroa.025.2.i8
  tail call void @llvm.assume(i1 %.not.i.i), !noalias !1048
  %i.es = add nuw i64 %i.er, 1
  br label %bb.al
end_hunk_0
begin_hunk_1_@_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_revINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr:bb.a
  %i.hc = load i8, ptr %i.gi, align 1, !alias.scope !1074, !noalias !1076, !noundef !9
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.025.2.i8
  %i.he = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr12memrchr3_raw2FN monotonic, align 8, !noalias !1079, !nonnull !9, !noundef !9
  %i.hf = tail call { i64, ptr } %i.he(i8 noundef %i.hc, i8 noundef %i.hb, i8 noundef %i.gz, ptr noundef nonnull readonly %i.ah, ptr noundef nonnull readonly %i.hd), !noalias !1079, !inline_history !5 ; 2 uses
  %i.hg = extractvalue { i64, ptr } %i.hf, 0
  %i.hh = trunc nuw i64 %i.hg to i1
  br i1 %i.hh, label %.sink.split, label %.thread1127

bb.bs:                                            ; preds = %bb.bl
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.025.2.i8, i64 noundef range(i64 0, -9223372036854775808) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #10, !noalias !1075
  unreachable

bb.bt:                                            ; preds = %bb.an
  %i.hi = tail call fastcc { ptr, i64 } @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton11acceleratorCsavRPklju9Q7_4bstr(ptr nonnull %.val230, i64 %.val231, i32 noundef %.sroa.0418.2) ; 2 uses
  %i.hj = extractvalue { ptr, i64 } %i.hi, 0      ; 6 uses
  %i.hk = extractvalue { ptr, i64 } %i.hi, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  switch i64 %i.hk, label %bb.bu [
    i64 1, label %bb.bv
    i64 2, label %bb.bw
    i64 3, label %bb.bx
    i64 0, label %bb.by
  ], !prof !24

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1081
  store i64 %i.hk, ptr %i.n, align 8, !noalias !1081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1081
  store ptr %i.n, ptr %i.m, align 8, !noalias !1081
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1081
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #10, !noalias !1081
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %.not11.i = icmp ugt i64 %.sroa.025.2.i8, %i.aj
  br i1 %.not11.i, label %bb.ca, label %bb.bz, !prof !10

bb.bw:                                            ; preds = %bb.bt
  %.not10.i = icmp ugt i64 %.sroa.025.2.i8, %i.aj
  br i1 %.not10.i, label %bb.cc, label %bb.cb, !prof !10

bb.bx:                                            ; preds = %bb.bt
  %.not.i40 = icmp ugt i64 %.sroa.025.2.i8, %i.aj
  br i1 %.not.i40, label %bb.ce, label %bb.cd, !prof !10

bb.by:                                            ; preds = %bb.bt
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #10, !noalias !1081
  unreachable

bb.bz:                                            ; preds = %bb.bv
  %i.hl = load i8, ptr %i.hj, align 1, !alias.scope !1080, !noalias !1082, !noundef !9
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.025.2.i8
  %i.hn = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !1083, !nonnull !9, !noundef !9
  %i.ho = tail call { i64, ptr } %i.hn(i8 noundef %i.hl, ptr noundef nonnull readonly %i.ah, ptr noundef nonnull readonly %i.hm), !noalias !1083, !inline_history !3 ; 2 uses
  %i.hp = extractvalue { i64, ptr } %i.ho, 0
  %i.hq = trunc nuw i64 %i.hp to i1
  br i1 %i.hq, label %.sink.split, label %.thread1127

bb.ca:                                            ; preds = %bb.bv
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.025.2.i8, i64 noundef range(i64 0, -9223372036854775808) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #10, !noalias !1081
  unreachable

bb.cb:                                            ; preds = %bb.bw
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %i.hs = load i8, ptr %i.hr, align 1, !alias.scope !1080, !noalias !1082, !noundef !9
  %i.ht = load i8, ptr %i.hj, align 1, !alias.scope !1080, !noalias !1082, !noundef !9
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.025.2.i8
  %i.hv = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr12memrchr2_raw2FN monotonic, align 8, !noalias !1084, !nonnull !9, !noundef !9
  %i.hw = tail call { i64, ptr } %i.hv(i8 noundef %i.ht, i8 noundef %i.hs, ptr noundef nonnull readonly %i.ah, ptr noundef nonnull readonly %i.hu), !noalias !1084, !inline_history !4 ; 2 uses
  %i.hx = extractvalue { i64, ptr } %i.hw, 0
  %i.hy = trunc nuw i64 %i.hx to i1
  br i1 %i.hy, label %.sink.split, label %.thread1127

bb.cc:                                            ; preds = %bb.bw
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.025.2.i8, i64 noundef range(i64 0, -9223372036854775808) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #10, !noalias !1081
  unreachable

bb.cd:                                            ; preds = %bb.bx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  %i.ia = load i8, ptr %i.hz, align 1, !alias.scope !1080, !noalias !1082, !noundef !9
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %i.ic = load i8, ptr %i.ib, align 1, !alias.scope !1080, !noalias !1082, !noundef !9
  %i.id = load i8, ptr %i.hj, align 1, !alias.scope !1080, !noalias !1082, !noundef !9
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.025.2.i8
  %i.if = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr12memrchr3_raw2FN monotonic, align 8, !noalias !1085, !nonnull !9, !noundef !9
  %i.ig = tail call { i64, ptr } %i.if(i8 noundef %i.id, i8 noundef %i.ic, i8 noundef %i.ia, ptr noundef nonnull readonly %i.ah, ptr noundef nonnull readonly %i.ie), !noalias !1085, !inline_history !5 ; 2 uses
  %i.ih = extractvalue { i64, ptr } %i.ig, 0
  %i.ii = trunc nuw i64 %i.ih to i1
  br i1 %i.ii, label %.sink.split, label %.thread1127

bb.ce:                                            ; preds = %bb.bx
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.025.2.i8, i64 noundef range(i64 0, -9223372036854775808) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #10, !noalias !1081
  unreachable

.thread1127:                                      ; preds = %bb.al, %bb.bz, %bb.cb, %bb.cd, %bb.bn, %bb.bp, %bb.br, %bb.ax, %bb.az, %bb.bb
  %.sroa.0403.11134 = phi i64 [ %.sroa.0403.0, %bb.bz ], [ 1, %bb.bn ], [ %.sroa.0403.0, %bb.ax ], [ %.sroa.0403.0, %bb.bb ], [ %.sroa.0403.0, %bb.az ], [ 1, %bb.br ], [ 1, %bb.bp ], [ %.sroa.0403.0, %bb.cd ], [ %.sroa.0403.0, %bb.cb ], [ %.sroa.0403.1, %bb.al ] ; 3 uses
  %.sroa.12.11133 = phi i64 [ %.sroa.12.0, %bb.bz ], [ %i.ey, %bb.bn ], [ %.sroa.12.0, %bb.ax ], [ %.sroa.12.0, %bb.bb ], [ %.sroa.12.0, %bb.az ], [ %i.ey, %bb.br ], [ %i.ey, %bb.bp ], [ %.sroa.12.0, %bb.cd ], [ %.sroa.12.0, %bb.cb ], [ %.sroa.12.1, %bb.al ] ; 3 uses
  %.sroa.17.11132 = phi i32 [ %.sroa.17.0, %bb.bz ], [ %i.ex, %bb.bn ], [ %.sroa.17.0, %bb.ax ], [ %.sroa.17.0, %bb.bb ], [ %.sroa.17.0, %bb.az ], [ %i.ex, %bb.br ], [ %i.ex, %bb.bp ], [ %.sroa.17.0, %bb.cd ], [ %.sroa.17.0, %bb.cb ], [ %.sroa.17.1, %bb.al ] ; 3 uses
  %.not.i19 = icmp eq i64 %i.r, 0
  br i1 %.not.i19, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.thread1127
  %i.ij = tail call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton14next_eoi_stateCsavRPklju9Q7_4bstr(ptr nonnull %.val230, i64 %.val231, i32 noundef %.sroa.0418.2) ; 4 uses
  %i.ik = icmp ne i32 %i.ij, 0
  %.not.i.i270 = icmp ule i32 %.val194, %i.ij
  %or.cond.not.i.i271 = select i1 %i.ik, i1 %.not.i.i270, i1 false
  %i.il = icmp ule i32 %i.ij, %.val195
  %.sroa.0.0.i.i272 = select i1 %or.cond.not.i.i271, i1 %i.il, i1 false
  br i1 %.sroa.0.0.i.i272, label %bb.ch, label %bb.dd

bb.cg:                                            ; preds = %.thread1127
  %i.im = add i64 %i.r, -1                        ; 4 uses
  %i.in = icmp ult i64 %i.im, %i.aj
  br i1 %i.in, label %bb.ci, label %bb.cz

bb.ch:                                            ; preds = %bb.cf
  %i.io = tail call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton13match_patternCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, i32 noundef %i.ij)
  br label %bb.dd

bb.ci:                                            ; preds = %bb.cg
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.im
  %i.iq = load i8, ptr %i.ip, align 1, !noalias !1086, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %i.ir = zext i8 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ir
  %i.iu = load i8, ptr %i.it, align 1, !alias.scope !1087, !noalias !1088, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1089
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090), !noalias !1088
  %i.iv = zext i32 %.sroa.0418.2 to i64           ; 4 uses
  %i.iw = icmp ult i64 %.val231, %i.iv
  br i1 %i.iw, label %bb.cm, label %bb.cj, !prof !18

bb.cj:                                            ; preds = %bb.ci
  %i.ix = sub nuw i64 %.val231, %i.iv             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091), !noalias !1088
  %i.iy = icmp samesign ugt i64 %i.ix, 1
  br i1 %i.iy, label %bb.cl, label %bb.ck, !prof !19

bb.ck:                                            ; preds = %bb.cj
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef range(i64 0, -9223372036854775808) %i.ix, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #10, !noalias !1092
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.iz = getelementptr inbounds nuw i8, ptr %.val230, i64 %i.iv ; 2 uses
  %.sroa.02.0.copyload.i.i131 = load i16, ptr %i.iz, align 1, !alias.scope !1091, !noalias !1093 ; 3 uses
  %i.ja = and i16 %.sroa.02.0.copyload.i.i131, 32767
  %i.jb = zext nneg i16 %i.ja to i64              ; 5 uses
  %i.jc = icmp slt i16 %.sroa.02.0.copyload.i.i131, 0
  %i.jd = add i64 %i.ix, -2                       ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 2 ; 4 uses
  %i.jf = shl nuw nsw i64 %i.jb, 1                ; 6 uses
  %.not.i273 = icmp samesign ugt i64 %i.jf, %i.jd
  br i1 %.not.i273, label %bb.cn, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit277, !prof !18

bb.cm:                                            ; preds = %bb.ci
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.iv, i64 noundef %.val231, i64 noundef %.val231, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #10, !noalias !1093
  unreachable

bb.cn:                                            ; preds = %bb.cl
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #10, !noalias !1094
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit277: ; preds = %bb.cl
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jf ; 2 uses
  %i.jh = sub nuw nsw i64 %i.jd, %i.jf            ; 2 uses
  %i.ji = shl nuw nsw i64 %i.jb, 2                ; 4 uses
  %.not.i278 = icmp samesign ugt i64 %i.ji, %i.jh
  br i1 %.not.i278, label %bb.co, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit282, !prof !18

bb.co:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit277
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #10, !noalias !1095
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit282: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit277
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ji ; 3 uses
  %i.jk = sub nuw nsw i64 %i.jh, %i.ji            ; 4 uses
  br i1 %i.jc, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit282
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096), !noalias !1088
  %i.jl = icmp samesign ugt i64 %i.jk, 3
  br i1 %i.jl, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i145, label %bb.cq, !prof !19

bb.cq:                                            ; preds = %bb.cp
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.jk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #10, !noalias !1097
  unreachable

bb.cr:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit282, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit287
  %.sroa.0513.0 = phi ptr [ %i.jp, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit287 ], [ inttoptr (i64 1 to ptr), %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit282 ]
  %.sroa.5514.0 = phi i64 [ %i.jo, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit287 ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit282 ]
  %.sroa.8515.0 = phi ptr [ %i.jq, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit287 ], [ %i.jj, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit282 ] ; 2 uses
  %.sroa.11516.0 = phi i64 [ %i.jr, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit287 ], [ %i.jk, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit282 ] ; 3 uses
  %.not.i.i135 = icmp eq i64 %.sroa.11516.0, 0
  br i1 %.not.i.i135, label %bb.cu, label %bb.ct

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i145: ; preds = %bb.cp
  %.sroa.02.0.copyload.i1.i142 = load i32, ptr %i.jj, align 1, !alias.scope !1096, !noalias !1093
  %i.jm = zext i32 %.sroa.02.0.copyload.i1.i142 to i64
  %i.jn = add nsw i64 %i.jk, -4                   ; 2 uses
  %i.jo = shl nuw nsw i64 %i.jm, 2                ; 4 uses
  %.not.i283 = icmp samesign ugt i64 %i.jo, %i.jn
  br i1 %.not.i283, label %bb.cs, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit287, !prof !18

bb.cs:                                            ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i145
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #10, !noalias !1098
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit287: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i145
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 4 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jo
  %i.jr = sub nuw nsw i64 %i.jn, %i.jo
  br label %bb.cr

bb.ct:                                            ; preds = %bb.cr
  %i.js = load i8, ptr %.sroa.8515.0, align 1, !noalias !1093, !noundef !9
  %i.jt = zext i8 %i.js to i64                    ; 3 uses
  %.not20.not.i.i136 = icmp samesign ugt i64 %.sroa.11516.0, %i.jt
  br i1 %.not20.not.i.i136, label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i137, label %bb.cv, !prof !19

bb.cu:                                            ; preds = %bb.cr
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #10, !noalias !1093
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.ju = add nuw nsw i64 %i.jt, 1
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef %i.ju, i64 noundef %.sroa.11516.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #10, !noalias !1093
  unreachable

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i137: ; preds = %bb.ct
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.8515.0, i64 1
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %.sroa.0418.2, ptr %i.jw, align 8, !alias.scope !1090, !noalias !1099
  %i.jx = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %.lobit.i.i138 = lshr i16 %.sroa.02.0.copyload.i.i131, 15
  %i.jy = trunc nuw nsw i16 %.lobit.i.i138 to i8
  store i8 %i.jy, ptr %i.jx, align 4, !alias.scope !1090, !noalias !1099
  %i.jz = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.jb, ptr %i.jz, align 8, !alias.scope !1090, !noalias !1099
  store ptr %i.je, ptr %i.b, align 8, !alias.scope !1090, !noalias !1099
  %i.ka = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.jf, ptr %i.ka, align 8, !alias.scope !1090, !noalias !1099
  %i.kb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.jg, ptr %i.kb, align 8, !alias.scope !1090, !noalias !1099
  %i.kc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.ji, ptr %i.kc, align 8, !alias.scope !1090, !noalias !1099
  %i.kd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.0513.0, ptr %i.kd, align 8, !alias.scope !1090, !noalias !1099
  %i.ke = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.5514.0, ptr %i.ke, align 8, !alias.scope !1090, !noalias !1099
  %i.kf = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.jv, ptr %i.kf, align 8, !alias.scope !1090, !noalias !1099
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.jt, ptr %i.kg, align 8, !alias.scope !1090, !noalias !1099
  %i.kh = add nsw i64 %i.jb, -1                   ; 2 uses
  %exitcond.not1467 = icmp eq i64 %i.kh, 0
  br i1 %exitcond.not1467, label %.thread, label %.lr.ph1469

bb.cw:                                            ; preds = %bb.cy
  %i.ki = add nuw nsw i64 %.sroa.02.0.i.i1391468, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ki, %i.kh
  br i1 %exitcond.not, label %.thread, label %.lr.ph1469

.thread:                                          ; preds = %bb.cw, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1089
  br label %bb.dd

.lr.ph1469:                                       ; preds = %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i137, %bb.cw
  %.sroa.02.0.i.i1391468 = phi i64 [ %i.ki, %bb.cw ], [ 0, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i137 ] ; 4 uses
  %exitcond986.not = icmp eq i64 %.sroa.02.0.i.i1391468, %i.jb
  br i1 %exitcond986.not, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.lr.ph1469
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.jf, i64 noundef %i.jf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #10, !noalias !1100
  unreachable

bb.cy:                                            ; preds = %.lr.ph1469
  %i.kj = shl nuw nsw i64 %.sroa.02.0.i.i1391468, 1 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !noalias !1100, !noundef !9
  %i.km = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.kj
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 1
  %i.ko = load i8, ptr %i.kn, align 1, !noalias !1100, !noundef !9
  %i.kp = icmp ule i8 %i.kl, %i.iu
  %i.kq = icmp ule i8 %i.iu, %i.ko
  %or.cond.i.i141 = and i1 %i.kp, %i.kq
  br i1 %or.cond.i.i141, label %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit146, label %bb.cw

_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit146: ; preds = %bb.cy
  %i.kr = call noundef i32 @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.b, i64 noundef %.sroa.02.0.i.i1391468), !noalias !1088 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1089
  %i.ks = icmp ne i32 %i.kr, 0                    ; 2 uses
  %.not.i.i288 = icmp ule i32 %.val194, %i.kr
  %or.cond.not.i.i289 = select i1 %i.ks, i1 %.not.i.i288, i1 false
  %i.kt = icmp ule i32 %i.kr, %.val195
  %.sroa.0.0.i.i290 = select i1 %or.cond.not.i.i289, i1 %i.kt, i1 false
  br i1 %.sroa.0.0.i.i290, label %bb.db, label %bb.da

bb.cz:                                            ; preds = %bb.cg
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.im, i64 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #10, !noalias !1086
  unreachable

bb.da:                                            ; preds = %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit146
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 644
  %.val200 = load i32, ptr %i.ku, align 4
  %i.kv = icmp eq i32 %.val200, %i.kr
  %.sroa.0.0.i291 = select i1 %i.ks, i1 %i.kv, i1 false
  br i1 %.sroa.0.0.i291, label %bb.dc, label %bb.dd

bb.db:                                            ; preds = %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit146
  %i.kw = call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton13match_patternCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, i32 noundef %i.kr)
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.kx = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10MatchError4quit(i8 noundef %i.iq, i64 noundef %i.im), !noalias !1088
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kx, ptr %i.ky, align 8, !alias.scope !1048, !noalias !1050
  store i64 2, ptr %0, align 8, !alias.scope !1048, !noalias !1050
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search12find_rev_impINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr.exit16

bb.dd:                                            ; preds = %.thread, %bb.db, %bb.da, %bb.ch, %bb.cf
  %.sroa.17.3.ph = phi i32 [ %.sroa.17.11132, %bb.da ], [ %i.kw, %bb.db ], [ %.sroa.17.11132, %bb.cf ], [ %i.io, %bb.ch ], [ %.sroa.17.11132, %.thread ]
  %.sroa.12.3.ph = phi i64 [ %.sroa.12.11133, %bb.da ], [ %i.r, %bb.db ], [ %.sroa.12.11133, %bb.cf ], [ 0, %bb.ch ], [ %.sroa.12.11133, %.thread ]
  %.sroa.0403.3.ph = phi i64 [ %.sroa.0403.11134, %bb.da ], [ 1, %bb.db ], [ %.sroa.0403.11134, %bb.cf ], [ 1, %bb.ch ], [ %.sroa.0403.11134, %.thread ]
  store i64 %.sroa.0403.3.ph, ptr %0, align 8, !noalias !1050
  %.sroa.4450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.3.ph, ptr %.sroa.4450.0..sroa_idx, align 8, !noalias !1050
  %.sroa.5451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.17.3.ph, ptr %.sroa.5451.0..sroa_idx, align 8, !noalias !1050
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search12find_rev_impINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr.exit16

bb.de:                                            ; preds = %bb.ad
  %i.kz = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10MatchError4quit(i8 noundef %i.bj, i64 noundef %i.bd), !noalias !1055
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kz, ptr %i.la, align 8, !alias.scope !1048, !noalias !1050
  store i64 2, ptr %0, align 8, !alias.scope !1048, !noalias !1050
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search12find_rev_impINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr.exit16

bb.df:                                            ; preds = %bb.ae, %bb.ad, %bb.j, %bb.h
  %.sroa.17.2.ph = phi i32 [ undef, %bb.ad ], [ %i.dt, %bb.ae ], [ undef, %bb.h ], [ %i.bf, %bb.j ]
  %.sroa.12.2.ph = phi i64 [ undef, %bb.ad ], [ %i.r, %bb.ae ], [ undef, %bb.h ], [ 0, %bb.j ]
  %.sroa.0403.2.ph = phi i64 [ 0, %bb.ad ], [ 1, %bb.ae ], [ 0, %bb.h ], [ 1, %bb.j ]
  store i64 %.sroa.0403.2.ph, ptr %0, align 8, !noalias !1050
  %.sroa.4442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.2.ph, ptr %.sroa.4442.0..sroa_idx, align 8, !noalias !1050
  %.sroa.5443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.17.2.ph, ptr %.sroa.5443.0..sroa_idx, align 8, !noalias !1050
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search12find_rev_impINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr.exit16

bb.dg:                                            ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1102
  call void @_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton19start_state_reverseCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !1101
  %i.lb = load i32, ptr %i.p, align 8, !range !15, !noalias !1102, !noundef !9
  %i.lc = trunc nuw i32 %i.lb to i1
  br i1 %i.lc, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ld = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !noalias !1102, !nonnull !9, !align !16, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1102
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.le, ptr %i.lf, align 8, !alias.scope !1101, !noalias !1103
  store i64 2, ptr %0, align 8, !alias.scope !1101, !noalias !1103
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search12find_rev_impINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr.exit16

bb.di:                                            ; preds = %bb.dg
  %i.lg = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.lh = load i32, ptr %i.lg, align 4, !noalias !1102, !noundef !9 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1102
  %i.li = icmp eq i64 %i.r, %i.t
  br i1 %i.li, label %bb.dj, label %.preheader

.preheader:                                       ; preds = %bb.di
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !nonnull !9 ; 19 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lm = load i64, ptr %i.ll, align 8            ; 20 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 640
  %.val211 = load i32, ptr %i.ln, align 16        ; 5 uses
  %i.lo = tail call i64 @llvm.uadd.sat.i64(i64 %i.r, i64 3)
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 664
  %.val214 = load i32, ptr %i.lp, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 668
  %.val215 = load i32, ptr %i.lq, align 4
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.val196 = load i32, ptr %i.lr, align 8         ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 652
  %.val197 = load i32, ptr %i.ls, align 4         ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 656
  %.val224 = load i32, ptr %i.lt, align 16        ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 660
  %.val225 = load i32, ptr %i.lu, align 4         ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val234 = load ptr, ptr %i.lv, align 16, !nonnull !9 ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.val235 = load i64, ptr %i.lw, align 8         ; 7 uses
  br label %bb.ei

bb.dj:                                            ; preds = %bb.di
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  %.not.i26 = icmp eq i64 %i.r, 0
  br i1 %.not.i26, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val172 = load ptr, ptr %i.lx, align 16, !nonnull !9, !noundef !9
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.val173 = load i64, ptr %i.ly, align 8, !noundef !9
  %i.lz = tail call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton14next_eoi_stateCsavRPklju9Q7_4bstr(ptr nonnull %.val172, i64 %.val173, i32 noundef %i.lh) ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.val182 = load i32, ptr %i.ma, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 652
  %.val183 = load i32, ptr %i.mb, align 4
  %i.mc = icmp ne i32 %i.lz, 0
  %.not.i.i292 = icmp ule i32 %.val182, %i.lz
  %or.cond.not.i.i293 = select i1 %i.mc, i1 %.not.i.i292, i1 false
  %i.md = icmp ule i32 %i.lz, %.val183
  %.sroa.0.0.i.i294 = select i1 %or.cond.not.i.i293, i1 %i.md, i1 false
  br i1 %.sroa.0.0.i.i294, label %bb.dm, label %bb.gw

bb.dl:                                            ; preds = %bb.dj
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mf = load i64, ptr %i.me, align 8, !alias.scope !1104, !noalias !1105, !noundef !9 ; 2 uses
  %i.mg = add i64 %i.r, -1                        ; 4 uses
  %i.mh = icmp ult i64 %i.mg, %i.mf
  br i1 %i.mh, label %bb.dn, label %bb.ef

bb.dm:                                            ; preds = %bb.dk
  %i.mi = tail call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton13match_patternCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, i32 noundef %i.lz)
  br label %bb.gw

bb.dn:                                            ; preds = %bb.dl
  %i.mj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !alias.scope !1104, !noalias !1105, !nonnull !9, !noundef !9
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mg
  %i.mm = load i8, ptr %i.ml, align 1, !noalias !1106, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  %i.mn = zext i8 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mn
  %i.mq = load i8, ptr %i.mp, align 1, !alias.scope !1107, !noalias !1108, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1109
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1110), !noalias !1108
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.val167 = load i64, ptr %i.mr, align 8, !noundef !9 ; 4 uses
  %i.ms = zext i32 %i.lh to i64                   ; 4 uses
  %i.mt = icmp ult i64 %.val167, %i.ms
  br i1 %i.mt, label %bb.dr, label %bb.do, !prof !18

bb.do:                                            ; preds = %bb.dn
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val166 = load ptr, ptr %i.mu, align 16, !nonnull !9, !noundef !9
  %i.mv = sub nuw i64 %.val167, %i.ms             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111), !noalias !1108
  %i.mw = icmp samesign ugt i64 %i.mv, 1
  br i1 %i.mw, label %bb.dq, label %bb.dp, !prof !19

bb.dp:                                            ; preds = %bb.do
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef range(i64 0, -9223372036854775808) %i.mv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #10, !noalias !1112
  unreachable

bb.dq:                                            ; preds = %bb.do
  %i.mx = getelementptr inbounds nuw i8, ptr %.val166, i64 %i.ms ; 2 uses
  %.sroa.02.0.copyload.i.i115 = load i16, ptr %i.mx, align 1, !alias.scope !1111, !noalias !1113 ; 3 uses
  %i.my = and i16 %.sroa.02.0.copyload.i.i115, 32767
  %i.mz = zext nneg i16 %i.my to i64              ; 5 uses
  %i.na = icmp slt i16 %.sroa.02.0.copyload.i.i115, 0
  %i.nb = add i64 %i.mv, -2                       ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mx, i64 2 ; 4 uses
  %i.nd = shl nuw nsw i64 %i.mz, 1                ; 6 uses
  %.not.i295 = icmp samesign ugt i64 %i.nd, %i.nb
  br i1 %.not.i295, label %bb.ds, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit299, !prof !18

bb.dr:                                            ; preds = %bb.dn
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ms, i64 noundef %.val167, i64 noundef %.val167, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #10, !noalias !1113
  unreachable

bb.ds:                                            ; preds = %bb.dq
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #10, !noalias !1114
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit299: ; preds = %bb.dq
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.nd ; 2 uses
  %i.nf = sub nuw nsw i64 %i.nb, %i.nd            ; 2 uses
  %i.ng = shl nuw nsw i64 %i.mz, 2                ; 4 uses
  %.not.i300 = icmp samesign ugt i64 %i.ng, %i.nf
  br i1 %.not.i300, label %bb.dt, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit304, !prof !18

bb.dt:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit299
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #10, !noalias !1115
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit304: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit299
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.ng ; 3 uses
  %i.ni = sub nuw nsw i64 %i.nf, %i.ng            ; 4 uses
  br i1 %i.na, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116), !noalias !1108
  %i.nj = icmp samesign ugt i64 %i.ni, 3
  br i1 %i.nj, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i129, label %bb.dv, !prof !19

bb.dv:                                            ; preds = %bb.du
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.ni, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #10, !noalias !1117
  unreachable

bb.dw:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit304, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit309
  %.sroa.0501.0 = phi ptr [ %i.nn, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit309 ], [ inttoptr (i64 1 to ptr), %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit304 ]
  %.sroa.5502.0 = phi i64 [ %i.nm, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit309 ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit304 ]
  %.sroa.8503.0 = phi ptr [ %i.no, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit309 ], [ %i.nh, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit304 ] ; 2 uses
  %.sroa.11504.0 = phi i64 [ %i.np, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit309 ], [ %i.ni, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit304 ] ; 3 uses
  %.not.i.i119 = icmp eq i64 %.sroa.11504.0, 0
  br i1 %.not.i.i119, label %bb.dz, label %bb.dy

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i129: ; preds = %bb.du
  %.sroa.02.0.copyload.i1.i126 = load i32, ptr %i.nh, align 1, !alias.scope !1116, !noalias !1113
  %i.nk = zext i32 %.sroa.02.0.copyload.i1.i126 to i64
  %i.nl = add nsw i64 %i.ni, -4                   ; 2 uses
  %i.nm = shl nuw nsw i64 %i.nk, 2                ; 4 uses
  %.not.i305 = icmp samesign ugt i64 %i.nm, %i.nl
  br i1 %.not.i305, label %bb.dx, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit309, !prof !18

bb.dx:                                            ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i129
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #10, !noalias !1118
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit309: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i129
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nh, i64 4 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nm
  %i.np = sub nuw nsw i64 %i.nl, %i.nm
  br label %bb.dw

bb.dy:                                            ; preds = %bb.dw
  %i.nq = load i8, ptr %.sroa.8503.0, align 1, !noalias !1113, !noundef !9
  %i.nr = zext i8 %i.nq to i64                    ; 3 uses
  %.not20.not.i.i120 = icmp samesign ugt i64 %.sroa.11504.0, %i.nr
  br i1 %.not20.not.i.i120, label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i121, label %bb.ea, !prof !19

bb.dz:                                            ; preds = %bb.dw
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #10, !noalias !1113
  unreachable

bb.ea:                                            ; preds = %bb.dy
  %i.ns = add nuw nsw i64 %i.nr, 1
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef %i.ns, i64 noundef %.sroa.11504.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #10, !noalias !1113
  unreachable

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i121: ; preds = %bb.dy
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.8503.0, i64 1
  %i.nu = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 %i.lh, ptr %i.nu, align 8, !alias.scope !1110, !noalias !1119
  %i.nv = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %.lobit.i.i122 = lshr i16 %.sroa.02.0.copyload.i.i115, 15
  %i.nw = trunc nuw nsw i16 %.lobit.i.i122 to i8
  store i8 %i.nw, ptr %i.nv, align 4, !alias.scope !1110, !noalias !1119
  %i.nx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %i.mz, ptr %i.nx, align 8, !alias.scope !1110, !noalias !1119
  store ptr %i.nc, ptr %i.c, align 8, !alias.scope !1110, !noalias !1119
  %i.ny = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.nd, ptr %i.ny, align 8, !alias.scope !1110, !noalias !1119
  %i.nz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ne, ptr %i.nz, align 8, !alias.scope !1110, !noalias !1119
  %i.oa = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.ng, ptr %i.oa, align 8, !alias.scope !1110, !noalias !1119
  %i.ob = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sroa.0501.0, ptr %i.ob, align 8, !alias.scope !1110, !noalias !1119
  %i.oc = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.sroa.5502.0, ptr %i.oc, align 8, !alias.scope !1110, !noalias !1119
  %i.od = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.nt, ptr %i.od, align 8, !alias.scope !1110, !noalias !1119
  %i.oe = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.nr, ptr %i.oe, align 8, !alias.scope !1110, !noalias !1119
  %i.of = add nsw i64 %i.mz, -1                   ; 2 uses
  %exitcond996.not1476 = icmp eq i64 %i.of, 0
  br i1 %exitcond996.not1476, label %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit130, label %.lr.ph1478

bb.eb:                                            ; preds = %bb.ed
  %i.og = add nuw nsw i64 %.sroa.02.0.i.i1231477, 1 ; 2 uses
  %exitcond996.not = icmp eq i64 %i.og, %i.of
  br i1 %exitcond996.not, label %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit130, label %.lr.ph1478

.lr.ph1478:                                       ; preds = %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i121, %bb.eb
  %.sroa.02.0.i.i1231477 = phi i64 [ %i.og, %bb.eb ], [ 0, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i121 ] ; 4 uses
  %exitcond997.not = icmp eq i64 %.sroa.02.0.i.i1231477, %i.mz
  br i1 %exitcond997.not, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %.lr.ph1478
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.nd, i64 noundef %i.nd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #10, !noalias !1120
  unreachable

bb.ed:                                            ; preds = %.lr.ph1478
  %i.oh = shl nuw nsw i64 %.sroa.02.0.i.i1231477, 1 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !noalias !1120, !noundef !9
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.oh
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 1
  %i.om = load i8, ptr %i.ol, align 1, !noalias !1120, !noundef !9
  %i.on = icmp ule i8 %i.oj, %i.mq
  %i.oo = icmp ule i8 %i.mq, %i.om
  %or.cond.i.i125 = and i1 %i.on, %i.oo
  br i1 %or.cond.i.i125, label %bb.ee, label %bb.eb

bb.ee:                                            ; preds = %bb.ed
  %i.op = call noundef i32 @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c, i64 noundef %.sroa.02.0.i.i1231477), !noalias !1108
  br label %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit130

_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit130: ; preds = %bb.eb, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i121, %bb.ee
  %.sroa.0.0.i.i124 = phi i32 [ %i.op, %bb.ee ], [ 0, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i121 ], [ 0, %bb.eb ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1109
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.val184 = load i32, ptr %i.oq, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 652
  %.val185 = load i32, ptr %i.or, align 4
  %i.os = icmp ne i32 %.sroa.0.0.i.i124, 0        ; 2 uses
  %.not.i.i310 = icmp ule i32 %.val184, %.sroa.0.0.i.i124
  %or.cond.not.i.i311 = select i1 %i.os, i1 %.not.i.i310, i1 false
  %i.ot = icmp ule i32 %.sroa.0.0.i.i124, %.val185
  %.sroa.0.0.i.i312 = select i1 %or.cond.not.i.i311, i1 %i.ot, i1 false
  br i1 %.sroa.0.0.i.i312, label %bb.eh, label %bb.eg

bb.ef:                                            ; preds = %bb.dl
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.mg, i64 noundef %i.mf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #10, !noalias !1106
  unreachable

bb.eg:                                            ; preds = %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit130
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 644
  %.val199 = load i32, ptr %i.ou, align 4
  %i.ov = icmp eq i32 %.val199, %.sroa.0.0.i.i124
  %.sroa.0.0.i313 = select i1 %i.os, i1 %i.ov, i1 false
  br i1 %.sroa.0.0.i313, label %bb.gv, label %bb.gw

bb.eh:                                            ; preds = %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit130
  %i.ow = call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton13match_patternCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, i32 noundef %.sroa.0.0.i.i124)
  br label %bb.gw

bb.ei:                                            ; preds = %.preheader, %bb.eo
  %.sroa.0369.0 = phi i32 [ %.sroa.0369.2, %bb.eo ], [ %i.lh, %.preheader ] ; 2 uses
  %.sroa.025.0.in.i = phi i64 [ %.sroa.025.3.i, %bb.eo ], [ %i.t, %.preheader ]
  %.sroa.025.0.i = add i64 %.sroa.025.0.in.i, -1  ; 3 uses
  %.not.i806 = icmp ult i64 %.sroa.025.0.i, %i.r
  br i1 %.not.i806, label %._crit_edge811, label %.lr.ph810

.lr.ph810:                                        ; preds = %bb.ei, %bb.em
  %.sroa.025.1.i808 = phi i64 [ %i.pq, %bb.em ], [ %.sroa.025.0.i, %bb.ei ] ; 8 uses
  %.sroa.0369.1807 = phi i32 [ %i.pp, %bb.em ], [ %.sroa.0369.0, %bb.ei ]
  %i.ox = icmp ult i64 %.sroa.025.1.i808, %i.lm
  tail call void @llvm.assume(i1 %i.ox)
  %i.oy = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.sroa.025.1.i808
  %i.oz = load i8, ptr %i.oy, align 1, !noalias !1101, !noundef !9
  %i.pa = tail call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton20next_state_uncheckedCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, i32 noundef %.sroa.0369.1807, i8 noundef %i.oz), !noalias !1101 ; 3 uses
  %.not597 = icmp ugt i32 %i.pa, %.val211
  %.not57.i = icmp ugt i64 %.sroa.025.1.i808, %i.lo
  %or.cond.i = and i1 %.not57.i, %.not597
  br i1 %or.cond.i, label %bb.ej, label %._crit_edge811

._crit_edge811:                                   ; preds = %bb.em, %bb.ej, %bb.el, %bb.ek, %.lr.ph810, %bb.ei
  %.sroa.0369.2 = phi i32 [ %.sroa.0369.0, %bb.ei ], [ %i.pf, %bb.ej ], [ %i.pp, %bb.el ], [ %i.pa, %.lr.ph810 ], [ %i.pk, %bb.ek ], [ %i.pp, %bb.em ] ; 18 uses
  %.sroa.025.2.i = phi i64 [ %.sroa.025.0.i, %bb.ei ], [ %i.pb, %bb.ej ], [ %i.pl, %bb.el ], [ %.sroa.025.1.i808, %.lr.ph810 ], [ %i.pg, %bb.ek ], [ %i.pq, %bb.em ] ; 26 uses
  %.not601 = icmp ugt i32 %.sroa.0369.2, %.val211
  br i1 %.not601, label %bb.eo, label %bb.en

bb.ej:                                            ; preds = %.lr.ph810
  %i.pb = add i64 %.sroa.025.1.i808, -1           ; 3 uses
  %i.pc = icmp ult i64 %i.pb, %i.lm
  tail call void @llvm.assume(i1 %i.pc)
  %i.pd = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.pb
  %i.pe = load i8, ptr %i.pd, align 1, !noalias !1101, !noundef !9
  %i.pf = tail call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton20next_state_uncheckedCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, i32 noundef %i.pa, i8 noundef %i.pe), !noalias !1101 ; 3 uses
  %.not598 = icmp ugt i32 %i.pf, %.val211
  br i1 %.not598, label %bb.ek, label %._crit_edge811

bb.ek:                                            ; preds = %bb.ej
  %i.pg = add i64 %.sroa.025.1.i808, -2           ; 3 uses
  %i.ph = icmp ult i64 %i.pg, %i.lm
  tail call void @llvm.assume(i1 %i.ph)
  %i.pi = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.pg
  %i.pj = load i8, ptr %i.pi, align 1, !noalias !1101, !noundef !9
  %i.pk = tail call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton20next_state_uncheckedCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, i32 noundef %i.pf, i8 noundef %i.pj), !noalias !1101 ; 3 uses
  %.not599 = icmp ugt i32 %i.pk, %.val211
  br i1 %.not599, label %bb.el, label %._crit_edge811

bb.el:                                            ; preds = %bb.ek
  %i.pl = add i64 %.sroa.025.1.i808, -3           ; 3 uses
  %i.pm = icmp ult i64 %i.pl, %i.lm
  tail call void @llvm.assume(i1 %i.pm)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.pl
  %i.po = load i8, ptr %i.pn, align 1, !noalias !1101, !noundef !9
  %i.pp = tail call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton20next_state_uncheckedCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, i32 noundef %i.pk, i8 noundef %i.po), !noalias !1101 ; 4 uses
  %.not600 = icmp ugt i32 %i.pp, %.val211
  br i1 %.not600, label %bb.em, label %._crit_edge811

bb.em:                                            ; preds = %bb.el
  %i.pq = add i64 %.sroa.025.1.i808, -4           ; 3 uses
  %.not.i = icmp ult i64 %i.pq, %i.r
  br i1 %.not.i, label %._crit_edge811, label %.lr.ph810

bb.en:                                            ; preds = %._crit_edge811
  %i.pr = icmp ne i32 %.sroa.0369.2, 0            ; 3 uses
  %.not.i.i314 = icmp ule i32 %.val214, %.sroa.0369.2
  %or.cond.not.i.i315 = select i1 %i.pr, i1 %.not.i.i314, i1 false
  %i.ps = icmp ule i32 %.sroa.0369.2, %.val215
  %.sroa.0.0.i.i316 = select i1 %or.cond.not.i.i315, i1 %i.ps, i1 false
  br i1 %.sroa.0.0.i.i316, label %bb.eq, label %bb.ep

.sink.split1328:                                  ; preds = %bb.fq, %bb.fs, %bb.fu, %bb.fa, %bb.fc, %bb.fe
  %.sink1324.sink = phi { i64, ptr } [ %i.rb, %bb.fe ], [ %i.qr, %bb.fc ], [ %i.qj, %bb.fa ], [ %i.rx, %bb.fs ], [ %i.rp, %bb.fq ], [ %i.sh, %bb.fu ]
  %i.pt = extractvalue { i64, ptr } %.sink1324.sink, 1
  %i.pu = tail call noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsavRPklju9Q7_4bstr(ptr noundef %i.pt, ptr noundef nonnull readonly %i.lk), !noalias !1101 ; 2 uses
  %.not.i.i92 = icmp ult i64 %i.pu, %.sroa.025.2.i
  tail call void @llvm.assume(i1 %.not.i.i92), !noalias !1101
  %i.pv = add nuw i64 %i.pu, 1
  br label %bb.eo

bb.eo:                                            ; preds = %.sink.split1328, %bb.eq, %._crit_edge811
  %.sroa.025.3.i = phi i64 [ %.sroa.025.2.i, %._crit_edge811 ], [ %.sroa.025.2.i, %bb.eq ], [ %i.pv, %.sink.split1328 ] ; 2 uses
  %i.pw = icmp eq i64 %.sroa.025.3.i, %i.r
  br i1 %i.pw, label %.thread1136, label %bb.ei

end_hunk_1
begin_hunk_2_@_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search8find_revINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr:bb.a
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search12find_rev_impINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr.exit16

bb.fi:                                            ; preds = %bb.fg
  %i.rf = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.sroa.025.2.i
  %i.rg = load i8, ptr %i.rf, align 1, !noalias !1101, !noundef !9
  %i.rh = tail call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10MatchError4quit(i8 noundef %i.rg, i64 noundef %.sroa.025.2.i), !noalias !1101
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.rh, ptr %i.ri, align 8, !alias.scope !1101, !noalias !1103
  store i64 2, ptr %0, align 8, !alias.scope !1101, !noalias !1103
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search12find_rev_impINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr.exit16

bb.fj:                                            ; preds = %bb.fg
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.025.2.i, i64 noundef %i.lm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #10, !noalias !1101
  unreachable

bb.fk:                                            ; preds = %bb.eq
  %i.rj = tail call fastcc { ptr, i64 } @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton11acceleratorCsavRPklju9Q7_4bstr(ptr nonnull %.val234, i64 %.val235, i32 noundef %.sroa.0369.2) ; 2 uses
  %i.rk = extractvalue { ptr, i64 } %i.rj, 0      ; 6 uses
  %i.rl = extractvalue { ptr, i64 } %i.rj, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  switch i64 %i.rl, label %bb.fl [
    i64 1, label %bb.fm
    i64 2, label %bb.fn
    i64 3, label %bb.fo
    i64 0, label %bb.fp
  ], !prof !24

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1128
  store i64 %i.rl, ptr %i.h, align 8, !noalias !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1128
  store ptr %i.h, ptr %i.g, align 8, !noalias !1128
  %.sroa.46.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i93, align 8, !noalias !1128
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #10, !noalias !1128
  unreachable

bb.fm:                                            ; preds = %bb.fk
  %.not11.i88 = icmp ugt i64 %.sroa.025.2.i, %i.lm
  br i1 %.not11.i88, label %bb.fr, label %bb.fq, !prof !10

bb.fn:                                            ; preds = %bb.fk
  %.not10.i83 = icmp ugt i64 %.sroa.025.2.i, %i.lm
  br i1 %.not10.i83, label %bb.ft, label %bb.fs, !prof !10

bb.fo:                                            ; preds = %bb.fk
  %.not.i77 = icmp ugt i64 %.sroa.025.2.i, %i.lm
  br i1 %.not.i77, label %bb.fv, label %bb.fu, !prof !10

bb.fp:                                            ; preds = %bb.fk
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #10, !noalias !1128
  unreachable

bb.fq:                                            ; preds = %bb.fm
  %i.rm = load i8, ptr %i.rk, align 1, !alias.scope !1127, !noalias !1129, !noundef !9
  %i.rn = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.sroa.025.2.i
  %i.ro = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !1130, !nonnull !9, !noundef !9
  %i.rp = tail call { i64, ptr } %i.ro(i8 noundef %i.rm, ptr noundef nonnull readonly %i.lk, ptr noundef nonnull readonly %i.rn), !noalias !1130, !inline_history !3 ; 2 uses
  %i.rq = extractvalue { i64, ptr } %i.rp, 0
  %i.rr = trunc nuw i64 %i.rq to i1
  br i1 %i.rr, label %.sink.split1328, label %.thread1136

bb.fr:                                            ; preds = %bb.fm
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.025.2.i, i64 noundef range(i64 0, -9223372036854775808) %i.lm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #10, !noalias !1128
  unreachable

bb.fs:                                            ; preds = %bb.fn
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rk, i64 1
  %i.rt = load i8, ptr %i.rs, align 1, !alias.scope !1127, !noalias !1129, !noundef !9
  %i.ru = load i8, ptr %i.rk, align 1, !alias.scope !1127, !noalias !1129, !noundef !9
  %i.rv = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.sroa.025.2.i
  %i.rw = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr12memrchr2_raw2FN monotonic, align 8, !noalias !1131, !nonnull !9, !noundef !9
  %i.rx = tail call { i64, ptr } %i.rw(i8 noundef %i.ru, i8 noundef %i.rt, ptr noundef nonnull readonly %i.lk, ptr noundef nonnull readonly %i.rv), !noalias !1131, !inline_history !4 ; 2 uses
  %i.ry = extractvalue { i64, ptr } %i.rx, 0
  %i.rz = trunc nuw i64 %i.ry to i1
  br i1 %i.rz, label %.sink.split1328, label %.thread1136

bb.ft:                                            ; preds = %bb.fn
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.025.2.i, i64 noundef range(i64 0, -9223372036854775808) %i.lm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #10, !noalias !1128
  unreachable

bb.fu:                                            ; preds = %bb.fo
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rk, i64 2
  %i.sb = load i8, ptr %i.sa, align 1, !alias.scope !1127, !noalias !1129, !noundef !9
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rk, i64 1
  %i.sd = load i8, ptr %i.sc, align 1, !alias.scope !1127, !noalias !1129, !noundef !9
  %i.se = load i8, ptr %i.rk, align 1, !alias.scope !1127, !noalias !1129, !noundef !9
  %i.sf = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.sroa.025.2.i
  %i.sg = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr12memrchr3_raw2FN monotonic, align 8, !noalias !1132, !nonnull !9, !noundef !9
  %i.sh = tail call { i64, ptr } %i.sg(i8 noundef %i.se, i8 noundef %i.sd, i8 noundef %i.sb, ptr noundef nonnull readonly %i.lk, ptr noundef nonnull readonly %i.sf), !noalias !1132, !inline_history !5 ; 2 uses
  %i.si = extractvalue { i64, ptr } %i.sh, 0
  %i.sj = trunc nuw i64 %i.si to i1
  br i1 %i.sj, label %.sink.split1328, label %.thread1136

bb.fv:                                            ; preds = %bb.fo
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.025.2.i, i64 noundef range(i64 0, -9223372036854775808) %i.lm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #10, !noalias !1128
  unreachable

.thread1136:                                      ; preds = %bb.eo, %bb.fq, %bb.fs, %bb.fu, %bb.fa, %bb.fc, %bb.fe
  %.not.i33 = icmp eq i64 %i.r, 0
  br i1 %.not.i33, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %.thread1136
  %i.sk = tail call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton14next_eoi_stateCsavRPklju9Q7_4bstr(ptr nonnull %.val234, i64 %.val235, i32 noundef %.sroa.0369.2) ; 4 uses
  %i.sl = icmp ne i32 %i.sk, 0
  %.not.i.i326 = icmp ule i32 %.val196, %i.sk
  %or.cond.not.i.i327 = select i1 %i.sl, i1 %.not.i.i326, i1 false
  %i.sm = icmp ule i32 %i.sk, %.val197
  %.sroa.0.0.i.i328 = select i1 %or.cond.not.i.i327, i1 %i.sm, i1 false
  br i1 %.sroa.0.0.i.i328, label %bb.fy, label %bb.gu

bb.fx:                                            ; preds = %.thread1136
  %i.sn = add i64 %i.r, -1                        ; 4 uses
  %i.so = icmp ult i64 %i.sn, %i.lm
  br i1 %i.so, label %bb.fz, label %bb.gq

bb.fy:                                            ; preds = %bb.fw
  %i.sp = tail call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton13match_patternCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, i32 noundef %i.sk)
  br label %bb.gu

bb.fz:                                            ; preds = %bb.fx
  %i.sq = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.sn
  %i.sr = load i8, ptr %i.sq, align 1, !noalias !1133, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  %i.ss = zext i8 %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.ss
  %i.sv = load i8, ptr %i.su, align 1, !alias.scope !1134, !noalias !1135, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137), !noalias !1135
  %i.sw = zext i32 %.sroa.0369.2 to i64           ; 4 uses
  %i.sx = icmp ult i64 %.val235, %i.sw
  br i1 %i.sx, label %bb.gd, label %bb.ga, !prof !18

bb.ga:                                            ; preds = %bb.fz
  %i.sy = sub nuw i64 %.val235, %i.sw             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138), !noalias !1135
  %i.sz = icmp samesign ugt i64 %i.sy, 1
  br i1 %i.sz, label %bb.gc, label %bb.gb, !prof !19

bb.gb:                                            ; preds = %bb.ga
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef range(i64 0, -9223372036854775808) %i.sy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #10, !noalias !1139
  unreachable

bb.gc:                                            ; preds = %bb.ga
  %i.ta = getelementptr inbounds nuw i8, ptr %.val234, i64 %i.sw ; 2 uses
  %.sroa.02.0.copyload.i.i = load i16, ptr %i.ta, align 1, !alias.scope !1138, !noalias !1140 ; 3 uses
  %i.tb = and i16 %.sroa.02.0.copyload.i.i, 32767
  %i.tc = zext nneg i16 %i.tb to i64              ; 5 uses
  %i.td = icmp slt i16 %.sroa.02.0.copyload.i.i, 0
  %i.te = add i64 %i.sy, -2                       ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ta, i64 2 ; 4 uses
  %i.tg = shl nuw nsw i64 %i.tc, 1                ; 6 uses
  %.not.i329 = icmp samesign ugt i64 %i.tg, %i.te
  br i1 %.not.i329, label %bb.ge, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit333, !prof !18

bb.gd:                                            ; preds = %bb.fz
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.sw, i64 noundef %.val235, i64 noundef %.val235, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #10, !noalias !1140
  unreachable

bb.ge:                                            ; preds = %bb.gc
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #10, !noalias !1141
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit333: ; preds = %bb.gc
  %i.th = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.tg ; 2 uses
  %i.ti = sub nuw nsw i64 %i.te, %i.tg            ; 2 uses
  %i.tj = shl nuw nsw i64 %i.tc, 2                ; 4 uses
  %.not.i334 = icmp samesign ugt i64 %i.tj, %i.ti
  br i1 %.not.i334, label %bb.gf, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit338, !prof !18

bb.gf:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit333
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #10, !noalias !1142
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit338: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit333
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.tj ; 3 uses
  %i.tl = sub nuw nsw i64 %i.ti, %i.tj            ; 4 uses
  br i1 %i.td, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit338
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143), !noalias !1135
  %i.tm = icmp samesign ugt i64 %i.tl, 3
  br i1 %i.tm, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i, label %bb.gh, !prof !19

bb.gh:                                            ; preds = %bb.gg
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.tl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #10, !noalias !1144
  unreachable

bb.gi:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit338, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit343
  %.sroa.11.0 = phi i64 [ %i.ts, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit343 ], [ %i.tl, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit338 ] ; 3 uses
  %.sroa.8492.0 = phi ptr [ %i.tr, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit343 ], [ %i.tk, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit338 ] ; 2 uses
  %.sroa.5491.0 = phi i64 [ %i.tp, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit343 ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit338 ]
  %.sroa.0490.0 = phi ptr [ %i.tq, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit343 ], [ inttoptr (i64 1 to ptr), %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit338 ]
  %.not.i.i113 = icmp eq i64 %.sroa.11.0, 0
  br i1 %.not.i.i113, label %bb.gl, label %bb.gk

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i: ; preds = %bb.gg
  %.sroa.02.0.copyload.i1.i = load i32, ptr %i.tk, align 1, !alias.scope !1143, !noalias !1140
  %i.tn = zext i32 %.sroa.02.0.copyload.i1.i to i64
  %i.to = add nsw i64 %i.tl, -4                   ; 2 uses
  %i.tp = shl nuw nsw i64 %i.tn, 2                ; 4 uses
  %.not.i339 = icmp samesign ugt i64 %i.tp, %i.to
  br i1 %.not.i339, label %bb.gj, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit343, !prof !18

bb.gj:                                            ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #10, !noalias !1145
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit343: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tk, i64 4 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.tp
  %i.ts = sub nuw nsw i64 %i.to, %i.tp
  br label %bb.gi

bb.gk:                                            ; preds = %bb.gi
  %i.tt = load i8, ptr %.sroa.8492.0, align 1, !noalias !1140, !noundef !9
  %i.tu = zext i8 %i.tt to i64                    ; 3 uses
  %.not20.not.i.i = icmp samesign ugt i64 %.sroa.11.0, %i.tu
  br i1 %.not20.not.i.i, label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i, label %bb.gm, !prof !19

bb.gl:                                            ; preds = %bb.gi
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #10, !noalias !1140
  unreachable

bb.gm:                                            ; preds = %bb.gk
  %i.tv = add nuw nsw i64 %i.tu, 1
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef %i.tv, i64 noundef %.sroa.11.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #10, !noalias !1140
  unreachable

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i: ; preds = %bb.gk
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.8492.0, i64 1
  %i.tx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %.sroa.0369.2, ptr %i.tx, align 8, !alias.scope !1137, !noalias !1146
  %i.ty = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %.lobit.i.i = lshr i16 %.sroa.02.0.copyload.i.i, 15
  %i.tz = trunc nuw nsw i16 %.lobit.i.i to i8
  store i8 %i.tz, ptr %i.ty, align 4, !alias.scope !1137, !noalias !1146
  %i.ua = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %i.tc, ptr %i.ua, align 8, !alias.scope !1137, !noalias !1146
  store ptr %i.tf, ptr %i.d, align 8, !alias.scope !1137, !noalias !1146
  %i.ub = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.tg, ptr %i.ub, align 8, !alias.scope !1137, !noalias !1146
  %i.uc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.th, ptr %i.uc, align 8, !alias.scope !1137, !noalias !1146
  %i.ud = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.tj, ptr %i.ud, align 8, !alias.scope !1137, !noalias !1146
  %i.ue = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.0490.0, ptr %i.ue, align 8, !alias.scope !1137, !noalias !1146
  %i.uf = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.5491.0, ptr %i.uf, align 8, !alias.scope !1137, !noalias !1146
  %i.ug = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.tw, ptr %i.ug, align 8, !alias.scope !1137, !noalias !1146
  %i.uh = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %i.tu, ptr %i.uh, align 8, !alias.scope !1137, !noalias !1146
  %i.ui = add nsw i64 %i.tc, -1                   ; 2 uses
  %exitcond992.not1473 = icmp eq i64 %i.ui, 0
  br i1 %exitcond992.not1473, label %.thread1123, label %.lr.ph1475

bb.gn:                                            ; preds = %bb.gp
  %i.uj = add nuw nsw i64 %.sroa.02.0.i.i1474, 1  ; 2 uses
  %exitcond992.not = icmp eq i64 %i.uj, %i.ui
  br i1 %exitcond992.not, label %.thread1123, label %.lr.ph1475

.thread1123:                                      ; preds = %bb.gn, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1136
  br label %bb.gu

.lr.ph1475:                                       ; preds = %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i, %bb.gn
  %.sroa.02.0.i.i1474 = phi i64 [ %i.uj, %bb.gn ], [ 0, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i ] ; 4 uses
  %exitcond993.not = icmp eq i64 %.sroa.02.0.i.i1474, %i.tc
  br i1 %exitcond993.not, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %.lr.ph1475
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.tg, i64 noundef %i.tg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #10, !noalias !1147
  unreachable

bb.gp:                                            ; preds = %.lr.ph1475
  %i.uk = shl nuw nsw i64 %.sroa.02.0.i.i1474, 1  ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !noalias !1147, !noundef !9
  %i.un = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.uk
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 1
  %i.up = load i8, ptr %i.uo, align 1, !noalias !1147, !noundef !9
  %i.uq = icmp ule i8 %i.um, %i.sv
  %i.ur = icmp ule i8 %i.sv, %i.up
  %or.cond.i.i = and i1 %i.uq, %i.ur
  br i1 %or.cond.i.i, label %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit, label %bb.gn

_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit: ; preds = %bb.gp
  %i.us = call noundef i32 @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.d, i64 noundef %.sroa.02.0.i.i1474), !noalias !1135 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1136
  %i.ut = icmp ne i32 %i.us, 0                    ; 2 uses
  %.not.i.i344 = icmp ule i32 %.val196, %i.us
  %or.cond.not.i.i345 = select i1 %i.ut, i1 %.not.i.i344, i1 false
  %i.uu = icmp ule i32 %i.us, %.val197
  %.sroa.0.0.i.i346 = select i1 %or.cond.not.i.i345, i1 %i.uu, i1 false
  br i1 %.sroa.0.0.i.i346, label %bb.gs, label %bb.gr

bb.gq:                                            ; preds = %bb.fx
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.sn, i64 noundef %i.lm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #10, !noalias !1133
  unreachable

bb.gr:                                            ; preds = %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 644
  %.val198 = load i32, ptr %i.uv, align 4
  %i.uw = icmp eq i32 %.val198, %i.us
  %.sroa.0.0.i347 = select i1 %i.ut, i1 %i.uw, i1 false
  br i1 %.sroa.0.0.i347, label %bb.gt, label %bb.gu

bb.gs:                                            ; preds = %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit
  %i.ux = call fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton13match_patternCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, i32 noundef %i.us)
  br label %bb.gu

bb.gt:                                            ; preds = %bb.gr
  %i.uy = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10MatchError4quit(i8 noundef %i.sr, i64 noundef %i.sn), !noalias !1135
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.uy, ptr %i.uz, align 8, !alias.scope !1101, !noalias !1103
  store i64 2, ptr %0, align 8, !alias.scope !1101, !noalias !1103
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search12find_rev_impINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr.exit16

bb.gu:                                            ; preds = %.thread1123, %bb.gs, %bb.gr, %bb.fy, %bb.fw
  %.sroa.18.1.ph = phi i32 [ undef, %bb.gr ], [ %i.ux, %bb.gs ], [ undef, %bb.fw ], [ %i.sp, %bb.fy ], [ undef, %.thread1123 ]
  %.sroa.13.1.ph = phi i64 [ undef, %bb.gr ], [ %i.r, %bb.gs ], [ undef, %bb.fw ], [ 0, %bb.fy ], [ undef, %.thread1123 ]
  %.sroa.0.1.ph = phi i64 [ 0, %bb.gr ], [ 1, %bb.gs ], [ 0, %bb.fw ], [ 1, %bb.fy ], [ 0, %.thread1123 ]
  store i64 %.sroa.0.1.ph, ptr %0, align 8, !noalias !1103
  %.sroa.4400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.13.1.ph, ptr %.sroa.4400.0..sroa_idx, align 8, !noalias !1103
  %.sroa.5401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.18.1.ph, ptr %.sroa.5401.0..sroa_idx, align 8, !noalias !1103
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search12find_rev_impINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr.exit16

bb.gv:                                            ; preds = %bb.eg
  %i.va = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10MatchError4quit(i8 noundef %i.mm, i64 noundef %i.mg), !noalias !1108
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.va, ptr %i.vb, align 8, !alias.scope !1101, !noalias !1103
  store i64 2, ptr %0, align 8, !alias.scope !1101, !noalias !1103
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search12find_rev_impINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr.exit16

bb.gw:                                            ; preds = %bb.eh, %bb.eg, %bb.dm, %bb.dk
  %.sroa.18.0.ph = phi i32 [ undef, %bb.eg ], [ %i.ow, %bb.eh ], [ undef, %bb.dk ], [ %i.mi, %bb.dm ]
  %.sroa.13.0.ph = phi i64 [ undef, %bb.eg ], [ %i.r, %bb.eh ], [ undef, %bb.dk ], [ 0, %bb.dm ]
  %.sroa.0.0.ph = phi i64 [ 0, %bb.eg ], [ 1, %bb.eh ], [ 0, %bb.dk ], [ 1, %bb.dm ]
  store i64 %.sroa.0.0.ph, ptr %0, align 8, !noalias !1103
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.13.0.ph, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1103
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.18.0.ph, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1103
  br label %_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search12find_rev_impINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr.exit16

_RINvNtNtCs98D8VPWzHuM_14regex_automata3dfa6search12find_rev_impINtNtB4_6sparse3DFARShEECsavRPklju9Q7_4bstr.exit16: ; preds = %bb.gu, %bb.gw, %bb.gv, %bb.gt, %bb.es, %bb.fi, %bb.fh, %bb.dh, %bb.dd, %bb.df, %bb.de, %bb.dc, %bb.bf, %bb.be, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RNvXNtNtCs98D8VPWzHuM_14regex_automata3dfa9automatonRINtNtB4_5dense3DFARSmENtB2_9Automaton13match_patternCsavRPklju9Q7_4bstr(ptr nofree readonly captures(none) %.0.val, i32 noundef %0) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 744
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1150, !noundef !9
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmENtNtB7_9automaton9Automaton13match_patternCsavRPklju9Q7_4bstr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 712
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 376
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !1150, !noundef !9
  %i.g = sub i32 %0, %i.f
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 704
  %i.j = load i64, ptr %i.i, align 16, !alias.scope !1150, !noundef !9
  %i.k = and i64 %i.j, 63
  %i.l = lshr i64 %i.h, %i.k
  %.val4 = load ptr, ptr %i.d, align 8, !nonnull !9, !align !17, !noundef !9 ; 2 uses
  %i.m = getelementptr i8, ptr %.0.val, i64 720
  %.val5 = load i64, ptr %i.m, align 16, !noundef !9 ; 4 uses
  %i.n = shl nuw nsw i64 %i.l, 1                  ; 4 uses
  %i.o = icmp ult i64 %i.n, %.val5
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val4, i64 %i.n
  %i.q = load i32, ptr %i.p, align 4, !noundef !9
  %i.r = zext i32 %i.q to i64                     ; 3 uses
  %i.s = or disjoint i64 %i.n, 1                  ; 3 uses
  %i.t = icmp ult i64 %i.s, %.val5
  br i1 %i.t, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %.val5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val4, i64 %i.s
  %i.v = load i32, ptr %i.u, align 4, !noundef !9 ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr i8, ptr %.0.val, i64 736
  %.val1 = load i64, ptr %i.x, align 16, !noundef !9 ; 2 uses
  %i.y = add nuw nsw i64 %i.w, %i.r               ; 2 uses
  %.not.i.i = icmp ugt i64 %i.y, %.val1
  br i1 %.not.i.i, label %bb.g, label %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE16pattern_id_sliceCsavRPklju9Q7_4bstr.exit.i, !prof !18

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %.val5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.r, i64 noundef %i.y, i64 noundef %.val1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #10
  unreachable

_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE16pattern_id_sliceCsavRPklju9Q7_4bstr.exit.i: ; preds = %bb.e
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE16pattern_id_sliceCsavRPklju9Q7_4bstr.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val, i64 728
  %.val = load ptr, ptr %i.z, align 8, !nonnull !9, !align !17, !noundef !9
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.r
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !9
  br label %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmENtNtB7_9automaton9Automaton13match_patternCsavRPklju9Q7_4bstr.exit

bb.i:                                             ; preds = %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE16pattern_id_sliceCsavRPklju9Q7_4bstr.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #10
  unreachable

_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmENtNtB7_9automaton9Automaton13match_patternCsavRPklju9Q7_4bstr.exit: ; preds = %bb.a, %bb.h
  %.sroa.0.0.i = phi i32 [ %i.ab, %bb.h ], [ 0, %bb.a ]
  ret i32 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RNvXNtNtCs98D8VPWzHuM_14regex_automata3dfa9automatonRINtNtB4_5dense3DFARSmENtB2_9Automaton14next_eoi_stateCsavRPklju9Q7_4bstr(ptr nofree readonly captures(none) %.0.val, i32 noundef %0) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 703
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !1153, !noundef !9
  %i.c = zext i8 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = tail call i32 @_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB2_4Unit3eoi(i64 noundef %i.d), !noalias !1153 ; 3 uses
  %i.f = trunc i32 %i.e to i1
  %.sroa.54.0.extract.shift.i = lshr i32 %i.e, 16
  %.sroa.43.0.extract.shift.i = lshr i32 %i.e, 8
  %i.g = and i32 %.sroa.43.0.extract.shift.i, 255
  %.sroa.0.0.in.i = select i1 %i.f, i32 %.sroa.54.0.extract.shift.i, i32 %i.g
  %.sroa.0.0.i = zext nneg i32 %.sroa.0.0.in.i to i64
  %i.h = zext i32 %0 to i64
  %i.i = add nuw nsw i64 %.sroa.0.0.i, %i.h       ; 3 uses
  %i.j = getelementptr i8, ptr %.0.val, i64 440
  %.val1 = load i64, ptr %i.j, align 8, !noundef !9 ; 2 uses
  %i.k = icmp ult i64 %i.i, %.val1
  br i1 %i.k, label %_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmENtNtB7_9automaton9Automaton14next_eoi_stateCsavRPklju9Q7_4bstr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %.val1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #10
  unreachable

_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFARSmENtNtB7_9automaton9Automaton14next_eoi_stateCsavRPklju9Q7_4bstr.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 432
  %.val = load ptr, ptr %i.l, align 8, !nonnull !9, !align !17, !noundef !9
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.i
  %i.n = load i32, ptr %i.m, align 4, !noundef !9
  ret i32 %i.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RNvXNtNtCs98D8VPWzHuM_14regex_automata3dfa9automatonRINtNtB4_6sparse3DFARShENtB2_9Automaton10next_stateCsavRPklju9Q7_4bstr(ptr nofree readonly captures(none) %.0.val, i32 noundef %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 14 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  %i.b = zext i8 %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 368
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !1174, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1174
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.f = getelementptr i8, ptr %.0.val, i64 360
  %.val1 = load i64, ptr %i.f, align 8, !noundef !9 ; 4 uses
  %i.g = zext i32 %0 to i64                       ; 4 uses
  %i.h = icmp ult i64 %.val1, %i.g
  br i1 %i.h, label %bb.e, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 352
  %.val = load ptr, ptr %i.i, align 8, !nonnull !9, !noundef !9
  %i.j = sub nuw i64 %.val1, %i.g                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %i.k = icmp samesign ugt i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef range(i64 0, -9223372036854775808) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #10, !noalias !1177
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 %i.g ; 2 uses
  %.sroa.02.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !1176, !noalias !1175 ; 3 uses
  %i.m = and i16 %.sroa.02.0.copyload.i.i, 32767
  %i.n = zext nneg i16 %i.m to i64                ; 5 uses
  %i.o = icmp slt i16 %.sroa.02.0.copyload.i.i, 0
  %i.p = add i64 %i.j, -2                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 4 uses
  %i.r = shl nuw nsw i64 %i.n, 1                  ; 6 uses
  %.not.i = icmp samesign ugt i64 %i.r, %i.p
  br i1 %.not.i, label %bb.f, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit, !prof !18

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %.val1, i64 noundef %.val1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #10, !noalias !1175
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #10, !noalias !1178
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 2 uses
  %i.t = sub nuw nsw i64 %i.p, %i.r               ; 2 uses
  %i.u = shl nuw nsw i64 %i.n, 2                  ; 4 uses
  %.not.i2 = icmp samesign ugt i64 %i.u, %i.t
  br i1 %.not.i2, label %bb.g, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit6, !prof !18

bb.g:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #10, !noalias !1179
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit6: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u ; 3 uses
  %i.w = sub nuw nsw i64 %i.t, %i.u               ; 4 uses
  br i1 %i.o, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  %i.x = icmp samesign ugt i64 %i.w, 3
  br i1 %i.x, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i, label %bb.i, !prof !19

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #10, !noalias !1181
  unreachable

bb.j:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit6, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit11
  %.sroa.11.0 = phi i64 [ %i.ad, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit11 ], [ %i.w, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit6 ] ; 3 uses
  %.sroa.86.0 = phi ptr [ %i.ac, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit11 ], [ %i.v, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit6 ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit11 ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit6 ]
  %.sroa.05.0 = phi ptr [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit11 ], [ inttoptr (i64 1 to ptr), %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit6 ]
  %.not.i.i = icmp eq i64 %.sroa.11.0, 0
  br i1 %.not.i.i, label %bb.m, label %bb.l

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i: ; preds = %bb.h
  %.sroa.02.0.copyload.i1.i = load i32, ptr %i.v, align 1, !alias.scope !1180, !noalias !1175
  %i.y = zext i32 %.sroa.02.0.copyload.i1.i to i64
  %i.z = add nsw i64 %i.w, -4                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.y, 2                 ; 4 uses
  %.not.i7 = icmp samesign ugt i64 %i.aa, %i.z
  br i1 %.not.i7, label %bb.k, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit11, !prof !18

bb.k:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #10, !noalias !1182
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit11: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = sub nuw nsw i64 %i.z, %i.aa
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.ae = load i8, ptr %.sroa.86.0, align 1, !noalias !1175, !noundef !9
  %i.af = zext i8 %i.ae to i64                    ; 3 uses
  %.not20.not.i.i = icmp samesign ugt i64 %.sroa.11.0, %i.af
  br i1 %.not20.not.i.i, label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i, label %bb.n, !prof !19

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #10, !noalias !1175
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ag = add nuw nsw i64 %i.af, 1
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef %i.ag, i64 noundef %.sroa.11.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #10, !noalias !1175
  unreachable

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i: ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.86.0, i64 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %0, ptr %i.ai, align 8, !alias.scope !1175, !noalias !1183
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %.lobit.i.i = lshr i16 %.sroa.02.0.copyload.i.i, 15
  %i.ak = trunc nuw nsw i16 %.lobit.i.i to i8
  store i8 %i.ak, ptr %i.aj, align 4, !alias.scope !1175, !noalias !1183
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.n, ptr %i.al, align 8, !alias.scope !1175, !noalias !1183
  store ptr %i.q, ptr %i.a, align 8, !alias.scope !1175, !noalias !1183
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.am, align 8, !alias.scope !1175, !noalias !1183
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.s, ptr %i.an, align 8, !alias.scope !1175, !noalias !1183
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.u, ptr %i.ao, align 8, !alias.scope !1175, !noalias !1183
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.05.0, ptr %i.ap, align 8, !alias.scope !1175, !noalias !1183
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.5.0, ptr %i.aq, align 8, !alias.scope !1175, !noalias !1183
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.ah, ptr %i.ar, align 8, !alias.scope !1175, !noalias !1183
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.af, ptr %i.as, align 8, !alias.scope !1175, !noalias !1183
  %i.at = add nsw i64 %i.n, -1                    ; 2 uses
  %exitcond.not39 = icmp eq i64 %i.at, 0
  br i1 %exitcond.not39, label %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit, label %.lr.ph

bb.o:                                             ; preds = %bb.q
  %i.au = add nuw nsw i64 %.sroa.02.0.i.i40, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %i.at
  br i1 %exitcond.not, label %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i, %bb.o
  %.sroa.02.0.i.i40 = phi i64 [ %i.au, %bb.o ], [ 0, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i ] ; 4 uses
  %exitcond21.not = icmp eq i64 %.sroa.02.0.i.i40, %i.n
  br i1 %exitcond21.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #10, !noalias !1184
  unreachable

bb.q:                                             ; preds = %.lr.ph
  %i.av = shl nuw nsw i64 %.sroa.02.0.i.i40, 1    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !1184, !noundef !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !noalias !1184, !noundef !9
  %i.bb = icmp ule i8 %i.ax, %i.e
  %i.bc = icmp ule i8 %i.e, %i.ba
  %or.cond.i.i = and i1 %i.bb, %i.bc
  br i1 %or.cond.i.i, label %bb.r, label %bb.o

bb.r:                                             ; preds = %bb.q
  %i.bd = call noundef i32 @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.a, i64 noundef %.sroa.02.0.i.i40)
  br label %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit

_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit: ; preds = %bb.o, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i, %bb.r
  %.sroa.0.0.i.i = phi i32 [ %i.bd, %bb.r ], [ 0, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1174
  ret i32 %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton11acceleratorCsavRPklju9Q7_4bstr(ptr %.352.val, i64 %.360.val, i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.352.val) ]
  %i.a = zext i32 %0 to i64                       ; 4 uses
  %i.b = icmp ult i64 %.360.val, %i.a
  br i1 %i.b, label %bb.d, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw i64 %.360.val, %i.a              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.352.val, i64 %i.a ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %i.e = icmp samesign ugt i64 %i.c, 1
  br i1 %i.e, label %bb.e, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef range(i64 0, -9223372036854775808) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #10, !noalias !1201
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %.360.val, i64 noundef %.360.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #10, !noalias !1202
  unreachable

bb.e:                                             ; preds = %bb.b
  %.sroa.02.0.copyload.i = load i16, ptr %i.d, align 1, !alias.scope !1200, !noalias !1202 ; 2 uses
  %i.f = and i16 %.sroa.02.0.copyload.i, 32767
  %i.g = zext nneg i16 %i.f to i64                ; 2 uses
  %i.h = icmp slt i16 %.sroa.02.0.copyload.i, 0
  %i.i = add i64 %i.c, -2                         ; 2 uses
  %i.j = shl nuw nsw i64 %i.g, 1                  ; 3 uses
  %.not.i5 = icmp samesign ugt i64 %i.j, %i.i
  br i1 %.not.i5, label %bb.f, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit, !prof !18

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #10, !noalias !1203
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit: ; preds = %bb.e
  %i.k = sub nuw nsw i64 %i.i, %i.j               ; 2 uses
  %i.l = shl nuw nsw i64 %i.g, 2                  ; 3 uses
  %.not.i6 = icmp samesign ugt i64 %i.l, %i.k
  br i1 %.not.i6, label %bb.g, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10, !prof !18

bb.g:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #10, !noalias !1204
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 3 uses
  %i.p = sub nuw nsw i64 %i.k, %i.l               ; 4 uses
  br i1 %i.h, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %i.q = icmp samesign ugt i64 %i.p, 3
  br i1 %i.q, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit, label %bb.i, !prof !19

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #10, !noalias !1206
  unreachable

bb.j:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15
  %.sroa.811.0 = phi ptr [ %i.v, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15 ], [ %i.o, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10 ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %i.w, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15 ], [ %i.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10 ] ; 3 uses
  %.not.i = icmp eq i64 %.sroa.11.0, 0
  br i1 %.not.i, label %bb.m, label %bb.l

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit: ; preds = %bb.h
  %.sroa.02.0.copyload.i1 = load i32, ptr %i.o, align 1, !alias.scope !1205, !noalias !1202
  %i.r = zext i32 %.sroa.02.0.copyload.i1 to i64
  %i.s = add nsw i64 %i.p, -4                     ; 2 uses
  %i.t = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %.not.i11 = icmp samesign ugt i64 %i.t, %i.s
  br i1 %.not.i11, label %bb.k, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15, !prof !18

bb.k:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #10, !noalias !1207
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  %i.w = sub nuw nsw i64 %i.s, %i.t
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.x = load i8, ptr %.sroa.811.0, align 1, !noalias !1202, !noundef !9
  %i.y = zext i8 %i.x to i64                      ; 3 uses
  %.not20.not.i = icmp samesign ugt i64 %.sroa.11.0, %i.y
  br i1 %.not20.not.i, label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit, label %bb.n, !prof !19

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #10, !noalias !1202
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.z = add nuw nsw i64 %i.y, 1
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef %i.z, i64 noundef %.sroa.11.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #10, !noalias !1202
  unreachable

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.811.0, i64 1
  %i.ab = insertvalue { ptr, i64 } poison, ptr %i.aa, 0
  %i.ac = insertvalue { ptr, i64 } %i.ab, i64 %i.y, 1
  ret { ptr, i64 } %i.ac
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton13match_patternCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(720) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.c = load i64, ptr %i.b, align 8, !noundef !9
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.val4 = load i64, ptr %i.e, align 8, !noundef !9 ; 4 uses
  %i.f = zext i32 %1 to i64                       ; 4 uses
  %i.g = icmp ult i64 %.val4, %i.f
  br i1 %i.g, label %bb.f, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.val = load ptr, ptr %i.h, align 16, !nonnull !9, !noundef !9
  %i.i = sub nuw i64 %.val4, %i.f                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  %i.j = icmp samesign ugt i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef range(i64 0, -9223372036854775808) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #10, !noalias !1226
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f ; 2 uses
  %.sroa.02.0.copyload.i = load i16, ptr %i.k, align 1, !alias.scope !1225, !noalias !1224 ; 3 uses
  %i.l = and i16 %.sroa.02.0.copyload.i, 32767
  %i.m = zext nneg i16 %i.l to i64                ; 3 uses
  %i.n = icmp slt i16 %.sroa.02.0.copyload.i, 0
  %i.o = add i64 %i.i, -2                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.q = shl nuw nsw i64 %i.m, 1                  ; 4 uses
  %.not.i5 = icmp samesign ugt i64 %i.q, %i.o
  br i1 %.not.i5, label %bb.g, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit, !prof !18

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %.val4, i64 noundef %.val4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #10, !noalias !1224
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #10, !noalias !1227
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q ; 2 uses
  %i.s = sub nuw nsw i64 %i.o, %i.q               ; 2 uses
  %i.t = shl nuw nsw i64 %i.m, 2                  ; 4 uses
  %.not.i6 = icmp samesign ugt i64 %i.t, %i.s
  br i1 %.not.i6, label %bb.h, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10, !prof !18

bb.h:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #10, !noalias !1228
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t ; 3 uses
  %i.v = sub nuw nsw i64 %i.s, %i.t               ; 4 uses
  br i1 %i.n, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.w = icmp samesign ugt i64 %i.v, 3
  br i1 %i.w, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit, label %bb.j, !prof !19

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #10, !noalias !1230
  unreachable

bb.k:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15
  %.sroa.11.0 = phi i64 [ %i.ac, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15 ], [ %i.v, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10 ] ; 3 uses
  %.sroa.821.0 = phi ptr [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15 ], [ %i.u, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10 ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %i.z, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15 ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10 ]
  %.sroa.020.0 = phi ptr [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15 ], [ inttoptr (i64 1 to ptr), %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10 ]
  %.not.i = icmp eq i64 %.sroa.11.0, 0
  br i1 %.not.i, label %bb.n, label %bb.m

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit: ; preds = %bb.i
  %.sroa.02.0.copyload.i1 = load i32, ptr %i.u, align 1, !alias.scope !1229, !noalias !1224
  %i.x = zext i32 %.sroa.02.0.copyload.i1 to i64
  %i.y = add nsw i64 %i.v, -4                     ; 2 uses
  %i.z = shl nuw nsw i64 %i.x, 2                  ; 4 uses
  %.not.i11 = icmp samesign ugt i64 %i.z, %i.y
  br i1 %.not.i11, label %bb.l, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15, !prof !18

bb.l:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #10, !noalias !1231
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  %i.ac = sub nuw nsw i64 %i.y, %i.z
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  %i.ad = load i8, ptr %.sroa.821.0, align 1, !noalias !1224, !noundef !9
  %i.ae = zext i8 %i.ad to i64                    ; 3 uses
  %.not20.not.i = icmp samesign ugt i64 %.sroa.11.0, %i.ae
  br i1 %.not20.not.i, label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit, label %bb.o, !prof !19

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #10, !noalias !1224
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.af = add nuw nsw i64 %i.ae, 1
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef %i.af, i64 noundef %.sroa.11.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #10, !noalias !1224
  unreachable

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit: ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.821.0, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %1, ptr %i.ah, align 8, !alias.scope !1224, !noalias !1232
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %.lobit.i = lshr i16 %.sroa.02.0.copyload.i, 15
  %i.aj = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.aj, ptr %i.ai, align 4, !alias.scope !1224, !noalias !1232
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.m, ptr %i.ak, align 8, !alias.scope !1224, !noalias !1232
  store ptr %i.p, ptr %i.a, align 8, !alias.scope !1224, !noalias !1232
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.al, align 8, !alias.scope !1224, !noalias !1232
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.r, ptr %i.am, align 8, !alias.scope !1224, !noalias !1232
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.t, ptr %i.an, align 8, !alias.scope !1224, !noalias !1232
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.020.0, ptr %i.ao, align 8, !alias.scope !1224, !noalias !1232
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.5.0, ptr %i.ap, align 8, !alias.scope !1224, !noalias !1232
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.ag, ptr %i.aq, align 8, !alias.scope !1224, !noalias !1232
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.ae, ptr %i.ar, align 8, !alias.scope !1224, !noalias !1232
  %i.as = call noundef i32 @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State10pattern_id(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.a, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit
  %.sroa.0.0 = phi i32 [ %i.as, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit ], [ 0, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton14next_eoi_stateCsavRPklju9Q7_4bstr(ptr %.352.val, i64 %.360.val, i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.352.val) ]
  %i.b = zext i32 %0 to i64                       ; 4 uses
  %i.c = icmp ult i64 %.360.val, %i.b
  br i1 %i.c, label %bb.e, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %.360.val, %i.b              ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  %i.e = icmp samesign ugt i64 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef range(i64 0, -9223372036854775808) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #10, !noalias !1251
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.352.val, i64 %i.b ; 2 uses
  %.sroa.02.0.copyload.i = load i16, ptr %i.f, align 1, !alias.scope !1250, !noalias !1249 ; 3 uses
  %i.g = and i16 %.sroa.02.0.copyload.i, 32767
  %i.h = zext nneg i16 %i.g to i64                ; 3 uses
  %i.i = icmp slt i16 %.sroa.02.0.copyload.i, 0
  %i.j = add i64 %i.d, -2                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.l = shl nuw nsw i64 %i.h, 1                  ; 4 uses
  %.not.i5 = icmp samesign ugt i64 %i.l, %i.j
  br i1 %.not.i5, label %bb.f, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit, !prof !18

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.b, i64 noundef %.360.val, i64 noundef %.360.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #10, !noalias !1249
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #10, !noalias !1252
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l ; 2 uses
  %i.n = sub nuw nsw i64 %i.j, %i.l               ; 2 uses
  %i.o = shl nuw nsw i64 %i.h, 2                  ; 4 uses
  %.not.i6 = icmp samesign ugt i64 %i.o, %i.n
  br i1 %.not.i6, label %bb.g, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10, !prof !18

bb.g:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #10, !noalias !1253
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o ; 3 uses
  %i.q = sub nuw nsw i64 %i.n, %i.o               ; 4 uses
  br i1 %i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  %i.r = icmp samesign ugt i64 %i.q, 3
  br i1 %i.r, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit, label %bb.i, !prof !19

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #10, !noalias !1255
  unreachable

bb.j:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15
  %.sroa.11.0 = phi i64 [ %i.x, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15 ], [ %i.q, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10 ] ; 3 uses
  %.sroa.86.0 = phi ptr [ %i.w, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15 ], [ %i.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10 ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %i.u, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15 ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10 ]
  %.sroa.05.0 = phi ptr [ %i.v, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15 ], [ inttoptr (i64 1 to ptr), %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit10 ]
  %.not.i = icmp eq i64 %.sroa.11.0, 0
  br i1 %.not.i, label %bb.m, label %bb.l

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit: ; preds = %bb.h
  %.sroa.02.0.copyload.i1 = load i32, ptr %i.p, align 1, !alias.scope !1254, !noalias !1249
  %i.s = zext i32 %.sroa.02.0.copyload.i1 to i64
  %i.t = add nsw i64 %i.q, -4                     ; 2 uses
  %i.u = shl nuw nsw i64 %i.s, 2                  ; 4 uses
  %.not.i11 = icmp samesign ugt i64 %i.u, %i.t
  br i1 %.not.i11, label %bb.k, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15, !prof !18

bb.k:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #10, !noalias !1256
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit15: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  %i.x = sub nuw nsw i64 %i.t, %i.u
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.y = load i8, ptr %.sroa.86.0, align 1, !noalias !1249, !noundef !9
  %i.z = zext i8 %i.y to i64                      ; 3 uses
  %.not20.not.i = icmp samesign ugt i64 %.sroa.11.0, %i.z
  br i1 %.not20.not.i, label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit, label %bb.n, !prof !19

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #10, !noalias !1249
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aa = add nuw nsw i64 %i.z, 1
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef %i.aa, i64 noundef %.sroa.11.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #10, !noalias !1249
  unreachable

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit: ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.86.0, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %0, ptr %i.ac, align 8, !alias.scope !1249, !noalias !1257
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %.lobit.i = lshr i16 %.sroa.02.0.copyload.i, 15
  %i.ae = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.ae, ptr %i.ad, align 4, !alias.scope !1249, !noalias !1257
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.h, ptr %i.af, align 8, !alias.scope !1249, !noalias !1257
  store ptr %i.k, ptr %i.a, align 8, !alias.scope !1249, !noalias !1257
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.l, ptr %i.ag, align 8, !alias.scope !1249, !noalias !1257
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.ah, align 8, !alias.scope !1249, !noalias !1257
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.o, ptr %i.ai, align 8, !alias.scope !1249, !noalias !1257
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.05.0, ptr %i.aj, align 8, !alias.scope !1249, !noalias !1257
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.5.0, ptr %i.ak, align 8, !alias.scope !1249, !noalias !1257
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.ab, ptr %i.al, align 8, !alias.scope !1249, !noalias !1257
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.z, ptr %i.am, align 8, !alias.scope !1249, !noalias !1257
  %i.an = call noundef i32 @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State8next_eoi(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.an
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton20next_state_uncheckedCsavRPklju9Q7_4bstr(ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(720) %0, i32 noundef %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %i.b = zext i8 %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !1278, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1278
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.val1 = load i64, ptr %i.f, align 8, !noundef !9 ; 4 uses
  %i.g = zext i32 %1 to i64                       ; 4 uses
  %i.h = icmp ult i64 %.val1, %i.g
  br i1 %i.h, label %bb.e, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.val = load ptr, ptr %i.i, align 16, !nonnull !9, !noundef !9
  %i.j = sub nuw i64 %.val1, %i.g                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  %i.k = icmp samesign ugt i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef range(i64 0, -9223372036854775808) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #10, !noalias !1281
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 %i.g ; 2 uses
  %.sroa.02.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !1280, !noalias !1279 ; 3 uses
  %i.m = and i16 %.sroa.02.0.copyload.i.i, 32767
  %i.n = zext nneg i16 %i.m to i64                ; 5 uses
  %i.o = icmp slt i16 %.sroa.02.0.copyload.i.i, 0
  %i.p = add i64 %i.j, -2                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 4 uses
  %i.r = shl nuw nsw i64 %i.n, 1                  ; 6 uses
  %.not.i = icmp samesign ugt i64 %i.r, %i.p
  br i1 %.not.i, label %bb.f, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit, !prof !18

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %.val1, i64 noundef %.val1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #10, !noalias !1279
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #10, !noalias !1282
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 2 uses
  %i.t = sub nuw nsw i64 %i.p, %i.r               ; 2 uses
  %i.u = shl nuw nsw i64 %i.n, 2                  ; 4 uses
  %.not.i2 = icmp samesign ugt i64 %i.u, %i.t
  br i1 %.not.i2, label %bb.g, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit6, !prof !18

bb.g:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #10, !noalias !1283
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit6: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u ; 3 uses
  %i.w = sub nuw nsw i64 %i.t, %i.u               ; 4 uses
  br i1 %i.o, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  %i.x = icmp samesign ugt i64 %i.w, 3
  br i1 %i.x, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i, label %bb.i, !prof !19

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef range(i64 0, -9223372036854775808) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #10, !noalias !1285
  unreachable

bb.j:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit6, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit11
  %.sroa.11.0 = phi i64 [ %i.ad, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit11 ], [ %i.w, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit6 ] ; 3 uses
  %.sroa.817.0 = phi ptr [ %i.ac, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit11 ], [ %i.v, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit6 ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %i.aa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit11 ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit6 ]
  %.sroa.016.0 = phi ptr [ %i.ab, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit11 ], [ inttoptr (i64 1 to ptr), %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit6 ]
  %.not.i.i = icmp eq i64 %.sroa.11.0, 0
  br i1 %.not.i.i, label %bb.m, label %bb.l

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i: ; preds = %bb.h
  %.sroa.02.0.copyload.i1.i = load i32, ptr %i.v, align 1, !alias.scope !1284, !noalias !1279
  %i.y = zext i32 %.sroa.02.0.copyload.i1.i to i64
  %i.z = add nsw i64 %i.w, -4                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.y, 2                 ; 4 uses
  %.not.i7 = icmp samesign ugt i64 %i.aa, %i.z
  br i1 %.not.i7, label %bb.k, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit11, !prof !18

bb.k:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #10, !noalias !1286
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsavRPklju9Q7_4bstr.exit11: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = sub nuw nsw i64 %i.z, %i.aa
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.ae = load i8, ptr %.sroa.817.0, align 1, !noalias !1279, !noundef !9
  %i.af = zext i8 %i.ae to i64                    ; 3 uses
  %.not20.not.i.i = icmp samesign ugt i64 %.sroa.11.0, %i.af
  br i1 %.not20.not.i.i, label %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i, label %bb.n, !prof !19

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #10, !noalias !1279
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ag = add nuw nsw i64 %i.af, 1
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef %i.ag, i64 noundef %.sroa.11.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #10, !noalias !1279
  unreachable

_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i: ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.817.0, i64 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %1, ptr %i.ai, align 8, !alias.scope !1279, !noalias !1287
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %.lobit.i.i = lshr i16 %.sroa.02.0.copyload.i.i, 15
  %i.ak = trunc nuw nsw i16 %.lobit.i.i to i8
  store i8 %i.ak, ptr %i.aj, align 4, !alias.scope !1279, !noalias !1287
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.n, ptr %i.al, align 8, !alias.scope !1279, !noalias !1287
  store ptr %i.q, ptr %i.a, align 8, !alias.scope !1279, !noalias !1287
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.am, align 8, !alias.scope !1279, !noalias !1287
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.s, ptr %i.an, align 8, !alias.scope !1279, !noalias !1287
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.u, ptr %i.ao, align 8, !alias.scope !1279, !noalias !1287
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.016.0, ptr %i.ap, align 8, !alias.scope !1279, !noalias !1287
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.5.0, ptr %i.aq, align 8, !alias.scope !1279, !noalias !1287
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.ah, ptr %i.ar, align 8, !alias.scope !1279, !noalias !1287
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.af, ptr %i.as, align 8, !alias.scope !1279, !noalias !1287
  %i.at = add nsw i64 %i.n, -1                    ; 2 uses
  %exitcond.not50 = icmp eq i64 %i.at, 0
  br i1 %exitcond.not50, label %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit, label %.lr.ph

bb.o:                                             ; preds = %bb.q
  %i.au = add nuw nsw i64 %.sroa.02.0.i.i51, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %i.at
  br i1 %exitcond.not, label %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i, %bb.o
  %.sroa.02.0.i.i51 = phi i64 [ %i.au, %bb.o ], [ 0, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i ] ; 4 uses
  %exitcond32.not = icmp eq i64 %.sroa.02.0.i.i51, %i.n
  br i1 %exitcond32.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #10, !noalias !1288
  unreachable

bb.q:                                             ; preds = %.lr.ph
  %i.av = shl nuw nsw i64 %.sroa.02.0.i.i51, 1    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !1288, !noundef !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !noalias !1288, !noundef !9
  %i.bb = icmp ule i8 %i.ax, %i.e
  %i.bc = icmp ule i8 %i.e, %i.ba
  %or.cond.i.i = and i1 %i.bb, %i.bc
  br i1 %or.cond.i.i, label %bb.r, label %bb.o

bb.r:                                             ; preds = %bb.q
  %i.bd = call noundef i32 @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.a, i64 noundef %.sroa.02.0.i.i51)
  br label %_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit

_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShENtNtB7_9automaton9Automaton10next_stateCsavRPklju9Q7_4bstr.exit: ; preds = %bb.o, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i, %bb.r
  %.sroa.0.0.i.i = phi i32 [ %i.bd, %bb.r ], [ 0, %_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_11TransitionsRShE5stateCsavRPklju9Q7_4bstr.exit.i ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1278
  ret i32 %.sroa.0.0.i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsj_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10MatchError4quit(i8 noundef, i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB7_9automaton9Automaton19start_state_reverseCsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(768), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton19start_state_reverseCsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsavRPklju9Q7_4bstr(ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata3dfa5accelINtB5_6AccelsRSmE3lenCsavRPklju9Q7_4bstr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense3DFARSmENtNtB7_9automaton9Automaton19start_state_forwardCsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(768), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse3DFARShENtNtB7_9automaton9Automaton19start_state_forwardCsavRPklju9Q7_4bstr(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State10pattern_id(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State8next_eoi(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB2_4Unit3eoi(i64 noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { noreturn }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 2, !"RtLibUseGOT", i32 1}
!8 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!9 = !{}
!10 = !{!"branch_weights", i32 4001, i32 4000000}
!11 = !{i32 0, i32 3}
!12 = !{i64 16}
!13 = !{i8 0, i8 3}
!14 = !{i8 0, i8 2}
!15 = !{i32 0, i32 2}
!16 = !{i64 8}
!17 = !{i64 4}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = !{!"branch_weights", i32 357854, i32 715708598, i32 715708598, i32 715708598, i32 0}
!21 = !{!"branch_weights", i32 357855, i32 715708598, i32 715708598, i32 715708598, i32 0}
end_hunk_2
