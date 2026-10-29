Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.11?download=true
inline.NumInlined: 2091
inline.NumDeleted: 836
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render:bb.a
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.de = getelementptr inbounds nuw i8, ptr %i.ag, <2 x i64> <i64 0, i64 96>
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 275
  %.val.i143.i = load i8, ptr %i.dh, align 1      ; 2 uses
  %.sroa.483.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.584.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.di = sub i8 28, %.val.i143.i
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0, i64 %.sroa.37.0
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.5.0..sroa_idx.i21.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %.sroa.573.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.676.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %.sroa.440.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.541.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.642.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %.sroa.573.0..sroa_idx74.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.676.0..sroa_idx77.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.7.0..sroa_idx79.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 7 uses
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 11 uses
  %brmerge.not.i = and i1 %i.ch, %i.cx
  %i.dk = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.466.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.571.0..sroa_idx74.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %.sroa.466.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.571.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.4.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.dv = load i64, ptr %i.du, align 8            ; 5 uses
  %i.dw = icmp ult i64 %i.dv, 2305843009213693952
  %i.dx = icmp eq i64 %i.dv, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val.i = load ptr, ptr %i.dy, align 8, !nonnull !5
  %i.dz = shl nuw nsw i64 %i.dv, 2
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !5
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ed = load i64, ptr %i.ec, align 8            ; 8 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.not129.i = icmp eq i64 %i.ed, 0
  %i.eg = shl nuw nsw i64 %i.ed, 2
  %.sroa.488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %.sroa.689.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.eh = icmp ult i64 %i.ed, 2305843009213693952
  %i.ei = icmp samesign ult i64 %i.ed, 12
  %i.ej = sub nuw nsw i64 12, %i.ed               ; 2 uses
  %i.ek = add i64 %i.ba, -1                       ; 2 uses
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %.not612 = xor i1 %i.cl, true
  %brmerge = select i1 %.not612, i1 true, i1 %i.cm ; 2 uses
  %brmerge614 = select i1 %brmerge, i1 true, i1 %.not2.i.i
  %.mux.mux = select i1 %i.cl, i64 %i.ck, i64 0
  %.mux613.mux = select i1 %brmerge, i64 %i.ci, i64 1
  %spec.select = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %spec.select1040 = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %spec.select1047 = select i1 %i.db, i64 %i.cy, i64 %..i137.i ; 2 uses
  %not.1036 = xor i1 %i.cl, true
  %i.el = select i1 %not.1036, i1 true, i1 %i.cm
  %invariant.op = sub i8 20, %.val.i143.i
  %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 2
  %.sroa.0.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 3
  %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  br label %.backedge782

.backedge782:                                     ; preds = %.backedge782.backedge, %bb.i
  %.sroa.4.0611 = phi i64 [ 6, %bb.i ], [ %i.eo, %.backedge782.backedge ] ; 13 uses
  %i.eo = add i64 %.sroa.4.0611, -1               ; 5 uses
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish6screenNtB4_10ScreenData11clear_lines(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.av)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.loopexit290.thread1043, %.loopexit290.thread, %.loopexit290, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.al, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  ret void

bb.j:                                             ; preds = %.backedge782
  call void @llvm.assume(i1 %i.cg)
  br i1 %i.ch, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ep = urem i64 %i.cf, %.sroa.4.0611
  %.not.i43 = icmp ne i64 %i.ep, 0
  %i.eq = udiv i64 %i.cf, %.sroa.4.0611
  %..i = zext i1 %.not.i43 to i64
  %i.er = add nuw nsw i64 %i.eq, %..i             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %i.er, ptr %i.ah, align 8
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @31, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2943) #37
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.et = urem i64 %i.cf, %i.er
  %.not.i46 = icmp ne i64 %i.et, 0
  %i.eu = udiv i64 %i.cf, %i.er
  %..i47 = zext i1 %.not.i46 to i64
  %i.ev = add nuw nsw i64 %i.eu, %..i47           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.not = icmp ugt i64 %i.ev, %.sroa.4.0611
  br i1 %.not, label %bb.n, label %.thread129, !prof !2750

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2919, i64 noundef 52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2920) #36
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.j
  %.not142 = icmp eq i64 %.sroa.4.0611, 1
  br i1 %.not142, label %.loopexit290.thread1043, label %.backedge782.backedge

.thread129:                                       ; preds = %bb.m
  %i.ew = icmp ne i64 %.sroa.4.0611, 1
  %i.ex = icmp ult i64 %i.ev, %.sroa.4.0611
  %or.cond132 = and i1 %i.ew, %i.ex
  br i1 %or.cond132, label %.backedge782.backedge, label %bb.q

.backedge782.backedge:                            ; preds = %.thread129, %bb.o, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit
  br label %.backedge782

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %.thread129
  store i64 %.sroa.4.0611, ptr %i.aq, align 8
  store i64 %i.er, ptr %i.ap, align 8
  br i1 %brmerge614, label %.loopexit290.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.sroa.0.03.i.i = phi i64 [ %i.ey, %bb.r ], [ %i.ck, %bb.q ] ; 2 uses
  %.not6.i.i = icmp ult i64 %.sroa.0.03.i.i, %i.er
  br i1 %.not6.i.i, label %.loopexit290, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.ey = sub nuw i64 %.sroa.0.03.i.i, %i.er      ; 3 uses
  %.not.i.i = icmp ult i64 %i.ey, %i.cf
  br i1 %.not.i.i, label %.loopexit290, label %.lr.ph.i.i

.loopexit290:                                     ; preds = %bb.r, %.lr.ph.i.i
  %.sroa.7.0.i = phi i64 [ %i.cn, %.lr.ph.i.i ], [ %i.ey, %bb.r ]
  store i64 1, ptr %i.at, align 8
  store i64 %.sroa.7.0.i, ptr %i.au, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2751)
  call void @llvm.experimental.noalias.scope.decl(metadata !2752)
  br i1 %or.cond.i, label %.thread, label %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i

.loopexit290.thread1043:                          ; preds = %bb.o
  store i64 1, ptr %i.aq, align 8
  store i64 0, ptr %i.ap, align 8
  store i64 0, ptr %i.at, align 8
  br i1 %or.cond.i, label %.thread, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread

.loopexit290.thread:                              ; preds = %bb.q
  store i64 %.mux613.mux, ptr %i.at, align 8
  store i64 %.mux.mux, ptr %i.au, align 8
  br i1 %or.cond.i, label %.thread, label %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i

_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i: ; preds = %.loopexit290, %.loopexit290.thread
  %spec.select1041 = phi i64 [ %spec.select1040, %.loopexit290.thread ], [ %spec.select, %.loopexit290 ] ; 5 uses
  %i.ez = urem i64 %i.cf, %.sroa.4.0611
  %.not.i.i52 = icmp ne i64 %i.ez, 0
  %i.fa = udiv i64 %i.cf, %.sroa.4.0611
  %..i138.i = zext i1 %.not.i.i52 to i64
  %i.fb = add nuw nsw i64 %i.fa, %..i138.i
  %.sroa.0.0.i207.fr809.i = freeze i64 %i.fb      ; 6 uses
  %i.fc = icmp ule i64 %.sroa.0.0.i207.fr809.i, %spec.select1041
  %or.cond4.not.i = select i1 %i.db, i1 true, i1 %i.fc
  br i1 %or.cond4.not.i, label %.outer.split.i.split.us.preheader.sink.split, label %bb.s

bb.s:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i
  %i.fd = sub nuw nsw i64 %.sroa.0.0.i207.fr809.i, %spec.select1041 ; 3 uses
  store i64 %i.fd, ptr %i.aw, align 8, !alias.scope !2752
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.t, label %.outer.split.i.split.us.preheader

