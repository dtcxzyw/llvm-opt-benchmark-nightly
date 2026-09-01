Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 260
begin_hunk_0_@"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$13get_arg_value17h0a45da5fa4b9d16dE":bb.a
  br label %bb.ad

bb.z:                                             ; preds = %tailrecurse.i28, %tailrecurse.i28
  %.sroa.02.0.i44 = getelementptr inbounds nuw i8, ptr %.tr.i29, i64 8
  %i.bl = load ptr, ptr %.sroa.02.0.i44, align 8, !nonnull !3, !align !4, !noundef !3
  br label %tailrecurse.i28.backedge

bb.aa:                                            ; preds = %tailrecurse.i28, %tailrecurse.i28, %tailrecurse.i28
  %.sroa.01.0.i37 = getelementptr inbounds nuw i8, ptr %.tr.i29, i64 8
  %i.bm = load ptr, ptr %.sroa.01.0.i37, align 8, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !30427, !noalias !30432, !noundef !3 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, 3                   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !30427, !noalias !30432
  %.sink10.i.i.i38 = select i1 %i.bp, i64 %i.br, i64 %i.bo
  %.not.i39 = icmp eq i64 %.sink10.i.i.i38, 0
  br i1 %.not.i39, label %bb.ab, label %"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7f767ef8073c7db3E.exit.i40"

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @531) #70
          to label %.noexc46 unwind label %bb.ac, !inline_history !27689

.noexc46:                                         ; preds = %bb.ab
  unreachable

"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7f767ef8073c7db3E.exit.i40": ; preds = %bb.aa
  %i.bs = load ptr, ptr %i.bm, align 8, !alias.scope !30427, !noalias !30432, !nonnull !3
  %.sink11.i.i.i41 = select i1 %i.bp, ptr %i.bs, ptr %i.bm
  br label %tailrecurse.i28.backedge

tailrecurse.i28.backedge:                         ; preds = %"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7f767ef8073c7db3E.exit.i40", %bb.z
  %.tr.i29.be = phi ptr [ %i.bl, %bb.z ], [ %.sink11.i.i.i41, %"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7f767ef8073c7db3E.exit.i40" ]
  br label %tailrecurse.i28

bb.ac:                                            ; preds = %bb.ab
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.e)
          to label %common.resume unwind label %bb.ae

bb.ad:                                            ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.sroa.0.0.i.pn.in.i30 = phi ptr [ %i.bj, %bb.y ], [ %.sroa.01.0.i.i36, %bb.x ], [ %i.bc, %bb.v ], [ %i.bg, %bb.w ]
  %.sroa.4.0.i.pn.in.i31 = phi ptr [ %i.bk, %bb.y ], [ %i.bi, %bb.x ], [ %i.bd, %bb.v ], [ %i.bh, %bb.w ]
  %.sroa.4.0.i.pn.i32 = load i16, ptr %.sroa.4.0.i.pn.in.i31, align 2, !noundef !3
  %.sroa.0.0.i.pn.i33 = load i16, ptr %.sroa.0.0.i.pn.in.i30, align 2, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sroa.0.0.i.pn.i33, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %.sroa.4.0.i.pn.i32, ptr %.sroa.5.0..sroa_idx, align 2
  br label %bb.af

bb.ae:                                            ; preds = %.thread, %bb.ac
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.af:                                            ; preds = %bb.ag, %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$13get_arg_value28_$u7b$$u7b$closure$u7d$$u7d$17h40b579a8478922a1E.exit", %bb.ad, %"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15track_operation17h01a2b932b738e4eeE.exit"
  ret void

common.resume:                                    ; preds = %bb.ao, %bb.ac, %.thread
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.thread ], [ %i.bt, %bb.ac ], [ %i.cq, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

.thread:                                          ; preds = %bb.t, %bb.o, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.an, %bb.o ], [ %i.aa, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.e)
          to label %common.resume unwind label %bb.ae

bb.ag:                                            ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !3, !align !4, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bw, ptr %i.bx, align 8
  store i8 12, ptr %0, align 8
  br label %bb.af

tailrecurse.i.i:                                  ; preds = %bb.i, %tailrecurse.i.i.backedge
  %.tr.i.i = phi ptr [ %.tr.i.i.be, %tailrecurse.i.i.backedge ], [ %6, %bb.i ] ; 10 uses
  %i.by = load i8, ptr %.tr.i.i, align 8, !range !7732, !noalias !30437, !noundef !3
  switch i8 %i.by, label %default.unreachable [
    i8 15, label %bb.ak
    i8 16, label %bb.al
    i8 17, label %bb.al
    i8 18, label %bb.am
    i8 19, label %bb.am
    i8 20, label %bb.am
    i8 0, label %bb.aj
    i8 1, label %bb.aj
    i8 2, label %bb.aj
    i8 3, label %bb.ah
    i8 4, label %bb.aj
    i8 5, label %bb.aj
    i8 6, label %bb.aj
    i8 7, label %bb.aj
    i8 8, label %bb.aj
    i8 9, label %bb.aj
    i8 10, label %bb.aj
    i8 11, label %bb.aj
    i8 12, label %bb.aj
    i8 13, label %bb.aj
    i8 14, label %bb.ai
  ]

bb.ah:                                            ; preds = %tailrecurse.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 2
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 4
  br label %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$13get_arg_value28_$u7b$$u7b$closure$u7d$$u7d$17h40b579a8478922a1E.exit"

bb.ai:                                            ; preds = %tailrecurse.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !30441, !noalias !30437, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 136
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 138
  br label %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$13get_arg_value28_$u7b$$u7b$closure$u7d$$u7d$17h40b579a8478922a1E.exit"

bb.aj:                                            ; preds = %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 2
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 4
  br label %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$13get_arg_value28_$u7b$$u7b$closure$u7d$$u7d$17h40b579a8478922a1E.exit"

bb.ak:                                            ; preds = %tailrecurse.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 2
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 4
  br label %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$13get_arg_value28_$u7b$$u7b$closure$u7d$$u7d$17h40b579a8478922a1E.exit"

bb.al:                                            ; preds = %tailrecurse.i.i, %tailrecurse.i.i
  %.sroa.02.0.i.i = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 8
  %i.ci = load ptr, ptr %.sroa.02.0.i.i, align 8, !noalias !30437, !nonnull !3, !align !4, !noundef !3
  br label %tailrecurse.i.i.backedge

bb.am:                                            ; preds = %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i
  %.sroa.01.0.i.i51 = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 8
  %i.cj = load ptr, ptr %.sroa.01.0.i.i51, align 8, !noalias !30437, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !30444, !noalias !30449, !noundef !3 ; 2 uses
  %i.cm = icmp ugt i64 %i.cl, 3                   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !30444, !noalias !30449
  %.sink10.i.i.i.i = select i1 %i.cm, i64 %i.co, i64 %i.cl
  %.not.i.i = icmp eq i64 %.sink10.i.i.i.i, 0
  br i1 %.not.i.i, label %bb.an, label %"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7f767ef8073c7db3E.exit.i.i"

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @531) #70
          to label %.noexc.i52 unwind label %bb.ao, !noalias !30437, !inline_history !27689

.noexc.i52:                                       ; preds = %bb.an
  unreachable

"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7f767ef8073c7db3E.exit.i.i": ; preds = %bb.am
  %i.cp = load ptr, ptr %i.cj, align 8, !alias.scope !30444, !noalias !30449, !nonnull !3
  %.sink11.i.i.i.i = select i1 %i.cm, ptr %i.cp, ptr %i.cj
  br label %tailrecurse.i.i.backedge

tailrecurse.i.i.backedge:                         ; preds = %"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7f767ef8073c7db3E.exit.i.i", %bb.al
  %.tr.i.i.be = phi ptr [ %.sink11.i.i.i.i, %"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7f767ef8073c7db3E.exit.i.i" ], [ %i.ci, %bb.al ]
  br label %tailrecurse.i.i

bb.ao:                                            ; preds = %bb.an
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.d)
          to label %common.resume unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !30437
  unreachable

