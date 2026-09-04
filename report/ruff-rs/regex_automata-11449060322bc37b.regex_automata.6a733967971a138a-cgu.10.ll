Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-11449060322bc37b.regex_automata.6a733967971a138a-cgu.10?download=true
inline.NumInlined: 441
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvMNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB2_9RangeTrie6insert:bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 15 uses
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !382
  store i64 0, ptr %i.n, align 8, !noalias !382
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeECs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull %i.n, i64 noundef range(i64 1, 4611686018427387904) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, 4611686018427387904) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertEEB1m_.exit.i: ; preds = %bb.i, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.au, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  br label %bb.ev

.loopexit253:                                     ; preds = %bb.de, %.noexc132, %bb.dx, %bb.ec, %bb.eh, %bb.ej, %bb.eo
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp.loopexit:                      ; preds = %bb.ax, %bb.au, %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert3new.exit.i85, %bb.at
  %lpad.loopexit258 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.t, %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert3new.exit.i, %bb.u, %bb.bc, %bb.be, %bb.et
  %lpad.loopexit261 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke1659, %.invoke1657, %.invoke, %bb.e, %bb.g, %bb.m, %bb.do
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 8, !noalias !382
  %i.w = trunc nuw nsw i64 %2 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !382
  %i.x = load i64, ptr %i.v, align 8, !alias.scope !383, !noalias !384, !noundef !5 ; 3 uses
  %i.y = load i64, ptr %i.r, align 8, !range !7, !alias.scope !383, !noalias !384, !noundef !5
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 7 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !383, !noalias !384, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.x ; 3 uses
  store i64 %.sroa.0.0.copyload.i, ptr %i.ac, align 4
  %.sroa.4.0..sroa_idx200 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 1, ptr %.sroa.4.0..sroa_idx200, align 4
  %.sroa.5.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i8 %i.w, ptr %.sroa.5.0..sroa_idx201, align 4
  %i.ad = add i64 %i.x, 1                         ; 3 uses
  store i64 %i.ad, ptr %i.v, align 8, !alias.scope !383, !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53)
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %._crit_edge728, label %.lr.ph727

.lr.ph727:                                        ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 17 uses
  %.sroa.4204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  %.sroa.6206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 11
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 13
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i193 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.52.0..sroa_idx.i194 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %.sroa.4.0..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx.i187 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.l

thread-pre-split:                                 ; preds = %.loopexit, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53)
  %.pr = load i64, ptr %i.v, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53)
  %i.at = icmp eq i64 %.pr, 0
  br i1 %i.at, label %._crit_edge728, label %bb.l

._crit_edge728:                                   ; preds = %thread-pre-split, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %._crit_edge728
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertEEB1m_.exit.i unwind label %bb.k

bb.j:                                             ; preds = %._crit_edge728
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertEEB1f_.exit unwind label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.l:                                             ; preds = %.lr.ph727, %thread-pre-split
  %i.aw = phi i64 [ %i.ad, %.lr.ph727 ], [ %.pr, %thread-pre-split ] ; 2 uses
  %i.ax = add nsw i64 %i.aw, -1                   ; 3 uses
  store i64 %i.ax, ptr %i.v, align 8
  %i.ay = load i64, ptr %i.r, align 8, !range !7, !noundef !5
  %i.az = icmp samesign ult i64 %i.ax, %i.ay
  call void @llvm.assume(i1 %i.az)
  %i.ba = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5
  %i.bb = icmp samesign ult i64 %i.aw, 576460752303423489
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.53, ptr noundef nonnull align 4 dereferenceable(16) %i.bc, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.53, i64 16, i1 false)
  %i.bd = load i32, ptr %i.af, align 4, !noundef !5
  %i.be = load i8, ptr %i.ag, align 4, !alias.scope !385, !noundef !5 ; 3 uses
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = icmp ult i8 %i.be, 5
  br i1 %i.bg, label %bb.o, label %bb.m, !prof !16

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bf, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #26
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc76:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertEEB1m_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertEEB1f_.exit: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

bb.o:                                             ; preds = %bb.l
  %i.bi = icmp eq i8 %i.be, 0
  br i1 %i.bi, label %.invoke, label %bb.p, !prof !15

