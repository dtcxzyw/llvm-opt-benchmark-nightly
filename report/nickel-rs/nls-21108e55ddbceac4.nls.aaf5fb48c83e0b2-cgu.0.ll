Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33046
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN3nls8requests10completion17handle_completion17hb33052dd8f6bdca6E:bb.a
bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.bf = getelementptr i8, ptr %i.be, i64 32
  %.sroa.715.0.val = load ptr, ptr %i.bf, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 40
  %.sroa.715.0.val162 = load i64, ptr %i.bg, align 8, !noundef !53 ; 4 uses
  switch i64 %.sroa.715.0.val162, label %.lr.ph.i.i.i [
    i64 0, label %_ZN3nls8position14PositionLookup13ident_data_at17h940629fc98046974E.exit
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.h
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.h ], [ %i.bv, %.lr.ph.i.i.i ] ; 2 uses
  %i.bh = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %.sroa.715.0.val162
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %.sroa.715.0.val, i64 %.sroa.05.0.lcssa.i.i.i ; 5 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 40
  %.val20.i.i.i = load i32, ptr %i.bj, align 8, !alias.scope !65065, !noalias !65066
  %i.bk = getelementptr i8, ptr %i.bi, i64 44
  %.val21.i.i.i = load i32, ptr %i.bk, align 4, !alias.scope !65065, !noalias !65066, !noundef !53
  %.not.i.i.i.i = icmp ugt i32 %.val21.i.i.i, %i.at
  %i.bl = icmp ule i32 %.val20.i.i.i, %i.at
  %i.bm = select i1 %.not.i.i.i.i, i1 %i.bl, i1 false
  br i1 %i.bm, label %_ZN3nls8position4find17h2d7dfde2afb1c23bE.exit.i, label %_ZN3nls8position14PositionLookup13ident_data_at17h940629fc98046974E.exit

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.sroa.01.029.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i ], [ %.sroa.715.0.val162, %bb.h ] ; 2 uses
  %.sroa.05.028.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i ], [ 0, %bb.h ] ; 2 uses
  %i.bn = lshr i64 %.sroa.01.029.i.i.i, 1         ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.05.028.i.i.i      ; 3 uses
  %i.bp = icmp ult i64 %i.bo, %.sroa.715.0.val162
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw [48 x i8], ptr %.sroa.715.0.val, i64 %i.bo ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 40
  %.val23.i.i.i = load i32, ptr %i.br, align 8, !alias.scope !65065, !noalias !65066
  %i.bs = getelementptr i8, ptr %i.bq, i64 44
  %.val24.i.i.i = load i32, ptr %i.bs, align 4, !alias.scope !65065, !noalias !65066, !noundef !53
  %.not.i25.i.i.i = icmp ugt i32 %.val24.i.i.i, %i.at
  %i.bt = icmp ugt i32 %.val23.i.i.i, %i.at
  %i.bu = select i1 %.not.i25.i.i.i, i1 %i.bt, i1 false
  %i.bv = select i1 %i.bu, i64 %.sroa.05.028.i.i.i, i64 %i.bo, !unpredictable !53 ; 2 uses
  %i.bw = sub nuw i64 %.sroa.01.029.i.i.i, %i.bn  ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, 1
  br i1 %i.bx, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_ZN3nls8position4find17h2d7dfde2afb1c23bE.exit.i: ; preds = %._crit_edge.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bz = load ptr, ptr %i.bi, align 8, !noalias !65066, !align !59, !noundef !53 ; 2 uses
  %.not5.i = icmp eq ptr %i.bz, null
  br i1 %.not5.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3nls8position4find17h2d7dfde2afb1c23bE.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !65066
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN3nls8position4find17h2d7dfde2afb1c23bE.exit.i
  %.sroa.54.0.i = phi i64 [ %i.cb, %bb.i ], [ undef, %_ZN3nls8position4find17h2d7dfde2afb1c23bE.exit.i ]
  %.sroa.4211.16.copyload = load i32, ptr %i.by, align 8
  %i.cc = icmp eq i32 %.sroa.4211.16.copyload, 3
  br label %_ZN3nls8position14PositionLookup13ident_data_at17h940629fc98046974E.exit