"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$13get_arg_value28_$u7b$$u7b$closure$u7d$$u7d$17h40b579a8478922a1E.exit": ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak
  %.sroa.0.0.i.pn.in.i.i = phi ptr [ %i.cg, %bb.ak ], [ %.sroa.01.0.i.i.i, %bb.aj ], [ %i.bz, %bb.ah ], [ %i.cd, %bb.ai ]
  %.sroa.4.0.i.pn.in.i.i = phi ptr [ %i.ch, %bb.ak ], [ %i.cf, %bb.aj ], [ %i.ca, %bb.ah ], [ %i.ce, %bb.ai ]
  %.sroa.4.0.i.pn.i.i = load i16, ptr %.sroa.4.0.i.pn.in.i.i, align 2, !noalias !30437, !noundef !3
  %.sroa.0.0.i.pn.i.i = load i16, ptr %.sroa.0.0.i.pn.in.i.i, align 2, !noalias !30437, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %.sroa.4.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sroa.0.0.i.pn.i.i, ptr %.sroa.4.0..sroa_idx55, align 8
  %.sroa.5.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %.sroa.4.0.i.pn.i.i, ptr %.sroa.5.0..sroa_idx56, align 2
  br label %bb.af
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$16make_method_call17h50b909f062f62613E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(88) %2, ptr noalias noundef nonnull align 8 dereferenceable(200) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(24) %6, ptr noalias noundef nonnull align 8 dereferenceable(48) %7, ptr noalias noundef nonnull align 8 %8, i64 noundef %9, i16 noundef %10, i16 noundef %11, i16 noundef %12, i16 noundef %13) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.953.i.i.i = alloca [15 x i8], align 1    ; 6 uses
  %.sroa.943.i.i.i = alloca [15 x i8], align 1    ; 5 uses
  %i.f = alloca [88 x i8], align 8                ; 14 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.721.i = alloca [15 x i8], align 1        ; 7 uses
  %.sroa.715.i = alloca [15 x i8], align 1        ; 4 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.6.i = alloca i64, align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 9 uses
  %.sroa.2.i.i.i = alloca [15 x i8], align 1      ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 9 uses
  %i.m = alloca [88 x i8], align 8                ; 14 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 14 uses
  %i.p = alloca [88 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 21 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 2 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 2 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [48 x i8], align 8               ; 8 uses
  %i.ab = alloca [72 x i8], align 8               ; 12 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [48 x i8], align 8               ; 8 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [48 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [8 x i8], align 8                ; 5 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [88 x i8], align 8               ; 9 uses
  %i.ap = alloca [40 x i8], align 8               ; 27 uses
  %i.aq = alloca [8 x i8], align 8                ; 5 uses
  %i.ar = alloca [48 x i8], align 8               ; 9 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [72 x i8], align 8               ; 12 uses
  %i.av = alloca [16 x i8], align 8               ; 4 uses
  %i.aw = alloca [16 x i8], align 8               ; 7 uses
  %i.ax = alloca [16 x i8], align 8               ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 8 uses
  %i.az = alloca [8 x i8], align 8                ; 5 uses
  %i.ba = alloca [48 x i8], align 8               ; 26 uses
  %i.bb = alloca [16 x i8], align 8               ; 6 uses
  %i.bc = alloca [88 x i8], align 8               ; 9 uses
  %i.bd = alloca [24 x i8], align 8               ; 12 uses
  %i.be = alloca [8 x i8], align 8                ; 5 uses
  %i.bf = alloca [8 x i8], align 8                ; 5 uses
  %i.bg = alloca [16 x i8], align 8               ; 10 uses
  %.sroa.81171.sroa.6 = alloca [24 x i8], align 8 ; 5 uses
  %i.bh = alloca [48 x i8], align 8               ; 13 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [72 x i8], align 8               ; 12 uses
  %i.bk = alloca [16 x i8], align 8               ; 4 uses
  %i.bl = alloca [16 x i8], align 8               ; 7 uses
  %i.bm = alloca [16 x i8], align 8               ; 6 uses
  %i.bn = alloca [24 x i8], align 8               ; 8 uses
  %i.bo = alloca [24 x i8], align 8               ; 6 uses
  %i.bp = alloca [48 x i8], align 8               ; 17 uses
  %i.bq = alloca [88 x i8], align 8               ; 9 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [24 x i8], align 8               ; 32 uses
  %i.bt = alloca [16 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %.sink1689.sroa.gep = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 7 uses
  %.sink1689.sroa.gep1727 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 8 uses
  switch i64 %5, label %bb.lx [
    i64 4, label %bb.b
    i64 5, label %bb.jr
    i64 9, label %bb.lw
  ]

bb.b:                                             ; preds = %bb.a
  %i.bu = load i32, ptr %4, align 1
  %i.bv = icmp ne i32 %i.bu, 1819042147
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.c, label %bb.lx

bb.c:                                             ; preds = %bb.b
  %i.by = load i8, ptr %7, align 8, !range !12955, !noundef !3 ; 2 uses
  switch i8 %i.by, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.tf, %bb.ru, %bb.re, %"_ZN90_$LT$rhai..types..dynamic..DynamicReadLock$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7aae5aa33c8df96eE.exit923", %bb.ly, %bb.lx, %bb.kz, %bb.kb, %bb.js, %.noexc463, %bb.gb, %bb.ga, %"_ZN133_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$6extend17h417c5d5b62bdcac4E.exit", %bb.du, %bb.bu, %"_ZN90_$LT$rhai..types..dynamic..DynamicReadLock$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7aae5aa33c8df96eE.exit621", %bb.ak, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !3, !align !4, !noundef !3
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.val537 = load ptr, ptr %i.cb, align 8, !nonnull !3, !noundef !3
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.val538 = load i8, ptr %i.cc, align 8, !range !12413, !noundef !3
  %.not.i596 = icmp eq i8 %.val538, 2
  %.sroa.0.0.idx.i = select i1 %.not.i596, i64 0, i64 16
  %.sroa.0.0.i597 = getelementptr inbounds nuw i8, ptr %.val537, i64 %.sroa.0.0.idx.i
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 32
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.f, %bb.e, %bb.d
  %.sroa.0209.0 = phi ptr [ %i.ca, %bb.d ], [ %.sroa.0.0.i597, %bb.e ], [ %i.cd, %bb.f ], [ %i.ci, %bb.k ], [ %i.ce, %bb.g ], [ %i.cf, %bb.h ], [ %i.cg, %bb.i ], [ %i.ch, %bb.j ] ; 2 uses
  %i.cj = load i8, ptr %.sroa.0209.0, align 8, !range !645, !noundef !3
  switch i8 %i.cj, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hda4ae33c7f43cee6E.exit.thread" [
    i8 9, label %bb.ak
    i8 11, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0209.0, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 13 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30454)
  %i.co = load atomic i32, ptr %i.cm monotonic, align 4, !noalias !30454
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.sroa.01.0.i.i = phi i32 [ %i.co, %bb.m ], [ %i.cs, %bb.o ] ; 3 uses
  %or.cond11.i.i.i = icmp ult i32 %.sroa.01.0.i.i, 1073741822
  br i1 %or.cond11.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cp = add nuw nsw i32 %.sroa.01.0.i.i, 1
  %i.cq = cmpxchg weak ptr %i.cm, i32 %.sroa.01.0.i.i, i32 %i.cp acquire monotonic, align 4, !noalias !30454 ; 2 uses
  %i.cr = extractvalue { i32, i1 } %i.cq, 1
  %i.cs = extractvalue { i32, i1 } %i.cq, 0
  br i1 %i.cr, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit", label %bb.n

"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit": ; preds = %bb.o, %bb.u, %bb.y, %bb.ac, %bb.af
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cu = load atomic i8, ptr %i.ct monotonic, align 4, !noalias !30457
  %.not.i598 = icmp ne i8 %i.cu, 0                ; 2 uses
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.cn, align 8, !alias.scope !30454
  %i.cv = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.cm, ptr %i.cv, align 8, !alias.scope !30454
  %..i = zext i1 %.not.i598 to i64
  store i64 %..i, ptr %i.t, align 8, !alias.scope !30454
  br i1 %.not.i598, label %_ZN4rhai4func6native11locked_read17hc8171d013f35699cE.exit.thread1363, label %bb.ai

bb.p:                                             ; preds = %bb.n
  store ptr null, ptr %i.cn, align 8, !alias.scope !30454
  store i64 1, ptr %i.t, align 8, !alias.scope !30454
  invoke void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef 0, i32 noundef 10000000)
          to label %bb.q unwind label %bb.ag

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30460)
  %i.cw = load atomic i32, ptr %i.cm monotonic, align 4, !noalias !30460
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %bb.q
  %.sroa.01.0.i.i.1 = phi i32 [ %i.cw, %bb.q ], [ %i.db, %bb.u ] ; 3 uses
  %or.cond11.i.i.i.1 = icmp ult i32 %.sroa.01.0.i.i.1, 1073741822
  br i1 %or.cond11.i.i.i.1, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr null, ptr %i.cn, align 8, !alias.scope !30460
end_hunk_0
begin_hunk_1_@"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$16make_method_call17h50b909f062f62613E":bb.a
    i8 6, label %bb.ki
    i8 7, label %bb.kj
  ]

bb.kc:                                            ; preds = %bb.kb
  %i.ada = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.adb = load ptr, ptr %i.ada, align 8, !nonnull !3, !align !4, !noundef !3
  br label %bb.kk

bb.kd:                                            ; preds = %bb.kb
  %i.adc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.val527 = load ptr, ptr %i.adc, align 8, !nonnull !3, !noundef !3
  %i.add = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.val528 = load i8, ptr %i.add, align 8, !range !12413, !noundef !3
  %.not.i845 = icmp eq i8 %.val528, 2
  %.sroa.0.0.idx.i846 = select i1 %.not.i845, i64 0, i64 16
  %.sroa.0.0.i847 = getelementptr inbounds nuw i8, ptr %.val527, i64 %.sroa.0.0.idx.i846
  br label %bb.kk

bb.ke:                                            ; preds = %bb.kb
  %i.ade = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.kk

bb.kf:                                            ; preds = %bb.kb
  %i.adf = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.kk

bb.kg:                                            ; preds = %bb.kb
  %i.adg = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.kk

bb.kh:                                            ; preds = %bb.kb
  %i.adh = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.kk

bb.ki:                                            ; preds = %bb.kb
  %i.adi = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.kk

bb.kj:                                            ; preds = %bb.kb
  %i.adj = getelementptr inbounds nuw i8, ptr %7, i64 32
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kf, %bb.kg, %bb.kh, %bb.ki, %bb.kj, %bb.ke, %bb.kd, %bb.kc
  %.sroa.0257.0 = phi ptr [ %i.adb, %bb.kc ], [ %.sroa.0.0.i847, %bb.kd ], [ %i.ade, %bb.ke ], [ %i.adj, %bb.kj ], [ %i.adf, %bb.kf ], [ %i.adg, %bb.kg ], [ %i.adh, %bb.kh ], [ %i.adi, %bb.ki ] ; 2 uses
  %.sroa.0257.0.val = load i8, ptr %.sroa.0257.0, align 8, !range !645, !noundef !3
  %i.adk = getelementptr i8, ptr %.sroa.0257.0, i64 8
  %.sroa.0257.0.val541 = load ptr, ptr %i.adk, align 8
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic9read_lock17hfcdfbbfc7cd64d97E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.as, i8 %.sroa.0257.0.val, ptr %.sroa.0257.0.val541)
  %i.adl = load i64, ptr %i.as, align 8, !range !455, !noundef !3
  %i.adm = trunc nuw i64 %i.adl to i1
  br i1 %i.adm, label %bb.km, label %bb.kl, !prof !1425