bb.t:                                             ; preds = %bb.s
  %i.ff = add nuw nsw i64 %spec.select1041, 1
  br label %.outer.split.i.split.us.preheader.sink.split

.outer.split.i.split.us.preheader.sink.split:     ; preds = %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i, %bb.t
  %.sroa.08.1.i1056.ph = phi i64 [ %i.ff, %bb.t ], [ %spec.select1041, %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i ]
  store i64 0, ptr %i.aw, align 8, !alias.scope !2752
  br label %.outer.split.i.split.us.preheader

.outer.split.i.split.us.preheader:                ; preds = %.outer.split.i.split.us.preheader.sink.split, %bb.s
  %.sroa.08.1.i1056 = phi i64 [ %spec.select1041, %bb.s ], [ %.sroa.08.1.i1056.ph, %.outer.split.i.split.us.preheader.sink.split ] ; 2 uses
  %i.fg = phi i64 [ %i.fd, %bb.s ], [ 0, %.outer.split.i.split.us.preheader.sink.split ] ; 2 uses
  br label %.outer.split.i.split.us

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i: ; preds = %bb.hf
  %..i199.5.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.aby) ; 2 uses
  %i.fh = add nuw i64 %.sroa.022.0.ph471.5.i.lcssa, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2753
  store i64 %..i199.i1086, ptr %i.ag, align 8, !noalias !2753
  store i64 %i.zi, ptr %.sroa.6.0..sroa_idx.i54, align 8, !noalias !2753
  store i64 %..i199.1820.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %i.zl, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %..i199.2.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %i.aaa, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %..i199.3.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %i.aas, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %..i199.4.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %i.abj, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %..i199.5.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %i.fh, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !2753
  %i.fi = add i64 %..i199.1820.i, %..i199.i1086   ; 3 uses
  %i.fj = icmp ult i64 %i.fi, %..i199.i1086
  br i1 %i.fj, label %.split483.us.i.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i
  %i.fk = add i64 %..i199.2.i, %i.fi              ; 3 uses
  %i.fl = icmp ult i64 %i.fk, %i.fi
  br i1 %i.fl, label %.split483.us.i.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i
  %i.fm = add i64 %..i199.3.i, %i.fk              ; 3 uses
  %i.fn = icmp ult i64 %i.fm, %i.fk
  br i1 %i.fn, label %.split483.us.i.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i
  %i.fo = add i64 %..i199.4.i, %i.fm              ; 3 uses
  %i.fp = icmp ult i64 %i.fo, %i.fm
  br i1 %i.fp, label %.split483.us.i.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i
  %i.fq = add i64 %..i199.5.i, %i.fo              ; 3 uses
  %i.fr = icmp ult i64 %i.fq, %i.fo
  br i1 %i.fr, label %.split483.us.i.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i
  %i.fs = icmp slt i64 %i.eo, 0
  br i1 %i.fs, label %.split459.us.i.invoke, label %bb.u

bb.u:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i
  %i.ft = shl nuw i64 %i.eo, 1
  %i.fu = add i64 %i.fq, %i.ft                    ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.fq
  br i1 %i.fv, label %.split483.us.i.invoke, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i55.not = icmp uge i64 %i.ba, %i.fu       ; 2 uses
  br i1 %.not.i55.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not114.i = icmp ugt i64 %.sroa.0.0.i207.fr810.i1052106710741084, %.sroa.08.1.i1054106610751080
  br i1 %.not114.i, label %bb.y, label %.thread219.i

bb.x:                                             ; preds = %bb.v
  %.not132.i = icmp eq i64 %.sroa.4.0611, 1
  br i1 %.not132.i, label %bb.gf, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit, !prof !7

bb.y:                                             ; preds = %bb.w
  %i.fw = sub nuw nsw i64 %.sroa.0.0.i207.fr810.i1052106710741084, %.sroa.08.1.i1054106610751080
  %..i141.i = call noundef i64 @llvm.umin.i64(i64 %i.fw, i64 %i.cr) ; 2 uses
  %i.fx = add nuw nsw i64 %..i141.i, %.sroa.08.1.i1054106610751080
  br label %.thread219.i

.thread219.i:                                     ; preds = %bb.y, %bb.w
  %.sroa.034.0217224.i = phi i64 [ %..i141.i, %bb.y ], [ 0, %bb.w ] ; 7 uses
  %.sroa.028.0218223.i = phi i64 [ %i.fx, %bb.y ], [ %.sroa.0.0.i207.fr810.i1052106710741084, %bb.w ] ; 6 uses
  %i.fy = sub nuw nsw i64 %.sroa.028.0218223.i, %.sroa.034.0217224.i
  %.not118.i = icmp ugt i64 %i.fy, %.sroa.08.1.i1054106610751080
  br i1 %.not118.i, label %bb.z, label %bb.aa, !prof !7

bb.z:                                             ; preds = %.thread219.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2861, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2862) #37
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %.thread219.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2754)
  call void @llvm.experimental.noalias.scope.decl(metadata !2755)
  store i64 %.sroa.034.0217224.i, ptr %i.ar, align 8, !alias.scope !2756
  store i64 %.sroa.028.0218223.i, ptr %i.as, align 8, !alias.scope !2756
  br i1 %i.ch, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fz = urem i64 %i.cf, %.sroa.4.0611
  %.not.i.i.i = icmp ne i64 %i.fz, 0
  %i.ga = udiv i64 %i.cf, %.sroa.4.0611
  %..i.i.i = zext i1 %.not.i.i.i to i64
  %i.gb = add nuw nsw i64 %i.ga, %..i.i.i         ; 7 uses
  br i1 %i.el, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gc = icmp eq i64 %i.gb, 0                    ; 3 uses
  %brmerge619 = select i1 %i.gc, i1 true, i1 %.not2.i.i
  %.mux621 = select i1 %i.gc, i64 undef, i64 %i.ck
  %not. = xor i1 %i.gc, true
  br i1 %brmerge619, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac, %bb.ad
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.gd, %bb.ad ], [ %i.ck, %bb.ac ] ; 2 uses
  %.not6.i.i.i.i = icmp ult i64 %.sroa.0.03.i.i.i.i, %i.gb
  br i1 %.not6.i.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gd = sub nuw i64 %.sroa.0.03.i.i.i.i, %i.gb  ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.gd, %i.cf
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %.lr.ph.i.i.i.i

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i, %bb.ac, %bb.ab, %bb.aa
  %.sroa.0.0.i.i.i138 = phi i64 [ %i.gb, %bb.ac ], [ %i.gb, %bb.ab ], [ 0, %bb.aa ], [ %i.gb, %.lr.ph.i.i.i.i ], [ %i.gb, %bb.ad ]
  %.sroa.7.0.i.i.i = phi i64 [ %.mux621, %bb.ac ], [ 0, %bb.ab ], [ undef, %bb.aa ], [ %i.gd, %bb.ad ], [ %i.cn, %.lr.ph.i.i.i.i ]
  %.sroa.0.0.i18.i.i = phi i1 [ %not., %bb.ac ], [ %i.cl, %bb.ab ], [ false, %bb.aa ], [ true, %.lr.ph.i.i.i.i ], [ true, %bb.ad ]
  %i.ge = icmp samesign ult i64 %.sroa.034.0217224.i, %.sroa.028.0218223.i
  br i1 %i.ge, label %.lr.ph310.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i

.lr.ph310.i.i:                                    ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, %._crit_edge.i.i
  %.sroa.08.0309.i.i = phi i64 [ %i.gf, %._crit_edge.i.i ], [ %.sroa.034.0217224.i, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i ] ; 4 uses
  %i.gf = add nuw nsw i64 %.sroa.08.0309.i.i, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2757
  store <2 x ptr> %i.de, ptr %i.m, align 16, !noalias !2757
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2758
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc65:                                         ; preds = %.lr.ph310.i.i
  %i.gg = load i64, ptr %i.k, align 8, !range !22, !noalias !2758, !noundef !5
  %i.gh = trunc nuw i64 %i.gg to i1
  br i1 %i.gh, label %.lr.ph.i.i58, label %._crit_edge.i.i

