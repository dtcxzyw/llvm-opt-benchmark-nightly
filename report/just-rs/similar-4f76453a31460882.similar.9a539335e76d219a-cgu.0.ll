Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_:bb.a
_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit29
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.dl
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.dn
  %.val47 = load i32, ptr %i.dp, align 4, !noundef !5
  %.val48 = load i32, ptr %i.dq, align 4, !noundef !5
  %.not420 = icmp eq i32 %.val47, %.val48
  br i1 %.not420, label %bb.ae, label %._crit_edge

bb.ae:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit
  %i.dr = add nuw i64 %.sroa.01.0.i717, 1         ; 2 uses
  %exitcond997.not = icmp eq i64 %i.dr, %umin
  br i1 %exitcond997.not, label %._crit_edge, label %bb.aa

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit, %bb.ae
  %.sroa.01.0.i.lcssa = phi i64 [ %umin, %bb.ae ], [ %.sroa.01.0.i717, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit ] ; 6 uses
  %i.ds = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.ds, label %bb.ak, label %.outer

.outer:                                           ; preds = %.split701, %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit, %bb.ap, %.split399, %._crit_edge
  %.sroa.525.3.i = phi i64 [ %.sroa.525.2.i.ph722, %._crit_edge ], [ %.sroa.0315.0726, %bb.ap ], [ %.sroa.525.2.i.ph722, %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit ], [ %.sroa.0315.0726, %.split399 ], [ %.sroa.525.2.i.ph722, %.split701 ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ %.sroa.023.1.i.ph723, %._crit_edge ], [ 1, %bb.ap ], [ 1, %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit ], [ 1, %.split399 ], [ %.sroa.023.1.i.ph723, %.split701 ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.2.i.ph724, %._crit_edge ], [ %.us-phi712, %bb.ap ], [ %.sroa.9.2.i.ph724, %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit ], [ %.sroa.9.2.i.ph724, %.split399 ], [ %.sroa.9.2.i.ph724, %.split701 ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.2.i.ph725, %._crit_edge ], [ %.sroa.01.0.i.lcssa, %bb.ap ], [ %.sroa.12.2.i.ph725, %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit ], [ %.sroa.12.2.i.ph725, %.split399 ], [ %.sroa.12.2.i.ph725, %.split701 ] ; 2 uses
  %.not.i67684 = icmp ugt i64 %.us-phi710, 4
  br i1 %.not.i67684, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %.outer
  %.sroa.12.2.i.ph725 = phi i64 [ %.sroa.12.0.i730, %bb.t ], [ %.sroa.12.3.i, %.outer ] ; 8 uses
  %.sroa.9.2.i.ph724 = phi i64 [ %.sroa.9.0.i729, %bb.t ], [ %.sroa.9.3.i, %.outer ] ; 8 uses
  %.sroa.023.1.i.ph723 = phi i64 [ %.sroa.023.0.i728, %bb.t ], [ %.sroa.023.2.i, %.outer ] ; 5 uses
  %.sroa.525.2.i.ph722 = phi i64 [ %.sroa.525.0.i727, %bb.t ], [ %.sroa.525.3.i, %.outer ] ; 8 uses
  %.sroa.0316.0.ph721 = phi i64 [ 0, %bb.t ], [ %.us-phi710, %.outer ] ; 2 uses
  br i1 %.not.i71, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us, label %.lr.ph.split

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us: ; preds = %.lr.ph, %bb.aj
  %.sroa.0316.0685.us = phi i64 [ %i.dt, %bb.aj ], [ %.sroa.0316.0.ph721, %.lr.ph ] ; 5 uses
  %i.dt = add nuw nsw i64 %.sroa.0316.0685.us, 1  ; 3 uses
  %i.du = icmp eq i64 %.sroa.0316.0685.us, 0      ; 2 uses
  %i.dv = or i64 %.sroa.0316.0685.us, %.sroa.0315.0726
  %or.cond2.i.us = icmp eq i64 %i.dv, 0
  br i1 %or.cond2.i.us, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us
  br i1 %i.cd, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %brmerge.i.not.us = and i1 %.not.i, %i.du
  br i1 %brmerge.i.not.us, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %or.cond3.old.i.us = or i1 %i.cb, %i.du
  br i1 %or.cond3.old.i.us, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dw = add i64 %.sroa.0316.0685.us, %.sroa.0282.0 ; 2 uses
  %i.dx = sub i64 %i.dw, %i.bd                    ; 3 uses
  %i.dy = icmp ult i64 %i.dx, %i.bc
  br i1 %i.dy, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit31.us, label %.split694

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit31.us: ; preds = %bb.ai
  br i1 %i.cg, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit30.us, label %.split697

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit30.us: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit31.us
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.dx
  %.val49.us = load i32, ptr %i.dz, align 4, !noundef !5
  %.val50.us = load i32, ptr %i.ch, align 4, !noundef !5
  %.not419.us = icmp eq i32 %.val49.us, %.val50.us
  br i1 %.not419.us, label %.split701, label %bb.aj

bb.aj:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit30.us, %bb.ah, %bb.ag, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us
  %exitcond995 = icmp eq i64 %i.dt, 5
  br i1 %exitcond995, label %.loopexit, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us

bb.ak:                                            ; preds = %._crit_edge
  %i.ea = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.ea, label %.loopexit500, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %..i76 = tail call noundef i64 @llvm.umax.i64(i64 %.us-phi712, i64 %.sroa.0315.0726) ; 2 uses
  %i.eb = trunc nuw i64 %.sroa.023.1.i.ph723 to i1
  br i1 %i.eb, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.ec = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph725
  %i.ed = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph725
  br i1 %i.ec, label %bb.an, label %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit

bb.an:                                            ; preds = %bb.am
  %..i77 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph724, i64 %.sroa.525.2.i.ph722) ; 2 uses
  %cond.i.i.i = icmp eq i64 %..i77, %..i76
  %i.ee = icmp ugt i64 %..i77, %..i76
  br i1 %cond.i.i.i, label %bb.ao, label %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit

bb.ao:                                            ; preds = %bb.an
  %i.ef = icmp eq i64 %.sroa.0315.0726, %.sroa.525.2.i.ph722
  %i.eg = icmp ugt i64 %.sroa.0315.0726, %.sroa.525.2.i.ph722
  br i1 %i.ef, label %.split399, label %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit

.split399:                                        ; preds = %bb.ao
  %i.eh = icmp ugt i64 %.us-phi712, %.sroa.9.2.i.ph724
  br i1 %i.eh, label %bb.ap, label %.outer

_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit: ; preds = %bb.am, %bb.an, %bb.ao
  %.sroa.0.2.in.i = phi i1 [ %i.ed, %bb.am ], [ %i.ee, %bb.an ], [ %i.eg, %bb.ao ]
  br i1 %.sroa.0.2.in.i, label %bb.ap, label %.outer

bb.ap:                                            ; preds = %.split399, %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit, %bb.al
  br label %.outer

bb.aq:                                            ; preds = %.loopexit500
  %.pre1009.a = load i64, ptr %i.bh, align 8, !noalias !5013 ; 4 uses
  br i1 %i.cl, label %bb.as, label %bb.au

bb.ar:                                            ; preds = %.loopexit500
  br i1 %i.cl, label %bb.aw, label %bb.ay

.sink.split:                                      ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit79, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit80, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit82
  %.sink = phi i64 [ %i.fl, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit82 ], [ %i.fc, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit80 ], [ %i.ew, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit79 ] ; 2 uses
  store i64 %.sink, ptr %i.bh, align 8, !noalias !5013
  br label %bb.as

bb.as:                                            ; preds = %.sink.split, %bb.aq
  %i.ei = phi i64 [ %.pre1009.a, %bb.aq ], [ %.sink, %.sink.split ] ; 3 uses
  %i.ej = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.ek = add i64 %.sroa.9.1.i, %.sroa.0282.0     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5014)
  %i.el = load i64, ptr %i.bg, align 8, !range !6, !alias.scope !5014, !noalias !5015, !noundef !5
  %i.em = icmp eq i64 %i.ei, %i.el
  br i1 %i.em, label %bb.at, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit78

bb.at:                                            ; preds = %bb.as
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #34, !noalias !5015
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit78

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit78: ; preds = %bb.as, %bb.at
  %i.en = load ptr, ptr %i.bi, align 8, !alias.scope !5014, !noalias !5015, !nonnull !5, !noundef !5
  %i.eo = getelementptr inbounds nuw [40 x i8], ptr %i.en, i64 %i.ei ; 4 uses
  store i64 0, ptr %i.eo, align 8, !noalias !5016
  %.sroa.4326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %i.ej, ptr %.sroa.4326.0..sroa_idx, align 8, !noalias !5016
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 %i.ek, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !5016
  %.sroa.6327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6327.0..sroa_idx, align 8, !noalias !5016
  %i.ep = add i64 %i.ei, 1
  store i64 %i.ep, ptr %i.bh, align 8, !alias.scope !5014, !noalias !5015
  %i.eq = add i64 %i.ej, %.sroa.12.1.i
  %i.er = add i64 %i.ek, %.sroa.12.1.i
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit

bb.au:                                            ; preds = %bb.aq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5017)
  %i.es = load i64, ptr %i.bg, align 8, !range !6, !alias.scope !5017, !noalias !5018, !noundef !5
  %i.et = icmp eq i64 %.pre1009.a, %i.es
  br i1 %i.et, label %bb.av, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit79

bb.av:                                            ; preds = %bb.au
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #34, !noalias !5018
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit79

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit79: ; preds = %bb.au, %bb.av
  %i.eu = load ptr, ptr %i.bi, align 8, !alias.scope !5017, !noalias !5018, !nonnull !5, !noundef !5
  %i.ev = getelementptr inbounds nuw [40 x i8], ptr %i.eu, i64 %.pre1009.a ; 4 uses
  store i64 2, ptr %i.ev, align 8, !noalias !5019
  %.sroa.4355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4355.0..sroa_idx, align 8, !noalias !5019
  %.sroa.5356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store i64 %.sroa.0282.0, ptr %.sroa.5356.0..sroa_idx, align 8, !noalias !5019
  %.sroa.6357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6357.0..sroa_idx, align 8, !noalias !5019
  %i.ew = add i64 %.pre1009.a, 1
  br label %.sink.split

bb.aw:                                            ; preds = %bb.ar
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5020)
  %i.ex = load i64, ptr %i.bh, align 8, !alias.scope !5020, !noalias !5021, !noundef !5 ; 3 uses
  %i.ey = load i64, ptr %i.bg, align 8, !range !6, !alias.scope !5020, !noalias !5021, !noundef !5
  %i.ez = icmp eq i64 %i.ex, %i.ey
  br i1 %i.ez, label %bb.ax, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit80

bb.ax:                                            ; preds = %bb.aw
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #34, !noalias !5021
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit80

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit80: ; preds = %bb.aw, %bb.ax
  %i.fa = load ptr, ptr %i.bi, align 8, !alias.scope !5020, !noalias !5021, !nonnull !5, !noundef !5
  %i.fb = getelementptr inbounds nuw [40 x i8], ptr %i.fa, i64 %i.ex ; 4 uses
  store i64 1, ptr %i.fb, align 8, !noalias !5022
  %.sroa.4340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4340.0..sroa_idx, align 8, !noalias !5022
  %.sroa.5341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5341.0..sroa_idx, align 8, !noalias !5022
  %.sroa.6342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store i64 %.sroa.0282.0, ptr %.sroa.6342.0..sroa_idx, align 8, !noalias !5022
  %i.fc = add i64 %i.ex, 1
  br label %.sink.split

bb.ay:                                            ; preds = %bb.ar
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5023)
  %i.fd = load i64, ptr %i.bh, align 8, !alias.scope !5023, !noalias !5024, !noundef !5 ; 4 uses
  %i.fe = load i64, ptr %i.bg, align 8, !range !6, !alias.scope !5023, !noalias !5024, !noundef !5 ; 2 uses
  %i.ff = icmp eq i64 %i.fd, %i.fe
  br i1 %i.ff, label %bb.az, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit81

bb.az:                                            ; preds = %bb.ay
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #34, !noalias !5024
  %.pre1009 = load i64, ptr %i.bg, align 8, !range !6, !alias.scope !5025, !noalias !5026
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit81

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit81: ; preds = %bb.ay, %bb.az
  %11 = phi i64 [ %i.fe, %bb.ay ], [ %.pre1009, %bb.az ]
  %i.fg = load ptr, ptr %i.bi, align 8, !alias.scope !5023, !noalias !5024, !nonnull !5, !noundef !5 ; 2 uses
  %i.fh = getelementptr inbounds nuw [40 x i8], ptr %i.fg, i64 %i.fd ; 4 uses
  store i64 1, ptr %i.fh, align 8, !noalias !5027
  %.sroa.4370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4370.0..sroa_idx, align 8, !noalias !5027
  %.sroa.5371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5371.0..sroa_idx, align 8, !noalias !5027
  %.sroa.6372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  store i64 %.sroa.0282.0, ptr %.sroa.6372.0..sroa_idx, align 8, !noalias !5027
  %i.fi = add i64 %i.fd, 1                        ; 3 uses
  store i64 %i.fi, ptr %i.bh, align 8, !alias.scope !5023, !noalias !5024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5025)
  %i.fj = icmp eq i64 %i.fi, %11
  br i1 %i.fj, label %bb.ba, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit82

bb.ba:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit81
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #34, !noalias !5026
  %.pre1010 = load ptr, ptr %i.bi, align 8, !alias.scope !5025, !noalias !5026
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit82

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit82: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit81, %bb.ba
  %12 = phi ptr [ %i.fg, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit81 ], [ %.pre1010, %bb.ba ]
  %i.fk = getelementptr inbounds nuw [40 x i8], ptr %12, i64 %i.fi ; 4 uses
  store i64 2, ptr %i.fk, align 8, !noalias !5028
  %.sroa.4375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4375.0..sroa_idx, align 8, !noalias !5028
  %.sroa.5376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store i64 %.sroa.0282.0, ptr %.sroa.5376.0..sroa_idx, align 8, !noalias !5028
  %.sroa.6377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6377.0..sroa_idx, align 8, !noalias !5028
  %i.fl = add i64 %i.fd, 2
  br label %.sink.split

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %.split, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit75, %.split397, %bb.o, %bb.r, %bb.u, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit78
  %.sroa.0282.2 = phi i64 [ %.sroa.0282.0, %bb.o ], [ %.sroa.0282.0, %bb.r ], [ %.sroa.0282.0, %bb.u ], [ %i.er, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit78 ], [ %.sroa.0282.0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit75 ], [ %.sroa.0282.0, %.split397 ], [ %.sroa.0282.0, %.split ], [ %.sroa.0282.0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.o ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %bb.u ], [ %i.eq, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit78 ], [ %.sroa.0.0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit75 ], [ %.sroa.0.0, %.split397 ], [ %.sroa.0.0, %.split ], [ %.sroa.0.0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit ] ; 2 uses
  %i.fm = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.fn = icmp eq i64 %.sroa.0282.2, %.sroa.0282.0
  %or.cond = select i1 %i.fm, i1 %i.fn, i1 false
  br i1 %or.cond, label %bb.n, label %bb.m

bb.bb:                                            ; preds = %bb.n
  br i1 %i.bt, label %bb.bf, label %bb.bd

bb.bc:                                            ; preds = %bb.n
  br i1 %i.bt, label %.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread411

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread411: ; preds = %.thread1078.i, %bb.er, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdftwklc2oBO_7similar.exit223.sink.split.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit83, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit248, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit247, %bb.gp, %bb.bc
  %.not26 = icmp eq i64 %.sroa.0.0.i61, 0
  br i1 %.not26, label %bb.gw, label %bb.gu

bb.bd:                                            ; preds = %bb.bb
  %i.fo = sub nuw i64 %i.be, %.sroa.0.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5029)
  %i.fp = load i64, ptr %i.bh, align 8, !alias.scope !5029, !noalias !5030, !noundef !5 ; 3 uses
  %i.fq = load i64, ptr %i.bg, align 8, !range !6, !alias.scope !5029, !noalias !5030, !noundef !5
  %i.fr = icmp eq i64 %i.fp, %i.fq
  br i1 %i.fr, label %bb.be, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit83

bb.be:                                            ; preds = %bb.bd
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #34, !noalias !5030
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit83

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit83: ; preds = %bb.bd, %bb.be
  %i.fs = load ptr, ptr %i.bi, align 8, !alias.scope !5029, !noalias !5030, !nonnull !5, !noundef !5
  %i.ft = getelementptr inbounds nuw [40 x i8], ptr %i.fs, i64 %i.fp ; 4 uses
  store i64 1, ptr %i.ft, align 8, !noalias !5029
  %.sroa.4345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4345.0..sroa_idx, align 8, !noalias !5029
  %.sroa.5346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store i64 %i.fo, ptr %.sroa.5346.0..sroa_idx, align 8, !noalias !5029
  %.sroa.6347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store i64 %.sroa.0282.0, ptr %.sroa.6347.0..sroa_idx, align 8, !noalias !5029
  %i.fu = add i64 %i.fp, 1
  store i64 %i.fu, ptr %i.bh, align 8, !alias.scope !5029, !noalias !5030
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread411

bb.bf:                                            ; preds = %bb.bb
  br i1 %.not.i71, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fv = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now(), !noalias !5031 ; 2 uses
  %i.fw = extractvalue { i64, i32 } %i.fv, 0      ; 2 uses
  %i.fx = icmp eq i64 %i.fw, %9
  br i1 %i.fx, label %.split403, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86

.split403:                                        ; preds = %bb.bg
  %i.fy = extractvalue { i64, i32 } %i.fv, 1      ; 2 uses
  %i.fz = icmp ult i32 %i.fy, 1000000000
  tail call void @llvm.assume(i1 %i.fz), !noalias !5031
  %i.ga = icmp samesign ugt i32 %i.fy, %10
  br i1 %i.ga, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86: ; preds = %bb.bg
  %i.gb = icmp sgt i64 %i.fw, %9
  br i1 %i.gb, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86.thread: ; preds = %bb.bf, %.split403, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86
  %i.gc = sub nuw i64 %i.be, %.sroa.0.0           ; 24 uses
  %i.gd = sub nuw i64 %i.bf, %.sroa.0282.0        ; 24 uses
  %i.ge = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gc, i64 %i.gd) ; 2 uses
  %i.gf = extractvalue { i64, i1 } %i.ge, 1
  br i1 %i.gf, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread, label %bb.bh, !prof !13

bb.bh:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86.thread
  %i.gg = extractvalue { i64, i1 } %i.ge, 0
  %..i88 = tail call noundef i64 @llvm.umax.i64(i64 %i.gd, i64 %i.gc)
  %..i87 = tail call noundef i64 @llvm.umin.i64(i64 %i.gd, i64 %i.gc)
  %i.gh = add i64 %..i87, -65
  %or.cond.i27 = icmp ult i64 %i.gh, -64
  %i.gi = icmp ult i64 %..i88, 512
  %or.cond1.i = or i1 %i.gi, %or.cond.i27
  %i.gj = icmp ugt i64 %i.gg, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.gj
  br i1 %or.cond3.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.not.i28 = icmp ugt i64 %i.gc, %i.gd
  br i1 %.not.i28, label %bb.bj, label %bb.dy

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5032)
  br i1 %.not.i71, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gk = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now(), !noalias !5033 ; 2 uses
  %i.gl = extractvalue { i64, i32 } %i.gk, 0      ; 2 uses
  %i.gm = icmp eq i64 %i.gl, %9
  br i1 %i.gm, label %.split.i, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i

.split.i:                                         ; preds = %bb.bk
  %i.gn = extractvalue { i64, i32 } %i.gk, 1      ; 2 uses
  %i.go = icmp ult i32 %i.gn, 1000000000
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = icmp samesign ugt i32 %i.gn, %10
  br i1 %i.gp, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i: ; preds = %bb.bk
  %i.gq = icmp sgt i64 %i.gl, %9
  br i1 %i.gq, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i, %.split.i, %bb.bj
  %i.gr = add i64 %i.gc, 1                        ; 13 uses
  %i.gs = add nuw i64 %i.gd, 1
  %i.gt = mul i64 %i.gr, %i.gs                    ; 33 uses
  %.not.i.i.i = icmp slt i64 %i.gt, 0
  br i1 %.not.i.i.i, label %bb.bo, label %bb.bl, !prof !8

bb.bl:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i
  %i.gu = icmp eq i64 %i.gt, 0                    ; 4 uses
  br i1 %i.gu, label %.lr.ph731.split.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !5034
  %i.gv = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.gt, i64 noundef range(i64 1, 9) 1) #36, !noalias !5034 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gx = ptrtoint ptr %i.gv to i64
  br label %.lr.ph731.split.i

bb.bo:                                            ; preds = %bb.bm, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.bm ], [ 0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.gt) #38, !noalias !5035
  unreachable

.lr.ph731.split.i:                                ; preds = %bb.bn, %bb.bl
  %.sroa.10.0.i.i = phi i64 [ %i.gx, %bb.bn ], [ 1, %bb.bl ]
  %i.gy = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 28 uses
  %invariant.op732.i = sub i64 %.sroa.0282.0, %i.bd ; 4 uses
  %invariant.op.i90 = sub i64 %.sroa.0.0, %i.ba   ; 4 uses
  br i1 %.not.i71, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit219.thread.us738.i, label %.lr.ph731.split.split.i

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit219.thread.us738.i: ; preds = %.lr.ph731.split.i, %..loopexit335_crit_edge.split.us.split.us.us.i
  %.sroa.0102.0730.us734.i = phi i64 [ %i.gz, %..loopexit335_crit_edge.split.us.split.us.us.i ], [ %i.gd, %.lr.ph731.split.i ] ; 2 uses
  %i.gz = add i64 %.sroa.0102.0730.us734.i, -1    ; 4 uses
  %i.ha = mul i64 %i.gz, %i.gr                    ; 2 uses
  %i.hb = mul i64 %.sroa.0102.0730.us734.i, %i.gr ; 2 uses
  %.reass.us739.i = add i64 %i.gz, %invariant.op732.i ; 3 uses
  %i.hc = icmp ult i64 %.reass.us739.i, %i.bc
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.reass.us739.i
  %.fr.us.i = freeze i1 %i.hc
  br i1 %.fr.us.i, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.thread.us.us.us.i, label %.lr.ph.split.i

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.thread.us.us.us.i: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit219.thread.us738.i, %bb.bw
  %.sroa.0105.0690.us.us.us.i = phi i64 [ %i.he, %bb.bw ], [ %i.gc, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit219.thread.us738.i ] ; 3 uses
  %i.he = add i64 %.sroa.0105.0690.us.us.us.i, -1 ; 5 uses
  %.reass.us.us.us.i = add i64 %i.he, %invariant.op.i90 ; 3 uses
  %i.hf = icmp ult i64 %.reass.us.us.us.i, %i.az
  br i1 %i.hf, label %bb.bp, label %.invoke.i

bb.bp:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.thread.us.us.us.i
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.reass.us.us.us.i
  %.val206.us.us.us.i = load i32, ptr %i.hd, align 4, !noalias !5033, !noundef !5
  %.val207.us.us.us.i = load i32, ptr %i.hg, align 4, !noalias !5033, !noundef !5
  %i.hh = icmp eq i32 %.val206.us.us.us.i, %.val207.us.us.us.i
  br i1 %i.hh, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hi = add i64 %i.he, %i.hb                    ; 3 uses
  %i.hj = icmp ult i64 %i.hi, %i.gt
  br i1 %i.hj, label %bb.br, label %.split702.us.invoke.i