bb.kl:                                            ; preds = %bb.kk
  %i.adn = getelementptr i8, ptr %1, i64 104      ; 2 uses
  %.val483 = load ptr, ptr %i.adn, align 8, !nonnull !3, !noundef !3
  %i.ado = getelementptr i8, ptr %1, i64 112      ; 2 uses
  %.val484 = load i64, ptr %i.ado, align 8, !noundef !3
  %i.adp = tail call fastcc { ptr, i64 } @"_ZN4rhai3api10formatting38_$LT$impl$u20$rhai..engine..Engine$GT$13map_type_name17h365f4fe751f60630E"(ptr nonnull %.val483, i64 %.val484, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.acx, i64 noundef %i.acy) ; 2 uses
  %i.adq = extractvalue { ptr, i64 } %i.adp, 0
  %i.adr = extractvalue { ptr, i64 } %i.adp, 1
  %.val499 = load ptr, ptr %i.adn, align 8, !nonnull !3, !noundef !3
  %.val500 = load i64, ptr %i.ado, align 8, !noundef !3
  %i.ads = tail call fastcc noundef nonnull align 8 ptr @"_ZN4rhai3api10formatting38_$LT$impl$u20$rhai..engine..Engine$GT$22make_type_mismatch_err17h2b6e4a350db591edE"(ptr nonnull %.val499, i64 %.val500, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.adq, i64 noundef %i.adr, i16 noundef %12, i16 noundef %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store ptr %i.ads, ptr %0, align 8
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.adt, align 8
  br label %bb.ef

bb.km:                                            ; preds = %bb.kk
  %i.adu = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0259.0.copyload = load ptr, ptr %i.adu, align 8 ; 3 uses
  %.sroa.4260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.4260.0.copyload = load i64, ptr %.sroa.4260.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.adv = inttoptr i64 %.sroa.4260.0.copyload to ptr ; 8 uses
  %.not.i848 = icmp eq ptr %.sroa.0259.0.copyload, null ; 3 uses
  br i1 %.not.i848, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %.val.i849 = load i8, ptr %.sroa.0259.0.copyload, align 8, !range !645, !noundef !3
  %i.adw = getelementptr i8, ptr %.sroa.0259.0.copyload, i64 8
  %.val4.i850 = load ptr, ptr %i.adw, align 8     ; 2 uses
  %i.adx = icmp ne i8 %.val.i849, 9
  %.not31.i851 = icmp eq ptr %.val4.i850, null
  %.not3.i852 = select i1 %i.adx, i1 true, i1 %.not31.i851
  br i1 %.not3.i852, label %bb.kp, label %"_ZN90_$LT$rhai..types..dynamic..DynamicReadLock$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7aae5aa33c8df96eE.exit855", !prof !543

bb.ko:                                            ; preds = %bb.km
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adv) ]
  br label %"_ZN90_$LT$rhai..types..dynamic..DynamicReadLock$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7aae5aa33c8df96eE.exit855"

bb.kp:                                            ; preds = %bb.kn
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3276) #70
          to label %.noexc854 unwind label %.body862.thread

.noexc854:                                        ; preds = %bb.kp
  unreachable

.body862.thread:                                  ; preds = %bb.kp
  %i.ady = landingpad { ptr, i32 }
          cleanup
  br label %bb.kq

.body862:                                         ; preds = %bb.kv, %bb.kw
  br i1 %.not.i848, label %common.resume, label %bb.kq

bb.kq:                                            ; preds = %.body862.thread, %.body862
  %eh.lpad-body8631403 = phi { ptr, i32 } [ %i.ady, %.body862.thread ], [ %i.aek, %.body862 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adv) ]
  %i.adz = atomicrmw sub ptr %i.adv, i32 1 release, align 4
  %i.aea = add i32 %i.adz, -1                     ; 2 uses
  %i.aeb = and i32 %i.aea, -1073741825
  %or.cond.not.i.i.i.i856 = icmp eq i32 %i.aeb, -2147483648
  br i1 %or.cond.not.i.i.i.i856, label %bb.kr, label %common.resume, !prof !663

bb.kr:                                            ; preds = %bb.kq
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.adv, i32 noundef %i.aea)
          to label %common.resume unwind label %bb.cw

"_ZN90_$LT$rhai..types..dynamic..DynamicReadLock$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7aae5aa33c8df96eE.exit855": ; preds = %bb.ko, %bb.kn
  %.sroa.0.0.i853 = phi ptr [ %i.adv, %bb.ko ], [ %.val4.i850, %bb.kn ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30854)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !30857
  %i.aec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i853, i64 24
  %i.aed = load ptr, ptr %i.aec, align 8, !alias.scope !30854, !noalias !30859, !nonnull !3, !noundef !3 ; 4 uses
  %i.aee = atomicrmw add ptr %i.aed, i64 1 monotonic, align 8, !noalias !30857
  %i.aef = icmp slt i64 %i.aee, 0
  br i1 %i.aef, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %"_ZN90_$LT$rhai..types..dynamic..DynamicReadLock$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7aae5aa33c8df96eE.exit855"
  store ptr %i.aed, ptr %i.h, align 8, !noalias !30857
  %i.aeg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i853, i64 32 ; 2 uses
  %i.aeh = load ptr, ptr %i.aeg, align 8, !alias.scope !30854, !noalias !30859, !nonnull !3, !noundef !3
  %i.aei = icmp eq ptr %i.aeh, @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE
  br i1 %i.aei, label %bb.kx, label %bb.ku, !prof !1425

bb.kt:                                            ; preds = %"_ZN90_$LT$rhai..types..dynamic..DynamicReadLock$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7aae5aa33c8df96eE.exit855"
  tail call void @llvm.trap()
  unreachable

bb.ku:                                            ; preds = %bb.ks
  %i.aej = invoke i64 @"_ZN65_$LT$thin_vec..ThinVec$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone19clone_non_singleton17hfbfa8918faed19ffE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aeg)
          to label %bb.kx unwind label %bb.kw, !noalias !30859, !inline_history !30860

bb.kv:                                            ; preds = %bb.kw
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.h)
          to label %.body862 unwind label %bb.lg, !noalias !30857, !inline_history !30860

bb.kw:                                            ; preds = %bb.ku
  %i.aek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ael = atomicrmw sub ptr %i.aed, i64 1 release, align 8, !noalias !30861
  %i.aem = icmp eq i64 %i.ael, 1
  br i1 %i.aem, label %bb.kv, label %.body862

bb.kx:                                            ; preds = %bb.ku, %bb.ks
  %storemerge.i = phi i64 [ %i.aej, %bb.ku ], [ ptrtoint (ptr @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE to i64), %bb.ks ] ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i853, i64 40
  %i.aeo = load ptr, ptr %i.aen, align 8, !alias.scope !30854, !noalias !30859, !noundef !3 ; 3 uses
  %.not.i859 = icmp eq ptr %i.aeo, null
  br i1 %.not.i859, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.aep = atomicrmw add ptr %i.aeo, i64 1 monotonic, align 8, !noalias !30857
  %i.aeq = icmp slt i64 %i.aep, 0
  br i1 %i.aeq, label %bb.lf, label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30871)
  %i.aer = load i64, ptr %.sroa.0.0.i853, align 8, !range !1786, !alias.scope !30873, !noalias !30874, !noundef !3 ; 2 uses
  switch i64 %i.aer, label %default.unreachable [
    i64 0, label %bb.lh
    i64 1, label %bb.la
    i64 2, label %bb.lb
  ]

bb.la:                                            ; preds = %bb.kz
  %i.aes = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i853, i64 8
  %i.aet = load ptr, ptr %i.aes, align 8, !alias.scope !30873, !noalias !30874, !nonnull !3, !noundef !3 ; 2 uses
  %i.aeu = atomicrmw add ptr %i.aet, i64 1 monotonic, align 8, !noalias !30875
  %i.aev = icmp slt i64 %i.aeu, 0
  br i1 %i.aev, label %bb.lc, label %.sink.split.i.i

bb.lb:                                            ; preds = %bb.kz
  %i.aew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i853, i64 8
  %i.aex = load ptr, ptr %i.aew, align 8, !alias.scope !30873, !noalias !30874, !nonnull !3, !noundef !3 ; 2 uses
  %i.aey = atomicrmw add ptr %i.aex, i64 1 monotonic, align 8, !noalias !30875
  %i.aez = icmp slt i64 %i.aey, 0
  br i1 %i.aez, label %bb.le, label %bb.ld

.sink.split.i.i:                                  ; preds = %bb.ld, %bb.la
  %.sink5.i.sroa.phi.i = phi ptr [ %.sroa.6.i, %bb.ld ], [ %.sroa.4.i, %bb.la ]
  %.sink3.i.i = phi ptr [ %i.afb, %bb.ld ], [ %i.aet, %bb.la ]
  store ptr %.sink3.i.i, ptr %.sink5.i.sroa.phi.i, align 8, !alias.scope !30868, !noalias !30876
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.pre.i = load i64, ptr %.sroa.4.i, align 8, !noalias !30857
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.pre.i = load i64, ptr %.sroa.6.i, align 8, !noalias !30857
  br label %bb.lh

bb.lc:                                            ; preds = %bb.la
  tail call void @llvm.trap()
  unreachable

bb.ld:                                            ; preds = %bb.lb
  %i.afa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i853, i64 16
  %i.afb = load ptr, ptr %i.afa, align 8, !alias.scope !30873, !noalias !30874, !nonnull !3, !align !4, !noundef !3
  %14 = ptrtoint ptr %i.aex to i64
  store i64 %14, ptr %.sroa.4.i, align 8, !alias.scope !30868, !noalias !30876
  br label %.sink.split.i.i