.lr.ph.i.i58:                                     ; preds = %.noexc65
  %i.gi = trunc i64 %.sroa.08.0309.i.i to i1      ; 4 uses
  %spec.select.i.i.i.i = select i1 %i.gi, i8 22, i8 18
  %i.gj = select i1 %i.gi, i8 4, i8 0
  %spec.select.i134.i.reass.reass.i.reass.i.reass.reass = add i8 %i.gj, %invariant.op
  %spec.select.i137.i.i.i = select i1 %i.gi, i8 24, i8 20
  %spec.select.i140.i.i.i = select i1 %i.gi, i8 25, i8 21
  %i.gk = sub nuw nsw i64 %.sroa.08.0309.i.i, %.sroa.034.0217224.i
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc72, %.lr.ph.i.i58
  call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  %i.gl = load i64, ptr %i.df, align 8, !noalias !2760, !noundef !5 ; 8 uses
  %i.gm = load i64, ptr %i.dg, align 8, !noalias !2760, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2760
  %i.gn = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !alias.scope !2759, !noalias !2757, !noundef !5 ; 4 uses
  %i.go = icmp eq i64 %i.gn, -1
  br i1 %i.go, label %.split483.us.i.invoke, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gp = add nuw i64 %i.gn, 1
  store i64 %i.gp, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !alias.scope !2759, !noalias !2757
  %i.gq = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gn, i64 %.sroa.0.0.i.i.i138) ; 2 uses
  %i.gr = extractvalue { i64, i1 } %i.gq, 1
  br i1 %i.gr, label %.split459.us.i.invoke, label %bb.ag

._crit_edge.i.i:                                  ; preds = %.noexc72, %.noexc65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2757
  %exitcond.not.i.i = icmp eq i64 %i.gf, %.sroa.028.0218223.i
  br i1 %exitcond.not.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.loopexit.i, label %.lr.ph310.i.i

bb.ag:                                            ; preds = %bb.af
  %i.gs = extractvalue { i64, i1 } %i.gq, 0       ; 2 uses
  %i.gt = add i64 %i.gs, %.sroa.08.0309.i.i       ; 20 uses
  %i.gu = icmp ult i64 %i.gt, %i.gs
  br i1 %i.gu, label %.split483.us.i.invoke, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not16.i.i = icmp ugt i64 %i.cf, %i.gt
end_hunk_0
begin_hunk_1_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render:bb.a
  %i.xc = or disjoint i32 %i.wz, %i.xb
  %i.xd = or disjoint i32 %i.xc, %i.wy
  br label %bb.fp

bb.fp:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i, %bb.fo, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i
  %.sroa.11.1.ph.i.i = phi ptr [ %.sroa.11.0.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i ], [ %i.wc, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.wl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.wv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.vw, %bb.fo ] ; 2 uses
  %.sroa.036.1.ph.i.i = phi ptr [ %i.vu, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ null, %bb.fo ] ; 2 uses
  %.sroa.03.0.ph.i.i = phi i32 [ %i.vq, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i ], [ %i.wh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.ws, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.xd, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.wj, %bb.fo ] ; 2 uses
  %i.xe = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.03.0.ph.i.i)
          to label %.noexc182.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2779 ; 2 uses

.noexc182.i:                                      ; preds = %bb.fp
  %i.xf = extractvalue { i64, i64 } %i.xe, 0
  %i.xg = trunc nuw i64 %i.xf to i1
  br i1 %i.xg, label %.loopexit.i178.i, label %.peel.next.i.i, !llvm.loop !2725

.loopexit.i178.i:                                 ; preds = %.noexc182.i, %.noexc180.i
  %.sroa.11.1.ph.lcssa.i.i = phi ptr [ %.sroa.11.1.ph.peel.i.i, %.noexc180.i ], [ %.sroa.11.1.ph.i.i, %.noexc182.i ] ; 5 uses
  %.sroa.036.1.ph.lcssa.i.i = phi ptr [ %.sroa.036.1.ph.peel.i.i, %.noexc180.i ], [ %.sroa.036.1.ph.i.i, %.noexc182.i ] ; 4 uses
  %.sroa.03.0.ph.lcssa.i.i = phi i32 [ %.sroa.03.0.ph.peel.i.i, %.noexc180.i ], [ %.sroa.03.0.ph.i.i, %.noexc182.i ]
  %.lcssa72.i.i = phi { i64, i64 } [ %i.vm, %.noexc180.i ], [ %i.xe, %.noexc182.i ]
  %i.xh = extractvalue { i64, i64 } %.lcssa72.i.i, 1 ; 3 uses
  %i.xi = icmp ugt i64 %i.xh, %.sroa.013.0.ph.i492.i
  br i1 %i.xi, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i, label %bb.fq

bb.fq:                                            ; preds = %.loopexit.i178.i
  %.not495.i = icmp eq i64 %i.xh, %.sroa.013.0.ph.i492.i ; 2 uses
  br i1 %.not495.i, label %bb.fr, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.fu, %bb.ft, %bb.fq
  %.sroa.11.2.i.i = phi ptr [ %.sroa.11.1.ph.lcssa.i.i, %bb.fq ], [ null, %bb.ft ], [ getelementptr inbounds nuw (i8, ptr @2870, i64 1), %bb.fu ]
  %.sroa.036.2.i.i = phi ptr [ %.sroa.036.1.ph.lcssa.i.i, %bb.fq ], [ null, %bb.ft ], [ null, %bb.fu ]
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ts, i32 noundef %.sroa.03.0.ph.lcssa.i.i, i32 noundef 0, i64 noundef 0, i64 undef)
          to label %.noexc183.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2779

.noexc183.i:                                      ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i
  %i.xj = icmp eq i64 %.sroa.0.0.ph.i493.i, -1
  br i1 %i.xj, label %bb.fw, label %.outer.i.i

bb.fr:                                            ; preds = %bb.fq
  %.not.i.i.i.i34.i.i = icmp eq ptr %.sroa.036.1.ph.lcssa.i.i, null
  %i.xk = icmp eq ptr %.sroa.036.1.ph.lcssa.i.i, %i.tw
  %or.cond246.i = select i1 %.not.i.i.i.i34.i.i, i1 true, i1 %i.xk
  br i1 %or.cond246.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.xl = load i32, ptr %.sroa.036.1.ph.lcssa.i.i, align 4, !noalias !2793, !noundef !5 ; 2 uses
  %i.xm = xor i32 %i.xl, 55296
  %i.xn = add i32 %i.xm, -1114112
  %i.xo = icmp ult i32 %i.xn, -1112064
  br i1 %i.xo, label %.split.i.i.i.i.i.i.i.i, label %.sink.split.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2794
  store i32 %i.xl, ptr %i.a, align 4, !noalias !2794
  br label %.split.i.i.i.i.i.i.i.invoke.i

.split.i.i.i.i.i.i.i.invoke.i:                    ; preds = %.split.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i
  %i.xp = phi ptr [ %i.a, %.split.i.i.i.i.i.i.i.i ], [ %i.b, %.split.i.i.i.i.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.xp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3115) #37
          to label %.split.i.i.i.i.i.i.i.cont.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2779

.split.i.i.i.i.i.i.i.cont.i:                      ; preds = %.split.i.i.i.i.i.i.i.invoke.i
  unreachable

