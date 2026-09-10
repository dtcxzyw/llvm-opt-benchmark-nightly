Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.03?download=true
inline.NumInlined: 488
inline.NumDeleted: 273
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17a3a53b8c0b3cc2E":bb.a
  %i.dg = add i32 %i.dc, %i.cy                    ; 3 uses
  %.not70.i.i = icmp ult i32 %i.dg, %i.cy
  br i1 %.not70.i.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.i", label %bb.r

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.w
  %.sroa.0.186.i.i = phi ptr [ %i.dn, %bb.w ], [ %.sroa.0.186.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.16.185.i.i = phi i64 [ %i.dm, %bb.w ], [ %.sroa.16.185.i.i.ph, %.lr.ph.i.i.preheader ]
  %.sroa.054.184.i.i = phi i32 [ %i.do, %bb.w ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dh = load i8, ptr %.sroa.0.186.i.i, align 1, !alias.scope !78, !noalias !74, !noundef !4
  %i.di = zext i8 %i.dh to i32
  %i.dj = add nsw i32 %i.di, -48                  ; 2 uses
  %i.dk = icmp ult i32 %i.dj, 10
  br i1 %i.dk, label %bb.w, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.i"

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.dl = mul i32 %.sroa.054.184.i.i, 10
  %i.dm = add nsw i64 %.sroa.16.185.i.i, -1       ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.186.i.i, i64 1
  %i.do = add i32 %i.dj, %i.dl                    ; 2 uses
  %.not71.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not71.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.i": ; preds = %bb.v, %bb.t, %.lr.ph.i.i, %bb.u, %.loopexit.i.i, %bb.o, %bb.o, %bb.n
  %.sroa.8.0.insert.insert.i.i = phi i64 [ 257, %bb.o ], [ %i.cu, %.loopexit.i.i ], [ 1, %bb.n ], [ 257, %bb.o ], [ 257, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.u ], [ 257, %bb.t ], [ 513, %bb.v ] ; 2 uses
  %i.dp = trunc i64 %.sroa.8.0.insert.insert.i.i to i1
  %.sroa.534.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i.i, 32
  %.sroa.534.0.extract.trunc.i = trunc nuw i64 %.sroa.534.0.extract.shift.i to i32
  %.sroa.0.0.i = select i1 %i.dp, i32 0, i32 %.sroa.534.0.extract.trunc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !77
  %i.dq = call { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h0f70d812c187c805E"(i32 noundef %.sroa.0.0.i, ptr noalias noundef nonnull align 1 %i.f, i64 noundef 10), !noalias !77 ; 2 uses
  %i.dr = extractvalue { ptr, i64 } %i.dq, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !79
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.dr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !79
  %i.ds = load i64, ptr %i.d, align 8, !range !6, !noalias !79, !noundef !4
  %i.dt = trunc nuw i64 %i.ds to i1
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !7, !noalias !79, !noundef !4 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.dt, label %bb.x, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E.exit.i", !prof !5

bb.x:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.i"
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !79
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.dv, i64 %i.dx) #16, !noalias !79
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E.exit.i": ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit.i"
  %i.dy = extractvalue { ptr, i64 } %i.dq, 0
  %i.dz = load ptr, ptr %i.dw, align 8, !noalias !79, !nonnull !4, !noundef !4 ; 2 uses
  %i.ea = icmp ule i64 %i.dr, %i.dv
  call void @llvm.assume(i1 %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !79
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr nonnull readonly align 1 %i.dy, i64 %i.dr, i1 false), !noalias !80
  store i64 %i.dv, ptr %i.k, align 8, !alias.scope !74, !noalias !75
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.dz, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !74, !noalias !75
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.dr, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !74, !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !77
  br label %"_ZN9configure6python17normalize_version28_$u7b$$u7b$closure$u7d$$u7d$17ha42a7410e7ff5bdfE.exit"

.lr.ph.i:                                         ; preds = %bb.m, %bb.bh
  %.sroa.05.034.i = phi i1 [ %or.cond2.i, %bb.bh ], [ false, %bb.m ]
  %.sroa.01.033.i = phi ptr [ %.sroa.01.1.ph.i, %bb.bh ], [ %.sroa.0.1.i.i, %bb.m ] ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.01.033.i, i64 1 ; 3 uses
  %i.ec = load i8, ptr %.sroa.01.033.i, align 1, !alias.scope !75, !noalias !81, !noundef !4 ; 5 uses
  %i.ed = icmp sgt i8 %i.ec, -1
  br i1 %i.ed, label %bb.y, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i": ; preds = %.lr.ph.i
  %i.ee = and i8 %i.ec, 31
  %i.ef = zext nneg i8 %i.ee to i32               ; 3 uses
  %i.eg = icmp ne ptr %i.eb, %i.bb
  call void @llvm.assume(i1 %i.eg)
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.01.033.i, i64 2 ; 3 uses
  %i.ei = load i8, ptr %i.eb, align 1, !alias.scope !75, !noalias !81, !noundef !4
  %i.ej = shl nuw nsw i32 %i.ef, 6
  %i.ek = and i8 %i.ei, 63
  %i.el = zext nneg i8 %i.ek to i32               ; 2 uses
  %i.em = or disjoint i32 %i.ej, %i.el
  %i.en = icmp samesign ugt i8 %i.ec, -33
  br i1 %i.en, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i", label %bb.z

bb.y:                                             ; preds = %.lr.ph.i
  %i.eo = zext nneg i8 %i.ec to i32
  br label %bb.z

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i"
  %i.ep = icmp ne ptr %i.eh, %i.bb
  call void @llvm.assume(i1 %i.ep)
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.01.033.i, i64 3 ; 3 uses
  %i.er = load i8, ptr %i.eh, align 1, !alias.scope !75, !noalias !81, !noundef !4
  %i.es = shl nuw nsw i32 %i.el, 6
  %i.et = and i8 %i.er, 63
  %i.eu = zext nneg i8 %i.et to i32
  %i.ev = or disjoint i32 %i.es, %i.eu            ; 2 uses
  %i.ew = shl nuw nsw i32 %i.ef, 12
  %i.ex = or disjoint i32 %i.ev, %i.ew
  %i.ey = icmp samesign ugt i8 %i.ec, -17
  br i1 %i.ey, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i", label %bb.z

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i"
  %i.ez = icmp ne ptr %i.eq, %i.bb
  call void @llvm.assume(i1 %i.ez)
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.01.033.i, i64 4
  %i.fb = load i8, ptr %i.eq, align 1, !alias.scope !75, !noalias !81, !noundef !4
  %i.fc = shl nuw nsw i32 %i.ef, 18
  %i.fd = and i32 %i.fc, 1835008
  %i.fe = shl nuw nsw i32 %i.ev, 6
  %i.ff = and i8 %i.fb, 63
  %i.fg = zext nneg i8 %i.ff to i32
  %i.fh = or disjoint i32 %i.fe, %i.fg
  %i.fi = or disjoint i32 %i.fh, %i.fd
  br label %bb.z

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit72.i": ; preds = %bb.aq, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.hm, %bb.aq ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i" unwind label %bb.at, !noalias !77

.loopexit.i:                                      ; preds = %bb.bg, %bb.ay
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit72.i"

.loopexit.split-lp.i:                             ; preds = %bb.ar, %bb.an, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i", %.invoke.i, %._crit_edge.thread.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit72.i"

bb.z:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i", %bb.y, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i"
  %.sroa.01.1.ph.i = phi ptr [ %i.eh, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i" ], [ %i.eq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i" ], [ %i.fa, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i" ], [ %i.eb, %bb.y ] ; 2 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.em, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i" ], [ %i.ex, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i" ], [ %i.fi, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i" ], [ %i.eo, %bb.y ] ; 13 uses
  %i.fj = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.fj)
  %i.fk = add nsw i32 %.sroa.4.0.i.ph.i, -58
  %or.cond.i = icmp ult i32 %i.fk, -10
  %or.cond2.i = or i1 %.sroa.05.034.i, %or.cond.i ; 2 uses
  br i1 %or.cond2.i, label %bb.au, label %bb.bf

._crit_edge.i:                                    ; preds = %bb.bh
  %.pre.i = load i64, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !77 ; 8 uses
  %i.fl = icmp sgt i64 %.pre.i, -1
  call void @llvm.assume(i1 %i.fl)
  %i.fm = icmp eq i64 %.pre.i, 0
  br i1 %i.fm, label %._crit_edge.thread.i, label %bb.ab

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !82
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %.sroa.4.1.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !77

.noexc.i:                                         ; preds = %._crit_edge.thread.i
  %i.fn = load i64, ptr %i.c, align 8, !range !6, !noalias !82, !noundef !4
  %i.fo = trunc nuw i64 %i.fn to i1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !range !7, !noalias !82, !noundef !4 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.fo, label %bb.aa, label %bb.al, !prof !5

bb.aa:                                            ; preds = %.noexc.i
  %i.fs = load i64, ptr %i.fr, align 8, !noalias !82
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.ao, %bb.aa
  %i.ft = phi i64 [ %i.fq, %bb.aa ], [ %i.hg, %bb.ao ]
  %i.fu = phi i64 [ %i.fs, %bb.aa ], [ %i.hi, %bb.ao ]
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ft, i64 %i.fu) #16
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !77

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ab:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !77
  %i.fv = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !77, !nonnull !4, !noundef !4 ; 5 uses
  %cond.i = icmp eq i64 %.pre.i, 1
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !83, !noalias !77 ; 2 uses
  br i1 %cond.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  switch i8 %i.fw, label %.lr.ph.i44.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i"
  ]