bb.le:                                            ; preds = %bb.lb
  tail call void @llvm.trap()
  unreachable

bb.lf:                                            ; preds = %bb.ky
  tail call void @llvm.trap()
  unreachable

bb.lg:                                            ; preds = %bb.kv
  %i.afc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !30857, !inline_history !30860
  unreachable

bb.lh:                                            ; preds = %.sink.split.i.i, %bb.kz
  %.sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = phi i64 [ %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.pre.i, %.sink.split.i.i ], [ undef, %bb.kz ]
  %.sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = phi i64 [ %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.pre.i, %.sink.split.i.i ], [ undef, %bb.kz ]
  %i.afd = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.aed, ptr %i.afd, align 8
  %i.afe = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 5 uses
  store i64 %storemerge.i, ptr %i.afe, align 8
  %i.aff = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr %i.aeo, ptr %i.aff, align 8
  store i64 %i.aer, ptr %i.ar, align 8
  %.sroa.4.0..sroa_idx.i860 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %.sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i860, align 8
  %.sroa.6.0..sroa_idx.i861 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %.sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i861, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !30857
  %i.afg = inttoptr i64 %storemerge.i to ptr
  br i1 %.not.i848, label %"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit866", label %bb.li

bb.li:                                            ; preds = %bb.lh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adv) ]
  %i.afh = atomicrmw sub ptr %i.adv, i32 1 release, align 4
  %i.afi = add i32 %i.afh, -1                     ; 2 uses
  %i.afj = and i32 %i.afi, -1073741825
  %or.cond.not.i.i.i.i864 = icmp eq i32 %i.afj, -2147483648
  br i1 %or.cond.not.i.i.i.i864, label %bb.lj, label %"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit866", !prof !663

bb.lj:                                            ; preds = %bb.li
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.adv, i32 noundef %i.afi)
          to label %"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit866" unwind label %bb.lk

bb.lk:                                            ; preds = %.lr.ph.i, %bb.lj
  %i.afk = landingpad { ptr, i32 }
          cleanup
  br label %bb.lv

"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit866": ; preds = %bb.li, %bb.lh, %bb.lj
  %.idx = shl nuw nsw i64 %9, 4
  %i.afl = getelementptr inbounds nuw i8, ptr %8, i64 %.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.715.i)
  %.not.i867 = icmp eq i64 %9, 0
  br i1 %.not.i867, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i", label %.lr.ph.i

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i": ; preds = %bb.lm, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.i", %"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit866"
  %i.afm = phi ptr [ %i.afg, %"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit866" ], [ %.val8.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.i" ], [ %.val8.i, %bb.lm ]
  %.sroa.0.0.i868 = phi ptr [ %8, %"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit866" ], [ %i.afr, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.i" ], [ %i.afr, %bb.lm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.721.i)
  %i.afn = icmp eq ptr %.sroa.0.0.i868, %i.afl
  br i1 %i.afn, label %.loopexit1536, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.lr.ph.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.lr.ph.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i"
  %.sroa.721.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.i"

.lr.ph.i:                                         ; preds = %"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit866"
  invoke fastcc void @"_ZN8thin_vec16ThinVec$LT$T$GT$7reserve17h2dc772c777ede91eE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.afe, i64 noundef %9)
          to label %.noexc871 unwind label %bb.lk

.noexc871:                                        ; preds = %.lr.ph.i
  %.val8.i = load ptr, ptr %i.afe, align 8, !nonnull !3 ; 5 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lm, %.noexc871
  %.sroa.01.029.i = phi i64 [ %9, %.noexc871 ], [ %i.afp, %bb.lm ]
  %.sroa.0.128.i = phi ptr [ %8, %.noexc871 ], [ %i.afr, %bb.lm ] ; 5 uses
  %i.afp = add i64 %.sroa.01.029.i, -1            ; 2 uses
  %i.afq = icmp eq ptr %.sroa.0.128.i, %i.afl
  br i1 %i.afq, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i.thread", label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i.thread": ; preds = %bb.ll
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.721.i)
  br label %.loopexit1536

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.i": ; preds = %bb.ll
  %i.afr = getelementptr inbounds nuw i8, ptr %.sroa.0.128.i, i64 16 ; 3 uses
  %.sroa.013.0.copyload14.i = load i8, ptr %.sroa.0.128.i, align 8, !noalias !30877 ; 2 uses
  %.sroa.715.0..sroa.0.0.10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.128.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.715.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.715.0..sroa.0.0.10.sroa_idx.i, i64 15, i1 false), !noalias !30882
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.128.i, i8 0, i64 16, i1 false), !alias.scope !30883, !noalias !30888
  %.not4.i = icmp eq i8 %.sroa.013.0.copyload14.i, 12
  br i1 %.not4.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i", label %bb.lm

bb.lm:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.i"
  %i.afs = load i64, ptr %.val8.i, align 8, !noalias !30892, !noundef !3 ; 2 uses
  %i.aft = getelementptr inbounds nuw [16 x i8], ptr %i.afo, i64 %i.afs ; 2 uses
  store i8 %.sroa.013.0.copyload14.i, ptr %i.aft, align 8, !noalias !30882
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aft, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.715.i, i64 15, i1 false), !noalias !30882
  %i.afu = add i64 %i.afs, 1
  store i64 %i.afu, ptr %.val8.i, align 8, !noalias !30892
  %i.afv = icmp eq i64 %i.afp, 0
  br i1 %i.afv, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i", label %bb.ll

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.i": ; preds = %"_ZN8thin_vec16ThinVec$LT$T$GT$4push17hc1b59168a569b572E.exit.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.lr.ph.i"
  %i.afw = phi ptr [ %i.afm, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.lr.ph.i" ], [ %i.age, %"_ZN8thin_vec16ThinVec$LT$T$GT$4push17hc1b59168a569b572E.exit.i" ] ; 3 uses
  %.sroa.017.033.i = phi ptr [ %.sroa.0.0.i868, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.lr.ph.i" ], [ %i.afx, %"_ZN8thin_vec16ThinVec$LT$T$GT$4push17hc1b59168a569b572E.exit.i" ] ; 4 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 16 ; 2 uses
  %.sroa.019.0.copyload20.i = load i8, ptr %.sroa.017.033.i, align 8, !noalias !30895 ; 2 uses
  %.sroa.721.0..sroa.017.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.721.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.721.0..sroa.017.0..sroa_idx.i, i64 15, i1 false), !noalias !30895
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.017.033.i, i8 0, i64 16, i1 false), !alias.scope !30898, !noalias !30903
  %.not5.i = icmp eq i8 %.sroa.019.0.copyload20.i, 12
  br i1 %.not5.i, label %.loopexit1536, label %bb.ln

bb.ln:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.i"
  store i8 %.sroa.019.0.copyload20.i, ptr %i.g, align 8, !noalias !30882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.721.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.721.i, i64 15, i1 false), !noalias !30882
  %i.afy = load i64, ptr %i.afw, align 8, !noalias !30907, !noundef !3 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afw, i64 8
  %i.aga = load i64, ptr %i.afz, align 8, !noalias !30907, !noundef !3
  %i.agb = icmp eq i64 %i.afy, %i.aga
  br i1 %i.agb, label %bb.lo, label %"_ZN8thin_vec16ThinVec$LT$T$GT$4push17hc1b59168a569b572E.exit.i"

bb.lo:                                            ; preds = %bb.ln
  invoke fastcc void @"_ZN8thin_vec16ThinVec$LT$T$GT$7reserve17h2dc772c777ede91eE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.afe, i64 noundef 1)
          to label %._crit_edge.i.i unwind label %bb.lp

._crit_edge.i.i:                                  ; preds = %bb.lo
  %.val.pre.i.i = load ptr, ptr %i.afe, align 8   ; 2 uses
  %.pre.i.i870 = load i64, ptr %.val.pre.i.i, align 8, !noalias !30911
  br label %"_ZN8thin_vec16ThinVec$LT$T$GT$4push17hc1b59168a569b572E.exit.i"

bb.lp:                                            ; preds = %bb.lo
  %i.agc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.g)
          to label %bb.lv unwind label %bb.lq, !noalias !30914, !inline_history !1419

bb.lq:                                            ; preds = %bb.lp
  %i.agd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !30907
  unreachable

"_ZN8thin_vec16ThinVec$LT$T$GT$4push17hc1b59168a569b572E.exit.i": ; preds = %._crit_edge.i.i, %bb.ln
  %i.age = phi ptr [ %.val.pre.i.i, %._crit_edge.i.i ], [ %i.afw, %bb.ln ] ; 3 uses
  %i.agf = phi i64 [ %.pre.i.i870, %._crit_edge.i.i ], [ %i.afy, %bb.ln ] ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.age, i64 16
  %i.agh = getelementptr inbounds nuw [16 x i8], ptr %i.agg, i64 %i.agf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agh, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !30914
  %i.agi = add i64 %i.agf, 1
  store i64 %i.agi, ptr %i.age, align 8, !noalias !30911
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.721.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.721.i)
  %i.agj = icmp eq ptr %i.afx, %i.afl
  br i1 %i.agj, label %.loopexit1536, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.i"

.loopexit1536:                                    ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.i", %"_ZN8thin_vec16ThinVec$LT$T$GT$4push17hc1b59168a569b572E.exit.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i.thread", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.721.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715.i)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !30915
  %i.agk = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !30915 ; 3 uses
  %i.agl = icmp eq ptr %i.agk, null
  br i1 %i.agl, label %bb.lr, label %bb.lu, !prof !23

bb.lr:                                            ; preds = %.loopexit1536
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #70
          to label %.noexc874 unwind label %bb.ls

.noexc874:                                        ; preds = %bb.lr
  unreachable