bb.ft:                                            ; preds = %bb.fr
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.1.ph.lcssa.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.1.ph.lcssa.i.i, getelementptr inbounds nuw (i8, ptr @2870, i64 1)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.xq = load i8, ptr %.sroa.11.1.ph.lcssa.i.i, align 1, !noalias !2795, !noundef !5
  %i.xr = icmp sgt i8 %i.xq, -1
  br i1 %i.xr, label %.sink.split.i.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i: ; preds = %bb.fv
  %i.xs = icmp ne ptr %.sroa.11.1.ph.lcssa.i.i, @2870
  call void @llvm.assume(i1 %i.xs)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i, %bb.fs, %bb.fv
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ts, i32 noundef 8230, i32 noundef 0, i64 noundef 0, i64 undef)
          to label %.noexc185.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2779

.noexc185.i:                                      ; preds = %.sink.split.i.i
  %i.xt = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc186.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2779 ; 2 uses

.noexc186.i:                                      ; preds = %.noexc185.i
  %i.xu = extractvalue { i64, i64 } %i.xt, 0
  %i.xv = trunc nuw i64 %i.xu to i1
  br i1 %i.xv, label %bb.fx, label %.invoke.i, !prof !8

.outer.i.i:                                       ; preds = %.noexc183.i
  %i.xw = add nuw i64 %.sroa.0.0.ph.i493.i, 1
  %i.xx = sub nuw i64 %.sroa.013.0.ph.i492.i, %i.xh
  br i1 %.not495.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread, label %bb.ff

bb.fw:                                            ; preds = %.noexc183.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #37
          to label %.noexc187.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2779

.noexc187.i:                                      ; preds = %bb.fw
  unreachable

bb.fx:                                            ; preds = %.noexc186.i
  %i.xy = extractvalue { i64, i64 } %i.xt, 1
  %i.xz = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.i492.i, i64 %i.xy)
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i: ; preds = %.loopexit.i178.i, %bb.fh, %bb.fm, %bb.fx
  %.sroa.013.2.i.i = phi i64 [ %i.xz, %bb.fx ], [ %.sroa.013.0.ph.i492.i, %bb.fm ], [ %.sroa.013.0.ph.i492.i, %bb.fh ], [ %.sroa.013.0.ph.i492.i, %.loopexit.i178.i ] ; 2 uses
  %i.ya = icmp ult i64 %i.ek, %.sroa.013.2.i.i
  br i1 %i.ya, label %.invoke.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread, !prof !2796

.invoke.i:                                        ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i, %.noexc186.i
  %i.yb = phi ptr [ @16, %.noexc186.i ], [ @17, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yb) #37
          to label %.cont.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2779

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread: ; preds = %.outer.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i
  %.sroa.013.2.i.i140 = phi i64 [ %.sroa.013.2.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i ], [ 0, %.outer.i.i ] ; 2 uses
  %i.yc = load ptr, ptr %.sroa.488.0..sroa_idx.i, align 8, !noalias !2753, !nonnull !5, !noundef !5 ; 2 uses
  %i.yd = load i64, ptr %.sroa.689.0..sroa_idx.i, align 8, !noalias !2753, !noundef !5
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %i.yd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2753
  store i8 0, ptr %i.r, align 1, !noalias !2753
  store i8 1, ptr %.sroa.454.0..sroa_idx.i, align 1, !noalias !2753
  store i16 0, ptr %.sroa.555.0..sroa_idx.i, align 1, !noalias !2753
  %i.yf = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCINvB2_9print_maxBJ_E0EB4_(i64 noundef 0, i64 undef, ptr noundef nonnull %i.yc, ptr noundef nonnull %i.ye, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.r, i64 noundef %.sroa.013.2.i.i140, i1 noundef zeroext false, ptr noalias nofree noundef align 8 dereferenceable(40) %i.ts)
          to label %bb.fy unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2779

bb.fy:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2753
  %i.yg = icmp ult i64 %.sroa.013.2.i.i140, %i.yf
  br i1 %i.yg, label %bb.gc, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i191.i unwind label %bb.ga, !noalias !2779

bb.ga:                                            ; preds = %bb.fz
  %i.yh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body192.i unwind label %bb.gb, !noalias !2779

bb.gb:                                            ; preds = %bb.ga
  %i.yi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2779
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i191.i: ; preds = %bb.fz
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit195.i unwind label %.loopexit.split-lp260.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2779

bb.gc:                                            ; preds = %bb.fy
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2871) #36
          to label %bb.ct unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2779

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit195.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i191.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2753
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.sink.split.sink.split.i unwind label %bb.gd, !noalias !2779

bb.gd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit195.i
  %i.yj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body unwind label %bb.ge, !noalias !2779

bb.ge:                                            ; preds = %bb.gd
  %i.yk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2779
  unreachable

.sink.split.sink.split.i:                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit195.i, %bb.es
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc73:                                         ; preds = %.sink.split.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2753
  br label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit

bb.gf:                                            ; preds = %bb.x
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2872, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2873) #37
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc74:                                         ; preds = %bb.gf
  unreachable

.split.i:                                         ; preds = %.outer.i, %.outer.split.i.split.us
  %.us-phi = phi i64 [ %.sroa.022.0.ph471.i604, %.outer.split.i.split.us ], [ %..i200.i, %.outer.i ] ; 4 uses
  %.us-phi590 = phi i64 [ %.sroa.025.0.ph470.i605, %.outer.split.i.split.us ], [ %..i201.i.a, %.outer.i ]
  %i.yl = add i64 %.us-phi590, %.us-phi           ; 2 uses
  %i.ym = icmp ult i64 %i.yl, %.us-phi
  br i1 %i.ym, label %.split483.us.i.invoke, label %bb.gg

bb.gg:                                            ; preds = %.split.i
  %i.yn = icmp ugt i64 %.us-phi, -3
  br i1 %i.yn, label %.split483.us.i.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i: ; preds = %bb.gg
  %..i199.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.yl) ; 2 uses
  %i.yo = add nuw i64 %.us-phi, 2                 ; 2 uses
  br i1 %i.dd, label %.outer.split.us.1.i, label %.outer.split.1.i.preheader

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread: ; preds = %.loopexit290.thread1043
  store i64 0, ptr %i.aw, align 8, !alias.scope !2752
  br i1 %i.dd, label %.outer.split.preheader.2.i, label %.outer.split.1.i.preheader

.outer.split.1.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i
  %i.yp = phi i64 [ 2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ], [ %i.yo, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ]
  %..i199.i1087 = phi i64 [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ], [ %..i199.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ]
  %.sroa.0.0.i207.fr810.i1052106710741083 = phi i64 [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ], [ %.sroa.0.0.i207.fr809.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ] ; 9 uses
  %i.yq = phi i64 [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ], [ %i.fg, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ]
  %.sroa.08.1.i1054106610751081 = phi i64 [ %spec.select1047, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ], [ %.sroa.08.1.i1056, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ]
  %exitcond.1.not.i16321637 = icmp eq i64 %.sroa.0.0.i207.fr810.i1052106710741083, 0
  br i1 %exitcond.1.not.i16321637, label %.split.1.i, label %.lr.ph

.lr.ph:                                           ; preds = %.outer.split.1.i.preheader, %.outer.1.i
  %umax.1.i1641 = phi i64 [ %umax.1.i, %.outer.1.i ], [ %.sroa.0.0.i207.fr810.i1052106710741083, %.outer.split.1.i.preheader ]
  %.sroa.060.0.ph469.1.i1640 = phi i64 [ %i.yt, %.outer.1.i ], [ 0, %.outer.split.1.i.preheader ]
  %.sroa.025.0.ph470.1.i1639 = phi i64 [ %..i201.1.i, %.outer.1.i ], [ 0, %.outer.split.1.i.preheader ] ; 2 uses
  %.sroa.022.0.ph471.1.i1638 = phi i64 [ %..i200.1.i, %.outer.1.i ], [ 0, %.outer.split.1.i.preheader ] ; 2 uses
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gj
  %exitcond.1.not.i = icmp eq i64 %i.yt, %umax.1.i1641
  br i1 %exitcond.1.not.i, label %.split.1.i, label %bb.gi

