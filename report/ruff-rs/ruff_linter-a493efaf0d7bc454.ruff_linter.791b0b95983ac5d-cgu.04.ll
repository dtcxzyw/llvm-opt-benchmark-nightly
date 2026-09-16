Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.04?download=true
inline.NumInlined: 5984
inline.NumDeleted: 2399
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvMs4_NtNtCs44bUZaa7qIB_5regex5regex6stringNtB5_5Regex11captures_at:_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECsEhZmuQNqkz_11ruff_linter.exit
  store atomic i64 %i.bx, ptr %i.ca release, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4855
  br label %bb.q

bb.n:                                             ; preds = %bb.h
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3u_10UnwindSafeNtB3b_4SyncEL_EEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %i.b) #43
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.p:                                             ; preds = %.noexc10.i, %bb.m, %bb.l, %bb.e, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.cc, %bb.p ], [ %lpad.thr_comm.split-lp.i, %bb.n ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures8CapturesECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.c) #43
          to label %bb.x unwind label %bb.w

.thread:                                          ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECsEhZmuQNqkz_11ruff_linter.exit, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.e, align 8
  br label %bb.s

bb.q:                                             ; preds = %.noexc11.i, %bb.l, %bb.m
  %i.cd = extractvalue { i32, i32 } %i.bw, 1
  %i.ce = extractvalue { i32, i32 } %i.bw, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.ce, ptr %i.e, align 8
  store i32 %i.cd, ptr %i.cf, align 4
  %i.cg = icmp eq i32 %i.ce, 1
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ch = load ptr, ptr %i.l, align 8, !nonnull !14, !noundef !14
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 168
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i64, ptr %i.ck, align 8, !range !17, !noundef !14
  %i.cm = trunc nuw i64 %i.cl to i1
  br i1 %i.cm, label %bb.t, label %bb.u

bb.s:                                             ; preds = %.thread, %bb.q
  store i64 2, ptr %0, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures8CapturesECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.c)
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = call i64 @llvm.uadd.sat.i64(i64 %i.co, i64 1)
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t
  %.sroa.3.0 = phi i64 [ %i.cp, %bb.t ], [ undef, %bb.r ]
  %.sroa.0.0 = phi i64 [ 1, %bb.t ], [ 0, %bb.r ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %3, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.w:                                             ; preds = %.body
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.x:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB5_19SuppressionsBuilder14match_comments(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [1 x i8], align 1                 ; 3 uses
  %i.n = alloca [1 x i8], align 1                 ; 3 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [72 x i8], align 8                ; 10 uses
  %i.q = alloca [64 x i8], align 16               ; 9 uses
  %i.r = alloca [72 x i8], align 8                ; 6 uses
  %i.s = alloca [152 x i8], align 8               ; 15 uses
  %i.t = alloca [72 x i8], align 8                ; 6 uses
  %i.u = alloca [72 x i8], align 8                ; 6 uses
  %i.v = alloca [56 x i8], align 16               ; 8 uses
  %i.w = alloca [152 x i8], align 8               ; 15 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !14 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 128102389400760776
  tail call void @llvm.assume(i1 %i.aa)
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %.outer._crit_edge, label %.lr.ph147.lr.ph

.lr.ph147.lr.ph:                                  ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ac = icmp ugt i64 %1, 4294967295
  %i.ad = shl nuw i64 %1, 32
  %.sroa.09.0.insert.insert.i66 = select i1 %i.ac, i64 513, i64 %i.ad ; 2 uses
  %i.ae = trunc i64 %.sroa.09.0.insert.insert.i66 to i1
  %.sroa.6.0.extract.shift.i.i67 = lshr i64 %.sroa.09.0.insert.insert.i66, 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %.sroa.920.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %.sroa.1122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.1044.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.025.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.025.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.025.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.cc = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br i1 %i.ae, label %.lr.ph147.us, label %.lr.ph147, !prof !16

.lr.ph147.us:                                     ; preds = %.lr.ph147.lr.ph
  %3 = load ptr, ptr %i.ab, align 8, !nonnull !14, !noundef !14
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = load i64, ptr %4, align 8, !noundef !14
  %6 = icmp ugt i64 %5, 4294967295
  br i1 %6, label %.split.us, label %.split150.us, !prof !16

.lr.ph147:                                        ; preds = %.lr.ph147.lr.ph, %.outer
  %7 = phi i64 [ %i.ch, %.outer ], [ %i.z, %.lr.ph147.lr.ph ]
  %.sroa.0.0.ph231 = phi i64 [ %8, %.outer ], [ 0, %.lr.ph147.lr.ph ] ; 6 uses
  %8 = add nuw nsw i64 %.sroa.0.0.ph231, 1        ; 5 uses
  %.idx31 = mul nuw nsw i64 %8, 72                ; 2 uses
  br label %bb.b

.outer._crit_edge:                                ; preds = %.outer, %bb.bf, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph147, %bb.bf
  %i.ch = phi i64 [ %7, %.lr.ph147 ], [ %i.nq, %bb.bf ] ; 4 uses
  %i.ci = load ptr, ptr %i.ab, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.cj = getelementptr inbounds nuw [72 x i8], ptr %i.ci, i64 %.sroa.0.0.ph231 ; 14 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !14 ; 2 uses
  %i.cm = icmp ugt i64 %i.cl, 4294967295
  %i.cn = shl nuw i64 %i.cl, 32
  %.sroa.09.0.insert.insert.i = select i1 %i.cm, i64 513, i64 %i.cn ; 2 uses
  %i.co = trunc i64 %.sroa.09.0.insert.insert.i to i1
  br i1 %i.co, label %.split.us, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit, !prof !16

.split.us:                                        ; preds = %bb.b, %.lr.ph147.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i8 2, ptr %i.n, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @603) #45
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit: ; preds = %bb.b
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.09.0.insert.insert.i, 32
  %i.cp = icmp samesign ult i64 %.sroa.6.0.extract.shift.i.i, %.sroa.6.0.extract.shift.i.i67
  br i1 %i.cp, label %.outer, label %bb.c

.split150.us:                                     ; preds = %.lr.ph147.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 2, ptr %i.m, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @603) #45
  unreachable