bb.ls:                                            ; preds = %bb.lr
  %i.agm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ar) #72
          to label %common.resume unwind label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.agn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.lu:                                            ; preds = %.loopexit1536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.agk, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false)
  store i8 9, ptr %i.bs, align 8
  %.sroa.092.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 0, ptr %.sroa.092.sroa.4.0..sroa_idx, align 1
  %.sroa.092.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 0, ptr %.sroa.092.sroa.6.0..sroa_idx, align 4
  %.sroa.092.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.agk, ptr %.sroa.092.sroa.7.0..sroa_idx, align 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i8 0, ptr %.sroa.493.0..sroa_idx, align 8
  br label %"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit697"

bb.lv:                                            ; preds = %bb.lk, %bb.lp
  %eh.lpad-body426.ph = phi { ptr, i32 } [ %i.afk, %bb.lk ], [ %i.agc, %bb.lp ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ar) #72
          to label %common.resume unwind label %bb.cw

bb.lw:                                            ; preds = %bb.a
  %i.ago = load i64, ptr %4, align 1
  %i.agp = xor i64 %i.ago, 7310012246415864681
  %i.agq = getelementptr i8, ptr %4, i64 8
  %i.agr = load i8, ptr %i.agq, align 1
  %i.ags = zext i8 %i.agr to i64
  %i.agt = xor i64 %i.ags, 100
  %i.agu = or i64 %i.agp, %i.agt
  %i.agv = icmp ne i64 %i.agu, 0
  %i.agw = zext i1 %i.agv to i32
  %i.agx = icmp eq i32 %i.agw, 0
  %i.agy = icmp eq i64 %9, 0
  %or.cond6 = and i1 %i.agy, %i.agx
  br i1 %or.cond6, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %bb.jr, %bb.b, %bb.a, %bb.lw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
end_hunk_1
begin_hunk_2_@_ZN4rhai5types7dynamic7Dynamic4cast17hc3eda37cf4dea2d7E:bb.a

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.q, align 8, !noalias !34924, !nonnull !3, !align !249, !noundef !3
  %i.z = load ptr, ptr %i.s, align 8, !noalias !34924, !nonnull !3, !align !4, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !3, !noalias !34924, !nonnull !3
  %i.ac = invoke { ptr, ptr } %i.ab(ptr noundef nonnull %i.y)
          to label %bb.g unwind label %bb.f, !noalias !34924 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.ae = extractvalue { ptr, ptr } %i.ac, 0      ; 5 uses
  %i.af = extractvalue { ptr, ptr } %i.ac, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34925)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34924
  store ptr %i.ae, ptr %i.b, align 8, !noalias !34928
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !noalias !34928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34928
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !alias.scope !34925, !noalias !34930, !nonnull !3
  invoke void %i.ai(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.ae)
          to label %bb.j unwind label %bb.h, !noalias !34930

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.p unwind label %bb.i, !noalias !34930

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !34930
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.al = load i128, ptr %i.a, align 16, !noalias !34928, !noundef !3
  %i.am = icmp eq i128 %i.al, -44246526541674541555283359401430652242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34924
  br i1 %i.am, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.an = load i16, ptr %i.ae, align 2, !noalias !34924, !noundef !3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef 2, i64 noundef 2) #71, !noalias !34924
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef 16, i64 noundef 8) #71, !noalias !34924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %._crit_edge

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34931
  store ptr %i.ae, ptr %i.c, align 8, !noalias !34931
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.af, ptr %i.ao, align 8, !noalias !34931
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @430, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1040) #70
          to label %bb.m unwind label %bb.l, !noalias !34931

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %bb.p unwind label %bb.n, !noalias !34931

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !34931
  unreachable

bb.o:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !34924
  unreachable

bb.p:                                             ; preds = %bb.l, %bb.h, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.ad, %bb.f ], [ %i.ap, %bb.l ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef 16, i64 noundef 8) #71, !noalias !34924
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit"

bb.q:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.q) #72
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.o, !noalias !34924

bb.r:                                             ; preds = %bb.b
  %i.at = extractvalue { ptr, i64 } %i.l, 0
  %i.au = extractvalue { ptr, i64 } %i.l, 1
  br label %.noexc

bb.s:                                             ; preds = %.noexc, %bb.d
  %.sroa.0.0.copyload = load i8, ptr %i.h, align 8, !alias.scope !34924
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.sroa.528.0.copyload = load i16, ptr %.sroa.528.0..sroa_idx, align 2, !alias.scope !34924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i8 %.sroa.0.0.copyload, 12
  br i1 %.not, label %._crit_edge, label %"_ZN4core3ptr84drop_in_place$LT$core..result..Result$LT$i16$C$rhai..types..dynamic..Dynamic$GT$$GT$17h198f840718688746E.exit"

._crit_edge:                                      ; preds = %bb.s, %.thread
  %i.av = phi i16 [ %i.an, %.thread ], [ %.sroa.528.0.copyload, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i16 %i.av

"_ZN4core3ptr84drop_in_place$LT$core..result..Result$LT$i16$C$rhai..types..dynamic..Dynamic$GT$$GT$17h198f840718688746E.exit": ; preds = %bb.s
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @1086, ptr %i.f, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 3, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.i, ptr %i.e, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.49.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.ax, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.413.0..sroa_idx, align 8
  store ptr @1054, ptr %i.g, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.bb, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1055) #70
  unreachable

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit": ; preds = %bb.p, %bb.q, %bb.t
  %eh.lpad-body20 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.t ], [ %i.as, %bb.q ], [ %eh.lpad-body.i, %bb.p ]
  resume { ptr, i32 } %eh.lpad-body20

bb.t:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.u, !inline_history !1419

bb.u:                                             ; preds = %bb.t
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN4rhai5types7dynamic7Dynamic4cast17hc52d448aa52cd143E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load i8, ptr %0, align 8, !range !645, !noundef !3
  %i.g = icmp eq i8 %i.f, 11
  %.sink23.sroa.gep = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br i1 %i.g, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.c unwind label %bb.e       ; 2 uses

.noexc:                                           ; preds = %bb.a, %bb.c
  %.sink22 = phi ptr [ %i.l, %bb.c ], [ @1051, %bb.a ]
  %.sink = phi i64 [ %i.m, %bb.c ], [ 8, %bb.a ]
  store ptr %.sink22, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sink, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34934)
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %0)
  %i.j = load i8, ptr %i.d, align 8, !range !645, !alias.scope !34937, !noalias !34934, !noundef !3
  %i.k = icmp eq i8 %i.j, 2
  %.sink23.sroa.phi.sroa.speculate.load..noexc = load ptr, ptr %.sink23.sroa.gep, align 8
  br i1 %i.k, label %_ZN4rhai5types7dynamic7Dynamic15try_cast_result17h30d4cd334e8145e8E.exit.thread, label %_ZN4rhai5types7dynamic7Dynamic15try_cast_result17h30d4cd334e8145e8E.exit

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.h, 0
  %i.m = extractvalue { ptr, i64 } %i.h, 1
  br label %.noexc

_ZN4rhai5types7dynamic7Dynamic15try_cast_result17h30d4cd334e8145e8E.exit: ; preds = %.noexc
  %.sroa.0.0.copyload = load i8, ptr %i.d, align 8, !alias.scope !34939
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.525.0.copyload = load i64, ptr %.sroa.525.0..sroa_idx, align 8, !alias.scope !34939
  %.not = icmp eq i8 %.sroa.0.0.copyload, 12
  %1 = inttoptr i64 %.sroa.525.0.copyload to ptr
  br i1 %.not, label %_ZN4rhai5types7dynamic7Dynamic15try_cast_result17h30d4cd334e8145e8E.exit.thread, label %bb.d

_ZN4rhai5types7dynamic7Dynamic15try_cast_result17h30d4cd334e8145e8E.exit.thread: ; preds = %_ZN4rhai5types7dynamic7Dynamic15try_cast_result17h30d4cd334e8145e8E.exit, %.noexc
  %.sink23.sroa.phi.sroa.speculated = phi ptr [ %.sink23.sroa.phi.sroa.speculate.load..noexc, %.noexc ], [ %1, %_ZN4rhai5types7dynamic7Dynamic15try_cast_result17h30d4cd334e8145e8E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %.sink23.sroa.phi.sroa.speculated

bb.d:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic15try_cast_result17h30d4cd334e8145e8E.exit
  call fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..result..Result$LT$rhai..types..immutable_string..ImmutableString$C$rhai..types..dynamic..Dynamic$GT$$GT$17h7093f4e888153923E"(ptr noalias noundef align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @464, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 46, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.49.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.o, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.413.0..sroa_idx, align 8
  store ptr @1054, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %i.s, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1055) #70
  unreachable

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit": ; preds = %bb.e
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.e:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.f, !inline_history !1419

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_ZN4rhai5types7dynamic7Dynamic4cast17hd7d5ce38e471ca7eE(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = load i8, ptr %0, align 8, !range !645, !noundef !3
  %i.l = icmp eq i8 %i.k, 11
  br i1 %i.l, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.r unwind label %bb.t       ; 2 uses

.noexc:                                           ; preds = %bb.a, %bb.r
  %.sink25 = phi ptr [ %i.at, %bb.r ], [ @1051, %bb.a ]
  %.sink = phi i64 [ %i.au, %bb.r ], [ 8, %bb.a ]
  store ptr %.sink25, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34943)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %0)
  %i.o = load i8, ptr %i.i, align 8, !range !645, !alias.scope !34943, !noalias !34940, !noundef !3
  %i.p = icmp eq i8 %i.o, 10
  br i1 %i.p, label %bb.c, label %"_ZN4core3ptr115drop_in_place$LT$core..result..Result$LT$core..ops..range..Range$LT$u64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h78a6a9824c3f34dfE.exit"

bb.c:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !34943, !noalias !34940, !nonnull !3, !align !4, !noundef !3 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !34945, !nonnull !3, !align !249, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !noalias !34945, !nonnull !3, !align !4, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !3, !noalias !34945, !nonnull !3
  invoke void %i.w(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 1 %i.s)
          to label %bb.d unwind label %bb.q, !noalias !34945

