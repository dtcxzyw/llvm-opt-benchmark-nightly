Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33046
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN3nls5world5World10invalidate14invalidate_rec17h0de7f4e151c07209E:bb.a
  %i.bx = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i21, %.sroa.0.15.vec.insert.i.i.i.i.i17
  %i.by = bitcast <16 x i1> %i.bx to i16          ; 2 uses
  %.not.i.not32.i.i.i.i22 = icmp eq i16 %i.by, 0
  br i1 %.not.i.not32.i.i.i.i22, label %._crit_edge.i.i.i.i27, label %.lr.ph.i.i.i.i23

.lr.ph.i.i.i.i23:                                 ; preds = %bb.h, %bb.i
  %.sroa.06.0.i33.i.i.i.i24 = phi i16 [ %i.cl, %bb.i ], [ %i.by, %bb.h ] ; 3 uses
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i24, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = add i64 %.sroa.01.0.i.i.i.i.i20, %i.ca
  %i.cc = and i64 %i.cb, %i.bu                    ; 2 uses
  %i.cd = sub nsw i64 0, %i.cc
  %i.ce = getelementptr inbounds [56 x i8], ptr %i.bv, i64 %i.cd ; 4 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -56
  %.val3.i.i.i.i.i25 = load i32, ptr %i.cf, align 4, !noalias !50429, !noundef !44
  %i.cg = icmp eq i32 %2, %.val3.i.i.i.i.i25
  br i1 %i.cg, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h27875b4ae6ef004bE.exit.i.i.i", label %bb.i, !prof !46

._crit_edge.i.i.i.i27:                            ; preds = %bb.i, %bb.h
  %i.ch = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i21, splat (i8 -1)
  %i.ci = bitcast <16 x i1> %i.ch to i16
  %i.cj = icmp eq i16 %i.ci, 0
  br i1 %i.cj, label %bb.j, label %.loopexit119, !prof !49

bb.i:                                             ; preds = %.lr.ph.i.i.i.i23
  %i.ck = add i16 %.sroa.06.0.i33.i.i.i.i24, -1
  %i.cl = and i16 %i.ck, %.sroa.06.0.i33.i.i.i.i24 ; 2 uses
  %.not.i.not.i.i.i.i26 = icmp eq i16 %i.cl, 0
  br i1 %.not.i.not.i.i.i.i26, label %._crit_edge.i.i.i.i27, label %.lr.ph.i.i.i.i23

bb.j:                                             ; preds = %._crit_edge.i.i.i.i27
  %i.cm = add i64 %.sroa.9.0.i.i.i.i.i18, 16      ; 2 uses
  %i.cn = add i64 %.sroa.01.0.i.i.i.i.i20, %i.cm
  br label %bb.h

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h27875b4ae6ef004bE.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i23
  call void @llvm.experimental.noalias.scope.decl(metadata !50430)
  call void @llvm.experimental.noalias.scope.decl(metadata !50431)
  %.idx.neg.i.i.i29 = mul i64 %i.cc, 56
  %i.co = sdiv exact i64 %.idx.neg.i.i.i29, 56    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50432)
  %i.cp = add nsw i64 %i.co, -16
  %i.cq = and i64 %i.cp, %i.bu
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cq ; 2 uses
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i30 = load <16 x i8>, ptr %i.cr, align 1, !noalias !50433
  %i.cs = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i30, splat (i8 -1)
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.co ; 2 uses
  %.sroa.0.0.copyload.i825.i.i.i.i.i.i31 = load <16 x i8>, ptr %i.cu, align 1, !noalias !50434
  %i.cv = icmp eq <16 x i8> %.sroa.0.0.copyload.i825.i.i.i.i.i.i31, splat (i8 -1)
  %i.cw = bitcast <16 x i1> %i.cv to i16
  %i.cx = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ct, i1 false)
  %i.cy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cw, i1 false)
  %narrow.i.i.i.i.i.i32 = add nuw nsw i16 %i.cy, %i.cx
  %i.cz = icmp samesign ugt i16 %narrow.i.i.i.i.i.i32, 15
  br i1 %i.cz, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h10db737108b82c73E.exit.i", label %bb.k

bb.k:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h27875b4ae6ef004bE.exit.i.i.i"
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !50435, !noundef !44
  %i.dc = add i64 %i.db, 1
  store i64 %i.dc, ptr %i.da, align 8, !alias.scope !50435
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h10db737108b82c73E.exit.i"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h10db737108b82c73E.exit.i": ; preds = %bb.k, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h27875b4ae6ef004bE.exit.i.i.i"
  %.sroa.0.0.i.i.i.i.i.i33 = phi i8 [ -1, %bb.k ], [ -128, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h27875b4ae6ef004bE.exit.i.i.i" ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i.i33, ptr %i.cu, align 1, !noalias !50436
  %i.dd = getelementptr i8, ptr %i.cr, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i.i33, ptr %i.dd, align 1, !noalias !50436
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !50435, !noundef !44
  %i.dg = add i64 %i.df, -1
  store i64 %i.dg, ptr %i.de, align 8, !alias.scope !50435
  %.sroa.3.0..sroa_idx.i34 = getelementptr inbounds i8, ptr %i.ce, i64 -48
  %.sroa.3.0.copyload.i35 = load ptr, ptr %.sroa.3.0..sroa_idx.i34, align 8, !noalias !50437 ; 8 uses
  %.not.i36 = icmp eq ptr %.sroa.3.0.copyload.i35, null
  br i1 %.not.i36, label %.loopexit119, label %bb.l

.loopexit119:                                     ; preds = %._crit_edge.i.i.i.i27, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h10db737108b82c73E.exit.i"
  %i.dh = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 8, !range !45, !noalias !50438, !noundef !44
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i", !prof !46

._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i: ; preds = %.loopexit119
  %.pre.i.i = load i64, ptr %i.dh, align 8, !noalias !50439
  br label %.thread

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i": ; preds = %.loopexit119
  %i.dl = call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !50440 ; 2 uses
  %i.dm = extractvalue { i64, i64 } %i.dl, 0
  %i.dn = extractvalue { i64, i64 } %i.dl, 1
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %i.dn, ptr %i.do, align 8, !noalias !50440
  store i8 1, ptr %i.di, align 8, !noalias !50440
  br label %.thread

.thread:                                          ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i", %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i
  %i.dp = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i ], [ %i.dm, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i" ]
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %i.dh, align 8, !noalias !50439
  br label %.loopexit118

.loopexit.split-lp.loopexit:                      ; preds = %.loopexit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i"
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %.sroa.046.0160 = phi ptr [ %.sroa.046.0159, %.loopexit.split-lp.loopexit ], [ %.sroa.3.0.copyload.i35, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.8.0158 = phi i64 [ %.sroa.8.0157, %.loopexit.split-lp.loopexit ], [ %.sroa.5.sroa.0.0.copyload, %.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp131, %.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..files..FileId$C$nickel_lang_parser..position..TermPos$GT$$GT$17h960fb1b044b751d2E"(ptr nonnull %.sroa.046.0160, i64 %.sroa.8.0158) #77
  resume { ptr, i32 } %lpad.phi

bb.l:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h10db737108b82c73E.exit.i"
  %.sroa.6.0..sroa_idx.i37 = getelementptr inbounds i8, ptr %i.ce, i64 -40
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx.i37, align 8, !noalias !50441 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.6.0..sroa_idx.i37.sroa_idx = getelementptr inbounds i8, ptr %i.ce, i64 -24
  %.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.6.0..sroa_idx.i37.sroa_idx, align 8, !noalias !50441 ; 3 uses
  %.val3.i.i = load <16 x i8>, ptr %.sroa.3.0.copyload.i35, align 16, !noalias !50442 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i35, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50443)
  %i.ds = icmp eq i64 %.sroa.5.sroa.5.0.copyload, 0
  br i1 %i.ds, label %.loopexit118, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.dt = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.du = bitcast <16 x i1> %i.dt to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.noexc, %.lr.ph.i
  %.lcssa14.i = phi ptr [ %i.dr, %.lr.ph.i ], [ %.lcssa13.i, %.noexc ] ; 2 uses
  %i.dx = phi i16 [ %i.du, %.lr.ph.i ], [ %i.eg, %.noexc ] ; 2 uses
  %.val510.i = phi i64 [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.i ], [ %i.ej, %.noexc ] ; 2 uses
  %.pre.i.i.i.i89.i = phi ptr [ %.sroa.3.0.copyload.i35, %.lr.ph.i ], [ %.pre.i.i.i.i7.i, %.noexc ] ; 2 uses
  %.not13.i.i.i.i.i = icmp eq i16 %i.dx, 0
  br i1 %.not13.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %i.dy = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.lcssa14.i, %bb.m ] ; 2 uses
  %i.dz = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %.pre.i.i.i.i89.i, %bb.m ]
  %.val11.i.i.i.i.i = load <16 x i8>, ptr %i.dy, align 16, !noalias !50444
  %i.ea = icmp sgt <16 x i8> %.val11.i.i.i.i.i, splat (i8 -1)
  %i.eb = getelementptr inbounds i8, ptr %i.dz, i64 -320 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.ea to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i

._crit_edge20.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i, %bb.m
  %.lcssa13.i = phi ptr [ %.lcssa14.i, %bb.m ], [ %i.ec, %.lr.ph.i.i.i.i.i ]
  %.pre.i.i.i.i7.i = phi ptr [ %.pre.i.i.i.i89.i, %bb.m ], [ %i.eb, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.dx, %bb.m ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.ed = add i16 %.lcssa.i.i.i.i.i, -1
  %i.ee = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.ef = zext nneg i16 %i.ee to i64
  %i.eg = and i16 %i.ed, %.lcssa.i.i.i.i.i
  %i.eh = sub nsw i64 0, %i.ef
  %i.ei = getelementptr inbounds [20 x i8], ptr %.pre.i.i.i.i7.i, i64 %i.eh
  %i.ej = add i64 %.val510.i, -1                  ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ei, i64 -20
  %.val.i.i39 = load i32, ptr %i.ek, align 4, !noalias !50445, !noundef !44
  %i.el = load i64, ptr %i.dv, align 8, !alias.scope !50443, !noundef !44 ; 5 uses
  %i.em = icmp ult i64 %i.el, 2305843009213693952
  call void @llvm.assume(i1 %i.em)
  %i.en = load i64, ptr %1, align 8, !range !74, !alias.scope !50443, !noundef !44
  %i.eo = icmp eq i64 %i.el, %i.en
  br i1 %i.eo, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i", label %.noexc

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i": ; preds = %._crit_edge20.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.el, i64 noundef %.val510.i, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i", %._crit_edge20.i.i.i.i.i
  %i.ep = load ptr, ptr %i.dw, align 8, !alias.scope !50443, !nonnull !44, !noundef !44
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.el
  store i32 %.val.i.i39, ptr %i.eq, align 4, !noalias !50446
  %i.er = add nuw nsw i64 %i.el, 1
  store i64 %i.er, ptr %i.dv, align 8, !alias.scope !50443
  %i.es = icmp eq i64 %i.ej, 0
  br i1 %i.es, label %.loopexit118.loopexit, label %bb.m

.loopexit118.loopexit:                            ; preds = %.noexc
  %.val3.i.i40.pre = load <16 x i8>, ptr %.sroa.3.0.copyload.i35, align 16, !noalias !50447
  br label %.loopexit118

.loopexit118:                                     ; preds = %.thread, %.loopexit118.loopexit, %bb.l
  %i.et = phi ptr [ %i.dr, %.loopexit118.loopexit ], [ %i.dr, %bb.l ], [ getelementptr inbounds nuw (i8, ptr @2, i64 16), %.thread ]
  %.sroa.046.0159 = phi ptr [ %.sroa.3.0.copyload.i35, %.loopexit118.loopexit ], [ %.sroa.3.0.copyload.i35, %bb.l ], [ @2, %.thread ] ; 3 uses
  %.sroa.8.0157 = phi i64 [ %.sroa.5.sroa.0.0.copyload, %.loopexit118.loopexit ], [ %.sroa.5.sroa.0.0.copyload, %bb.l ], [ 0, %.thread ] ; 5 uses
  %.sroa.1252.0156 = phi i64 [ %.sroa.5.sroa.5.0.copyload, %.loopexit118.loopexit ], [ 0, %bb.l ], [ 0, %.thread ] ; 2 uses
  %.val3.i.i40 = phi <16 x i8> [ %.val3.i.i40.pre, %.loopexit118.loopexit ], [ %.val3.i.i, %bb.l ], [ splat (i8 -1), %.thread ]
  %i.eu = icmp eq i64 %.sroa.1252.0156, 0
  br i1 %i.eu, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit118
  %i.ev = icmp sgt <16 x i8> %.val3.i.i40, splat (i8 -1)
  %i.ew = bitcast <16 x i1> %i.ev to i16
  br label %bb.o

bb.n:                                             ; preds = %.loopexit
  %i.ex = add i16 %.lcssa.i.i, -1
  %i.ey = and i16 %i.ex, %.lcssa.i.i
  %i.ez = add i64 %.sroa.1060.0183, -1            ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.056.0186 = phi ptr [ %.sroa.046.0159, %.lr.ph ], [ %.sroa.056.1, %bb.n ] ; 2 uses
  %.sroa.657.0185 = phi ptr [ %i.et, %.lr.ph ], [ %.sroa.657.1, %bb.n ] ; 2 uses
  %.sroa.859.0184 = phi i16 [ %i.ew, %.lr.ph ], [ %i.ey, %bb.n ] ; 2 uses
  %.sroa.1060.0183 = phi i64 [ %.sroa.1252.0156, %.lr.ph ], [ %i.ez, %bb.n ]
  %.not13.i.i = icmp eq i16 %.sroa.859.0184, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.o, %.lr.ph.i.i
  %i.fb = phi ptr [ %i.ff, %.lr.ph.i.i ], [ %.sroa.657.0185, %bb.o ] ; 2 uses
  %i.fc = phi ptr [ %i.fe, %.lr.ph.i.i ], [ %.sroa.056.0186, %bb.o ]
  %.val11.i.i = load <16 x i8>, ptr %i.fb, align 16, !noalias !50448
  %i.fd = icmp sgt <16 x i8> %.val11.i.i, splat (i8 -1)
  %i.fe = getelementptr inbounds i8, ptr %i.fc, i64 -320 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.fd to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.o
  %.sroa.657.1 = phi ptr [ %.sroa.657.0185, %bb.o ], [ %i.ff, %.lr.ph.i.i ]
  %.sroa.056.1 = phi ptr [ %.sroa.056.0186, %bb.o ], [ %i.fe, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.859.0184, %bb.o ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.fg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.fh = zext nneg i16 %i.fg to i64
  %i.fi = sub nsw i64 0, %i.fh
  %i.fj = getelementptr inbounds [20 x i8], ptr %.sroa.056.1, i64 %i.fi
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -20
  %i.fl = load i32, ptr %i.fk, align 4, !noundef !44
  invoke fastcc void @_ZN3nls5world5World10invalidate14invalidate_rec17h0de7f4e151c07209E(ptr noalias noundef align 8 dereferenceable(856) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i32 noundef %i.fl)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit

._crit_edge:                                      ; preds = %bb.n, %.loopexit118
  %i.fm = icmp eq i64 %.sroa.8.0157, 0
  br i1 %i.fm, label %"_ZN4core3ptr138drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..files..FileId$C$nickel_lang_parser..position..TermPos$GT$$GT$17h960fb1b044b751d2E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i: ; preds = %._crit_edge
  %i.fn = mul i64 %.sroa.8.0157, 20
  %i.fo = icmp slt i64 %.sroa.8.0157, 922337203685477580
  call void @llvm.assume(i1 %i.fo)
  %i.fp = and i64 %i.fn, -16                      ; 2 uses
  %i.fq = add i64 %i.fp, 32                       ; 2 uses
  %i.fr = add nsw i64 %.sroa.8.0157, 17
  %i.fs = add i64 %i.fr, %i.fq                    ; 4 uses
  %i.ft = icmp uge i64 %i.fs, %i.fq
  %i.fu = icmp ult i64 %i.fs, 9223372036854775793
  call void @llvm.assume(i1 %i.ft)
  call void @llvm.assume(i1 %i.fu)
  %i.fv = icmp eq i64 %i.fs, 0
  br i1 %i.fv, label %"_ZN4core3ptr138drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..files..FileId$C$nickel_lang_parser..position..TermPos$GT$$GT$17h960fb1b044b751d2E.exit", label %bb.p

bb.p:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i
  %i.fw = sub i64 -32, %i.fp
  %i.fx = getelementptr inbounds i8, ptr %.sroa.046.0159, i64 %i.fw
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fx, i64 noundef %i.fs, i64 noundef range(i64 1, -9223372036854775807) 16) #66
  br label %"_ZN4core3ptr138drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..files..FileId$C$nickel_lang_parser..position..TermPos$GT$$GT$17h960fb1b044b751d2E.exit"

"_ZN4core3ptr138drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..files..FileId$C$nickel_lang_parser..position..TermPos$GT$$GT$17h960fb1b044b751d2E.exit": ; preds = %._crit_edge, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3nls5world5World14get_field_refs17hc949882ee1de66bbE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(856) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.44.i.i.i.i.i.i = alloca [12 x i8], align 4 ; 4 uses
  %.sroa.4.i.i.i.i.i = alloca [12 x i8], align 4  ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [80 x i8], align 8                ; 15 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 7 uses
  %i.i = alloca [64 x i8], align 8                ; 10 uses
  %i.j = alloca [64 x i8], align 8                ; 7 uses
  %i.k = alloca [64 x i8], align 8                ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50627)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !50628
  %i.l = load i32, ptr %2, align 4, !alias.scope !50627, !noundef !44 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !50627, !noundef !44 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50629)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 736 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !50631
  call fastcc void @"_ZN3nls8analysis83_$LT$impl$u20$nls..analysis..ouroboros_impl_analysis_registry..AnalysisRegistry$GT$10get_or_err17haaa4c0f12ab4f57aE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.o, i32 noundef %i.l), !noalias !50632
  %i.p = load i64, ptr %i.i, align 8, !range !70, !noalias !50631, !noundef !44 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.p, -9223372036854775808
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !50631 ; 4 uses
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !50631
  %i.s = getelementptr i8, ptr %i.r, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.s, align 8, !noalias !50633, !nonnull !44, !noundef !44 ; 2 uses
  %i.t = getelementptr i8, ptr %i.r, i64 40
  %.val13.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !50633, !noundef !44 ; 4 uses
  switch i64 %.val13.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i [
    i64 0, label %.thread
    i64 1, label %._crit_edge.i.i.i.i.i.i.i
  ]

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b
  %.sroa.05.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.u = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i, %.val13.i.i.i.i
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i.i.i, i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i ; 4 uses
  %i.w = getelementptr i8, ptr %i.v, i64 40
  %.val20.i.i.i.i.i.i.i = load i32, ptr %i.w, align 8, !alias.scope !50634, !noalias !50635
  %i.x = getelementptr i8, ptr %i.v, i64 44
  %.val21.i.i.i.i.i.i.i = load i32, ptr %i.x, align 4, !alias.scope !50634, !noalias !50635, !noundef !44
  %.not.i.i.i.i.i.i.i.i = icmp ugt i32 %.val21.i.i.i.i.i.i.i, %i.n
  %i.y = icmp ule i32 %.val20.i.i.i.i.i.i.i, %i.n
  %i.z = select i1 %.not.i.i.i.i.i.i.i.i, i1 %i.y, i1 false
  br i1 %i.z, label %bb.c, label %.thread

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.01.029.i.i.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.val13.i.i.i.i, %bb.b ] ; 2 uses
  %.sroa.05.028.i.i.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.aa = lshr i64 %.sroa.01.029.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ab = add i64 %i.aa, %.sroa.05.028.i.i.i.i.i.i.i ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %.val13.i.i.i.i
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i.i.i, i64 %i.ab ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 40
  %.val23.i.i.i.i.i.i.i = load i32, ptr %i.ae, align 8, !alias.scope !50634, !noalias !50635
  %i.af = getelementptr i8, ptr %i.ad, i64 44
  %.val24.i.i.i.i.i.i.i = load i32, ptr %i.af, align 4, !alias.scope !50634, !noalias !50635, !noundef !44
  %.not.i25.i.i.i.i.i.i.i = icmp ugt i32 %.val24.i.i.i.i.i.i.i, %i.n
  %i.ag = icmp ugt i32 %.val23.i.i.i.i.i.i.i, %i.n
  %i.ah = select i1 %.not.i25.i.i.i.i.i.i.i, i1 %i.ag, i1 false
  %i.ai = select i1 %i.ah, i64 %.sroa.05.028.i.i.i.i.i.i.i, i64 %i.ab, !unpredictable !44 ; 2 uses
  %i.aj = sub nuw i64 %.sroa.01.029.i.i.i.i.i.i.i, %i.aa ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.6.16.copyload.i.i.i.i = load i32, ptr %i.al, align 8, !noalias !50633 ; 2 uses
  %.not30.i.i.i = icmp eq i32 %.sroa.6.16.copyload.i.i.i.i, 3
  br i1 %.not30.i.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c, %._crit_edge.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !50628
  br label %_ZN3nls5world5World14get_field_refs5inner17h7b00499d714a77f0E.exit.thread