bb.br:                                            ; preds = %bb.bq
  %i.hk = add i64 %.sroa.0105.0690.us.us.us.i, %i.ha ; 3 uses
  %i.hl = icmp ult i64 %i.hk, %i.gt
  br i1 %i.hl, label %bb.bs, label %.split705.us.invoke.i

bb.bs:                                            ; preds = %bb.br
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hi
  %i.hn = load i8, ptr %i.hm, align 1, !noalias !5033, !noundef !5
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hk
  %i.hp = load i8, ptr %i.ho, align 1, !noalias !5033, !noundef !5
  %..i.us.us.us.i = tail call noundef i8 @llvm.umax.i8(i8 %i.hp, i8 %i.hn)
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bp
  %i.hq = add i64 %.sroa.0105.0690.us.us.us.i, %i.hb ; 3 uses
  %i.hr = icmp ult i64 %i.hq, %i.gt
  br i1 %i.hr, label %bb.bu, label %.split702.us.invoke.i

end_hunk_0
begin_hunk_1_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_:bb.a
  %i.zn = icmp eq i8 %i.zj, %i.zm
  br i1 %i.zn, label %bb.gd, label %._crit_edge777.i

bb.gd:                                            ; preds = %bb.gc
  %i.zo = icmp ult i64 %i.zd, %i.gc
  %i.zp = icmp ult i64 %i.zf, %i.gd
  %or.cond177.i198 = and i1 %i.zo, %i.zp
  br i1 %or.cond177.i198, label %.lr.ph776.i, label %._crit_edge777.i

.loopexit320.i199:                                ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit219.i206, %.split308.i233, %.split310.us.i232, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.us.i231, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit227.i140, %.split298.i201, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.i214, %.split310.i216
  br i1 %i.rh, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread414

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit219.i206: ; preds = %.noexc218.i205
  %i.zq = icmp sgt i64 %i.sn, %9
  br i1 %i.zq, label %.loopexit320.i199, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit219.thread.i207

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit219.thread.i207: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit219.i206, %.split308.i233
  %i.zr = mul i64 %i.sl, %i.re                    ; 2 uses
  %i.zs = mul i64 %.sroa.0102.0745.i, %i.re       ; 2 uses
  %.reass748.i = add i64 %i.sl, %invariant.op747.i ; 3 uses
  %i.zt = icmp ult i64 %.reass748.i, %i.az
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.reass748.i
  %.fr.i208 = freeze i1 %i.zt
  br i1 %.fr.i208, label %.lr.ph.split.us.i217, label %.lr.ph.split.i209

.lr.ph.split.us.i217:                             ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit219.thread.i207, %bb.gm
  %.sroa.0105.0690.us.i218 = phi i64 [ %i.zv, %bb.gm ], [ %i.gd, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit219.thread.i207 ] ; 3 uses
  %i.zv = add i64 %.sroa.0105.0690.us.i218, -1    ; 6 uses
  %i.zw = and i64 %i.zv, 1023
  %.not796.i = icmp eq i64 %i.zw, 0
  br i1 %.not796.i, label %bb.ge, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.thread.us.i219

bb.ge:                                            ; preds = %.lr.ph.split.us.i217
  %i.zx = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc249.us.i230 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i228, !noalias !5052 ; 2 uses

.noexc249.us.i230:                                ; preds = %bb.ge
  %i.zy = extractvalue { i64, i32 } %i.zx, 0      ; 2 uses
  %i.zz = icmp eq i64 %i.zy, %9
  br i1 %i.zz, label %.split310.us.i232, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.us.i231

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.us.i231: ; preds = %.noexc249.us.i230
  %i.aaa = icmp sgt i64 %i.zy, %9
  br i1 %i.aaa, label %.loopexit320.i199, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.thread.us.i219

.split310.us.i232:                                ; preds = %.noexc249.us.i230
  %i.aab = extractvalue { i64, i32 } %i.zx, 1     ; 2 uses
  %i.aac = icmp ult i32 %i.aab, 1000000000
  tail call void @llvm.assume(i1 %i.aac)
  %i.aad = icmp samesign ugt i32 %i.aab, %10
  br i1 %i.aad, label %.loopexit320.i199, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.thread.us.i219

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.thread.us.i219: ; preds = %.split310.us.i232, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.us.i231, %.lr.ph.split.us.i217
  %.reass.us.i220 = add i64 %i.zv, %invariant.op.i120 ; 3 uses
  %i.aae = icmp ult i64 %.reass.us.i220, %i.bc
  br i1 %i.aae, label %bb.gf, label %.invoke.i142

bb.gf:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.thread.us.i219
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.reass.us.i220
  %.val206.us.i221 = load i32, ptr %i.aaf, align 4, !noalias !5052, !noundef !5
  %.val207.us.i222 = load i32, ptr %i.zu, align 4, !noalias !5052, !noundef !5
  %i.aag = icmp eq i32 %.val206.us.i221, %.val207.us.i222
  br i1 %i.aag, label %bb.gj, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aah = add i64 %i.zv, %i.zs                   ; 3 uses
  %i.aai = icmp ult i64 %i.aah, %i.rg
  br i1 %i.aai, label %bb.gh, label %.split702.us.invoke.i147

bb.gh:                                            ; preds = %bb.gg
  %i.aaj = add i64 %.sroa.0105.0690.us.i218, %i.zr ; 3 uses
  %i.aak = icmp ult i64 %i.aaj, %i.rg
  br i1 %i.aak, label %bb.gi, label %.split705.us.invoke.i149

bb.gi:                                            ; preds = %bb.gh
  %i.aal = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.aah
  %i.aam = load i8, ptr %i.aal, align 1, !noalias !5052, !noundef !5
  %i.aan = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.aaj
  %i.aao = load i8, ptr %i.aan, align 1, !noalias !5052, !noundef !5
  %..i.us.i223 = tail call noundef i8 @llvm.umax.i8(i8 %i.aao, i8 %i.aam)
  br label %bb.gl

bb.gj:                                            ; preds = %bb.gf
  %i.aap = add i64 %.sroa.0105.0690.us.i218, %i.zs ; 3 uses
  %i.aaq = icmp ult i64 %i.aap, %i.rg
  br i1 %i.aaq, label %bb.gk, label %.split702.us.invoke.i147

bb.gk:                                            ; preds = %bb.gj
  %i.aar = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.aap
  %i.aas = load i8, ptr %i.aar, align 1, !noalias !5052, !noundef !5
  %i.aat = add i8 %i.aas, 1
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gi
  %.sroa.04.0.us.i224 = phi i8 [ %i.aat, %bb.gk ], [ %..i.us.i223, %bb.gi ]
  %i.aau = add i64 %i.zv, %i.zr                   ; 3 uses
  %i.aav = icmp ult i64 %i.aau, %i.rg
  br i1 %i.aav, label %bb.gm, label %.split705.us.invoke.i149

bb.gm:                                            ; preds = %bb.gl
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.aau
  store i8 %.sroa.04.0.us.i224, ptr %i.aaw, align 1, !noalias !5052
  %.not168.us.i225 = icmp eq i64 %i.zv, 0
  br i1 %.not168.us.i225, label %..loopexit335_crit_edge.split.us.split.i226, label %.lr.ph.split.us.i217

.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i228: ; preds = %bb.ge
  %lpad.loopexit336.us.i229 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i114

..loopexit335_crit_edge.split.us.split.i226:      ; preds = %bb.gm
  %.not.i227 = icmp eq i64 %i.sl, 0
  br i1 %.not.i227, label %.lr.ph790.i.preheader, label %.lr.ph746.split.split.i

.lr.ph.split.i209:                                ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit219.thread.i207, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit219.thread.us754.i
  %.us-phi760.i = phi i64 [ %.reass748.us.i, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit219.thread.us754.i ], [ %.reass748.i, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit219.thread.i207 ]
  %i.aax = add i64 %i.gd, -1                      ; 2 uses
  %i.aay = and i64 %i.aax, 1023
  %i.aaz = icmp ne i64 %i.aay, 0
  %brmerge316.i210 = or i1 %.not.i71, %i.aaz
  br i1 %brmerge316.i210, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.thread.i, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph.split.i209
  %i.aba = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc249.i213 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.i211, !noalias !5052 ; 2 uses

.noexc249.i213:                                   ; preds = %bb.gn
  %i.abb = extractvalue { i64, i32 } %i.aba, 0    ; 2 uses
  %i.abc = icmp eq i64 %i.abb, %9
  br i1 %i.abc, label %.split310.i216, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.i214

.split310.i216:                                   ; preds = %.noexc249.i213
  %i.abd = extractvalue { i64, i32 } %i.aba, 1    ; 2 uses
  %i.abe = icmp ult i32 %i.abd, 1000000000
  tail call void @llvm.assume(i1 %i.abe)
  %i.abf = icmp samesign ugt i32 %i.abd, %10
  br i1 %i.abf, label %.loopexit320.i199, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.thread.i

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.i214: ; preds = %.noexc249.i213
  %i.abg = icmp sgt i64 %i.abb, %9
  br i1 %i.abg, label %.loopexit320.i199, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.thread.i

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.thread.i: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.i214, %.split310.i216, %.lr.ph.split.i209
  %.reass.i215 = add i64 %invariant.op.i120, %i.aax ; 2 uses
  %i.abh = icmp ult i64 %.reass.i215, %i.bc
  br i1 %i.abh, label %bb.go, label %.invoke.i142

bb.go:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit250.thread.i
  br label %.invoke.i142

.split702.us.invoke.i147:                         ; preds = %bb.gj, %bb.gg, %bb.ei, %bb.ef, %bb.ew, %bb.ev, %bb.fr, %bb.fq, %bb.ff, %bb.fg, %bb.ga
  %i.abi = phi i64 [ %i.sd, %bb.ei ], [ %i.ug, %bb.ew ], [ %i.zb, %bb.ga ], [ %i.vw, %bb.ff ], [ %i.xj, %bb.fr ], [ %i.rg, %bb.fg ], [ %i.xh, %bb.fq ], [ %i.ue, %bb.ev ], [ %i.rv, %bb.ef ], [ %i.aah, %bb.gg ], [ %i.aap, %bb.gj ]
  %i.abj = phi ptr [ @98, %bb.ei ], [ @78, %bb.ew ], [ @92, %bb.ga ], [ @81, %bb.ff ], [ @88, %bb.fr ], [ @83, %bb.fg ], [ @86, %bb.fq ], [ @76, %bb.ev ], [ @96, %bb.ef ], [ @96, %bb.gg ], [ @98, %bb.gj ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.abi, i64 noundef %i.rg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abj) #38
          to label %.split702.us.cont.i148 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i112, !noalias !5052

.split702.us.cont.i148:                           ; preds = %.split702.us.invoke.i147
  unreachable

.split705.us.invoke.i149:                         ; preds = %bb.gl, %bb.gh, %bb.ek, %bb.eg, %bb.ez, %bb.ex, %bb.fu, %bb.fs, %bb.fh, %bb.fj, %bb.gb
  %i.abk = phi i64 [ %i.si, %bb.ek ], [ %i.uw, %bb.ez ], [ %i.zg, %bb.gb ], [ %i.wa, %bb.fh ], [ %i.xv, %bb.fu ], [ %i.rg, %bb.fj ], [ %i.xn, %bb.fs ], [ %i.ul, %bb.ex ], [ %i.rx, %bb.eg ], [ %i.aaj, %bb.gh ], [ %i.aau, %bb.gl ]
  %i.abl = phi ptr [ @99, %bb.ek ], [ @79, %bb.ez ], [ @93, %bb.gb ], [ @82, %bb.fh ], [ @89, %bb.fu ], [ @84, %bb.fj ], [ @87, %bb.fs ], [ @77, %bb.ex ], [ @97, %bb.eg ], [ @97, %bb.gh ], [ @99, %bb.gl ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.abk, i64 noundef %i.rg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abl) #38
          to label %.split705.us.cont.i152 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i150, !noalias !5052

.split705.us.cont.i152:                           ; preds = %.split705.us.invoke.i149
  unreachable

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread414: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit239.i161, %.split302.i174, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit233.i182, %.split300.i186, %.split304.i200, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit245.i194, %.loopexit320.i199
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rl) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rl, i64 noundef %i.rg, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !5052
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit: ; preds = %bb.er
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rl) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rl, i64 noundef %i.rg, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !5052
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread411

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86.thread, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i97, %.loopexit320.i199, %.split.i245, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i, %.loopexit320.i, %.split.i, %.split403, %bb.bh, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdftwklc2oBO_7similar.exit223.sink.split.i.thread, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_EB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0282.0, i64 noundef %i.bf, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.abm = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.abn = trunc nuw i64 %i.abm to i1
  br i1 %i.abn, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread
  %i.abo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.abp = load i64, ptr %i.abo, align 8, !noundef !5 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.abr = load i64, ptr %i.abq, align 8, !noundef !5 ; 2 uses
  tail call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias nofree noundef align 8 dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.abp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0282.0, i64 noundef %i.abr, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias nofree noundef align 8 dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.abp, i64 noundef %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.abr, i64 noundef %i.bf, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread411

bb.gq:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.abs = sub nuw i64 %i.be, %.sroa.0.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5070)
  %i.abt = load i64, ptr %i.bh, align 8, !alias.scope !5070, !noalias !5071, !noundef !5 ; 4 uses
  %i.abu = load i64, ptr %i.bg, align 8, !range !6, !alias.scope !5070, !noalias !5071, !noundef !5 ; 2 uses
  %i.abv = icmp eq i64 %i.abt, %i.abu
  br i1 %i.abv, label %bb.gr, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit246

bb.gr:                                            ; preds = %bb.gq
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #34, !noalias !5071
  %.pre1016 = load i64, ptr %i.bg, align 8, !range !6, !alias.scope !5072, !noalias !5073
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit246

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit246: ; preds = %bb.gq, %bb.gr
  %13 = phi i64 [ %i.abu, %bb.gq ], [ %.pre1016, %bb.gr ]
  %i.abw = load ptr, ptr %i.bi, align 8, !alias.scope !5070, !noalias !5071, !nonnull !5, !noundef !5 ; 2 uses
  %i.abx = getelementptr inbounds nuw [40 x i8], ptr %i.abw, i64 %i.abt ; 4 uses
  store i64 1, ptr %i.abx, align 8, !noalias !5070
  %.sroa.4350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abx, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4350.0..sroa_idx, align 8, !noalias !5070
  %.sroa.5351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  store i64 %i.abs, ptr %.sroa.5351.0..sroa_idx, align 8, !noalias !5070
  %.sroa.6352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abx, i64 24
  store i64 %.sroa.0282.0, ptr %.sroa.6352.0..sroa_idx, align 8, !noalias !5070
  %i.aby = add i64 %i.abt, 1                      ; 3 uses
  store i64 %i.aby, ptr %i.bh, align 8, !alias.scope !5070, !noalias !5071
  %i.abz = sub nuw i64 %i.bf, %.sroa.0282.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5072)
  %i.aca = icmp eq i64 %i.aby, %13
  br i1 %i.aca, label %bb.gs, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit247

bb.gs:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit246
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #34, !noalias !5073
  %.pre1017 = load ptr, ptr %i.bi, align 8, !alias.scope !5072, !noalias !5073
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit247

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit247: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit246, %bb.gs
  %14 = phi ptr [ %i.abw, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit246 ], [ %.pre1017, %bb.gs ]
  %i.acb = getelementptr inbounds nuw [40 x i8], ptr %14, i64 %i.aby ; 4 uses
  store i64 2, ptr %i.acb, align 8, !noalias !5072
  %.sroa.4365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4365.0..sroa_idx, align 8, !noalias !5072
  %.sroa.5366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  store i64 %.sroa.0282.0, ptr %.sroa.5366.0..sroa_idx, align 8, !noalias !5072
  %.sroa.6367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acb, i64 24
  store i64 %i.abz, ptr %.sroa.6367.0..sroa_idx, align 8, !noalias !5072
  %i.acc = add i64 %i.abt, 2
  store i64 %i.acc, ptr %i.bh, align 8, !alias.scope !5072, !noalias !5073
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread411

.thread:                                          ; preds = %bb.bc
  %i.acd = sub nuw i64 %i.bf, %.sroa.0282.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5074)
  %i.ace = load i64, ptr %i.bh, align 8, !alias.scope !5074, !noalias !5075, !noundef !5 ; 3 uses
  %i.acf = load i64, ptr %i.bg, align 8, !range !6, !alias.scope !5074, !noalias !5075, !noundef !5
  %i.acg = icmp eq i64 %i.ace, %i.acf
  br i1 %i.acg, label %bb.gt, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit248

bb.gt:                                            ; preds = %.thread
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #34, !noalias !5075
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit248

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit248: ; preds = %.thread, %bb.gt
  %i.ach = load ptr, ptr %i.bi, align 8, !alias.scope !5074, !noalias !5075, !nonnull !5, !noundef !5
  %i.aci = getelementptr inbounds nuw [40 x i8], ptr %i.ach, i64 %i.ace ; 4 uses
  store i64 2, ptr %i.aci, align 8, !noalias !5074
  %.sroa.4360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4360.0..sroa_idx, align 8, !noalias !5074
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aci, i64 16
  store i64 %.sroa.0282.0, ptr %.sroa.5361.0..sroa_idx, align 8, !noalias !5074
  %.sroa.6362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aci, i64 24
  store i64 %i.acd, ptr %.sroa.6362.0..sroa_idx, align 8, !noalias !5074
  %i.acj = add i64 %i.ace, 1
  store i64 %i.acj, ptr %i.bh, align 8, !alias.scope !5074, !noalias !5075
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread411

bb.gu:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5076)
  %i.ack = load i64, ptr %i.bh, align 8, !alias.scope !5076, !noalias !5077, !noundef !5 ; 3 uses
  %i.acl = load i64, ptr %i.bg, align 8, !range !6, !alias.scope !5076, !noalias !5077, !noundef !5
  %i.acm = icmp eq i64 %i.ack, %i.acl
  br i1 %i.acm, label %bb.gv, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit249

bb.gv:                                            ; preds = %bb.gu
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #34, !noalias !5077
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit249

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit249: ; preds = %bb.gu, %bb.gv
  %i.acn = load ptr, ptr %i.bi, align 8, !alias.scope !5076, !noalias !5077, !nonnull !5, !noundef !5
  %i.aco = getelementptr inbounds nuw [40 x i8], ptr %i.acn, i64 %i.ack ; 4 uses
  store i64 0, ptr %i.aco, align 8, !noalias !5076
  %.sroa.4330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  store i64 %i.be, ptr %.sroa.4330.0..sroa_idx, align 8, !noalias !5076
  %.sroa.5331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aco, i64 16
  store i64 %i.bf, ptr %.sroa.5331.0..sroa_idx, align 8, !noalias !5076
  %.sroa.6332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aco, i64 24
  store i64 %.sroa.0.0.i61, ptr %.sroa.6332.0..sroa_idx, align 8, !noalias !5076
  %i.acp = add i64 %i.ack, 1
  store i64 %i.acp, ptr %i.bh, align 8, !alias.scope !5076, !noalias !5077
  br label %bb.gw

bb.gw:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread411, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit249
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = tail call fastcc noundef i64 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_EB6_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit, %bb.a
  %i.c = add i64 %i.b, %2                         ; 2 uses
  %i.d = add i64 %i.b, %5                         ; 2 uses
  %i.e = tail call fastcc noundef i64 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_EB6_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.d, i64 noundef %6) ; 4 uses
  %i.f = sub i64 %3, %i.e                         ; 9 uses
  %i.g = sub i64 %6, %i.e                         ; 11 uses
  %.not.i55 = icmp eq i32 %10, -1                 ; 17 uses
  %i.h = load i64, ptr %4, align 8, !range !7
  %i.i = trunc nuw i64 %i.h to i1                 ; 15 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = load i64, ptr %i.j, align 8              ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5 ; 24 uses
  %i.n = load i64, ptr %1, align 8, !range !7
  %i.o = trunc nuw i64 %i.n to i1                 ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8              ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5 ; 24 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5446)
  %i.t = load ptr, ptr %0, align 8, !alias.scope !5447, !nonnull !5, !align !9, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5448)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !5448, !noalias !5447, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5449)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !5449, !noalias !5450, !noundef !5 ; 3 uses
  %i.y = load i64, ptr %i.v, align 8, !range !6, !alias.scope !5449, !noalias !5450, !noundef !5
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.d, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #34, !noalias !5450
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit: ; preds = %bb.c, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !5449, !noalias !5450, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  store i64 0, ptr %i.ac, align 8, !noalias !5451
  %.sroa.4374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %2, ptr %.sroa.4374.0..sroa_idx, align 8, !noalias !5451
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !5451
  %.sroa.6375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 %i.b, ptr %.sroa.6375.0..sroa_idx, align 8, !noalias !5451
  %i.ad = add i64 %i.x, 1
  store i64 %i.ad, ptr %i.w, align 8, !alias.scope !5449, !noalias !5450
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, %bb.b
  %.sroa.0330.0 = phi i64 [ %i.d, %bb.b ], [ %.sroa.0330.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit ] ; 38 uses
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit ] ; 37 uses
  %i.ae = icmp ult i64 %.sroa.0.0, %i.f           ; 2 uses
  %i.af = icmp ult i64 %.sroa.0330.0, %i.g        ; 3 uses
  %or.cond460 = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond460, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, %bb.e
  br i1 %i.ae, label %bb.bd, label %bb.be