.lr.ph.i44.i.preheader:                           ; preds = %bb.ag, %bb.ae, %bb.ac
  %.sroa.0.186.i45.i.ph = phi ptr [ %i.fx, %bb.ae ], [ %i.fv, %bb.ag ], [ %i.fv, %bb.ac ]
  %.sroa.16.185.i46.i.ph = phi i64 [ %i.fy, %bb.ae ], [ %.pre.i, %bb.ag ], [ 1, %bb.ac ]
  br label %.lr.ph.i44.i

bb.ad:                                            ; preds = %bb.ab
  %cond.i52.i = icmp eq i8 %i.fw, 43
  br i1 %cond.i52.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 1 ; 2 uses
  %i.fy = add nsw i64 %.pre.i, -1                 ; 2 uses
  %i.fz = icmp samesign ult i64 %.pre.i, 10
  br i1 %i.fz, label %.lr.ph.i44.i.preheader, label %.preheader75.i53.i

.preheader75.i53.i:                               ; preds = %bb.ae, %bb.ag
  %.sroa.0.0.ph.i55.i = phi ptr [ %i.fx, %bb.ae ], [ %i.fv, %bb.ag ]
  %.sroa.16.0.i57.i98.ph = phi i64 [ %i.fy, %bb.ae ], [ %.pre.i, %bb.ag ]
  br label %.lr.ph