bb.d:                                             ; preds = %bb.c
  %.sroa.815.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.815.16..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !50636
  %.sroa.616.sroa.6.0..sroa.616.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.616.sroa.6.0.copyload.i = load i32, ptr %.sroa.616.sroa.6.0..sroa.616.0..sroa_idx.sroa_idx.i, align 8, !noalias !50628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !50628
  %i.am = icmp eq i32 %.sroa.6.16.copyload.i.i.i.i, 4
  br i1 %i.am, label %_ZN3nls5world5World14get_field_refs5inner17h7b00499d714a77f0E.exit.thread, label %bb.h

bb.e:                                             ; preds = %bb.a
  %.sroa.69.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.10.16.copyload.i.i.i = load i64, ptr %.sroa.69.0..sroa_idx.i.i.i.i, align 8, !noalias !50637
  %.sroa.12.16..sroa.69.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.12.16.copyload.i.i.i = load i32, ptr %.sroa.12.16..sroa.69.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !50637 ; 2 uses
  %.sroa.15.16..sroa.69.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.426.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.15.16..sroa.69.0..sroa_idx.i.sroa_idx.i.i.i, i64 20, i1 false), !noalias !50638
  %.sroa.18.16..sroa.69.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.527.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.527.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.16..sroa.69.0..sroa_idx.i.sroa_idx.i.i.i, i64 16, i1 false), !noalias !50638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !50631
  store i64 %i.p, ptr %i.k, align 8, !alias.scope !50639, !noalias !50628
  %.sroa.2.0..sroa_idx24.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx24.i.i.i, align 8, !alias.scope !50639, !noalias !50628
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx24.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.10.16.copyload.i.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx24.sroa_idx.i.i.i, align 8, !alias.scope !50639, !noalias !50628
  %.sroa.325.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store i32 %.sroa.12.16.copyload.i.i.i, ptr %.sroa.325.0..sroa_idx.i.i.i, align 8, !alias.scope !50639, !noalias !50628
  %i.an = icmp eq i64 %i.p, 0
  br i1 %i.an, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i32.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !50640
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i32.i"

end_hunk_0
begin_hunk_1_@_ZN4core3fmt5Write9write_fmt17h0200e718bee79531E:"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h75fa21cbbde6e75eE.exit"
; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17h68ab95c88f7d8d94E(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hba7c8929b9a16884E.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !70711
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1162, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !70712, !inline_history !70709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70710
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17he3b2b51e8f874940E(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hd0e33835a4a913f6E.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !70718
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1248, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !70719, !inline_history !70716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70717
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17hf3226fb62dc1008eE(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h20cea47277140e95E.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !70724
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1953, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !70725, !inline_history !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70723
  ret i1 %i.b
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70753)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70757)
  %i.c = load i32, ptr %i.a, align 8, !alias.scope !70758, !noundef !44 ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !alias.scope !70759, !noundef !44 ; 2 uses
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.g = load i32, ptr %i.f, align 4, !alias.scope !70758, !noundef !44
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !70759, !noundef !44
  %i.j = tail call i8 @llvm.ucmp.i8.i32(i32 %i.g, i32 %i.i)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call i8 @llvm.ucmp.i8.i32(i32 %i.c, i32 %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.j, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.l = icmp eq i8 %.sroa.01.0.i.i.i.i, 0
  br i1 %i.l, label %bb.e, label %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i"

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i32, ptr %i.m, align 8, !alias.scope !70758, !noundef !44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load i32, ptr %i.o, align 8, !alias.scope !70759, !noundef !44 ; 2 uses
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !70758, !noundef !44
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !70759, !noundef !44
  %i.v = tail call i8 @llvm.ucmp.i8.i32(i32 %i.s, i32 %i.u)
  br label %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i"

bb.g:                                             ; preds = %bb.e
  %i.w = tail call i8 @llvm.ucmp.i8.i32(i32 %i.n, i32 %i.p)
  br label %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i"

"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i": ; preds = %bb.g, %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.v, %bb.f ], [ %i.w, %bb.g ], [ %.sroa.01.0.i.i.i.i, %bb.d ] ; 2 uses
  %i.x = icmp eq i8 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.x, label %bb.h, label %_ZN4core3cmp10PartialOrd2lt17h56dc2cd34f92b0bbE.exit

bb.h:                                             ; preds = %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i"
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i32, ptr %i.y, align 8, !range !80, !alias.scope !70760, !noundef !44
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ab = trunc nuw i32 %i.z to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !range !80, !alias.scope !70761, !noundef !44
  %i.ae = trunc nuw i32 %i.ad to i1               ; 2 uses
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %i.ae, label %bb.l, label %_ZN4core3cmp10PartialOrd2lt17h56dc2cd34f92b0bbE.exit

bb.j:                                             ; preds = %bb.h
  br i1 %i.ae, label %_ZN4core3cmp10PartialOrd2lt17h56dc2cd34f92b0bbE.exit, label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !range !70, !alias.scope !70760, !noundef !44
  %.not.i.i = icmp eq i64 %i.ag, -9223372036854775808
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !range !70, !alias.scope !70761, !noundef !44
  %.not17.i.i = icmp eq i64 %i.ai, -9223372036854775808 ; 2 uses
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ak = load i32, ptr %i.aa, align 4, !alias.scope !70760, !noundef !44 ; 2 uses
  %i.al = load i32, ptr %i.aj, align 4, !alias.scope !70761, !noundef !44 ; 2 uses
  %i.am = tail call i8 @llvm.scmp.i8.i32(i32 %i.ak, i32 %i.al)
  %i.an = icmp eq i32 %i.ak, %i.al
  br i1 %i.an, label %bb.k, label %_ZN4core3cmp10PartialOrd2lt17h56dc2cd34f92b0bbE.exit

bb.m:                                             ; preds = %bb.k
  br i1 %.not17.i.i, label %_ZN4core3cmp10PartialOrd2lt17h56dc2cd34f92b0bbE.exit, label %bb.p

bb.n:                                             ; preds = %bb.k
  br i1 %.not17.i.i, label %bb.o, label %_ZN4core3cmp10PartialOrd2lt17h56dc2cd34f92b0bbE.exit

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val25.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !70760, !nonnull !44, !noundef !44
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val26.i.i = load i64, ptr %i.ap, align 8, !alias.scope !70760, !noundef !44 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val27.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !70761, !nonnull !44, !noundef !44
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val28.i.i = load i64, ptr %i.ar, align 8, !alias.scope !70761, !noundef !44 ; 2 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val26.i.i, i64 %.val28.i.i)
  %i.as = sub i64 %.val26.i.i, %.val28.i.i
  %i.at = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val25.i.i, ptr nonnull readonly align 1 %.val27.i.i, i64 %..i.i.i.i.i), !alias.scope !70762, !noalias !70763 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp eq i32 %i.at, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.av, i64 %i.as, i64 %i.au ; 2 uses
  %i.aw = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i, i64 0)
  %i.ax = icmp eq i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.ax, label %bb.q, label %_ZN4core3cmp10PartialOrd2lt17h56dc2cd34f92b0bbE.exit

bb.p:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !70760, !nonnull !44, !noundef !44
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val22.i.i = load i64, ptr %i.az, align 8, !alias.scope !70760, !noundef !44 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val23.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !70761, !nonnull !44, !noundef !44
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val24.i.i = load i64, ptr %i.bb, align 8, !alias.scope !70761, !noundef !44 ; 2 uses
  %..i.i.i33.i.i = tail call i64 @llvm.umin.i64(i64 %.val22.i.i, i64 %.val24.i.i)
  %i.bc = sub i64 %.val22.i.i, %.val24.i.i
  %i.bd = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val23.i.i, i64 %..i.i.i33.i.i), !alias.scope !70764, !noalias !70763 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp eq i32 %i.bd, 0
  %spec.store.select.i.i.i34.i.i = select i1 %i.bf, i64 %i.bc, i64 %i.be ; 2 uses
  %i.bg = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i34.i.i, i64 0)
  %i.bh = icmp eq i64 %spec.store.select.i.i.i34.i.i, 0
  br i1 %i.bh, label %bb.o, label %_ZN4core3cmp10PartialOrd2lt17h56dc2cd34f92b0bbE.exit

bb.q:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = load i64, ptr %i.bi, align 8, !range !70, !alias.scope !70760, !noundef !44
  %.not19.i.i = icmp eq i64 %i.bj, -9223372036854775808
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bl = load i64, ptr %i.bk, align 8, !range !70, !alias.scope !70761, !noundef !44 ; 2 uses
  br i1 %.not19.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not21.i.i = icmp eq i64 %i.bl, -9223372036854775808
  br i1 %.not21.i.i, label %_ZN4core3cmp10PartialOrd2lt17h56dc2cd34f92b0bbE.exit, label %bb.t

bb.s:                                             ; preds = %bb.q
  %.not20.i.i = icmp ne i64 %i.bl, -9223372036854775808
  %..i.i = sext i1 %.not20.i.i to i8
  br label %_ZN4core3cmp10PartialOrd2lt17h56dc2cd34f92b0bbE.exit

bb.t:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val29.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !70760, !nonnull !44, !noundef !44
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val30.i.i = load i64, ptr %i.bn, align 8, !alias.scope !70760, !noundef !44
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val31.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !70761, !nonnull !44, !noundef !44
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val32.i.i = load i64, ptr %i.bp, align 8, !alias.scope !70761, !noundef !44
  %i.bq = tail call fastcc noundef i8 @"_ZN108_$LT$alloc..vec..Vec$LT$T$C$A1$GT$$u20$as$u20$core..cmp..PartialOrd$LT$alloc..vec..Vec$LT$T$C$A2$GT$$GT$$GT$11partial_cmp17h8b514f9a32f0d8faE"(ptr nonnull %.val29.i.i, i64 %.val30.i.i, ptr nonnull %.val31.i.i, i64 %.val32.i.i), !noalias !70763
  br label %_ZN4core3cmp10PartialOrd2lt17h56dc2cd34f92b0bbE.exit

_ZN4core3cmp10PartialOrd2lt17h56dc2cd34f92b0bbE.exit: ; preds = %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i", %bb.i, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.r, %bb.s, %bb.t
  %.sroa.0.2.i.i = phi i8 [ %.sroa.0.0.i.i.i.i, %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i" ], [ 1, %bb.i ], [ %i.am, %bb.l ], [ -1, %bb.j ], [ %i.bq, %bb.t ], [ -1, %bb.n ], [ %..i.i, %bb.s ], [ %i.aw, %bb.o ], [ 1, %bb.m ], [ %i.bg, %bb.p ], [ 1, %bb.r ]
  %i.br = icmp slt i8 %.sroa.0.2.i.i, 0
  ret i1 %i.br
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h26c8cc897d3acf53E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.0.val, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 5 uses
  %i.d = alloca [96 x i8], align 8                ; 6 uses
  %i.e = alloca [104 x i8], align 8               ; 5 uses
  %i.f = alloca [96 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load ptr, ptr %.0.val, align 8          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70779)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70780)
  %i.h = load i64, ptr %1, align 8, !range !48, !alias.scope !70781, !noundef !44 ; 2 uses
  %i.i = icmp ne i64 %i.h, 12
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 10
  br i1 %i.j, label %bb.b, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h2ff93bcb6668529eE.exit"

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !70781, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !70781, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !70782
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !70782
  %i.o = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef 8) #66, !noalias !70782 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.d, !prof !49

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #75, !noalias !70782
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !70782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !70782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !70782
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hafab6b2ca88b0039E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.l)
          to label %bb.f unwind label %bb.e, !noalias !70782

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef 96, i64 noundef 8) #66, !noalias !70782
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !70782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !70782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !70782
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_ZN16nickel_lang_core9typecheck8UnifType9from_type17h6d541a2dbc1fb7dfE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(104) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val)
          to label %bb.g unwind label %bb.e, !noalias !70782

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !70782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.o, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false), !noalias !70782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !70782
  store i64 1, ptr %i.g, align 8, !alias.scope !70783, !noalias !70782
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.o, ptr %i.t, align 8, !alias.scope !70783, !noalias !70782
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %i.u, align 8, !alias.scope !70783, !noalias !70782
  %i.v = load i64, ptr %i.n, align 8, !range !48, !noalias !70782, !noundef !44 ; 2 uses
  %i.w = icmp ne i64 %i.v, 12
  call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %.lr.ph.i.i, label %"_ZN16nickel_lang_core9typecheck15walk_with_annot28_$u7b$$u7b$closure$u7d$$u7d$17h29a8f0b1c3b2ffdfE.exit.thread7.i"

"_ZN16nickel_lang_core9typecheck15walk_with_annot28_$u7b$$u7b$closure$u7d$$u7d$17h29a8f0b1c3b2ffdfE.exit.thread7.i": ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !noalias !70784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !70782
  br label %bb.s

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  br label %bb.h

bb.h:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.ao, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !70782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !70782
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !70782, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70782
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hafab6b2ca88b0039E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aa)
          to label %bb.j unwind label %bb.i, !noalias !70782

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.n, %bb.m, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.ag, %bb.n ], [ %i.ag, %bb.m ]
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h07caced821749048E"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #77
          to label %bb.r unwind label %bb.q, !noalias !70782

bb.j:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !noalias !70782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !70782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70782
  invoke void @_ZN16nickel_lang_core9typecheck8UnifType9from_type17h6d541a2dbc1fb7dfE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(104) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val)
          to label %bb.k unwind label %bb.i, !noalias !70782

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !70782
  call void @llvm.experimental.noalias.scope.decl(metadata !70785)
  call void @llvm.experimental.noalias.scope.decl(metadata !70786)
  %i.ad = load i64, ptr %i.u, align 8, !alias.scope !70785, !noalias !70782, !noundef !44 ; 3 uses
  %i.ae = load i64, ptr %i.g, align 8, !range !74, !alias.scope !70785, !noalias !70782, !noundef !44
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h00d76bd3ddd9789bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @588)
          to label %bb.p unwind label %bb.m, !noalias !70787

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load i64, ptr %i.d, align 8, !range !51, !alias.scope !70788, !noalias !70782, !noundef !44
  %i.ai = icmp samesign ult i64 %i.ah, 18
  br i1 %i.ai, label %bb.n, label %.body.i.i

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %.body.i.i unwind label %bb.o, !noalias !70782, !inline_history !2

bb.o:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !70782
  unreachable

bb.p:                                             ; preds = %bb.l, %bb.k
  %i.ak = load ptr, ptr %i.t, align 8, !alias.scope !70785, !noalias !70782, !nonnull !44, !noundef !44
  %i.al = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.al, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !70782
  %i.am = add i64 %i.ad, 1
  store i64 %i.am, ptr %i.u, align 8, !alias.scope !70785, !noalias !70782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !70782
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !70782, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !48, !noalias !70782, !noundef !44 ; 2 uses
  %i.aq = icmp ne i64 %i.ap, 12
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i64 %i.ap, 10
  br i1 %i.ar, label %bb.h, label %"_ZN16nickel_lang_core9typecheck15walk_with_annot28_$u7b$$u7b$closure$u7d$$u7d$17h29a8f0b1c3b2ffdfE.exit.i"

bb.q:                                             ; preds = %.body.i.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !70782
  unreachable

bb.r:                                             ; preds = %.body.i.i, %bb.e
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %.pn.i.i

"_ZN16nickel_lang_core9typecheck15walk_with_annot28_$u7b$$u7b$closure$u7d$$u7d$17h29a8f0b1c3b2ffdfE.exit.i": ; preds = %bb.p
  %.sroa.0.0.copyload1.pre.i = load i64, ptr %i.g, align 8, !noalias !70784 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !noalias !70784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !70782
  %.not.i = icmp eq i64 %.sroa.0.0.copyload1.pre.i, -9223372036854775808
  br i1 %.not.i, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h2ff93bcb6668529eE.exit", label %bb.s

bb.s:                                             ; preds = %"_ZN16nickel_lang_core9typecheck15walk_with_annot28_$u7b$$u7b$closure$u7d$$u7d$17h29a8f0b1c3b2ffdfE.exit.i", %"_ZN16nickel_lang_core9typecheck15walk_with_annot28_$u7b$$u7b$closure$u7d$$u7d$17h29a8f0b1c3b2ffdfE.exit.thread7.i"
  %.sroa.0.0.copyload110.i = phi i64 [ 1, %"_ZN16nickel_lang_core9typecheck15walk_with_annot28_$u7b$$u7b$closure$u7d$$u7d$17h29a8f0b1c3b2ffdfE.exit.thread7.i" ], [ %.sroa.0.0.copyload1.pre.i, %"_ZN16nickel_lang_core9typecheck15walk_with_annot28_$u7b$$u7b$closure$u7d$$u7d$17h29a8f0b1c3b2ffdfE.exit.i" ]
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !70779
  br label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h2ff93bcb6668529eE.exit"