.invoke:                                          ; preds = %bb.o, %bb.aq
  %i.bj = phi ptr [ @45, %bb.aq ], [ @29, %bb.o ]
  %i.bk = phi i64 [ 40, %bb.aq ], [ 36, %bb.o ]
  %i.bl = phi ptr [ @46, %bb.aq ], [ @33, %bb.o ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bl) #26
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bm = load i16, ptr %i.q, align 4             ; 3 uses
  %i.bn = zext i16 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 32               ; 2 uses
  %i.bp = trunc i16 %i.bm to i8                   ; 2 uses
  %i.bq = lshr i16 %i.bm, 8
  %i.br = trunc nuw i16 %i.bq to i8
  %i.bs = add nsw i64 %i.bf, -1                   ; 14 uses
  %i.bt = zext i32 %i.bd to i64                   ; 30 uses
  %i.bu = load i64, ptr %i.aj, align 8, !noundef !5 ; 4 uses
  %i.bv = icmp ugt i64 %i.bu, %i.bt
  br i1 %i.bv, label %bb.q, label %.invoke1657

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.bt ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %.val = load ptr, ptr %i.by, align 8, !nonnull !5, !noundef !5
  %i.bz = getelementptr i8, ptr %i.bx, i64 16
  %.val56 = load i64, ptr %i.bz, align 8, !noundef !5 ; 6 uses
  %.not11.i.i = icmp eq i64 %.val56, 0
  br i1 %.not11.i.i, label %bb.s, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.1.i.i, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %.sroa.03.09.i.i = phi i64 [ %.sroa.03.1.i.i, %bb.r ], [ %.val56, %bb.q ] ; 2 uses
  %i.ca = add nuw nsw i64 %.sroa.03.09.i.i, %.sroa.0.010.i.i
  %i.cb = lshr i64 %i.ca, 1                       ; 5 uses
  %i.cc = icmp samesign ult i64 %i.cb, %.val56
  br i1 %i.cc, label %bb.r, label %.invoke1657

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.cb
  %i.ce = getelementptr i8, ptr %i.cd, i64 5
  %.val7.i.i = load i8, ptr %i.ce, align 1, !alias.scope !386, !noalias !387, !noundef !5
  %.not.i.i = icmp ult i8 %.val7.i.i, %i.bp       ; 2 uses
  %i.cf = add nuw nsw i64 %i.cb, 1
  %.sroa.03.1.i.i = select i1 %.not.i.i, i64 %.sroa.03.09.i.i, i64 %i.cb ; 2 uses
  %.sroa.0.1.i.i = select i1 %.not.i.i, i64 %i.cf, i64 %.sroa.0.010.i.i ; 4 uses
  %i.cg = icmp ult i64 %.sroa.0.1.i.i, %.sroa.03.1.i.i
  br i1 %i.cg, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB4_5State4find.exit

.invoke1657:                                      ; preds = %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert4push.exit, %bb.p, %.lr.ph.i.i, %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert4push.exit95, %bb.v, %.loopexit254, %bb.er, %bb.eq, %bb.el, %bb.ef, %bb.ee, %bb.dz, %bb.cz, %bb.dh, %bb.dg, %bb.db
  %i.ch = phi i64 [ %i.bt, %.loopexit254 ], [ %.sroa.017.2716, %bb.dh ], [ %i.cb, %.lr.ph.i.i ], [ %.sroa.017.2716, %bb.er ], [ %i.bt, %bb.db ], [ %i.bt, %bb.dg ], [ %i.bt, %bb.cz ], [ %i.bt, %bb.dz ], [ %i.bt, %bb.ee ], [ %.sroa.017.2716, %bb.ef ], [ %i.bt, %bb.el ], [ %i.bt, %bb.eq ], [ %i.bt, %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert4push.exit95 ], [ %.sroa.017.0719, %bb.v ], [ %i.bt, %bb.p ], [ %i.bt, %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert4push.exit ]
  %i.ci = phi i64 [ %i.fq, %.loopexit254 ], [ %i.mi, %bb.dh ], [ %.val56, %.lr.ph.i.i ], [ %i.qf, %bb.er ], [ %.val72, %bb.db ], [ %.val72, %bb.dg ], [ %i.lo, %bb.cz ], [ %.val70, %bb.dz ], [ %.val70, %bb.ee ], [ %i.pc, %bb.ef ], [ %.val68, %bb.el ], [ %.val68, %bb.eq ], [ %.val64, %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert4push.exit95 ], [ %i.dc, %bb.v ], [ %.val66, %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert4push.exit ], [ %i.bu, %bb.p ]
  %i.cj = phi ptr [ @6, %.loopexit254 ], [ @28, %bb.dh ], [ @16, %.lr.ph.i.i ], [ @28, %bb.er ], [ @26, %bb.db ], [ @26, %bb.dg ], [ @6, %bb.cz ], [ @26, %bb.dz ], [ @26, %bb.ee ], [ @28, %bb.ef ], [ @26, %bb.el ], [ @26, %bb.eq ], [ @26, %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert4push.exit95 ], [ @34, %bb.v ], [ @26, %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert4push.exit ], [ @6, %bb.p ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj) #26
          to label %.cont1658 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont1658:                                        ; preds = %.invoke1657
  unreachable