bb.af:                                            ; preds = %bb.aj
  %.not69.i59.i = icmp eq i64 %i.ge, 0
  br i1 %.not69.i59.i, label %.loopexit.i49.i, label %.lr.ph

bb.ag:                                            ; preds = %bb.ad
  %i.ga = icmp samesign ult i64 %.pre.i, 9
  br i1 %i.ga, label %.lr.ph.i44.i.preheader, label %.preheader75.i53.i

.loopexit.i49.i:                                  ; preds = %bb.af, %bb.ak
  %.sroa.054.2.i50.i = phi i32 [ %i.gw, %bb.ak ], [ %i.go, %bb.af ]
  %i.gb = zext i32 %.sroa.054.2.i50.i to i64
  %i.gc = shl nuw i64 %i.gb, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i"

.lr.ph:                                           ; preds = %.preheader75.i53.i, %bb.af
  %.sroa.0.0.i58.i99 = phi ptr [ %i.gd, %bb.af ], [ %.sroa.0.0.ph.i55.i, %.preheader75.i53.i ] ; 2 uses
  %.sroa.16.0.i57.i98 = phi i64 [ %i.ge, %bb.af ], [ %.sroa.16.0.i57.i98.ph, %.preheader75.i53.i ]
  %.sroa.054.0.i56.i97 = phi i32 [ %i.go, %bb.af ], [ 0, %.preheader75.i53.i ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i58.i99, i64 1
  %i.ge = add nsw i64 %.sroa.16.0.i57.i98, -1     ; 2 uses
  %i.gf = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.054.0.i56.i97, i32 10) ; 2 uses
  %i.gg = extractvalue { i32, i1 } %i.gf, 0       ; 2 uses
  %i.gh = extractvalue { i32, i1 } %i.gf, 1
  %i.gi = load i8, ptr %.sroa.0.0.i58.i99, align 1, !alias.scope !83, !noalias !77, !noundef !4 ; 2 uses
  br i1 %i.gh, label %bb.ai, label %bb.ah, !prof !5

bb.ah:                                            ; preds = %.lr.ph
  %i.gj = zext i8 %i.gi to i32
  %i.gk = add nsw i32 %i.gj, -48                  ; 2 uses
  %i.gl = icmp ult i32 %i.gk, 10
  br i1 %i.gl, label %bb.aj, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i"