bb.d:                                             ; preds = %bb.c
  %i.x = load i128, ptr %i.d, align 16, !noalias !34945, !noundef !3
  %i.y = icmp eq i128 %i.x, -96403227933188994494058036078122007030
  br i1 %i.y, label %bb.e, label %"_ZN4core3ptr115drop_in_place$LT$core..result..Result$LT$core..ops..range..Range$LT$u64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h78a6a9824c3f34dfE.exit"

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.r, align 8, !noalias !34945, !nonnull !3, !align !249, !noundef !3
  %i.aa = load ptr, ptr %i.t, align 8, !noalias !34945, !nonnull !3, !align !4, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !3, !noalias !34945, !nonnull !3
  %i.ad = invoke { ptr, ptr } %i.ac(ptr noundef nonnull %i.z)
          to label %bb.g unwind label %bb.f, !noalias !34945 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.af = extractvalue { ptr, ptr } %i.ad, 0      ; 6 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34946)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34945
  store ptr %i.af, ptr %i.b, align 8, !noalias !34949
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !noalias !34949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34949
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !3, !alias.scope !34946, !noalias !34951, !nonnull !3
  invoke void %i.aj(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.af)
          to label %bb.j unwind label %bb.h, !noalias !34951

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.p unwind label %bb.i, !noalias !34951

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !34951
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.am = load i128, ptr %i.a, align 16, !noalias !34949, !noundef !3
  %i.an = icmp eq i128 %i.am, -96403227933188994494058036078122007030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34945
  br i1 %i.an, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34952
  store ptr %i.af, ptr %i.c, align 8, !noalias !34952
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ag, ptr %i.ao, align 8, !noalias !34952
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @430, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1040) #70
          to label %bb.m unwind label %bb.l, !noalias !34952

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %bb.p unwind label %bb.n, !noalias !34952

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !34952
  unreachable

bb.o:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !34945
  unreachable

bb.p:                                             ; preds = %bb.l, %bb.h, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.ae, %bb.f ], [ %i.ap, %bb.l ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef 16, i64 noundef 8) #71, !noalias !34945
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit"

bb.q:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.r) #72
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.o, !noalias !34945

bb.r:                                             ; preds = %bb.b
  %i.at = extractvalue { ptr, i64 } %i.m, 0
  %i.au = extractvalue { ptr, i64 } %i.m, 1
  br label %.noexc

bb.s:                                             ; preds = %bb.j
  %i.av = load i64, ptr %i.af, align 8, !noalias !34945, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !34945, !noundef !3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 16, i64 noundef 8) #71, !noalias !34945
end_hunk_2
begin_hunk_3_@"_ZN67_$LT$rhai..func..function..RhaiFunc$u20$as$u20$core..fmt..Debug$GT$3fmt17h2af49c3a96b211cbE":bb.a
bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2756, i64 noundef 12)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2757, i64 noundef 14)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2758, i64 noundef 14)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  store ptr %i.m, ptr %i.a, align 8
  %i.n = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field5_finish17hdf1a0dbaab5abae2E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2761, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2419, i64 noundef 4, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2706, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2088, i64 noundef 4, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2675, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2135, i64 noundef 6, ptr noundef nonnull align 1 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2759, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2138, i64 noundef 9, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2417, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2139, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2760)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.n, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZN68_$LT$ahash..fallback_hash..AHasher$u20$as$u20$core..hash..Hasher$GT$5write17ha71fc7cf933c9a30E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = add i64 %i.b, %2
  %i.d = mul i64 %i.c, 6364136223846793005        ; 3 uses
  %i.e = icmp ugt i64 %2, 8
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ugt i64 %2, 1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %2, 1
  br i1 %i.g, label %bb.e, label %_ZN5ahash10operations10read_small17ha2f9f74cc39f9b19E.exit

bb.d:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %2, 3
  %i.i = getelementptr i8, ptr %1, i64 %2         ; 2 uses
  br i1 %i.h, label %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$13read_last_u3217h244f85e5e6b292e4E.exit", label %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$8read_u1617h2d0f56c5011e5fc1E.exit"

bb.e:                                             ; preds = %bb.c
  %i.j = load i8, ptr %1, align 1, !alias.scope !57996, !noalias !57999, !noundef !3
  %i.k = zext i8 %i.j to i64                      ; 2 uses
  br label %_ZN5ahash10operations10read_small17ha2f9f74cc39f9b19E.exit

"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$8read_u1617h2d0f56c5011e5fc1E.exit": ; preds = %bb.d
  %.sroa.0.0.copyload.i29 = load i16, ptr %1, align 1, !noalias !58001
  %i.l = zext i16 %.sroa.0.0.copyload.i29 to i64
  %i.m = getelementptr i8, ptr %i.i, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !57996, !noalias !57999, !noundef !3
  %i.o = zext i8 %i.n to i64
  br label %_ZN5ahash10operations10read_small17ha2f9f74cc39f9b19E.exit

"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$13read_last_u3217h244f85e5e6b292e4E.exit": ; preds = %bb.d
  %.sroa.0.0.copyload.i31 = load i32, ptr %1, align 1, !noalias !58004
  %i.p = zext i32 %.sroa.0.0.copyload.i31 to i64
  %i.q = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.0.0.copyload.i = load i32, ptr %i.q, align 1, !noalias !57999
  %i.r = zext i32 %.sroa.0.0.copyload.i to i64
  br label %_ZN5ahash10operations10read_small17ha2f9f74cc39f9b19E.exit

_ZN5ahash10operations10read_small17ha2f9f74cc39f9b19E.exit: ; preds = %bb.c, %bb.e, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$8read_u1617h2d0f56c5011e5fc1E.exit", %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$13read_last_u3217h244f85e5e6b292e4E.exit"
  %.sroa.539.0 = phi i64 [ %i.r, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$13read_last_u3217h244f85e5e6b292e4E.exit" ], [ %i.o, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$8read_u1617h2d0f56c5011e5fc1E.exit" ], [ %i.k, %bb.e ], [ 0, %bb.c ]
  %.sroa.038.0 = phi i64 [ %i.p, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$13read_last_u3217h244f85e5e6b292e4E.exit" ], [ %i.l, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$8read_u1617h2d0f56c5011e5fc1E.exit" ], [ %i.k, %bb.e ], [ 0, %bb.c ]
  %i.s = load i64, ptr %0, align 8, !noundef !3
  %i.t = xor i64 %i.s, %.sroa.038.0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !3
  %i.w = xor i64 %i.v, %.sroa.539.0
  %i.x = zext i64 %i.t to i128
  %i.y = zext i64 %i.w to i128
  %i.z = mul nuw i128 %i.y, %i.x                  ; 2 uses
  %i.aa = lshr i128 %i.z, 64
  %i.ab = xor i128 %i.aa, %i.z
  %i.ac = trunc i128 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !3
  %i.af = add i64 %i.ae, %i.d
  %i.ag = xor i64 %i.af, %i.ac                    ; 2 uses
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 23)
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.ai = icmp ugt i64 %2, 16
  br i1 %i.ai, label %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$14read_last_u12817h07febf17c0a2ace9E.exit", label %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$13read_last_u6417h4e45caf3e8d3f5d5E.exit"

.loopexit:                                        ; preds = %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit", %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$13read_last_u6417h4e45caf3e8d3f5d5E.exit", %_ZN5ahash10operations10read_small17ha2f9f74cc39f9b19E.exit
  %.lcssa.sink = phi i64 [ %i.ah, %_ZN5ahash10operations10read_small17ha2f9f74cc39f9b19E.exit ], [ %i.ba, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$13read_last_u6417h4e45caf3e8d3f5d5E.exit" ], [ %i.ce, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit" ]
  store i64 %.lcssa.sink, ptr %i.a, align 8
  ret void

"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$13read_last_u6417h4e45caf3e8d3f5d5E.exit": ; preds = %bb.f
  %.sroa.0.0.copyload.i33 = load i64, ptr %1, align 1, !noalias !58007
  %i.aj = getelementptr i8, ptr %1, i64 %2
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8
  %.sroa.0.0.copyload.i25 = load i64, ptr %i.ak, align 1
  %i.al = load i64, ptr %0, align 8, !noundef !3
  %i.am = xor i64 %i.al, %.sroa.0.0.copyload.i33
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noundef !3
  %i.ap = xor i64 %i.ao, %.sroa.0.0.copyload.i25
  %i.aq = zext i64 %i.am to i128
  %i.ar = zext i64 %i.ap to i128
  %i.as = mul nuw i128 %i.ar, %i.aq               ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = xor i128 %i.at, %i.as
  %i.av = trunc i128 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !3
  %i.ay = add i64 %i.ax, %i.d
  %i.az = xor i64 %i.ay, %i.av                    ; 2 uses
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 23)
  br label %.loopexit

"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$14read_last_u12817h07febf17c0a2ace9E.exit": ; preds = %bb.f
  %i.bb = getelementptr i8, ptr %1, i64 %2
  %i.bc = getelementptr i8, ptr %i.bb, i64 -16
  %.sroa.0.0.copyload.i27 = load i128, ptr %i.bc, align 1 ; 2 uses
  %.sroa.017.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i27 to i64
  %.sroa.4.0.extract.shift = lshr i128 %.sroa.0.0.copyload.i27, 64
  %i.bd = load i64, ptr %0, align 8, !noundef !3  ; 2 uses
  %i.be = xor i64 %i.bd, %.sroa.017.0.extract.trunc
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !3
  %i.bh = zext i64 %i.be to i128
  %i.bi = zext i64 %i.bg to i128                  ; 2 uses
  %i.bj = xor i128 %.sroa.4.0.extract.shift, %i.bi
  %i.bk = mul nuw i128 %i.bj, %i.bh               ; 2 uses
  %i.bl = lshr i128 %i.bk, 64
  %i.bm = xor i128 %i.bl, %i.bk
  %i.bn = trunc i128 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !3 ; 2 uses
  %i.bq = add i64 %i.bp, %i.d
  %i.br = xor i64 %i.bq, %i.bn                    ; 2 uses
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 23)
  br label %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit"