_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB4_5State4find.exit: ; preds = %bb.r
  %i.ck = icmp ult i64 %.val56, 1152921504606846976
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp eq i64 %.sroa.0.1.i.i, %.val56
  br i1 %i.cl, label %bb.s, label %.lr.ph722

.lr.ph722:                                        ; preds = %_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB4_5State4find.exit
  %i.cm = icmp eq i64 %i.bs, 0                    ; 4 uses
  %i.cn = trunc nuw nsw i64 %i.bs to i8           ; 4 uses
  br label %bb.v

bb.s:                                             ; preds = %bb.q, %_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB4_5State4find.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.co = icmp eq i64 %i.bs, 0
  br i1 %i.co, label %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert4push.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = invoke fastcc noundef i32 @_RNvMNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB2_9RangeTrie9add_empty(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
          to label %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert3new.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert3new.exit.i: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !389
  store i64 0, ptr %i.m, align 8, !noalias !389
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeECs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull %i.m, i64 noundef range(i64 1, 4611686018427387904) %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 1, 4611686018427387904) %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc80:                                         ; preds = %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert3new.exit.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8, !noalias !389
  %i.cq = trunc nuw nsw i64 %i.bs to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !389
  %i.cr = load i64, ptr %i.v, align 8, !alias.scope !390, !noalias !391, !noundef !5 ; 3 uses
  %i.cs = load i64, ptr %i.r, align 8, !range !7, !alias.scope !390, !noalias !391, !noundef !5
  %i.ct = icmp eq i64 %i.cr, %i.cs
  br i1 %i.ct, label %bb.u, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertE8push_mutBM_.exit.i

bb.u:                                             ; preds = %.noexc80
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertE8push_mutBM_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertE8push_mutBM_.exit.i: ; preds = %bb.u, %.noexc80
  %i.cu = load ptr, ptr %i.aa, align 8, !alias.scope !390, !noalias !391, !nonnull !5, !noundef !5
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cr ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.cv, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i32 %i.cp, ptr %.sroa.4.0..sroa_idx.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i8 %i.cq, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.cw = add i64 %i.cr, 1
  store i64 %i.cw, ptr %i.v, align 8, !alias.scope !390, !noalias !391
  %i.cx = zext nneg i32 %i.cp to i64
  %i.cy = or disjoint i64 %i.bo, %i.cx
  %.val66.pre = load i64, ptr %i.aj, align 8
  br label %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert4push.exit

bb.v:                                             ; preds = %.lr.ph722, %.loopexit254
  %.val641189 = phi i64 [ %i.bu, %.lr.ph722 ], [ %i.fq, %.loopexit254 ]
  %.sroa.04.0721 = phi i8 [ %i.bp, %.lr.ph722 ], [ %.sroa.04.1, %.loopexit254 ] ; 25 uses
  %.sroa.9.0720 = phi i8 [ %i.br, %.lr.ph722 ], [ %.sroa.9.1, %.loopexit254 ] ; 27 uses
  %.sroa.017.0719 = phi i64 [ %.sroa.0.1.i.i, %.lr.ph722 ], [ %.sroa.017.1, %.loopexit254 ] ; 10 uses
  %i.cz = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.bt ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !noundef !5 ; 2 uses
  %i.dd = icmp ult i64 %.sroa.017.0719, %i.dc
  br i1 %i.dd, label %bb.w, label %.invoke1657