bb.gi:                                            ; preds = %.lr.ph, %bb.gh
  %.sroa.060.0.1.i1633 = phi i64 [ %.sroa.060.0.ph469.1.i1640, %.lr.ph ], [ %i.yt, %bb.gh ] ; 2 uses
  %i.yr = add i64 %.sroa.060.0.1.i1633, %.sroa.0.0.i207.fr810.i1052106710741083 ; 3 uses
  %i.ys = icmp ult i64 %i.yr, %.sroa.0.0.i207.fr810.i1052106710741083
  br i1 %i.ys, label %.split483.us.i.invoke, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.yt = add i64 %.sroa.060.0.1.i1633, 1         ; 5 uses
  %.not133.1.i = icmp ult i64 %i.yr, %i.cf
  br i1 %.not133.1.i, label %bb.gk, label %bb.gh

bb.gk:                                            ; preds = %bb.gj
  %i.yu = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.yr ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 136
  %i.yw = load i64, ptr %i.yv, align 8, !alias.scope !2751, !noundef !5 ; 3 uses
  %i.yx = icmp eq i64 %i.yw, 0
  %..1.i = select i1 %i.yx, i64 0, i64 4
  %i.yy = add i64 %..1.i, %i.yw                   ; 2 uses
  %i.yz = icmp ult i64 %i.yy, %i.yw
  br i1 %i.yz, label %.split483.us.i.invoke, label %.outer.1.i

.outer.1.i:                                       ; preds = %bb.gk
  %i.za = getelementptr inbounds nuw i8, ptr %i.yu, i64 128
  %i.zb = load i64, ptr %i.za, align 8, !alias.scope !2751, !noundef !5
  %..i200.1.i = call noundef i64 @llvm.umax.i64(i64 %i.zb, i64 %.sroa.022.0.ph471.1.i1638) ; 2 uses
  %..i201.1.i = call noundef i64 @llvm.umax.i64(i64 %i.yy, i64 %.sroa.025.0.ph470.1.i1639) ; 2 uses
  %umax.1.i = call i64 @llvm.umax.i64(i64 %i.yt, i64 %.sroa.0.0.i207.fr810.i1052106710741083)
  %exitcond.1.not.i1632.not = icmp ult i64 %i.yt, %.sroa.0.0.i207.fr810.i1052106710741083
  br i1 %exitcond.1.not.i1632.not, label %.lr.ph, label %.split.1.i

.outer.split.us.1.i:                              ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i
  %.not.1.i = icmp eq i64 %.sroa.0.0.i207.fr809.i, 0
  br i1 %.not.1.i, label %.outer.split.preheader.2.i, label %.split459.us.i.invoke

.split.1.i:                                       ; preds = %.outer.1.i, %bb.gh, %.outer.split.1.i.preheader
  %.sroa.022.0.ph471.1.i.lcssa = phi i64 [ %.sroa.022.0.ph471.1.i1638, %bb.gh ], [ 0, %.outer.split.1.i.preheader ], [ %..i200.1.i, %.outer.1.i ] ; 4 uses
  %.sroa.025.0.ph470.1.i.lcssa = phi i64 [ %.sroa.025.0.ph470.1.i1639, %bb.gh ], [ 0, %.outer.split.1.i.preheader ], [ %..i201.1.i, %.outer.1.i ]
  %i.zc = add i64 %.sroa.025.0.ph470.1.i.lcssa, %.sroa.022.0.ph471.1.i.lcssa ; 2 uses
  %i.zd = icmp ult i64 %i.zc, %.sroa.022.0.ph471.1.i.lcssa
  br i1 %i.zd, label %.split483.us.i.invoke, label %bb.gl

bb.gl:                                            ; preds = %.split.1.i
  %i.ze = icmp ugt i64 %.sroa.022.0.ph471.1.i.lcssa, -3
  br i1 %i.ze, label %.split483.us.i.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i: ; preds = %bb.gl
  %..i199.1.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.zc)
  %i.zf = add nuw i64 %.sroa.022.0.ph471.1.i.lcssa, 2
  %i.zg = icmp slt i64 %.sroa.0.0.i207.fr810.i1052106710741083, 0
  %i.zh = shl nuw i64 %.sroa.0.0.i207.fr810.i1052106710741083, 1
  br i1 %i.zg, label %.split459.us.i.invoke, label %.outer.split.preheader.2.i

.outer.split.preheader.2.i:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i, %.outer.split.us.1.i
  %i.zi = phi i64 [ %i.yp, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ %i.yo, %.outer.split.us.1.i ], [ 2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ]
  %..i199.i1086 = phi i64 [ %..i199.i1087, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ %..i199.i, %.outer.split.us.1.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ] ; 3 uses
  %.sroa.0.0.i207.fr810.i1052106710741084 = phi i64 [ %.sroa.0.0.i207.fr810.i1052106710741083, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ 0, %.outer.split.us.1.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ] ; 25 uses
  %i.zj = phi i64 [ %i.yq, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ %i.fg, %.outer.split.us.1.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ]
  %.sroa.08.1.i1054106610751080 = phi i64 [ %.sroa.08.1.i1054106610751081, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ %.sroa.08.1.i1056, %.outer.split.us.1.i ], [ %spec.select1047, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ] ; 4 uses
  %i.zk = phi i64 [ %i.zh, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ 0, %.outer.split.us.1.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ] ; 2 uses
  %i.zl = phi i64 [ %i.zf, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ 2, %.outer.split.us.1.i ], [ 2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ]
  %..i199.1820.i = phi i64 [ %..i199.1.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ 0, %.outer.split.us.1.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ] ; 2 uses
  %exitcond.2.not.i16441651 = icmp eq i64 %.sroa.0.0.i207.fr810.i1052106710741084, 0
  br i1 %exitcond.2.not.i16441651, label %.split.2.i, label %.lr.ph1646

.lr.ph1646:                                       ; preds = %.outer.split.preheader.2.i, %.outer.2.i
  %umax.2.i1655 = phi i64 [ %umax.2.i, %.outer.2.i ], [ %.sroa.0.0.i207.fr810.i1052106710741084, %.outer.split.preheader.2.i ]
  %.sroa.060.0.ph469.2.i1654 = phi i64 [ %i.zo, %.outer.2.i ], [ 0, %.outer.split.preheader.2.i ]
  %.sroa.025.0.ph470.2.i1653 = phi i64 [ %..i201.2.i, %.outer.2.i ], [ 0, %.outer.split.preheader.2.i ] ; 2 uses
  %.sroa.022.0.ph471.2.i1652 = phi i64 [ %..i200.2.i, %.outer.2.i ], [ 0, %.outer.split.preheader.2.i ] ; 2 uses
  br label %bb.gn

bb.gm:                                            ; preds = %bb.go
  %exitcond.2.not.i = icmp eq i64 %i.zo, %umax.2.i1655
  br i1 %exitcond.2.not.i, label %.split.2.i, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph1646, %bb.gm
  %.sroa.060.0.2.i1645 = phi i64 [ %.sroa.060.0.ph469.2.i1654, %.lr.ph1646 ], [ %i.zo, %bb.gm ] ; 2 uses
  %i.zm = add i64 %.sroa.060.0.2.i1645, %i.zk     ; 3 uses
  %i.zn = icmp ult i64 %i.zm, %i.zk
  br i1 %i.zn, label %.split483.us.i.invoke, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.zo = add i64 %.sroa.060.0.2.i1645, 1         ; 5 uses
  %.not133.2.i = icmp ult i64 %i.zm, %i.cf
  br i1 %.not133.2.i, label %bb.gp, label %bb.gm