"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h2ff93bcb6668529eE.exit": ; preds = %bb.a, %"_ZN16nickel_lang_core9typecheck15walk_with_annot28_$u7b$$u7b$closure$u7d$$u7d$17h29a8f0b1c3b2ffdfE.exit.i", %bb.s
  %.sink.i = phi i64 [ %.sroa.0.0.copyload110.i, %bb.s ], [ -9223372036854775808, %bb.a ], [ -9223372036854775808, %"_ZN16nickel_lang_core9typecheck15walk_with_annot28_$u7b$$u7b$closure$u7d$$u7d$17h29a8f0b1c3b2ffdfE.exit.i" ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !70778
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h9033251eca05ab3eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.0.val, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 5 uses
  %i.d = alloca [96 x i8], align 8                ; 6 uses
  %i.e = alloca [104 x i8], align 8               ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h3006d6417b11770aE:.lr.ph.preheader
  %i.x = load i32, ptr %i.w, align 8, !range !80, !alias.scope !91067, !noundef !44
  %i.y = trunc nuw i32 %i.x to i1                 ; 2 uses
  br i1 %i.c, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.y, label %bb.m, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.thread

bb.k:                                             ; preds = %bb.i
  br i1 %i.y, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit, label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.i6, i64 -72
  %i.aa = load i64, ptr %i.z, align 8, !range !70, !alias.scope !91067, !noundef !44
  %.not17.i.i.i = icmp eq i64 %i.aa, -9223372036854775808 ; 2 uses
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds i8, ptr %.sroa.0.0.i6, i64 -20
  %i.ac = load i32, ptr %i.ab, align 4, !alias.scope !91067, !noundef !44 ; 2 uses
  %i.ad = tail call i8 @llvm.scmp.i8.i32(i32 %.sroa.13.0.copyload, i32 %i.ac)
  %i.ae = icmp eq i32 %.sroa.13.0.copyload, %i.ac
  br i1 %i.ae, label %bb.l, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.n:                                             ; preds = %bb.l
  br i1 %.not17.i.i.i, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.thread, label %bb.q

bb.o:                                             ; preds = %bb.l
  br i1 %.not17.i.i.i, label %bb.p, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.p:                                             ; preds = %bb.q, %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.0.i6, i64 -88
  %.val27.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !91067, !nonnull !44, !noundef !44
  %i.ag = getelementptr inbounds i8, ptr %.sroa.0.0.i6, i64 -80
  %.val28.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !91067, !noundef !44 ; 2 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload, i64 %.val28.i.i.i)
  %i.ah = sub i64 %.sroa.5.0.copyload, %.val28.i.i.i
  %i.ai = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.4.0.copyload, ptr nonnull readonly align 1 %.val27.i.i.i, i64 %..i.i.i.i.i.i), !alias.scope !91068, !noalias !91069 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp eq i32 %i.ai, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.ak, i64 %i.ah, i64 %i.aj ; 2 uses
  %i.al = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i, i64 0)
  %i.am = icmp eq i64 %spec.store.select.i.i.i.i.i.i, 0
  br i1 %i.am, label %bb.r, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.q:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.an = getelementptr inbounds i8, ptr %.sroa.0.0.i6, i64 -64
  %.val23.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !91067, !nonnull !44, !noundef !44
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.0.i6, i64 -56
  %.val24.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !91067, !noundef !44 ; 2 uses
  %..i.i.i33.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0.copyload, i64 %.val24.i.i.i)
  %i.ap = sub i64 %.sroa.8.0.copyload, %.val24.i.i.i
  %i.aq = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.7.0.copyload, ptr nonnull readonly align 1 %.val23.i.i.i, i64 %..i.i.i33.i.i.i), !alias.scope !91070, !noalias !91069 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp eq i32 %i.aq, 0
  %spec.store.select.i.i.i34.i.i.i = select i1 %i.as, i64 %i.ap, i64 %i.ar ; 2 uses
  %i.at = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i34.i.i.i, i64 0)
  %i.au = icmp eq i64 %spec.store.select.i.i.i34.i.i.i, 0
  br i1 %i.au, label %bb.p, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.r:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds i8, ptr %.sroa.0.0.i6, i64 -48
  %i.aw = load i64, ptr %i.av, align 8, !range !70, !alias.scope !91067, !noundef !44 ; 2 uses
  br i1 %.not19.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not21.i.i.i = icmp eq i64 %i.aw, -9223372036854775808
  br i1 %.not21.i.i.i, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.thread, label %bb.u

bb.t:                                             ; preds = %bb.r
  %.not20.i.i.i = icmp ne i64 %i.aw, -9223372036854775808
  %..i.i.i = sext i1 %.not20.i.i.i to i8
  br label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.u:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.0.i6, i64 -40
  %.val31.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !91067, !nonnull !44, !noundef !44
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.0.i6, i64 -32
  %.val32.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !91067, !noundef !44 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload) ], !noalias !91069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91071), !noalias !91069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91072), !noalias !91069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91073), !noalias !91069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91074), !noalias !91069
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val32.i.i.i, i64 %.sroa.11.0.copyload) ; 2 uses
  %exitcond.not.i.i.i1 = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %exitcond.not.i.i.i1, label %._crit_edge5, label %.lr.ph4

bb.v:                                             ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i"
  %exitcond.not.i.i.i = icmp eq i64 %i.ba, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge5, label %.lr.ph4

._crit_edge5:                                     ; preds = %bb.v, %bb.u
  %i.az = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.11.0.copyload, i64 %.val32.i.i.i)
  br label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

.lr.ph4:                                          ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i.i2 = phi i64 [ %i.ba, %bb.v ], [ 0, %bb.u ] ; 3 uses
  %i.ba = add i64 %.sroa.01.0.i.i.i2, 1           ; 2 uses
  %i.bb = getelementptr inbounds nuw [128 x i8], ptr %.sroa.10.0.copyload, i64 %.sroa.01.0.i.i.i2 ; 8 uses
  %i.bc = getelementptr inbounds nuw [128 x i8], ptr %.val31.i.i.i, i64 %.sroa.01.0.i.i.i2 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91075), !noalias !91069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91076), !noalias !91069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91077), !noalias !91069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91078), !noalias !91069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91079), !noalias !91069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91080), !noalias !91069
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !91081, !noalias !91082, !nonnull !44, !noundef !44
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !alias.scope !91081, !noalias !91082, !noundef !44 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val2.i.i.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !91083, !noalias !91082, !nonnull !44, !noundef !44
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !alias.scope !91083, !noalias !91082, !noundef !44 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i.i)
  %i.bj = sub i64 %.val1.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i
  %i.bk = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i.i.i.i.i.i, i64 %..i.i.i.i.i.i.i.i.i.i.i), !alias.scope !91084, !noalias !91085 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp eq i32 %i.bk, 0
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bm, i64 %i.bj, i64 %i.bl ; 2 uses
  %i.bn = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i, i64 0)
  %i.bo = icmp eq i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bo, label %bb.w, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i"

bb.w:                                             ; preds = %.lr.ph4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  %.val.i10.i.i.i.i.i.i.i = load i32, ptr %i.bp, align 8, !alias.scope !91081, !noalias !91082, !noundef !44 ; 2 uses
  %.val2.i11.i.i.i.i.i.i.i = load i32, ptr %i.bq, align 8, !alias.scope !91083, !noalias !91082, !noundef !44 ; 2 uses
  %i.br = icmp eq i32 %.val.i10.i.i.i.i.i.i.i, %.val2.i11.i.i.i.i.i.i.i
  br i1 %i.br, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 92
  %.val3.i12.i.i.i.i.i.i.i = load i32, ptr %i.bs, align 4, !alias.scope !91083, !noalias !91082
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 92
  %.val1.i13.i.i.i.i.i.i.i = load i32, ptr %i.bt, align 4, !alias.scope !91081, !noalias !91082
  %i.bu = tail call i8 @llvm.ucmp.i8.i32(i32 %.val1.i13.i.i.i.i.i.i.i, i32 %.val3.i12.i.i.i.i.i.i.i)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i"

bb.y:                                             ; preds = %bb.w
  %i.bv = tail call i8 @llvm.ucmp.i8.i32(i32 %.val.i10.i.i.i.i.i.i.i, i32 %.val2.i11.i.i.i.i.i.i.i)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i"

"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i": ; preds = %bb.y, %bb.x
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.bu, %bb.x ], [ %i.bv, %bb.y ] ; 2 uses
  %i.bw = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bw, label %bb.z, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i"

bb.z:                                             ; preds = %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i"
  %.val.i14.i.i.i.i.i.i.i = load i32, ptr %i.bd, align 8, !alias.scope !91081, !noalias !91082, !noundef !44 ; 2 uses
  %.val2.i15.i.i.i.i.i.i.i = load i32, ptr %i.be, align 8, !alias.scope !91083, !noalias !91082, !noundef !44 ; 2 uses
  %i.bx = icmp eq i32 %.val.i14.i.i.i.i.i.i.i, %.val2.i15.i.i.i.i.i.i.i
  br i1 %i.bx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 100
  %.val3.i17.i.i.i.i.i.i.i = load i32, ptr %i.by, align 4, !alias.scope !91083, !noalias !91082
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 100
  %.val1.i18.i.i.i.i.i.i.i = load i32, ptr %i.bz, align 4, !alias.scope !91081, !noalias !91082
  %i.ca = tail call i8 @llvm.ucmp.i8.i32(i32 %.val1.i18.i.i.i.i.i.i.i, i32 %.val3.i17.i.i.i.i.i.i.i)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i"

bb.ab:                                            ; preds = %bb.z
  %i.cb = tail call i8 @llvm.ucmp.i8.i32(i32 %.val.i14.i.i.i.i.i.i.i, i32 %.val2.i15.i.i.i.i.i.i.i)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i"

"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i": ; preds = %bb.ab, %bb.aa
  %.sroa.0.0.i.i16.i.i.i.i.i.i.i = phi i8 [ %i.ca, %bb.aa ], [ %i.cb, %bb.ab ] ; 2 uses
  %i.cc = icmp eq i8 %.sroa.0.0.i.i16.i.i.i.i.i.i.i, 0
  br i1 %i.cc, label %bb.ac, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i"

bb.ac:                                            ; preds = %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i"
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  %.val.i20.i.i.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !91081, !noalias !91082, !nonnull !44, !noundef !44
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bb, i64 120
  %.val1.i21.i.i.i.i.i.i.i = load i64, ptr %i.ce, align 8, !alias.scope !91081, !noalias !91082, !noundef !44 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %.val2.i22.i.i.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !91083, !noalias !91082, !nonnull !44, !noundef !44
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %.val3.i23.i.i.i.i.i.i.i = load i64, ptr %i.cg, align 8, !alias.scope !91083, !noalias !91082, !noundef !44 ; 2 uses
  %..i.i.i.i24.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i21.i.i.i.i.i.i.i, i64 %.val3.i23.i.i.i.i.i.i.i)
  %i.ch = sub i64 %.val1.i21.i.i.i.i.i.i.i, %.val3.i23.i.i.i.i.i.i.i
  %i.ci = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i20.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val2.i22.i.i.i.i.i.i.i, i64 %..i.i.i.i24.i.i.i.i.i.i.i), !alias.scope !91086, !noalias !91085 ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp eq i32 %i.ci, 0
  %spec.store.select.i.i.i.i25.i.i.i.i.i.i.i = select i1 %i.ck, i64 %i.ch, i64 %i.cj
  %i.cl = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i25.i.i.i.i.i.i.i, i64 0)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i"

"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i": ; preds = %bb.ac, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i", %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i", %.lr.ph4
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.cl, %bb.ac ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i" ], [ %i.bn, %.lr.ph4 ], [ %.sroa.0.0.i.i16.i.i.i.i.i.i.i, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i" ] ; 2 uses
  %i.cm = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i, 0
  br i1 %i.cm, label %bb.v, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit: ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i", %._crit_edge5, %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i", %bb.k, %bb.m, %bb.o, %bb.p, %bb.q, %bb.t
  %.sroa.0.2.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i, %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i" ], [ %i.at, %bb.q ], [ %i.ad, %bb.m ], [ -1, %bb.k ], [ %i.az, %._crit_edge5 ], [ -1, %bb.o ], [ %..i.i.i, %bb.t ], [ %i.al, %bb.p ], [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i" ]
  %i.cn = icmp slt i8 %.sroa.0.2.i.i.i, 0
  br i1 %i.cn, label %bb.b, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.thread

_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.thread: ; preds = %bb.b, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit, %bb.j, %bb.s, %bb.n, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i6, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit ], [ %.sroa.0.0.i6, %bb.j ], [ %.sroa.0.0.i6, %bb.s ], [ %.sroa.0.0.i6, %bb.n ] ; 15 uses
  store i64 %.sroa.0.0.copyload, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !91087
  %.sroa.4.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa.0.0.i.sroa_idx, align 8, !noalias !91087
  %.sroa.5.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa.0.0.i.sroa_idx, align 8, !noalias !91087
  %.sroa.6.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 24
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa.0.0.i.sroa_idx, align 8, !noalias !91087
  %.sroa.7.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 32
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa.0.0.i.sroa_idx, align 8, !noalias !91087
  %.sroa.8.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 40
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa.0.0.i.sroa_idx, align 8, !noalias !91087
  %.sroa.9.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 48
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa.0.0.i.sroa_idx, align 8, !noalias !91087
  %.sroa.10.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 56
  store ptr %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa.0.0.i.sroa_idx, align 8, !noalias !91087
  %.sroa.11.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 64
  store i64 %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa.0.0.i.sroa_idx, align 8, !noalias !91087
  %.sroa.12.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 72
  store i32 %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa.0.0.i.sroa_idx, align 8, !noalias !91087
  %.sroa.13.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 76
  store i32 %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa.0.0.i.sroa_idx, align 4, !noalias !91087
  %.sroa.14.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 80
  store i32 %.sroa.14.0.copyload, ptr %.sroa.14.0..sroa.0.0.i.sroa_idx, align 8, !noalias !91087
  %.sroa.15.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 84
  store i32 %.sroa.15.0.copyload, ptr %.sroa.15.0..sroa.0.0.i.sroa_idx, align 4, !noalias !91087
  %.sroa.16.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 88
  store i32 %.sroa.16.0.copyload, ptr %.sroa.16.0..sroa.0.0.i.sroa_idx, align 8, !noalias !91087
  %.sroa.17.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 92
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa.0.0.i.sroa_idx, align 4, !noalias !91087
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he7ea09d9ee435358E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17he7ea09d9ee435358E.exit: ; preds = %.lr.ph, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.thread
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 96 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h34970e66726e352dE(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 2, 21) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph:
  %.idx = mul nuw nsw i64 %1, 12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.02 = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  br label %bb.a

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdf16daa9c12c17fcE.exit
  ret void

bb.a:                                             ; preds = %.lr.ph, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdf16daa9c12c17fcE.exit
  %.sroa.0.05 = phi ptr [ %.sroa.0.02, %.lr.ph ], [ %.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdf16daa9c12c17fcE.exit ] ; 5 uses
  %.pn4 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.05, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdf16daa9c12c17fcE.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91135)
  %.val2.i.i = load ptr, ptr %.0.val, align 8, !noalias !91136, !nonnull !44, !align !50, !noundef !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91137)
  %i.b = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 288
  %i.c = load i32, ptr %.sroa.0.05, align 4, !alias.scope !91138, !noundef !44
  %i.d = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i32 noundef %i.c), !noalias !91139 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn4, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !91138, !noundef !44 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.pn4, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !91138, !noundef !44
  %.val.i.i = load ptr, ptr %.0.val, align 8, !noalias !91136, !nonnull !44, !align !50, !noundef !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91140)
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 288
  %i.l = load i32, ptr %.pn4, align 4, !alias.scope !91141, !noundef !44
  %i.m = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k, i32 noundef %i.l), !noalias !91142 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pn4, i64 4
  %i.q = load i32, ptr %i.p, align 4, !alias.scope !91141, !noundef !44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pn4, i64 8
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !91141, !noundef !44
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.o)
  %i.t = sub i64 %i.f, %i.o
  %i.u = tail call i32 @memcmp(ptr nonnull readonly align 1 %i.e, ptr nonnull readonly align 1 %i.n, i64 %..i.i.i.i.i.i.i), !alias.scope !91143, !noalias !91144 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.w, i64 %i.t, i64 %i.v ; 2 uses
  %cond.i.i.i.i.i.i = icmp eq i64 %spec.store.select.i.i.i.i.i.i.i, 0
  %i.x = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i, 0
  %cond.i.i.i.i.i = icmp eq i32 %i.h, %i.q
  %i.y = icmp ult i32 %i.h, %i.q
  %i.z = icmp ult i32 %i.j, %i.s
  %spec.select.i.i = select i1 %cond.i.i.i.i.i, i1 %i.z, i1 %i.y
  %.sroa.0.1.i.i.i = select i1 %cond.i.i.i.i.i.i, i1 %spec.select.i.i, i1 %i.x
  br i1 %.sroa.0.1.i.i.i, label %bb.b, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdf16daa9c12c17fcE.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.0.05, align 4 ; 3 uses
  %.sroa.4.0.copyload.i = load i32, ptr %i.g, align 4 ; 4 uses
  %.sroa.5.0.copyload.i = load i32, ptr %i.i, align 4 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.05, ptr noundef nonnull align 4 dereferenceable(12) %.pn4, i64 12, i1 false)
  %i.aa = icmp eq ptr %.pn4, %0
  br i1 %i.aa, label %._crit_edge6, label %.lr.ph5

bb.c:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i3, ptr noundef nonnull align 4 dereferenceable(12) %i.ac, i64 12, i1 false)
  %i.ab = icmp eq ptr %i.ac, %0
  br i1 %i.ab, label %._crit_edge6, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.b, %bb.c
  %.sroa.0.0.i3 = phi ptr [ %i.ac, %bb.c ], [ %.pn4, %bb.b ] ; 8 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91145)
  %.val2.i9.i = load ptr, ptr %.0.val, align 8, !noalias !91146, !nonnull !44, !align !50, !noundef !44
  %i.ad = getelementptr inbounds nuw i8, ptr %.val2.i9.i, i64 288
  %i.ae = invoke { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad, i32 noundef %.sroa.013.0.copyload.i)
          to label %.noexc.i unwind label %bb.e   ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph5
  %.val.i10.i = load ptr, ptr %.0.val, align 8, !noalias !91146, !nonnull !44, !align !50, !noundef !44
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i10.i, i64 288
  %i.ag = load i32, ptr %i.ac, align 4, !alias.scope !91147, !noundef !44
  %i.ah = invoke { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af, i32 noundef %i.ag)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %.noexc.i
  %i.ai = extractvalue { ptr, i64 } %i.ae, 1      ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ae, 0      ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.ah, 0      ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ah, 1      ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -8
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !91147, !noundef !44 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !alias.scope !91147, !noundef !44
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %..i.i.i.i.i.i11.i = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.al)
  %i.aq = sub i64 %i.ai, %i.al
  %i.ar = tail call i32 @memcmp(ptr nonnull readonly align 1 %i.aj, ptr nonnull readonly align 1 %i.ak, i64 %..i.i.i.i.i.i11.i), !alias.scope !91148, !noalias !91149 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp eq i32 %i.ar, 0
  %spec.store.select.i.i.i.i.i.i12.i = select i1 %i.at, i64 %i.aq, i64 %i.as ; 2 uses
  %cond.i.i.i.i.i13.i = icmp eq i64 %spec.store.select.i.i.i.i.i.i12.i, 0
  %i.au = icmp slt i64 %spec.store.select.i.i.i.i.i.i12.i, 0
  %cond.i.i.i.i14.i = icmp eq i32 %.sroa.4.0.copyload.i, %i.an
  %i.av = icmp ult i32 %.sroa.4.0.copyload.i, %i.an
  %i.aw = icmp ult i32 %.sroa.5.0.copyload.i, %i.ap
  %spec.select.i15.i = select i1 %cond.i.i.i.i14.i, i1 %i.aw, i1 %i.av
  %.sroa.0.1.i.i16.i = select i1 %cond.i.i.i.i.i13.i, i1 %spec.select.i15.i, i1 %i.au
  br i1 %.sroa.0.1.i.i16.i, label %bb.c, label %._crit_edge6

._crit_edge6:                                     ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.b ], [ %0, %bb.c ], [ %.sroa.0.0.i3, %bb.d ] ; 3 uses
  store i32 %.sroa.013.0.copyload.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !91150
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 4
  store i32 %.sroa.4.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !91150
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store i32 %.sroa.5.0.copyload.i, ptr %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !91150
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hdf16daa9c12c17fcE.exit

bb.e:                                             ; preds = %.noexc.i, %.lr.ph5
  %i.ax = landingpad { ptr, i32 }
          cleanup
  store i32 %.sroa.013.0.copyload.i, ptr %.sroa.0.0.i3, align 4, !noalias !91151
  %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3, i64 4
  store i32 %.sroa.4.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i, align 4, !noalias !91151
  %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3, i64 8
  store i32 %.sroa.5.0.copyload.i, ptr %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx.i, align 4, !noalias !91151
  resume { ptr, i32 } %i.ax

_ZN4core5slice4sort6shared9smallsort11insert_tail17hdf16daa9c12c17fcE.exit: ; preds = %bb.a, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 12 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h53adebfe3f42c0bcE(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 2, 21) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph:
  %.idx = mul nuw nsw i64 %1, 12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.02 = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  br label %bb.a

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7a94de3c81215b7fE.exit
  ret void