bb.ai:                                            ; preds = %.lr.ph
  %i.gm = add i8 %i.gi, -48
  %i.gn = icmp ult i8 %i.gm, 10
  %spec.select.i61.i = select i1 %i.gn, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i"

bb.aj:                                            ; preds = %bb.ah
  %i.go = add i32 %i.gk, %i.gg                    ; 3 uses
  %.not70.i60.i = icmp ult i32 %i.go, %i.gg
  br i1 %.not70.i60.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i", label %bb.af

.lr.ph.i44.i:                                     ; preds = %.lr.ph.i44.i.preheader, %bb.ak
  %.sroa.0.186.i45.i = phi ptr [ %i.gv, %bb.ak ], [ %.sroa.0.186.i45.i.ph, %.lr.ph.i44.i.preheader ] ; 2 uses
  %.sroa.16.185.i46.i = phi i64 [ %i.gu, %bb.ak ], [ %.sroa.16.185.i46.i.ph, %.lr.ph.i44.i.preheader ]
  %.sroa.054.184.i47.i = phi i32 [ %i.gw, %bb.ak ], [ 0, %.lr.ph.i44.i.preheader ]
  %i.gp = load i8, ptr %.sroa.0.186.i45.i, align 1, !alias.scope !83, !noalias !77, !noundef !4
  %i.gq = zext i8 %i.gp to i32
  %i.gr = add nsw i32 %i.gq, -48                  ; 2 uses
  %i.gs = icmp ult i32 %i.gr, 10
  br i1 %i.gs, label %bb.ak, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i"

bb.ak:                                            ; preds = %.lr.ph.i44.i
  %i.gt = mul i32 %.sroa.054.184.i47.i, 10
  %i.gu = add nsw i64 %.sroa.16.185.i46.i, -1     ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.186.i45.i, i64 1
  %i.gw = add i32 %i.gr, %i.gt                    ; 2 uses
  %.not71.i48.i = icmp eq i64 %i.gu, 0
  br i1 %.not71.i48.i, label %.loopexit.i49.i, label %.lr.ph.i44.i

bb.al:                                            ; preds = %.noexc.i
  %i.gx = load ptr, ptr %i.fr, align 8, !noalias !82, !nonnull !4, !noundef !4 ; 2 uses
  %i.gy = icmp ule i64 %.sroa.4.1.i.i, %i.fq
  call void @llvm.assume(i1 %i.gy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !82
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gx, ptr nonnull readonly align 1 %.sroa.0.1.i.i, i64 %.sroa.4.1.i.i, i1 false), !noalias !84
  store i64 %i.fq, ptr %i.k, align 8, !alias.scope !74, !noalias !75
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.gx, ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !74, !noalias !75
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.4.1.i.i, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !74, !noalias !75
  br label %bb.am