_ZN3nls8position14PositionLookup13ident_data_at17h940629fc98046974E.exit: ; preds = %bb.j, %._crit_edge.i.i.i, %bb.h
  %.sroa.4211.0 = phi i1 [ %i.cc, %bb.j ], [ true, %._crit_edge.i.i.i ], [ true, %bb.h ]
  %.sroa.2.0 = phi i64 [ %.sroa.54.0.i, %bb.j ], [ undef, %._crit_edge.i.i.i ], [ undef, %bb.h ]
  %.sroa.0.0216 = phi ptr [ %i.bz, %bb.j ], [ undef, %._crit_edge.i.i.i ], [ undef, %bb.h ] ; 2 uses
  %i.cd = getelementptr i8, ptr %i.be, i64 8
  %.sroa.715.0.val163 = load ptr, ptr %i.cd, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.be, i64 16
  %.sroa.715.0.val164 = load i64, ptr %i.ce, align 8, !noundef !53 ; 4 uses
  switch i64 %.sroa.715.0.val164, label %.lr.ph.i.i.i171 [
    i64 0, label %bb.da
    i64 1, label %._crit_edge.i.i.i166
  ]

._crit_edge.i.i.i166:                             ; preds = %.lr.ph.i.i.i171, %_ZN3nls8position14PositionLookup13ident_data_at17h940629fc98046974E.exit
  %.sroa.05.0.lcssa.i.i.i167 = phi i64 [ 0, %_ZN3nls8position14PositionLookup13ident_data_at17h940629fc98046974E.exit ], [ %i.ct, %.lr.ph.i.i.i171 ] ; 2 uses
  %i.cf = icmp ult i64 %.sroa.05.0.lcssa.i.i.i167, %.sroa.715.0.val164
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.715.0.val163, i64 %.sroa.05.0.lcssa.i.i.i167 ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %.val20.i.i.i168 = load i32, ptr %i.ch, align 8, !alias.scope !65067
  %i.ci = getelementptr i8, ptr %i.cg, i64 12
  %.val21.i.i.i169 = load i32, ptr %i.ci, align 4, !alias.scope !65067, !noundef !53
  %.not.i.i.i.i170 = icmp ugt i32 %.val21.i.i.i169, %i.at
  %i.cj = icmp ule i32 %.val20.i.i.i168, %i.at
  %i.ck = select i1 %.not.i.i.i.i170, i1 %i.cj, i1 false
  br i1 %i.ck, label %bb.k, label %bb.da

.lr.ph.i.i.i171:                                  ; preds = %_ZN3nls8position14PositionLookup13ident_data_at17h940629fc98046974E.exit, %.lr.ph.i.i.i171
  %.sroa.01.029.i.i.i172 = phi i64 [ %i.cu, %.lr.ph.i.i.i171 ], [ %.sroa.715.0.val164, %_ZN3nls8position14PositionLookup13ident_data_at17h940629fc98046974E.exit ] ; 2 uses
  %.sroa.05.028.i.i.i173 = phi i64 [ %i.ct, %.lr.ph.i.i.i171 ], [ 0, %_ZN3nls8position14PositionLookup13ident_data_at17h940629fc98046974E.exit ] ; 2 uses
  %i.cl = lshr i64 %.sroa.01.029.i.i.i172, 1      ; 2 uses
  %i.cm = add i64 %i.cl, %.sroa.05.028.i.i.i173   ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %.sroa.715.0.val164
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %.sroa.715.0.val163, i64 %i.cm ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  %.val23.i.i.i174 = load i32, ptr %i.cp, align 8, !alias.scope !65067
  %i.cq = getelementptr i8, ptr %i.co, i64 12
  %.val24.i.i.i175 = load i32, ptr %i.cq, align 4, !alias.scope !65067, !noundef !53
  %.not.i25.i.i.i176 = icmp ugt i32 %.val24.i.i.i175, %i.at
  %i.cr = icmp ugt i32 %.val23.i.i.i174, %i.at
  %i.cs = select i1 %.not.i25.i.i.i176, i1 %i.cr, i1 false
  %i.ct = select i1 %i.cs, i64 %.sroa.05.028.i.i.i173, i64 %i.cm, !unpredictable !53 ; 2 uses
  %i.cu = sub nuw i64 %.sroa.01.029.i.i.i172, %i.cl ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, 1
  br i1 %i.cv, label %.lr.ph.i.i.i171, label %._crit_edge.i.i.i166

bb.k:                                             ; preds = %._crit_edge.i.i.i166
  %i.cw = load ptr, ptr %i.cg, align 8, !nonnull !53, !align !59, !noundef !53 ; 13 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i8, ptr %i.cx, align 8, !range !102, !noundef !53 ; 2 uses
  %i.cz = icmp eq i8 %i.cy, 14
  br i1 %i.cz, label %bb.m, label %bb.cz

bb.l:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !53, !align !59, !noundef !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  br label %.invoke

.invoke:                                          ; preds = %bb.em, %bb.eh, %bb.l
  %i.dc = phi ptr [ %i.db, %bb.l ], [ %i.uq, %bb.em ], [ %i.um, %bb.eh ]
  invoke fastcc void @_ZN3nls8requests10completion22record_path_completion17h23376eec85008050E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(856) %i.am)
          to label %bb.o unwind label %.thread264

