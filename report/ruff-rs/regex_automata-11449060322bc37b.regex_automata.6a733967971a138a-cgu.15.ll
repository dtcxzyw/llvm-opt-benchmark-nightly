Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-11449060322bc37b.regex_automata.6a733967971a138a-cgu.15?download=true
inline.NumInlined: 268
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShE10from_bytes:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bo
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.bp, align 1, !noalias !305
  store i32 %.sroa.02.0.copyload.i.i, ptr %i.c, align 4, !noalias !298
  %i.bq = invoke noundef ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtB8_7set_val9SetValZSTE3getB17_EB1d_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
          to label %bb.m unwind label %.loopexit337.i, !noalias !298

bb.m:                                             ; preds = %.lr.ph444.i
  %.not.i = icmp eq ptr %i.bq, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !298
  br i1 %.not.i, label %.loopexit338.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %exitcond525.not.i = icmp eq i64 %i.bn, %i.ak
  br i1 %exitcond525.not.i, label %.loopexit.i, label %.lr.ph444.i

bb.o:                                             ; preds = %bb.d
  %i.br = icmp eq i32 %.sroa.068.0439.i, 0
  %i.bs = icmp eq i32 %i.q, %.sroa.068.0439.i
  %or.cond.i = select i1 %i.br, i1 true, i1 %i.bs
  br i1 %or.cond.i, label %bb.p, label %bb.ap

bb.p:                                             ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.o, %bb.d
  %i.bt = sub nuw nsw i64 %.val215.i, %i.ad       ; 2 uses
  %i.bu = icmp samesign ult i64 %i.bt, 2
  br i1 %i.bu, label %.loopexit338.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ad ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i = load i16, ptr %i.bv, align 1, !alias.scope !306, !noalias !307 ; 2 uses
  %i.bw = icmp slt i16 %.sroa.02.0.copyload.i.i.i.i.i, 0 ; 4 uses
  %i.bx = and i16 %.sroa.02.0.copyload.i.i.i.i.i, 32767 ; 3 uses
  %i.by = zext nneg i16 %i.bx to i64              ; 3 uses
  %i.bz = add nsw i64 %i.bt, -2                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 2 ; 2 uses
  %i.cb = add nsw i16 %i.bx, -258
  %or.cond4.i.i = icmp ult i16 %i.cb, -257
  br i1 %or.cond4.i.i, label %.loopexit338.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = icmp eq i32 %.sroa.068.0439.i, 0        ; 4 uses
  %.not624.i.i = icmp ugt i32 %i.s, %.sroa.068.0439.i
  %or.cond646.i.i = select i1 %i.cc, i1 true, i1 %.not624.i.i
  %.not625.i.i = icmp ugt i32 %.sroa.068.0439.i, %i.u
  %or.cond648.i.i = select i1 %or.cond646.i.i, i1 true, i1 %.not625.i.i ; 2 uses
  br i1 %i.bw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %or.cond648.i.i, label %bb.u, label %.loopexit338.i

bb.t:                                             ; preds = %bb.r
  br i1 %or.cond648.i.i, label %.loopexit338.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cd = shl nuw nsw i64 %i.by, 1                ; 4 uses
  %i.ce = icmp ult i64 %i.bz, %i.cd
  br i1 %i.ce, label %.loopexit338.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit.i228.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit.i228.i: ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cd ; 3 uses
  %i.cg = sub nuw nsw i64 %i.bz, %i.cd            ; 2 uses
  %cond.i.i321 = icmp eq i16 %i.bx, 0
  br i1 %cond.i.i321, label %._crit_edge, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i323, i64 2
  %i.ci = add nsw i64 %.sroa.65.0.i.i322, -2      ; 2 uses
  %cond.i.i = icmp eq i64 %i.ci, 0
  br i1 %cond.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit.i228.i
  %i.cj = shl nuw nsw i64 %i.by, 2                ; 8 uses
  %i.ck = icmp ult i64 %i.cg, %i.cj
  br i1 %i.ck, label %.loopexit338.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit671.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit671.i.i: ; preds = %._crit_edge
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cj ; 3 uses
  %i.cm = sub nuw nsw i64 %i.cg, %i.cj            ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ao, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit671.i.i
  %.sroa.612.0.i.i = phi i64 [ %i.cj, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit671.i.i ], [ %i.cp, %bb.ao ] ; 4 uses
  %.sroa.011.0.i.i = phi ptr [ %i.cf, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit671.i.i ], [ %i.co, %bb.ao ] ; 2 uses
  %i.cn = icmp eq i64 %.sroa.612.0.i.i, 0
  br i1 %i.cn, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i673.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.612.0.i.i, i64 4) ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 %.sroa.0.0.i.i673.i.i
  %i.cp = sub nuw nsw i64 %.sroa.612.0.i.i, %.sroa.0.0.i.i673.i.i
  %i.cq = icmp ugt i64 %.sroa.612.0.i.i, 3
  br i1 %i.cq, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i.i.i, label %.invoke.i, !prof !8

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i.i.i: ; preds = %bb.x
  %.sroa.018.0.copyload.i.i.i = load i32, ptr %.sroa.011.0.i.i, align 1, !alias.scope !308, !noalias !309 ; 2 uses
  %i.cr = icmp ugt i32 %.sroa.018.0.copyload.i.i.i, 2147483646
  %.sroa.28.8.insert.ext.i = zext i32 %.sroa.018.0.copyload.i.i.i to i64 ; 2 uses
  br i1 %i.cr, label %.loopexit338.i, label %bb.ao