.outer:                                           ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit
  %i.cq = icmp samesign ult i64 %8, %i.ch
  br i1 %i.cq, label %.lr.ph147, label %.outer._crit_edge

bb.c:                                             ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit
  %.idx = mul nuw nsw i64 %i.ch, 72               ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx
  %i.cs = load ptr, ptr %i.af, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ct = load i64, ptr %i.ag, align 8, !noundef !14 ; 2 uses
  %gepdiff = sub nuw nsw i64 %.idx, %.idx31
  %i.cu = udiv exact i64 %gepdiff, 72
  %i.cv = icmp eq i64 %8, %i.ch
  br i1 %i.cv, label %.loopexit35, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx31
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 64 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 48 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cj, i64 40 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %_RNCNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB7_19SuppressionsBuilder14match_comments0B9_.exit.thread.i, %.lr.ph.i
  %.sroa.02.09.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ed, %_RNCNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB7_19SuppressionsBuilder14match_comments0B9_.exit.thread.i ] ; 3 uses
  %i.db = phi ptr [ %i.cw, %.lr.ph.i ], [ %i.dc, %_RNCNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB7_19SuppressionsBuilder14match_comments0B9_.exit.thread.i ] ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5060)
  call void @llvm.experimental.noalias.scope.decl(metadata !5061)
  call void @llvm.experimental.noalias.scope.decl(metadata !5062)
  %i.dd = load i8, ptr %i.cx, align 8, !range !61, !alias.scope !5061, !noalias !5063, !noundef !14
  %i.de = icmp eq i8 %i.dd, 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.dg = load i8, ptr %i.df, align 8, !range !61, !alias.scope !5064, !noalias !5065
  %i.dh = icmp eq i8 %i.dg, 2
  %or.cond.i.i.i = select i1 %i.de, i1 %i.dh, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNCNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB7_19SuppressionsBuilder14match_comments0B9_.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.di = load i64, ptr %i.ck, align 8, !alias.scope !5061, !noalias !5063, !noundef !14 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !5064, !noalias !5065, !noundef !14
  %i.dl = icmp eq i64 %i.di, %i.dk
  br i1 %i.dl, label %bb.f, label %_RNCNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB7_19SuppressionsBuilder14match_comments0B9_.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.dm = load ptr, ptr %i.db, align 8, !alias.scope !5064, !noalias !5065, !nonnull !14, !noundef !14
  %i.dn = load ptr, ptr %i.cj, align 8, !alias.scope !5061, !noalias !5063, !nonnull !14, !noundef !14
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.dn, ptr nonnull %i.dm, i64 %i.di), !noalias !5066
  %i.do = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.do, label %_RNCNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB7_19SuppressionsBuilder14match_comments0B9_.exit.i, label %_RNCNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB7_19SuppressionsBuilder14match_comments0B9_.exit.thread.i

_RNCNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB7_19SuppressionsBuilder14match_comments0B9_.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5066
  call void @llvm.experimental.noalias.scope.decl(metadata !5067)
  call void @llvm.experimental.noalias.scope.decl(metadata !5068)
  %i.dp = load i64, ptr %i.cz, align 8, !alias.scope !5069, !noalias !5070, !noundef !14 ; 2 uses
  %i.dq = icmp ugt i64 %i.dp, 2                   ; 2 uses
  %i.dr = load ptr, ptr %i.cy, align 8, !alias.scope !5069, !noalias !5070, !nonnull !14
  %i.ds = load i64, ptr %i.da, align 8, !alias.scope !5069, !noalias !5070
  %.sink10.i.i.i.i.i = select i1 %i.dq, ptr %i.dr, ptr %i.cy ; 2 uses
  %.sink9.i.i.i.i.i = select i1 %i.dq, i64 %i.ds, i64 %i.dp
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i.i.i.i.i, i64 %.sink9.i.i.i.i.i
  store ptr %.sink10.i.i.i.i.i, ptr %i.l, align 8, !alias.scope !5067, !noalias !5071
  store ptr %i.dt, ptr %i.ah, align 8, !alias.scope !5067, !noalias !5071
  store ptr %i.cs, ptr %i.ai, align 8, !alias.scope !5067, !noalias !5071
  store i64 %i.ct, ptr %i.aj, align 8, !alias.scope !5067, !noalias !5071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5066
  call void @llvm.experimental.noalias.scope.decl(metadata !5072)
  call void @llvm.experimental.noalias.scope.decl(metadata !5073)
  %i.du = getelementptr inbounds nuw i8, ptr %i.db, i64 32 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !5074, !noalias !5075, !noundef !14 ; 2 uses
  %i.dx = icmp ugt i64 %i.dw, 2                   ; 2 uses
  %i.dy = load ptr, ptr %i.du, align 8, !alias.scope !5074, !noalias !5075, !nonnull !14
  %i.dz = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !5074, !noalias !5075
  %.sink10.i.i6.i.i.i = select i1 %i.dx, ptr %i.dy, ptr %i.du ; 2 uses
  %.sink9.i.i7.i.i.i = select i1 %i.dx, i64 %i.ea, i64 %i.dw
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i.i6.i.i.i, i64 %.sink9.i.i7.i.i.i
  store ptr %.sink10.i.i6.i.i.i, ptr %i.k, align 8, !alias.scope !5072, !noalias !5076
  store ptr %i.eb, ptr %i.ak, align 8, !alias.scope !5072, !noalias !5076
  store ptr %i.cs, ptr %i.al, align 8, !alias.scope !5072, !noalias !5076
  store i64 %i.ct, ptr %i.am, align 8, !alias.scope !5072, !noalias !5076
  %i.ec = call noundef zeroext i1 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCNvMNtCsEhZmuQNqkz_11ruff_linter11suppressionNtB2b_18SuppressionComment12codes_as_str0ENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B3w_2eqB3_E0EB2d_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.k), !noalias !5077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5066
  br i1 %i.ec, label %bb.g, label %_RNCNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB7_19SuppressionsBuilder14match_comments0B9_.exit.thread.i

_RNCNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB7_19SuppressionsBuilder14match_comments0B9_.exit.thread.i: ; preds = %_RNCNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB7_19SuppressionsBuilder14match_comments0B9_.exit.i, %bb.f, %bb.e, %bb.d
  %i.ed = add nuw nsw i64 %.sroa.02.09.i, 1
  %i.ee = icmp eq ptr %i.dc, %i.cr
  br i1 %i.ee, label %.loopexit35, label %bb.d

bb.g:                                             ; preds = %_RNCNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB7_19SuppressionsBuilder14match_comments0B9_.exit.i
  %i.ef = icmp samesign ult i64 %.sroa.02.09.i, %i.cu
  call void @llvm.assume(i1 %i.ef)
  %i.eg = add nuw nsw i64 %.sroa.02.09.i, %8      ; 4 uses
  %i.eh = load i64, ptr %i.y, align 8, !noundef !14 ; 2 uses
  %i.ei = icmp ult i64 %i.eg, %i.eh
  br i1 %i.ei, label %bb.h, label %bb.i

.loopexit35:                                      ; preds = %_RNCNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB7_19SuppressionsBuilder14match_comments0B9_.exit.thread.i, %bb.c
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cj, i64 64 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 8, !range !61, !noundef !14
  %i.em = icmp eq i8 %i.el, 1
  br i1 %i.em, label %bb.bg, label %bb.bh