bb.g:                                             ; preds = %bb.e
  %i.ag = sub nuw i64 %i.f, %.sroa.0.0            ; 6 uses
  %i.ah = sub nuw i64 %i.g, %.sroa.0330.0         ; 5 uses
  %i.ai = icmp ult i64 %i.ag, 97
  %i.aj = icmp ult i64 %i.ah, 97
  %or.cond.i = or i1 %i.aj, %i.ai
  br i1 %or.cond.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ag) ; 2 uses
  %..i46 = tail call noundef i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ag)
  %i.ak = shl nuw i64 %..i, 1
  %i.al = icmp slt i64 %..i, 0
  br i1 %i.al, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.ak, %bb.h ]
  %i.am = icmp ult i64 %..i46, %.sroa.052.0.i
  br i1 %i.am, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.ah, %i.ag
  %i.an = icmp ule i64 %i.ag, %i.ah
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit.thread
  %.sroa.525.2.i.ph.lcssa593 = phi i64 [ %.sroa.525.2.i.ph644, %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit.thread ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa586 = phi i64 [ %.sroa.023.1.i.ph645, %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit.thread ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa579 = phi i64 [ %.sroa.9.2.i.ph646, %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit.thread ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa572 = phi i64 [ %.sroa.12.2.i.ph647, %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit.thread ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, -1
  %exitcond801 = icmp eq i64 %i.ao, 5
  br i1 %exitcond801, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %indvars.iv = phi i64 [ %i.ag, %bb.k ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.sroa.12.0.i652 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa572, %.loopexit ]
  %.sroa.9.0.i651 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa579, %.loopexit ]
  %.sroa.023.0.i650 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa586, %.loopexit ]
  %.sroa.525.0.i649 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa593, %.loopexit ]
  %.sroa.0363.0648 = phi i64 [ 0, %bb.k ], [ %i.ao, %.loopexit ] ; 10 uses
  %i.ao = add nuw nsw i64 %.sroa.0363.0648, 1     ; 2 uses
  %i.ap = icmp eq i64 %.sroa.0363.0648, 0
  %i.aq = add i64 %.sroa.0363.0648, %.sroa.0.0    ; 5 uses
  %i.ar = icmp ult i64 %i.aq, %i.q
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.aq ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.aq ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = getelementptr i8, ptr %i.au, i64 16
  %i.ax = sub i64 %i.f, %i.aq
  %.666 = select i1 %i.o, ptr %i.av, ptr %i.as
  %. = select i1 %i.o, ptr %i.aw, ptr %i.at
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.ay = trunc nuw i64 %.sroa.023.1.i.ph.lcssa586 to i1
end_hunk_1
begin_hunk_2_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_:bb.a
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit67: ; preds = %bb.ad, %bb.ae
  %.sroa.5.1.i.in.i63 = phi ptr [ %i.ck, %bb.ae ], [ %i.ch, %bb.ad ]
  %.sroa.0.1.i.in.i64 = phi ptr [ %i.cj, %bb.ae ], [ %i.cg, %bb.ad ]
  %.sroa.0.1.i.i65 = load ptr, ptr %.sroa.0.1.i.in.i64, align 8, !noalias !5871, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i66 = load i64, ptr %.sroa.5.1.i.in.i63, align 8, !noalias !5871, !noundef !5 ; 2 uses
  %i.cl = add i64 %.sroa.01.0.i631, %i.ar         ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %i.q                ; 2 uses
  br i1 %i.o, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit67
  br i1 %i.cm, label %bb.aj, label %bb.ak

bb.ah:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit67
  br i1 %i.cm, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.cl ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit72

bb.aj:                                            ; preds = %bb.ag
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.cl ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = getelementptr i8, ptr %i.cp, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit72

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #37, !noalias !5872
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit72: ; preds = %bb.ai, %bb.aj
  %.sroa.5.1.i.in.i68 = phi ptr [ %i.cr, %bb.aj ], [ %i.co, %bb.ai ]
  %.sroa.0.1.i.in.i69 = phi ptr [ %i.cq, %bb.aj ], [ %i.cn, %bb.ai ]
  %.sroa.5.1.i.i71 = load i64, ptr %.sroa.5.1.i.in.i68, align 8, !noalias !5873, !noundef !5
  %i.cs = icmp eq i64 %.sroa.5.1.i.i66, %.sroa.5.1.i.i71
  br i1 %i.cs, label %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit75, label %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit75.thread

_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit75: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit72
  %.sroa.0.1.i.i70 = load ptr, ptr %.sroa.0.1.i.in.i69, align 8, !noalias !5873, !nonnull !5, !noundef !5
  %bcmp.i.i74 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i65, ptr nonnull readonly %.sroa.0.1.i.i70, i64 %.sroa.5.1.i.i66), !alias.scope !5874, !noalias !5864
  %.not456 = icmp eq i32 %bcmp.i.i74, 0
  br i1 %.not456, label %bb.al, label %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit75.thread

bb.al:                                            ; preds = %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit75
  %i.ct = add nuw i64 %.sroa.01.0.i631, 1         ; 2 uses
  %exitcond793.not = icmp eq i64 %i.ct, %umin
  br i1 %exitcond793.not, label %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit75.thread, label %.lr.ph632

_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit75.thread: ; preds = %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit75, %bb.al, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit72
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.01.0.i631, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit72 ], [ %.sroa.01.0.i631, %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit75 ], [ %umin, %bb.al ] ; 6 uses
  %i.cu = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.cu, label %bb.am, label %.outer

.outer:                                           ; preds = %bb.z, %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit, %bb.ar, %.split435, %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit75.thread
  %.sroa.525.3.i = phi i64 [ %.sroa.525.2.i.ph637, %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit75.thread ], [ %.sroa.0356.0641, %bb.ar ], [ %.sroa.525.2.i.ph637, %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit ], [ %.sroa.0356.0641, %.split435 ], [ %.sroa.525.2.i.ph637, %bb.z ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ %.sroa.023.1.i.ph638, %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit75.thread ], [ 1, %bb.ar ], [ 1, %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit ], [ 1, %.split435 ], [ %.sroa.023.1.i.ph638, %bb.z ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.2.i.ph639, %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit75.thread ], [ %.sroa.0357.0623, %bb.ar ], [ %.sroa.9.2.i.ph639, %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit ], [ %.sroa.9.2.i.ph639, %.split435 ], [ %.sroa.9.2.i.ph639, %bb.z ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.2.i.ph640, %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit75.thread ], [ %.sroa.01.0.i.lcssa, %bb.ar ], [ %.sroa.12.2.i.ph640, %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit ], [ %.sroa.12.2.i.ph640, %.split435 ], [ %.sroa.12.2.i.ph640, %bb.z ] ; 2 uses
  %.not.i49622 = icmp ugt i64 %.sroa.0357.0623, 3
  br i1 %.not.i49622, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph640 = phi i64 [ %.sroa.12.0.i645, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 7 uses
  %.sroa.9.2.i.ph639 = phi i64 [ %.sroa.9.0.i644, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 7 uses
  %.sroa.023.1.i.ph638 = phi i64 [ %.sroa.023.0.i643, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 4 uses
  %.sroa.525.2.i.ph637 = phi i64 [ %.sroa.525.0.i642, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 7 uses
  %.sroa.0357.0.ph636 = phi i64 [ 0, %bb.l ], [ %i.bc, %.outer ] ; 2 uses
  %i.cv = add i64 %.sroa.0323.0, %.sroa.0357.0.ph636
  %i.cw = sub i64 %i.g, %i.cv
  br label %bb.n

bb.am:                                            ; preds = %_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar.exit75.thread
  %i.cx = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.cx, label %.loopexit511, label %bb.an

bb.an:                                            ; preds = %bb.am
  %..i76 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0357.0623, i64 %.sroa.0356.0641) ; 2 uses
  %i.cy = trunc nuw i64 %.sroa.023.1.i.ph638 to i1
  br i1 %i.cy, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.cz = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph640
  %i.da = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph640
  br i1 %i.cz, label %bb.ap, label %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit

bb.ap:                                            ; preds = %bb.ao
  %..i77 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph639, i64 %.sroa.525.2.i.ph637) ; 2 uses
  %cond.i.i.i = icmp eq i64 %..i77, %..i76
  %i.db = icmp ugt i64 %..i77, %..i76
  br i1 %cond.i.i.i, label %bb.aq, label %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit

bb.aq:                                            ; preds = %bb.ap
  %i.dc = icmp eq i64 %.sroa.0356.0641, %.sroa.525.2.i.ph637
  %i.dd = icmp ugt i64 %.sroa.0356.0641, %.sroa.525.2.i.ph637
  br i1 %i.dc, label %.split435, label %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit

.split435:                                        ; preds = %bb.aq
  %i.de = icmp ugt i64 %.sroa.0357.0623, %.sroa.9.2.i.ph639
  br i1 %i.de, label %bb.ar, label %.outer

_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit: ; preds = %bb.ao, %bb.ap, %bb.aq
  %.sroa.0.2.in.i = phi i1 [ %i.da, %bb.ao ], [ %i.db, %bb.ap ], [ %i.dd, %bb.aq ]
  br i1 %.sroa.0.2.in.i, label %bb.ar, label %.outer

bb.ar:                                            ; preds = %.split435, %_RNvXsw_NtCsj6eKBz9Db1c_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsdftwklc2oBO_7similar.exit, %bb.an
  br label %.outer

bb.as:                                            ; preds = %.loopexit511
  %.pre.a = load i64, ptr %i.u, align 8, !noalias !5875 ; 4 uses
  br i1 %i.bb, label %bb.au, label %bb.aw

bb.at:                                            ; preds = %.loopexit511
  br i1 %i.bb, label %bb.ay, label %bb.ba

.sink.split:                                      ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit79, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit80, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit82
  %.sink = phi i64 [ %i.ei, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit82 ], [ %i.dz, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit80 ], [ %i.dt, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit79 ] ; 2 uses
  store i64 %.sink, ptr %i.u, align 8, !noalias !5875
  br label %bb.au

bb.au:                                            ; preds = %.sink.split, %bb.as
  %i.df = phi i64 [ %.pre.a, %bb.as ], [ %.sink, %.sink.split ] ; 3 uses
  %i.dg = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.dh = add i64 %.sroa.9.1.i, %.sroa.0323.0     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5876)
  %i.di = load i64, ptr %i.t, align 8, !range !6, !alias.scope !5876, !noalias !5877, !noundef !5
  %i.dj = icmp eq i64 %i.df, %i.di
  br i1 %i.dj, label %bb.av, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit78

bb.av:                                            ; preds = %bb.au
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #34, !noalias !5877
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit78

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit78: ; preds = %bb.au, %bb.av
  %i.dk = load ptr, ptr %i.v, align 8, !alias.scope !5876, !noalias !5877, !nonnull !5, !noundef !5
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dk, i64 %i.df ; 4 uses
  store i64 0, ptr %i.dl, align 8, !noalias !5878
  %.sroa.4367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %i.dg, ptr %.sroa.4367.0..sroa_idx, align 8, !noalias !5878
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i64 %i.dh, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !5878
  %.sroa.6368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6368.0..sroa_idx, align 8, !noalias !5878
  %i.dm = add i64 %i.df, 1
  store i64 %i.dm, ptr %i.u, align 8, !alias.scope !5876, !noalias !5877
  %i.dn = add i64 %i.dg, %.sroa.12.1.i
  %i.do = add i64 %i.dh, %.sroa.12.1.i
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit

bb.aw:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5879)
  %i.dp = load i64, ptr %i.t, align 8, !range !6, !alias.scope !5879, !noalias !5880, !noundef !5
  %i.dq = icmp eq i64 %.pre.a, %i.dp
  br i1 %i.dq, label %bb.ax, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit79

bb.ax:                                            ; preds = %bb.aw
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #34, !noalias !5880
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit79

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit79: ; preds = %bb.aw, %bb.ax
  %i.dr = load ptr, ptr %i.v, align 8, !alias.scope !5879, !noalias !5880, !nonnull !5, !noundef !5
  %i.ds = getelementptr inbounds nuw [40 x i8], ptr %i.dr, i64 %.pre.a ; 4 uses
  store i64 2, ptr %i.ds, align 8, !noalias !5881
  %.sroa.4396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4396.0..sroa_idx, align 8, !noalias !5881
  %.sroa.5397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i64 %.sroa.0323.0, ptr %.sroa.5397.0..sroa_idx, align 8, !noalias !5881
  %.sroa.6398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6398.0..sroa_idx, align 8, !noalias !5881
  %i.dt = add i64 %.pre.a, 1
  br label %.sink.split

bb.ay:                                            ; preds = %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5882)
  %i.du = load i64, ptr %i.u, align 8, !alias.scope !5882, !noalias !5883, !noundef !5 ; 3 uses
  %i.dv = load i64, ptr %i.t, align 8, !range !6, !alias.scope !5882, !noalias !5883, !noundef !5
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.az, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit80

bb.az:                                            ; preds = %bb.ay
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #34, !noalias !5883
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit80

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit80: ; preds = %bb.ay, %bb.az
  %i.dx = load ptr, ptr %i.v, align 8, !alias.scope !5882, !noalias !5883, !nonnull !5, !noundef !5
  %i.dy = getelementptr inbounds nuw [40 x i8], ptr %i.dx, i64 %i.du ; 4 uses
  store i64 1, ptr %i.dy, align 8, !noalias !5884
  %.sroa.4381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4381.0..sroa_idx, align 8, !noalias !5884
  %.sroa.5382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5382.0..sroa_idx, align 8, !noalias !5884
  %.sroa.6383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store i64 %.sroa.0323.0, ptr %.sroa.6383.0..sroa_idx, align 8, !noalias !5884
  %i.dz = add i64 %i.du, 1
  br label %.sink.split

bb.ba:                                            ; preds = %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5885)
  %i.ea = load i64, ptr %i.u, align 8, !alias.scope !5885, !noalias !5886, !noundef !5 ; 4 uses
  %i.eb = load i64, ptr %i.t, align 8, !range !6, !alias.scope !5885, !noalias !5886, !noundef !5 ; 2 uses
  %i.ec = icmp eq i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.bb, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit81

bb.bb:                                            ; preds = %bb.ba
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #34, !noalias !5886
  %.pre = load i64, ptr %i.t, align 8, !range !6, !alias.scope !5887, !noalias !5888
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit81

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit81: ; preds = %bb.ba, %bb.bb
  %11 = phi i64 [ %i.eb, %bb.ba ], [ %.pre, %bb.bb ]
  %i.ed = load ptr, ptr %i.v, align 8, !alias.scope !5885, !noalias !5886, !nonnull !5, !noundef !5 ; 2 uses
  %i.ee = getelementptr inbounds nuw [40 x i8], ptr %i.ed, i64 %i.ea ; 4 uses
  store i64 1, ptr %i.ee, align 8, !noalias !5889
  %.sroa.4411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4411.0..sroa_idx, align 8, !noalias !5889
  %.sroa.5412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5412.0..sroa_idx, align 8, !noalias !5889
  %.sroa.6413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i64 %.sroa.0323.0, ptr %.sroa.6413.0..sroa_idx, align 8, !noalias !5889
  %i.ef = add i64 %i.ea, 1                        ; 3 uses
  store i64 %i.ef, ptr %i.u, align 8, !alias.scope !5885, !noalias !5886
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5887)
  %i.eg = icmp eq i64 %i.ef, %11
  br i1 %i.eg, label %bb.bc, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit82

bb.bc:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit81
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #34, !noalias !5888
  %.pre795 = load ptr, ptr %i.v, align 8, !alias.scope !5887, !noalias !5888
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit82

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit82: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit81, %bb.bc
  %12 = phi ptr [ %i.ed, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit81 ], [ %.pre795, %bb.bc ]
  %i.eh = getelementptr inbounds nuw [40 x i8], ptr %12, i64 %i.ef ; 4 uses
  store i64 2, ptr %i.eh, align 8, !noalias !5890
  %.sroa.4416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4416.0..sroa_idx, align 8, !noalias !5890
  %.sroa.5417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i64 %.sroa.0323.0, ptr %.sroa.5417.0..sroa_idx, align 8, !noalias !5890
  %.sroa.6418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6418.0..sroa_idx, align 8, !noalias !5890
  %i.ei = add i64 %i.ea, 2
  br label %.sink.split

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %.split, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit62, %.split432, %bb.g, %bb.j, %bb.m, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit78
  %.sroa.0323.2 = phi i64 [ %.sroa.0323.0, %bb.g ], [ %.sroa.0323.0, %bb.j ], [ %.sroa.0323.0, %bb.m ], [ %i.do, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit78 ], [ %.sroa.0323.0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit62 ], [ %.sroa.0323.0, %.split432 ], [ %.sroa.0323.0, %.split ], [ %.sroa.0323.0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.m ], [ %i.dn, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit78 ], [ %.sroa.0.0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit62 ], [ %.sroa.0.0, %.split432 ], [ %.sroa.0.0, %.split ], [ %.sroa.0.0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit ] ; 2 uses
  %i.ej = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.ek = icmp eq i64 %.sroa.0323.2, %.sroa.0323.0
  %or.cond = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.bd:                                            ; preds = %bb.f
  br i1 %i.ag, label %bb.bh, label %bb.bf

bb.be:                                            ; preds = %bb.f
  br i1 %i.ag, label %.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread447

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread447: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdftwklc2oBO_7similar.exit194.sink.split.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit83, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit289, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit288, %bb.ib, %bb.be
  %.not26 = icmp eq i64 %i.e, 0
  br i1 %.not26, label %bb.ii, label %bb.ig

bb.bf:                                            ; preds = %bb.bd
  %i.el = sub nuw i64 %i.f, %.sroa.0.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5891)
  %i.em = load i64, ptr %i.u, align 8, !alias.scope !5891, !noalias !5892, !noundef !5 ; 3 uses
  %i.en = load i64, ptr %i.t, align 8, !range !6, !alias.scope !5891, !noalias !5892, !noundef !5
  %i.eo = icmp eq i64 %i.em, %i.en
  br i1 %i.eo, label %bb.bg, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit83

bb.bg:                                            ; preds = %bb.bf
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #34, !noalias !5892
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit83

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit83: ; preds = %bb.bf, %bb.bg
  %i.ep = load ptr, ptr %i.v, align 8, !alias.scope !5891, !noalias !5892, !nonnull !5, !noundef !5
  %i.eq = getelementptr inbounds nuw [40 x i8], ptr %i.ep, i64 %i.em ; 4 uses
  store i64 1, ptr %i.eq, align 8, !noalias !5891
  %.sroa.4386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4386.0..sroa_idx, align 8, !noalias !5891
  %.sroa.5387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 %i.el, ptr %.sroa.5387.0..sroa_idx, align 8, !noalias !5891
  %.sroa.6388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store i64 %.sroa.0323.0, ptr %.sroa.6388.0..sroa_idx, align 8, !noalias !5891
  %i.er = add i64 %i.em, 1
  store i64 %i.er, ptr %i.u, align 8, !alias.scope !5891, !noalias !5892
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread447

bb.bh:                                            ; preds = %bb.bd
  br i1 %.not.i53, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.es = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now(), !noalias !5893 ; 2 uses
  %i.et = extractvalue { i64, i32 } %i.es, 0      ; 2 uses
  %i.eu = icmp eq i64 %i.et, %9
  br i1 %i.eu, label %.split439, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86

.split439:                                        ; preds = %bb.bi
  %i.ev = extractvalue { i64, i32 } %i.es, 1      ; 2 uses
  %i.ew = icmp ult i32 %i.ev, 1000000000
  tail call void @llvm.assume(i1 %i.ew), !noalias !5893
  %i.ex = icmp samesign ugt i32 %i.ev, %10
  br i1 %i.ex, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86: ; preds = %bb.bi
  %i.ey = icmp sgt i64 %i.et, %9
  br i1 %i.ey, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86.thread: ; preds = %bb.bh, %.split439, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86
  %i.ez = sub nuw i64 %i.f, %.sroa.0.0            ; 22 uses
  %i.fa = sub nuw i64 %i.g, %.sroa.0323.0         ; 22 uses
  %i.fb = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ez, i64 %i.fa) ; 2 uses
  %i.fc = extractvalue { i64, i1 } %i.fb, 1
  br i1 %i.fc, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread, label %bb.bj, !prof !13

bb.bj:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86.thread
  %i.fd = extractvalue { i64, i1 } %i.fb, 0
  %..i88 = tail call noundef i64 @llvm.umax.i64(i64 %i.fa, i64 %i.ez)
  %..i87 = tail call noundef i64 @llvm.umin.i64(i64 %i.fa, i64 %i.ez)
  %i.fe = add i64 %..i87, -65
  %or.cond.i27 = icmp ult i64 %i.fe, -64
  %i.ff = icmp ult i64 %..i88, 512
  %or.cond1.i = or i1 %i.ff, %or.cond.i27
  %i.fg = icmp ugt i64 %i.fd, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.fg
  br i1 %or.cond3.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not.i28 = icmp ugt i64 %i.ez, %i.fa
  br i1 %.not.i28, label %bb.bl, label %bb.et

bb.bl:                                            ; preds = %bb.bk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5894)
  br i1 %.not.i53, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fh = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now(), !noalias !5895 ; 2 uses
  %i.fi = extractvalue { i64, i32 } %i.fh, 0      ; 2 uses
  %i.fj = icmp eq i64 %i.fi, %9
  br i1 %i.fj, label %.split.i, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i

.split.i:                                         ; preds = %bb.bm
  %i.fk = extractvalue { i64, i32 } %i.fh, 1      ; 2 uses
  %i.fl = icmp ult i32 %i.fk, 1000000000
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = icmp samesign ugt i32 %i.fk, %10
  br i1 %i.fm, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i: ; preds = %bb.bm
  %i.fn = icmp sgt i64 %i.fi, %9
  br i1 %i.fn, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i, %.split.i, %bb.bl
  %i.fo = add i64 %i.ez, 1                        ; 11 uses
  %i.fp = add nuw i64 %i.fa, 1
  %i.fq = mul i64 %i.fo, %i.fp                    ; 30 uses
  %.not.i.i.i = icmp slt i64 %i.fq, 0
  br i1 %.not.i.i.i, label %bb.bq, label %bb.bn, !prof !8

bb.bn:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i
  %i.fr = icmp eq i64 %i.fq, 0                    ; 3 uses
  br i1 %i.fr, label %.lr.ph615.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !5896
  %i.fs = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.fq, i64 noundef range(i64 1, 9) 1) #36, !noalias !5896 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fu = ptrtoint ptr %i.fs to i64
  br label %.lr.ph615.i

bb.bq:                                            ; preds = %bb.bo, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.bo ], [ 0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.fq) #38, !noalias !5897
  unreachable

.lr.ph615.i:                                      ; preds = %bb.bn, %bb.bp
  %.sroa.10.0.i.i = phi i64 [ %i.fu, %bb.bp ], [ 1, %bb.bn ]
  %i.fv = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 24 uses
  br label %.lr.ph615.split.i

.lr.ph615.split.i:                                ; preds = %.lr.ph615.i, %..loopexit385_crit_edge.i.split.us
  %.sroa.0102.0614.i = phi i64 [ %i.fw, %..loopexit385_crit_edge.i.split.us ], [ %i.fa, %.lr.ph615.i ] ; 2 uses
  %i.fw = add i64 %.sroa.0102.0614.i, -1          ; 4 uses
  br i1 %.not.i53, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit190.thread.i, label %bb.br

bb.br:                                            ; preds = %.lr.ph615.split.i
  %i.fx = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.i, !noalias !5895 ; 2 uses

.noexc.i:                                         ; preds = %bb.br
  %i.fy = extractvalue { i64, i32 } %i.fx, 0      ; 2 uses
  %i.fz = icmp eq i64 %i.fy, %9
  br i1 %i.fz, label %.split350.i, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit190.i

.split350.i:                                      ; preds = %.noexc.i
  %i.ga = extractvalue { i64, i32 } %i.fx, 1      ; 2 uses
  %i.gb = icmp ult i32 %i.ga, 1000000000
  tail call void @llvm.assume(i1 %i.gb)
  %i.gc = icmp samesign ugt i32 %i.ga, %10
  br i1 %i.gc, label %.loopexit379.i, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit190.thread.i

._crit_edge640.i:                                 ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalB9_.exit.i
  br i1 %i.mw, label %bb.bs, label %bb.bu

.lr.ph639.i:                                      ; preds = %..loopexit385_crit_edge.i.split.us, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalB9_.exit.i
  %.sroa.05.0.not638.not.i = phi i1 [ true, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalB9_.exit.i ], [ false, %..loopexit385_crit_edge.i.split.us ] ; 3 uses
  %.sroa.09.0637.i = phi i64 [ %.sroa.09.3.i, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalB9_.exit.i ], [ 0, %..loopexit385_crit_edge.i.split.us ] ; 13 uses
  %.sroa.038.0636.i = phi i64 [ %.sroa.038.3.i, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalB9_.exit.i ], [ 0, %..loopexit385_crit_edge.i.split.us ] ; 18 uses
  %i.gd = and i64 %.sroa.038.0636.i, 1023
  %i.ge = icmp ne i64 %i.gd, 0
  %or.cond170.i = select i1 %.sroa.05.0.not638.not.i, i1 true, i1 %i.ge
  %brmerge.i90 = or i1 %.not.i53, %or.cond170.i   ; 2 uses
  br i1 %brmerge.i90, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit199.thread.i, label %bb.cb