bb.m:                                             ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !53, !align !75, !noundef !53
  %i.df = load i8, ptr %i.de, align 4, !range !160, !noundef !53
  %i.dg = icmp eq i8 %i.df, 7
  br i1 %i.dg, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.di = load i64, ptr %i.dh, align 8, !noundef !53
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.l, label %.thread

bb.o:                                             ; preds = %.invoke, %bb.fj, %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h3a10c233bc0b31feE.exit185", %bb.dq, %bb.dl, %bb.da, %bb.db
  %.sroa.0214.0.copyload = load i64, ptr %i.aj, align 8
  %.sroa.4215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.4215.0.copyload = load ptr, ptr %.sroa.4215.0..sroa_idx, align 8, !nonnull !53, !noundef !53 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !65068
  %i.dk = icmp ult i64 %.sroa.5.0.copyload, 144115188075855872
  call void @llvm.assume(i1 %i.dk)
  %i.dl = getelementptr inbounds nuw [64 x i8], ptr %.sroa.4215.0.copyload, i64 %.sroa.5.0.copyload
  store ptr %.sroa.4215.0.copyload, ptr %i.p, align 8, !noalias !65068
  %.sroa.4.0..sroa_idx.i177 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.4215.0.copyload, ptr %.sroa.4.0..sroa_idx.i177, align 8, !noalias !65068
  %.sroa.5.0..sroa_idx.i178 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.0214.0.copyload, ptr %.sroa.5.0..sroa_idx.i178, align 8, !noalias !65068
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.dl, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !65068
  %i.dm = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i32 %i.aq, ptr %i.dm, align 8, !noalias !65068
  %i.dn = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store i32 %i.at, ptr %i.dn, align 4, !noalias !65068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !65069
  %i.do = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 8, !range !54, !noalias !65070, !noundef !53
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i", !prof !55

._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i: ; preds = %bb.o
  %.pre.i.i.i.i = load i64, ptr %i.do, align 8, !noalias !65071
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !65071
  br label %bb.p

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i": ; preds = %bb.o
  %i.ds = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i unwind label %bb.cy, !noalias !65072 ; 2 uses

.noexc.i.i:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i"
  %i.dt = extractvalue { i64, i64 } %i.ds, 0
  %i.du = extractvalue { i64, i64 } %i.ds, 1      ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 %i.du, ptr %i.dv, align 8, !noalias !65072
  store i8 1, ptr %i.dp, align 8, !noalias !65072
  br label %bb.p

bb.p:                                             ; preds = %.noexc.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i
  %.pre-phi273.i.i = phi i64 [ %i.du, %.noexc.i.i ], [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.dt, %.noexc.i.i ], [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i ] ; 2 uses
  %i.dw = add i64 %.pre-phi.i.i, 1
  store i64 %i.dw, ptr %i.do, align 8, !noalias !65071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false), !noalias !65069
  %.sroa.4.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 3 uses
  store i64 %.pre-phi.i.i, ptr %.sroa.4.0..sroa_idx.i1.i, align 8, !noalias !65069
  %.sroa.5.0..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  store i64 %.pre-phi273.i.i, ptr %.sroa.5.0..sroa_idx.i2.i, align 8, !noalias !65069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !65069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !65073
  %i.dx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.dy, align 8, !alias.scope !65074, !noalias !65069 ; 4 uses
  %i.dz = load ptr, ptr %i.dx, align 8, !alias.scope !65075, !noalias !65069, !nonnull !53, !noundef !53 ; 5 uses
  %.not13.i.i.i245.i.i = icmp eq ptr %.promoted.i.i, %i.dz
  br i1 %.not13.i.i.i245.i.i, label %.loopexit212.i.i, label %.lr.ph.i.i.i.lr.ph.i.i

.lr.ph.i.i.i.lr.ph.i.i:                           ; preds = %bb.p
  %i.ea = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.eb = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.val1.i244.i.i = load i32, ptr %i.ea, align 4, !alias.scope !65076, !noalias !65069
  %.val.i243.i.i = load i32, ptr %i.eb, align 8, !alias.scope !65076, !noalias !65069
  %i.ec = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %.sroa.6.i.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h03ae1f11566ac4d2E.exit.i.i", %.lr.ph.i.i.i.lr.ph.i.i
  %.lcssa239242246.i.i = phi ptr [ %.promoted.i.i, %.lr.ph.i.i.i.lr.ph.i.i ], [ %i.eu, %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h03ae1f11566ac4d2E.exit.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !65077)
  call void @llvm.experimental.noalias.scope.decl(metadata !65078)
  call void @llvm.experimental.noalias.scope.decl(metadata !65079)
  br label %bb.q