bb.a:                                             ; preds = %.lr.ph, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7a94de3c81215b7fE.exit
  %.sroa.0.05 = phi ptr [ %.sroa.0.02, %.lr.ph ], [ %.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7a94de3c81215b7fE.exit ] ; 5 uses
  %.pn4 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.05, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7a94de3c81215b7fE.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91199)
  %.val2.i.i = load ptr, ptr %.0.val, align 8, !noalias !91200, !nonnull !44, !align !50, !noundef !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91201)
  %i.b = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 288
  %i.c = load i32, ptr %.sroa.0.05, align 4, !alias.scope !91202, !noundef !44
  %i.d = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i32 noundef %i.c), !noalias !91203 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4core5slice4sort6stable5drift4sort17hff90a0f9317c5816E:bb.a
  %.not17.i.i.i46 = icmp eq i64 %i.ep, -9223372036854775808 ; 2 uses
  br i1 %.not.i.i.i45, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds i8, ptr %i.dd, i64 -20
  %i.er = load i32, ptr %i.eh, align 4, !alias.scope !92252, !noalias !92242, !noundef !44 ; 2 uses
  %i.es = load i32, ptr %i.eq, align 4, !alias.scope !92253, !noalias !92242, !noundef !44 ; 2 uses
  %i.et = tail call i8 @llvm.scmp.i8.i32(i32 %i.er, i32 %i.es)
  %i.eu = icmp eq i32 %i.er, %i.es
  br i1 %i.eu, label %bb.ah, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67

bb.aj:                                            ; preds = %bb.ah
  br i1 %.not17.i.i.i46, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67, label %bb.am

bb.ak:                                            ; preds = %bb.ah
  br i1 %.not17.i.i.i46, label %bb.al, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.ev = getelementptr inbounds i8, ptr %i.dc, i64 -88
  %.val25.i.i.i53 = load ptr, ptr %i.ev, align 8, !alias.scope !92252, !noalias !92242, !nonnull !44, !noundef !44
  %i.ew = getelementptr inbounds i8, ptr %i.dc, i64 -80
  %.val26.i.i.i54 = load i64, ptr %i.ew, align 8, !alias.scope !92252, !noalias !92242, !noundef !44 ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.dd, i64 -88
  %.val27.i.i.i55 = load ptr, ptr %i.ex, align 8, !alias.scope !92253, !noalias !92242, !nonnull !44, !noundef !44
  %i.ey = getelementptr inbounds i8, ptr %i.dd, i64 -80
  %.val28.i.i.i56 = load i64, ptr %i.ey, align 8, !alias.scope !92253, !noalias !92242, !noundef !44 ; 2 uses
  %..i.i.i.i.i.i57 = tail call i64 @llvm.umin.i64(i64 %.val26.i.i.i54, i64 %.val28.i.i.i56)
  %i.ez = sub i64 %.val26.i.i.i54, %.val28.i.i.i56
  %i.fa = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val25.i.i.i53, ptr nonnull readonly align 1 %.val27.i.i.i55, i64 %..i.i.i.i.i.i57), !alias.scope !92254, !noalias !92255 ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %i.fc = icmp eq i32 %i.fa, 0
  %spec.store.select.i.i.i.i.i.i58 = select i1 %i.fc, i64 %i.ez, i64 %i.fb ; 2 uses
  %i.fd = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i58, i64 0)
  %i.fe = icmp eq i64 %spec.store.select.i.i.i.i.i.i58, 0
  br i1 %i.fe, label %bb.an, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67

bb.am:                                            ; preds = %bb.aj
  %i.ff = getelementptr inbounds i8, ptr %i.dc, i64 -64
  %.val.i.i.i47 = load ptr, ptr %i.ff, align 8, !alias.scope !92252, !noalias !92242, !nonnull !44, !noundef !44
  %i.fg = getelementptr inbounds i8, ptr %i.dc, i64 -56
  %.val22.i.i.i48 = load i64, ptr %i.fg, align 8, !alias.scope !92252, !noalias !92242, !noundef !44 ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.dd, i64 -64
  %.val23.i.i.i49 = load ptr, ptr %i.fh, align 8, !alias.scope !92253, !noalias !92242, !nonnull !44, !noundef !44
  %i.fi = getelementptr inbounds i8, ptr %i.dd, i64 -56
  %.val24.i.i.i50 = load i64, ptr %i.fi, align 8, !alias.scope !92253, !noalias !92242, !noundef !44 ; 2 uses
  %..i.i.i33.i.i.i51 = tail call i64 @llvm.umin.i64(i64 %.val22.i.i.i48, i64 %.val24.i.i.i50)
  %i.fj = sub i64 %.val22.i.i.i48, %.val24.i.i.i50
  %i.fk = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i47, ptr nonnull readonly align 1 %.val23.i.i.i49, i64 %..i.i.i33.i.i.i51), !alias.scope !92256, !noalias !92255 ; 2 uses
  %i.fl = sext i32 %i.fk to i64
  %i.fm = icmp eq i32 %i.fk, 0
  %spec.store.select.i.i.i34.i.i.i52 = select i1 %i.fm, i64 %i.fj, i64 %i.fl ; 2 uses
  %i.fn = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i34.i.i.i52, i64 0)
  %i.fo = icmp eq i64 %spec.store.select.i.i.i34.i.i.i52, 0
  br i1 %i.fo, label %bb.al, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67

bb.an:                                            ; preds = %bb.al
  %i.fp = getelementptr inbounds i8, ptr %i.dc, i64 -48
  %i.fq = load i64, ptr %i.fp, align 8, !range !70, !alias.scope !92252, !noalias !92242, !noundef !44
  %.not19.i.i.i59 = icmp eq i64 %i.fq, -9223372036854775808
  %i.fr = getelementptr inbounds i8, ptr %i.dd, i64 -48
  %i.fs = load i64, ptr %i.fr, align 8, !range !70, !alias.scope !92253, !noalias !92242, !noundef !44 ; 2 uses
  br i1 %.not19.i.i.i59, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not21.i.i.i60 = icmp eq i64 %i.fs, -9223372036854775808
  br i1 %.not21.i.i.i60, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %.not20.i.i.i65 = icmp ne i64 %i.fs, -9223372036854775808
  %..i.i.i66 = sext i1 %.not20.i.i.i65 to i8
  br label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67

bb.aq:                                            ; preds = %bb.ao
  %i.ft = getelementptr inbounds i8, ptr %i.dc, i64 -40
  %.val29.i.i.i61 = load ptr, ptr %i.ft, align 8, !alias.scope !92252, !noalias !92242, !nonnull !44, !noundef !44
  %i.fu = getelementptr inbounds i8, ptr %i.dc, i64 -32
  %.val30.i.i.i62 = load i64, ptr %i.fu, align 8, !alias.scope !92252, !noalias !92242, !noundef !44 ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.dd, i64 -40
  %.val31.i.i.i63 = load ptr, ptr %i.fv, align 8, !alias.scope !92253, !noalias !92242, !nonnull !44, !noundef !44
  %i.fw = getelementptr inbounds i8, ptr %i.dd, i64 -32
  %.val32.i.i.i64 = load i64, ptr %i.fw, align 8, !alias.scope !92253, !noalias !92242, !noundef !44 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92257), !noalias !92255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92258), !noalias !92255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92259), !noalias !92255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92260), !noalias !92255
  %.sroa.0.0.i.i.i.i68 = tail call noundef i64 @llvm.umin.i64(i64 %.val32.i.i.i64, i64 %.val30.i.i.i62) ; 2 uses
  %exitcond.not.i.i.i7012 = icmp eq i64 %.sroa.0.0.i.i.i.i68, 0
  br i1 %exitcond.not.i.i.i7012, label %._crit_edge16, label %.lr.ph15

bb.ar:                                            ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i77"
  %exitcond.not.i.i.i70 = icmp eq i64 %i.fy, %.sroa.0.0.i.i.i.i68
  br i1 %exitcond.not.i.i.i70, label %._crit_edge16, label %.lr.ph15

._crit_edge16:                                    ; preds = %bb.ar, %bb.aq
  %i.fx = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val30.i.i.i62, i64 %.val32.i.i.i64)
  br label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67

.lr.ph15:                                         ; preds = %bb.aq, %bb.ar
  %.sroa.01.0.i.i.i6913 = phi i64 [ %i.fy, %bb.ar ], [ 0, %bb.aq ] ; 3 uses
  %i.fy = add i64 %.sroa.01.0.i.i.i6913, 1        ; 2 uses
  %i.fz = getelementptr inbounds nuw [128 x i8], ptr %.val29.i.i.i61, i64 %.sroa.01.0.i.i.i6913 ; 8 uses
  %i.ga = getelementptr inbounds nuw [128 x i8], ptr %.val31.i.i.i63, i64 %.sroa.01.0.i.i.i6913 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92261), !noalias !92255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92262), !noalias !92255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92263), !noalias !92255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92264), !noalias !92255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92265), !noalias !92255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92266), !noalias !92255
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 96
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 96
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.val.i.i.i.i.i.i.i.i71 = load ptr, ptr %i.gd, align 8, !alias.scope !92267, !noalias !92268, !nonnull !44, !noundef !44
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %.val1.i.i.i.i.i.i.i.i72 = load i64, ptr %i.ge, align 8, !alias.scope !92267, !noalias !92268, !noundef !44 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.val2.i.i.i.i.i.i.i.i73 = load ptr, ptr %i.gf, align 8, !alias.scope !92269, !noalias !92268, !nonnull !44, !noundef !44
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %.val3.i.i.i.i.i.i.i.i74 = load i64, ptr %i.gg, align 8, !alias.scope !92269, !noalias !92268, !noundef !44 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i75 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i.i.i.i72, i64 %.val3.i.i.i.i.i.i.i.i74)
  %i.gh = sub i64 %.val1.i.i.i.i.i.i.i.i72, %.val3.i.i.i.i.i.i.i.i74
  %i.gi = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i.i71, ptr nonnull readonly align 1 %.val2.i.i.i.i.i.i.i.i73, i64 %..i.i.i.i.i.i.i.i.i.i.i75), !alias.scope !92270, !noalias !92271 ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp eq i32 %i.gi, 0
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i76 = select i1 %i.gk, i64 %i.gh, i64 %i.gj ; 2 uses
  %i.gl = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i76, i64 0)
  %i.gm = icmp eq i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i76, 0
  br i1 %i.gm, label %bb.as, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i77"

bb.as:                                            ; preds = %.lr.ph15
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fz, i64 88
  %i.go = getelementptr inbounds nuw i8, ptr %i.ga, i64 88
  %.val.i10.i.i.i.i.i.i.i80 = load i32, ptr %i.gn, align 8, !alias.scope !92267, !noalias !92268, !noundef !44 ; 2 uses
  %.val2.i11.i.i.i.i.i.i.i81 = load i32, ptr %i.go, align 8, !alias.scope !92269, !noalias !92268, !noundef !44 ; 2 uses
  %i.gp = icmp eq i32 %.val.i10.i.i.i.i.i.i.i80, %.val2.i11.i.i.i.i.i.i.i81
  br i1 %i.gp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ga, i64 92
  %.val3.i12.i.i.i.i.i.i.i96 = load i32, ptr %i.gq, align 4, !alias.scope !92269, !noalias !92268
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fz, i64 92
  %.val1.i13.i.i.i.i.i.i.i97 = load i32, ptr %i.gr, align 4, !alias.scope !92267, !noalias !92268
  %i.gs = tail call i8 @llvm.ucmp.i8.i32(i32 %.val1.i13.i.i.i.i.i.i.i97, i32 %.val3.i12.i.i.i.i.i.i.i96)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i82"

bb.au:                                            ; preds = %bb.as
  %i.gt = tail call i8 @llvm.ucmp.i8.i32(i32 %.val.i10.i.i.i.i.i.i.i80, i32 %.val2.i11.i.i.i.i.i.i.i81)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i82"

"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i82": ; preds = %bb.au, %bb.at
  %.sroa.0.0.i.i.i.i.i.i.i.i.i83 = phi i8 [ %i.gs, %bb.at ], [ %i.gt, %bb.au ] ; 2 uses
  %i.gu = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i83, 0
  br i1 %i.gu, label %bb.av, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i77"

bb.av:                                            ; preds = %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i82"
  %.val.i14.i.i.i.i.i.i.i84 = load i32, ptr %i.gb, align 8, !alias.scope !92267, !noalias !92268, !noundef !44 ; 2 uses
  %.val2.i15.i.i.i.i.i.i.i85 = load i32, ptr %i.gc, align 8, !alias.scope !92269, !noalias !92268, !noundef !44 ; 2 uses
  %i.gv = icmp eq i32 %.val.i14.i.i.i.i.i.i.i84, %.val2.i15.i.i.i.i.i.i.i85
  br i1 %i.gv, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ga, i64 100
  %.val3.i17.i.i.i.i.i.i.i94 = load i32, ptr %i.gw, align 4, !alias.scope !92269, !noalias !92268
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fz, i64 100
  %.val1.i18.i.i.i.i.i.i.i95 = load i32, ptr %i.gx, align 4, !alias.scope !92267, !noalias !92268
  %i.gy = tail call i8 @llvm.ucmp.i8.i32(i32 %.val1.i18.i.i.i.i.i.i.i95, i32 %.val3.i17.i.i.i.i.i.i.i94)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i86"

bb.ax:                                            ; preds = %bb.av
  %i.gz = tail call i8 @llvm.ucmp.i8.i32(i32 %.val.i14.i.i.i.i.i.i.i84, i32 %.val2.i15.i.i.i.i.i.i.i85)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i86"

"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i86": ; preds = %bb.ax, %bb.aw
  %.sroa.0.0.i.i16.i.i.i.i.i.i.i87 = phi i8 [ %i.gy, %bb.aw ], [ %i.gz, %bb.ax ] ; 2 uses
  %i.ha = icmp eq i8 %.sroa.0.0.i.i16.i.i.i.i.i.i.i87, 0
  br i1 %i.ha, label %bb.ay, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i77"

bb.ay:                                            ; preds = %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i86"
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fz, i64 112
  %.val.i20.i.i.i.i.i.i.i88 = load ptr, ptr %i.hb, align 8, !alias.scope !92267, !noalias !92268, !nonnull !44, !noundef !44
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fz, i64 120
  %.val1.i21.i.i.i.i.i.i.i89 = load i64, ptr %i.hc, align 8, !alias.scope !92267, !noalias !92268, !noundef !44 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ga, i64 112
  %.val2.i22.i.i.i.i.i.i.i90 = load ptr, ptr %i.hd, align 8, !alias.scope !92269, !noalias !92268, !nonnull !44, !noundef !44
  %i.he = getelementptr inbounds nuw i8, ptr %i.ga, i64 120
  %.val3.i23.i.i.i.i.i.i.i91 = load i64, ptr %i.he, align 8, !alias.scope !92269, !noalias !92268, !noundef !44 ; 2 uses
  %..i.i.i.i24.i.i.i.i.i.i.i92 = tail call i64 @llvm.umin.i64(i64 %.val1.i21.i.i.i.i.i.i.i89, i64 %.val3.i23.i.i.i.i.i.i.i91)
  %i.hf = sub i64 %.val1.i21.i.i.i.i.i.i.i89, %.val3.i23.i.i.i.i.i.i.i91
  %i.hg = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i20.i.i.i.i.i.i.i88, ptr nonnull readonly align 1 %.val2.i22.i.i.i.i.i.i.i90, i64 %..i.i.i.i24.i.i.i.i.i.i.i92), !alias.scope !92272, !noalias !92271 ; 2 uses
  %i.hh = sext i32 %i.hg to i64
  %i.hi = icmp eq i32 %i.hg, 0
  %spec.store.select.i.i.i.i25.i.i.i.i.i.i.i93 = select i1 %i.hi, i64 %i.hf, i64 %i.hh
  %i.hj = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i25.i.i.i.i.i.i.i93, i64 0)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i77"

"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i77": ; preds = %bb.ay, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i86", %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i82", %.lr.ph15
  %.sroa.0.0.i.i.i.i.i.i.i78 = phi i8 [ %i.hj, %bb.ay ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i83, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i82" ], [ %i.gl, %.lr.ph15 ], [ %.sroa.0.0.i.i16.i.i.i.i.i.i.i87, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i86" ] ; 2 uses
  %i.hk = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i78, 0
  br i1 %i.hk, label %bb.ar, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67

_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67: ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i77", %._crit_edge16, %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i42", %bb.af, %bb.ag, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.ao, %bb.ap
  %.sroa.0.2.i.i.i44 = phi i8 [ %.sroa.0.0.i.i.i.i.i43, %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i42" ], [ 1, %bb.af ], [ %i.et, %bb.ai ], [ -1, %bb.ag ], [ 1, %bb.ao ], [ -1, %bb.ak ], [ %..i.i.i66, %bb.ap ], [ %i.fd, %bb.al ], [ 1, %bb.aj ], [ %i.fn, %bb.am ], [ %i.fx, %._crit_edge16 ], [ %.sroa.0.0.i.i.i.i.i.i.i78, %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i77" ] ; 2 uses
  %i.hl = icmp sgt i8 %.sroa.0.2.i.i.i44, -1      ; 2 uses
  %..i.i = select i1 %i.hl, ptr %i.df, ptr %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dg, ptr noundef nonnull align 8 dereferenceable(96) %..i.i, i64 96, i1 false), !alias.scope !92238, !noalias !92242
  %i.hm = zext i1 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [96 x i8], ptr %i.de, i64 %i.hm ; 3 uses
  %.sroa.0.2.i.i.i44.lobit = lshr i8 %.sroa.0.2.i.i.i44, 7
  %i.ho = zext nneg i8 %.sroa.0.2.i.i.i44.lobit to i64
  %i.hp = getelementptr inbounds nuw [96 x i8], ptr %i.df, i64 %i.ho ; 3 uses
  %i.hq = icmp eq ptr %i.hn, %i.ce
  %i.hr = icmp eq ptr %i.hp, %2
  %or.cond.i.i = select i1 %i.hq, i1 true, i1 %i.hr
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd94a7555212f0f18E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit
  %i.hs = phi ptr [ %i.md, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit ], [ %i.ce, %bb.x ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.mc, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit ], [ %i.cz, %bb.x ] ; 16 uses
  %i.ht = phi ptr [ %i.ma, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit ], [ %2, %bb.x ] ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92275), !noalias !92276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92277), !noalias !92276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92278), !noalias !92276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92279), !noalias !92276
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 80
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92280), !noalias !92276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92281), !noalias !92276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92282), !noalias !92276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92283), !noalias !92276
  %i.hw = load i32, ptr %i.hu, align 4, !alias.scope !92284, !noalias !92276, !noundef !44 ; 2 uses
  %i.hx = load i32, ptr %i.hv, align 4, !alias.scope !92285, !noalias !92276, !noundef !44 ; 2 uses
  %i.hy = icmp eq i32 %i.hw, %i.hx
  br i1 %i.hy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 84
  %i.ia = load i32, ptr %i.hz, align 4, !alias.scope !92284, !noalias !92276, !noundef !44
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ht, i64 84
  %i.ic = load i32, ptr %i.ib, align 4, !alias.scope !92285, !noalias !92276, !noundef !44
  %i.id = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ia, i32 %i.ic)
  br label %bb.bb

bb.ba:                                            ; preds = %.lr.ph.i.i
  %i.ie = tail call i8 @llvm.ucmp.i8.i32(i32 %i.hw, i32 %i.hx)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %i.id, %bb.az ], [ %i.ie, %bb.ba ] ; 2 uses
  %i.if = icmp eq i8 %.sroa.01.0.i.i.i.i.i, 0
  br i1 %i.if, label %bb.bc, label %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i"

bb.bc:                                            ; preds = %bb.bb
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 88
  %i.ih = load i32, ptr %i.ig, align 4, !alias.scope !92284, !noalias !92276, !noundef !44 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ht, i64 88
  %i.ij = load i32, ptr %i.ii, align 4, !alias.scope !92285, !noalias !92276, !noundef !44 ; 2 uses
  %i.ik = icmp eq i32 %i.ih, %i.ij
  br i1 %i.ik, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 92
  %i.im = load i32, ptr %i.il, align 4, !alias.scope !92284, !noalias !92276, !noundef !44
  %i.in = getelementptr inbounds nuw i8, ptr %i.ht, i64 92
  %i.io = load i32, ptr %i.in, align 4, !alias.scope !92285, !noalias !92276, !noundef !44
  %i.ip = tail call i8 @llvm.ucmp.i8.i32(i32 %i.im, i32 %i.io)
  br label %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i"