bb.w:                                             ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !5, !noundef !5
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.sroa.017.0719 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load i8, ptr %i.dh, align 4, !noundef !5 ; 16 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 5
  %i.dk = load i8, ptr %i.dj, align 1, !noundef !5 ; 18 uses
  %i.dl = load i32, ptr %i.dg, align 4, !noundef !5 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.dm = icmp ult i8 %i.dk, %.sroa.04.0721
  %i.dn = icmp ult i8 %.sroa.9.0720, %i.di
  %or.cond.i = or i1 %i.dn, %i.dm
  br i1 %or.cond.i, label %_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_5Split3new.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = icmp eq i8 %i.di, %.sroa.04.0721        ; 2 uses
  br i1 %i.do, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %i.dp = icmp eq i8 %i.dk, %.sroa.9.0720         ; 2 uses
  %i.dq = icmp ugt i8 %i.di, %.sroa.04.0721       ; 2 uses
  %or.cond1.i = and i1 %i.dq, %i.dp
  br i1 %or.cond1.i, label %bb.ad, label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.dr = icmp eq i8 %i.dk, %.sroa.9.0720
  br i1 %i.dr, label %bb.ba, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ds = icmp ult i8 %i.dk, %.sroa.9.0720
  br i1 %i.ds, label %bb.ab, label %bb.y

bb.ab:                                            ; preds = %bb.aa
  %i.dt = add nuw i8 %i.dk, 1
  br label %bb.ba

bb.ac:                                            ; preds = %bb.y
  %i.du = icmp ult i8 %.sroa.9.0720, %i.dk        ; 3 uses
  %or.cond2.i = and i1 %i.do, %i.du
  br i1 %or.cond2.i, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.y
  %i.dv = add i8 %i.di, -1
  br label %bb.ba

bb.ae:                                            ; preds = %bb.ac
  %i.dw = icmp ugt i8 %.sroa.04.0721, %i.di       ; 2 uses
  %or.cond3.i = and i1 %i.dw, %i.dp
  br i1 %or.cond3.i, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.dx = add nuw i8 %.sroa.9.0720, 1
  br label %bb.ba

bb.ag:                                            ; preds = %bb.ae
  %i.dy = icmp ult i8 %i.dk, %.sroa.9.0720        ; 2 uses
  %or.cond4.i = and i1 %i.dq, %i.dy
  br i1 %or.cond4.i, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.dz = add i8 %.sroa.04.0721, -1
  br label %bb.ba

bb.ai:                                            ; preds = %bb.ag
  %or.cond5.i = and i1 %i.dw, %i.du
  br i1 %or.cond5.i, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.ea = add i8 %i.di, -1
  %i.eb = add nuw i8 %i.dk, 1
  br label %bb.ba

bb.ak:                                            ; preds = %bb.ai
  %i.ec = icmp eq i8 %i.dk, %.sroa.04.0721
  %i.ed = icmp ult i8 %i.di, %.sroa.9.0720        ; 2 uses
  %or.cond6.i = and i1 %i.ed, %i.ec
  br i1 %or.cond6.i, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.ee = add i8 %.sroa.04.0721, -1
  %i.ef = add nuw i8 %.sroa.9.0720, 1
  br label %bb.ba

bb.am:                                            ; preds = %bb.ak
  %i.eg = icmp eq i8 %.sroa.9.0720, %i.di
  %i.eh = icmp ult i8 %.sroa.04.0721, %i.dk       ; 2 uses
  %or.cond7.i = and i1 %i.eg, %i.eh
  br i1 %or.cond7.i, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.ei = add i8 %.sroa.04.0721, -1
  %i.ej = add i8 %.sroa.04.0721, 1
  br label %bb.ba

bb.ao:                                            ; preds = %bb.am
  %or.cond8.i = and i1 %i.eh, %i.dy
  br i1 %or.cond8.i, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %bb.am
  %i.ek = add i8 %.sroa.9.0720, -1
  %i.el = add i8 %.sroa.9.0720, 1
  br label %bb.ba

bb.aq:                                            ; preds = %bb.ao
  %or.cond9.i = and i1 %i.ed, %i.du
  br i1 %or.cond9.i, label %bb.as, label %.invoke, !prof !16

bb.ar:                                            ; preds = %bb.ao
  %i.em = add i8 %.sroa.04.0721, -1
  %i.en = add nuw i8 %i.dk, 1
  br label %bb.ba

bb.as:                                            ; preds = %bb.aq
  %i.eo = add i8 %i.di, -1
  %i.ep = add nuw i8 %.sroa.9.0720, 1
  br label %bb.ba