bb.q:                                             ; preds = %bb.ae, %.lr.ph.i.i.i.i.i
  %i.et = phi ptr [ %.lcssa239242246.i.i, %.lr.ph.i.i.i.i.i ], [ %i.eu, %bb.ae ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !65080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.et, i64 64, i1 false), !noalias !65080
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 64 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.9.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !65081)
  call void @llvm.experimental.noalias.scope.decl(metadata !65082)
  call void @llvm.experimental.noalias.scope.decl(metadata !65083)
  call void @llvm.experimental.noalias.scope.decl(metadata !65084)
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.ec, align 8, !alias.scope !65085, !noalias !65080
  %i.ev = trunc i32 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i to i1
  br i1 %i.ev, label %bb.r, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.i.i.i.i.i"

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !65086
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.ew, i64 12, i1 false), !noalias !65080
  %i.ex = invoke noundef zeroext i1 @_ZN18nickel_lang_parser8position7RawSpan8contains17he4b051fa10876b22E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.j, i32 noundef %.val.i243.i.i, i32 noundef %.val1.i244.i.i)
          to label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h32109d97f62ff7d9E.exit.i.i.i.i.i.i" unwind label %bb.s, !noalias !65086

bb.s:                                             ; preds = %bb.r
  %i.ey = landingpad { ptr, i32 }
          cleanup
  store ptr %i.eu, ptr %i.dy, align 8, !alias.scope !65074, !noalias !65069
  br label %.body.i.i

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h32109d97f62ff7d9E.exit.i.i.i.i.i.i": ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !65086
  br i1 %i.ex, label %bb.t, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.i.i.i.i.i"

bb.t:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h32109d97f62ff7d9E.exit.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !65087)
  call void @llvm.experimental.noalias.scope.decl(metadata !65088)
  call void @llvm.experimental.noalias.scope.decl(metadata !65089)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !range !83, !alias.scope !65090, !noalias !65080, !noundef !53 ; 2 uses
  %i.ez = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ez, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i", label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !65090, !noalias !65080, !nonnull !53, !noundef !53
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !65091
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i": ; preds = %bb.u, %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !65092)
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.ee, align 8, !alias.scope !65093, !noalias !65080, !nonnull !53, !noundef !53 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.ef, align 8, !alias.scope !65093, !noalias !65080, !noundef !53 ; 2 uses
  %i.fa = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.fa, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i", %"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.08.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fc, %"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [200 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.08.i.i.i.i.i.i.i.i.i.i ; 8 uses
  %i.fc = add nuw i64 %.sroa.0.08.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fd = load i64, ptr %i.fb, align 8, !range !60, !alias.scope !65094, !noalias !65095, !noundef !53 ; 5 uses
  %i.fe = icmp eq i64 %i.fd, 19
  br i1 %i.fe, label %"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !65096)
  call void @llvm.experimental.noalias.scope.decl(metadata !65097), !noalias !65098
  call void @llvm.experimental.noalias.scope.decl(metadata !65099), !noalias !65098
  %i.ff = icmp eq i64 %i.fd, 18
  br i1 %i.ff, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !65100), !noalias !65098
  call void @llvm.experimental.noalias.scope.decl(metadata !65101), !noalias !65098
  %i.fg = icmp ne i64 %i.fd, 12
  call void @llvm.assume(i1 %i.fg), !noalias !65098
  %i.fh = icmp samesign ult i64 %i.fd, 3
  br i1 %i.fh, label %bb.x, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i"

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !65102), !noalias !65098
  switch i64 %i.fd, label %bb.y [
    i64 0, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i"
    i64 1, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.fi, align 8, !alias.scope !65103, !noalias !65095, !noundef !53 ; 4 uses
  %i.fj = icmp eq i64 %.val3.i.i.i.i.i.i.i.i, 0
  br i1 %i.fj, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.y
  %i.fk = shl i64 %.val3.i.i.i.i.i.i.i.i, 2
  %i.fl = icmp slt i64 %.val3.i.i.i.i.i.i.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.fl), !noalias !65098
  %i.fm = and i64 %i.fk, -16                      ; 2 uses
  %i.fn = add i64 %i.fm, 16                       ; 2 uses
  %i.fo = add nsw i64 %.val3.i.i.i.i.i.i.i.i, 17
  %i.fp = add i64 %i.fo, %i.fn                    ; 4 uses
  %i.fq = icmp uge i64 %i.fp, %i.fn
  %i.fr = icmp ult i64 %i.fp, 9223372036854775793
  call void @llvm.assume(i1 %i.fq), !noalias !65098
  call void @llvm.assume(i1 %i.fr), !noalias !65098
  %i.fs = icmp eq i64 %i.fp, 0
  br i1 %i.fs, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ %i.fz, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i ], [ %i.fm, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i.i.i.i.i.i = phi i64 [ %i.gc, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i ], [ %i.fp, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.sink.in.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.val.sink.i.i.i.i.i.i.i.i = load ptr, ptr %.val.sink.in.i.i.i.i.i.i.i.i, align 8, !alias.scope !65103, !noalias !65095, !nonnull !53, !noundef !53
  %i.ft = sub nuw nsw i64 -16, %.sink.i.i.i.i.i.i.i.i
  %i.fu = getelementptr inbounds i8, ptr %.val.sink.i.i.i.i.i.i.i.i, i64 %i.ft
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fu, i64 noundef %.sink7.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #66, !noalias !65104
  br label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i"

bb.z:                                             ; preds = %bb.x
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %.val1.i.i.i.i.i.i39.i.i = load i64, ptr %i.fv, align 8, !alias.scope !65103, !noalias !65095, !noundef !53 ; 4 uses
  %i.fw = icmp eq i64 %.val1.i.i.i.i.i.i39.i.i, 0
  br i1 %i.fw, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i: ; preds = %bb.z
  %i.fx = shl i64 %.val1.i.i.i.i.i.i39.i.i, 2
  %i.fy = icmp slt i64 %.val1.i.i.i.i.i.i39.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.fy), !noalias !65098
  %i.fz = and i64 %i.fx, -16                      ; 2 uses
  %i.ga = add i64 %i.fz, 16                       ; 2 uses
  %i.gb = add nsw i64 %.val1.i.i.i.i.i.i39.i.i, 17
  %i.gc = add i64 %i.gb, %i.ga                    ; 4 uses
  %i.gd = icmp uge i64 %i.gc, %i.ga
  %i.ge = icmp ult i64 %i.gc, 9223372036854775793
  call void @llvm.assume(i1 %i.gd), !noalias !65098
  call void @llvm.assume(i1 %i.ge), !noalias !65098
  %i.gf = icmp eq i64 %i.gc, 0
  br i1 %i.gf, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i.i.i"

"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i, %bb.z, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.y, %bb.x, %bb.w, %bb.v
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fb, i64 120
  call void @llvm.experimental.noalias.scope.decl(metadata !65105), !noalias !65098
  %i.gh = load i64, ptr %i.gg, align 8, !range !96, !alias.scope !65106, !noalias !65095, !noundef !53 ; 4 uses
  %i.gi = icmp ne i64 %i.gh, -9223372036854775805
  call void @llvm.assume(i1 %i.gi), !noalias !65098
  %i.gj = icmp ult i64 %i.gh, -9223372036854775807
  br i1 %i.gj, label %bb.aa, label %"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i.i.i.i"

bb.aa:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !65107), !noalias !65098
  %switch.i.i.i.i.i = icmp sgt i64 %i.gh, 0
  br i1 %switch.i.i.i.i.i, label %bb.ab, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7df5d1c3f5e57d39E.exit.i.i.i.i.i"