bb.be:                                            ; preds = %bb.bc
  %i.iq = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ih, i32 %i.ij)
  br label %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i"

"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i": ; preds = %bb.be, %bb.bd, %bb.bb
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.ip, %bb.bd ], [ %i.iq, %bb.be ], [ %.sroa.01.0.i.i.i.i.i, %bb.bb ] ; 2 uses
  %i.ir = icmp eq i8 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.ir, label %bb.bf, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.bf:                                            ; preds = %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i"
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 72
  %i.it = load i32, ptr %i.is, align 8, !range !80, !alias.scope !92286, !noalias !92276, !noundef !44
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 76
  %i.iv = trunc nuw i32 %i.it to i1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ht, i64 72
  %i.ix = load i32, ptr %i.iw, align 8, !range !80, !alias.scope !92287, !noalias !92276, !noundef !44
  %i.iy = trunc nuw i32 %i.ix to i1               ; 2 uses
  br i1 %i.iv, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.iy, label %bb.bj, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.bh:                                            ; preds = %bb.bf
  br i1 %i.iy, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24
  %i.ja = load i64, ptr %i.iz, align 8, !range !70, !alias.scope !92286, !noalias !92276, !noundef !44
  %.not.i.i.i = icmp eq i64 %i.ja, -9223372036854775808
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.jc = load i64, ptr %i.jb, align 8, !range !70, !alias.scope !92287, !noalias !92276, !noundef !44
  %.not17.i.i.i = icmp eq i64 %i.jc, -9223372036854775808 ; 2 uses
  br i1 %.not.i.i.i, label %bb.bl, label %bb.bk

bb.bj:                                            ; preds = %bb.bg
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ht, i64 76
  %i.je = load i32, ptr %i.iu, align 4, !alias.scope !92286, !noalias !92276, !noundef !44 ; 2 uses
  %i.jf = load i32, ptr %i.jd, align 4, !alias.scope !92287, !noalias !92276, !noundef !44 ; 2 uses
  %i.jg = tail call i8 @llvm.scmp.i8.i32(i32 %i.je, i32 %i.jf)
  %i.jh = icmp eq i32 %i.je, %i.jf
  br i1 %i.jh, label %bb.bi, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.bk:                                            ; preds = %bb.bi
  br i1 %.not17.i.i.i, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit, label %bb.bn

bb.bl:                                            ; preds = %bb.bi
  br i1 %.not17.i.i.i, label %bb.bm, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 8
  %.val25.i.i.i = load ptr, ptr %i.ji, align 8, !alias.scope !92286, !noalias !92276, !nonnull !44, !noundef !44
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 16
  %.val26.i.i.i = load i64, ptr %i.jj, align 8, !alias.scope !92286, !noalias !92276, !noundef !44 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %.val27.i.i.i = load ptr, ptr %i.jk, align 8, !alias.scope !92287, !noalias !92276, !nonnull !44, !noundef !44
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %.val28.i.i.i = load i64, ptr %i.jl, align 8, !alias.scope !92287, !noalias !92276, !noundef !44 ; 2 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val26.i.i.i, i64 %.val28.i.i.i)
  %i.jm = sub i64 %.val26.i.i.i, %.val28.i.i.i
  %i.jn = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val25.i.i.i, ptr nonnull readonly align 1 %.val27.i.i.i, i64 %..i.i.i.i.i.i), !alias.scope !92288, !noalias !92289 ; 2 uses
  %i.jo = sext i32 %i.jn to i64
  %i.jp = icmp eq i32 %i.jn, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.jp, i64 %i.jm, i64 %i.jo ; 2 uses
  %i.jq = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i, i64 0)
  %i.jr = icmp eq i64 %spec.store.select.i.i.i.i.i.i, 0
  br i1 %i.jr, label %bb.bo, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.bn:                                            ; preds = %bb.bk
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 32
  %.val.i.i.i = load ptr, ptr %i.js, align 8, !alias.scope !92286, !noalias !92276, !nonnull !44, !noundef !44
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 40
  %.val22.i.i.i = load i64, ptr %i.jt, align 8, !alias.scope !92286, !noalias !92276, !noundef !44 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %.val23.i.i.i = load ptr, ptr %i.ju, align 8, !alias.scope !92287, !noalias !92276, !nonnull !44, !noundef !44
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %.val24.i.i.i = load i64, ptr %i.jv, align 8, !alias.scope !92287, !noalias !92276, !noundef !44 ; 2 uses
  %..i.i.i33.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val22.i.i.i, i64 %.val24.i.i.i)
  %i.jw = sub i64 %.val22.i.i.i, %.val24.i.i.i
  %i.jx = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val23.i.i.i, i64 %..i.i.i33.i.i.i), !alias.scope !92290, !noalias !92289 ; 2 uses
  %i.jy = sext i32 %i.jx to i64
  %i.jz = icmp eq i32 %i.jx, 0
  %spec.store.select.i.i.i34.i.i.i = select i1 %i.jz, i64 %i.jw, i64 %i.jy ; 2 uses
  %i.ka = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i34.i.i.i, i64 0)
  %i.kb = icmp eq i64 %spec.store.select.i.i.i34.i.i.i, 0
  br i1 %i.kb, label %bb.bm, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.bo:                                            ; preds = %bb.bm
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 48
  %i.kd = load i64, ptr %i.kc, align 8, !range !70, !alias.scope !92286, !noalias !92276, !noundef !44
  %.not19.i.i.i = icmp eq i64 %i.kd, -9223372036854775808
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.kf = load i64, ptr %i.ke, align 8, !range !70, !alias.scope !92287, !noalias !92276, !noundef !44 ; 2 uses
  br i1 %.not19.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not21.i.i.i = icmp eq i64 %i.kf, -9223372036854775808
  br i1 %.not21.i.i.i, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit, label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %.not20.i.i.i = icmp ne i64 %i.kf, -9223372036854775808
  %..i.i.i = sext i1 %.not20.i.i.i to i8
  br label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.br:                                            ; preds = %bb.bp
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 56
  %.val29.i.i.i = load ptr, ptr %i.kg, align 8, !alias.scope !92286, !noalias !92276, !nonnull !44, !noundef !44
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 64
  %.val30.i.i.i = load i64, ptr %i.kh, align 8, !alias.scope !92286, !noalias !92276, !noundef !44 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ht, i64 56
  %.val31.i.i.i = load ptr, ptr %i.ki, align 8, !alias.scope !92287, !noalias !92276, !nonnull !44, !noundef !44
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ht, i64 64
  %.val32.i.i.i = load i64, ptr %i.kj, align 8, !alias.scope !92287, !noalias !92276, !noundef !44 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92291), !noalias !92289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92292), !noalias !92289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92293), !noalias !92289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92294), !noalias !92289
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val32.i.i.i, i64 %.val30.i.i.i) ; 2 uses
  %exitcond.not.i.i.i7 = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %exitcond.not.i.i.i7, label %._crit_edge11, label %.lr.ph10

bb.bs:                                            ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i"
  %exitcond.not.i.i.i = icmp eq i64 %i.kl, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge11, label %.lr.ph10

._crit_edge11:                                    ; preds = %bb.bs, %bb.br
  %i.kk = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val30.i.i.i, i64 %.val32.i.i.i)
  br label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

.lr.ph10:                                         ; preds = %bb.br, %bb.bs
  %.sroa.01.0.i.i.i8 = phi i64 [ %i.kl, %bb.bs ], [ 0, %bb.br ] ; 3 uses
  %i.kl = add i64 %.sroa.01.0.i.i.i8, 1           ; 2 uses
  %i.km = getelementptr inbounds nuw [128 x i8], ptr %.val29.i.i.i, i64 %.sroa.01.0.i.i.i8 ; 8 uses
  %i.kn = getelementptr inbounds nuw [128 x i8], ptr %.val31.i.i.i, i64 %.sroa.01.0.i.i.i8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92295), !noalias !92289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92296), !noalias !92289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92297), !noalias !92289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92298), !noalias !92289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92299), !noalias !92289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92300), !noalias !92289
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 96
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 96
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.kq, align 8, !alias.scope !92301, !noalias !92302, !nonnull !44, !noundef !44
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.kr, align 8, !alias.scope !92301, !noalias !92302, !noundef !44 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %.val2.i.i.i.i.i.i.i.i = load ptr, ptr %i.ks, align 8, !alias.scope !92303, !noalias !92302, !nonnull !44, !noundef !44
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.kt, align 8, !alias.scope !92303, !noalias !92302, !noundef !44 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i.i)
  %i.ku = sub i64 %.val1.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i
  %i.kv = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i.i.i.i.i.i, i64 %..i.i.i.i.i.i.i.i.i.i.i), !alias.scope !92304, !noalias !92305 ; 2 uses
  %i.kw = sext i32 %i.kv to i64
  %i.kx = icmp eq i32 %i.kv, 0
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.kx, i64 %i.ku, i64 %i.kw ; 2 uses
  %i.ky = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i, i64 0)
  %i.kz = icmp eq i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.kz, label %bb.bt, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i"

bb.bt:                                            ; preds = %.lr.ph10
  %i.la = getelementptr inbounds nuw i8, ptr %i.km, i64 88
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kn, i64 88
  %.val.i10.i.i.i.i.i.i.i = load i32, ptr %i.la, align 8, !alias.scope !92301, !noalias !92302, !noundef !44 ; 2 uses
  %.val2.i11.i.i.i.i.i.i.i = load i32, ptr %i.lb, align 8, !alias.scope !92303, !noalias !92302, !noundef !44 ; 2 uses
  %i.lc = icmp eq i32 %.val.i10.i.i.i.i.i.i.i, %.val2.i11.i.i.i.i.i.i.i
  br i1 %i.lc, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kn, i64 92
  %.val3.i12.i.i.i.i.i.i.i = load i32, ptr %i.ld, align 4, !alias.scope !92303, !noalias !92302
  %i.le = getelementptr inbounds nuw i8, ptr %i.km, i64 92
  %.val1.i13.i.i.i.i.i.i.i = load i32, ptr %i.le, align 4, !alias.scope !92301, !noalias !92302
  %i.lf = tail call i8 @llvm.ucmp.i8.i32(i32 %.val1.i13.i.i.i.i.i.i.i, i32 %.val3.i12.i.i.i.i.i.i.i)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i"

bb.bv:                                            ; preds = %bb.bt
  %i.lg = tail call i8 @llvm.ucmp.i8.i32(i32 %.val.i10.i.i.i.i.i.i.i, i32 %.val2.i11.i.i.i.i.i.i.i)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i"

"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i": ; preds = %bb.bv, %bb.bu
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.lf, %bb.bu ], [ %i.lg, %bb.bv ] ; 2 uses
  %i.lh = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.lh, label %bb.bw, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i"

bb.bw:                                            ; preds = %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i"
  %.val.i14.i.i.i.i.i.i.i = load i32, ptr %i.ko, align 8, !alias.scope !92301, !noalias !92302, !noundef !44 ; 2 uses
  %.val2.i15.i.i.i.i.i.i.i = load i32, ptr %i.kp, align 8, !alias.scope !92303, !noalias !92302, !noundef !44 ; 2 uses
  %i.li = icmp eq i32 %.val.i14.i.i.i.i.i.i.i, %.val2.i15.i.i.i.i.i.i.i
  br i1 %i.li, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kn, i64 100
  %.val3.i17.i.i.i.i.i.i.i = load i32, ptr %i.lj, align 4, !alias.scope !92303, !noalias !92302
  %i.lk = getelementptr inbounds nuw i8, ptr %i.km, i64 100
  %.val1.i18.i.i.i.i.i.i.i = load i32, ptr %i.lk, align 4, !alias.scope !92301, !noalias !92302
  %i.ll = tail call i8 @llvm.ucmp.i8.i32(i32 %.val1.i18.i.i.i.i.i.i.i, i32 %.val3.i17.i.i.i.i.i.i.i)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i"

bb.by:                                            ; preds = %bb.bw
  %i.lm = tail call i8 @llvm.ucmp.i8.i32(i32 %.val.i14.i.i.i.i.i.i.i, i32 %.val2.i15.i.i.i.i.i.i.i)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i"

"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i": ; preds = %bb.by, %bb.bx
  %.sroa.0.0.i.i16.i.i.i.i.i.i.i = phi i8 [ %i.ll, %bb.bx ], [ %i.lm, %bb.by ] ; 2 uses
  %i.ln = icmp eq i8 %.sroa.0.0.i.i16.i.i.i.i.i.i.i, 0
  br i1 %i.ln, label %bb.bz, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i"

bb.bz:                                            ; preds = %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i"
  %i.lo = getelementptr inbounds nuw i8, ptr %i.km, i64 112
  %.val.i20.i.i.i.i.i.i.i = load ptr, ptr %i.lo, align 8, !alias.scope !92301, !noalias !92302, !nonnull !44, !noundef !44
  %i.lp = getelementptr inbounds nuw i8, ptr %i.km, i64 120
  %.val1.i21.i.i.i.i.i.i.i = load i64, ptr %i.lp, align 8, !alias.scope !92301, !noalias !92302, !noundef !44 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kn, i64 112
  %.val2.i22.i.i.i.i.i.i.i = load ptr, ptr %i.lq, align 8, !alias.scope !92303, !noalias !92302, !nonnull !44, !noundef !44
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kn, i64 120
  %.val3.i23.i.i.i.i.i.i.i = load i64, ptr %i.lr, align 8, !alias.scope !92303, !noalias !92302, !noundef !44 ; 2 uses
  %..i.i.i.i24.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i21.i.i.i.i.i.i.i, i64 %.val3.i23.i.i.i.i.i.i.i)
  %i.ls = sub i64 %.val1.i21.i.i.i.i.i.i.i, %.val3.i23.i.i.i.i.i.i.i
  %i.lt = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i20.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val2.i22.i.i.i.i.i.i.i, i64 %..i.i.i.i24.i.i.i.i.i.i.i), !alias.scope !92306, !noalias !92305 ; 2 uses
  %i.lu = sext i32 %i.lt to i64
  %i.lv = icmp eq i32 %i.lt, 0
  %spec.store.select.i.i.i.i25.i.i.i.i.i.i.i = select i1 %i.lv, i64 %i.ls, i64 %i.lu
  %i.lw = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i25.i.i.i.i.i.i.i, i64 0)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i"

"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i": ; preds = %bb.bz, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i", %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i", %.lr.ph10
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.lw, %bb.bz ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i" ], [ %i.ky, %.lr.ph10 ], [ %.sroa.0.0.i.i16.i.i.i.i.i.i.i, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i" ] ; 2 uses
  %i.lx = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i, 0
  br i1 %i.lx, label %bb.bs, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit: ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i", %._crit_edge11, %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i", %bb.bg, %bb.bh, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bp, %bb.bq
  %.sroa.0.2.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i, %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i" ], [ 1, %bb.bg ], [ %i.jg, %bb.bj ], [ -1, %bb.bh ], [ 1, %bb.bp ], [ -1, %bb.bl ], [ %..i.i.i, %bb.bq ], [ %i.jq, %bb.bm ], [ 1, %bb.bk ], [ %i.ka, %bb.bn ], [ %i.kk, %._crit_edge11 ], [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i" ] ; 2 uses
  %i.ly = icmp sgt i8 %.sroa.0.2.i.i.i, -1        ; 2 uses
  %spec.select.i.i = select i1 %i.ly, ptr %i.ht, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.hs, ptr noundef nonnull align 8 dereferenceable(96) %spec.select.i.i, i64 96, i1 false), !alias.scope !92238, !noalias !92276
  %i.lz = zext i1 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [96 x i8], ptr %i.ht, i64 %i.lz ; 3 uses
  %.sroa.0.2.i.i.i.lobit = lshr i8 %.sroa.0.2.i.i.i, 7
  %i.mb = zext nneg i8 %.sroa.0.2.i.i.i.lobit to i64
  %i.mc = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.02.i.i, i64 %i.mb ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.hs, i64 96 ; 2 uses
  %i.me = icmp ne ptr %i.ma, %i.db
  %i.mf = icmp ne ptr %i.mc, %i.bs
  %or.cond.i19.i = select i1 %i.me, i1 %i.mf, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd94a7555212f0f18E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd94a7555212f0f18E.exit.i": ; preds = %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67
  %.sroa.13.1.i = phi ptr [ %i.hn, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67 ], [ %i.md, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit ]
  %.sroa.7.0.i = phi ptr [ %i.hp, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67 ], [ %i.db, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit ]
  %.sroa.0.1.i = phi ptr [ %2, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67 ], [ %i.ma, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit ] ; 2 uses
  %i.mg = ptrtoint ptr %.sroa.7.0.i to i64
  %i.mh = ptrtoint ptr %.sroa.0.1.i to i64
  %i.mi = sub nuw i64 %i.mg, %i.mh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.mi, i1 false), !alias.scope !92238, !noalias !92307
  br label %_ZN4core5slice4sort6stable5merge5merge17h46199485a2808691E.exit

_ZN4core5slice4sort6stable5merge5merge17h46199485a2808691E.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd94a7555212f0f18E.exit.i"
  %i.mj = shl i64 %i.cc, 1
  %i.mk = or disjoint i64 %i.mj, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4aa163534641ddcaE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h4aa163534641ddcaE.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17h46199485a2808691E.exit
  %.sroa.0.0.i = phi i64 [ %i.mk, %_ZN4core5slice4sort6stable5merge5merge17h46199485a2808691E.exit ], [ %i.ck, %bb.s ] ; 2 uses
  %i.ml = icmp ugt i64 %i.bt, 1
  br i1 %i.ml, label %bb.p, label %._crit_edge

bb.ca:                                            ; preds = %._crit_edge
  %i.mm = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.mn = lshr i64 %.sroa.023.0, 1
  %i.mo = add i64 %i.mn, %.sroa.09.0
  br label %bb.e

bb.cb:                                            ; preds = %._crit_edge
  %i.mp = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.mp, 0
  br i1 %.not31, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.mq = or i64 %1, 1
  %i.mr = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.mq, i1 true)
  %i.ms = trunc nuw nsw i64 %i.mr to i32
  %i.mt = shl nuw nsw i32 %i.ms, 1
  %i.mu = xor i32 %i.mt, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h424a0b8b588af84cE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.mu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h06a5309a643d217fE(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef range(i32 0, 127) %4, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(12) %5, ptr noalias noundef nonnull align 8 dereferenceable(8) %6) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit"
  %.sroa.0.0.ph139 = phi ptr [ %i.ux, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit" ], [ %0, %bb.a ] ; 24 uses
  %.sroa.15.0.ph138 = phi i64 [ %i.ui, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph137 = phi i32 [ %i.el, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph136 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit" ], [ %5, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph139, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph139, i64 8
  %i.f = ptrtoint ptr %.sroa.0.0.ph139 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph136, null
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.026.0.ph136, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.026.0.ph136, i64 8
  %i.i = icmp eq i32 %.sroa.023.0.ph137, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph333

bb.b:                                             ; preds = %bb.al
  %i.j = icmp eq i32 %i.el, 0
  br i1 %i.j, label %.lr.ph._crit_edge, label %.lr.ph333

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit", %bb.al, %bb.a
  %.sroa.0.0.ph.lcssa130 = phi ptr [ %.sroa.0.0.ph139, %bb.al ], [ %0, %bb.a ], [ %i.ux, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit" ] ; 11 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.al ], [ %1, %bb.a ], [ %i.ui, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit" ] ; 9 uses
  %.val36 = load ptr, ptr %6, align 8             ; 21 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !92708)
  call void @llvm.experimental.noalias.scope.decl(metadata !92709)
  %i.k = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.k, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h4acb5784b6999459E.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.l = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.m = icmp ult i64 %3, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i64 %.sroa.15.0.lcssa, 1            ; 11 uses
  %i.o = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.o, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.p, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.sroa.15.0.lcssa ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val36) ]
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h5c5816d287754d3aE(ptr noundef nonnull readonly align 4 %.sroa.0.0.ph.lcssa130, ptr noundef nonnull %i.q, ptr nonnull readonly %.val36)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa130, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h5c5816d287754d3aE(ptr noundef readonly %i.r, ptr noundef %i.s, ptr nonnull readonly %.val36)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hd2ba23668a75af2dE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.q, i64 noundef 8, ptr noundef nonnull align 4 %2, ptr nonnull readonly %.val36), !noalias !92708
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.ph.lcssa130, i64 %i.n ; 2 uses
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %i.n
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h5c5816d287754d3aE(ptr noundef nonnull readonly %i.t, ptr noundef nonnull %i.v, ptr nonnull readonly %.val36)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h5c5816d287754d3aE(ptr noundef readonly %i.w, ptr noundef %i.x, ptr nonnull readonly %.val36)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hd2ba23668a75af2dE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.v, i64 noundef 8, ptr noundef nonnull %i.u, ptr nonnull readonly %.val36), !noalias !92708
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val36) ]
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h5c5816d287754d3aE(ptr noundef nonnull align 4 %.sroa.0.0.ph.lcssa130, ptr noundef nonnull align 4 %2, ptr nonnull readonly %.val36)
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.ph.lcssa130, i64 %i.n
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %i.n
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h5c5816d287754d3aE(ptr noundef %i.y, ptr noundef %i.z, ptr nonnull readonly %.val36)
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.ph.lcssa130, i64 12, i1 false), !alias.scope !92710
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.ph.lcssa130, i64 %i.n
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ab, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false), !alias.scope !92710
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 6 uses
  %i.ac = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.n ; 2 uses
  %i.ad = icmp samesign ult i64 %.sroa.0.0.i, %i.n
  br i1 %i.ad, label %.noexc.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7a94de3c81215b7fE.exit.i, %bb.j
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.ph.lcssa130, i64 %i.n
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %i.n ; 4 uses
  %i.ag = icmp samesign ult i64 %.sroa.0.0.i, %i.ac
  br i1 %i.ag, label %.noexc.lr.ph.1.i, label %.loopexit.1.i

