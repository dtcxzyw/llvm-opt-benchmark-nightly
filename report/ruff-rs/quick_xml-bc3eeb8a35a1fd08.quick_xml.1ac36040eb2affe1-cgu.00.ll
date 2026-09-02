Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/quick_xml-bc3eeb8a35a1fd08.quick_xml.1ac36040eb2affe1-cgu.00?download=true
inline.NumInlined: 172
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCs2isvxI5XMib_9quick_xml6escape19normalize_attr_stepNvB2_27is_xml10_normalization_charNvB2_24normalize_xml10_eol_stepNvB2_25resolve_predefined_entityEB4_:bb.a
  %i.as = phi ptr [ %i.at, %bb.r ], [ %i.an, %.lr.ph.preheader.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 3 uses
  %.val.i = load i8, ptr %i.as, align 1, !noalias !159, !noundef !3
  %i.au = icmp eq i8 %.val.i, 59
  br i1 %i.au, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.av = add nuw i64 %.sroa.02.08.i, 1
  %i.aw = icmp eq ptr %i.at, %i.am
  br i1 %i.aw, label %..loopexit_crit_edge.i, label %.lr.ph.i

..loopexit_crit_edge.i:                           ; preds = %bb.r
  store ptr %scevgep.i, ptr %2, align 8, !alias.scope !159
  br label %bb.x

bb.s:                                             ; preds = %bb.n
  %i.ax = icmp sgt i64 %i.y, -1
  tail call void @llvm.assume(i1 %i.ax)
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !160, !nonnull !3, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.y
  store i8 32, ptr %i.ba, align 1
  %i.bb = add nuw i64 %i.y, 1
  store i64 %i.bb, ptr %i.q, align 8, !alias.scope !160
  %i.bc = add nuw i64 %6, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bc, ptr %i.bd, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.t:                                             ; preds = %.lr.ph.i
  store ptr %i.at, ptr %2, align 8, !alias.scope !159
  %i.be = icmp ult i64 %.sroa.02.08.i, %i.aq
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add i64 %.sroa.02.08.i, %i.ak           ; 7 uses
  %.not.i97.not = icmp ult i64 %6, %i.bf
  br i1 %.not.i97.not, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %.not5.i98 = icmp ult i64 %i.ak, %4
  br i1 %.not5.i98, label %bb.v, label %.split.i99

bb.v:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 %i.ak
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !161, !noundef !3
  %i.bi = icmp sgt i8 %i.bh, -65
  br i1 %i.bi, label %.split.i99, label %bb.z

.split.i99:                                       ; preds = %bb.u, %bb.v
  %.not6.i102 = icmp ult i64 %i.bf, %4
  br i1 %.not6.i102, label %bb.w, label %.split7.i103

.split7.i103:                                     ; preds = %.split.i99
  %i.bj = icmp eq i64 %i.bf, %4
  br i1 %i.bj, label %bb.y, label %bb.z

bb.w:                                             ; preds = %.split.i99
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 %i.bf
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !161, !noundef !3
  %i.bm = icmp sgt i8 %i.bl, -65
  br i1 %i.bm, label %bb.y, label %bb.z

bb.x:                                             ; preds = %..loopexit_crit_edge.i, %bb.q
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %.sroa.55.0..sroa_idx, align 8
  br label %bb.j

bb.y:                                             ; preds = %bb.w, %.split7.i103
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 %i.ak ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 35, ptr %i.c, align 4
  %i.bo = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %.sroa.02.08.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1)
  br i1 %i.bo, label %bb.ai, label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.v, %bb.t, %.split7.i103
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i64 noundef %i.ak, i64 noundef %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #11
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  switch i64 %.sroa.02.08.i, label %bb.ap [
    i64 3, label %bb.aj
    i64 2, label %bb.ab
    i64 4, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load i8, ptr %i.bn, align 1, !alias.scope !162, !noundef !3
  switch i8 %i.bp, label %bb.ap [
    i8 108, label %.sink.split.i.i.i
    i8 103, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  br label %.sink.split.i.i.i

bb.ad:                                            ; preds = %bb.aa
  %i.bq = load i8, ptr %i.bn, align 1, !alias.scope !162, !noundef !3
  switch i8 %i.bq, label %bb.ap [
    i8 97, label %bb.ae
    i8 113, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !162, !noundef !3
  %i.bt = icmp eq i8 %i.bs, 112
  br i1 %i.bt, label %bb.ag, label %bb.ap

bb.af:                                            ; preds = %bb.ad
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !162, !noundef !3
  %i.bw = icmp eq i8 %i.bv, 117
  br i1 %i.bw, label %bb.ah, label %bb.ap

bb.ag:                                            ; preds = %bb.ae
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !162, !noundef !3
  %i.bz = icmp eq i8 %i.by, 111
  br i1 %i.bz, label %.sink.split.i.i.i, label %bb.ap

bb.ah:                                            ; preds = %bb.af
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !162, !noundef !3
  %i.cc = icmp eq i8 %i.cb, 111
  br i1 %i.cc, label %.sink.split.i.i.i, label %bb.ap

.sink.split.i.i.i:                                ; preds = %bb.ah, %bb.ag, %bb.ac, %bb.ab
  %.sink9.i.i.i = phi i64 [ 1, %bb.ac ], [ 1, %bb.ab ], [ 3, %bb.ag ], [ 3, %bb.ah ]
  %.sink8.i.i.i = phi i8 [ 116, %bb.ac ], [ 116, %bb.ab ], [ 115, %bb.ag ], [ 116, %bb.ah ]
  %.sink6.i.i.i = phi ptr [ @19, %bb.ac ], [ @18, %bb.ab ], [ @21, %bb.ag ], [ @22, %bb.ah ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sink9.i.i.i
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !162, !noundef !3
  %i.cf = icmp eq i8 %i.ce, %.sink8.i.i.i
  br i1 %i.cf, label %.lr.ph.preheader.i124.lr.ph, label %bb.ap

bb.ai:                                            ; preds = %bb.y
  %i.cg = add i64 %.sroa.02.08.i, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ci = call i64 @_RNvNtCs2isvxI5XMib_9quick_xml6escape12parse_number(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ch, i64 noundef %i.cg) ; 10 uses
  %.sroa.580.0.extract.shift = lshr i64 %i.ci, 32 ; 2 uses
  %i.cj = and i64 %i.ci, 255
  %.not93 = icmp eq i64 %i.cj, 255
  br i1 %.not93, label %bb.ax, label %bb.aw

bb.aj:                                            ; preds = %bb.aa
  %i.ck = load i16, ptr %i.bn, align 1
  %i.cl = xor i16 %i.ck, 28001
  %i.cm = getelementptr i8, ptr %i.bn, i64 2
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i16
  %i.cp = xor i16 %i.co, 112
  %i.cq = or i16 %i.cl, %i.cp
  %i.cr = icmp ne i16 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.al, label %.split

.split:                                           ; preds = %bb.aj
  %i.cu = load i8, ptr %i.bn, align 1, !alias.scope !163, !noundef !3
  %i.cv = icmp eq i8 %i.cu, 97
  br i1 %i.cv, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %.split
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !163, !noundef !3
  %i.cy = icmp eq i8 %i.cx, 109
  br i1 %i.cy, label %.sink.split.i.i.i106, label %bb.ap

.sink.split.i.i.i106:                             ; preds = %bb.ak
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !163, !noundef !3
  %i.db = icmp eq i8 %i.da, 112
  br i1 %i.db, label %.lr.ph.preheader.i124.lr.ph, label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.dc = load i64, ptr %i.q, align 8, !alias.scope !164, !noundef !3 ; 3 uses
  %i.dd = icmp sgt i64 %i.dc, -1
  call void @llvm.assume(i1 %i.dd)
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !164, !nonnull !3, !noundef !3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dc
  store i8 38, ptr %i.dg, align 1
  %i.dh = add nuw i64 %i.dc, 1
  store i64 %i.dh, ptr %i.q, align 8, !alias.scope !164
  br label %bb.av

.lr.ph.preheader.i124.lr.ph:                      ; preds = %.sink.split.i.i.i106, %.sink.split.i.i.i
  %.sroa.0.0.i.i.i105.pn = phi ptr [ %.sink6.i.i.i, %.sink.split.i.i.i ], [ @20, %.sink.split.i.i.i106 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i105.pn, i64 1 ; 2 uses
  store ptr %.sroa.0.0.i.i.i105.pn, ptr %i.d, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.di, ptr %i.dj, align 8
  %8 = add i64 %7, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph.preheader.i124

.lr.ph.preheader.i124:                            ; preds = %.lr.ph.preheader.i124.lr.ph, %bb.an
  %i.dl = phi i64 [ 1, %.lr.ph.preheader.i124.lr.ph ], [ %i.ed, %bb.an ] ; 2 uses
  %i.dm = phi ptr [ %.sroa.0.0.i.i.i105.pn, %.lr.ph.preheader.i124.lr.ph ], [ %i.ea, %bb.an ] ; 2 uses
  %i.dn = phi ptr [ %i.di, %.lr.ph.preheader.i124.lr.ph ], [ %i.dz, %bb.an ]
  %.sroa.0.0.i11244 = phi i64 [ 0, %.lr.ph.preheader.i124.lr.ph ], [ %i.dv, %bb.an ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNvNtCs2isvxI5XMib_9quick_xml6escape27is_xml10_normalization_charINtB6_5FnMutTRhEE8call_mutBR_.exit.i, %.lr.ph.preheader.i124
  %.sroa.02.09.i = phi i64 [ %i.dq, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNvNtCs2isvxI5XMib_9quick_xml6escape27is_xml10_normalization_charINtB6_5FnMutTRhEE8call_mutBR_.exit.i ], [ 0, %.lr.ph.preheader.i124 ] ; 3 uses
  %i.do = phi ptr [ %i.dp, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNvNtCs2isvxI5XMib_9quick_xml6escape27is_xml10_normalization_charINtB6_5FnMutTRhEE8call_mutBR_.exit.i ], [ %i.dm, %.lr.ph.preheader.i124 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 3 uses
  %.val.i127 = load i8, ptr %i.do, align 1, !noalias !166, !noundef !3
  switch i8 %.val.i127, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNvNtCs2isvxI5XMib_9quick_xml6escape27is_xml10_normalization_charINtB6_5FnMutTRhEE8call_mutBR_.exit.i [
    i8 9, label %bb.am
    i8 13, label %bb.am
    i8 10, label %bb.am
    i8 38, label %bb.am
  ]

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNvNtCs2isvxI5XMib_9quick_xml6escape27is_xml10_normalization_charINtB6_5FnMutTRhEE8call_mutBR_.exit.i: ; preds = %.lr.ph.i126
  %i.dq = add nuw i64 %.sroa.02.09.i, 1
  %i.dr = icmp eq ptr %i.dp, %i.dn
  br i1 %i.dr, label %..loopexit_crit_edge.i130, label %.lr.ph.i126

..loopexit_crit_edge.i130:                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNvNtCs2isvxI5XMib_9quick_xml6escape27is_xml10_normalization_charINtB6_5FnMutTRhEE8call_mutBR_.exit.i
  %scevgep.i125.le = getelementptr i8, ptr %i.dm, i64 %i.dl
  store ptr %scevgep.i125.le, ptr %i.d, align 8, !alias.scope !165, !noalias !167
  br label %.loopexit

bb.am:                                            ; preds = %.lr.ph.i126, %.lr.ph.i126, %.lr.ph.i126, %.lr.ph.i126
  store ptr %i.dp, ptr %i.d, align 8, !alias.scope !165, !noalias !167
  %i.ds = icmp ult i64 %.sroa.02.09.i, %i.dl
  call void @llvm.assume(i1 %i.ds), !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  %i.dt = add i64 %.sroa.02.09.i, %.sroa.0.0.i11244
  call fastcc void @_RINvNtCs2isvxI5XMib_9quick_xml6escape19normalize_attr_stepNvB2_27is_xml10_normalization_charNvB2_24normalize_xml10_eol_stepNvB2_25resolve_predefined_entityEB4_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i105.pn, i64 noundef 1, i64 noundef %.sroa.0.0.i11244, i64 noundef %i.dt, i64 noundef %8)
  %i.du = load i64, ptr %i.a, align 8, !range !4, !noalias !168, !noundef !3 ; 2 uses
  %.not26.i = icmp eq i64 %i.du, -1
  %i.dv = load i64, ptr %i.dk, align 8, !noalias !168 ; 3 uses
  br i1 %.not26.i, label %bb.an, label %bb.aq

.loopexit:                                        ; preds = %bb.an, %..loopexit_crit_edge.i130
  %.sroa.0.0.i11236 = phi i64 [ %.sroa.0.0.i11244, %..loopexit_crit_edge.i130 ], [ %i.dv, %bb.an ] ; 3 uses
  %switch = icmp ult i64 %.sroa.0.0.i11236, 2
  br i1 %switch, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %.loopexit
  %i.dw = sub nuw nsw i64 1, %.sroa.0.0.i11236    ; 3 uses
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.dw), !noalias !167
  %i.dx = load i64, ptr %i.q, align 8, !alias.scope !169, !noalias !167, !noundef !3 ; 3 uses
  %i.dy = icmp sgt i64 %i.dx, -1
  call void @llvm.assume(i1 %i.dy), !noalias !167
  %.not.i117 = icmp eq i64 %.sroa.0.0.i11236, 1
  br i1 %.not.i117, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml.exit119, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  %i.dz = load ptr, ptr %i.dj, align 8, !alias.scope !170, !noalias !167, !nonnull !3, !noundef !3 ; 3 uses
  %i.ea = load ptr, ptr %i.d, align 8, !alias.scope !170, !noalias !167, !nonnull !3, !noundef !3 ; 3 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = icmp eq ptr %i.ea, %i.dz
  br i1 %i.ee, label %.loopexit, label %.lr.ph.preheader.i124

bb.ao:                                            ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !169, !noalias !167, !nonnull !3, !noundef !3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr nonnull readonly align 1 %.sroa.0.0.i.i.i105.pn, i64 %i.dw, i1 false), !noalias !167
  %.pre.i118 = load i64, ptr %i.q, align 8, !alias.scope !169, !noalias !167
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml.exit119

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml.exit119: ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, %bb.ao
  %i.ei = phi i64 [ %.pre.i118, %bb.ao ], [ %i.dx, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit ]
  %i.ej = add i64 %i.ei, %i.dw
  store i64 %i.ej, ptr %i.q, align 8, !alias.scope !169, !noalias !167
  br label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

bb.ap:                                            ; preds = %bb.ae, %bb.ab, %bb.aa, %.sink.split.i.i.i, %bb.ah, %bb.ad, %bb.ag, %bb.af, %bb.ak, %.sink.split.i.i.i106, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.02.08.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ek = load i64, ptr %i.b, align 8, !range !5, !noundef !3
  %i.el = trunc nuw i64 %i.ek to i1
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.en = load i64, ptr %i.em, align 8, !range !6, !noundef !3 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.el, label %bb.ar, label %bb.as, !prof !7

bb.aq:                                            ; preds = %bb.am
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.521.0..sroa_idx.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  store i64 %i.du, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dv, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread: ; preds = %.loopexit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.av

bb.ar:                                            ; preds = %bb.ap
  %i.ep = load i64, ptr %i.eo, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.en, i64 %i.ep) #11
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.eq = load ptr, ptr %i.eo, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.er = icmp ule i64 %.sroa.02.08.i, %i.en
  call void @llvm.assume(i1 %i.er)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not91 = icmp eq i64 %.sroa.02.08.i, 0
  br i1 %.not91, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.au, %bb.as
  store i64 %i.en, ptr %0, align 8
  %.sroa.035.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eq, ptr %.sroa.035.sroa.4.0..sroa_idx, align 8
  %.sroa.035.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.02.08.i, ptr %.sroa.035.sroa.5.0..sroa_idx, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ak, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bf, ptr %.sroa.537.0..sroa_idx, align 8
  br label %bb.j

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eq, ptr nonnull align 1 %i.bn, i64 %.sroa.02.08.i, i1 false)
  br label %bb.at

bb.av:                                            ; preds = %bb.al, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml.exit116
  %i.es = add i64 %i.bf, 1
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.es, ptr %i.et, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.aw:                                            ; preds = %bb.ai
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ci, ptr %.sroa.464.0..sroa_idx, align 8
  br label %bb.j

bb.ax:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i32 0, ptr %.sroa.0, align 4
  %i.eu = icmp ult i64 %i.ci, 4785074604081152
  call void @llvm.assume(i1 %i.eu)
  %i.ev = icmp samesign ult i64 %i.ci, 549755813888
  br i1 %i.ev, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ew = icmp samesign ult i64 %i.ci, 8796093022208
  %i.ex = trunc i64 %.sroa.580.0.extract.shift to i8
  %i.ey = and i8 %i.ex, 63
  %i.ez = or disjoint i8 %i.ey, -128              ; 3 uses
  %i.fa = lshr i64 %i.ci, 38
  %i.fb = trunc i64 %i.fa to i8                   ; 2 uses
  %i.fc = and i8 %i.fb, 63
  %i.fd = or disjoint i8 %i.fc, -128              ; 2 uses
  %i.fe = lshr i64 %i.ci, 44
  %i.ff = trunc i64 %i.fe to i8                   ; 2 uses
  %i.fg = and i8 %i.ff, 63
  %i.fh = or disjoint i8 %i.fg, -128
  %i.fi = lshr i64 %i.ci, 50
  %i.fj = trunc nuw nsw i64 %i.fi to i8
  %i.fk = or disjoint i8 %i.fj, -16
  br i1 %i.ew, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.fl = trunc nuw i64 %.sroa.580.0.extract.shift to i8
  store i8 %i.fl, ptr %.sroa.0, align 4, !alias.scope !171
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml.exit116

bb.ba:                                            ; preds = %bb.ay
  %i.fm = or disjoint i8 %i.fb, -64
  store i8 %i.fm, ptr %.sroa.0, align 4, !alias.scope !171
  %.sroa.0.1..sroa_idx142 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.ez, ptr %.sroa.0.1..sroa_idx142, align 1, !alias.scope !171
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml.exit116

bb.bb:                                            ; preds = %bb.ay
  %i.fn = icmp samesign ult i64 %i.ci, 281474976710656
  br i1 %i.fn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fo = or disjoint i8 %i.ff, -32
  store i8 %i.fo, ptr %.sroa.0, align 4, !alias.scope !171
  %.sroa.0.1..sroa_idx141 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.fd, ptr %.sroa.0.1..sroa_idx141, align 1, !alias.scope !171
  %.sroa.0.2..sroa_idx143 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.ez, ptr %.sroa.0.2..sroa_idx143, align 2, !alias.scope !171
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml.exit116
end_hunk_0
begin_hunk_1_@_RINvNtCs2isvxI5XMib_9quick_xml6escape19normalize_attr_stepNvB2_27is_xml11_normalization_charNvB2_24normalize_xml11_eol_stepNvB2_25resolve_predefined_entityEB4_:bb.a
  %i.as = phi ptr [ %i.at, %bb.r ], [ %i.an, %.lr.ph.preheader.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 3 uses
  %.val.i = load i8, ptr %i.as, align 1, !noalias !217, !noundef !3
  %i.au = icmp eq i8 %.val.i, 59
  br i1 %i.au, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.av = add nuw i64 %.sroa.02.08.i, 1
  %i.aw = icmp eq ptr %i.at, %i.am
  br i1 %i.aw, label %..loopexit_crit_edge.i, label %.lr.ph.i

..loopexit_crit_edge.i:                           ; preds = %bb.r
  store ptr %scevgep.i, ptr %2, align 8, !alias.scope !217
  br label %bb.x

bb.s:                                             ; preds = %bb.n
  %i.ax = icmp sgt i64 %i.y, -1
  tail call void @llvm.assume(i1 %i.ax)
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !218, !nonnull !3, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.y
  store i8 32, ptr %i.ba, align 1
  %i.bb = add nuw i64 %i.y, 1
  store i64 %i.bb, ptr %i.q, align 8, !alias.scope !218
  %i.bc = add nuw i64 %6, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bc, ptr %i.bd, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.t:                                             ; preds = %.lr.ph.i
  store ptr %i.at, ptr %2, align 8, !alias.scope !217
  %i.be = icmp ult i64 %.sroa.02.08.i, %i.aq
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add i64 %.sroa.02.08.i, %i.ak           ; 7 uses
  %.not.i97.not = icmp ult i64 %6, %i.bf
  br i1 %.not.i97.not, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %.not5.i98 = icmp ult i64 %i.ak, %4
  br i1 %.not5.i98, label %bb.v, label %.split.i99

bb.v:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 %i.ak
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !219, !noundef !3
  %i.bi = icmp sgt i8 %i.bh, -65
  br i1 %i.bi, label %.split.i99, label %bb.z

.split.i99:                                       ; preds = %bb.u, %bb.v
  %.not6.i102 = icmp ult i64 %i.bf, %4
  br i1 %.not6.i102, label %bb.w, label %.split7.i103

.split7.i103:                                     ; preds = %.split.i99
  %i.bj = icmp eq i64 %i.bf, %4
  br i1 %i.bj, label %bb.y, label %bb.z

bb.w:                                             ; preds = %.split.i99
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 %i.bf
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !219, !noundef !3
  %i.bm = icmp sgt i8 %i.bl, -65
  br i1 %i.bm, label %bb.y, label %bb.z

bb.x:                                             ; preds = %..loopexit_crit_edge.i, %bb.q
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %.sroa.55.0..sroa_idx, align 8
  br label %bb.j

bb.y:                                             ; preds = %bb.w, %.split7.i103
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 %i.ak ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 35, ptr %i.c, align 4
  %i.bo = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %.sroa.02.08.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1)
  br i1 %i.bo, label %bb.ai, label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.v, %bb.t, %.split7.i103
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i64 noundef %i.ak, i64 noundef %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #11
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  switch i64 %.sroa.02.08.i, label %bb.ap [
    i64 3, label %bb.aj
    i64 2, label %bb.ab
    i64 4, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load i8, ptr %i.bn, align 1, !alias.scope !220, !noundef !3
  switch i8 %i.bp, label %bb.ap [
    i8 108, label %.sink.split.i.i.i
    i8 103, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  br label %.sink.split.i.i.i

bb.ad:                                            ; preds = %bb.aa
  %i.bq = load i8, ptr %i.bn, align 1, !alias.scope !220, !noundef !3
  switch i8 %i.bq, label %bb.ap [
    i8 97, label %bb.ae
    i8 113, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !220, !noundef !3
  %i.bt = icmp eq i8 %i.bs, 112
  br i1 %i.bt, label %bb.ag, label %bb.ap

bb.af:                                            ; preds = %bb.ad
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !220, !noundef !3
  %i.bw = icmp eq i8 %i.bv, 117
  br i1 %i.bw, label %bb.ah, label %bb.ap

bb.ag:                                            ; preds = %bb.ae
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !220, !noundef !3
  %i.bz = icmp eq i8 %i.by, 111
  br i1 %i.bz, label %.sink.split.i.i.i, label %bb.ap

bb.ah:                                            ; preds = %bb.af
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !220, !noundef !3
  %i.cc = icmp eq i8 %i.cb, 111
  br i1 %i.cc, label %.sink.split.i.i.i, label %bb.ap

.sink.split.i.i.i:                                ; preds = %bb.ah, %bb.ag, %bb.ac, %bb.ab
  %.sink9.i.i.i = phi i64 [ 1, %bb.ac ], [ 1, %bb.ab ], [ 3, %bb.ag ], [ 3, %bb.ah ]
  %.sink8.i.i.i = phi i8 [ 116, %bb.ac ], [ 116, %bb.ab ], [ 115, %bb.ag ], [ 116, %bb.ah ]
  %.sink6.i.i.i = phi ptr [ @19, %bb.ac ], [ @18, %bb.ab ], [ @21, %bb.ag ], [ @22, %bb.ah ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sink9.i.i.i
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !220, !noundef !3
  %i.cf = icmp eq i8 %i.ce, %.sink8.i.i.i
  br i1 %i.cf, label %.lr.ph.preheader.i124.lr.ph, label %bb.ap

bb.ai:                                            ; preds = %bb.y
  %i.cg = add i64 %.sroa.02.08.i, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ci = call i64 @_RNvNtCs2isvxI5XMib_9quick_xml6escape12parse_number(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ch, i64 noundef %i.cg) ; 10 uses
  %.sroa.580.0.extract.shift = lshr i64 %i.ci, 32 ; 2 uses
  %i.cj = and i64 %i.ci, 255
  %.not93 = icmp eq i64 %i.cj, 255
  br i1 %.not93, label %bb.ax, label %bb.aw

bb.aj:                                            ; preds = %bb.aa
  %i.ck = load i16, ptr %i.bn, align 1
  %i.cl = xor i16 %i.ck, 28001
  %i.cm = getelementptr i8, ptr %i.bn, i64 2
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i16
  %i.cp = xor i16 %i.co, 112
  %i.cq = or i16 %i.cl, %i.cp
  %i.cr = icmp ne i16 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.al, label %.split

.split:                                           ; preds = %bb.aj
  %i.cu = load i8, ptr %i.bn, align 1, !alias.scope !221, !noundef !3
  %i.cv = icmp eq i8 %i.cu, 97
  br i1 %i.cv, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %.split
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !221, !noundef !3
  %i.cy = icmp eq i8 %i.cx, 109
  br i1 %i.cy, label %.sink.split.i.i.i106, label %bb.ap

.sink.split.i.i.i106:                             ; preds = %bb.ak
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !221, !noundef !3
  %i.db = icmp eq i8 %i.da, 112
  br i1 %i.db, label %.lr.ph.preheader.i124.lr.ph, label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.dc = load i64, ptr %i.q, align 8, !alias.scope !222, !noundef !3 ; 3 uses
  %i.dd = icmp sgt i64 %i.dc, -1
  call void @llvm.assume(i1 %i.dd)
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !222, !nonnull !3, !noundef !3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dc
  store i8 38, ptr %i.dg, align 1
  %i.dh = add nuw i64 %i.dc, 1
  store i64 %i.dh, ptr %i.q, align 8, !alias.scope !222
  br label %bb.av

.lr.ph.preheader.i124.lr.ph:                      ; preds = %.sink.split.i.i.i106, %.sink.split.i.i.i
  %.sroa.0.0.i.i.i105.pn = phi ptr [ %.sink6.i.i.i, %.sink.split.i.i.i ], [ @20, %.sink.split.i.i.i106 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i105.pn, i64 1 ; 2 uses
  store ptr %.sroa.0.0.i.i.i105.pn, ptr %i.d, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.di, ptr %i.dj, align 8
  %8 = add i64 %7, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph.preheader.i124

.lr.ph.preheader.i124:                            ; preds = %.lr.ph.preheader.i124.lr.ph, %bb.an
  %i.dl = phi i64 [ 1, %.lr.ph.preheader.i124.lr.ph ], [ %i.ed, %bb.an ] ; 2 uses
  %i.dm = phi ptr [ %.sroa.0.0.i.i.i105.pn, %.lr.ph.preheader.i124.lr.ph ], [ %i.ea, %bb.an ] ; 2 uses
  %i.dn = phi ptr [ %i.di, %.lr.ph.preheader.i124.lr.ph ], [ %i.dz, %bb.an ]
  %.sroa.0.0.i11244 = phi i64 [ 0, %.lr.ph.preheader.i124.lr.ph ], [ %i.dv, %bb.an ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNvNtCs2isvxI5XMib_9quick_xml6escape27is_xml11_normalization_charINtB6_5FnMutTRhEE8call_mutBR_.exit.i, %.lr.ph.preheader.i124
  %.sroa.02.09.i = phi i64 [ %i.dq, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNvNtCs2isvxI5XMib_9quick_xml6escape27is_xml11_normalization_charINtB6_5FnMutTRhEE8call_mutBR_.exit.i ], [ 0, %.lr.ph.preheader.i124 ] ; 3 uses
  %i.do = phi ptr [ %i.dp, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNvNtCs2isvxI5XMib_9quick_xml6escape27is_xml11_normalization_charINtB6_5FnMutTRhEE8call_mutBR_.exit.i ], [ %i.dm, %.lr.ph.preheader.i124 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 3 uses
  %.val.i127 = load i8, ptr %i.do, align 1, !noalias !224, !noundef !3
  switch i8 %.val.i127, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNvNtCs2isvxI5XMib_9quick_xml6escape27is_xml11_normalization_charINtB6_5FnMutTRhEE8call_mutBR_.exit.i [
    i8 9, label %bb.am
    i8 13, label %bb.am
    i8 10, label %bb.am
    i8 -62, label %bb.am
    i8 -30, label %bb.am
    i8 38, label %bb.am
  ]

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNvNtCs2isvxI5XMib_9quick_xml6escape27is_xml11_normalization_charINtB6_5FnMutTRhEE8call_mutBR_.exit.i: ; preds = %.lr.ph.i126
  %i.dq = add nuw i64 %.sroa.02.09.i, 1
  %i.dr = icmp eq ptr %i.dp, %i.dn
  br i1 %i.dr, label %..loopexit_crit_edge.i130, label %.lr.ph.i126

..loopexit_crit_edge.i130:                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNvNtCs2isvxI5XMib_9quick_xml6escape27is_xml11_normalization_charINtB6_5FnMutTRhEE8call_mutBR_.exit.i
  %scevgep.i125.le = getelementptr i8, ptr %i.dm, i64 %i.dl
  store ptr %scevgep.i125.le, ptr %i.d, align 8, !alias.scope !223, !noalias !225
  br label %.loopexit

bb.am:                                            ; preds = %.lr.ph.i126, %.lr.ph.i126, %.lr.ph.i126, %.lr.ph.i126, %.lr.ph.i126, %.lr.ph.i126
  store ptr %i.dp, ptr %i.d, align 8, !alias.scope !223, !noalias !225
  %i.ds = icmp ult i64 %.sroa.02.09.i, %i.dl
  call void @llvm.assume(i1 %i.ds), !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !226
  %i.dt = add i64 %.sroa.02.09.i, %.sroa.0.0.i11244
  call fastcc void @_RINvNtCs2isvxI5XMib_9quick_xml6escape19normalize_attr_stepNvB2_27is_xml11_normalization_charNvB2_24normalize_xml11_eol_stepNvB2_25resolve_predefined_entityEB4_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i105.pn, i64 noundef 1, i64 noundef %.sroa.0.0.i11244, i64 noundef %i.dt, i64 noundef %8)
  %i.du = load i64, ptr %i.a, align 8, !range !4, !noalias !226, !noundef !3 ; 2 uses
  %.not26.i = icmp eq i64 %i.du, -1
  %i.dv = load i64, ptr %i.dk, align 8, !noalias !226 ; 3 uses
  br i1 %.not26.i, label %bb.an, label %bb.aq

.loopexit:                                        ; preds = %bb.an, %..loopexit_crit_edge.i130
  %.sroa.0.0.i11236 = phi i64 [ %.sroa.0.0.i11244, %..loopexit_crit_edge.i130 ], [ %i.dv, %bb.an ] ; 3 uses
  %switch = icmp ult i64 %.sroa.0.0.i11236, 2
  br i1 %switch, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %.loopexit
  %i.dw = sub nuw nsw i64 1, %.sroa.0.0.i11236    ; 3 uses
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.dw), !noalias !225
  %i.dx = load i64, ptr %i.q, align 8, !alias.scope !227, !noalias !225, !noundef !3 ; 3 uses
  %i.dy = icmp sgt i64 %i.dx, -1
  call void @llvm.assume(i1 %i.dy), !noalias !225
  %.not.i117 = icmp eq i64 %.sroa.0.0.i11236, 1
  br i1 %.not.i117, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml.exit119, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !226
  %i.dz = load ptr, ptr %i.dj, align 8, !alias.scope !228, !noalias !225, !nonnull !3, !noundef !3 ; 3 uses
  %i.ea = load ptr, ptr %i.d, align 8, !alias.scope !228, !noalias !225, !nonnull !3, !noundef !3 ; 3 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = icmp eq ptr %i.ea, %i.dz
  br i1 %i.ee, label %.loopexit, label %.lr.ph.preheader.i124

bb.ao:                                            ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !227, !noalias !225, !nonnull !3, !noundef !3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr nonnull readonly align 1 %.sroa.0.0.i.i.i105.pn, i64 %i.dw, i1 false), !noalias !225
  %.pre.i118 = load i64, ptr %i.q, align 8, !alias.scope !227, !noalias !225
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml.exit119

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml.exit119: ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, %bb.ao
  %i.ei = phi i64 [ %.pre.i118, %bb.ao ], [ %i.dx, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit ]
  %i.ej = add i64 %i.ei, %i.dw
  store i64 %i.ej, ptr %i.q, align 8, !alias.scope !227, !noalias !225
  br label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

bb.ap:                                            ; preds = %bb.ae, %bb.ab, %bb.aa, %.sink.split.i.i.i, %bb.ah, %bb.ad, %bb.ag, %bb.af, %bb.ak, %.sink.split.i.i.i106, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.02.08.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ek = load i64, ptr %i.b, align 8, !range !5, !noundef !3
  %i.el = trunc nuw i64 %i.ek to i1
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.en = load i64, ptr %i.em, align 8, !range !6, !noundef !3 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.el, label %bb.ar, label %bb.as, !prof !7

bb.aq:                                            ; preds = %bb.am
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.521.0..sroa_idx.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !226
  store i64 %i.du, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dv, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread: ; preds = %.loopexit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.av

bb.ar:                                            ; preds = %bb.ap
  %i.ep = load i64, ptr %i.eo, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.en, i64 %i.ep) #11
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.eq = load ptr, ptr %i.eo, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.er = icmp ule i64 %.sroa.02.08.i, %i.en
  call void @llvm.assume(i1 %i.er)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not91 = icmp eq i64 %.sroa.02.08.i, 0
  br i1 %.not91, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.au, %bb.as
  store i64 %i.en, ptr %0, align 8
  %.sroa.035.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eq, ptr %.sroa.035.sroa.4.0..sroa_idx, align 8
  %.sroa.035.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.02.08.i, ptr %.sroa.035.sroa.5.0..sroa_idx, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ak, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bf, ptr %.sroa.537.0..sroa_idx, align 8
  br label %bb.j

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eq, ptr nonnull align 1 %i.bn, i64 %.sroa.02.08.i, i1 false)
  br label %bb.at

bb.av:                                            ; preds = %bb.al, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml.exit116
  %i.es = add i64 %i.bf, 1
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.es, ptr %i.et, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.aw:                                            ; preds = %bb.ai
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ci, ptr %.sroa.464.0..sroa_idx, align 8
  br label %bb.j

bb.ax:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i32 0, ptr %.sroa.0, align 4
  %i.eu = icmp ult i64 %i.ci, 4785074604081152
  call void @llvm.assume(i1 %i.eu)
  %i.ev = icmp samesign ult i64 %i.ci, 549755813888
  br i1 %i.ev, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ew = icmp samesign ult i64 %i.ci, 8796093022208
  %i.ex = trunc i64 %.sroa.580.0.extract.shift to i8
  %i.ey = and i8 %i.ex, 63
  %i.ez = or disjoint i8 %i.ey, -128              ; 3 uses
  %i.fa = lshr i64 %i.ci, 38
  %i.fb = trunc i64 %i.fa to i8                   ; 2 uses
  %i.fc = and i8 %i.fb, 63
  %i.fd = or disjoint i8 %i.fc, -128              ; 2 uses
  %i.fe = lshr i64 %i.ci, 44
  %i.ff = trunc i64 %i.fe to i8                   ; 2 uses
  %i.fg = and i8 %i.ff, 63
  %i.fh = or disjoint i8 %i.fg, -128
  %i.fi = lshr i64 %i.ci, 50
  %i.fj = trunc nuw nsw i64 %i.fi to i8
  %i.fk = or disjoint i8 %i.fj, -16
  br i1 %i.ew, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.fl = trunc nuw i64 %.sroa.580.0.extract.shift to i8
  store i8 %i.fl, ptr %.sroa.0, align 4, !alias.scope !229
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml.exit116

bb.ba:                                            ; preds = %bb.ay
  %i.fm = or disjoint i8 %i.fb, -64
  store i8 %i.fm, ptr %.sroa.0, align 4, !alias.scope !229
  %.sroa.0.1..sroa_idx142 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.ez, ptr %.sroa.0.1..sroa_idx142, align 1, !alias.scope !229
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml.exit116

bb.bb:                                            ; preds = %bb.ay
  %i.fn = icmp samesign ult i64 %i.ci, 281474976710656
  br i1 %i.fn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fo = or disjoint i8 %i.ff, -32
  store i8 %i.fo, ptr %.sroa.0, align 4, !alias.scope !229
  %.sroa.0.1..sroa_idx141 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.fd, ptr %.sroa.0.1..sroa_idx141, align 1, !alias.scope !229
  %.sroa.0.2..sroa_idx143 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
end_hunk_1
begin_hunk_2_@_RNvNtCs2isvxI5XMib_9quick_xml6escape8unescape:bb.a

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs2isvxI5XMib_9quick_xml6escapeNtB2_17ParseCharRefErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i8, ptr %0, align 4, !range !557, !noundef !3
  switch i8 %i.e, label %default.unreachable31 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable31:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 22)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = tail call noundef zeroext i1 @_RNvXs4_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.i, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRmNtB6_7Display3fmtCs2isvxI5XMib_9quick_xml, ptr %.sroa.47.0..sroa_idx, align 8
  %i.j = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !align !10, !noundef !3
  %i.m = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @40, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.n, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1o_NtCs4NRVxsYgnAr_4core3fmtRmNtB6_8LowerHex3fmtCs2isvxI5XMib_9quick_xml, ptr %.sroa.43.0..sroa_idx, align 8
  %i.o = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !align !10, !noundef !3
  %i.r = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noundef nonnull @41, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.m, %bb.d ], [ %i.r, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs2isvxI5XMib_9quick_xml6escapeNtB5_11EscapeErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = load i64, ptr %0, align 8, !range !558, !noundef !3 ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  %i.j = add i64 %i.h, -9223372036854775807
  %i.k = select i1 %i.i, i64 %i.j, i64 0
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_3ops5range5RangejENtB6_5Debug3fmtCs2isvxI5XMib_9quick_xml, ptr %.sroa.411.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.m, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCs2isvxI5XMib_9quick_xml, ptr %.sroa.415.0..sroa_idx, align 8
  %i.n = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !align !10, !noundef !3
  %i.q = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noundef nonnull @42, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_3ops5range5RangejENtB6_5Debug3fmtCs2isvxI5XMib_9quick_xml, ptr %.sroa.47.0..sroa_idx, align 8
  %i.s = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !3, !align !10, !noundef !3
  %i.v = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noundef nonnull @43, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs2isvxI5XMib_9quick_xml6escape17ParseCharRefErrorNtB6_7Display3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8
  %i.x = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !3, !align !10, !noundef !3
  %i.aa = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noundef nonnull @44, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 46)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.f
  %.sroa.0.1.in = phi i1 [ %i.q, %bb.c ], [ %i.v, %bb.d ], [ %i.aa, %bb.e ], [ %i.ab, %bb.f ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs2isvxI5XMib_9quick_xml6escape17ParseCharRefErrorNtB6_7Display3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !559, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXNtCs2isvxI5XMib_9quick_xml6escapeNtB2_17ParseCharRefErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCs2isvxI5XMib_9quick_xml(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2isvxI5XMib_9quick_xml(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2isvxI5XMib_9quick_xml(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2isvxI5XMib_9quick_xml(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2isvxI5XMib_9quick_xml(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCs4NRVxsYgnAr_4core3fmtcNtB5_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRmNtB6_7Display3fmtCs2isvxI5XMib_9quick_xml(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1o_NtCs4NRVxsYgnAr_4core3fmtRmNtB6_8LowerHex3fmtCs2isvxI5XMib_9quick_xml(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_3ops5range5RangejENtB6_5Debug3fmtCs2isvxI5XMib_9quick_xml(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCs2isvxI5XMib_9quick_xml(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { noreturn }
attributes #12 = { cold }
attributes #13 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{i64 -1, i64 -9223372036854775805}
!5 = !{i64 0, i64 2}
!6 = !{i64 0, i64 -9223372036854775807}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = !{i64 -1, i64 -9223372036854775808}
!10 = !{i64 8}
!11 = distinct !{!11, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!12 = distinct !{!12, !11, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!13 = distinct !{!13, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str"}
!14 = distinct !{!14, !13, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 1"}
!15 = distinct !{!15, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!16 = distinct !{!16, !15, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!17 = distinct !{!17, !13, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 0"}
!18 = distinct !{!18, !15, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!19 = distinct !{!19, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml"}
!20 = distinct !{!20, !19, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml: argument 0"}
!21 = distinct !{!21, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str"}
!22 = distinct !{!22, !21, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 1"}
!23 = distinct !{!23, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!24 = distinct !{!24, !23, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!25 = distinct !{!25, !21, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 0"}
!26 = distinct !{!26, !23, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!27 = distinct !{!27, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml"}
!28 = distinct !{!28, !27, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml: argument 0"}
!29 = distinct !{!29, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str"}
!30 = distinct !{!30, !29, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 1"}
!31 = distinct !{!31, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!32 = distinct !{!32, !31, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!33 = distinct !{!33, !29, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 0"}
!34 = distinct !{!34, !31, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!35 = distinct !{!35, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml"}
!36 = distinct !{!36, !35, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml: argument 0"}
!37 = distinct !{!37, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str"}
!38 = distinct !{!38, !37, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 1"}
!39 = distinct !{!39, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!40 = distinct !{!40, !39, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!41 = distinct !{!41, !37, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 0"}
!42 = distinct !{!42, !39, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!43 = distinct !{!43, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml"}
!44 = distinct !{!44, !43, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml: argument 0"}
!45 = distinct !{!45, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str"}
!46 = distinct !{!46, !45, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 1"}
!47 = distinct !{!47, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!48 = distinct !{!48, !47, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!49 = distinct !{!49, !45, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 0"}
!50 = distinct !{!50, !47, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!51 = distinct !{!51, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml"}
!52 = distinct !{!52, !51, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml: argument 0"}
!53 = distinct !{!53, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str"}
!54 = distinct !{!54, !53, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 1"}
!55 = distinct !{!55, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!56 = distinct !{!56, !55, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!57 = distinct !{!57, !53, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 0"}
!58 = distinct !{!58, !55, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!59 = distinct !{!59, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml"}
!60 = distinct !{!60, !59, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml: argument 0"}
!61 = distinct !{!61, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str"}
!62 = distinct !{!62, !61, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 1"}
!63 = distinct !{!63, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!64 = distinct !{!64, !63, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!65 = distinct !{!65, !61, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 0"}
!66 = distinct !{!66, !63, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!67 = distinct !{!67, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml"}
!68 = distinct !{!68, !67, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml: argument 0"}
!69 = distinct !{!69, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str"}
!70 = distinct !{!70, !69, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 1"}
!71 = distinct !{!71, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!72 = distinct !{!72, !71, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!73 = distinct !{!73, !69, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 0"}
!74 = distinct !{!74, !71, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!75 = distinct !{!75, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml"}
!76 = distinct !{!76, !75, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml: argument 0"}
!77 = distinct !{!77, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str"}
!78 = distinct !{!78, !77, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 1"}
!79 = distinct !{!79, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!80 = distinct !{!80, !79, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!81 = distinct !{!81, !77, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 0"}
!82 = distinct !{!82, !79, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!83 = distinct !{!83, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml"}
!84 = distinct !{!84, !83, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml: argument 0"}
!85 = distinct !{!85, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str"}
!86 = distinct !{!86, !85, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 1"}
!87 = distinct !{!87, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!88 = distinct !{!88, !87, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!89 = distinct !{!89, !85, !"_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str: argument 0"}
!90 = distinct !{!90, !87, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!91 = distinct !{!91, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml"}
!92 = distinct !{!92, !91, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml: argument 0"}
!93 = !{!12}
!94 = !{!16, !14}
!95 = !{!20, !18, !17}
!96 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!97 = !{!24, !22}
!98 = !{!28, !26, !25}
!99 = !{!32, !30}
!100 = !{!36, !34, !33}
!101 = !{!40, !38}
!102 = !{!44, !42, !41}
!103 = !{!48, !46}
!104 = !{!52, !50, !49}
!105 = !{!56, !54}
!106 = !{!60, !58, !57}
!107 = !{!64, !62}
!108 = !{!68, !66, !65}
!109 = !{!72, !70}
!110 = !{!76, !74, !73}
!111 = !{!80, !78}
!112 = !{!84, !82, !81}
!113 = !{!88, !86}
!114 = !{!92, !90, !89}
!115 = distinct !{!115, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!116 = distinct !{!116, !115, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!117 = distinct !{!117, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml"}
!118 = distinct !{!118, !117, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2isvxI5XMib_9quick_xml: argument 0"}
!119 = distinct !{!119, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvNtCs2isvxI5XMib_9quick_xml6escape19normalize_attr_stepNvB1L_27is_xml10_normalization_charNvB1L_24normalize_xml10_eol_stepNvB1L_25resolve_predefined_entityE0EB1N_"}
!120 = distinct !{!120, !119, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvNtCs2isvxI5XMib_9quick_xml6escape19normalize_attr_stepNvB1L_27is_xml10_normalization_charNvB1L_24normalize_xml10_eol_stepNvB1L_25resolve_predefined_entityE0EB1N_: argument 0"}
!121 = distinct !{!121, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push"}
!122 = distinct !{!122, !121, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push: argument 0"}
!123 = distinct !{!123, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!124 = distinct !{!124, !123, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!125 = distinct !{!125, !"_RNvYNvNtCs2isvxI5XMib_9quick_xml6escape25resolve_predefined_entityINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTReEE8call_mutB6_"}
!126 = distinct !{!126, !125, !"_RNvYNvNtCs2isvxI5XMib_9quick_xml6escape25resolve_predefined_entityINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTReEE8call_mutB6_: argument 0"}
!127 = distinct !{!127, !"_RNvNtCs2isvxI5XMib_9quick_xml6escape25resolve_predefined_entity"}
!128 = distinct !{!128, !127, !"_RNvNtCs2isvxI5XMib_9quick_xml6escape25resolve_predefined_entity: argument 0"}
!129 = distinct !{!129, !"_RNvNtCs2isvxI5XMib_9quick_xml6escape18resolve_xml_entity"}
!130 = distinct !{!130, !129, !"_RNvNtCs2isvxI5XMib_9quick_xml6escape18resolve_xml_entity: argument 0"}
end_hunk_2