bb.ab:                                            ; preds = %bb.aa
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fb, i64 128
  %.val5.i.i.i.i.i = load ptr, ptr %i.gk, align 8, !alias.scope !65108, !noalias !65095, !nonnull !53, !noundef !53
  %i.gl = shl nuw i64 %i.gh, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.gl, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !65109
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7df5d1c3f5e57d39E.exit.i.i.i.i.i"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7df5d1c3f5e57d39E.exit.i.i.i.i.i": ; preds = %bb.ab, %bb.aa
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fb, i64 144
  %.val.i.i.i37.i.i = load i64, ptr %i.gm, align 8, !range !79, !alias.scope !65108, !noalias !65095, !noundef !53 ; 2 uses
  %switch8.i.i.i.i.i = icmp sgt i64 %.val.i.i.i37.i.i, 0
  br i1 %switch8.i.i.i.i.i, label %bb.ac, label %"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i.i.i.i"

bb.ac:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7df5d1c3f5e57d39E.exit.i.i.i.i.i"
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fb, i64 152
  %.val1.i.i.i38.i.i = load ptr, ptr %i.gn, align 8, !alias.scope !65108, !noalias !65095, !nonnull !53, !noundef !53
  %i.go = shl nuw i64 %.val.i.i.i37.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i38.i.i, i64 noundef %i.go, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !65109
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ac, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7df5d1c3f5e57d39E.exit.i.i.i.i.i", %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.gp = icmp eq i64 %i.fc, %.val1.i.i.i.i.i.i.i.i
  br i1 %i.gp, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$alloc..borrow..Cow$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h4cf334251d7e536dE.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i"
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.ed, align 8, !range !83, !alias.scope !65093, !noalias !65080, !noundef !53 ; 2 uses
  %i.gq = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.gq, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.thread.i.i.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i.i.i.i.i"
  %i.gr = mul nuw i64 %.val2.i.i.i.i.i.i.i.i, 200
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !65095
  br label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.thread.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.thread.i.i.i.i.i": ; preds = %bb.ad, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2166884c55782c7E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !65080
  br label %bb.ae

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.i.i.i.i.i": ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h32109d97f62ff7d9E.exit.i.i.i.i.i.i", %bb.q
  %.sroa.07.0.copyload.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !65110, !noalias !65080 ; 5 uses
  %.sroa.6.i.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !65110, !noalias !65080 ; 4 uses
  %.sroa.6.i.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.i.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8, !alias.scope !65110, !noalias !65080 ; 2 uses
  %.sroa.6.i.sroa.6.0.copyload.i.i.i.i = load i64, ptr %i.ed, align 8, !alias.scope !65110, !noalias !65080 ; 4 uses
  %.sroa.6.i.sroa.7.0.copyload.i.i.i.i = load ptr, ptr %i.ee, align 8, !alias.scope !65110, !noalias !65080 ; 5 uses
  %.sroa.6.i.sroa.8.0.copyload.i.i.i.i = load i64, ptr %i.ef, align 8, !alias.scope !65110, !noalias !65080 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.9.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i64 16, i1 false), !alias.scope !65110, !noalias !65080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !65080
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.07.0.copyload.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.thread.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.9.i.i.i.i)
  %.not.i.i.i.i.i = icmp eq ptr %i.eu, %i.dz
  br i1 %.not.i.i.i.i.i, label %.loopexit212.i.i, label %bb.q