.noexc.lr.ph.1.i:                                 ; preds = %.loopexit.i
  %.sroa.08.17.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val36) ]
  br label %.noexc.1.i

.noexc.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7a94de3c81215b7fE.exit.1.i, %.noexc.lr.ph.1.i
  %.sroa.08.19.1.i = phi i64 [ %.sroa.08.17.1.i, %.noexc.lr.ph.1.i ], [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7a94de3c81215b7fE.exit.1.i ] ; 3 uses
  %.sroa.08.08.1.i = phi i64 [ %.sroa.0.0.i, %.noexc.lr.ph.1.i ], [ %.sroa.08.19.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7a94de3c81215b7fE.exit.1.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %.sroa.08.08.1.i
  %.idx347 = mul nuw nsw i64 %.sroa.08.08.1.i, 12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx347 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false), !alias.scope !92710
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -12 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !92711)
  call void @llvm.experimental.noalias.scope.decl(metadata !92712)
  %.val2.i.i.1.i = load ptr, ptr %.val36, align 8, !noalias !92713, !nonnull !44, !align !50, !noundef !44
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2.i.i.1.i, i64 288
  %i.al = load i32, ptr %i.ai, align 4, !alias.scope !92714, !noundef !44 ; 4 uses
  %i.am = call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak, i32 noundef %i.al), !noalias !92710 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.am, 1      ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !92714, !noundef !44 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !92714, !noundef !44 ; 4 uses
  %.val.i.i.1.i = load ptr, ptr %.val36, align 8, !noalias !92713, !nonnull !44, !align !50, !noundef !44
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.1.i, i64 288
  %i.au = load i32, ptr %i.aj, align 4, !alias.scope !92715, !noundef !44
  %i.av = call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at, i32 noundef %i.au), !noalias !92710 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 0      ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.av, 1      ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !alias.scope !92715, !noundef !44 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.bb = load i32, ptr %i.ba, align 4, !alias.scope !92715, !noundef !44
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %..i.i.i.i.i.i.i.1.i = call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.ax)
  %i.bc = sub i64 %i.ao, %i.ax
  %i.bd = call i32 @memcmp(ptr nonnull readonly align 1 %i.an, ptr nonnull readonly align 1 %i.aw, i64 %..i.i.i.i.i.i.i.1.i), !alias.scope !92716, !noalias !92717 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp eq i32 %i.bd, 0
end_hunk_3
begin_hunk_4_@_ZN4core5slice4sort6stable9quicksort9quicksort17h424a0b8b588af84cE:bb.a
  %i.ij = load i32, ptr %i.ii, align 8, !range !80, !alias.scope !93498, !noundef !44
  %i.ik = trunc nuw i32 %i.ij to i1               ; 2 uses
  br i1 %i.hp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.ik, label %bb.ba, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.thread.i

bb.ay:                                            ; preds = %bb.aw
  br i1 %i.ik, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %i.il = getelementptr inbounds i8, ptr %.sroa.5.0.i.i71, i64 -168
  %i.im = load i64, ptr %i.il, align 8, !range !70, !alias.scope !93498, !noundef !44
  %.not17.i.i.i.i = icmp eq i64 %i.im, -9223372036854775808 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.bc, label %bb.bb

bb.ba:                                            ; preds = %bb.ax
  %i.in = getelementptr inbounds i8, ptr %.sroa.5.0.i.i71, i64 -116
  %i.io = load i32, ptr %i.in, align 4, !alias.scope !93498, !noundef !44 ; 2 uses
  %i.ip = call i8 @llvm.scmp.i8.i32(i32 %.sroa.13.0.copyload.i, i32 %i.io)
  %i.iq = icmp eq i32 %.sroa.13.0.copyload.i, %i.io
  br i1 %i.iq, label %bb.az, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i

bb.bb:                                            ; preds = %bb.az
  br i1 %.not17.i.i.i.i, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.thread.i, label %bb.be

bb.bc:                                            ; preds = %bb.az
  br i1 %.not17.i.i.i.i, label %bb.bd, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i

bb.bd:                                            ; preds = %bb.be, %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i) ]
  %i.ir = getelementptr inbounds i8, ptr %.sroa.5.0.i.i71, i64 -184
  %.val27.i.i.i.i = load ptr, ptr %i.ir, align 8, !alias.scope !93498, !nonnull !44, !noundef !44
  %i.is = getelementptr inbounds i8, ptr %.sroa.5.0.i.i71, i64 -176
  %.val28.i.i.i.i = load i64, ptr %i.is, align 8, !alias.scope !93498, !noundef !44 ; 2 uses
  %..i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i, i64 %.val28.i.i.i.i)
  %i.it = sub i64 %.sroa.5.0.copyload.i, %.val28.i.i.i.i
  %i.iu = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.43.0.copyload.i, ptr nonnull readonly align 1 %.val27.i.i.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !93499, !noalias !93500 ; 2 uses
  %i.iv = sext i32 %i.iu to i64
  %i.iw = icmp eq i32 %i.iu, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.iw, i64 %i.it, i64 %i.iv ; 2 uses
  %i.ix = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i.i, i64 0)
  %i.iy = icmp eq i64 %spec.store.select.i.i.i.i.i.i.i, 0
  br i1 %i.iy, label %bb.bf, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i

bb.be:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %i.iz = getelementptr inbounds i8, ptr %.sroa.5.0.i.i71, i64 -160
  %.val23.i.i.i.i = load ptr, ptr %i.iz, align 8, !alias.scope !93498, !nonnull !44, !noundef !44
  %i.ja = getelementptr inbounds i8, ptr %.sroa.5.0.i.i71, i64 -152
  %.val24.i.i.i.i = load i64, ptr %i.ja, align 8, !alias.scope !93498, !noundef !44 ; 2 uses
  %..i.i.i33.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.8.0.copyload.i, i64 %.val24.i.i.i.i)
  %i.jb = sub i64 %.sroa.8.0.copyload.i, %.val24.i.i.i.i
  %i.jc = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.7.0.copyload.i, ptr nonnull readonly align 1 %.val23.i.i.i.i, i64 %..i.i.i33.i.i.i.i), !alias.scope !93501, !noalias !93500 ; 2 uses
  %i.jd = sext i32 %i.jc to i64
  %i.je = icmp eq i32 %i.jc, 0
  %spec.store.select.i.i.i34.i.i.i.i = select i1 %i.je, i64 %i.jb, i64 %i.jd ; 2 uses
  %i.jf = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i34.i.i.i.i, i64 0)
  %i.jg = icmp eq i64 %spec.store.select.i.i.i34.i.i.i.i, 0
  br i1 %i.jg, label %bb.bd, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.jh = getelementptr inbounds i8, ptr %.sroa.5.0.i.i71, i64 -144
  %i.ji = load i64, ptr %i.jh, align 8, !range !70, !alias.scope !93498, !noundef !44 ; 2 uses
  br i1 %.not19.i.i.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not21.i.i.i.i = icmp eq i64 %i.ji, -9223372036854775808
  br i1 %.not21.i.i.i.i, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.thread.i, label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %.not20.i.i.i.i = icmp ne i64 %i.ji, -9223372036854775808
  %..i.i.i.i = sext i1 %.not20.i.i.i.i to i8
  br label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i

bb.bi:                                            ; preds = %bb.bg
  %i.jj = getelementptr inbounds i8, ptr %.sroa.5.0.i.i71, i64 -136
  %.val31.i.i.i.i = load ptr, ptr %i.jj, align 8, !alias.scope !93498, !nonnull !44, !noundef !44
  %i.jk = getelementptr inbounds i8, ptr %.sroa.5.0.i.i71, i64 -128
  %.val32.i.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !93498, !noundef !44 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload.i) ], !noalias !93502
  call void @llvm.experimental.noalias.scope.decl(metadata !93503), !noalias !93502
  call void @llvm.experimental.noalias.scope.decl(metadata !93504), !noalias !93502
  call void @llvm.experimental.noalias.scope.decl(metadata !93505), !noalias !93502
  call void @llvm.experimental.noalias.scope.decl(metadata !93506), !noalias !93502
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val32.i.i.i.i, i64 %.sroa.11.0.copyload.i) ; 2 uses
  %exitcond.not.i.i.i.i65 = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %exitcond.not.i.i.i.i65, label %._crit_edge69, label %.lr.ph68

bb.bj:                                            ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i.i"
  %exitcond.not.i.i.i.i = icmp eq i64 %i.jm, %.sroa.0.0.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge69, label %.lr.ph68

._crit_edge69:                                    ; preds = %bb.bj, %bb.bi
  %i.jl = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.11.0.copyload.i, i64 %.val32.i.i.i.i)
  br label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i

.lr.ph68:                                         ; preds = %bb.bi, %bb.bj
  %.sroa.01.0.i.i.i.i66 = phi i64 [ %i.jm, %bb.bj ], [ 0, %bb.bi ] ; 3 uses
  %i.jm = add i64 %.sroa.01.0.i.i.i.i66, 1        ; 2 uses
  %i.jn = getelementptr inbounds nuw [128 x i8], ptr %.sroa.10.0.copyload.i, i64 %.sroa.01.0.i.i.i.i66 ; 8 uses
  %i.jo = getelementptr inbounds nuw [128 x i8], ptr %.val31.i.i.i.i, i64 %.sroa.01.0.i.i.i.i66 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93507), !noalias !93502
  call void @llvm.experimental.noalias.scope.decl(metadata !93508), !noalias !93502
  call void @llvm.experimental.noalias.scope.decl(metadata !93509), !noalias !93502
  call void @llvm.experimental.noalias.scope.decl(metadata !93510), !noalias !93502
  call void @llvm.experimental.noalias.scope.decl(metadata !93511), !noalias !93502
  call void @llvm.experimental.noalias.scope.decl(metadata !93512), !noalias !93502
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 96
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 96
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jr, align 8, !alias.scope !93513, !noalias !93514, !nonnull !44, !noundef !44
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.js, align 8, !alias.scope !93513, !noalias !93514, !noundef !44 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %.val2.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jt, align 8, !alias.scope !93515, !noalias !93514, !nonnull !44, !noundef !44
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %.val3.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ju, align 8, !alias.scope !93515, !noalias !93514, !noundef !44 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i.i.i)
  %i.jv = sub i64 %.val1.i.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i
  %i.jw = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i.i.i.i.i.i.i, i64 %..i.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !93516, !noalias !93517 ; 2 uses
  %i.jx = sext i32 %i.jw to i64
  %i.jy = icmp eq i32 %i.jw, 0
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.jy, i64 %i.jv, i64 %i.jx ; 2 uses
  %i.jz = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i, i64 0)
  %i.ka = icmp eq i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ka, label %bb.bk, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i.i"

bb.bk:                                            ; preds = %.lr.ph68
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jn, i64 88
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jo, i64 88
  %.val.i10.i.i.i.i.i.i.i.i = load i32, ptr %i.kb, align 8, !alias.scope !93513, !noalias !93514, !noundef !44 ; 2 uses
  %.val2.i11.i.i.i.i.i.i.i.i = load i32, ptr %i.kc, align 8, !alias.scope !93515, !noalias !93514, !noundef !44 ; 2 uses
  %i.kd = icmp eq i32 %.val.i10.i.i.i.i.i.i.i.i, %.val2.i11.i.i.i.i.i.i.i.i
  br i1 %i.kd, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jo, i64 92
  %.val3.i12.i.i.i.i.i.i.i.i = load i32, ptr %i.ke, align 4, !alias.scope !93515, !noalias !93514
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jn, i64 92
  %.val1.i13.i.i.i.i.i.i.i.i = load i32, ptr %i.kf, align 4, !alias.scope !93513, !noalias !93514
  %i.kg = call i8 @llvm.ucmp.i8.i32(i32 %.val1.i13.i.i.i.i.i.i.i.i, i32 %.val3.i12.i.i.i.i.i.i.i.i)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i.i"

bb.bm:                                            ; preds = %bb.bk
  %i.kh = call i8 @llvm.ucmp.i8.i32(i32 %.val.i10.i.i.i.i.i.i.i.i, i32 %.val2.i11.i.i.i.i.i.i.i.i)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i.i"

"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.bm, %bb.bl
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.kg, %bb.bl ], [ %i.kh, %bb.bm ] ; 2 uses
  %i.ki = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ki, label %bb.bn, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i.i"

bb.bn:                                            ; preds = %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i.i"
  %.val.i14.i.i.i.i.i.i.i.i = load i32, ptr %i.jp, align 8, !alias.scope !93513, !noalias !93514, !noundef !44 ; 2 uses
  %.val2.i15.i.i.i.i.i.i.i.i = load i32, ptr %i.jq, align 8, !alias.scope !93515, !noalias !93514, !noundef !44 ; 2 uses
  %i.kj = icmp eq i32 %.val.i14.i.i.i.i.i.i.i.i, %.val2.i15.i.i.i.i.i.i.i.i
  br i1 %i.kj, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jo, i64 100
  %.val3.i17.i.i.i.i.i.i.i.i = load i32, ptr %i.kk, align 4, !alias.scope !93515, !noalias !93514
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jn, i64 100
  %.val1.i18.i.i.i.i.i.i.i.i = load i32, ptr %i.kl, align 4, !alias.scope !93513, !noalias !93514
  %i.km = call i8 @llvm.ucmp.i8.i32(i32 %.val1.i18.i.i.i.i.i.i.i.i, i32 %.val3.i17.i.i.i.i.i.i.i.i)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i.i"

bb.bp:                                            ; preds = %bb.bn
  %i.kn = call i8 @llvm.ucmp.i8.i32(i32 %.val.i14.i.i.i.i.i.i.i.i, i32 %.val2.i15.i.i.i.i.i.i.i.i)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i.i"

"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i.i": ; preds = %bb.bp, %bb.bo
  %.sroa.0.0.i.i16.i.i.i.i.i.i.i.i = phi i8 [ %i.km, %bb.bo ], [ %i.kn, %bb.bp ] ; 2 uses
  %i.ko = icmp eq i8 %.sroa.0.0.i.i16.i.i.i.i.i.i.i.i, 0
  br i1 %i.ko, label %bb.bq, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i.i"

bb.bq:                                            ; preds = %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i.i"
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jn, i64 112
  %.val.i20.i.i.i.i.i.i.i.i = load ptr, ptr %i.kp, align 8, !alias.scope !93513, !noalias !93514, !nonnull !44, !noundef !44
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jn, i64 120
  %.val1.i21.i.i.i.i.i.i.i.i = load i64, ptr %i.kq, align 8, !alias.scope !93513, !noalias !93514, !noundef !44 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jo, i64 112
  %.val2.i22.i.i.i.i.i.i.i.i = load ptr, ptr %i.kr, align 8, !alias.scope !93515, !noalias !93514, !nonnull !44, !noundef !44
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jo, i64 120
  %.val3.i23.i.i.i.i.i.i.i.i = load i64, ptr %i.ks, align 8, !alias.scope !93515, !noalias !93514, !noundef !44 ; 2 uses
  %..i.i.i.i24.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val1.i21.i.i.i.i.i.i.i.i, i64 %.val3.i23.i.i.i.i.i.i.i.i)
  %i.kt = sub i64 %.val1.i21.i.i.i.i.i.i.i.i, %.val3.i23.i.i.i.i.i.i.i.i
  %i.ku = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i20.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val2.i22.i.i.i.i.i.i.i.i, i64 %..i.i.i.i24.i.i.i.i.i.i.i.i), !alias.scope !93518, !noalias !93517 ; 2 uses
  %i.kv = sext i32 %i.ku to i64
  %i.kw = icmp eq i32 %i.ku, 0
  %spec.store.select.i.i.i.i25.i.i.i.i.i.i.i.i = select i1 %i.kw, i64 %i.kt, i64 %i.kv
  %i.kx = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i25.i.i.i.i.i.i.i.i, i64 0)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i.i"

"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i.i": ; preds = %bb.bq, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i.i", %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i.i", %.lr.ph68
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.kx, %bb.bq ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i.i" ], [ %i.jz, %.lr.ph68 ], [ %.sroa.0.0.i.i16.i.i.i.i.i.i.i.i, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ky = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.ky, label %bb.bj, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i

_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i: ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i.i", %._crit_edge69, %bb.bh, %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.ay, %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i.i"
  %.sroa.0.2.i.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i, %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i.i" ], [ %i.jf, %bb.be ], [ %i.ip, %bb.ba ], [ -1, %bb.ay ], [ %i.jl, %._crit_edge69 ], [ -1, %bb.bc ], [ %..i.i.i.i, %bb.bh ], [ %i.ix, %bb.bd ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i.i" ]
  %i.kz = icmp slt i8 %.sroa.0.2.i.i.i.i, 0
  br i1 %i.kz, label %bb.ap, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.thread.i