bb.gp:                                            ; preds = %bb.go
  %i.zp = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.zm ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 136
  %i.zr = load i64, ptr %i.zq, align 8, !alias.scope !2751, !noundef !5 ; 3 uses
  %i.zs = icmp eq i64 %i.zr, 0
  %..2.i = select i1 %i.zs, i64 0, i64 4
  %i.zt = add i64 %..2.i, %i.zr                   ; 2 uses
  %i.zu = icmp ult i64 %i.zt, %i.zr
  br i1 %i.zu, label %.split483.us.i.invoke, label %.outer.2.i

.outer.2.i:                                       ; preds = %bb.gp
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zp, i64 128
  %i.zw = load i64, ptr %i.zv, align 8, !alias.scope !2751, !noundef !5
  %..i200.2.i = call noundef i64 @llvm.umax.i64(i64 %i.zw, i64 %.sroa.022.0.ph471.2.i1652) ; 2 uses
  %..i201.2.i = call noundef i64 @llvm.umax.i64(i64 %i.zt, i64 %.sroa.025.0.ph470.2.i1653) ; 2 uses
  %umax.2.i = call i64 @llvm.umax.i64(i64 %i.zo, i64 %.sroa.0.0.i207.fr810.i1052106710741084)
  %exitcond.2.not.i1644.not = icmp ult i64 %i.zo, %.sroa.0.0.i207.fr810.i1052106710741084
  br i1 %exitcond.2.not.i1644.not, label %.lr.ph1646, label %.split.2.i

.split.2.i:                                       ; preds = %.outer.2.i, %bb.gm, %.outer.split.preheader.2.i
  %.sroa.022.0.ph471.2.i.lcssa = phi i64 [ %.sroa.022.0.ph471.2.i1652, %bb.gm ], [ 0, %.outer.split.preheader.2.i ], [ %..i200.2.i, %.outer.2.i ] ; 4 uses
  %.sroa.025.0.ph470.2.i.lcssa = phi i64 [ %.sroa.025.0.ph470.2.i1653, %bb.gm ], [ 0, %.outer.split.preheader.2.i ], [ %..i201.2.i, %.outer.2.i ]
  %i.zx = add i64 %.sroa.025.0.ph470.2.i.lcssa, %.sroa.022.0.ph471.2.i.lcssa ; 2 uses
  %i.zy = icmp ult i64 %i.zx, %.sroa.022.0.ph471.2.i.lcssa
  br i1 %i.zy, label %.split483.us.i.invoke, label %bb.gq

bb.gq:                                            ; preds = %.split.2.i
  %i.zz = icmp ugt i64 %.sroa.022.0.ph471.2.i.lcssa, -3
  br i1 %i.zz, label %.split483.us.i.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i: ; preds = %bb.gq
  %..i199.2.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.zx) ; 2 uses
  %i.aaa = add nuw i64 %.sroa.022.0.ph471.2.i.lcssa, 2
  %i.aab = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i207.fr810.i1052106710741084, i64 3) ; 2 uses
  %i.aac = extractvalue { i64, i1 } %i.aab, 1
  %i.aad = extractvalue { i64, i1 } %i.aab, 0     ; 2 uses
  br i1 %i.aac, label %.split459.us.i.invoke, label %.outer.split.3.i.preheader

.outer.split.3.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i
  %exitcond.3.not.i16581665 = icmp eq i64 %.sroa.0.0.i207.fr810.i1052106710741084, 0
  br i1 %exitcond.3.not.i16581665, label %.split.3.i, label %.lr.ph1660

.lr.ph1660:                                       ; preds = %.outer.split.3.i.preheader, %.outer.3.i
  %umax.3.i1669 = phi i64 [ %umax.3.i, %.outer.3.i ], [ %.sroa.0.0.i207.fr810.i1052106710741084, %.outer.split.3.i.preheader ]
  %.sroa.060.0.ph469.3.i1668 = phi i64 [ %i.aag, %.outer.3.i ], [ 0, %.outer.split.3.i.preheader ]
  %.sroa.025.0.ph470.3.i1667 = phi i64 [ %..i201.3.i, %.outer.3.i ], [ 0, %.outer.split.3.i.preheader ] ; 2 uses
  %.sroa.022.0.ph471.3.i1666 = phi i64 [ %..i200.3.i, %.outer.3.i ], [ 0, %.outer.split.3.i.preheader ] ; 2 uses
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gt
  %exitcond.3.not.i = icmp eq i64 %i.aag, %umax.3.i1669
  br i1 %exitcond.3.not.i, label %.split.3.i, label %bb.gs

bb.gs:                                            ; preds = %.lr.ph1660, %bb.gr
  %.sroa.060.0.3.i1659 = phi i64 [ %.sroa.060.0.ph469.3.i1668, %.lr.ph1660 ], [ %i.aag, %bb.gr ] ; 2 uses
  %i.aae = add i64 %.sroa.060.0.3.i1659, %i.aad   ; 3 uses
  %i.aaf = icmp ult i64 %i.aae, %i.aad
  br i1 %i.aaf, label %.split483.us.i.invoke, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.aag = add i64 %.sroa.060.0.3.i1659, 1        ; 5 uses
  %.not133.3.i = icmp ult i64 %i.aae, %i.cf
  br i1 %.not133.3.i, label %bb.gu, label %bb.gr

bb.gu:                                            ; preds = %bb.gt
  %i.aah = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.aae ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 136
  %i.aaj = load i64, ptr %i.aai, align 8, !alias.scope !2751, !noundef !5 ; 3 uses
  %i.aak = icmp eq i64 %i.aaj, 0
  %..3.i = select i1 %i.aak, i64 0, i64 4
  %i.aal = add i64 %..3.i, %i.aaj                 ; 2 uses
  %i.aam = icmp ult i64 %i.aal, %i.aaj
  br i1 %i.aam, label %.split483.us.i.invoke, label %.outer.3.i

.outer.3.i:                                       ; preds = %bb.gu
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aah, i64 128
  %i.aao = load i64, ptr %i.aan, align 8, !alias.scope !2751, !noundef !5
  %..i200.3.i = call noundef i64 @llvm.umax.i64(i64 %i.aao, i64 %.sroa.022.0.ph471.3.i1666) ; 2 uses
  %..i201.3.i = call noundef i64 @llvm.umax.i64(i64 %i.aal, i64 %.sroa.025.0.ph470.3.i1667) ; 2 uses
  %umax.3.i = call i64 @llvm.umax.i64(i64 %i.aag, i64 %.sroa.0.0.i207.fr810.i1052106710741084)
  %exitcond.3.not.i1658.not = icmp ult i64 %i.aag, %.sroa.0.0.i207.fr810.i1052106710741084
  br i1 %exitcond.3.not.i1658.not, label %.lr.ph1660, label %.split.3.i

.split.3.i:                                       ; preds = %.outer.3.i, %bb.gr, %.outer.split.3.i.preheader
  %.sroa.022.0.ph471.3.i.lcssa = phi i64 [ %.sroa.022.0.ph471.3.i1666, %bb.gr ], [ 0, %.outer.split.3.i.preheader ], [ %..i200.3.i, %.outer.3.i ] ; 4 uses
  %.sroa.025.0.ph470.3.i.lcssa = phi i64 [ %.sroa.025.0.ph470.3.i1667, %bb.gr ], [ 0, %.outer.split.3.i.preheader ], [ %..i201.3.i, %.outer.3.i ]
  %i.aap = add i64 %.sroa.025.0.ph470.3.i.lcssa, %.sroa.022.0.ph471.3.i.lcssa ; 2 uses
  %i.aaq = icmp ult i64 %i.aap, %.sroa.022.0.ph471.3.i.lcssa
  br i1 %i.aaq, label %.split483.us.i.invoke, label %bb.gv