bb.am:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit74.i", %bb.al
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit66.i" unwind label %bb.as, !noalias !77

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i": ; preds = %bb.aj, %bb.ah, %.lr.ph.i44.i, %bb.ai, %.loopexit.i49.i, %bb.ac, %bb.ac
  %.sroa.8.0.insert.insert.i40.i = phi i64 [ 257, %bb.ac ], [ %i.gc, %.loopexit.i49.i ], [ %spec.select.i61.i, %bb.ai ], [ 257, %bb.ac ], [ 257, %.lr.ph.i44.i ], [ 257, %bb.ah ], [ 513, %bb.aj ] ; 2 uses
  %i.gz = trunc i64 %.sroa.8.0.insert.insert.i40.i to i1
  %.sroa.531.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i40.i, 32
  %.sroa.531.0.extract.trunc.i = trunc nuw i64 %.sroa.531.0.extract.shift.i to i32
  %.sroa.07.0.i = select i1 %i.gz, i32 0, i32 %.sroa.531.0.extract.trunc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !77
  %i.ha = invoke { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h0f70d812c187c805E"(i32 noundef %.sroa.07.0.i, ptr noalias noundef nonnull align 1 %i.e, i64 noundef 10)
          to label %bb.an unwind label %.loopexit.split-lp.i, !noalias !77 ; 2 uses

bb.an:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E.exit64.i"
  %i.hb = extractvalue { ptr, i64 } %i.ha, 0
  %i.hc = extractvalue { ptr, i64 } %i.ha, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.hc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc67.i unwind label %.loopexit.split-lp.i, !noalias !77

.noexc67.i:                                       ; preds = %bb.an
  %i.hd = load i64, ptr %i.b, align 8, !range !6, !noalias !85, !noundef !4
  %i.he = trunc nuw i64 %i.hd to i1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !range !7, !noalias !85, !noundef !4 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.he, label %bb.ao, label %bb.ap, !prof !5

bb.ao:                                            ; preds = %.noexc67.i
  %i.hi = load i64, ptr %i.hh, align 8, !noalias !85
  br label %.invoke.i

bb.ap:                                            ; preds = %.noexc67.i
  %i.hj = load ptr, ptr %i.hh, align 8, !noalias !85, !nonnull !4, !noundef !4 ; 2 uses
  %i.hk = icmp ule i64 %i.hc, %i.hg
  call void @llvm.assume(i1 %i.hk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !85
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hj, ptr nonnull readonly align 1 %i.hb, i64 %i.hc, i1 false), !noalias !86
  store i64 %i.hg, ptr %i.h, align 8, !noalias !77
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.hj, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !77
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.hc, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !77
  store ptr %i.h, ptr %i.g, align 8, !noalias !77
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E", ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !77
  %i.hl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.i, ptr %i.hl, align 8, !noalias !77
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E", ptr %.sroa.427.0..sroa_idx.i, align 8, !noalias !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87
  store ptr @6, ptr %i.a, align 8, !noalias !88
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !88
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !88
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !88
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !88
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.ar unwind label %bb.aq, !noalias !75

bb.aq:                                            ; preds = %bb.ap
  %i.hm = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit72.i" unwind label %bb.at, !noalias !77

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !77
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit74.i" unwind label %.loopexit.split-lp.i, !noalias !77

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit74.i": ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !77
  br label %bb.am

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i": ; preds = %bb.as, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit72.i"
  %.pn.pn.i = phi { ptr, i32 } [ %i.hn, %bb.as ], [ %.pn.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit72.i" ]
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit76.i" unwind label %bb.at, !noalias !77

bb.as:                                            ; preds = %bb.am
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit66.i": ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !77
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !77
  br label %"_ZN9configure6python17normalize_version28_$u7b$$u7b$closure$u7d$$u7d$17ha42a7410e7ff5bdfE.exit"

bb.at:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i", %bb.aq, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit72.i"
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !77
  unreachable

bb.au:                                            ; preds = %bb.z
  %i.hp = load i64, ptr %.sroa.415.0..sroa_idx16.i, align 8, !alias.scope !89, !noalias !77, !noundef !4 ; 5 uses
  %i.hq = icmp sgt i64 %i.hp, -1
  call void @llvm.assume(i1 %i.hq)
  %i.hr = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 128 ; 2 uses
  br i1 %i.hr, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hs = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 2048
  br i1 %i.hs, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ht = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 65536
  %..i.i = select i1 %i.ht, i64 3, i64 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.sroa.0.0.i77.i = phi i64 [ 2, %bb.av ], [ %..i.i, %bb.aw ], [ 1, %bb.au ] ; 3 uses
  %i.hu = load i64, ptr %i.i, align 8, !range !8, !alias.scope !90, !noalias !77, !noundef !4
  %i.hv = sub nsw i64 %i.hu, %i.hp
  %i.hw = icmp ugt i64 %.sroa.0.0.i77.i, %i.hv
  br i1 %i.hw, label %bb.ay, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha7cd6537f4988333E.exit.i.i", !prof !5

bb.ay:                                            ; preds = %bb.ax
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h74db381d5ce3a673E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.hp, i64 noundef %.sroa.0.0.i77.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc78.i unwind label %.loopexit.i, !noalias !77

.noexc78.i:                                       ; preds = %bb.ay
  %.pre.i.i = load i64, ptr %.sroa.415.0..sroa_idx16.i, align 8, !alias.scope !89, !noalias !77
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha7cd6537f4988333E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha7cd6537f4988333E.exit.i.i": ; preds = %.noexc78.i, %bb.ax
  %i.hx = phi i64 [ %i.hp, %bb.ax ], [ %.pre.i.i, %.noexc78.i ] ; 2 uses
  %i.hy = load ptr, ptr %.sroa.3.0..sroa_idx13.i, align 8, !alias.scope !89, !noalias !77, !nonnull !4, !noundef !4
  %i.hz = icmp sgt i64 %i.hx, -1
  call void @llvm.assume(i1 %i.hz)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hx ; 10 uses
  br i1 %i.hr, label %bb.ba, label %bb.az

end_hunk_0