_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.thread.i: ; preds = %bb.ap, %bb.ax, %bb.bb, %bb.bg, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit56.thread24.i
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.dj, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit56.thread24.i ], [ %.sroa.0.0.i29.i72, %bb.ap ], [ %.sroa.5.0.i.i71, %bb.ax ], [ %.sroa.5.0.i.i71, %bb.bb ], [ %.sroa.5.0.i.i71, %bb.bg ], [ %.sroa.5.0.i.i71, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i ] ; 14 uses
  %.sroa.0.0.i29.lcssa.i = phi ptr [ %i.bz, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit56.thread24.i ], [ %i.bz, %bb.ap ], [ %.sroa.0.0.i29.i72, %bb.ax ], [ %.sroa.0.0.i29.i72, %bb.bb ], [ %.sroa.0.0.i29.i72, %bb.bg ], [ %.sroa.0.0.i29.i72, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i ]
  store i64 %.sroa.01.0.copyload.i, ptr %.sroa.0.0.i29.lcssa.i, align 8, !alias.scope !93454, !noalias !93519
  %.sroa.43.0..sroa.0.0.i29.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -88
  store ptr %.sroa.43.0.copyload.i, ptr %.sroa.43.0..sroa.0.0.i29.sroa_idx.i, align 8, !alias.scope !93454, !noalias !93519
  %.sroa.5.0..sroa.0.0.i29.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -80
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.i29.sroa_idx.i, align 8, !alias.scope !93454, !noalias !93519
  %.sroa.66.0..sroa.0.0.i29.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -72
  store i64 %.sroa.66.0.copyload.i, ptr %.sroa.66.0..sroa.0.0.i29.sroa_idx.i, align 8, !alias.scope !93454, !noalias !93519
  %.sroa.7.0..sroa.0.0.i29.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -64
  store ptr %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa.0.0.i29.sroa_idx.i, align 8, !alias.scope !93454, !noalias !93519
  %.sroa.8.0..sroa.0.0.i29.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -56
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa.0.0.i29.sroa_idx.i, align 8, !alias.scope !93454, !noalias !93519
  %.sroa.9.0..sroa.0.0.i29.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -48
  store i64 %.sroa.9.0.copyload.i, ptr %.sroa.9.0..sroa.0.0.i29.sroa_idx.i, align 8, !alias.scope !93454, !noalias !93519
  %.sroa.10.0..sroa.0.0.i29.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -40
  store ptr %.sroa.10.0.copyload.i, ptr %.sroa.10.0..sroa.0.0.i29.sroa_idx.i, align 8, !alias.scope !93454, !noalias !93519
  %.sroa.11.0..sroa.0.0.i29.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -32
  store i64 %.sroa.11.0.copyload.i, ptr %.sroa.11.0..sroa.0.0.i29.sroa_idx.i, align 8, !alias.scope !93454, !noalias !93519
  %.sroa.12.0..sroa.0.0.i29.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -24
  store i32 %.sroa.12.0.copyload.i, ptr %.sroa.12.0..sroa.0.0.i29.sroa_idx.i, align 8, !alias.scope !93454, !noalias !93519
  %.sroa.13.0..sroa.0.0.i29.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -20
  store i32 %.sroa.13.0.copyload.i, ptr %.sroa.13.0..sroa.0.0.i29.sroa_idx.i, align 4, !alias.scope !93454, !noalias !93519
  %.sroa.14.0..sroa.0.0.i29.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -16
  store i32 %i.dm, ptr %.sroa.14.0..sroa.0.0.i29.sroa_idx.i, align 8, !alias.scope !93454, !noalias !93519
  %.sroa.15.0..sroa.0.0.i29.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -12
  store i32 %.sroa.15.0.copyload.i, ptr %.sroa.15.0..sroa.0.0.i29.sroa_idx.i, align 4, !alias.scope !93454, !noalias !93519
  %.sroa.16.0..sroa.0.0.i29.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i32 %.sroa.16.0.copyload.i, ptr %.sroa.16.0..sroa.0.0.i29.sroa_idx.i, align 8, !alias.scope !93454, !noalias !93519
  %.sroa.17.0..sroa.0.0.i29.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -4
  store i32 %.sroa.17.0.copyload.i, ptr %.sroa.17.0..sroa.0.0.i29.sroa_idx.i, align 4, !alias.scope !93454, !noalias !93519
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he7ea09d9ee435358E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17he7ea09d9ee435358E.exit.i: ; preds = %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.thread.i, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit56.i, %bb.ae, %bb.z, %bb.v
  %i.la = icmp samesign ult i64 %.sroa.08.133.i, %.sroa.07.0.i ; 2 uses
  %i.lb = zext i1 %i.la to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.133.i, %i.lb
  br i1 %i.la, label %.lr.ph.i, label %.loopexit.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.15.0195.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.15.0.ph201, %.lr.ph ]
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17hff90a0f9317c5816E(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph202, i64 noundef %.sroa.15.0195.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hcfde9a2295d87595E.exit

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %.sroa.023.019449 = phi i32 [ %i.lc, %bb.b ], [ %.sroa.023.0.ph200, %.lr.ph ]
  %.sroa.15.019548 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.15.0.ph201, %.lr.ph ] ; 21 uses
  %i.lc = add nsw i32 %.sroa.023.019449, -1       ; 4 uses
  %i.ld = lshr i64 %.sroa.15.019548, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.ld, 384
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph202, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw i64 %i.ld, 672
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph202, i64 %.idx2.i ; 4 uses
  %i.lg = icmp ult i64 %.sroa.15.019548, 64
  br i1 %i.lg, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph50
  %i.lh = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h62bc81ade861c5c6E(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph202, ptr noundef readonly %i.le, ptr noundef readonly %i.lf, i64 noundef %i.ld)
  br label %bb.bu

bb.bs:                                            ; preds = %.lr.ph50
  %i.li = call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.0.0.ph202, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.le) ; 2 uses
  %i.lj = call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.0.0.ph202, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.lf)
  %i.lk = xor i1 %i.li, %i.lj
  br i1 %i.lk, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ll = call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.le, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.lf)
  %i.lm = xor i1 %i.li, %i.ll
  %..i.i = select i1 %i.lm, ptr %i.lf, ptr %i.le
  br label %bb.bu

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hcfde9a2295d87595E.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %.sroa.0.0.i.sink.i = phi ptr [ %i.lh, %bb.br ], [ %.sroa.0.0.ph202, %bb.bs ], [ %..i.i, %bb.bt ]
  %i.ln = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.lo = sub nuw i64 %i.ln, %i.e                 ; 2 uses
  %.sroa.0.0.i36 = udiv exact i64 %i.lo, 96       ; 3 uses
  %i.lp = icmp ult i64 %.sroa.0.0.i36, %.sroa.15.019548
  call void @llvm.assume(i1 %i.lp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph202, i64 %i.lo ; 30 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.lq, i64 96, i1 false)
  br i1 %.not, label %.critedge, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lr = call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.026.0.ph199, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.lq)
  br i1 %i.lr, label %.critedge, label %.critedge35

.critedge:                                        ; preds = %bb.bu, %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !93520)
  call void @llvm.experimental.noalias.scope.decl(metadata !93521)
  %.not164 = icmp ult i64 %3, %.sroa.15.019548
  br i1 %.not164, label %bb.bx, label %bb.bw, !prof !79

bb.bw:                                            ; preds = %.critedge
  %i.ls = getelementptr [96 x i8], ptr %2, i64 %.sroa.15.019548 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 80
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 84
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 88
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 92
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 72
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 76
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lq, i64 40
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.me = getelementptr inbounds nuw i8, ptr %i.lq, i64 48
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lq, i64 56
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lq, i64 64
  br label %bb.by

bb.bx:                                            ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.by:                                            ; preds = %bb.db, %bb.bw
  %.sroa.19.0.i = phi ptr [ %i.ls, %bb.bw ], [ %i.qn, %bb.db ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.bw ], [ %.sroa.11.1.lcssa.i, %bb.db ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph202, %bb.bw ], [ %i.qp, %bb.db ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i36, %bb.bw ], [ %.sroa.15.019548, %bb.db ] ; 2 uses
  %i.mh = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph202, i64 %.sroa.02.0.i ; 2 uses
  %i.mi = icmp ult ptr %.sroa.5.0.i, %i.mh
  br i1 %i.mi, label %.lr.ph.i37, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.da, %bb.by
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.by ], [ %i.qh, %bb.da ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.by ], [ %i.qk, %bb.da ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.by ], [ %i.ql, %bb.da ] ; 2 uses
  %i.mj = icmp eq i64 %.sroa.02.0.i, %.sroa.15.019548
  br i1 %i.mj, label %bb.dc, label %bb.db

.lr.ph.i37:                                       ; preds = %bb.by, %bb.da
  %.sroa.5.111.i = phi ptr [ %i.ql, %bb.da ], [ %.sroa.5.0.i, %bb.by ] ; 16 uses
  %.sroa.11.110.i = phi i64 [ %i.qk, %bb.da ], [ %.sroa.11.0.i, %bb.by ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.qh, %bb.da ], [ %.sroa.19.0.i, %bb.by ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93522)
  call void @llvm.experimental.noalias.scope.decl(metadata !93523)
  call void @llvm.experimental.noalias.scope.decl(metadata !93524)
  call void @llvm.experimental.noalias.scope.decl(metadata !93525)
  call void @llvm.experimental.noalias.scope.decl(metadata !93526)
  call void @llvm.experimental.noalias.scope.decl(metadata !93527)
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 80
  call void @llvm.experimental.noalias.scope.decl(metadata !93528)
  call void @llvm.experimental.noalias.scope.decl(metadata !93529)
  call void @llvm.experimental.noalias.scope.decl(metadata !93530)
  call void @llvm.experimental.noalias.scope.decl(metadata !93531)
  %i.ml = load i32, ptr %i.mk, align 4, !alias.scope !93532, !noundef !44 ; 2 uses
  %i.mm = load i32, ptr %i.lt, align 8, !alias.scope !93533, !noundef !44 ; 2 uses
  %i.mn = icmp eq i32 %i.ml, %i.mm
  br i1 %i.mn, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.lr.ph.i37
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 84
  %i.mp = load i32, ptr %i.mo, align 4, !alias.scope !93532, !noundef !44
  %i.mq = load i32, ptr %i.lu, align 4, !alias.scope !93533, !noundef !44
  %i.mr = call i8 @llvm.ucmp.i8.i32(i32 %i.mp, i32 %i.mq)
  br label %bb.cb

bb.ca:                                            ; preds = %.lr.ph.i37
  %i.ms = call i8 @llvm.ucmp.i8.i32(i32 %i.ml, i32 %i.mm)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.sroa.01.0.i.i.i.i.i.i38 = phi i8 [ %i.mr, %bb.bz ], [ %i.ms, %bb.ca ] ; 2 uses
  %i.mt = icmp eq i8 %.sroa.01.0.i.i.i.i.i.i38, 0
  br i1 %i.mt, label %bb.cc, label %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i.i39"

bb.cc:                                            ; preds = %bb.cb
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 88
  %i.mv = load i32, ptr %i.mu, align 4, !alias.scope !93532, !noundef !44 ; 2 uses
  %i.mw = load i32, ptr %i.lv, align 8, !alias.scope !93533, !noundef !44 ; 2 uses
  %i.mx = icmp eq i32 %i.mv, %i.mw
  br i1 %i.mx, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 92
  %i.mz = load i32, ptr %i.my, align 4, !alias.scope !93532, !noundef !44
  %i.na = load i32, ptr %i.lw, align 4, !alias.scope !93533, !noundef !44
  %i.nb = call i8 @llvm.ucmp.i8.i32(i32 %i.mz, i32 %i.na)
  br label %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i.i39"

bb.ce:                                            ; preds = %bb.cc
  %i.nc = call i8 @llvm.ucmp.i8.i32(i32 %i.mv, i32 %i.mw)
  br label %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i.i39"

"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i.i39": ; preds = %bb.ce, %bb.cd, %bb.cb
  %.sroa.0.0.i.i.i.i.i.i40 = phi i8 [ %i.nb, %bb.cd ], [ %i.nc, %bb.ce ], [ %.sroa.01.0.i.i.i.i.i.i38, %bb.cb ] ; 2 uses
  %i.nd = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i40, 0
  br i1 %i.nd, label %bb.cf, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i41

bb.cf:                                            ; preds = %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i.i39"
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 72
end_hunk_4
begin_hunk_5_@_ZN4core5slice4sort6stable9quicksort9quicksort17h424a0b8b588af84cE:bb.a
  br i1 %i.sw, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i110, label %bb.dr

bb.dr:                                            ; preds = %bb.ds, %bb.dq
  %i.sx = load i64, ptr %i.rn, align 8, !range !70, !alias.scope !93573, !noundef !44
  %.not.i.i.i.i112 = icmp eq i64 %i.sx, -9223372036854775808
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i104, i64 24
  %i.sz = load i64, ptr %i.sy, align 8, !range !70, !alias.scope !93574, !noundef !44
  %.not17.i.i.i.i113 = icmp eq i64 %i.sz, -9223372036854775808 ; 2 uses
  br i1 %.not.i.i.i.i112, label %bb.du, label %bb.dt

bb.ds:                                            ; preds = %bb.dp
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i104, i64 76
  %i.tb = load i32, ptr %i.rm, align 4, !alias.scope !93573, !noundef !44 ; 2 uses
  %i.tc = load i32, ptr %i.ta, align 4, !alias.scope !93574, !noundef !44 ; 2 uses
  %i.td = call i8 @llvm.scmp.i8.i32(i32 %i.tb, i32 %i.tc)
  %i.te = icmp eq i32 %i.tb, %i.tc
  br i1 %i.te, label %bb.dr, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i110

bb.dt:                                            ; preds = %bb.dr
  br i1 %.not17.i.i.i.i113, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i110, label %bb.dw

bb.du:                                            ; preds = %bb.dr
  br i1 %.not17.i.i.i.i113, label %bb.dv, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i110

bb.dv:                                            ; preds = %bb.dw, %bb.du
  %.val25.i.i.i.i120 = load ptr, ptr %i.rq, align 8, !alias.scope !93573, !nonnull !44, !noundef !44
  %.val26.i.i.i.i121 = load i64, ptr %i.rr, align 8, !alias.scope !93573, !noundef !44 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i104, i64 8
  %.val27.i.i.i.i122 = load ptr, ptr %i.tf, align 8, !alias.scope !93574, !nonnull !44, !noundef !44
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i104, i64 16
  %.val28.i.i.i.i123 = load i64, ptr %i.tg, align 8, !alias.scope !93574, !noundef !44 ; 2 uses
  %..i.i.i.i.i.i.i124 = call i64 @llvm.umin.i64(i64 %.val26.i.i.i.i121, i64 %.val28.i.i.i.i123)
  %i.th = sub i64 %.val26.i.i.i.i121, %.val28.i.i.i.i123
  %i.ti = call i32 @memcmp(ptr nonnull readonly align 1 %.val25.i.i.i.i120, ptr nonnull readonly align 1 %.val27.i.i.i.i122, i64 %..i.i.i.i.i.i.i124), !alias.scope !93575, !noalias !93576 ; 2 uses
  %i.tj = sext i32 %i.ti to i64
  %i.tk = icmp eq i32 %i.ti, 0
  %spec.store.select.i.i.i.i.i.i.i125 = select i1 %i.tk, i64 %i.th, i64 %i.tj ; 2 uses
  %i.tl = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i.i125, i64 0)
  %i.tm = icmp eq i64 %spec.store.select.i.i.i.i.i.i.i125, 0
  br i1 %i.tm, label %bb.dx, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i110

bb.dw:                                            ; preds = %bb.dt
  %.val.i.i.i.i114 = load ptr, ptr %i.ro, align 8, !alias.scope !93573, !nonnull !44, !noundef !44
  %.val22.i.i.i.i115 = load i64, ptr %i.rp, align 8, !alias.scope !93573, !noundef !44 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i104, i64 32
  %.val23.i.i.i.i116 = load ptr, ptr %i.tn, align 8, !alias.scope !93574, !nonnull !44, !noundef !44
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i104, i64 40
  %.val24.i.i.i.i117 = load i64, ptr %i.to, align 8, !alias.scope !93574, !noundef !44 ; 2 uses
  %..i.i.i33.i.i.i.i118 = call i64 @llvm.umin.i64(i64 %.val22.i.i.i.i115, i64 %.val24.i.i.i.i117)
  %i.tp = sub i64 %.val22.i.i.i.i115, %.val24.i.i.i.i117
  %i.tq = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i114, ptr nonnull readonly align 1 %.val23.i.i.i.i116, i64 %..i.i.i33.i.i.i.i118), !alias.scope !93577, !noalias !93576 ; 2 uses
  %i.tr = sext i32 %i.tq to i64
  %i.ts = icmp eq i32 %i.tq, 0
  %spec.store.select.i.i.i34.i.i.i.i119 = select i1 %i.ts, i64 %i.tp, i64 %i.tr ; 2 uses
  %i.tt = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i34.i.i.i.i119, i64 0)
  %i.tu = icmp eq i64 %spec.store.select.i.i.i34.i.i.i.i119, 0
  br i1 %i.tu, label %bb.dv, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i110

bb.dx:                                            ; preds = %bb.dv
  %i.tv = load i64, ptr %i.rs, align 8, !range !70, !alias.scope !93573, !noundef !44
  %.not19.i.i.i.i126 = icmp eq i64 %i.tv, -9223372036854775808
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i104, i64 48
  %i.tx = load i64, ptr %i.tw, align 8, !range !70, !alias.scope !93574, !noundef !44 ; 2 uses
  br i1 %.not19.i.i.i.i126, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %.not21.i.i.i.i127 = icmp eq i64 %i.tx, -9223372036854775808
  br i1 %.not21.i.i.i.i127, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i110, label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  %.not20.i.i.i.i161 = icmp ne i64 %i.tx, -9223372036854775808
  %..i.i.i.i162 = sext i1 %.not20.i.i.i.i161 to i8
  br label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i110

bb.ea:                                            ; preds = %bb.dy
  %.val29.i.i.i.i128 = load ptr, ptr %i.rt, align 8, !alias.scope !93573, !nonnull !44, !noundef !44
  %.val30.i.i.i.i129 = load i64, ptr %i.ru, align 8, !alias.scope !93573, !noundef !44 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i104, i64 56
  %.val31.i.i.i.i130 = load ptr, ptr %i.ty, align 8, !alias.scope !93574, !nonnull !44, !noundef !44
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i104, i64 64
  %.val32.i.i.i.i131 = load i64, ptr %i.tz, align 8, !alias.scope !93574, !noundef !44 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93578), !noalias !93579
  call void @llvm.experimental.noalias.scope.decl(metadata !93580), !noalias !93579
  call void @llvm.experimental.noalias.scope.decl(metadata !93581), !noalias !93579
  call void @llvm.experimental.noalias.scope.decl(metadata !93582), !noalias !93579
  %.sroa.0.0.i.i.i.i.i132 = call noundef i64 @llvm.umin.i64(i64 %.val32.i.i.i.i131, i64 %.val30.i.i.i.i129) ; 2 uses
  %exitcond.not.i.i.i.i13455 = icmp eq i64 %.sroa.0.0.i.i.i.i.i132, 0
  br i1 %exitcond.not.i.i.i.i13455, label %._crit_edge59, label %.lr.ph58

bb.eb:                                            ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i.i141"
  %exitcond.not.i.i.i.i134 = icmp eq i64 %i.ub, %.sroa.0.0.i.i.i.i.i132
  br i1 %exitcond.not.i.i.i.i134, label %._crit_edge59, label %.lr.ph58

._crit_edge59:                                    ; preds = %bb.eb, %bb.ea
  %i.ua = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val30.i.i.i.i129, i64 %.val32.i.i.i.i131)
  br label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i110

.lr.ph58:                                         ; preds = %bb.ea, %bb.eb
  %.sroa.01.0.i.i.i.i13356 = phi i64 [ %i.ub, %bb.eb ], [ 0, %bb.ea ] ; 3 uses
  %i.ub = add i64 %.sroa.01.0.i.i.i.i13356, 1     ; 2 uses
  %i.uc = getelementptr inbounds nuw [128 x i8], ptr %.val29.i.i.i.i128, i64 %.sroa.01.0.i.i.i.i13356 ; 8 uses
  %i.ud = getelementptr inbounds nuw [128 x i8], ptr %.val31.i.i.i.i130, i64 %.sroa.01.0.i.i.i.i13356 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93583), !noalias !93579
  call void @llvm.experimental.noalias.scope.decl(metadata !93584), !noalias !93579
  call void @llvm.experimental.noalias.scope.decl(metadata !93585), !noalias !93579
  call void @llvm.experimental.noalias.scope.decl(metadata !93586), !noalias !93579
  call void @llvm.experimental.noalias.scope.decl(metadata !93587), !noalias !93579
  call void @llvm.experimental.noalias.scope.decl(metadata !93588), !noalias !93579
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 96
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 96
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %.val.i.i.i.i.i.i.i.i.i135 = load ptr, ptr %i.ug, align 8, !alias.scope !93589, !noalias !93590, !nonnull !44, !noundef !44
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %.val1.i.i.i.i.i.i.i.i.i136 = load i64, ptr %i.uh, align 8, !alias.scope !93589, !noalias !93590, !noundef !44 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %.val2.i.i.i.i.i.i.i.i.i137 = load ptr, ptr %i.ui, align 8, !alias.scope !93591, !noalias !93590, !nonnull !44, !noundef !44
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %.val3.i.i.i.i.i.i.i.i.i138 = load i64, ptr %i.uj, align 8, !alias.scope !93591, !noalias !93590, !noundef !44 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i.i139 = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i.i.i.i.i136, i64 %.val3.i.i.i.i.i.i.i.i.i138)
  %i.uk = sub i64 %.val1.i.i.i.i.i.i.i.i.i136, %.val3.i.i.i.i.i.i.i.i.i138
  %i.ul = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i.i.i135, ptr nonnull readonly align 1 %.val2.i.i.i.i.i.i.i.i.i137, i64 %..i.i.i.i.i.i.i.i.i.i.i.i139), !alias.scope !93592, !noalias !93593 ; 2 uses
  %i.um = sext i32 %i.ul to i64
  %i.un = icmp eq i32 %i.ul, 0
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i140 = select i1 %i.un, i64 %i.uk, i64 %i.um ; 2 uses
  %i.uo = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i140, i64 0)
  %i.up = icmp eq i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i140, 0
  br i1 %i.up, label %bb.ec, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i.i141"