.body.i.i:                                        ; preds = %bb.ci, %bb.bn, %bb.bm, %bb.bk, %bb.s
  %.sink.i.i = phi ptr [ %i.k, %bb.s ], [ %i.m, %bb.bm ], [ %i.m, %bb.bn ], [ %i.m, %bb.ci ], [ %i.m, %bb.bk ]
  %.pn.i.i = phi { ptr, i32 } [ %i.ey, %bb.s ], [ %i.lp, %bb.bm ], [ %i.lp, %bb.bn ], [ %.pn.i.i19.i.i, %bb.ci ], [ %i.li, %bb.bk ]
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$nls..requests..completion..CompletionItem$GT$17h197edb1357ef3306E"(ptr noalias noundef align 8 dereferenceable(64) %.sink.i.i) #77, !noalias !65069
  call fastcc void @"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E"(ptr noalias noundef align 8 dereferenceable(40) %i.n) #77, !noalias !65069
  call fastcc void @"_ZN4core3ptr130drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$nls..requests..completion..CompletionItem$GT$$GT$17h405d5ac5d6027c9cE"(ptr noalias noundef align 8 dereferenceable(48) %i.o) #77, !noalias !65069
  br label %.body

bb.af:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h7631466dcf8081fcE.exit.i.i.i.i.i"
  store ptr %i.eu, ptr %i.dy, align 8, !alias.scope !65074, !noalias !65069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !65069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.9.i.i.i.i, i64 16, i1 false), !noalias !65069
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.9.i.i.i.i)
  store i64 %.sroa.07.0.copyload.i.i.i.i.i, ptr %i.m, align 8, !noalias !65069
  store ptr %.sroa.6.i.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !65069
  store i64 %.sroa.6.i.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !65069
  store i64 %.sroa.6.i.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !65069
  store ptr %.sroa.6.i.sroa.7.0.copyload.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !65069
  store i64 %.sroa.6.i.sroa.8.0.copyload.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !65069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !65069
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1122)
          to label %bb.bl unwind label %bb.bk, !noalias !65069