bb.gv:                                            ; preds = %.split.3.i
  %i.aar = icmp ugt i64 %.sroa.022.0.ph471.3.i.lcssa, -3
  br i1 %i.aar, label %.split483.us.i.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i: ; preds = %bb.gv
  %..i199.3.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.aap) ; 2 uses
  %i.aas = add nuw i64 %.sroa.022.0.ph471.3.i.lcssa, 2
  %i.aat = icmp samesign ugt i64 %.sroa.0.0.i207.fr810.i1052106710741084, 4611686018427387903
  %i.aau = shl nuw i64 %.sroa.0.0.i207.fr810.i1052106710741084, 2 ; 2 uses
  br i1 %i.aat, label %.split459.us.i.invoke, label %.outer.split.4.i.preheader

.outer.split.4.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i
  %exitcond.4.not.i16721679 = icmp eq i64 %.sroa.0.0.i207.fr810.i1052106710741084, 0
  br i1 %exitcond.4.not.i16721679, label %.split.4.i, label %.lr.ph1674

.lr.ph1674:                                       ; preds = %.outer.split.4.i.preheader, %.outer.4.i
  %umax.4.i1683 = phi i64 [ %umax.4.i, %.outer.4.i ], [ %.sroa.0.0.i207.fr810.i1052106710741084, %.outer.split.4.i.preheader ]
  %.sroa.060.0.ph469.4.i1682 = phi i64 [ %i.aax, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ]
  %.sroa.025.0.ph470.4.i1681 = phi i64 [ %..i201.4.i, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ] ; 2 uses
  %.sroa.022.0.ph471.4.i1680 = phi i64 [ %..i200.4.i, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ] ; 2 uses
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gy
  %exitcond.4.not.i = icmp eq i64 %i.aax, %umax.4.i1683
  br i1 %exitcond.4.not.i, label %.split.4.i, label %bb.gx

bb.gx:                                            ; preds = %.lr.ph1674, %bb.gw
  %.sroa.060.0.4.i1673 = phi i64 [ %.sroa.060.0.ph469.4.i1682, %.lr.ph1674 ], [ %i.aax, %bb.gw ] ; 2 uses
  %i.aav = add i64 %.sroa.060.0.4.i1673, %i.aau   ; 3 uses
  %i.aaw = icmp ult i64 %i.aav, %i.aau
  br i1 %i.aaw, label %.split483.us.i.invoke, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.aax = add i64 %.sroa.060.0.4.i1673, 1        ; 5 uses
  %.not133.4.i = icmp ult i64 %i.aav, %i.cf
  br i1 %.not133.4.i, label %bb.gz, label %bb.gw

bb.gz:                                            ; preds = %bb.gy
  %i.aay = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.aav ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 136
  %i.aba = load i64, ptr %i.aaz, align 8, !alias.scope !2751, !noundef !5 ; 3 uses
  %i.abb = icmp eq i64 %i.aba, 0
  %..4.i = select i1 %i.abb, i64 0, i64 4
  %i.abc = add i64 %..4.i, %i.aba                 ; 2 uses
  %i.abd = icmp ult i64 %i.abc, %i.aba
  br i1 %i.abd, label %.split483.us.i.invoke, label %.outer.4.i

.outer.4.i:                                       ; preds = %bb.gz
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aay, i64 128
  %i.abf = load i64, ptr %i.abe, align 8, !alias.scope !2751, !noundef !5
  %..i200.4.i = call noundef i64 @llvm.umax.i64(i64 %i.abf, i64 %.sroa.022.0.ph471.4.i1680) ; 2 uses
  %..i201.4.i = call noundef i64 @llvm.umax.i64(i64 %i.abc, i64 %.sroa.025.0.ph470.4.i1681) ; 2 uses
  %umax.4.i = call i64 @llvm.umax.i64(i64 %i.aax, i64 %.sroa.0.0.i207.fr810.i1052106710741084)
  %exitcond.4.not.i1672.not = icmp ult i64 %i.aax, %.sroa.0.0.i207.fr810.i1052106710741084
  br i1 %exitcond.4.not.i1672.not, label %.lr.ph1674, label %.split.4.i

.split.4.i:                                       ; preds = %.outer.4.i, %bb.gw, %.outer.split.4.i.preheader
  %.sroa.022.0.ph471.4.i.lcssa = phi i64 [ %.sroa.022.0.ph471.4.i1680, %bb.gw ], [ 0, %.outer.split.4.i.preheader ], [ %..i200.4.i, %.outer.4.i ] ; 4 uses
  %.sroa.025.0.ph470.4.i.lcssa = phi i64 [ %.sroa.025.0.ph470.4.i1681, %bb.gw ], [ 0, %.outer.split.4.i.preheader ], [ %..i201.4.i, %.outer.4.i ]
  %i.abg = add i64 %.sroa.025.0.ph470.4.i.lcssa, %.sroa.022.0.ph471.4.i.lcssa ; 2 uses
  %i.abh = icmp ult i64 %i.abg, %.sroa.022.0.ph471.4.i.lcssa
  br i1 %i.abh, label %.split483.us.i.invoke, label %bb.ha

bb.ha:                                            ; preds = %.split.4.i
  %i.abi = icmp ugt i64 %.sroa.022.0.ph471.4.i.lcssa, -3
  br i1 %i.abi, label %.split483.us.i.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i: ; preds = %bb.ha
  %..i199.4.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.abg) ; 2 uses
  %i.abj = add nuw i64 %.sroa.022.0.ph471.4.i.lcssa, 2
  %i.abk = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i207.fr810.i1052106710741084, i64 5) ; 2 uses
  %i.abl = extractvalue { i64, i1 } %i.abk, 1
  %i.abm = extractvalue { i64, i1 } %i.abk, 0     ; 2 uses
  br i1 %i.abl, label %.split459.us.i.invoke, label %.outer.split.5.i.preheader

.outer.split.5.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i
  %exitcond.5.not.i16861693 = icmp eq i64 %.sroa.0.0.i207.fr810.i1052106710741084, 0
  br i1 %exitcond.5.not.i16861693, label %.split.5.i, label %.lr.ph1688

.lr.ph1688:                                       ; preds = %.outer.split.5.i.preheader, %.outer.5.i
  %umax.5.i1697 = phi i64 [ %umax.5.i, %.outer.5.i ], [ %.sroa.0.0.i207.fr810.i1052106710741084, %.outer.split.5.i.preheader ]
  %.sroa.060.0.ph469.5.i1696 = phi i64 [ %i.abp, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ]
  %.sroa.025.0.ph470.5.i1695 = phi i64 [ %..i201.5.i, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ] ; 2 uses
  %.sroa.022.0.ph471.5.i1694 = phi i64 [ %..i200.5.i, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ] ; 2 uses
  br label %bb.hc

bb.hb:                                            ; preds = %bb.hd
  %exitcond.5.not.i = icmp eq i64 %i.abp, %umax.5.i1697
  br i1 %exitcond.5.not.i, label %.split.5.i, label %bb.hc

bb.hc:                                            ; preds = %.lr.ph1688, %bb.hb
  %.sroa.060.0.5.i1687 = phi i64 [ %.sroa.060.0.ph469.5.i1696, %.lr.ph1688 ], [ %i.abp, %bb.hb ] ; 2 uses
  %i.abn = add i64 %.sroa.060.0.5.i1687, %i.abm   ; 3 uses
  %i.abo = icmp ult i64 %i.abn, %i.abm
  br i1 %i.abo, label %.split483.us.i.invoke, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.abp = add i64 %.sroa.060.0.5.i1687, 1        ; 5 uses
  %.not133.5.i = icmp ult i64 %i.abn, %i.cf
  br i1 %.not133.5.i, label %bb.he, label %bb.hb