bb.y:                                             ; preds = %bb.w
  br i1 %i.bw, label %bb.z, label %.loopexit.i.i

bb.z:                                             ; preds = %bb.y
  %i.cs = icmp samesign ult i64 %i.cm, 4
  br i1 %i.cs, label %.loopexit338.i, label %bb.aa

.loopexit.i.i:                                    ; preds = %bb.ac, %bb.y
  %.sroa.8123.0.i.i = phi i64 [ %i.cm, %bb.y ], [ %i.db, %bb.ac ] ; 2 uses
  %.sroa.0117.0.i.i = phi ptr [ %i.cl, %bb.y ], [ %i.da, %bb.ac ]
  %.sroa.6113.0.i.i = phi i64 [ 0, %bb.y ], [ %i.cy, %bb.ac ] ; 2 uses
  %.not630.i.i = icmp ule i32 %i.s, %.sroa.068.0439.i
  %not..i.i = xor i1 %i.cc, true
  %or.cond650.i.i = select i1 %not..i.i, i1 %.not630.i.i, i1 false
  %.not631.i.i = icmp ule i32 %.sroa.068.0439.i, %i.u
  %or.cond652.i.i = select i1 %or.cond650.i.i, i1 %.not631.i.i, i1 false ; 2 uses
  %i.ct = icmp eq i64 %.sroa.6113.0.i.i, 0
  %or.cond653.i.i = and i1 %or.cond652.i.i, %i.ct
  br i1 %or.cond653.i.i, label %.loopexit338.i, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %.sroa.02.0.copyload.i.i.i678.i.i = load i32, ptr %i.cl, align 1, !alias.scope !310, !noalias !311 ; 2 uses
  %i.cu = add i64 %i.cm, -4                       ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.cw = icmp eq i32 %.sroa.02.0.copyload.i.i.i678.i.i, 0
  br i1 %i.cw, label %.loopexit338.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = zext i32 %.sroa.02.0.copyload.i.i.i678.i.i to i64
  %i.cy = shl nuw nsw i64 %i.cx, 2                ; 5 uses
  %i.cz = icmp ult i64 %i.cu, %i.cy
  br i1 %i.cz, label %.loopexit338.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit686.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit686.i.i: ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cy
  %i.db = sub nuw nsw i64 %i.cu, %i.cy
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i692.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit686.i.i
  %.sroa.631.0.i.i = phi i64 [ %i.cy, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit686.i.i ], [ %i.de, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i692.i.i ] ; 4 uses
  %.sroa.030.0.i.i = phi ptr [ %i.cv, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit686.i.i ], [ %i.df, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i692.i.i ] ; 2 uses
  %i.dc = icmp eq i64 %.sroa.631.0.i.i, 0
  br i1 %i.dc, label %.loopexit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0.0.i.i688.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.631.0.i.i, i64 4) ; 3 uses
  %i.dd = icmp ugt i64 %.sroa.631.0.i.i, 3
  br i1 %i.dd, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i692.i.i, label %.invoke.i, !prof !8

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i692.i.i: ; preds = %bb.ad
  %i.de = sub nuw nsw i64 %.sroa.631.0.i.i, %.sroa.0.0.i.i688.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i, i64 %.sroa.0.0.i.i688.i.i
  %.sroa.018.0.copyload.i693.i.i = load i32, ptr %.sroa.030.0.i.i, align 1, !alias.scope !312, !noalias !313 ; 2 uses
  %i.dg = icmp ugt i32 %.sroa.018.0.copyload.i693.i.i, 2147483646
  br i1 %i.dg, label %bb.an, label %bb.ac