"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit": ; preds = %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$14read_last_u12817h07febf17c0a2ace9E.exit", %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit"
  %.sroa.0.076 = phi ptr [ %1, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$14read_last_u12817h07febf17c0a2ace9E.exit" ], [ %i.bt, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit" ] ; 2 uses
  %.sroa.13.075 = phi i64 [ %2, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$14read_last_u12817h07febf17c0a2ace9E.exit" ], [ %i.bu, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit" ]
  %storemerge74 = phi i64 [ %i.bs, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$14read_last_u12817h07febf17c0a2ace9E.exit" ], [ %i.ce, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit" ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.076, i64 16
  %i.bu = add i64 %.sroa.13.075, -16              ; 2 uses
  %.sroa.0.0.copyload.i35 = load i128, ptr %.sroa.0.076, align 1, !noalias !58010 ; 2 uses
  %.sroa.018.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i35 to i64
  %.sroa.419.0.extract.shift = lshr i128 %.sroa.0.0.copyload.i35, 64
  %i.bv = xor i64 %i.bd, %.sroa.018.0.extract.trunc
  %i.bw = zext i64 %i.bv to i128
  %i.bx = xor i128 %.sroa.419.0.extract.shift, %i.bi
  %i.by = mul nuw i128 %i.bx, %i.bw               ; 2 uses
  %i.bz = lshr i128 %i.by, 64
  %i.ca = xor i128 %i.bz, %i.by
  %i.cb = trunc i128 %i.ca to i64
  %i.cc = add i64 %storemerge74, %i.bp
  %i.cd = xor i64 %i.cc, %i.cb                    ; 2 uses
  %i.ce = tail call i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 23) ; 2 uses
  %i.cf = icmp ugt i64 %i.bu, 16
  br i1 %i.cf, label %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit", label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$rhai..api..options..LangOptions$u20$as$u20$core..fmt..Debug$GT$3fmt17h857fd8b29ab46b30E"(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2763, i64 noundef 11, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2762)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$rhai..eval..chaining..ChainType$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc5f3adc9649a291E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !5, !noundef !3
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 7, i64 8
  %.1 = select i1 %i.b, ptr @2765, ptr @2764
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN68_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..clone..Clone$GT$5clone17h1b28c043977b7655E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.6.i = alloca i64, align 8                ; 4 uses
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = load i8, ptr %1, align 8, !range !645, !noundef !3
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.k
    i8 8, label %bb.p
    i8 9, label %bb.w
    i8 10, label %bb.an
    i8 11, label %bb.ar
  ]

default.unreachable:                              ; preds = %bb.af, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !noundef !3
  store i8 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.f, ptr %.sroa.51.0..sroa_idx, align 4
  br label %bb.as

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !5, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !3
  store i8 1, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %.sroa.43.0..sroa_idx, align 1
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %.sroa.54.0..sroa_idx, align 2
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.j, ptr %.sroa.66.0..sroa_idx, align 4
  br label %bb.as

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.au, label %bb.at

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 3, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.413.0..sroa_idx, align 1
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load <2 x i32>, ptr %i.q, align 4
  store <2 x i32> %i.r, ptr %.sroa.515.0..sroa_idx, align 4
  br label %bb.as

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !noundef !3
  store i8 4, ptr %0, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.419.0..sroa_idx, align 1
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.v, ptr %.sroa.521.0..sroa_idx, align 4
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %.sroa.622.0..sroa_idx, align 8
  br label %bb.as

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load double, ptr %i.w, align 8, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load i32, ptr %i.y, align 4, !noundef !3
  store i8 5, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.424.0..sroa_idx, align 1
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.z, ptr %.sroa.526.0..sroa_idx, align 4
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.x, ptr %.sroa.627.0..sroa_idx, align 8
  br label %bb.as

bb.h:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58013)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !58013
  %i.ac = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !58013 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h1b58ec157921c9adE.exit", !prof !543

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #70, !noalias !58013
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h1b58ec157921c9adE.exit": ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !58013, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58016)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58019
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !58020, !noalias !58023, !nonnull !3, !noundef !3
  %i.aj = load i64, ptr %i.ag, align 8, !alias.scope !58020, !noalias !58023, !noundef !3
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hdd9f0a48cae959c4E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ai, i64 noundef %i.aj)
          to label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb7046e4920c3c41eE.exit" unwind label %bb.j, !inline_history !58025

common.resume:                                    ; preds = %bb.ap, %.body, %bb.v, %bb.o, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %i.aw, %bb.o ], [ %i.bk, %bb.v ], [ %i.bz, %.body ], [ %i.dg, %bb.ap ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h1b58ec157921c9adE.exit"
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ac, i64 noundef 24, i64 noundef 8) #71, !noalias !58013
  br label %common.resume

"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb7046e4920c3c41eE.exit": ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h1b58ec157921c9adE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !58019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58019
  store i8 6, ptr %0, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.429.0..sroa_idx, align 1
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ab, ptr %.sroa.531.0..sroa_idx, align 4
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %.sroa.632.0..sroa_idx, align 8
  br label %bb.as

bb.k:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4, !noundef !3
  %.val61 = load ptr, ptr %i.al, align 8          ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.ao = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 6 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.l, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h36079e8faec580a8E.exit.i", !prof !543

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #70
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h36079e8faec580a8E.exit.i": ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val61) ]
  %i.aq = getelementptr i8, ptr %.val61, i64 8
  %.val.i62 = load ptr, ptr %i.aq, align 8, !nonnull !3, !noundef !3
  %i.ar = getelementptr i8, ptr %.val61, i64 16
  %.val1.i = load i64, ptr %i.ar, align 8, !noundef !3 ; 7 uses
  %i.as = icmp slt i64 %.val1.i, 0
  br i1 %i.as, label %bb.n, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !1069

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h36079e8faec580a8E.exit.i"
  %i.at = icmp eq i64 %.val1.i, 0
  br i1 %i.at, label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h390b58054274cadcE.exit", label %bb.m

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !58026
  %i.au = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val1.i, i64 noundef range(i64 1, 9) 1) #71, !noalias !58026 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.n, label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h390b58054274cadcE.exit"

bb.n:                                             ; preds = %bb.m, %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h36079e8faec580a8E.exit.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %bb.m ], [ 0, %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h36079e8faec580a8E.exit.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3069) #70
          to label %.noexc.i unwind label %bb.o

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef 24, i64 noundef 8) #71
  br label %common.resume

"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h390b58054274cadcE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, %bb.m
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.au, %bb.m ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 1 %.val.i62, i64 %.val1.i, i1 false), !noalias !58036
  store i64 %.val1.i, ptr %i.ao, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %.val1.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  store i8 7, ptr %0, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.434.0..sroa_idx, align 1
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.an, ptr %.sroa.536.0..sroa_idx, align 4
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %.sroa.637.0..sroa_idx, align 8
  br label %bb.as

bb.p:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58037)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !58037
  %i.az = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !58037 ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.q, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h4168a9e93a2e88cbE.exit", !prof !543

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #70, !noalias !58037
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h4168a9e93a2e88cbE.exit": ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !58037, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58040)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !58043
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58044), !noalias !58037
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58047), !noalias !58037
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !58049, !noalias !58050, !noundef !3
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h4168a9e93a2e88cbE.exit"
  store ptr null, ptr %i.b, align 8, !alias.scope !58044, !noalias !58051
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.bg, align 8, !alias.scope !58044, !noalias !58051
  br label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb7aef8b7aec03f56E.exit"

bb.s:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h4168a9e93a2e88cbE.exit"
  %i.bh = load ptr, ptr %i.bc, align 8, !alias.scope !58049, !noalias !58050, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %bb.u, label %bb.t, !prof !543

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !58049, !noalias !58050, !noundef !3
  invoke fastcc void @"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone13clone_subtree17h4b1634439a4a1c65E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.bh, i64 noundef %i.bj)
          to label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb7aef8b7aec03f56E.exit" unwind label %bb.v, !inline_history !58052

bb.u:                                             ; preds = %bb.s
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3318) #70
          to label %.noexc67 unwind label %bb.v, !inline_history !58052

.noexc67:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.bk = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef 24, i64 noundef 8) #71, !noalias !58037
  br label %common.resume

"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb7aef8b7aec03f56E.exit": ; preds = %bb.r, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !58043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !58043
  store i8 8, ptr %0, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.439.0..sroa_idx, align 1
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ay, ptr %.sroa.541.0..sroa_idx, align 4
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %.sroa.642.0..sroa_idx, align 8
  br label %bb.as

bb.w:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58053)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !58053
  %i.bn = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !58053 ; 9 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.x, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3add715f838b520aE.exit", !prof !543

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #70, !noalias !58053
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3add715f838b520aE.exit": ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !58053, !nonnull !3, !align !4, !noundef !3 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58056)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58059
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !58056, !noalias !58061, !nonnull !3, !noundef !3 ; 4 uses
  %i.bt = atomicrmw add ptr %i.bs, i64 1 monotonic, align 8, !noalias !58059
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.z, label %bb.y

bb.y:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3add715f838b520aE.exit"
  store ptr %i.bs, ptr %i.a, align 8, !noalias !58059
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !58056, !noalias !58061, !nonnull !3, !noundef !3
  %i.bx = icmp eq ptr %i.bw, @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE
  br i1 %i.bx, label %bb.ad, label %bb.aa, !prof !1425