bb.bs:                                            ; preds = %._crit_edge640.i
  %i.gf = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.gg = sub nuw i64 %i.ez, %.sroa.038.3.i
  %i.gh = add i64 %.sroa.09.3.i, %.sroa.0323.0    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5898)
  %i.gi = load i64, ptr %i.t, align 8, !range !6, !alias.scope !5899, !noalias !5900, !noundef !5
  %i.gj = icmp eq i64 %i.mu, %i.gi
  br i1 %i.gj, label %bb.bt, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit181.i

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #34
          to label %._RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit181.i_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !5901

._RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit181.i_crit_edge: ; preds = %bb.bt
  %.pre797.a = load ptr, ptr %i.v, align 8, !alias.scope !5899, !noalias !5900
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit181.i
end_hunk_2
begin_hunk_3_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_:bb.a
  %i.aai = add i64 %i.rk, %.sroa.0.0              ; 3 uses
  %i.aaj = icmp ult i64 %i.aai, %i.q
  %i.aak = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.aai ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %i.aam = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.aai ; 2 uses
  %i.aan = getelementptr i8, ptr %i.aam, i64 8
  %i.aao = getelementptr i8, ptr %i.aam, i64 16
  %.645.i262 = select i1 %i.o, ptr %i.aan, ptr %i.aak
  %..i263 = select i1 %i.o, ptr %i.aao, ptr %i.aal
  %.fr = freeze i1 %i.aaj
  br i1 %.fr, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit190.thread.i261.split.us, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit190.thread.i261.split

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit190.thread.i261.split.us: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit190.thread.i261, %bb.hz
  %.sroa.0105.0612.i264.us = phi i64 [ %i.aap, %bb.hz ], [ %i.fa, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit190.thread.i261 ] ; 3 uses
  %i.aap = add i64 %.sroa.0105.0612.i264.us, -1   ; 6 uses
  %i.aaq = and i64 %i.aap, 1023
  %i.aar = icmp ne i64 %i.aaq, 0
  %brmerge365.i265.us = or i1 %.not.i53, %i.aar
  br i1 %brmerge365.i265.us, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.thread.i270.us, label %bb.ho

bb.ho:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit190.thread.i261.split.us
  %i.aas = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc272.i268.us unwind label %.loopexit.split-lp.loopexit.i266.split.us, !noalias !5929 ; 2 uses

.noexc272.i268.us:                                ; preds = %bb.ho
  %i.aat = extractvalue { i64, i32 } %i.aas, 0    ; 2 uses
  %i.aau = icmp eq i64 %i.aat, %9
  br i1 %i.aau, label %.split352.i283.us, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.i269.us

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.i269.us: ; preds = %.noexc272.i268.us
  %i.aav = icmp sgt i64 %i.aat, %9
  br i1 %i.aav, label %.loopexit379.i252, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.thread.i270.us

.split352.i283.us:                                ; preds = %.noexc272.i268.us
  %i.aaw = extractvalue { i64, i32 } %i.aas, 1    ; 2 uses
  %i.aax = icmp ult i32 %i.aaw, 1000000000
  tail call void @llvm.assume(i1 %i.aax)
  %i.aay = icmp samesign ugt i32 %i.aaw, %10
  br i1 %i.aay, label %.loopexit379.i252, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.thread.i270.us

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.thread.i270.us: ; preds = %.split352.i283.us, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.i269.us, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit190.thread.i261.split.us
  %i.aaz = add i64 %i.aap, %.sroa.0323.0          ; 3 uses
  %i.aba = icmp ult i64 %i.aaz, %i.k              ; 2 uses
  br i1 %i.i, label %bb.hr, label %bb.hp

bb.hp:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.thread.i270.us
  br i1 %i.aba, label %bb.hq, label %.invoke918.i

bb.hq:                                            ; preds = %bb.hp
  %i.abb = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.aaz ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 8
  br label %bb.ht

bb.hr:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.thread.i270.us
  br i1 %i.aba, label %bb.hs, label %.invoke918.i

bb.hs:                                            ; preds = %bb.hr
  %i.abd = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.aaz ; 2 uses
  %i.abe = getelementptr i8, ptr %i.abd, i64 8
  %i.abf = getelementptr i8, ptr %i.abd, i64 16
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hq
  %.sroa.5.1.i.in.i274.i.us = phi ptr [ %i.abf, %bb.hs ], [ %i.abc, %bb.hq ]
  %.sroa.0.1.i.in.i275.i.us = phi ptr [ %i.abe, %bb.hs ], [ %i.abb, %bb.hq ]
  %.sroa.5.1.i.i277.i272.us = load i64, ptr %.sroa.5.1.i.in.i274.i.us, align 8, !noalias !5959, !noundef !5 ; 2 uses
  %.sroa.5.1.i.i283.i273.us = load i64, ptr %..i263, align 8, !noalias !5960, !noundef !5
  %i.abg = icmp eq i64 %.sroa.5.1.i.i277.i272.us, %.sroa.5.1.i.i283.i273.us
  br i1 %i.abg, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit288.i280.us, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit288.thread.i274.us

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit288.i280.us: ; preds = %bb.ht
  %.sroa.0.1.i.i276.i271.us = load ptr, ptr %.sroa.0.1.i.in.i275.i.us, align 8, !noalias !5959, !nonnull !5, !noundef !5
  %.sroa.0.1.i.i282.i281.us = load ptr, ptr %.645.i262, align 8, !noalias !5960, !nonnull !5, !noundef !5
  %bcmp.i287.i282.us = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i276.i271.us, ptr nonnull readonly %.sroa.0.1.i.i282.i281.us, i64 %.sroa.5.1.i.i277.i272.us), !alias.scope !5961, !noalias !5929
  %i.abh = icmp eq i32 %bcmp.i287.i282.us, 0
  br i1 %i.abh, label %bb.hw, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit288.thread.i274.us

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit288.thread.i274.us: ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit288.i280.us, %bb.ht
  %i.abi = add i64 %i.aap, %i.aah                 ; 3 uses
  %i.abj = icmp ult i64 %i.abi, %i.re
  br i1 %i.abj, label %bb.hu, label %.invoke916.i

bb.hu:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit288.thread.i274.us
  %i.abk = add i64 %.sroa.0105.0612.i264.us, %i.aag ; 3 uses
  %i.abl = icmp ult i64 %i.abk, %i.re
  br i1 %i.abl, label %bb.hv, label %.invoke912.i

bb.hv:                                            ; preds = %bb.hu
  %i.abm = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.abi
  %i.abn = load i8, ptr %i.abm, align 1, !noalias !5929, !noundef !5
  %i.abo = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.abk
  %i.abp = load i8, ptr %i.abo, align 1, !noalias !5929, !noundef !5
  %..i.i275.us = tail call noundef i8 @llvm.umax.i8(i8 %i.abp, i8 %i.abn)
  br label %bb.hy

bb.hw:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit288.i280.us
  %i.abq = add i64 %.sroa.0105.0612.i264.us, %i.aah ; 3 uses
  %i.abr = icmp ult i64 %i.abq, %i.re
  br i1 %i.abr, label %bb.hx, label %.invoke916.i

bb.hx:                                            ; preds = %bb.hw
  %i.abs = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.abq
  %i.abt = load i8, ptr %i.abs, align 1, !noalias !5929, !noundef !5
  %i.abu = add i8 %i.abt, 1
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hv
  %.sroa.04.0.i276.us = phi i8 [ %i.abu, %bb.hx ], [ %..i.i275.us, %bb.hv ]
  %i.abv = add i64 %i.aap, %i.aag                 ; 3 uses
  %i.abw = icmp ult i64 %i.abv, %i.re
  br i1 %i.abw, label %bb.hz, label %.invoke912.i

bb.hz:                                            ; preds = %bb.hy
  %i.abx = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.abv
  store i8 %.sroa.04.0.i276.us, ptr %i.abx, align 1, !noalias !5929
  %.not168.i277.us = icmp eq i64 %i.aap, 0
  br i1 %.not168.i277.us, label %..loopexit385_crit_edge.i278.split.us, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit190.thread.i261.split.us

.loopexit.split-lp.loopexit.i266.split.us:        ; preds = %bb.ho
  %lpad.loopexit386.i267.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i115

..loopexit385_crit_edge.i278.split.us:            ; preds = %bb.hz
  %.not.i279 = icmp eq i64 %i.rk, 0
  br i1 %.not.i279, label %.lr.ph639.i140, label %.lr.ph615.split.i255

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit190.thread.i261.split: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit190.thread.i261
  %i.aby = and i64 %i.fa, 1023
  %i.abz = icmp ne i64 %i.aby, 1
  %brmerge365.i265 = or i1 %.not.i53, %i.abz
  br i1 %brmerge365.i265, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.thread.i270, label %bb.ia

bb.ia:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit190.thread.i261.split
  %i.aca = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc272.i268 unwind label %.loopexit.split-lp.loopexit.i266.split, !noalias !5929 ; 2 uses

.noexc272.i268:                                   ; preds = %bb.ia
  %i.acb = extractvalue { i64, i32 } %i.aca, 0    ; 2 uses
  %i.acc = icmp eq i64 %i.acb, %9
  br i1 %i.acc, label %.split352.i283, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.i269

.split352.i283:                                   ; preds = %.noexc272.i268
  %i.acd = extractvalue { i64, i32 } %i.aca, 1    ; 2 uses
  %i.ace = icmp ult i32 %i.acd, 1000000000
  tail call void @llvm.assume(i1 %i.ace)
  %i.acf = icmp samesign ugt i32 %i.acd, %10
  br i1 %i.acf, label %.loopexit379.i252, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.thread.i270

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.i269: ; preds = %.noexc272.i268
  %i.acg = icmp sgt i64 %i.acb, %9
  br i1 %i.acg, label %.loopexit379.i252, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.thread.i270

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.thread.i270: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.i269, %.split352.i283, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit190.thread.i261.split
  %i.ach = add i64 %i.g, -1
  %i.aci = icmp ult i64 %i.ach, %i.k
  %spec.select = select i1 %i.aci, ptr @95, ptr @94
  br label %.invoke918.i

.invoke912.i:                                     ; preds = %bb.hy, %bb.hu, %bb.fu, %bb.fr, %bb.gv, %bb.gt, %bb.gf, %bb.gh, %bb.hk
  %i.acj = phi i64 [ %i.tr, %bb.fr ], [ %i.ya, %bb.gv ], [ %i.zv, %bb.hk ], [ %i.vx, %bb.gf ], [ %i.re, %bb.gh ], [ %i.xs, %bb.gt ], [ %i.ue, %bb.fu ], [ %i.abk, %bb.hu ], [ %i.abv, %bb.hy ]
  %i.ack = phi ptr [ @77, %bb.fr ], [ @89, %bb.gv ], [ @93, %bb.hk ], [ @82, %bb.gf ], [ @84, %bb.gh ], [ @87, %bb.gt ], [ @79, %bb.fu ], [ @97, %bb.hu ], [ @99, %bb.hy ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.acj, i64 noundef %i.re, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ack) #38
          to label %.cont913.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i158, !noalias !5929

.cont913.i:                                       ; preds = %.invoke912.i
  unreachable

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread450: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit232.i170, %.split342.i196, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit211.i206, %.split339.i219, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit259.i236, %.split345.i251, %.loopexit379.i252
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rj) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rj, i64 noundef %i.re, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !5929
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit: ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit181.i136, %bb.fc, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit182.i109
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rj) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rj, i64 noundef %i.re, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !5929
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread447

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86.thread, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i97, %.loopexit379.i252, %.split.i286, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i, %.loopexit379.i, %.split.i, %.split439, %bb.bj, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit86, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdftwklc2oBO_7similar.exit194.sink.split.i.thread, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB6_4text12TextDiffSideeEB13_EB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0323.0, i64 noundef %i.g, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.acl = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.acm = trunc nuw i64 %i.acl to i1
  br i1 %i.acm, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread
  %i.acn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aco = load i64, ptr %i.acn, align 8, !noundef !5 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.acq = load i64, ptr %i.acp, align 8, !noundef !5 ; 2 uses
  tail call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias nofree noundef align 8 dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.aco, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0323.0, i64 noundef %i.acq, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias nofree noundef align 8 dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.aco, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.acq, i64 noundef %i.g, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread447

bb.ic:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.acr = sub nuw i64 %i.f, %.sroa.0.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5962)
  %i.acs = load i64, ptr %i.u, align 8, !alias.scope !5962, !noalias !5963, !noundef !5 ; 4 uses
  %i.act = load i64, ptr %i.t, align 8, !range !6, !alias.scope !5962, !noalias !5963, !noundef !5 ; 2 uses
  %i.acu = icmp eq i64 %i.acs, %i.act
  br i1 %i.acu, label %bb.id, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit287

bb.id:                                            ; preds = %bb.ic
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #34, !noalias !5963
  %.pre801 = load i64, ptr %i.t, align 8, !range !6, !alias.scope !5964, !noalias !5965
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit287

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit287: ; preds = %bb.ic, %bb.id
  %13 = phi i64 [ %i.act, %bb.ic ], [ %.pre801, %bb.id ]
  %i.acv = load ptr, ptr %i.v, align 8, !alias.scope !5962, !noalias !5963, !nonnull !5, !noundef !5 ; 2 uses
  %i.acw = getelementptr inbounds nuw [40 x i8], ptr %i.acv, i64 %i.acs ; 4 uses
  store i64 1, ptr %i.acw, align 8, !noalias !5962
  %.sroa.4391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4391.0..sroa_idx, align 8, !noalias !5962
  %.sroa.5392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acw, i64 16
  store i64 %i.acr, ptr %.sroa.5392.0..sroa_idx, align 8, !noalias !5962
  %.sroa.6393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acw, i64 24
  store i64 %.sroa.0323.0, ptr %.sroa.6393.0..sroa_idx, align 8, !noalias !5962
  %i.acx = add i64 %i.acs, 1                      ; 3 uses
  store i64 %i.acx, ptr %i.u, align 8, !alias.scope !5962, !noalias !5963
  %i.acy = sub nuw i64 %i.g, %.sroa.0323.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5964)
  %i.acz = icmp eq i64 %i.acx, %13
  br i1 %i.acz, label %bb.ie, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit288

bb.ie:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit287
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #34, !noalias !5965
  %.pre802 = load ptr, ptr %i.v, align 8, !alias.scope !5964, !noalias !5965
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit288

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit288: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit287, %bb.ie
  %14 = phi ptr [ %i.acv, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit287 ], [ %.pre802, %bb.ie ]
  %i.ada = getelementptr inbounds nuw [40 x i8], ptr %14, i64 %i.acx ; 4 uses
  store i64 2, ptr %i.ada, align 8, !noalias !5964
  %.sroa.4406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4406.0..sroa_idx, align 8, !noalias !5964
  %.sroa.5407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  store i64 %.sroa.0323.0, ptr %.sroa.5407.0..sroa_idx, align 8, !noalias !5964
  %.sroa.6408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ada, i64 24
  store i64 %i.acy, ptr %.sroa.6408.0..sroa_idx, align 8, !noalias !5964
  %i.adb = add i64 %i.acs, 2
  store i64 %i.adb, ptr %i.u, align 8, !alias.scope !5964, !noalias !5965
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread447

.thread:                                          ; preds = %bb.be
  %i.adc = sub nuw i64 %i.g, %.sroa.0323.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5966)
  %i.add = load i64, ptr %i.u, align 8, !alias.scope !5966, !noalias !5967, !noundef !5 ; 3 uses
  %i.ade = load i64, ptr %i.t, align 8, !range !6, !alias.scope !5966, !noalias !5967, !noundef !5
  %i.adf = icmp eq i64 %i.add, %i.ade
  br i1 %i.adf, label %bb.if, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit289

bb.if:                                            ; preds = %.thread
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #34, !noalias !5967
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit289

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit289: ; preds = %.thread, %bb.if
  %i.adg = load ptr, ptr %i.v, align 8, !alias.scope !5966, !noalias !5967, !nonnull !5, !noundef !5
  %i.adh = getelementptr inbounds nuw [40 x i8], ptr %i.adg, i64 %i.add ; 4 uses
  store i64 2, ptr %i.adh, align 8, !noalias !5966
  %.sroa.4401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4401.0..sroa_idx, align 8, !noalias !5966
  %.sroa.5402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adh, i64 16
  store i64 %.sroa.0323.0, ptr %.sroa.5402.0..sroa_idx, align 8, !noalias !5966
  %.sroa.6403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adh, i64 24
  store i64 %i.adc, ptr %.sroa.6403.0..sroa_idx, align 8, !noalias !5966
  %i.adi = add i64 %i.add, 1
  store i64 %i.adi, ptr %i.u, align 8, !alias.scope !5966, !noalias !5967
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread447

bb.ig:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread447
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5968)
  %i.adj = load i64, ptr %i.u, align 8, !alias.scope !5968, !noalias !5969, !noundef !5 ; 3 uses
  %i.adk = load i64, ptr %i.t, align 8, !range !6, !alias.scope !5968, !noalias !5969, !noundef !5
  %i.adl = icmp eq i64 %i.adj, %i.adk
  br i1 %i.adl, label %bb.ih, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit290

bb.ih:                                            ; preds = %bb.ig
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #34, !noalias !5969
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit290

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit290: ; preds = %bb.ig, %bb.ih
  %i.adm = load ptr, ptr %i.v, align 8, !alias.scope !5968, !noalias !5969, !nonnull !5, !noundef !5
  %i.adn = getelementptr inbounds nuw [40 x i8], ptr %i.adm, i64 %i.adj ; 4 uses
  store i64 0, ptr %i.adn, align 8, !noalias !5968
  %.sroa.4371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adn, i64 8
  store i64 %i.f, ptr %.sroa.4371.0..sroa_idx, align 8, !noalias !5968
  %.sroa.5372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adn, i64 16
  store i64 %i.g, ptr %.sroa.5372.0..sroa_idx, align 8, !noalias !5968
  %.sroa.6373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adn, i64 24
  store i64 %i.e, ptr %.sroa.6373.0..sroa_idx, align 8, !noalias !5968
  %i.ado = add i64 %i.adj, 1
  store i64 %i.ado, ptr %i.u, align 8, !alias.scope !5968, !noalias !5969
  br label %bb.ii

bb.ii:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread447, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit290
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1s_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2i_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6238)
  %i.a = icmp uge i64 %2, %3
  %i.b = icmp uge i64 %5, %6
  %or.cond.i72 = or i1 %i.a, %i.b
  br i1 %or.cond.i72, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %5
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %2
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i73 = icmp eq i64 %..i.i.i.i, 0
  br i1 %.not.i73, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !6238, !noalias !6239, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val9.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !6237, !noalias !6238 ; 2 uses
  %.val8.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !6237, !noalias !6238, !nonnull !5
  %.val10.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !6238, !noalias !6237, !nonnull !5
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.val9.i.i.i.i.i, i64 %2) ; 2 uses
  %umax40.i = tail call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.i, i64 %5) ; 2 uses
  %i.g = sub nuw i64 %umax40.i, %5
  %i.h = sub i64 %umax.i, %2
  %invariant.gep.i = getelementptr [16 x i8], ptr %.val10.i.i.i.i.i, i64 %5
  %invariant.gep60.i = getelementptr [16 x i8], ptr %.val8.i.i.i.i.i, i64 %2
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.sroa.01.051.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.i, %bb.h ] ; 7 uses
  %i.i = add nuw i64 %.sroa.01.051.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.01.051.i.i.i.i, %i.g
  br i1 %exitcond.not.i, label %bb.d, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax40.i, i64 noundef range(i64 0, 576460752303423488) %.val11.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #37, !noalias !6240
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i: ; preds = %bb.c
  %exitcond41.not.i = icmp eq i64 %.sroa.01.051.i.i.i.i, %i.h
  br i1 %exitcond41.not.i, label %bb.e, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit12.i.i.i.i.i

bb.e:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, 576460752303423488) %.val9.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #37, !noalias !6241
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit12.i.i.i.i.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.01.051.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6243)
  %i.j = load ptr, ptr %gep.i, align 8, !alias.scope !6242, !noalias !6244, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !6242, !noalias !6244, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6245)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !6245, !noalias !6246, !noundef !5
  %i.o = sub i64 %i.l, %i.n                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !6245, !noalias !6246, !noundef !5 ; 2 uses
  %i.r = icmp ult i64 %i.o, %i.q
  br i1 %i.r, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit6.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit12.i.i.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6247
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit6.i.i.i.i.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit12.i.i.i.i.i
  %gep61.i = getelementptr [16 x i8], ptr %invariant.gep60.i, i64 %.sroa.01.051.i.i.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !6245, !noalias !6246, !nonnull !5, !noundef !5
  %i.u = load ptr, ptr %gep61.i, align 8, !alias.scope !6243, !noalias !6248, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %gep61.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !6243, !noalias !6248, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6249)
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !6249, !noalias !6250, !noundef !5
  %i.z = sub i64 %i.w, %i.y                       ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !6249, !noalias !6250, !noundef !5 ; 2 uses
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit6.i.i.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6251
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit6.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.o
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !6249, !noalias !6250, !nonnull !5, !noundef !5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.z
  %.val.i.i.i.i.i = load i32, ptr %i.ad, align 4, !noalias !6252, !noundef !5
  %.val7.i.i.i.i.i = load i32, ptr %i.ag, align 4, !noalias !6252, !noundef !5
  %i.ah = icmp eq i32 %.val.i.i.i.i.i, %.val7.i.i.i.i.i
  br i1 %i.ah, label %bb.h, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit

bb.h:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i64 %i.i, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread474, label %bb.c

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i
  %.not = icmp eq i64 %.sroa.01.051.i.i.i.i, 0
  br i1 %.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread474

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread: ; preds = %bb.b, %bb.a, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread474, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit
  %.sroa.0.0.i74473 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit ], [ %.sroa.0.0.i74477, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread474 ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.ai = add i64 %.sroa.0.0.i74473, %2           ; 3 uses
  %i.aj = add i64 %.sroa.0.0.i74473, %5           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6254)
  %i.ak = icmp uge i64 %i.ai, %3
  %i.al = icmp uge i64 %i.aj, %6
  %or.cond.i75 = or i1 %i.ak, %i.al
  br i1 %or.cond.i75, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit_crit_edge, label %.lr.ph.i.i.i.i76

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit_crit_edge: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val50.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert1645 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val51.pre = load i64, ptr %.phi.trans.insert1645, align 8
  %.phi.trans.insert1647 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val48.pre = load ptr, ptr %.phi.trans.insert1647, align 8
  %.phi.trans.insert1649 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val49.pre = load i64, ptr %.phi.trans.insert1649, align 8
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit

.lr.ph.i.i.i.i76:                                 ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_:bb.a
  %i.ax = select i1 %i.av, ptr %i.aq, ptr %i.as, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !9566
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !alias.scope !9566
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !alias.scope !9566
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !9566
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l ; 8 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l ; 4 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 24
  %.val8.i30.i = load i64, ptr %i.bd, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.be = getelementptr i8, ptr %i.bb, i64 8
  %.val9.i31.i = load i64, ptr %i.be, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.bf = icmp ult i64 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bb, i64 56
  %.val6.i32.i = load i64, ptr %i.bg, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.bh = getelementptr i8, ptr %i.bb, i64 40
  %.val7.i33.i = load i64, ptr %i.bh, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.bi = icmp ult i64 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.bj = zext i1 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bj ; 3 uses
  %i.bl = xor i1 %i.bf, true
  %i.bm = zext i1 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bm ; 4 uses
  %i.bo = select i1 %i.bi, i64 3, i64 2
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bo ; 4 uses
  %i.bq = select i1 %i.bi, i64 2, i64 3
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bq ; 3 uses
  %i.bs = getelementptr i8, ptr %i.bp, i64 8
  %.val4.i34.i = load i64, ptr %i.bs, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.bt = getelementptr i8, ptr %i.bk, i64 8
  %.val5.i35.i = load i64, ptr %i.bt, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.bu = icmp ult i64 %.val4.i34.i, %.val5.i35.i ; 3 uses
  %i.bv = getelementptr i8, ptr %i.br, i64 8
  %.val2.i36.i = load i64, ptr %i.bv, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.bw = getelementptr i8, ptr %i.bn, i64 8
  %.val3.i37.i = load i64, ptr %i.bw, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.bx = icmp ult i64 %.val2.i36.i, %.val3.i37.i ; 3 uses
  %i.by = select i1 %i.bu, ptr %i.bp, ptr %i.bk, !unpredictable !5
  %i.bz = select i1 %i.bx, ptr %i.bn, ptr %i.br, !unpredictable !5
  %i.ca = select i1 %i.bx, ptr %i.bp, ptr %i.bn, !unpredictable !5
  %i.cb = select i1 %i.bu, ptr %i.bk, ptr %i.ca, !unpredictable !5 ; 3 uses
  %i.cc = select i1 %i.bu, ptr %i.bn, ptr %i.bp, !unpredictable !5
  %i.cd = select i1 %i.bx, ptr %i.br, ptr %i.cc, !unpredictable !5 ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val.i38.i = load i64, ptr %i.ce, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.cf = getelementptr i8, ptr %i.cb, i64 8
  %.val1.i39.i = load i64, ptr %i.cf, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.cg = icmp ult i64 %.val.i38.i, %.val1.i39.i  ; 2 uses
  %i.ch = select i1 %i.cg, ptr %i.cd, ptr %i.cb, !unpredictable !5
  %i.ci = select i1 %i.cg, ptr %i.cb, ptr %i.cd, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !alias.scope !9566
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !alias.scope !9566
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !alias.scope !9566
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !alias.scope !9566
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.ph.lcssa118, i64 16, i1 false), !alias.scope !9566
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !alias.scope !9566
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %i.co = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.l ; 2 uses
  %i.cp = icmp samesign ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.cp, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i, %bb.j
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l
  %i.cr = getelementptr [16 x i8], ptr %2, i64 %i.l ; 6 uses
  %i.cs = icmp samesign ult i64 %.sroa.0.0.i, %i.co
  br i1 %i.cs, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.dd, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.sroa.05.08.1.i
  %.idx321 = shl nuw nsw i64 %.sroa.05.08.1.i, 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx321 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false), !alias.scope !9566
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %.val9.i40.1.i = load i64, ptr %i.cv, align 8, !alias.scope !9565, !noalias !9564, !noundef !5 ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cu, i64 -8
  %.val10.i.1.i = load i64, ptr %i.cw, align 8, !alias.scope !9565, !noalias !9564, !noundef !5
  %i.cx = icmp ult i64 %.val9.i40.1.i, %.val10.i.1.i
  br i1 %i.cx, label %bb.k, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i

bb.k:                                             ; preds = %.lr.ph.1.i
  %i.cy = load ptr, ptr %i.cu, align 8, !alias.scope !9565, !noalias !9564, !nonnull !5, !align !9, !noundef !5
  %.sroa.0.0.i41.1.i310 = getelementptr inbounds i8, ptr %i.cu, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i310, i64 16, i1 false), !alias.scope !9565, !noalias !9564
  %i.cz = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cz, label %._crit_edge315, label %.lr.ph314

bb.l:                                             ; preds = %.lr.ph314
  %.sroa.0.0.i41.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i312, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i312, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i, i64 16, i1 false), !alias.scope !9565, !noalias !9564
  %i.da = icmp eq ptr %.sroa.0.0.i41.1.i, %i.cr
  br i1 %i.da, label %._crit_edge315, label %.lr.ph314

.lr.ph314:                                        ; preds = %bb.k, %bb.l
  %.sroa.0.0.i41.1.i312 = phi ptr [ %.sroa.0.0.i41.1.i, %bb.l ], [ %.sroa.0.0.i41.1.i310, %bb.k ] ; 5 uses
  %.sroa.5.0.i.1.i311 = phi ptr [ %.sroa.0.0.i41.1.i312, %bb.l ], [ %i.cu, %bb.k ] ; 2 uses
  %i.db = getelementptr i8, ptr %.sroa.5.0.i.1.i311, i64 -24
  %.val8.i42.1.i = load i64, ptr %i.db, align 8, !alias.scope !9565, !noalias !9564, !noundef !5
  %i.dc = icmp ult i64 %.val9.i40.1.i, %.val8.i42.1.i
  br i1 %i.dc, label %bb.l, label %._crit_edge315

._crit_edge315:                                   ; preds = %bb.l, %.lr.ph314, %bb.k
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.cu, %bb.k ], [ %.sroa.0.0.i41.1.i312, %bb.l ], [ %.sroa.5.0.i.1.i311, %.lr.ph314 ]
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %i.cr, %bb.k ], [ %i.cr, %bb.l ], [ %.sroa.0.0.i41.1.i312, %.lr.ph314 ]
  store ptr %i.cy, ptr %.sroa.0.0.i41.lcssa.1.i, align 8, !alias.scope !9565, !noalias !9567
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i64 %.val9.i40.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !9565, !noalias !9567
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i: ; preds = %._crit_edge315, %.lr.ph.1.i
  %i.dd = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.dd, %i.co
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i, %.loopexit.i
  %i.de = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.de
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.de
  %i.dh = getelementptr i8, ptr %i.cr, i64 -16
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.di = getelementptr i8, ptr %i.eb, i64 16     ; 2 uses
  %i.dj = getelementptr i8, ptr %i.ea, i64 16
  %i.dk = and i64 %.sroa.16.0.lcssa, 1
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.n, label %bb.m

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa118, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.dm, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.du, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %i.cr, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.eb, %.lr.ph.i.i ], [ %i.dh, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %i.dg, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.ec, %.lr.ph.i.i ], [ %i.df, %.loopexit.1.i ] ; 2 uses
  %i.dm = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.dn = getelementptr i8, ptr %.sroa.011.07.i.i, i64 8
  %.sroa.011.0.val.i.i = load i64, ptr %i.dn, align 8, !alias.scope !9568, !noalias !9564, !noundef !5
  %i.do = getelementptr i8, ptr %.sroa.06.08.i.i, i64 8
  %.sroa.06.0.val.i.i = load i64, ptr %i.do, align 8, !alias.scope !9568, !noalias !9564, !noundef !5
  %i.dp = icmp ult i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i21.i.i = select i1 %i.dp, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.dq = xor i1 %i.dp, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.i, i64 16, i1 false), !alias.scope !9566, !noalias !9569
  %i.dr = zext i1 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.07.i.i, i64 %i.dr ; 4 uses
  %i.dt = zext i1 %i.dq to i64
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.08.i.i, i64 %i.dt ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 16 ; 2 uses
  %i.dw = getelementptr i8, ptr %.sroa.017.05.i.i, i64 8
  %.sroa.017.0.val.i.i = load i64, ptr %i.dw, align 8, !alias.scope !9568, !noalias !9564, !noundef !5
  %i.dx = getelementptr i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.015.0.val.i.i = load i64, ptr %i.dx, align 8, !alias.scope !9568, !noalias !9564, !noundef !5
  %i.dy = icmp ult i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.dy, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.dz = xor i1 %i.dy, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i, i64 16, i1 false), !alias.scope !9566, !noalias !9570
  %.neg.i.i.i = sext i1 %i.dz to i64
  %i.ea = getelementptr [16 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.dy to i64
  %i.eb = getelementptr [16 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -16
  %exitcond.not.i.i = icmp eq i64 %i.dm, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ed = icmp ult ptr %i.du, %i.di               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.ed, ptr %i.du, ptr %i.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i.i, i64 16, i1 false), !alias.scope !9566
  %i.ee = zext i1 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.ee
  %i.eg = xor i1 %i.ed, true
  %i.eh = zext i1 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.eh
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.ds, %._crit_edge.i.i ], [ %i.ei, %bb.m ]
  %.sroa.06.1.i.i = phi ptr [ %i.du, %._crit_edge.i.i ], [ %i.ef, %bb.m ]
  %i.ej = icmp ne ptr %.sroa.06.1.i.i, %i.di
  %i.ek = icmp ne ptr %.sroa.011.1.i.i, %i.dj
  %or.cond.i.i = select i1 %i.ej, i1 true, i1 %i.ek, !prof !25
  br i1 %or.cond.i.i, label %bb.o, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1v_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit, !prof !25

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #37
          to label %.noexc.i unwind label %bb.p, !noalias !9566

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = shl nuw nsw i64 %.sroa.16.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa118, ptr nonnull align 8 %2, i64 %i.em, i1 false), !alias.scope !9566, !noalias !9571
  resume { ptr, i32 } %i.el

.lr.ph.i:                                         ; preds = %bb.j, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.ex, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 4
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false), !alias.scope !9566
  %i.ep = getelementptr i8, ptr %i.eo, i64 8
  %.val9.i40.i = load i64, ptr %i.ep, align 8, !alias.scope !9565, !noalias !9564, !noundef !5 ; 3 uses
  %i.eq = getelementptr i8, ptr %i.eo, i64 -8
  %.val10.i.i = load i64, ptr %i.eq, align 8, !alias.scope !9565, !noalias !9564, !noundef !5
  %i.er = icmp ult i64 %.val9.i40.i, %.val10.i.i
  br i1 %i.er, label %bb.q, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.es = load ptr, ptr %i.eo, align 8, !alias.scope !9565, !noalias !9564, !nonnull !5, !align !9, !noundef !5
  %.sroa.0.0.i41.i299 = getelementptr inbounds i8, ptr %i.eo, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i299, i64 16, i1 false), !alias.scope !9565, !noalias !9564
  %i.et = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.et, label %._crit_edge304, label %.lr.ph303

bb.r:                                             ; preds = %.lr.ph303
  %.sroa.0.0.i41.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i301, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i301, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i, i64 16, i1 false), !alias.scope !9565, !noalias !9564
  %i.eu = icmp eq ptr %.sroa.0.0.i41.i, %2
  br i1 %i.eu, label %._crit_edge304, label %.lr.ph303

.lr.ph303:                                        ; preds = %bb.q, %bb.r
  %.sroa.0.0.i41.i301 = phi ptr [ %.sroa.0.0.i41.i, %bb.r ], [ %.sroa.0.0.i41.i299, %bb.q ] ; 5 uses
  %.sroa.5.0.i.i300 = phi ptr [ %.sroa.0.0.i41.i301, %bb.r ], [ %i.eo, %bb.q ] ; 2 uses
  %i.ev = getelementptr i8, ptr %.sroa.5.0.i.i300, i64 -24
  %.val8.i42.i = load i64, ptr %i.ev, align 8, !alias.scope !9565, !noalias !9564, !noundef !5
  %i.ew = icmp ult i64 %.val9.i40.i, %.val8.i42.i
  br i1 %i.ew, label %bb.r, label %._crit_edge304

._crit_edge304:                                   ; preds = %bb.r, %.lr.ph303, %bb.q
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.eo, %bb.q ], [ %.sroa.0.0.i41.i301, %bb.r ], [ %.sroa.5.0.i.i300, %.lr.ph303 ]
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %2, %bb.q ], [ %2, %bb.r ], [ %.sroa.0.0.i41.i301, %.lr.ph303 ]
  store ptr %i.es, ptr %.sroa.0.0.i41.lcssa.i, align 8, !alias.scope !9565, !noalias !9567
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i64 %.val9.i40.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !9565, !noalias !9567
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i: ; preds = %._crit_edge304, %.lr.ph.i
  %i.ex = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ex, %i.l
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0120.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph126, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBZ_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyjNCINvBZ_6uniqueB1T_Es1_0E0EB13_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph127, i64 noundef %.sroa.16.0120.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1v_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit

.lr.ph295:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0119294 = phi i32 [ %i.ey, %bb.b ], [ %.sroa.025.0.ph125, %.lr.ph ]
  %.sroa.16.0120293 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph126, %.lr.ph ] ; 21 uses
  %i.ey = add i32 %.sroa.025.0119294, -1          ; 4 uses
  %i.ez = lshr i64 %.sroa.16.0120293, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ez, 6
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.ez, 112
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %.idx2.i ; 3 uses
  %i.fc = icmp samesign ult i64 %.sroa.16.0120293, 64
  br i1 %i.fc, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB12_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph295
  %i.fd = call fastcc noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB17_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB14_11sort_by_keyjNCINvB17_6uniqueB21_Es1_0E0EB1b_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph127, ptr noundef readonly %i.fa, ptr noundef readonly %i.fb, i64 noundef %i.ez)
  br label %bb.t

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB12_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i: ; preds = %.lr.ph295
  %.val6.i = load i64, ptr %i.d, align 8, !alias.scope !9572, !noundef !5 ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fa, i64 8
  %.val7.i = load i64, ptr %i.fe, align 8, !alias.scope !9572, !noundef !5 ; 2 uses
  %i.ff = icmp ult i64 %.val6.i, %.val7.i         ; 2 uses
  %i.fg = getelementptr i8, ptr %i.fb, i64 8
  %.val5.i = load i64, ptr %i.fg, align 8, !alias.scope !9572, !noundef !5 ; 2 uses
  %i.fh = icmp ult i64 %.val6.i, %.val5.i
  %i.fi = xor i1 %i.ff, %i.fh
  %i.fj = icmp ult i64 %.val7.i, %.val5.i
  %i.fk = xor i1 %i.ff, %i.fj
  %..i.i = select i1 %i.fk, ptr %i.fb, ptr %i.fa
  %.sroa.0.0.i.i = select i1 %i.fi, ptr %.sroa.0.0.ph127, ptr %..i.i
  br label %bb.t

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1v_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit: ; preds = %.outer._crit_edge.thread, %bb.n, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.t:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB12_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i, %bb.s
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB12_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i ], [ %i.fd, %bb.s ]
  %i.fl = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fm = sub nuw i64 %i.fl, %i.e                 ; 2 uses
  %.sroa.0.0.i37 = lshr exact i64 %i.fm, 4        ; 3 uses
  %i.fn = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0120293
  call void @llvm.assume(i1 %i.fn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %i.fm ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 5 uses
  %i.fr = load i64, ptr %i.fq, align 8            ; 2 uses
  store ptr %i.fp, ptr %i.a, align 8
  store i64 %i.fr, ptr %i.c, align 8
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.028.0.val = load i64, ptr %i.f, align 8, !noundef !5
  %i.fs = icmp ult i64 %.sroa.028.0.val, %i.fr
  br i1 %i.fs, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !9573)
  %.not83 = icmp samesign ult i64 %3, %.sroa.16.0120293
  br i1 %.not83, label %bb.x, label %bb.w, !prof !25

bb.w:                                             ; preds = %bb.v
  %i.ft = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0120293 ; 4 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.z, %bb.w
  %.sroa.43.0.i = phi ptr [ %i.ft, %bb.w ], [ %i.hl, %bb.z ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.w ], [ %.sroa.27.2.lcssa.i, %bb.z ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph127, %bb.w ], [ %i.hn, %bb.z ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.w ], [ %.sroa.16.0120293, %bb.z ] ; 3 uses
  %i.fu = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i38, i64 3)
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %i.fu ; 2 uses
  %i.fw = icmp ult ptr %.sroa.9.0.i, %i.fv
  br i1 %i.fw, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.y, %.lr.ph.i40
  %.sroa.9.131.i = phi ptr [ %i.gy, %.lr.ph.i40 ], [ %.sroa.9.0.i, %bb.y ] ; 9 uses
  %.sroa.27.130.i = phi i64 [ %i.gx, %.lr.ph.i40 ], [ %.sroa.27.0.i, %bb.y ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.gu, %.lr.ph.i40 ], [ %.sroa.43.0.i, %bb.y ] ; 4 uses
  %i.fx = getelementptr i8, ptr %.sroa.9.131.i, i64 8
  %.val21.i = load i64, ptr %i.fx, align 8, !alias.scope !9574, !noalias !9573, !noundef !5
  %.val22.i = load i64, ptr %i.fq, align 8, !alias.scope !9574, !noalias !9573, !noundef !5 ; 4 uses
  %i.fy = icmp ult i64 %.val21.i, %.val22.i       ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i.i = select i1 %i.fy, ptr %2, ptr %i.fz
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !alias.scope !9575, !noalias !9576
  %i.gb = zext i1 %i.fy to i64
  %i.gc = add i64 %.sroa.27.130.i, %i.gb          ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16
  %i.ge = getelementptr i8, ptr %.sroa.9.131.i, i64 24
  %.val19.i = load i64, ptr %i.ge, align 8, !alias.scope !9574, !noalias !9573, !noundef !5
  %i.gf = icmp ult i64 %.val19.i, %.val22.i       ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32
  %.sroa.01.0.i23.i = select i1 %i.gf, ptr %2, ptr %i.gg
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i, i64 %i.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i64 16, i1 false), !alias.scope !9575, !noalias !9577
  %i.gi = zext i1 %i.gf to i64
  %i.gj = add i64 %i.gc, %i.gi                    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32
  %i.gl = getelementptr i8, ptr %.sroa.9.131.i, i64 40
  %.val17.i = load i64, ptr %i.gl, align 8, !alias.scope !9574, !noalias !9573, !noundef !5
  %i.gm = icmp ult i64 %.val17.i, %.val22.i       ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48
  %.sroa.01.0.i24.i = select i1 %i.gm, ptr %2, ptr %i.gn
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i, i64 %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.go, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 16, i1 false), !alias.scope !9575, !noalias !9578
  %i.gp = zext i1 %i.gm to i64
  %i.gq = add i64 %i.gj, %i.gp                    ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48
  %i.gs = getelementptr i8, ptr %.sroa.9.131.i, i64 56
  %.val15.i = load i64, ptr %i.gs, align 8, !alias.scope !9574, !noalias !9573, !noundef !5
  %i.gt = icmp ult i64 %.val15.i, %.val22.i       ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.gt, ptr %2, ptr %i.gu
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i, i64 %i.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i64 16, i1 false), !alias.scope !9575, !noalias !9579
  %i.gw = zext i1 %i.gt to i64
  %i.gx = add i64 %i.gq, %i.gw                    ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64 ; 3 uses
  %i.gz = icmp ult ptr %i.gy, %i.fv
  br i1 %i.gz, label %.lr.ph.i40, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i40, %bb.y
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.y ], [ %i.gu, %.lr.ph.i40 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.y ], [ %i.gx, %.lr.ph.i40 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.y ], [ %i.gy, %.lr.ph.i40 ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.0.0.i38 ; 2 uses
  %i.hb = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ha
  br i1 %i.hb, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.hf, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.hi, %.lr.ph38.i ] ; 14 uses
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_:bb.a
  %i.ax = select i1 %i.av, ptr %i.aq, ptr %i.as, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !9648
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !alias.scope !9648
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !alias.scope !9648
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !9648
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l ; 8 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l ; 4 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 24
  %.val8.i30.i = load i64, ptr %i.bd, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.be = getelementptr i8, ptr %i.bb, i64 8
  %.val9.i31.i = load i64, ptr %i.be, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.bf = icmp ult i64 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bb, i64 56
  %.val6.i32.i = load i64, ptr %i.bg, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.bh = getelementptr i8, ptr %i.bb, i64 40
  %.val7.i33.i = load i64, ptr %i.bh, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.bi = icmp ult i64 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.bj = zext i1 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bj ; 3 uses
  %i.bl = xor i1 %i.bf, true
  %i.bm = zext i1 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bm ; 4 uses
  %i.bo = select i1 %i.bi, i64 3, i64 2
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bo ; 4 uses
  %i.bq = select i1 %i.bi, i64 2, i64 3
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bq ; 3 uses
  %i.bs = getelementptr i8, ptr %i.bp, i64 8
  %.val4.i34.i = load i64, ptr %i.bs, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.bt = getelementptr i8, ptr %i.bk, i64 8
  %.val5.i35.i = load i64, ptr %i.bt, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.bu = icmp ult i64 %.val4.i34.i, %.val5.i35.i ; 3 uses
  %i.bv = getelementptr i8, ptr %i.br, i64 8
  %.val2.i36.i = load i64, ptr %i.bv, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.bw = getelementptr i8, ptr %i.bn, i64 8
  %.val3.i37.i = load i64, ptr %i.bw, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.bx = icmp ult i64 %.val2.i36.i, %.val3.i37.i ; 3 uses
  %i.by = select i1 %i.bu, ptr %i.bp, ptr %i.bk, !unpredictable !5
  %i.bz = select i1 %i.bx, ptr %i.bn, ptr %i.br, !unpredictable !5
  %i.ca = select i1 %i.bx, ptr %i.bp, ptr %i.bn, !unpredictable !5
  %i.cb = select i1 %i.bu, ptr %i.bk, ptr %i.ca, !unpredictable !5 ; 3 uses
  %i.cc = select i1 %i.bu, ptr %i.bn, ptr %i.bp, !unpredictable !5
  %i.cd = select i1 %i.bx, ptr %i.br, ptr %i.cc, !unpredictable !5 ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val.i38.i = load i64, ptr %i.ce, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.cf = getelementptr i8, ptr %i.cb, i64 8
  %.val1.i39.i = load i64, ptr %i.cf, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.cg = icmp ult i64 %.val.i38.i, %.val1.i39.i  ; 2 uses
  %i.ch = select i1 %i.cg, ptr %i.cd, ptr %i.cb, !unpredictable !5
  %i.ci = select i1 %i.cg, ptr %i.cb, ptr %i.cd, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !alias.scope !9648
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !alias.scope !9648
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !alias.scope !9648
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !alias.scope !9648
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.ph.lcssa118, i64 16, i1 false), !alias.scope !9648
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !alias.scope !9648
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %i.co = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.l ; 2 uses
  %i.cp = icmp samesign ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.cp, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i, %bb.j
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l
  %i.cr = getelementptr [16 x i8], ptr %2, i64 %i.l ; 6 uses
  %i.cs = icmp samesign ult i64 %.sroa.0.0.i, %i.co
  br i1 %i.cs, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.dd, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.sroa.05.08.1.i
  %.idx321 = shl nuw nsw i64 %.sroa.05.08.1.i, 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx321 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false), !alias.scope !9648
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %.val9.i40.1.i = load i64, ptr %i.cv, align 8, !alias.scope !9647, !noalias !9646, !noundef !5 ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cu, i64 -8
  %.val10.i.1.i = load i64, ptr %i.cw, align 8, !alias.scope !9647, !noalias !9646, !noundef !5
  %i.cx = icmp ult i64 %.val9.i40.1.i, %.val10.i.1.i
  br i1 %i.cx, label %bb.k, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i