bb.ae:                                            ; preds = %.loopexit.i.i
  %.sroa.0159.0.i.i = xor i1 %or.cond652.i.i, %i.bw
  br i1 %.sroa.0159.0.i.i, label %.loopexit338.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = icmp eq i64 %.sroa.8123.0.i.i, 0
  br i1 %i.dh, label %.loopexit338.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = load i8, ptr %.sroa.0117.0.i.i, align 1, !noalias !314, !noundef !3 ; 3 uses
  %i.dj = zext i8 %i.di to i64                    ; 2 uses
  %i.dk = add i64 %.sroa.8123.0.i.i, -1
  %i.dl = icmp ugt i8 %i.di, 3
  br i1 %i.dl, label %.loopexit338.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dm = icmp eq i8 %i.di, 0
  br i1 %i.dm, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.cc, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not635.i.i = icmp ugt i32 %i.aa, %.sroa.068.0439.i
  %.not636.i.i = icmp ugt i32 %.sroa.068.0439.i, %i.ac
  %or.cond657.i.i = select i1 %.not635.i.i, i1 true, i1 %.not636.i.i
  br i1 %or.cond657.i.i, label %bb.ak, label %.loopexit338.i

bb.ak:                                            ; preds = %bb.al, %bb.aj, %bb.ai
  %i.dn = icmp ult i64 %i.dk, %i.dj
  br i1 %i.dn, label %.loopexit338.i, label %bb.am

bb.al:                                            ; preds = %bb.ah
  %.not633.i.i = icmp ugt i32 %i.aa, %.sroa.068.0439.i
  %or.cond659.i.i = select i1 %i.cc, i1 true, i1 %.not633.i.i
  %.not634.i.i = icmp ugt i32 %.sroa.068.0439.i, %i.ac
  %or.cond661.i.i = select i1 %or.cond659.i.i, i1 true, i1 %.not634.i.i
  br i1 %or.cond661.i.i, label %.loopexit338.i, label %bb.ak

bb.am:                                            ; preds = %bb.ak
  %i.do = add nsw i64 %i.cj, -4                   ; 3 uses
  %i.dp = or disjoint i64 %i.do, 3
  %or.cond.not.i.i.i = icmp ult i64 %i.dp, %i.cj
  br i1 %or.cond.not.i.i.i, label %_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at.exit.i.i, label %.invoke.i, !prof !9

.invoke.i:                                        ; preds = %bb.am, %bb.x, %bb.ad, %bb.g, %bb.e, %.lr.ph447.i, %bb.k
  %i.dq = phi i64 [ 1, %bb.k ], [ 0, %bb.ad ], [ 0, %bb.x ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.ae, %.lr.ph447.i ], [ %i.do, %bb.am ]
  %i.dr = phi i64 [ %i.bg, %bb.k ], [ 4, %bb.ad ], [ 4, %bb.x ], [ 4, %bb.g ], [ 2, %bb.e ], [ %.val215.i, %.lr.ph447.i ], [ %i.cj, %bb.am ]
  %i.ds = phi i64 [ %.sroa.1130.0.i.i, %bb.k ], [ %.sroa.0.0.i.i688.i.i, %bb.ad ], [ %.sroa.0.0.i.i673.i.i, %bb.x ], [ %i.at, %bb.g ], [ %i.ag, %bb.e ], [ %.val215.i, %.lr.ph447.i ], [ %i.cj, %bb.am ]
  %i.dt = phi ptr [ @64, %bb.k ], [ @130, %bb.ad ], [ @129, %bb.x ], [ @139, %bb.g ], [ @138, %bb.e ], [ @65, %.lr.ph447.i ], [ @118, %bb.am ]
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.dq, i64 noundef %i.dr, i64 noundef %i.ds, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt) #21
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !298

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at.exit.i.i: ; preds = %bb.am
  %i.du = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.do
  %.sroa.02.0.copyload.i.i229.i = load i32, ptr %i.du, align 1, !noalias !315 ; 2 uses
  %i.dv = icmp ne i32 %.sroa.02.0.copyload.i.i229.i, 0
  %i.dw = icmp eq i32 %i.q, %.sroa.02.0.copyload.i.i229.i
  %or.cond.i.i = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond.i.i, label %.loopexit338.i, label %bb.as

bb.an:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i692.i.i
  %.sroa.28.8.insert.ext299.i = zext i32 %.sroa.018.0.copyload.i693.i.i to i64
  br label %.loopexit338.i