bb.ec:                                            ; preds = %.lr.ph58
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uc, i64 88
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ud, i64 88
  %.val.i10.i.i.i.i.i.i.i.i143 = load i32, ptr %i.uq, align 8, !alias.scope !93589, !noalias !93590, !noundef !44 ; 2 uses
  %.val2.i11.i.i.i.i.i.i.i.i144 = load i32, ptr %i.ur, align 8, !alias.scope !93591, !noalias !93590, !noundef !44 ; 2 uses
  %i.us = icmp eq i32 %.val.i10.i.i.i.i.i.i.i.i143, %.val2.i11.i.i.i.i.i.i.i.i144
  br i1 %i.us, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ud, i64 92
  %.val3.i12.i.i.i.i.i.i.i.i159 = load i32, ptr %i.ut, align 4, !alias.scope !93591, !noalias !93590
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uc, i64 92
  %.val1.i13.i.i.i.i.i.i.i.i160 = load i32, ptr %i.uu, align 4, !alias.scope !93589, !noalias !93590
  %i.uv = call i8 @llvm.ucmp.i8.i32(i32 %.val1.i13.i.i.i.i.i.i.i.i160, i32 %.val3.i12.i.i.i.i.i.i.i.i159)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i.i145"

bb.ee:                                            ; preds = %bb.ec
  %i.uw = call i8 @llvm.ucmp.i8.i32(i32 %.val.i10.i.i.i.i.i.i.i.i143, i32 %.val2.i11.i.i.i.i.i.i.i.i144)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i.i145"

"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i.i145": ; preds = %bb.ee, %bb.ed
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i146 = phi i8 [ %i.uv, %bb.ed ], [ %i.uw, %bb.ee ] ; 2 uses
  %i.ux = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i146, 0
  br i1 %i.ux, label %bb.ef, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i.i141"

bb.ef:                                            ; preds = %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i.i145"
  %.val.i14.i.i.i.i.i.i.i.i147 = load i32, ptr %i.ue, align 8, !alias.scope !93589, !noalias !93590, !noundef !44 ; 2 uses
  %.val2.i15.i.i.i.i.i.i.i.i148 = load i32, ptr %i.uf, align 8, !alias.scope !93591, !noalias !93590, !noundef !44 ; 2 uses
  %i.uy = icmp eq i32 %.val.i14.i.i.i.i.i.i.i.i147, %.val2.i15.i.i.i.i.i.i.i.i148
  br i1 %i.uy, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ud, i64 100
  %.val3.i17.i.i.i.i.i.i.i.i157 = load i32, ptr %i.uz, align 4, !alias.scope !93591, !noalias !93590
  %i.va = getelementptr inbounds nuw i8, ptr %i.uc, i64 100
  %.val1.i18.i.i.i.i.i.i.i.i158 = load i32, ptr %i.va, align 4, !alias.scope !93589, !noalias !93590
  %i.vb = call i8 @llvm.ucmp.i8.i32(i32 %.val1.i18.i.i.i.i.i.i.i.i158, i32 %.val3.i17.i.i.i.i.i.i.i.i157)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i.i149"

bb.eh:                                            ; preds = %bb.ef
  %i.vc = call i8 @llvm.ucmp.i8.i32(i32 %.val.i14.i.i.i.i.i.i.i.i147, i32 %.val2.i15.i.i.i.i.i.i.i.i148)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i.i149"

"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i.i149": ; preds = %bb.eh, %bb.eg
  %.sroa.0.0.i.i16.i.i.i.i.i.i.i.i150 = phi i8 [ %i.vb, %bb.eg ], [ %i.vc, %bb.eh ] ; 2 uses
  %i.vd = icmp eq i8 %.sroa.0.0.i.i16.i.i.i.i.i.i.i.i150, 0
  br i1 %i.vd, label %bb.ei, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i.i141"

bb.ei:                                            ; preds = %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i.i149"
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uc, i64 112
  %.val.i20.i.i.i.i.i.i.i.i151 = load ptr, ptr %i.ve, align 8, !alias.scope !93589, !noalias !93590, !nonnull !44, !noundef !44
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uc, i64 120
  %.val1.i21.i.i.i.i.i.i.i.i152 = load i64, ptr %i.vf, align 8, !alias.scope !93589, !noalias !93590, !noundef !44 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ud, i64 112
  %.val2.i22.i.i.i.i.i.i.i.i153 = load ptr, ptr %i.vg, align 8, !alias.scope !93591, !noalias !93590, !nonnull !44, !noundef !44
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ud, i64 120
  %.val3.i23.i.i.i.i.i.i.i.i154 = load i64, ptr %i.vh, align 8, !alias.scope !93591, !noalias !93590, !noundef !44 ; 2 uses
  %..i.i.i.i24.i.i.i.i.i.i.i.i155 = call i64 @llvm.umin.i64(i64 %.val1.i21.i.i.i.i.i.i.i.i152, i64 %.val3.i23.i.i.i.i.i.i.i.i154)
  %i.vi = sub i64 %.val1.i21.i.i.i.i.i.i.i.i152, %.val3.i23.i.i.i.i.i.i.i.i154
  %i.vj = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i20.i.i.i.i.i.i.i.i151, ptr nonnull readonly align 1 %.val2.i22.i.i.i.i.i.i.i.i153, i64 %..i.i.i.i24.i.i.i.i.i.i.i.i155), !alias.scope !93594, !noalias !93593 ; 2 uses
  %i.vk = sext i32 %i.vj to i64
  %i.vl = icmp eq i32 %i.vj, 0
  %spec.store.select.i.i.i.i25.i.i.i.i.i.i.i.i156 = select i1 %i.vl, i64 %i.vi, i64 %i.vk
  %i.vm = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i25.i.i.i.i.i.i.i.i156, i64 0)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i.i141"

"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i.i141": ; preds = %bb.ei, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i.i149", %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i.i145", %.lr.ph58
  %.sroa.0.0.i.i.i.i.i.i.i.i142 = phi i8 [ %i.vm, %bb.ei ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i146, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i.i145" ], [ %i.uo, %.lr.ph58 ], [ %.sroa.0.0.i.i16.i.i.i.i.i.i.i.i150, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i.i149" ] ; 2 uses
  %i.vn = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i142, 0
  br i1 %i.vn, label %bb.eb, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i110

_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit.i110: ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i.i141", %._crit_edge59, %bb.dz, %bb.dy, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dq, %bb.dp, %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i.i108"
  %.sroa.0.2.i.i.i.i111 = phi i8 [ %.sroa.0.0.i.i.i.i.i.i109, %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i.i108" ], [ 1, %bb.dp ], [ %i.td, %bb.ds ], [ -1, %bb.dq ], [ 1, %bb.dy ], [ -1, %bb.du ], [ %..i.i.i.i162, %bb.dz ], [ %i.tl, %bb.dv ], [ 1, %bb.dt ], [ %i.tt, %bb.dw ], [ %i.ua, %._crit_edge59 ], [ %.sroa.0.0.i.i.i.i.i.i.i.i142, %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i.i141" ]
  %i.vo = icmp sgt i8 %.sroa.0.2.i.i.i.i111, -1   ; 2 uses
  %i.vp = getelementptr inbounds i8, ptr %.sroa.19.19.i106, i64 -96 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.vo, ptr %2, ptr %i.vp
  %i.vq = getelementptr inbounds nuw [96 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.vq, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.111.i104, i64 96, i1 false), !alias.scope !93595, !noalias !93596
  %i.vr = zext i1 %i.vo to i64
  %i.vs = add i64 %.sroa.11.110.i105, %i.vr       ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i104, i64 96 ; 3 uses
  %i.vu = icmp ult ptr %i.vt, %i.rv
  br i1 %i.vu, label %.lr.ph.i103, label %._crit_edge.i95

bb.ej:                                            ; preds = %._crit_edge.i95
  %i.vv = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i96, i64 -96
  %i.vw = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.vw, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.1.lcssa.i98, i64 96, i1 false), !alias.scope !93595, !noalias !93597
  %i.vx = add i64 %.sroa.11.1.lcssa.i97, 1
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i98, i64 96
  br label %bb.dh

bb.ek:                                            ; preds = %._crit_edge.i95
  %i.vz = mul i64 %.sroa.11.1.lcssa.i97, 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph202, ptr nonnull align 8 %2, i64 %i.vz, i1 false), !alias.scope !93595
  %i.wa = sub i64 %.sroa.15.019548, %.sroa.11.1.lcssa.i97 ; 6 uses
  %.not18.i99 = icmp eq i64 %.sroa.15.019548, %.sroa.11.1.lcssa.i97
  br i1 %.not18.i99, label %.outer._crit_edge.thread, label %.lr.ph16.i100

.lr.ph16.i100:                                    ; preds = %bb.ek
  %i.wb = getelementptr [96 x i8], ptr %.sroa.0.0.ph202, i64 %.sroa.11.1.lcssa.i97 ; 3 uses
  %.neg164 = add i64 %.sroa.11.1.lcssa.i97, 1
  %xtraiter159 = and i64 %i.wa, 1
  %i.wc = icmp eq i64 %.sroa.15.019548, %.neg164
  br i1 %i.wc, label %.epil.preheader152, label %.lr.ph16.i100.new

.lr.ph16.i100.new:                                ; preds = %.lr.ph16.i100
  %unroll_iter162 = and i64 %i.wa, -2
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %.lr.ph16.i100.new
  %.sroa.04.014.i101 = phi i64 [ 0, %.lr.ph16.i100.new ], [ %i.wg, %bb.el ] ; 5 uses
  %niter163 = phi i64 [ 0, %.lr.ph16.i100.new ], [ %niter163.next.1, %bb.el ]
  %i.wd = xor i64 %.sroa.04.014.i101, -1
  %i.we = getelementptr [96 x i8], ptr %i.rg, i64 %i.wd
  %i.wf = getelementptr [96 x i8], ptr %i.wb, i64 %.sroa.04.014.i101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.wf, ptr noundef nonnull align 8 dereferenceable(96) %i.we, i64 96, i1 false), !alias.scope !93595
  %i.wg = add nuw i64 %.sroa.04.014.i101, 2       ; 2 uses
  %i.wh = xor i64 %.sroa.04.014.i101, -2
  %i.wi = getelementptr [96 x i8], ptr %i.rg, i64 %i.wh
  %i.wj = getelementptr [96 x i8], ptr %i.wb, i64 %.sroa.04.014.i101
  %i.wk = getelementptr i8, ptr %i.wj, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.wk, ptr noundef nonnull align 8 dereferenceable(96) %i.wi, i64 96, i1 false), !alias.scope !93595
  %niter163.next.1 = add i64 %niter163, 2         ; 2 uses
  %niter163.ncmp.1 = icmp eq i64 %niter163.next.1, %unroll_iter162
  br i1 %niter163.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hba6256e1ef235f53E.exit.unr-lcssa, label %bb.el

_ZN4core5slice4sort6stable9quicksort16stable_partition17hba6256e1ef235f53E.exit.unr-lcssa: ; preds = %bb.el
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hba6256e1ef235f53E.exit, label %.epil.preheader152

.epil.preheader152:                               ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hba6256e1ef235f53E.exit.unr-lcssa, %.lr.ph16.i100
  %.sroa.04.014.i101.epil.init = phi i64 [ 0, %.lr.ph16.i100 ], [ %i.wg, %_ZN4core5slice4sort6stable9quicksort16stable_partition17hba6256e1ef235f53E.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod161 = trunc i64 %i.wa to i1
  call void @llvm.assume(i1 %lcmp.mod161)
  %i.wl = xor i64 %.sroa.04.014.i101.epil.init, -1
  %i.wm = getelementptr [96 x i8], ptr %i.rg, i64 %i.wl
  %i.wn = getelementptr [96 x i8], ptr %i.wb, i64 %.sroa.04.014.i101.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.wn, ptr noundef nonnull align 8 dereferenceable(96) %i.wm, i64 96, i1 false), !alias.scope !93595
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hba6256e1ef235f53E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17hba6256e1ef235f53E.exit: ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hba6256e1ef235f53E.exit.unr-lcssa, %.epil.preheader152
  %i.wo = icmp ugt i64 %.sroa.11.1.lcssa.i97, %.sroa.15.019548
  br i1 %i.wo, label %bb.em, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h039c89d3920cf8efE.exit", !prof !49

.outer._crit_edge.thread:                         ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hcfde9a2295d87595E.exit

bb.em:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hba6256e1ef235f53E.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.11.1.lcssa.i97, i64 noundef %.sroa.15.019548, i64 noundef %.sroa.15.019548, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1324) #75, !noalias !93598
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h039c89d3920cf8efE.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hba6256e1ef235f53E.exit
  %i.wp = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph202, i64 %.sroa.11.1.lcssa.i97 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.wq = icmp ult i64 %i.wa, 33
  br i1 %i.wq, label %.outer._crit_edge, label %.lr.ph

bb.en:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @72, ptr %i.b, align 8
  %i.wr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.wr, align 8
  %i.ws = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ws, align 8
  %i.wt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.wt, align 8
  %i.wu = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.wu, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1323) #75
  unreachable

bb.eo:                                            ; preds = %bb.de
  %i.wv = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph202, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph202) ]
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h424a0b8b588af84cE(ptr noalias noundef nonnull align 8 %i.wv, i64 noundef %i.qr, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.lc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ww = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.ww, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8897e1dc0127cd77E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef range(i32 0, 127) %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(136) %5) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [136 x i8], align 8               ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h228df6ad066f0165E.exit"
  %.sroa.0.0.ph104 = phi ptr [ %i.lg, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h228df6ad066f0165E.exit" ], [ %0, %bb.a ] ; 21 uses
  %.sroa.15.0.ph103 = phi i64 [ %i.kr, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h228df6ad066f0165E.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph102 = phi i32 [ %i.hh, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h228df6ad066f0165E.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph101 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h228df6ad066f0165E.exit" ], [ %5, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph104, i64 96
  %i.e = getelementptr i8, ptr %.sroa.0.0.ph104, i64 100
  %i.f = ptrtoint ptr %.sroa.0.0.ph104 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph101, null
  %i.g = getelementptr i8, ptr %.sroa.026.0.ph101, i64 96
  %i.h = getelementptr i8, ptr %.sroa.026.0.ph101, i64 100
  %i.i = icmp eq i32 %.sroa.023.0.ph102, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %bb.ak
  %i.j = icmp eq i32 %i.hh, 0
  br i1 %i.j, label %.lr.ph._crit_edge, label %.lr.ph46

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h228df6ad066f0165E.exit", %bb.ak, %bb.a
  %.sroa.0.0.ph.lcssa95 = phi ptr [ %.sroa.0.0.ph104, %bb.ak ], [ %0, %bb.a ], [ %i.lg, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h228df6ad066f0165E.exit" ] ; 20 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.ak ], [ %1, %bb.a ], [ %i.kr, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h228df6ad066f0165E.exit" ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93636)
  call void @llvm.experimental.noalias.scope.decl(metadata !93637)
  %i.k = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.k, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h8966f56b84a04665E.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.l = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.m = icmp ult i64 %3, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i64 %.sroa.15.0.lcssa, 1            ; 10 uses
  %i.o = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.o, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %.sroa.0.0.ph.lcssa95, i64 232
  %.val20.i.i = load i32, ptr %i.p, align 8, !alias.scope !93636, !noundef !44 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.0.0.ph.lcssa95, i64 236
  %.val21.i.i = load i32, ptr %i.q, align 4, !alias.scope !93636, !noundef !44
  %i.r = getelementptr i8, ptr %.sroa.0.0.ph.lcssa95, i64 96
  %.val22.i.i = load i32, ptr %i.r, align 8, !alias.scope !93636, !noundef !44 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.0.0.ph.lcssa95, i64 100
  %.val23.i.i = load i32, ptr %i.s, align 4, !alias.scope !93636, !noundef !44
  %i.t = icmp eq i32 %.val20.i.i, %.val22.i.i
  %i.u = icmp ult i32 %.val21.i.i, %.val23.i.i
  %i.v = icmp ult i32 %.val20.i.i, %.val22.i.i
  %.sroa.0.0.i.i.i.i.i = select i1 %i.t, i1 %i.u, i1 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.0.0.ph.lcssa95, i64 504
  %.val16.i.i = load i32, ptr %i.w, align 8, !alias.scope !93636, !noundef !44 ; 2 uses
  %i.x = getelementptr i8, ptr %.sroa.0.0.ph.lcssa95, i64 508
  %.val17.i.i = load i32, ptr %i.x, align 4, !alias.scope !93636, !noundef !44
  %i.y = getelementptr i8, ptr %.sroa.0.0.ph.lcssa95, i64 368
  %.val18.i.i = load i32, ptr %i.y, align 8, !alias.scope !93636, !noundef !44 ; 2 uses
  %i.z = getelementptr i8, ptr %.sroa.0.0.ph.lcssa95, i64 372
  %.val19.i.i = load i32, ptr %i.z, align 4, !alias.scope !93636, !noundef !44
  %i.aa = icmp eq i32 %.val16.i.i, %.val18.i.i
  %i.ab = icmp ult i32 %.val17.i.i, %.val19.i.i
  %i.ac = icmp ult i32 %.val16.i.i, %.val18.i.i
  %.sroa.0.0.i.i.i24.i.i = select i1 %i.aa, i1 %i.ab, i1 %i.ac ; 2 uses
  %i.ad = zext i1 %.sroa.0.0.i.i.i.i.i to i64
  %i.ae = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.ad ; 4 uses
  %i.af = xor i1 %.sroa.0.0.i.i.i.i.i, true
  %i.ag = zext i1 %i.af to i64
  %i.ah = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.ag ; 5 uses
  %i.ai = select i1 %.sroa.0.0.i.i.i24.i.i, i64 3, i64 2
  %i.aj = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.ai ; 5 uses
  %i.ak = select i1 %.sroa.0.0.i.i.i24.i.i, i64 2, i64 3
  %i.al = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.ak ; 4 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 96
  %.val12.i.i = load i32, ptr %i.am, align 8, !alias.scope !93636, !noundef !44 ; 2 uses
  %i.an = getelementptr i8, ptr %i.aj, i64 100
  %.val13.i.i = load i32, ptr %i.an, align 4, !alias.scope !93636, !noundef !44
  %i.ao = getelementptr i8, ptr %i.ae, i64 96
  %.val14.i.i = load i32, ptr %i.ao, align 8, !alias.scope !93636, !noundef !44 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ae, i64 100
  %.val15.i.i = load i32, ptr %i.ap, align 4, !alias.scope !93636, !noundef !44
  %i.aq = icmp eq i32 %.val12.i.i, %.val14.i.i
end_hunk_5