bb.k:                                             ; preds = %.lr.ph.1.i
  %i.cy = load ptr, ptr %i.cu, align 8, !alias.scope !9647, !noalias !9646, !nonnull !5, !align !9, !noundef !5
  %.sroa.0.0.i41.1.i310 = getelementptr inbounds i8, ptr %i.cu, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i310, i64 16, i1 false), !alias.scope !9647, !noalias !9646
  %i.cz = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cz, label %._crit_edge315, label %.lr.ph314

bb.l:                                             ; preds = %.lr.ph314
  %.sroa.0.0.i41.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i312, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i312, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i, i64 16, i1 false), !alias.scope !9647, !noalias !9646
  %i.da = icmp eq ptr %.sroa.0.0.i41.1.i, %i.cr
  br i1 %i.da, label %._crit_edge315, label %.lr.ph314

.lr.ph314:                                        ; preds = %bb.k, %bb.l
  %.sroa.0.0.i41.1.i312 = phi ptr [ %.sroa.0.0.i41.1.i, %bb.l ], [ %.sroa.0.0.i41.1.i310, %bb.k ] ; 5 uses
  %.sroa.5.0.i.1.i311 = phi ptr [ %.sroa.0.0.i41.1.i312, %bb.l ], [ %i.cu, %bb.k ] ; 2 uses
  %i.db = getelementptr i8, ptr %.sroa.5.0.i.1.i311, i64 -24
  %.val8.i42.1.i = load i64, ptr %i.db, align 8, !alias.scope !9647, !noalias !9646, !noundef !5
  %i.dc = icmp ult i64 %.val9.i40.1.i, %.val8.i42.1.i
  br i1 %i.dc, label %bb.l, label %._crit_edge315

._crit_edge315:                                   ; preds = %bb.l, %.lr.ph314, %bb.k
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.cu, %bb.k ], [ %.sroa.0.0.i41.1.i312, %bb.l ], [ %.sroa.5.0.i.1.i311, %.lr.ph314 ]
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %i.cr, %bb.k ], [ %i.cr, %bb.l ], [ %.sroa.0.0.i41.1.i312, %.lr.ph314 ]
  store ptr %i.cy, ptr %.sroa.0.0.i41.lcssa.1.i, align 8, !alias.scope !9647, !noalias !9649
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i64 %.val9.i40.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !9647, !noalias !9649
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i: ; preds = %._crit_edge315, %.lr.ph.1.i
  %i.dd = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.dd, %i.co
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i, %.loopexit.i
  %i.de = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.de
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.de
  %i.dh = getelementptr i8, ptr %i.cr, i64 -16
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.di = getelementptr i8, ptr %i.eb, i64 16     ; 2 uses
  %i.dj = getelementptr i8, ptr %i.ea, i64 16
  %i.dk = and i64 %.sroa.16.0.lcssa, 1
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.n, label %bb.m

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa118, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.dm, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.du, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %i.cr, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.eb, %.lr.ph.i.i ], [ %i.dh, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %i.dg, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.ec, %.lr.ph.i.i ], [ %i.df, %.loopexit.1.i ] ; 2 uses
  %i.dm = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.dn = getelementptr i8, ptr %.sroa.011.07.i.i, i64 8
  %.sroa.011.0.val.i.i = load i64, ptr %i.dn, align 8, !alias.scope !9650, !noalias !9646, !noundef !5
  %i.do = getelementptr i8, ptr %.sroa.06.08.i.i, i64 8
  %.sroa.06.0.val.i.i = load i64, ptr %i.do, align 8, !alias.scope !9650, !noalias !9646, !noundef !5
  %i.dp = icmp ult i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i21.i.i = select i1 %i.dp, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.dq = xor i1 %i.dp, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.i, i64 16, i1 false), !alias.scope !9648, !noalias !9651
  %i.dr = zext i1 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.07.i.i, i64 %i.dr ; 4 uses
  %i.dt = zext i1 %i.dq to i64
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.08.i.i, i64 %i.dt ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 16 ; 2 uses
  %i.dw = getelementptr i8, ptr %.sroa.017.05.i.i, i64 8
  %.sroa.017.0.val.i.i = load i64, ptr %i.dw, align 8, !alias.scope !9650, !noalias !9646, !noundef !5
  %i.dx = getelementptr i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.015.0.val.i.i = load i64, ptr %i.dx, align 8, !alias.scope !9650, !noalias !9646, !noundef !5
  %i.dy = icmp ult i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.dy, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.dz = xor i1 %i.dy, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i, i64 16, i1 false), !alias.scope !9648, !noalias !9652
  %.neg.i.i.i = sext i1 %i.dz to i64
  %i.ea = getelementptr [16 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.dy to i64
  %i.eb = getelementptr [16 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -16
  %exitcond.not.i.i = icmp eq i64 %i.dm, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ed = icmp ult ptr %i.du, %i.di               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.ed, ptr %i.du, ptr %i.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i.i, i64 16, i1 false), !alias.scope !9648
  %i.ee = zext i1 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.ee
  %i.eg = xor i1 %i.ed, true
  %i.eh = zext i1 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.eh
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.ds, %._crit_edge.i.i ], [ %i.ei, %bb.m ]
  %.sroa.06.1.i.i = phi ptr [ %i.du, %._crit_edge.i.i ], [ %i.ef, %bb.m ]
  %i.ej = icmp ne ptr %.sroa.06.1.i.i, %i.di
  %i.ek = icmp ne ptr %.sroa.011.1.i.i, %i.dj
  %or.cond.i.i = select i1 %i.ej, i1 true, i1 %i.ek, !prof !25
  br i1 %or.cond.i.i, label %bb.o, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1z_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit, !prof !25

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #37
          to label %.noexc.i unwind label %bb.p, !noalias !9648

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = shl nuw nsw i64 %.sroa.16.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa118, ptr nonnull align 8 %2, i64 %i.em, i1 false), !alias.scope !9648, !noalias !9653
  resume { ptr, i32 } %i.el

.lr.ph.i:                                         ; preds = %bb.j, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.ex, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 4
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false), !alias.scope !9648
  %i.ep = getelementptr i8, ptr %i.eo, i64 8
  %.val9.i40.i = load i64, ptr %i.ep, align 8, !alias.scope !9647, !noalias !9646, !noundef !5 ; 3 uses
  %i.eq = getelementptr i8, ptr %i.eo, i64 -8
  %.val10.i.i = load i64, ptr %i.eq, align 8, !alias.scope !9647, !noalias !9646, !noundef !5
  %i.er = icmp ult i64 %.val9.i40.i, %.val10.i.i
  br i1 %i.er, label %bb.q, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.es = load ptr, ptr %i.eo, align 8, !alias.scope !9647, !noalias !9646, !nonnull !5, !align !9, !noundef !5
  %.sroa.0.0.i41.i299 = getelementptr inbounds i8, ptr %i.eo, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i299, i64 16, i1 false), !alias.scope !9647, !noalias !9646
  %i.et = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.et, label %._crit_edge304, label %.lr.ph303

bb.r:                                             ; preds = %.lr.ph303
  %.sroa.0.0.i41.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i301, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i301, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i, i64 16, i1 false), !alias.scope !9647, !noalias !9646
  %i.eu = icmp eq ptr %.sroa.0.0.i41.i, %2
  br i1 %i.eu, label %._crit_edge304, label %.lr.ph303

.lr.ph303:                                        ; preds = %bb.q, %bb.r
  %.sroa.0.0.i41.i301 = phi ptr [ %.sroa.0.0.i41.i, %bb.r ], [ %.sroa.0.0.i41.i299, %bb.q ] ; 5 uses
  %.sroa.5.0.i.i300 = phi ptr [ %.sroa.0.0.i41.i301, %bb.r ], [ %i.eo, %bb.q ] ; 2 uses
  %i.ev = getelementptr i8, ptr %.sroa.5.0.i.i300, i64 -24
  %.val8.i42.i = load i64, ptr %i.ev, align 8, !alias.scope !9647, !noalias !9646, !noundef !5
  %i.ew = icmp ult i64 %.val9.i40.i, %.val8.i42.i
  br i1 %i.ew, label %bb.r, label %._crit_edge304

._crit_edge304:                                   ; preds = %bb.r, %.lr.ph303, %bb.q
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.eo, %bb.q ], [ %.sroa.0.0.i41.i301, %bb.r ], [ %.sroa.5.0.i.i300, %.lr.ph303 ]
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %2, %bb.q ], [ %2, %bb.r ], [ %.sroa.0.0.i41.i301, %.lr.ph303 ]
  store ptr %i.es, ptr %.sroa.0.0.i41.lcssa.i, align 8, !alias.scope !9647, !noalias !9649
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i64 %.val9.i40.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !9647, !noalias !9649
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i: ; preds = %._crit_edge304, %.lr.ph.i
  %i.ex = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ex, %i.l
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0120.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph126, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB13_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyjNCINvBZ_6uniqueB1T_Es1_0E0EB13_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph127, i64 noundef %.sroa.16.0120.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1z_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit

.lr.ph295:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0119294 = phi i32 [ %i.ey, %bb.b ], [ %.sroa.025.0.ph125, %.lr.ph ]
  %.sroa.16.0120293 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph126, %.lr.ph ] ; 21 uses
  %i.ey = add i32 %.sroa.025.0119294, -1          ; 4 uses
  %i.ez = lshr i64 %.sroa.16.0120293, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ez, 6
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.ez, 112
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %.idx2.i ; 3 uses
  %i.fc = icmp samesign ult i64 %.sroa.16.0120293, 64
  br i1 %i.fc, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB16_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph295
  %i.fd = call fastcc noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1b_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB14_11sort_by_keyjNCINvB17_6uniqueB21_Es1_0E0EB1b_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph127, ptr noundef readonly %i.fa, ptr noundef readonly %i.fb, i64 noundef %i.ez)
  br label %bb.t

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB16_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i: ; preds = %.lr.ph295
  %.val6.i = load i64, ptr %i.d, align 8, !alias.scope !9654, !noundef !5 ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fa, i64 8
  %.val7.i = load i64, ptr %i.fe, align 8, !alias.scope !9654, !noundef !5 ; 2 uses
  %i.ff = icmp ult i64 %.val6.i, %.val7.i         ; 2 uses
  %i.fg = getelementptr i8, ptr %i.fb, i64 8
  %.val5.i = load i64, ptr %i.fg, align 8, !alias.scope !9654, !noundef !5 ; 2 uses
  %i.fh = icmp ult i64 %.val6.i, %.val5.i
  %i.fi = xor i1 %i.ff, %i.fh
  %i.fj = icmp ult i64 %.val7.i, %.val5.i
  %i.fk = xor i1 %i.ff, %i.fj
  %..i.i = select i1 %i.fk, ptr %i.fb, ptr %i.fa
  %.sroa.0.0.i.i = select i1 %i.fi, ptr %.sroa.0.0.ph127, ptr %..i.i
  br label %bb.t

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1z_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit: ; preds = %.outer._crit_edge.thread, %bb.n, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.t:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB16_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i, %bb.s
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB16_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i ], [ %i.fd, %bb.s ]
  %i.fl = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fm = sub nuw i64 %i.fl, %i.e                 ; 2 uses
  %.sroa.0.0.i37 = lshr exact i64 %i.fm, 4        ; 3 uses
  %i.fn = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0120293
  call void @llvm.assume(i1 %i.fn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %i.fm ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 5 uses
  %i.fr = load i64, ptr %i.fq, align 8            ; 2 uses
  store ptr %i.fp, ptr %i.a, align 8
  store i64 %i.fr, ptr %i.c, align 8
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.028.0.val = load i64, ptr %i.f, align 8, !noundef !5
  %i.fs = icmp ult i64 %.sroa.028.0.val, %i.fr
  br i1 %i.fs, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !9655)
  %.not83 = icmp samesign ult i64 %3, %.sroa.16.0120293
  br i1 %.not83, label %bb.x, label %bb.w, !prof !25

bb.w:                                             ; preds = %bb.v
  %i.ft = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0120293 ; 4 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.z, %bb.w
  %.sroa.43.0.i = phi ptr [ %i.ft, %bb.w ], [ %i.hl, %bb.z ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.w ], [ %.sroa.27.2.lcssa.i, %bb.z ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph127, %bb.w ], [ %i.hn, %bb.z ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.w ], [ %.sroa.16.0120293, %bb.z ] ; 3 uses
  %i.fu = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i38, i64 3)
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %i.fu ; 2 uses
  %i.fw = icmp ult ptr %.sroa.9.0.i, %i.fv
  br i1 %i.fw, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.y, %.lr.ph.i40
  %.sroa.9.131.i = phi ptr [ %i.gy, %.lr.ph.i40 ], [ %.sroa.9.0.i, %bb.y ] ; 9 uses
  %.sroa.27.130.i = phi i64 [ %i.gx, %.lr.ph.i40 ], [ %.sroa.27.0.i, %bb.y ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.gu, %.lr.ph.i40 ], [ %.sroa.43.0.i, %bb.y ] ; 4 uses
  %i.fx = getelementptr i8, ptr %.sroa.9.131.i, i64 8
  %.val21.i = load i64, ptr %i.fx, align 8, !alias.scope !9656, !noalias !9655, !noundef !5
  %.val22.i = load i64, ptr %i.fq, align 8, !alias.scope !9656, !noalias !9655, !noundef !5 ; 4 uses
  %i.fy = icmp ult i64 %.val21.i, %.val22.i       ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i.i = select i1 %i.fy, ptr %2, ptr %i.fz
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !alias.scope !9657, !noalias !9658
  %i.gb = zext i1 %i.fy to i64
  %i.gc = add i64 %.sroa.27.130.i, %i.gb          ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16
  %i.ge = getelementptr i8, ptr %.sroa.9.131.i, i64 24
  %.val19.i = load i64, ptr %i.ge, align 8, !alias.scope !9656, !noalias !9655, !noundef !5
  %i.gf = icmp ult i64 %.val19.i, %.val22.i       ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32
  %.sroa.01.0.i23.i = select i1 %i.gf, ptr %2, ptr %i.gg
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i, i64 %i.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i64 16, i1 false), !alias.scope !9657, !noalias !9659
  %i.gi = zext i1 %i.gf to i64
  %i.gj = add i64 %i.gc, %i.gi                    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32
  %i.gl = getelementptr i8, ptr %.sroa.9.131.i, i64 40
  %.val17.i = load i64, ptr %i.gl, align 8, !alias.scope !9656, !noalias !9655, !noundef !5
  %i.gm = icmp ult i64 %.val17.i, %.val22.i       ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48
  %.sroa.01.0.i24.i = select i1 %i.gm, ptr %2, ptr %i.gn
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i, i64 %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.go, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 16, i1 false), !alias.scope !9657, !noalias !9660
  %i.gp = zext i1 %i.gm to i64
  %i.gq = add i64 %i.gj, %i.gp                    ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48
  %i.gs = getelementptr i8, ptr %.sroa.9.131.i, i64 56
  %.val15.i = load i64, ptr %i.gs, align 8, !alias.scope !9656, !noalias !9655, !noundef !5
  %i.gt = icmp ult i64 %.val15.i, %.val22.i       ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.gt, ptr %2, ptr %i.gu
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i, i64 %i.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i64 16, i1 false), !alias.scope !9657, !noalias !9661
  %i.gw = zext i1 %i.gt to i64
  %i.gx = add i64 %i.gq, %i.gw                    ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64 ; 3 uses
  %i.gz = icmp ult ptr %i.gy, %i.fv
  br i1 %i.gz, label %.lr.ph.i40, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i40, %bb.y
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.y ], [ %i.gu, %.lr.ph.i40 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.y ], [ %i.gx, %.lr.ph.i40 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.y ], [ %i.gy, %.lr.ph.i40 ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.0.0.i38 ; 2 uses
  %i.hb = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ha
  br i1 %i.hb, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.hf, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.hi, %.lr.ph38.i ] ; 14 uses