bb.ao:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i.i.i
  %i.dx = icmp ult i64 %.val215.i, %.sroa.28.8.insert.ext.i
  br i1 %i.dx, label %.loopexit338.i, label %bb.w

.lr.ph:                                           ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit.i228.i, %bb.v
  %.sroa.04.0.i.i323 = phi ptr [ %i.ch, %bb.v ], [ %i.ca, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit.i228.i ] ; 3 uses
  %.sroa.65.0.i.i322 = phi i64 [ %i.ci, %bb.v ], [ %i.cd, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit.i228.i ]
  %i.dy = load i8, ptr %.sroa.04.0.i.i323, align 1, !noalias !314, !noundef !3
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i323, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !noalias !314, !noundef !3
  %i.eb = icmp ugt i8 %i.dy, %i.ea
  br i1 %i.eb, label %.loopexit338.i, label %bb.v

bb.ap:                                            ; preds = %bb.o
  %.not201.i = icmp ugt i32 %i.s, %.sroa.068.0439.i
  %.not202.i = icmp ugt i32 %.sroa.068.0439.i, %i.u
  %or.cond210.i = select i1 %.not201.i, i1 true, i1 %.not202.i
  br i1 %or.cond210.i, label %bb.aq, label %bb.p

bb.aq:                                            ; preds = %bb.ap
  %.not203.i = icmp ugt i32 %i.w, %.sroa.068.0439.i
  %.not204.i = icmp ugt i32 %.sroa.068.0439.i, %i.y
  %or.cond212.i = select i1 %.not203.i, i1 true, i1 %.not204.i
  br i1 %or.cond212.i, label %bb.ar, label %bb.p

bb.ar:                                            ; preds = %bb.aq
  %.not205.i = icmp ugt i32 %i.aa, %.sroa.068.0439.i
  %.not206.i = icmp ugt i32 %.sroa.068.0439.i, %i.ac
  %or.cond214.i = select i1 %.not205.i, i1 true, i1 %.not206.i
  br i1 %or.cond214.i, label %.loopexit338.i, label %bb.p

bb.as:                                            ; preds = %_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at.exit.i.i
  %i.ec = invoke noundef zeroext i1 @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtB7_7set_val9SetValZSTE6insertB1c_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef range(i32 0, 2147483647) %.sroa.068.0439.i)
          to label %_RNvMsl_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_4Seen6insert.exit.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !298 ; 0 uses

_RNvMsl_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_4Seen6insert.exit.i: ; preds = %bb.as
  %i.ed = add nuw nsw i64 %.sroa.6113.0.i.i, 4
  %i.ee = select i1 %i.bw, i64 %i.ed, i64 0
  %reass.mul.i = mul nuw nsw i64 %i.by, 6
  %i.ef = add nuw nsw i64 %i.ad, 3
  %i.eg = add nuw nsw i64 %i.ef, %reass.mul.i
  %.sroa.058.0.i = add nuw nsw i64 %i.eg, %i.ee
  %i.eh = add nuw nsw i64 %.sroa.058.0.i, %i.dj   ; 5 uses
  %i.ei = icmp samesign ugt i64 %i.eh, 2147483646
  br i1 %i.ei, label %.loopexit338.i, label %bb.at

bb.at:                                            ; preds = %_RNvMsl_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_4Seen6insert.exit.i
  %i.ej = trunc nuw nsw i64 %i.eh to i32
  %i.ek = add i64 %.sroa.0.0440.i, 1              ; 2 uses
  %i.el = icmp ugt i64 %.val215.i, %i.eh
  br i1 %i.el, label %bb.d, label %.lr.ph447.i

bb.au:                                            ; preds = %.loopexit.split-lp.i
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !298
  unreachable