_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_5Split3new.exit: ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  br i1 %i.cm, label %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert4push.exit95, label %bb.at

bb.at:                                            ; preds = %_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_5Split3new.exit
  %i.eq = invoke fastcc noundef i32 @_RNvMNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB2_9RangeTrie9add_empty(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
          to label %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert3new.exit.i85 unwind label %.loopexit.split-lp.loopexit ; 2 uses

_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert3new.exit.i85: ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !393
  store i64 0, ptr %i.l, align 8, !noalias !393
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeECs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull %i.l, i64 noundef range(i64 1, 4611686018427387904) %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 1, 4611686018427387904) %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit

.noexc93:                                         ; preds = %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert3new.exit.i85
  %.sroa.0.0.copyload.i.i86 = load i64, ptr %i.l, align 8, !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !393
  %i.er = load i64, ptr %i.v, align 8, !alias.scope !394, !noalias !395, !noundef !5 ; 3 uses
  %i.es = load i64, ptr %i.r, align 8, !range !7, !alias.scope !394, !noalias !395, !noundef !5
  %i.et = icmp eq i64 %i.er, %i.es
  br i1 %i.et, label %bb.au, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertE8push_mutBM_.exit.i87

bb.au:                                            ; preds = %.noexc93
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertE8push_mutBM_.exit.i87 unwind label %.loopexit.split-lp.loopexit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertE8push_mutBM_.exit.i87: ; preds = %bb.au, %.noexc93
  %i.eu = load ptr, ptr %i.aa, align 8, !alias.scope !394, !noalias !395, !nonnull !5, !noundef !5
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.er ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i86, ptr %i.ev, align 4
  %.sroa.4.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 %i.eq, ptr %.sroa.4.0..sroa_idx.i88, align 4
  %.sroa.5.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i8 %i.cn, ptr %.sroa.5.0..sroa_idx.i89, align 4
  %i.ew = add i64 %i.er, 1
  store i64 %i.ew, ptr %i.v, align 8, !alias.scope !394, !noalias !395
  %i.ex = zext nneg i32 %i.eq to i64
  %.val64.pre = load i64, ptr %i.aj, align 8
  br label %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert4push.exit95

_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert4push.exit95: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertE8push_mutBM_.exit.i87, %_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_5Split3new.exit
  %.val64 = phi i64 [ %.val64.pre, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertE8push_mutBM_.exit.i87 ], [ %.val641189, %_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_5Split3new.exit ] ; 2 uses
  %.sroa.0.0.i90 = phi i64 [ %i.ex, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertE8push_mutBM_.exit.i87 ], [ 0, %_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_5Split3new.exit ]
  %i.ey = icmp ugt i64 %.val64, %i.bt
  br i1 %i.ey, label %bb.av, label %.invoke1657

bb.av:                                            ; preds = %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trieNtB5_10NextInsert4push.exit95
  %.val63 = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %.val63, i64 %i.bt ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !396, !noundef !5 ; 7 uses
  %i.fc = icmp ult i64 %i.fb, 1152921504606846976
  call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp ugt i64 %.sroa.017.0719, %i.fb
  br i1 %i.fd, label %.invoke1659, label %bb.aw, !prof !15

bb.aw:                                            ; preds = %bb.av
  %i.fe = load i64, ptr %i.ez, align 8, !range !7, !alias.scope !396, !noundef !5
  %i.ff = icmp eq i64 %i.fb, %i.fe
  br i1 %i.ff, label %bb.ax, label %.noexc97

.invoke1659:                                      ; preds = %bb.av, %bb.em, %bb.ea, %bb.dc
  %i.fg = phi i64 [ %.sroa.017.2716, %bb.em ], [ %.sroa.017.2716, %bb.dc ], [ %.sroa.017.2716, %bb.ea ], [ %.sroa.017.0719, %bb.av ]
  %i.fh = phi i64 [ %i.pq, %bb.em ], [ %i.on, %bb.ea ], [ %i.lt, %bb.dc ], [ %i.fb, %bb.av ]
  invoke void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef %i.fg, i64 noundef %i.fh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #26
          to label %.cont1660 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont1660:                                        ; preds = %.invoke1659
  unreachable

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10TransitionE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit

.noexc97:                                         ; preds = %bb.ax, %bb.aw
end_hunk_0