.loopexit212.i.i:                                 ; preds = %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h03ae1f11566ac4d2E.exit.i.i", %bb.ae, %bb.p
  %i.gs = phi ptr [ %i.eu, %bb.ae ], [ %.promoted.i.i, %bb.p ], [ %i.eu, %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h03ae1f11566ac4d2E.exit.i.i" ] ; 2 uses
  %4 = phi ptr [ %i.dz, %bb.ae ], [ %.promoted.i.i, %bb.p ], [ %i.dz, %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h03ae1f11566ac4d2E.exit.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !65111)
  call void @llvm.experimental.noalias.scope.decl(metadata !65112)
  call void @llvm.experimental.noalias.scope.decl(metadata !65113)
  %i.gt = ptrtoint ptr %4 to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub nuw i64 %i.gt, %i.gu
  %i.gw = lshr exact i64 %i.gv, 6
  call fastcc void @"_ZN4core3ptr72drop_in_place$LT$$u5b$nls..requests..completion..CompletionItem$u5d$$GT$17h20c0569be5037711E"(ptr noalias noundef nonnull align 8 %i.gs, i64 noundef %i.gw), !noalias !65114
  %i.gx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !65115, !noalias !65069, !noundef !53 ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i", label %bb.ag

bb.ag:                                            ; preds = %.loopexit212.i.i
  %i.ha = load ptr, ptr %i.n, align 8, !alias.scope !65115, !noalias !65069, !nonnull !53, !noundef !53
  %i.hb = shl nuw i64 %i.gy, 6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ha, i64 noundef %i.hb, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !65114
  br label %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i"

"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i": ; preds = %bb.ag, %.loopexit212.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !65069
  %.sroa.0162.0.copyload.i.i = load ptr, ptr %i.o, align 8, !noalias !65069, !nonnull !53, !noundef !53 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !65069 ; 4 uses
  %.sroa.3163.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.3163.0.copyload.i.i = load i64, ptr %.sroa.3163.0..sroa_idx.i.i, align 8, !noalias !65069
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0162.0.copyload.i.i, align 16, !noalias !65116
  %i.hc = icmp eq i64 %.sroa.2.0.copyload.i.i, 0
  br i1 %i.hc, label %bb.ah, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i"
  %i.hd = mul i64 %.sroa.2.0.copyload.i.i, 88     ; 2 uses
  %i.he = add i64 %i.hd, 88
  %i.hf = icmp ult i64 %i.he, -15
  call void @llvm.assume(i1 %i.hf)
  %i.hg = and i64 %i.hd, -16                      ; 2 uses
  %i.hh = add i64 %i.hg, 96                       ; 2 uses
  %i.hi = add i64 %.sroa.2.0.copyload.i.i, 17
  %i.hj = add i64 %i.hi, %i.hh                    ; 3 uses
  %i.hk = icmp uge i64 %i.hj, %i.hh
  call void @llvm.assume(i1 %i.hk)
  %i.hl = icmp ult i64 %i.hj, 9223372036854775793
  call void @llvm.assume(i1 %i.hl)
  %i.hm = sub i64 -96, %i.hg
  %i.hn = getelementptr inbounds i8, ptr %.sroa.0162.0.copyload.i.i, i64 %i.hm
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i"
  %.sroa.5.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.hj, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i" ]
  %.sroa.5.sroa.4.0.i.i.i.i.i.i = phi ptr [ %i.hn, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i" ]
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ 0, %"_ZN4core3ptr305drop_in_place$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$C$nls..requests..completion..remove_myself$LT$alloc..vec..into_iter..IntoIter$LT$nls..requests..completion..CompletionItem$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd4ffd15a5d6cc9d3E.exit.i.i" ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0162.0.copyload.i.i, i64 16
  %i.hp = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.hq = getelementptr i8, ptr %.sroa.0162.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i
  %i.hr = getelementptr i8, ptr %i.hq, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !65117
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.i, align 8, !alias.scope !65118, !noalias !65119
  %.sroa.4154.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.4154.0..sroa_idx.i.i, align 8, !alias.scope !65118, !noalias !65119
  %.sroa.5155.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i, ptr %.sroa.5155.0..sroa_idx.i.i, align 8, !alias.scope !65118, !noalias !65119
  %.sroa.6156.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  store ptr %.sroa.0162.0.copyload.i.i, ptr %.sroa.6156.0..sroa_idx.i.i, align 8, !alias.scope !65118, !noalias !65119
  %.sroa.7157.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  store ptr %i.ho, ptr %.sroa.7157.0..sroa_idx.i.i, align 8, !alias.scope !65118, !noalias !65119
  %.sroa.8158.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.hr, ptr %.sroa.8158.0..sroa_idx.i.i, align 8, !alias.scope !65118, !noalias !65119
  %.sroa.9159.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  store <16 x i1> %i.hp, ptr %.sroa.9159.0..sroa_idx.i.i, align 8, !alias.scope !65118, !noalias !65119
  %.sroa.11161.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 4 uses
  store i64 %.sroa.3163.0.copyload.i.i, ptr %.sroa.11161.0..sroa_idx.i.i, align 8, !alias.scope !65118, !noalias !65119
  call void @llvm.experimental.noalias.scope.decl(metadata !65120)
  call void @llvm.experimental.noalias.scope.decl(metadata !65121)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !65122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !65123
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8b370152447221c6E"(ptr noalias noundef align 8 captures(address) dereferenceable(464) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %bb.aj unwind label %bb.ai, !noalias !65124

bb.ai:                                            ; preds = %bb.ah
  %i.hs = landingpad { ptr, i32 }
          cleanup
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.11161.0..sroa_idx.i.i, align 8, !alias.scope !65125, !noalias !65126
  br label %bb.bg

bb.aj:                                            ; preds = %bb.ah
  %i.ht = load i64, ptr %i.g, align 8, !range !79, !noalias !65123, !noundef !53
  %.not.i.i.i.i9.i.i = icmp eq i64 %i.ht, -9223372036854775808
  br i1 %.not.i.i.i.i9.i.i, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  store i64 0, ptr %i.aa, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 0, ptr %i.hv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !65123
  call void @llvm.experimental.noalias.scope.decl(metadata !65127)
  call void @llvm.experimental.noalias.scope.decl(metadata !65128)
  call void @llvm.experimental.noalias.scope.decl(metadata !65129)
  call void @llvm.experimental.noalias.scope.decl(metadata !65130)
  call void @llvm.experimental.noalias.scope.decl(metadata !65131)
  call void @llvm.experimental.noalias.scope.decl(metadata !65132)
  call void @llvm.experimental.noalias.scope.decl(metadata !65133)
  %i.hw = load i64, ptr %.sroa.11161.0..sroa_idx.i.i, align 8, !alias.scope !65134, !noalias !65117, !noundef !53 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ak
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %.sroa.9159.0..sroa_idx.i.i, align 8, !alias.scope !65135, !noalias !65117
  %.promoted7.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6156.0..sroa_idx.i.i, align 8, !alias.scope !65134, !noalias !65117
  %.promoted11.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.7157.0..sroa_idx.i.i, align 8, !alias.scope !65134, !noalias !65117
  br label %bb.al

bb.al:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted11.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.hy = phi i64 [ %i.hw, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.il, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted7.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.hz = phi i16 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ii, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65136)
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hz, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ia = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ] ; 2 uses
  %i.ib = phi ptr [ %i.id, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ia, align 16, !noalias !65137
  %i.ic = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.id = getelementptr inbounds i8, ptr %i.ib, i64 -1408 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ic to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al
  %.lcssa12.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ %i.ie, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ %i.id, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.hz, %bb.al ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.if = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ig = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ih = zext nneg i16 %i.ig to i64
  %i.ii = and i16 %i.if, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ij = sub nsw i64 0, %i.ih
  %i.ik = getelementptr inbounds [88 x i8], ptr %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ij
  %i.il = add i64 %i.hy, -1                       ; 2 uses
  %i.im = getelementptr inbounds i8, ptr %i.ik, i64 -88
  call fastcc void @"_ZN4core3ptr94drop_in_place$LT$$LP$alloc..string..String$C$nls..requests..completion..CompletionItem$RP$$GT$17hb5671f75511c6d3dE"(ptr noalias noundef align 8 dereferenceable(88) %i.im), !noalias !65138
  %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.il, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.al

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h093ec2f5615821d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ak
  %i.in = load i64, ptr %i.i, align 8, !range !79, !alias.scope !65139, !noalias !65117, !noundef !53 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.in, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fk, label %bb.am

bb.am:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h1012f889f7ae10d0E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.io = load i64, ptr %.sroa.4154.0..sroa_idx.i.i, align 8, !alias.scope !65139, !noalias !65117, !noundef !53 ; 2 uses
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %bb.fk, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iq = load ptr, ptr %.sroa.5155.0..sroa_idx.i.i, align 8, !alias.scope !65139, !noalias !65117, !nonnull !53, !noundef !53
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iq, i64 noundef %i.io, i64 noundef range(i64 1, -9223372036854775807) %i.in) #66, !noalias !65140
  br label %bb.fk

bb.ao:                                            ; preds = %bb.ar
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$lsp_types..completion..CompletionItem$GT$17h3f5a837b53a6f7a5E"(ptr noalias noundef align 8 dereferenceable(464) %i.g) #77
          to label %bb.bg unwind label %bb.bf, !noalias !65123

bb.ap:                                            ; preds = %bb.aj
  %.val.i.i.i.i.i.i = load i64, ptr %.sroa.11161.0..sroa_idx.i.i, align 8, !alias.scope !65141, !noalias !65117, !noundef !53 ; 2 uses
  %i.is = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.is, i64 4) ; 3 uses
  %i.it = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 464   ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.is, 19877956975980120
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.ar, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !78

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ap
  %i.iu = icmp eq i64 %i.it, 0
  br i1 %i.iu, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !65142
  %i.iv = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.it, i64 noundef range(i64 1, 9) 8) #66, !noalias !65142 ; 2 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.aq ], [ 0, %bb.ap ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.it, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ao, !noalias !65123

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.iv, %bb.aq ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.aq ] ; 2 uses
  %i.ix = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.ix)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(464) %i.g, i64 464, i1 false), !noalias !65123
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !65123
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
end_hunk_0