.thread109:                                       ; preds = %bb.bh, %.loopexit338.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.av:                                            ; preds = %bb.l, %.loopexit338.i
  %.sroa.0.1 = phi ptr [ inttoptr (i64 4294967295 to ptr), %bb.l ], [ %.sroa.0.0, %.loopexit338.i ]
  %.sroa.24.1 = phi i64 [ %.sroa.24.8.copyload51, %bb.l ], [ %.sroa.24.0, %.loopexit338.i ] ; 2 uses
  %.sroa.19.1 = phi i64 [ %.sroa.19.8.copyload49, %bb.l ], [ %.sroa.19.0, %.loopexit338.i ] ; 2 uses
  %.sroa.12.1 = phi i64 [ %.sroa.12.8.copyload47, %bb.l ], [ %.sroa.12.0, %.loopexit338.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !298
  %i.en = ptrtoint ptr %.sroa.0.1 to i64          ; 2 uses
  %i.eo = and i64 %i.en, 4294967295
  %.not = icmp eq i64 %i.eo, 4294967295
  br i1 %.not, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.en, ptr %i.ep, align 8
  %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.1, ptr %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx, align 16
  %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.19.1, ptr %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx, align 8
  %.sroa.423.sroa.6.0..sroa.423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.24.1, ptr %.sroa.423.sroa.6.0..sroa.423.0..sroa_idx.sroa_idx, align 16
  store i64 2, ptr %0, align 16
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse4SeenEBH_.exit42

bb.ax:                                            ; preds = %bb.av
  store i64 %.sroa.12.1, ptr %i.e, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.19.1, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.24.1, ptr %.sroa.577.0..sroa_idx, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 648
  %.val = load i32, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.g, i64 652
  %.val30 = load i32, ptr %i.er, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %.val25.i.i = load ptr, ptr %i.es, align 16, !alias.scope !316, !noalias !317, !nonnull !3, !noundef !3
  %i.et = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %.val26.i.i = load i64, ptr %i.et, align 8, !alias.scope !316, !noalias !317, !noundef !3 ; 3 uses
  %i.eu = lshr i64 %.val26.i.i, 2                 ; 2 uses
  %.not.i18.not.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i18.not.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse4SeenEBH_.exit44, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.ax
  %i.ev = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.ew = load i64, ptr %i.ev, align 16, !alias.scope !316, !noalias !317, !noundef !3 ; 5 uses
  %i.ex = icmp eq i64 %i.ew, 0
  %i.ey = shl i64 %i.ew, 1                        ; 2 uses
  br i1 %i.ex, label %bb.ay, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i31
  %invariant.umax.i = call i64 @llvm.umax.i64(i64 %i.ew, i64 %i.ey)
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.bf, %.lr.ph.split.preheader.i
  %.sroa.5.019.i = phi i64 [ %i.ez, %bb.bf ], [ 0, %.lr.ph.split.preheader.i ] ; 5 uses
  %i.ez = add nuw nsw i64 %.sroa.5.019.i, 1       ; 2 uses
  %i.fa = urem i64 %.sroa.5.019.i, %i.ew
  %i.fb = icmp samesign ult i64 %i.fa, 6
  br i1 %i.fb, label %switch.lookup.i.i, label %bb.az, !prof !318

bb.ay:                                            ; preds = %.lr.ph.i31
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #21
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %.lr.ph.split.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #21
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %bb.az
  unreachable

switch.lookup.i.i:                                ; preds = %.lr.ph.split.i
  %or.cond21.i = icmp ult i64 %.sroa.5.019.i, %invariant.umax.i
  br i1 %or.cond21.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %switch.lookup.i.i
  %i.fc = sub nuw nsw i64 %.sroa.5.019.i, %i.ey
  %i.fd = udiv i64 %i.fc, %i.ew                   ; 2 uses
  %i.fe = icmp samesign ugt i64 %i.fd, 2147483646
  br i1 %i.fe, label %bb.bb, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !319
  store i64 %i.fd, ptr %i.a, align 8, !noalias !319
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #21
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %bb.bb
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit.i.i: ; preds = %bb.ba, %switch.lookup.i.i
  %i.ff = shl nuw nsw i64 %.sroa.5.019.i, 2       ; 3 uses
  %i.fg = add nuw nsw i64 %i.ff, 4                ; 2 uses
  %.not23.i.i = icmp ugt i64 %i.fg, %.val26.i.i
  br i1 %.not23.i.i, label %bb.bc, label %bb.bd, !prof !6

bb.bc:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ff, i64 noundef %i.fg, i64 noundef %.val26.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #21
          to label %.noexc38 unwind label %.loopexit.split-lp

.noexc38:                                         ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.val25.i.i, i64 %i.ff
  %.sroa.013.0.copyload.i.i = load i32, ptr %i.fh, align 1, !noalias !320 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !321
  store i32 %.sroa.013.0.copyload.i.i, ptr %i.b, align 4, !noalias !321
  %i.fi = invoke noundef ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtB8_7set_val9SetValZSTE3getB17_EB1d_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %.noexc39 unwind label %.loopexit

.noexc39:                                         ; preds = %bb.bd
  %.not.i32 = icmp eq ptr %i.fi, null
  br i1 %.not.i32, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %.noexc39
end_hunk_0