bb.he:                                            ; preds = %bb.hd
  %i.abq = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.abn ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 136
  %i.abs = load i64, ptr %i.abr, align 8, !alias.scope !2751, !noundef !5 ; 3 uses
  %i.abt = icmp eq i64 %i.abs, 0
  %..5.i = select i1 %i.abt, i64 0, i64 4
  %i.abu = add i64 %..5.i, %i.abs                 ; 2 uses
  %i.abv = icmp ult i64 %i.abu, %i.abs
  br i1 %i.abv, label %.split483.us.i.invoke, label %.outer.5.i

.outer.5.i:                                       ; preds = %bb.he
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abq, i64 128
  %i.abx = load i64, ptr %i.abw, align 8, !alias.scope !2751, !noundef !5
  %..i200.5.i = call noundef i64 @llvm.umax.i64(i64 %i.abx, i64 %.sroa.022.0.ph471.5.i1694) ; 2 uses
  %..i201.5.i = call noundef i64 @llvm.umax.i64(i64 %i.abu, i64 %.sroa.025.0.ph470.5.i1695) ; 2 uses
  %umax.5.i = call i64 @llvm.umax.i64(i64 %i.abp, i64 %.sroa.0.0.i207.fr810.i1052106710741084)
  %exitcond.5.not.i1686.not = icmp ult i64 %i.abp, %.sroa.0.0.i207.fr810.i1052106710741084
  br i1 %exitcond.5.not.i1686.not, label %.lr.ph1688, label %.split.5.i

.split.5.i:                                       ; preds = %.outer.5.i, %bb.hb, %.outer.split.5.i.preheader
  %.sroa.022.0.ph471.5.i.lcssa = phi i64 [ %.sroa.022.0.ph471.5.i1694, %bb.hb ], [ 0, %.outer.split.5.i.preheader ], [ %..i200.5.i, %.outer.5.i ] ; 4 uses
  %.sroa.025.0.ph470.5.i.lcssa = phi i64 [ %.sroa.025.0.ph470.5.i1695, %bb.hb ], [ 0, %.outer.split.5.i.preheader ], [ %..i201.5.i, %.outer.5.i ]
  %i.aby = add i64 %.sroa.025.0.ph470.5.i.lcssa, %.sroa.022.0.ph471.5.i.lcssa ; 2 uses
  %i.abz = icmp ult i64 %i.aby, %.sroa.022.0.ph471.5.i.lcssa
  br i1 %i.abz, label %.split483.us.i.invoke, label %bb.hf

bb.hf:                                            ; preds = %.split.5.i
  %i.aca = icmp ugt i64 %.sroa.022.0.ph471.5.i.lcssa, -3
  br i1 %i.aca, label %.split483.us.i.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i

.outer.i:                                         ; preds = %.split.us
  %i.acb = add i64 %.sroa.060.0.ph469.i606, 1     ; 3 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acf, i64 128
  %i.acd = load i64, ptr %i.acc, align 8, !alias.scope !2751, !noundef !5
  %..i200.i = call noundef i64 @llvm.umax.i64(i64 %i.acd, i64 %.sroa.022.0.ph471.i604) ; 2 uses
  %..i201.i.a = call noundef i64 @llvm.umax.i64(i64 %i.acj, i64 %.sroa.025.0.ph470.i605) ; 2 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %i.acb, i64 %.sroa.0.0.i207.fr809.i)
  %.not133.i = icmp ult i64 %i.acb, %i.cf
  %.not133.i.fr = freeze i1 %.not133.i
  br i1 %.not133.i.fr, label %.outer.split.i.split.us, label %.split.i

.split459.us.i.invoke:                            ; preds = %.outer.split.us.1.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i, %bb.af
  %i.ace = phi ptr [ @2856, %bb.af ], [ @2859, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ @2876, %.outer.split.us.1.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ace) #37
          to label %.split459.us.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split459.us.i.cont:                              ; preds = %.split459.us.i.invoke
  unreachable

.outer.split.i.split.us:                          ; preds = %.outer.split.i.split.us.preheader, %.outer.i
  %umax.i607 = phi i64 [ %umax.i, %.outer.i ], [ %.sroa.0.0.i207.fr809.i, %.outer.split.i.split.us.preheader ]
  %.sroa.060.0.ph469.i606 = phi i64 [ %i.acb, %.outer.i ], [ 0, %.outer.split.i.split.us.preheader ] ; 3 uses
  %.sroa.025.0.ph470.i605 = phi i64 [ %..i201.i.a, %.outer.i ], [ 0, %.outer.split.i.split.us.preheader ] ; 2 uses
  %.sroa.022.0.ph471.i604 = phi i64 [ %..i200.i, %.outer.i ], [ 0, %.outer.split.i.split.us.preheader ] ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %.sroa.060.0.ph469.i606, %umax.i607
  br i1 %exitcond.not.i.us, label %.split.i, label %.split.us

.split.us:                                        ; preds = %.outer.split.i.split.us
  %i.acf = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %.sroa.060.0.ph469.i606 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 136
  %i.ach = load i64, ptr %i.acg, align 8, !alias.scope !2751, !noundef !5 ; 3 uses
  %i.aci = icmp eq i64 %i.ach, 0
  %..i53 = select i1 %i.aci, i64 0, i64 4
  %i.acj = add i64 %..i53, %i.ach                 ; 2 uses
  %i.ack = icmp ult i64 %i.acj, %i.ach
  br i1 %i.ack, label %.split483.us.i.invoke, label %.outer.i

.split483.us.i.invoke:                            ; preds = %bb.gg, %bb.gl, %bb.gq, %bb.gv, %bb.ha, %bb.hf, %.split.i, %.split.1.i, %.split.2.i, %.split.3.i, %.split.4.i, %.split.5.i, %bb.u, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i, %.split.us, %bb.gk, %bb.gp, %bb.gu, %bb.gz, %bb.he, %bb.gi, %bb.gn, %bb.gs, %bb.gx, %bb.hc, %bb.ag, %bb.ae
  %i.acl = phi ptr [ @2877, %bb.gp ], [ @2876, %bb.hc ], [ @2856, %bb.ag ], [ @2876, %bb.gs ], [ @2876, %bb.gx ], [ @2877, %.split.us ], [ @2877, %bb.gk ], [ @2877, %bb.gz ], [ @2877, %bb.he ], [ @2876, %bb.gi ], [ @2876, %bb.gn ], [ @2877, %bb.gu ], [ @3129, %bb.ae ], [ @2860, %bb.u ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i ], [ @2874, %.split.5.i ], [ @2874, %.split.4.i ], [ @2874, %.split.3.i ], [ @2874, %.split.2.i ], [ @2874, %.split.1.i ], [ @2875, %bb.hf ], [ @2875, %bb.ha ], [ @2875, %bb.gv ], [ @2875, %bb.gq ], [ @2875, %bb.gl ], [ @2875, %bb.gg ], [ @2874, %.split.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acl) #37
          to label %.split483.us.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split483.us.i.cont:                              ; preds = %.split483.us.i.invoke
  unreachable

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit: ; preds = %bb.x, %.noexc73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2753
  %.not.i = icmp eq i64 %i.eo, 0
  %or.cond = select i1 %.not.i55.not, i1 true, i1 %.not.i
  br i1 %or.cond, label %.thread, label %.backedge782.backedge

bb.hg:                                            ; preds = %.body
  %i.acm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.hh:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 8, 121) %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val15 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val16 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = add i64 %.val16, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val15, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val15, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val15, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg11 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg11 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.k, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !5 ; 6 uses
  %.sroa.0.07.i = and i64 %.val14, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !2799
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !12

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i18 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i18 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val14                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !5
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.g:                                             ; preds = %._crit_edge.i17
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i18:                                       ; preds = %bb.f, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i18 ], [ 0, %bb.f ]
end_hunk_1