bb.h:                                             ; preds = %bb.g
  %i.en = load ptr, ptr %i.ab, align 8, !nonnull !14, !noundef !14
  %i.eo = getelementptr inbounds nuw [72 x i8], ptr %i.en, i64 %i.eg ; 7 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8, !noundef !14 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  %i.et = load i32, ptr %i.es, align 4, !noundef !14 ; 2 uses
  %.not63 = icmp ugt i32 %i.eq, %i.et
  br i1 %.not63, label %bb.j, label %bb.k, !prof !16

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.eg, i64 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #45
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #45
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.eu = load ptr, ptr %i.af, align 8, !nonnull !14, !noundef !14
  %i.ev = load i64, ptr %i.ag, align 8, !noundef !14
  %i.ew = load i64, ptr %i.cz, align 8, !alias.scope !5078, !noalias !5079, !noundef !14 ; 2 uses
  %i.ex = icmp ugt i64 %i.ew, 2                   ; 2 uses
  %i.ey = load ptr, ptr %i.cy, align 8, !alias.scope !5078, !noalias !5079, !nonnull !14
  %i.ez = load i64, ptr %i.da, align 8, !alias.scope !5078, !noalias !5079
  %.sink10.i.i = select i1 %i.ex, ptr %i.ey, ptr %i.cy ; 2 uses
  %.sink9.i.i = select i1 %i.ex, i64 %i.ez, i64 %i.ew ; 2 uses
  %.idx235 = shl nuw nsw i64 %.sink9.i.i, 3
  %i.fa = getelementptr inbounds nuw i8, ptr %.sink10.i.i, i64 %.idx235
  %i.fb = icmp eq i64 %.sink9.i.i, 0
  br i1 %i.fb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 32 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression11SuppressionE8push_mutBI_.exit
  %.sroa.03.0142 = phi ptr [ %.sink10.i.i, %.lr.ph ], [ %i.fi, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression11SuppressionE8push_mutBI_.exit ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.03.0142, i64 8 ; 2 uses
  %i.fj = call { ptr, i64 } @_RINvXs8_NtCs2MoD74u7shA_14ruff_text_size6traitseNtB6_9TextSlice5sliceRNtNtB8_5range9TextRangeECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eu, i64 noundef %i.ev, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.03.0142) ; 2 uses
  %i.fk = extractvalue { ptr, i64 } %i.fj, 0      ; 12 uses
  %i.fl = extractvalue { ptr, i64 } %i.fj, 1      ; 18 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fk) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.fm = icmp ult i64 %i.fl, 25
  br i1 %i.fm, label %bb.n, label %bb.m, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.fn = call { ptr, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer10alloc_copy(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fk, i64 noundef %i.fl), !noalias !5080 ; 2 uses
  %i.fo = extractvalue { ptr, i64 } %i.fn, 0      ; 2 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.aa, label %bb.ab, !prof !16

bb.n:                                             ; preds = %bb.l
  %i.fq = shl nuw nsw i64 %i.fl, 56
  %i.fr = or disjoint i64 %i.fq, -4611686018427387904 ; 7 uses
  %i.fs = icmp samesign ugt i64 %i.fl, 15
  br i1 %i.fs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ft = icmp samesign ugt i64 %i.fl, 7
  br i1 %i.ft, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.fk, align 1, !alias.scope !5081, !noalias !5082
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.fu, align 1, !alias.scope !5081, !noalias !5082
  %i.fv = icmp eq i64 %i.fl, 16
  br i1 %i.fv, label %bb.z, label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.fw = icmp samesign ugt i64 %i.fl, 3
  br i1 %i.fw, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.o
  %.sroa.011.0.copyload.i.i.i = load i64, ptr %i.fk, align 1, !alias.scope !5081, !noalias !5082 ; 2 uses
  %i.fx = icmp eq i64 %i.fl, 8
  br i1 %i.fx, label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i, label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.fy = icmp samesign ugt i64 %i.fl, 1
  br i1 %i.fy, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  %.sroa.015.0.copyload.i.i.i = load i32, ptr %i.fk, align 1, !alias.scope !5081, !noalias !5082
  %i.fz = zext i32 %.sroa.015.0.copyload.i.i.i to i64
  %i.ga = add nsw i64 %i.fl, -4                   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ga
  %.sroa.017.0.copyload.i.i.i = load i32, ptr %i.gb, align 1, !alias.scope !5081, !noalias !5082
  %i.gc = zext i32 %.sroa.017.0.copyload.i.i.i to i64
  %i.gd = shl nuw nsw i64 %i.ga, 3
  %i.ge = shl nuw nsw i64 %i.gc, %i.gd
  %i.gf = or i64 %i.ge, %i.fz
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.gg = icmp eq i64 %i.fl, 1
  br i1 %i.gg, label %bb.w, label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.v:                                             ; preds = %bb.s
  %.sroa.019.0.copyload.i.i.i = load i16, ptr %i.fk, align 1, !alias.scope !5081, !noalias !5082
  %i.gh = zext i16 %.sroa.019.0.copyload.i.i.i to i64
  %i.gi = add nsw i64 %i.fl, -2                   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.gi
  %.sroa.021.0.copyload.i.i.i = load i16, ptr %i.gj, align 1, !alias.scope !5081, !noalias !5082
  %i.gk = zext i16 %.sroa.021.0.copyload.i.i.i to i64
  %i.gl = shl nuw nsw i64 %i.gi, 3
  %i.gm = shl nuw nsw i64 %i.gk, %i.gl
  %i.gn = or i64 %i.gm, %i.gh
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.go = load i8, ptr %i.fk, align 1, !alias.scope !5081, !noalias !5082, !noundef !14
  %i.gp = zext i8 %i.go to i64
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.x:                                             ; preds = %bb.r
  %i.gq = getelementptr i8, ptr %i.fk, i64 %i.fl
  %i.gr = getelementptr i8, ptr %i.gq, i64 -8
  %.sroa.013.0.copyload.i.i.i = load i64, ptr %i.gr, align 1, !alias.scope !5081, !noalias !5082
  %i.gs = shl nuw nsw i64 %i.fl, 3
  %i.gt = sub nuw nsw i64 128, %i.gs
  %i.gu = lshr i64 %.sroa.013.0.copyload.i.i.i, %i.gt
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.y:                                             ; preds = %bb.p
  %i.gv = getelementptr i8, ptr %i.fk, i64 %i.fl
  %i.gw = getelementptr i8, ptr %i.gv, i64 -8
  %.sroa.09.0.copyload.i.i.i = load i64, ptr %i.gw, align 1, !alias.scope !5081, !noalias !5082
  %.neg.i.i.i = mul nuw nsw i64 %i.fl, 56
  %i.gx = and i64 %.neg.i.i.i, 56
  %i.gy = lshr i64 %.sroa.09.0.copyload.i.i.i, %i.gx
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.p
  %.sroa.0.1.i.i.i = phi i64 [ %i.gy, %bb.y ], [ 0, %bb.p ]
  %i.gz = icmp eq i64 %i.fl, 24
  %i.ha = select i1 %i.gz, i64 0, i64 %i.fr
  %spec.select.i.i.i = or i64 %.sroa.0.1.i.i.i, %i.ha
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i: ; preds = %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r
  %.sroa.03.1.i.i.i = phi i64 [ %.sroa.07.0.copyload.i.i.i, %bb.z ], [ 0, %bb.r ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.w ], [ %i.gu, %bb.x ]
  %.sroa.02.0.i.i.i = phi i64 [ %.sroa.05.0.copyload.i.i.i, %bb.z ], [ %.sroa.011.0.copyload.i.i.i, %bb.r ], [ 0, %bb.u ], [ %i.gf, %bb.t ], [ %i.gn, %bb.v ], [ %i.gp, %bb.w ], [ %.sroa.011.0.copyload.i.i.i, %bb.x ]
  %.sroa.0.0.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.z ], [ %i.fr, %bb.r ], [ %i.fr, %bb.u ], [ %i.fr, %bb.t ], [ %i.fr, %bb.v ], [ %i.fr, %bb.w ], [ %i.fr, %bb.x ]
  %i.hb = inttoptr i64 %.sroa.02.0.i.i.i to ptr
  br label %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit

bb.aa:                                            ; preds = %bb.m
  call void @_RINvCsg7m2K3K1Fzf_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #45, !noalias !5083
  unreachable

bb.ab:                                            ; preds = %bb.m
  %i.hc = extractvalue { ptr, i64 } %i.fn, 1
  br label %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit

_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i, %bb.ab
  %.sroa.4.0.i = phi i64 [ %.sroa.0.0.i.i.i, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ], [ %i.hc, %bb.ab ] ; 3 uses
  %.sroa.3.0.i70 = phi i64 [ %.sroa.03.1.i.i.i, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ], [ %i.fl, %bb.ab ]
  %.sroa.0.0.i71 = phi ptr [ %i.hb, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ], [ %i.fo, %bb.ab ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.hd = load <4 x i32>, ptr %i.ep, align 8
  %i.he = load i8, ptr %i.cx, align 8, !range !61, !noundef !14
  call void @llvm.experimental.noalias.scope.decl(metadata !5084)
  %i.hf = load i64, ptr %i.cz, align 8, !alias.scope !5085, !noalias !5086, !noundef !14 ; 2 uses
  %i.hg = icmp ugt i64 %i.hf, 2                   ; 2 uses
  %i.hh = load ptr, ptr %i.cy, align 8, !alias.scope !5085, !noalias !5086, !nonnull !14
  %i.hi = load i64, ptr %i.da, align 8, !alias.scope !5085, !noalias !5086
  %.sink10.i.i72 = select i1 %i.hg, ptr %i.hh, ptr %i.cy ; 9 uses
  %.sink9.i.i73 = select i1 %i.hg, i64 %i.hi, i64 %i.hf ; 5 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i.i72, i64 %.sink9.i.i73 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5087
  store i64 0, ptr %i.an, align 8, !alias.scope !5088, !noalias !5087
  call void @llvm.experimental.noalias.scope.decl(metadata !5089)
  %.not.i.i.i.i = icmp ugt i64 %.sink9.i.i73, 2
  br i1 %.not.i.i.i.i, label %bb.ac, label %.lr.ph.i.i.preheader.i

bb.ac:                                            ; preds = %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit
  %i.hk = add nsw i64 %.sink9.i.i73, -1
  %i.hl = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hk, i1 true)
  %i.hm = lshr i64 -1, %i.hl
  %.fr = freeze i64 %i.hm                         ; 2 uses
  %i.hn = add i64 %.fr, 1                         ; 5 uses
end_hunk_0