bb.z:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3add715f838b520aE.exit"
  tail call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.by = invoke i64 @"_ZN65_$LT$thin_vec..ThinVec$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone19clone_non_singleton17hfbfa8918faed19ffE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bv)
          to label %bb.ad unwind label %bb.ac, !noalias !58061, !inline_history !58062

bb.ab:                                            ; preds = %bb.ac
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.am, !noalias !58059, !inline_history !58062

bb.ac:                                            ; preds = %bb.aa
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !58063
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.ab, label %.body

bb.ad:                                            ; preds = %bb.aa, %bb.y
  %storemerge.i = phi i64 [ %i.by, %bb.aa ], [ ptrtoint (ptr @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE to i64), %bb.y ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !58056, !noalias !58061, !noundef !3 ; 3 uses
  %.not.i = icmp eq ptr %i.cd, null
  br i1 %.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = atomicrmw add ptr %i.cd, i64 1 monotonic, align 8, !noalias !58059
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58073)
  %i.cg = load i64, ptr %i.bq, align 8, !range !1786, !alias.scope !58075, !noalias !58076, !noundef !3 ; 2 uses
  switch i64 %i.cg, label %default.unreachable [
    i64 0, label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h75d28f7df3b488d0E.exit"
    i64 1, label %bb.ag
    i64 2, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !58075, !noalias !58076, !nonnull !3, !noundef !3 ; 2 uses
  %i.cj = atomicrmw add ptr %i.ci, i64 1 monotonic, align 8, !noalias !58077
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %bb.ai, label %.sink.split.i.i

bb.ah:                                            ; preds = %bb.af
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !58075, !noalias !58076, !nonnull !3, !noundef !3 ; 2 uses
  %i.cn = atomicrmw add ptr %i.cm, i64 1 monotonic, align 8, !noalias !58077
  %i.co = icmp slt i64 %i.cn, 0
  br i1 %i.co, label %bb.ak, label %bb.aj

.sink.split.i.i:                                  ; preds = %bb.aj, %bb.ag
  %.sink5.i.sroa.phi.i = phi ptr [ %.sroa.6.i, %bb.aj ], [ %.sroa.4.i, %bb.ag ]
  %.sink3.i.i = phi ptr [ %i.cq, %bb.aj ], [ %i.ci, %bb.ag ]
  store ptr %.sink3.i.i, ptr %.sink5.i.sroa.phi.i, align 8, !alias.scope !58070, !noalias !58078
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.pre.i = load i64, ptr %.sroa.4.i, align 8, !noalias !58059
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.pre.i = load i64, ptr %.sroa.6.i, align 8, !noalias !58059
  br label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h75d28f7df3b488d0E.exit"

bb.ai:                                            ; preds = %bb.ag
  tail call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !58075, !noalias !58076, !nonnull !3, !align !4, !noundef !3
  %2 = ptrtoint ptr %i.cm to i64
  store i64 %2, ptr %.sroa.4.i, align 8, !alias.scope !58070, !noalias !58078
  br label %.sink.split.i.i

bb.ak:                                            ; preds = %bb.ah
  tail call void @llvm.trap()
  unreachable

bb.al:                                            ; preds = %bb.ae
  tail call void @llvm.trap()
  unreachable

bb.am:                                            ; preds = %bb.ab
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !58059, !inline_history !58062
  unreachable

.body:                                            ; preds = %bb.ab, %bb.ac
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bn, i64 noundef 48, i64 noundef 8) #71, !noalias !58053
  br label %common.resume

"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h75d28f7df3b488d0E.exit": ; preds = %.sink.split.i.i, %bb.af
  %.sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = phi i64 [ %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.pre.i, %.sink.split.i.i ], [ undef, %bb.af ]
  %.sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = phi i64 [ %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.pre.i, %.sink.split.i.i ], [ undef, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58059
  store i64 %i.cg, ptr %i.bn, align 8, !noalias !58079
  %.sroa.4.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %.sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx79, align 8, !noalias !58079
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %.sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !58079
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %i.bs, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !58079
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store i64 %storemerge.i, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !58079
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store ptr %i.cd, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !58079
  store i8 9, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.444.0..sroa_idx, align 1
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bm, ptr %.sroa.546.0..sroa_idx, align 4
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %.sroa.647.0..sroa_idx, align 8
  br label %bb.as

bb.an:                                            ; preds = %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !noundef !3
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !3, !noundef !3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !3, !align !4, !noundef !3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.da = load ptr, ptr %i.cz, align 8, !invariant.load !3, !nonnull !3
  %i.db = tail call { ptr, ptr } %i.da(ptr noundef nonnull align 1 %i.cw) ; 2 uses
  %i.dc = extractvalue { ptr, ptr } %i.db, 0      ; 3 uses
  %i.dd = extractvalue { ptr, ptr } %i.db, 1      ; 4 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.de = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.ao, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha1c3fc47b201251dE.exit", !prof !23

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.ap

.noexc:                                           ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$17h303be192035c9e65E"(ptr %i.dc, ptr nonnull %i.dd) #72
          to label %common.resume unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha1c3fc47b201251dE.exit": ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  store ptr %i.dc, ptr %i.de, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dd, ptr %i.di, align 8
  store i8 10, ptr %0, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.449.0..sroa_idx, align 1
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ct, ptr %.sroa.551.0..sroa_idx, align 4
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.de, ptr %.sroa.652.0..sroa_idx, align 8
  br label %bb.as

bb.ar:                                            ; preds = %bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !noundef !3
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.dn = atomicrmw add ptr %i.dm, i64 1 monotonic, align 8
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %bb.aw, label %bb.av

bb.as:                                            ; preds = %bb.av, %bb.at, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha1c3fc47b201251dE.exit", %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h75d28f7df3b488d0E.exit", %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb7aef8b7aec03f56E.exit", %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h390b58054274cadcE.exit", %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb7046e4920c3c41eE.exit", %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  ret void

bb.at:                                            ; preds = %bb.d
  store i8 2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.48.0..sroa_idx, align 1
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.l, ptr %.sroa.510.0..sroa_idx, align 4
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.611.0..sroa_idx, align 8
  br label %bb.as

bb.au:                                            ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %bb.ar
  store i8 11, ptr %0, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.454.0..sroa_idx, align 1
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.dk, ptr %.sroa.556.0..sroa_idx, align 4
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dm, ptr %.sroa.657.0..sroa_idx, align 8
  br label %bb.as

bb.aw:                                            ; preds = %bb.ar
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN68_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..fmt..Display$GT$3fmt17display_fmt_print17h2f1aa8ddb6dc66a1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 18 uses
  %i.b = load i8, ptr %1, align 8, !range !645, !noundef !3
  switch i8 %i.b, label %bb.b [
    i8 6, label %bb.c
    i8 8, label %bb.d
    i8 11, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @"_ZN68_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..fmt..Display$GT$3fmt17h8aedffd25056a1e7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %"_ZN4core3ptr100drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h1d7000fb9f1b2340E.exit71"

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h55d4d90519ce7541E"(ptr noalias noundef align 8 dereferenceable(48) %2, ptr noundef %1) ; 0 uses
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @504, i64 noundef 1)
  br i1 %i.e, label %"_ZN4core3ptr100drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h1d7000fb9f1b2340E.exit71", label %.peel.begin

bb.d:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h55d4d90519ce7541E"(ptr noalias noundef align 8 dereferenceable(48) %2, ptr noundef %1) ; 0 uses
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2021, i64 noundef 2)
  br i1 %i.g, label %"_ZN4core3ptr100drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h1d7000fb9f1b2340E.exit71", label %bb.af

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 18 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58082)
  %i.l = load atomic i32, ptr %i.j monotonic, align 4, !noalias !58082
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.01.0.i.i = phi i32 [ %i.l, %bb.e ], [ %i.p, %bb.g ] ; 3 uses
  %or.cond11.i.i.i = icmp ult i32 %.sroa.01.0.i.i, 1073741822
  br i1 %or.cond11.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = add nuw nsw i32 %.sroa.01.0.i.i, 1
  %i.n = cmpxchg weak ptr %i.j, i32 %.sroa.01.0.i.i, i32 %i.m acquire monotonic, align 4, !noalias !58082 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  br i1 %i.o, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit", label %bb.f

"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit": ; preds = %bb.g, %bb.m, %bb.q, %bb.u, %bb.x
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.r = load atomic i8, ptr %i.q monotonic, align 4, !noalias !58085
  %.not.i.not = icmp eq i8 %i.r, 0
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  br i1 %.not.i.not, label %bb.ax, label %bb.aa

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %i.k, align 8, !alias.scope !58082
  store i64 1, ptr %i.a, align 8, !alias.scope !58082
  invoke void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef 0, i32 noundef 10000000)
          to label %bb.i unwind label %bb.y

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58088)
  %i.s = load atomic i32, ptr %i.j monotonic, align 4, !noalias !58088
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.sroa.01.0.i.i.1 = phi i32 [ %i.s, %bb.i ], [ %i.x, %bb.m ] ; 3 uses
  %or.cond11.i.i.i.1 = icmp ult i32 %.sroa.01.0.i.i.1, 1073741822
  br i1 %or.cond11.i.i.i.1, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.k, align 8, !alias.scope !58088
  store i64 1, ptr %i.a, align 8, !alias.scope !58088
  invoke void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef 0, i32 noundef 10000000)
          to label %bb.l unwind label %bb.y

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58090)
  %i.t = load atomic i32, ptr %i.j monotonic, align 4, !noalias !58090
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.u = add nuw nsw i32 %.sroa.01.0.i.i.1, 1
  %i.v = cmpxchg weak ptr %i.j, i32 %.sroa.01.0.i.i.1, i32 %i.u acquire monotonic, align 4, !noalias !58088 ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1
  %i.x = extractvalue { i32, i1 } %i.v, 0
  br i1 %i.w, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit", label %bb.j
end_hunk_3