end_hunk_5
begin_hunk_6_@llvm.umax.i32
!4825 = !{!4663}
!4826 = !{!4667, !4665, !4630, !4629}
!4827 = !{!4669}
!4828 = !{!4670, !4630, !4629}
!4829 = !{!4669, !4630, !4629}
!4830 = !{!4672}
!4831 = !{!4676, !4674, !4630, !4629}
!4832 = !{!4678}
!4833 = !{!4679, !4630, !4629}
!4834 = !{!4678, !4630, !4629}
!4835 = !{!4681}
!4836 = !{!4683}
!4837 = !{!4683, !4681}
!4838 = !{!4685}
!4839 = !{!4687}
!4840 = !{!4688, !4685, !4683, !4681}
!4841 = !{!4687, !4685, !4683, !4681}
!4842 = !{!4690}
!4843 = !{!4694, !4692}
!4844 = !{!4696}
!4845 = !{!4697, !4690, !4694, !4692}
!4846 = !{!4696, !4690, !4694, !4692}
!4847 = !{!4699}
!4848 = !{!4701}
!4849 = !{!4701, !4699}
!4850 = !{!4703}
!4851 = !{!4705}
!4852 = !{!4706, !4703, !4701, !4699}
!4853 = !{!4705, !4703, !4701, !4699}
!4854 = !{!4708}
!4855 = !{!4710}
!4856 = !{!4710, !4708}
!4857 = !{!4712}
!4858 = !{!4714}
!4859 = !{!4715, !4712, !4710, !4708}
!4860 = !{!4714, !4712, !4710, !4708}
!4861 = distinct !{!4861, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_EB6_"}
!4862 = distinct !{!4862, !4861, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_EB6_: argument 0"}
!4863 = distinct !{!4863, !4861, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_EB6_: argument 1"}
!4864 = distinct !{!4864, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!4865 = distinct !{!4865, !4864, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!4866 = distinct !{!4866, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB23_12OffsetLookupmEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3y_5count0EB27_"}
!4867 = distinct !{!4867, !4866, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB23_12OffsetLookupmEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3y_5count0EB27_: argument 0"}
!4868 = distinct !{!4868, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB23_12OffsetLookupmEB34_E0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtB1w_9try_traitINtB4m_17NeverShortCircuitjE10wrap_mut_2jTjjENCNvYBV_B3y_5count0E0B4C_EB27_"}
!4869 = distinct !{!4869, !4868, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB23_12OffsetLookupmEB34_E0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtB1w_9try_traitINtB4m_17NeverShortCircuitjE10wrap_mut_2jTjjENCNvYBV_B3y_5count0E0B4C_EB27_: argument 0"}
!4870 = distinct !{!4870, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_3ops5range5RangejEBR_ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB8_10take_whileINtB2g_9TakeWhileppEB1n_8try_fold5checkTjjEjINtNtBW_9try_trait17NeverShortCircuitjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB3X_12OffsetLookupmEB4Y_E0NCINvMB3i_B3f_10wrap_mut_2jB3a_NCNvYIB2y_B3_B3S_EB1n_5count0E0E0INtNtBW_12control_flow11ControlFlowB3f_jEEB41_"}
!4871 = distinct !{!4871, !4870, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_3ops5range5RangejEBR_ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB8_10take_whileINtB2g_9TakeWhileppEB1n_8try_fold5checkTjjEjINtNtBW_9try_trait17NeverShortCircuitjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB3X_12OffsetLookupmEB4Y_E0NCINvMB3i_B3f_10wrap_mut_2jB3a_NCNvYIB2y_B3_B3S_EB1n_5count0E0E0INtNtBW_12control_flow11ControlFlowB3f_jEEB41_: argument 2"}
!4872 = distinct !{!4872, !4870, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_3ops5range5RangejEBR_ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB8_10take_whileINtB2g_9TakeWhileppEB1n_8try_fold5checkTjjEjINtNtBW_9try_trait17NeverShortCircuitjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB3X_12OffsetLookupmEB4Y_E0NCINvMB3i_B3f_10wrap_mut_2jB3a_NCNvYIB2y_B3_B3S_EB1n_5count0E0E0INtNtBW_12control_flow11ControlFlowB3f_jEEB41_: argument 1"}
!4873 = distinct !{!4873, !4870, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_3ops5range5RangejEBR_ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB8_10take_whileINtB2g_9TakeWhileppEB1n_8try_fold5checkTjjEjINtNtBW_9try_trait17NeverShortCircuitjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB3X_12OffsetLookupmEB4Y_E0NCINvMB3i_B3f_10wrap_mut_2jB3a_NCNvYIB2y_B3_B3S_EB1n_5count0E0E0INtNtBW_12control_flow11ControlFlowB3f_jEEB41_: argument 0"}
!4874 = distinct !{!4874, !"_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB4_12OffsetLookupmEB15_E0B8_"}
!4875 = distinct !{!4875, !4874, !"_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB4_12OffsetLookupmEB15_E0B8_: argument 1"}
!4876 = distinct !{!4876, !4874, !"_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB4_12OffsetLookupmEB15_E0B8_: argument 0"}
!4877 = distinct !{!4877, !4864, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 1"}
!4878 = distinct !{!4878, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!4879 = distinct !{!4879, !4878, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!4880 = distinct !{!4880, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_EB6_"}
!4881 = distinct !{!4881, !4880, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_EB6_: argument 0"}
!4882 = distinct !{!4882, !4880, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_EB6_: argument 1"}
!4883 = distinct !{!4883, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2k_12OffsetLookupmEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3P_5count0EB2o_"}
!4884 = distinct !{!4884, !4883, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2k_12OffsetLookupmEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3P_5count0EB2o_: argument 0"}
!4885 = distinct !{!4885, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2k_12OffsetLookupmEB3l_E0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtB1M_9try_traitINtB4D_17NeverShortCircuitjE10wrap_mut_2jTjjENCNvYBV_B3P_5count0E0B4T_EB2o_"}
!4886 = distinct !{!4886, !4885, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2k_12OffsetLookupmEB3l_E0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtB1M_9try_traitINtB4D_17NeverShortCircuitjE10wrap_mut_2jTjjENCNvYBV_B3P_5count0E0B4T_EB2o_: argument 0"}
!4887 = distinct !{!4887, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEBR_ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB8_10take_whileINtB2x_9TakeWhileppEB1E_8try_fold5checkTjjEjINtNtB1c_9try_trait17NeverShortCircuitjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB4f_12OffsetLookupmEB5g_E0NCINvMB3z_B3w_10wrap_mut_2jB3r_NCNvYIB2P_B3_B4a_EB1E_5count0E0E0INtNtB1c_12control_flow11ControlFlowB3w_jEEB4j_"}
!4888 = distinct !{!4888, !4887, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEBR_ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB8_10take_whileINtB2x_9TakeWhileppEB1E_8try_fold5checkTjjEjINtNtB1c_9try_trait17NeverShortCircuitjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB4f_12OffsetLookupmEB5g_E0NCINvMB3z_B3w_10wrap_mut_2jB3r_NCNvYIB2P_B3_B4a_EB1E_5count0E0E0INtNtB1c_12control_flow11ControlFlowB3w_jEEB4j_: argument 2"}
!4889 = distinct !{!4889, !4887, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEBR_ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB8_10take_whileINtB2x_9TakeWhileppEB1E_8try_fold5checkTjjEjINtNtB1c_9try_trait17NeverShortCircuitjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB4f_12OffsetLookupmEB5g_E0NCINvMB3z_B3w_10wrap_mut_2jB3r_NCNvYIB2P_B3_B4a_EB1E_5count0E0E0INtNtB1c_12control_flow11ControlFlowB3w_jEEB4j_: argument 1"}
!4890 = distinct !{!4890, !4887, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEBR_ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB8_10take_whileINtB2x_9TakeWhileppEB1E_8try_fold5checkTjjEjINtNtB1c_9try_trait17NeverShortCircuitjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB4f_12OffsetLookupmEB5g_E0NCINvMB3z_B3w_10wrap_mut_2jB3r_NCNvYIB2P_B3_B4a_EB1E_5count0E0E0INtNtB1c_12control_flow11ControlFlowB3w_jEEB4j_: argument 0"}
!4891 = distinct !{!4891, !"_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB4_12OffsetLookupmEB15_E0B8_"}
!4892 = distinct !{!4892, !4891, !"_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB4_12OffsetLookupmEB15_E0B8_: argument 1"}
!4893 = distinct !{!4893, !4891, !"_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB4_12OffsetLookupmEB15_E0B8_: argument 0"}
!4894 = distinct !{!4894, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!4895 = distinct !{!4895, !4894, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!4896 = distinct !{!4896, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!4897 = distinct !{!4897, !4896, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!4898 = distinct !{!4898, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4899 = distinct !{!4899, !4898, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4900 = distinct !{!4900, !4898, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4901 = distinct !{!4901, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_"}
!4902 = distinct !{!4902, !4901, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_: argument 4"}
!4903 = distinct !{!4903, !4901, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_: argument 2"}
!4904 = distinct !{!4904, !4901, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_: argument 0"}
!4905 = distinct !{!4905, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!4906 = distinct !{!4906, !4905, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!4907 = distinct !{!4907, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!4908 = distinct !{!4908, !4907, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!4909 = distinct !{!4909, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!4910 = distinct !{!4910, !4909, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!4911 = distinct !{!4911, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!4912 = distinct !{!4912, !4911, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!4913 = distinct !{!4913, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4914 = distinct !{!4914, !4913, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4915 = distinct !{!4915, !4913, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4916 = distinct !{!4916, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4917 = distinct !{!4917, !4916, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4918 = distinct !{!4918, !4916, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4919 = distinct !{!4919, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4920 = distinct !{!4920, !4919, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4921 = distinct !{!4921, !4919, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4922 = distinct !{!4922, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4923 = distinct !{!4923, !4922, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4924 = distinct !{!4924, !4922, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4925 = distinct !{!4925, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4926 = distinct !{!4926, !4925, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4927 = distinct !{!4927, !4925, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4928 = distinct !{!4928, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4929 = distinct !{!4929, !4928, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4930 = distinct !{!4930, !4928, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4931 = distinct !{!4931, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_"}
!4932 = distinct !{!4932, !4931, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_: argument 2"}
!4933 = distinct !{!4933, !4931, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_: argument 1"}
!4934 = distinct !{!4934, !4931, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_: argument 0"}
!4935 = distinct !{!4935, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_new_exactINtNtB4_5utils12OffsetLookupmEB16_INtNtB4_7compact7CompactB16_B16_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_"}
!4936 = distinct !{!4936, !4935, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_new_exactINtNtB4_5utils12OffsetLookupmEB16_INtNtB4_7compact7CompactB16_B16_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_: argument 0"}
!4937 = distinct !{!4937, !4935, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_new_exactINtNtB4_5utils12OffsetLookupmEB16_INtNtB4_7compact7CompactB16_B16_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_: argument 2"}
!4938 = distinct !{!4938, !4935, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_new_exactINtNtB4_5utils12OffsetLookupmEB16_INtNtB4_7compact7CompactB16_B16_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_: argument 1"}
!4939 = distinct !{!4939, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsdftwklc2oBO_7similar"}
!4940 = distinct !{!4940, !4939, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsdftwklc2oBO_7similar: argument 0"}
!4941 = distinct !{!4941, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdftwklc2oBO_7similar"}
!4942 = distinct !{!4942, !4941, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdftwklc2oBO_7similar: argument 0"}
!4943 = distinct !{!4943, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4944 = distinct !{!4944, !4943, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4945 = distinct !{!4945, !4943, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4946 = distinct !{!4946, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4947 = distinct !{!4947, !4946, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4948 = distinct !{!4948, !4946, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4949 = distinct !{!4949, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4950 = distinct !{!4950, !4949, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4951 = distinct !{!4951, !4949, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4952 = distinct !{!4952, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4953 = distinct !{!4953, !4952, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4954 = distinct !{!4954, !4952, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4955 = distinct !{!4955, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4956 = distinct !{!4956, !4955, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4957 = distinct !{!4957, !4955, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4958 = distinct !{!4958, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_old_exactINtNtB4_5utils12OffsetLookupmEB16_INtNtB4_7compact7CompactB16_B16_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_"}
!4959 = distinct !{!4959, !4958, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_old_exactINtNtB4_5utils12OffsetLookupmEB16_INtNtB4_7compact7CompactB16_B16_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_: argument 0"}
!4960 = distinct !{!4960, !4958, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_old_exactINtNtB4_5utils12OffsetLookupmEB16_INtNtB4_7compact7CompactB16_B16_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_: argument 2"}
!4961 = distinct !{!4961, !4958, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_old_exactINtNtB4_5utils12OffsetLookupmEB16_INtNtB4_7compact7CompactB16_B16_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_: argument 1"}
!4962 = distinct !{!4962, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsdftwklc2oBO_7similar"}
!4963 = distinct !{!4963, !4962, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsdftwklc2oBO_7similar: argument 0"}
!4964 = distinct !{!4964, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdftwklc2oBO_7similar"}
!4965 = distinct !{!4965, !4964, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdftwklc2oBO_7similar: argument 0"}
!4966 = distinct !{!4966, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4967 = distinct !{!4967, !4966, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4968 = distinct !{!4968, !4966, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4969 = distinct !{!4969, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4970 = distinct !{!4970, !4969, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4971 = distinct !{!4971, !4969, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4972 = distinct !{!4972, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4973 = distinct !{!4973, !4972, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4974 = distinct !{!4974, !4972, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4975 = distinct !{!4975, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4976 = distinct !{!4976, !4975, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4977 = distinct !{!4977, !4975, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4978 = distinct !{!4978, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4979 = distinct !{!4979, !4978, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4980 = distinct !{!4980, !4978, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4981 = distinct !{!4981, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4982 = distinct !{!4982, !4981, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4983 = distinct !{!4983, !4981, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4984 = distinct !{!4984, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4985 = distinct !{!4985, !4984, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4986 = distinct !{!4986, !4984, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4987 = distinct !{!4987, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4988 = distinct !{!4988, !4987, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4989 = distinct !{!4989, !4987, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4990 = distinct !{!4990, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!4991 = distinct !{!4991, !4990, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!4992 = distinct !{!4992, !4990, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!4993 = !{!4862}
!4994 = !{!4863}
!4995 = !{!4865, !4863}
!4996 = !{!4877, !4876, !4875, !4873, !4872, !4871, !4869, !4867, !4862}
!4997 = !{!4865}
!4998 = !{!4865, !4876, !4875, !4873, !4872, !4871, !4869, !4867, !4862, !4863}
!4999 = !{!4879, !4876, !4875, !4873, !4872, !4871, !4869, !4867, !4862, !4863}
!5000 = !{!4873, !4872, !4871, !4869, !4867, !4862, !4863}
!5001 = !{!4881}
!5002 = !{!4882}
!5003 = !{!4895, !4893, !4892, !4890, !4889, !4888, !4886, !4884, !4881, !4882}
!5004 = !{!4897, !4893, !4892, !4890, !4889, !4888, !4886, !4884, !4881, !4882}
!5005 = !{!4890, !4889, !4888, !4886, !4884, !4881, !4882}
!5006 = !{!4899}
!5007 = !{!4900}
!5008 = !{!4904, !4903, !4902}
!5009 = !{!4906, !4904, !4903, !4902}
!5010 = !{!4908, !4904, !4903, !4902}
!5011 = !{!4910, !4904, !4903, !4902}
!5012 = !{!4912, !4904, !4903, !4902}
!5013 = !{!4903, !4902}
!5014 = !{!4914}
!5015 = !{!4915, !4903, !4902}
!5016 = !{!4914, !4903, !4902}
!5017 = !{!4917}
!5018 = !{!4918, !4903, !4902}
!5019 = !{!4917, !4903, !4902}
!5020 = !{!4920}
!5021 = !{!4921, !4903, !4902}
!5022 = !{!4920, !4903, !4902}
!5023 = !{!4923}
!5024 = !{!4924, !4903, !4902}
!5025 = !{!4926}
!5026 = !{!4927, !4903, !4902}
!5027 = !{!4923, !4903, !4902}
!5028 = !{!4926, !4903, !4902}
!5029 = !{!4929}
!5030 = !{!4930}
!5031 = !{!4934, !4933, !4932}
!5032 = !{!4936}
!5033 = !{!4936, !4938, !4937}
!5034 = !{!4942, !4940, !4936, !4938, !4937}
!5035 = !{!4940, !4936, !4938, !4937}
!5036 = !{!4944}
!5037 = !{!4944, !4936}
!5038 = !{!4945, !4938, !4937}
!5039 = !{!4938, !4937}
!5040 = !{!4944, !4936, !4938, !4937}
!5041 = !{!4947}
!5042 = !{!4947, !4936}
!5043 = !{!4948, !4938, !4937}
!5044 = !{!4947, !4936, !4938, !4937}
!5045 = !{!4950, !4936}
!5046 = !{!4951, !4938, !4937}
!5047 = !{!4953, !4936}
!5048 = !{!4954, !4938, !4937}
!5049 = !{!4956, !4936}
!5050 = !{!4957, !4938, !4937}
!5051 = !{!4959}
!5052 = !{!4959, !4961, !4960}
!5053 = !{!4965, !4963, !4959, !4961, !4960}
!5054 = !{!4963, !4959, !4961, !4960}
!5055 = !{!4967}
!5056 = !{!4967, !4959}
!5057 = !{!4968, !4961, !4960}
!5058 = !{!4961, !4960}
!5059 = !{!4967, !4959, !4961, !4960}
!5060 = !{!4970}
!5061 = !{!4970, !4959}
!5062 = !{!4971, !4961, !4960}
!5063 = !{!4970, !4959, !4961, !4960}
!5064 = !{!4973, !4959}
!5065 = !{!4974, !4961, !4960}
!5066 = !{!4976, !4959}
!5067 = !{!4977, !4961, !4960}
!5068 = !{!4979, !4959}
!5069 = !{!4980, !4961, !4960}
!5070 = !{!4982}
!5071 = !{!4983}
!5072 = !{!4985}
!5073 = !{!4986}
!5074 = !{!4988}
!5075 = !{!4989}
!5076 = !{!4991}
!5077 = !{!4992}
!5078 = distinct !{!5078, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalB9_"}
!5079 = distinct !{!5079, !5078, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalB9_: argument 0"}
!5080 = distinct !{!5080, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook5equalB6_"}
!5081 = distinct !{!5081, !5080, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook5equalB6_: argument 0"}
!5082 = distinct !{!5082, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook5equalB6_"}
!5083 = distinct !{!5083, !5082, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook5equalB6_: argument 0"}
!5084 = distinct !{!5084, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5085 = distinct !{!5085, !5084, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5086 = distinct !{!5086, !5084, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5087 = distinct !{!5087, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_"}
!5088 = distinct !{!5088, !5087, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_: argument 4"}
!5089 = distinct !{!5089, !5087, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_: argument 2"}
!5090 = distinct !{!5090, !5087, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_: argument 0"}
!5091 = distinct !{!5091, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5092 = distinct !{!5092, !5091, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5093 = distinct !{!5093, !5091, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5094 = distinct !{!5094, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5095 = distinct !{!5095, !5094, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5096 = distinct !{!5096, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5097 = distinct !{!5097, !5096, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5098 = distinct !{!5098, !5096, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5099 = distinct !{!5099, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5100 = distinct !{!5100, !5099, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5101 = distinct !{!5101, !"_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar"}
!5102 = distinct !{!5102, !5101, !"_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar: argument 1"}
!5103 = distinct !{!5103, !5101, !"_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar: argument 0"}
!5104 = distinct !{!5104, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!5105 = distinct !{!5105, !5104, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!5106 = distinct !{!5106, !5104, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!5107 = distinct !{!5107, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5108 = distinct !{!5108, !5107, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5109 = distinct !{!5109, !5107, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5110 = distinct !{!5110, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5111 = distinct !{!5111, !5110, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5112 = distinct !{!5112, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5113 = distinct !{!5113, !5112, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5114 = distinct !{!5114, !5112, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5115 = distinct !{!5115, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5116 = distinct !{!5116, !5115, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5117 = distinct !{!5117, !"_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar"}
!5118 = distinct !{!5118, !5117, !"_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar: argument 1"}
!5119 = distinct !{!5119, !5117, !"_RNvYeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsdftwklc2oBO_7similar: argument 0"}
!5120 = distinct !{!5120, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!5121 = distinct !{!5121, !5120, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!5122 = distinct !{!5122, !5120, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!5123 = distinct !{!5123, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook5equalB6_"}
!5124 = distinct !{!5124, !5123, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook5equalB6_: argument 0"}
!5125 = distinct !{!5125, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalB9_"}
!5126 = distinct !{!5126, !5125, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalB9_: argument 0"}
!5127 = distinct !{!5127, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook5equalB6_"}
!5128 = distinct !{!5128, !5127, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook5equalB6_: argument 0"}
!5129 = distinct !{!5129, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5130 = distinct !{!5130, !5129, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5131 = distinct !{!5131, !5129, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5132 = distinct !{!5132, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6insertB6_"}
!5133 = distinct !{!5133, !5132, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6insertB6_: argument 0"}
!5134 = distinct !{!5134, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertB9_"}
!5135 = distinct !{!5135, !5134, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertB9_: argument 0"}
!5136 = distinct !{!5136, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6insertB6_"}
!5137 = distinct !{!5137, !5136, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6insertB6_: argument 0"}
!5138 = distinct !{!5138, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5139 = distinct !{!5139, !5138, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5140 = distinct !{!5140, !5138, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5141 = distinct !{!5141, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteB9_"}
!5142 = distinct !{!5142, !5141, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteB9_: argument 0"}
!5143 = distinct !{!5143, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6deleteB6_"}
!5144 = distinct !{!5144, !5143, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6deleteB6_: argument 0"}
!5145 = distinct !{!5145, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6deleteB6_"}
!5146 = distinct !{!5146, !5145, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6deleteB6_: argument 0"}
!5147 = distinct !{!5147, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5148 = distinct !{!5148, !5147, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5149 = distinct !{!5149, !5147, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5150 = distinct !{!5150, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook7replaceB9_"}
!5151 = distinct !{!5151, !5150, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook7replaceB9_: argument 0"}
!5152 = distinct !{!5152, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook7replaceB6_"}
!5153 = distinct !{!5153, !5152, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook7replaceB6_: argument 0"}
!5154 = distinct !{!5154, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook7replaceB6_"}
!5155 = distinct !{!5155, !5154, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook7replaceB6_: argument 0"}
!5156 = distinct !{!5156, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5157 = distinct !{!5157, !5156, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5158 = distinct !{!5158, !5156, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5159 = distinct !{!5159, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5160 = distinct !{!5160, !5159, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5161 = distinct !{!5161, !5159, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5162 = distinct !{!5162, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteB9_"}
!5163 = distinct !{!5163, !5162, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteB9_: argument 0"}
!5164 = distinct !{!5164, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6deleteB6_"}
!5165 = distinct !{!5165, !5164, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6deleteB6_: argument 0"}
!5166 = distinct !{!5166, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6deleteB6_"}
!5167 = distinct !{!5167, !5166, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6deleteB6_: argument 0"}
!5168 = distinct !{!5168, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5169 = distinct !{!5169, !5168, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5170 = distinct !{!5170, !5168, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5171 = distinct !{!5171, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_"}
!5172 = distinct !{!5172, !5171, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_: argument 2"}
!5173 = distinct !{!5173, !5171, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_: argument 1"}
!5174 = distinct !{!5174, !5171, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_: argument 0"}
!5175 = distinct !{!5175, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_new_exactINtNtB6_4text12TextDiffSideeEB16_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB16_B16_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_"}
!5176 = distinct !{!5176, !5175, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_new_exactINtNtB6_4text12TextDiffSideeEB16_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB16_B16_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_: argument 1"}
!5177 = distinct !{!5177, !5175, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_new_exactINtNtB6_4text12TextDiffSideeEB16_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB16_B16_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_: argument 0"}
!5178 = distinct !{!5178, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsdftwklc2oBO_7similar"}
!5179 = distinct !{!5179, !5178, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsdftwklc2oBO_7similar: argument 0"}
!5180 = distinct !{!5180, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdftwklc2oBO_7similar"}
!5181 = distinct !{!5181, !5180, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdftwklc2oBO_7similar: argument 0"}
!5182 = distinct !{!5182, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6deleteB6_"}
!5183 = distinct !{!5183, !5182, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6deleteB6_: argument 0"}
!5184 = distinct !{!5184, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteB9_"}
!5185 = distinct !{!5185, !5184, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteB9_: argument 0"}
!5186 = distinct !{!5186, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6deleteB6_"}
!5187 = distinct !{!5187, !5186, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6deleteB6_: argument 0"}
!5188 = distinct !{!5188, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5189 = distinct !{!5189, !5188, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5190 = distinct !{!5190, !5188, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5191 = distinct !{!5191, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6insertB6_"}
!5192 = distinct !{!5192, !5191, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6insertB6_: argument 0"}
!5193 = distinct !{!5193, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertB9_"}
!5194 = distinct !{!5194, !5193, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertB9_: argument 0"}
!5195 = distinct !{!5195, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6insertB6_"}
!5196 = distinct !{!5196, !5195, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6insertB6_: argument 0"}
!5197 = distinct !{!5197, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5198 = distinct !{!5198, !5197, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5199 = distinct !{!5199, !5197, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5200 = distinct !{!5200, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5201 = distinct !{!5201, !5200, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5202 = distinct !{!5202, !5200, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5203 = distinct !{!5203, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5204 = distinct !{!5204, !5203, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5205 = distinct !{!5205, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5206 = distinct !{!5206, !5205, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5207 = distinct !{!5207, !5205, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5208 = distinct !{!5208, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5209 = distinct !{!5209, !5208, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5210 = distinct !{!5210, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!5211 = distinct !{!5211, !5210, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!5212 = distinct !{!5212, !5210, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!5213 = distinct !{!5213, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6deleteB6_"}
!5214 = distinct !{!5214, !5213, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB18_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6deleteB6_: argument 0"}
!5215 = distinct !{!5215, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteB9_"}
!5216 = distinct !{!5216, !5215, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteB9_: argument 0"}
!5217 = distinct !{!5217, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6deleteB6_"}
!5218 = distinct !{!5218, !5217, !"_RNvXNtNtCsdftwklc2oBO_7similar10algorithms4hookQQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB19_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEENtB2_8DiffHook6deleteB6_: argument 0"}
!5219 = distinct !{!5219, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5220 = distinct !{!5220, !5219, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5221 = distinct !{!5221, !5219, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5222 = distinct !{!5222, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5223 = distinct !{!5223, !5222, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5224 = distinct !{!5224, !5222, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5225 = distinct !{!5225, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5226 = distinct !{!5226, !5225, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5227 = distinct !{!5227, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
end_hunk_6
begin_hunk_7_@llvm.umax.i32
!5687 = distinct !{!5687, !5685, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5688 = distinct !{!5688, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5689 = distinct !{!5689, !5688, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5690 = distinct !{!5690, !5688, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5691 = distinct !{!5691, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5692 = distinct !{!5692, !5691, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5693 = distinct !{!5693, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5694 = distinct !{!5694, !5693, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5695 = distinct !{!5695, !5693, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5696 = distinct !{!5696, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5697 = distinct !{!5697, !5696, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5698 = distinct !{!5698, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!5699 = distinct !{!5699, !5698, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!5700 = distinct !{!5700, !5698, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!5701 = distinct !{!5701, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5702 = distinct !{!5702, !5701, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5703 = distinct !{!5703, !5701, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5704 = distinct !{!5704, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5705 = distinct !{!5705, !5704, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5706 = distinct !{!5706, !5704, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5707 = distinct !{!5707, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5708 = distinct !{!5708, !5707, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5709 = distinct !{!5709, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5710 = distinct !{!5710, !5709, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5711 = distinct !{!5711, !5709, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5712 = distinct !{!5712, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5713 = distinct !{!5713, !5712, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5714 = distinct !{!5714, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!5715 = distinct !{!5715, !5714, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!5716 = distinct !{!5716, !5714, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!5717 = distinct !{!5717, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5718 = distinct !{!5718, !5717, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5719 = distinct !{!5719, !5717, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5720 = distinct !{!5720, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5721 = distinct !{!5721, !5720, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5722 = distinct !{!5722, !5720, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5723 = distinct !{!5723, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5724 = distinct !{!5724, !5723, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5725 = distinct !{!5725, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5726 = distinct !{!5726, !5725, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5727 = distinct !{!5727, !5725, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5728 = distinct !{!5728, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5729 = distinct !{!5729, !5728, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5730 = distinct !{!5730, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!5731 = distinct !{!5731, !5730, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!5732 = distinct !{!5732, !5730, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!5733 = distinct !{!5733, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5734 = distinct !{!5734, !5733, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5735 = distinct !{!5735, !5733, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5736 = distinct !{!5736, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5737 = distinct !{!5737, !5736, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5738 = distinct !{!5738, !5736, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5739 = distinct !{!5739, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5740 = distinct !{!5740, !5739, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5741 = distinct !{!5741, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5742 = distinct !{!5742, !5741, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5743 = distinct !{!5743, !5741, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5744 = distinct !{!5744, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5745 = distinct !{!5745, !5744, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5746 = distinct !{!5746, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!5747 = distinct !{!5747, !5746, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!5748 = distinct !{!5748, !5746, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!5749 = distinct !{!5749, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5750 = distinct !{!5750, !5749, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5751 = distinct !{!5751, !5749, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5752 = distinct !{!5752, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5753 = distinct !{!5753, !5752, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5754 = distinct !{!5754, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5755 = distinct !{!5755, !5754, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5756 = distinct !{!5756, !5754, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5757 = distinct !{!5757, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5758 = distinct !{!5758, !5757, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5759 = distinct !{!5759, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!5760 = distinct !{!5760, !5759, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!5761 = distinct !{!5761, !5759, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!5762 = distinct !{!5762, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_old_exactINtNtB6_4text12TextDiffSideeEB16_INtNtB4_7compact7CompactB16_B16_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_"}
!5763 = distinct !{!5763, !5762, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_old_exactINtNtB6_4text12TextDiffSideeEB16_INtNtB4_7compact7CompactB16_B16_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_: argument 0"}
!5764 = distinct !{!5764, !5762, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_old_exactINtNtB6_4text12TextDiffSideeEB16_INtNtB4_7compact7CompactB16_B16_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_: argument 2"}
!5765 = distinct !{!5765, !5762, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_old_exactINtNtB6_4text12TextDiffSideeEB16_INtNtB4_7compact7CompactB16_B16_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_: argument 1"}
!5766 = distinct !{!5766, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsdftwklc2oBO_7similar"}
!5767 = distinct !{!5767, !5766, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsdftwklc2oBO_7similar: argument 0"}
!5768 = distinct !{!5768, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdftwklc2oBO_7similar"}
!5769 = distinct !{!5769, !5768, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdftwklc2oBO_7similar: argument 0"}
!5770 = distinct !{!5770, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5771 = distinct !{!5771, !5770, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5772 = distinct !{!5772, !5770, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5773 = distinct !{!5773, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5774 = distinct !{!5774, !5773, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5775 = distinct !{!5775, !5773, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5776 = distinct !{!5776, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5777 = distinct !{!5777, !5776, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5778 = distinct !{!5778, !5776, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5779 = distinct !{!5779, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5780 = distinct !{!5780, !5779, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5781 = distinct !{!5781, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5782 = distinct !{!5782, !5781, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5783 = distinct !{!5783, !5781, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5784 = distinct !{!5784, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5785 = distinct !{!5785, !5784, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5786 = distinct !{!5786, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!5787 = distinct !{!5787, !5786, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!5788 = distinct !{!5788, !5786, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!5789 = distinct !{!5789, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5790 = distinct !{!5790, !5789, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5791 = distinct !{!5791, !5789, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5792 = distinct !{!5792, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5793 = distinct !{!5793, !5792, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5794 = distinct !{!5794, !5792, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5795 = distinct !{!5795, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5796 = distinct !{!5796, !5795, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5797 = distinct !{!5797, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5798 = distinct !{!5798, !5797, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5799 = distinct !{!5799, !5797, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5800 = distinct !{!5800, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5801 = distinct !{!5801, !5800, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5802 = distinct !{!5802, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!5803 = distinct !{!5803, !5802, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!5804 = distinct !{!5804, !5802, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!5805 = distinct !{!5805, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5806 = distinct !{!5806, !5805, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5807 = distinct !{!5807, !5805, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5808 = distinct !{!5808, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5809 = distinct !{!5809, !5808, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5810 = distinct !{!5810, !5808, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5811 = distinct !{!5811, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5812 = distinct !{!5812, !5811, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5813 = distinct !{!5813, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5814 = distinct !{!5814, !5813, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5815 = distinct !{!5815, !5813, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5816 = distinct !{!5816, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5817 = distinct !{!5817, !5816, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5818 = distinct !{!5818, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!5819 = distinct !{!5819, !5818, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!5820 = distinct !{!5820, !5818, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!5821 = distinct !{!5821, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5822 = distinct !{!5822, !5821, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5823 = distinct !{!5823, !5821, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5824 = distinct !{!5824, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5825 = distinct !{!5825, !5824, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5826 = distinct !{!5826, !5824, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5827 = distinct !{!5827, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5828 = distinct !{!5828, !5827, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5829 = distinct !{!5829, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5830 = distinct !{!5830, !5829, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5831 = distinct !{!5831, !5829, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5832 = distinct !{!5832, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5833 = distinct !{!5833, !5832, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5834 = distinct !{!5834, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!5835 = distinct !{!5835, !5834, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!5836 = distinct !{!5836, !5834, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!5837 = distinct !{!5837, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5838 = distinct !{!5838, !5837, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5839 = distinct !{!5839, !5837, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5840 = distinct !{!5840, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5841 = distinct !{!5841, !5840, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5842 = distinct !{!5842, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_"}
!5843 = distinct !{!5843, !5842, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 1"}
!5844 = distinct !{!5844, !5842, !"_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_: argument 0"}
!5845 = distinct !{!5845, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_"}
!5846 = distinct !{!5846, !5845, !"_RNvMs_NtCsdftwklc2oBO_7similar4textINtB4_12TextDiffSideeE3getB6_: argument 0"}
!5847 = distinct !{!5847, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!5848 = distinct !{!5848, !5847, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!5849 = distinct !{!5849, !5847, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!5850 = distinct !{!5850, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5851 = distinct !{!5851, !5850, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5852 = distinct !{!5852, !5850, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5853 = distinct !{!5853, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5854 = distinct !{!5854, !5853, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5855 = distinct !{!5855, !5853, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5856 = distinct !{!5856, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5857 = distinct !{!5857, !5856, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5858 = distinct !{!5858, !5856, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5859 = distinct !{!5859, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!5860 = distinct !{!5860, !5859, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!5861 = distinct !{!5861, !5859, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!5862 = !{!5614}
!5863 = !{!5615}
!5864 = !{!5619, !5618, !5617}
!5865 = !{!5621, !5619, !5618, !5617}
!5866 = !{!5624, !5621, !5622, !5619, !5618, !5617}
!5867 = !{!5626, !5619, !5618, !5617}
!5868 = !{!5629, !5626, !5627, !5619, !5618, !5617}
!5869 = !{!5635, !5634, !5632, !5631}
!5870 = !{!5637, !5619, !5618, !5617}
!5871 = !{!5640, !5637, !5638, !5619, !5618, !5617}
!5872 = !{!5642, !5619, !5618, !5617}
!5873 = !{!5645, !5642, !5643, !5619, !5618, !5617}
!5874 = !{!5651, !5650, !5648, !5647}
!5875 = !{!5618, !5617}
!5876 = !{!5653}
!5877 = !{!5654, !5618, !5617}
!5878 = !{!5653, !5618, !5617}
!5879 = !{!5656}
!5880 = !{!5657, !5618, !5617}
!5881 = !{!5656, !5618, !5617}
!5882 = !{!5659}
!5883 = !{!5660, !5618, !5617}
!5884 = !{!5659, !5618, !5617}
!5885 = !{!5662}
!5886 = !{!5663, !5618, !5617}
!5887 = !{!5665}
!5888 = !{!5666, !5618, !5617}
!5889 = !{!5662, !5618, !5617}
!5890 = !{!5665, !5618, !5617}
!5891 = !{!5668}
!5892 = !{!5669}
!5893 = !{!5673, !5672, !5671}
!5894 = !{!5675}
!5895 = !{!5675, !5677, !5676}
!5896 = !{!5681, !5679, !5675, !5677, !5676}
!5897 = !{!5679, !5675, !5677, !5676}
!5898 = !{!5683}
!5899 = !{!5683, !5675}
!5900 = !{!5684, !5677, !5676}
!5901 = !{!5677, !5676}
!5902 = !{!5683, !5675, !5677, !5676}
!5903 = !{!5686}
!5904 = !{!5686, !5675}
!5905 = !{!5687, !5677, !5676}
!5906 = !{!5686, !5675, !5677, !5676}
!5907 = !{!5692, !5690, !5689, !5675, !5677, !5676}
!5908 = !{!5697, !5695, !5694, !5675, !5677, !5676}
!5909 = !{!5700, !5699}
!5910 = !{!5702, !5675}
!5911 = !{!5703, !5677, !5676}
!5912 = !{!5708, !5706, !5705, !5675, !5677, !5676}
!5913 = !{!5713, !5711, !5710, !5675, !5677, !5676}
!5914 = !{!5716, !5715}
!5915 = !{!5718, !5675}
!5916 = !{!5719, !5677, !5676}
!5917 = !{!5724, !5722, !5721, !5675, !5677, !5676}
!5918 = !{!5729, !5727, !5726, !5675, !5677, !5676}
!5919 = !{!5732, !5731}
!5920 = !{!5734, !5675}
!5921 = !{!5735, !5677, !5676}
!5922 = !{!5740, !5738, !5737, !5675, !5677, !5676}
!5923 = !{!5745, !5743, !5742, !5675, !5677, !5676}
!5924 = !{!5748, !5747}
!5925 = !{!5753, !5751, !5750, !5675, !5677, !5676}
!5926 = !{!5758, !5756, !5755, !5675, !5677, !5676}
!5927 = !{!5761, !5760}
!5928 = !{!5763}
!5929 = !{!5763, !5765, !5764}
!5930 = !{!5769, !5767, !5763, !5765, !5764}
!5931 = !{!5767, !5763, !5765, !5764}
!5932 = !{!5771}
!5933 = !{!5771, !5763}
!5934 = !{!5772, !5765, !5764}
!5935 = !{!5765, !5764}
!5936 = !{!5771, !5763, !5765, !5764}
!5937 = !{!5774}
!5938 = !{!5774, !5763}
!5939 = !{!5775, !5765, !5764}
!5940 = !{!5774, !5763, !5765, !5764}
!5941 = !{!5780, !5778, !5777, !5763, !5765, !5764}
!5942 = !{!5785, !5783, !5782, !5763, !5765, !5764}
!5943 = !{!5788, !5787}
!5944 = !{!5790, !5763}
!5945 = !{!5791, !5765, !5764}
!5946 = !{!5796, !5794, !5793, !5763, !5765, !5764}
!5947 = !{!5801, !5799, !5798, !5763, !5765, !5764}
!5948 = !{!5804, !5803}
!5949 = !{!5806, !5763}
!5950 = !{!5807, !5765, !5764}
!5951 = !{!5812, !5810, !5809, !5763, !5765, !5764}
!5952 = !{!5817, !5815, !5814, !5763, !5765, !5764}
!5953 = !{!5820, !5819}
!5954 = !{!5822, !5763}
!5955 = !{!5823, !5765, !5764}
!5956 = !{!5828, !5826, !5825, !5763, !5765, !5764}
!5957 = !{!5833, !5831, !5830, !5763, !5765, !5764}
!5958 = !{!5836, !5835}
!5959 = !{!5841, !5839, !5838, !5763, !5765, !5764}
!5960 = !{!5846, !5844, !5843, !5763, !5765, !5764}
!5961 = !{!5849, !5848}
!5962 = !{!5851}
!5963 = !{!5852}
!5964 = !{!5854}
!5965 = !{!5855}
!5966 = !{!5857}
!5967 = !{!5858}
!5968 = !{!5860}
!5969 = !{!5861}
!5970 = distinct !{!5970, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_"}
!5971 = distinct !{!5971, !5970, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_: argument 0"}
!5972 = distinct !{!5972, !5970, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_: argument 1"}
!5973 = distinct !{!5973, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB23_10UniqueItemINtB23_12OffsetLookupmEEEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4q_5count0EB27_"}
!5974 = distinct !{!5974, !5973, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB23_10UniqueItemINtB23_12OffsetLookupmEEEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4q_5count0EB27_: argument 0"}
!5975 = distinct !{!5975, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB23_10UniqueItemINtB23_12OffsetLookupmEEEB34_E0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtB1w_9try_traitINtB5e_17NeverShortCircuitjE10wrap_mut_2jTjjENCNvYBV_B4q_5count0E0B5u_EB27_"}
!5976 = distinct !{!5976, !5975, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB23_10UniqueItemINtB23_12OffsetLookupmEEEB34_E0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtB1w_9try_traitINtB5e_17NeverShortCircuitjE10wrap_mut_2jTjjENCNvYBV_B4q_5count0E0B5u_EB27_: argument 0"}
!5977 = distinct !{!5977, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_3ops5range5RangejEBR_ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB8_10take_whileINtB2g_9TakeWhileppEB1n_8try_fold5checkTjjEjINtNtBW_9try_trait17NeverShortCircuitjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB3X_10UniqueItemINtB3X_12OffsetLookupmEEEB4Y_E0NCINvMB3i_B3f_10wrap_mut_2jB3a_NCNvYIB2y_B3_B3S_EB1n_5count0E0E0INtNtBW_12control_flow11ControlFlowB3f_jEEB41_"}
!5978 = distinct !{!5978, !5977, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_3ops5range5RangejEBR_ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB8_10take_whileINtB2g_9TakeWhileppEB1n_8try_fold5checkTjjEjINtNtBW_9try_trait17NeverShortCircuitjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB3X_10UniqueItemINtB3X_12OffsetLookupmEEEB4Y_E0NCINvMB3i_B3f_10wrap_mut_2jB3a_NCNvYIB2y_B3_B3S_EB1n_5count0E0E0INtNtBW_12control_flow11ControlFlowB3f_jEEB41_: argument 2"}
!5979 = distinct !{!5979, !5977, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_3ops5range5RangejEBR_ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB8_10take_whileINtB2g_9TakeWhileppEB1n_8try_fold5checkTjjEjINtNtBW_9try_trait17NeverShortCircuitjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB3X_10UniqueItemINtB3X_12OffsetLookupmEEEB4Y_E0NCINvMB3i_B3f_10wrap_mut_2jB3a_NCNvYIB2y_B3_B3S_EB1n_5count0E0E0INtNtBW_12control_flow11ControlFlowB3f_jEEB41_: argument 1"}
!5980 = distinct !{!5980, !5977, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtNtBc_3ops5range5RangejEBR_ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB8_10take_whileINtB2g_9TakeWhileppEB1n_8try_fold5checkTjjEjINtNtBW_9try_trait17NeverShortCircuitjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB3X_10UniqueItemINtB3X_12OffsetLookupmEEEB4Y_E0NCINvMB3i_B3f_10wrap_mut_2jB3a_NCNvYIB2y_B3_B3S_EB1n_5count0E0E0INtNtBW_12control_flow11ControlFlowB3f_jEEB41_: argument 0"}
!5981 = distinct !{!5981, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB11_12OffsetLookupmEEE5indexB15_"}
!5982 = distinct !{!5982, !5981, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB11_12OffsetLookupmEEE5indexB15_: argument 0"}
!5983 = distinct !{!5983, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB11_12OffsetLookupmEEE5indexB15_"}
!5984 = distinct !{!5984, !5983, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB11_12OffsetLookupmEEE5indexB15_: argument 0"}
!5985 = distinct !{!5985, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_"}
!5986 = distinct !{!5986, !5985, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_: argument 0"}
!5987 = distinct !{!5987, !5985, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_: argument 1"}
!5988 = distinct !{!5988, !"_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB4_10UniqueItemINtB4_12OffsetLookupmEEEB15_E0B8_"}
!5989 = distinct !{!5989, !5988, !"_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB4_10UniqueItemINtB4_12OffsetLookupmEEEB15_E0B8_: argument 1"}
!5990 = distinct !{!5990, !5988, !"_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB4_10UniqueItemINtB4_12OffsetLookupmEEEB15_E0B8_: argument 0"}
!5991 = distinct !{!5991, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!5992 = distinct !{!5992, !5991, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!5993 = distinct !{!5993, !5991, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 1"}
!5994 = distinct !{!5994, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!5995 = distinct !{!5995, !5994, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!5996 = distinct !{!5996, !5994, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 1"}
!5997 = distinct !{!5997, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_"}
!5998 = distinct !{!5998, !5997, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_: argument 0"}
!5999 = distinct !{!5999, !5997, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_: argument 1"}
!6000 = distinct !{!6000, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2k_10UniqueItemINtB2k_12OffsetLookupmEEEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4H_5count0EB2o_"}
!6001 = distinct !{!6001, !6000, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2k_10UniqueItemINtB2k_12OffsetLookupmEEEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4H_5count0EB2o_: argument 0"}
!6002 = distinct !{!6002, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2k_10UniqueItemINtB2k_12OffsetLookupmEEEB3l_E0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtB1M_9try_traitINtB5v_17NeverShortCircuitjE10wrap_mut_2jTjjENCNvYBV_B4H_5count0E0B5L_EB2o_"}
!6003 = distinct !{!6003, !6002, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2k_10UniqueItemINtB2k_12OffsetLookupmEEEB3l_E0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtB1M_9try_traitINtB5v_17NeverShortCircuitjE10wrap_mut_2jTjjENCNvYBV_B4H_5count0E0B5L_EB2o_: argument 0"}
!6004 = distinct !{!6004, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEBR_ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB8_10take_whileINtB2x_9TakeWhileppEB1E_8try_fold5checkTjjEjINtNtB1c_9try_trait17NeverShortCircuitjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB4f_10UniqueItemINtB4f_12OffsetLookupmEEEB5g_E0NCINvMB3z_B3w_10wrap_mut_2jB3r_NCNvYIB2P_B3_B4a_EB1E_5count0E0E0INtNtB1c_12control_flow11ControlFlowB3w_jEEB4j_"}
!6005 = distinct !{!6005, !6004, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEBR_ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB8_10take_whileINtB2x_9TakeWhileppEB1E_8try_fold5checkTjjEjINtNtB1c_9try_trait17NeverShortCircuitjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB4f_10UniqueItemINtB4f_12OffsetLookupmEEEB5g_E0NCINvMB3z_B3w_10wrap_mut_2jB3r_NCNvYIB2P_B3_B4a_EB1E_5count0E0E0INtNtB1c_12control_flow11ControlFlowB3w_jEEB4j_: argument 2"}
!6006 = distinct !{!6006, !6004, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEBR_ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB8_10take_whileINtB2x_9TakeWhileppEB1E_8try_fold5checkTjjEjINtNtB1c_9try_trait17NeverShortCircuitjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB4f_10UniqueItemINtB4f_12OffsetLookupmEEEB5g_E0NCINvMB3z_B3w_10wrap_mut_2jB3r_NCNvYIB2P_B3_B4a_EB1E_5count0E0E0INtNtB1c_12control_flow11ControlFlowB3w_jEEB4j_: argument 1"}
!6007 = distinct !{!6007, !6004, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEBR_ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB8_10take_whileINtB2x_9TakeWhileppEB1E_8try_fold5checkTjjEjINtNtB1c_9try_trait17NeverShortCircuitjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB4f_10UniqueItemINtB4f_12OffsetLookupmEEEB5g_E0NCINvMB3z_B3w_10wrap_mut_2jB3r_NCNvYIB2P_B3_B4a_EB1E_5count0E0E0INtNtB1c_12control_flow11ControlFlowB3w_jEEB4j_: argument 0"}
!6008 = distinct !{!6008, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB11_12OffsetLookupmEEE5indexB15_"}
!6009 = distinct !{!6009, !6008, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB11_12OffsetLookupmEEE5indexB15_: argument 0"}
!6010 = distinct !{!6010, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB11_12OffsetLookupmEEE5indexB15_"}
!6011 = distinct !{!6011, !6010, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB11_12OffsetLookupmEEE5indexB15_: argument 0"}
!6012 = distinct !{!6012, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_"}
!6013 = distinct !{!6013, !6012, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_: argument 0"}
!6014 = distinct !{!6014, !6012, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_: argument 1"}
!6015 = distinct !{!6015, !"_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB4_10UniqueItemINtB4_12OffsetLookupmEEEB15_E0B8_"}
!6016 = distinct !{!6016, !6015, !"_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB4_10UniqueItemINtB4_12OffsetLookupmEEEB15_E0B8_: argument 1"}
!6017 = distinct !{!6017, !6015, !"_RNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB4_10UniqueItemINtB4_12OffsetLookupmEEEB15_E0B8_: argument 0"}
!6018 = distinct !{!6018, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!6019 = distinct !{!6019, !6018, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!6020 = distinct !{!6020, !6018, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 1"}
!6021 = distinct !{!6021, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!6022 = distinct !{!6022, !6021, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!6023 = distinct !{!6023, !6021, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 1"}
!6024 = distinct !{!6024, !"_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_"}
!6025 = distinct !{!6025, !6024, !"_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_: argument 0"}
!6026 = distinct !{!6026, !"_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE13flush_del_insB6_"}
!6027 = distinct !{!6027, !6026, !"_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE13flush_del_insB6_: argument 0"}
!6028 = distinct !{!6028, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEEB6_"}
!6029 = distinct !{!6029, !6028, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEEB6_: argument 4"}
!6030 = distinct !{!6030, !6028, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEEB6_: argument 2"}
!6031 = distinct !{!6031, !6028, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEEB6_: argument 0"}
!6032 = distinct !{!6032, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_"}
!6033 = distinct !{!6033, !6032, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_: argument 0"}
!6034 = distinct !{!6034, !6032, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_: argument 1"}
!6035 = distinct !{!6035, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!6036 = distinct !{!6036, !6035, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!6037 = distinct !{!6037, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_"}
!6038 = distinct !{!6038, !6037, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_: argument 1"}
!6039 = distinct !{!6039, !6037, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_: argument 0"}
!6040 = distinct !{!6040, !6035, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 1"}
!6041 = distinct !{!6041, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!6042 = distinct !{!6042, !6041, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!6043 = distinct !{!6043, !6041, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 1"}
!6044 = distinct !{!6044, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!6045 = distinct !{!6045, !6044, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!6046 = distinct !{!6046, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_"}
!6047 = distinct !{!6047, !6046, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_: argument 1"}
!6048 = distinct !{!6048, !6046, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_: argument 0"}
!6049 = distinct !{!6049, !6044, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 1"}
!6050 = distinct !{!6050, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!6051 = distinct !{!6051, !6050, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!6052 = distinct !{!6052, !6050, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 1"}
!6053 = distinct !{!6053, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB11_12OffsetLookupmEEE5indexB15_"}
!6054 = distinct !{!6054, !6053, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB11_12OffsetLookupmEEE5indexB15_: argument 0"}
!6055 = distinct !{!6055, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB11_12OffsetLookupmEEE5indexB15_"}
!6056 = distinct !{!6056, !6055, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB11_12OffsetLookupmEEE5indexB15_: argument 0"}
!6057 = distinct !{!6057, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB11_12OffsetLookupmEEE5indexB15_"}
!6058 = distinct !{!6058, !6057, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB11_12OffsetLookupmEEE5indexB15_: argument 0"}
!6059 = distinct !{!6059, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB11_12OffsetLookupmEEE5indexB15_"}
!6060 = distinct !{!6060, !6059, !"_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB11_12OffsetLookupmEEE5indexB15_: argument 0"}
!6061 = distinct !{!6061, !"_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_"}
!6062 = distinct !{!6062, !6061, !"_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_: argument 0"}
!6063 = distinct !{!6063, !"_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE13flush_del_insB6_"}
!6064 = distinct !{!6064, !6063, !"_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE13flush_del_insB6_: argument 0"}
!6065 = distinct !{!6065, !"_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_"}
!6066 = distinct !{!6066, !6065, !"_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_: argument 0"}
!6067 = distinct !{!6067, !"_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_"}
!6068 = distinct !{!6068, !6067, !"_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_: argument 0"}
!6069 = distinct !{!6069, !"_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_"}
!6070 = distinct !{!6070, !6069, !"_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_: argument 0"}
!6071 = distinct !{!6071, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_"}
!6072 = distinct !{!6072, !6071, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_: argument 2"}
!6073 = distinct !{!6073, !6071, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_: argument 1"}
!6074 = distinct !{!6074, !6071, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_: argument 0"}
!6075 = distinct !{!6075, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_new_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEEB6_"}
!6076 = distinct !{!6076, !6075, !"_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20emit_small_new_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEEB6_: argument 0"}
!6077 = distinct !{!6077, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsdftwklc2oBO_7similar"}
!6078 = distinct !{!6078, !6077, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsdftwklc2oBO_7similar: argument 0"}
!6079 = distinct !{!6079, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdftwklc2oBO_7similar"}
!6080 = distinct !{!6080, !6079, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdftwklc2oBO_7similar: argument 0"}
!6081 = distinct !{!6081, !"_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_"}
!6082 = distinct !{!6082, !6081, !"_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_: argument 0"}
!6083 = distinct !{!6083, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_"}
!6084 = distinct !{!6084, !6083, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_: argument 0"}
!6085 = distinct !{!6085, !6083, !"_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_: argument 1"}
!6086 = distinct !{!6086, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
!6087 = distinct !{!6087, !6086, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 0"}
!6088 = distinct !{!6088, !6086, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_: argument 1"}
!6089 = distinct !{!6089, !"_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_"}
end_hunk_7
