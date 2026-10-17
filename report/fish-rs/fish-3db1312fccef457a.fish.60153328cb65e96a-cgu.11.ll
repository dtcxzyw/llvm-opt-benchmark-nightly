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
  %.not499 = xor i1 %i.cl, true
  %brmerge = select i1 %.not499, i1 true, i1 %i.cm ; 2 uses
  %brmerge501 = select i1 %brmerge, i1 true, i1 %.not2.i.i
  %.mux.mux = select i1 %i.cl, i64 %i.ck, i64 0
  %.mux500.mux = select i1 %brmerge, i64 %i.ci, i64 1
  %spec.select = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %spec.select800 = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %spec.select807 = select i1 %i.db, i64 %i.cy, i64 %..i137.i ; 2 uses
  %not.796 = xor i1 %i.cl, true
  %i.el = select i1 %not.796, i1 true, i1 %i.cm
  %invariant.op = sub i8 20, %.val.i143.i
  %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 2
  %.sroa.0.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 3
  %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  br label %.backedge541

.backedge541:                                     ; preds = %.backedge541.backedge, %bb.i
  %.sroa.4.0498 = phi i64 [ 6, %bb.i ], [ %i.eo, %.backedge541.backedge ] ; 13 uses
  %i.eo = add i64 %.sroa.4.0498, -1               ; 5 uses
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish6screenNtB4_10ScreenData11clear_lines(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.av)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.thread:                                          ; preds = %.loopexit176.thread803, %.loopexit176.thread, %.loopexit176, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.al, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  ret void

bb.j:                                             ; preds = %.backedge541
  call void @llvm.assume(i1 %i.cg)
  br i1 %i.ch, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ep = urem i64 %i.cf, %.sroa.4.0498
  %.not.i43 = icmp ne i64 %i.ep, 0
  %i.eq = udiv i64 %i.cf, %.sroa.4.0498
  %..i = zext i1 %.not.i43 to i64
  %i.er = add nuw nsw i64 %i.eq, %..i             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %i.er, ptr %i.ah, align 8
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @31, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2943) #37
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.et = urem i64 %i.cf, %i.er
  %.not.i46 = icmp ne i64 %i.et, 0
  %i.eu = udiv i64 %i.cf, %i.er
  %..i47 = zext i1 %.not.i46 to i64
  %i.ev = add nuw nsw i64 %i.eu, %..i47           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.not = icmp ugt i64 %i.ev, %.sroa.4.0498
  br i1 %.not, label %bb.n, label %.thread129, !prof !2750

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2919, i64 noundef 52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2920) #36
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.j
  %.not142 = icmp eq i64 %.sroa.4.0498, 1
  br i1 %.not142, label %.loopexit176.thread803, label %.backedge541.backedge

.thread129:                                       ; preds = %bb.m
  %i.ew = icmp ne i64 %.sroa.4.0498, 1
  %i.ex = icmp ult i64 %i.ev, %.sroa.4.0498
  %or.cond132 = and i1 %i.ew, %i.ex
  br i1 %or.cond132, label %.backedge541.backedge, label %bb.q

.backedge541.backedge:                            ; preds = %.thread129, %bb.o, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit
  br label %.backedge541

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %.thread129
  store i64 %.sroa.4.0498, ptr %i.aq, align 8
  store i64 %i.er, ptr %i.ap, align 8
  br i1 %brmerge501, label %.loopexit176.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.sroa.0.03.i.i = phi i64 [ %i.ey, %bb.r ], [ %i.ck, %bb.q ] ; 2 uses
  %.not6.i.i = icmp ult i64 %.sroa.0.03.i.i, %i.er
  br i1 %.not6.i.i, label %.loopexit176, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.ey = sub nuw i64 %.sroa.0.03.i.i, %i.er      ; 3 uses
  %.not.i.i = icmp ult i64 %i.ey, %i.cf
  br i1 %.not.i.i, label %.loopexit176, label %.lr.ph.i.i

.loopexit176:                                     ; preds = %bb.r, %.lr.ph.i.i
  %.sroa.7.0.i = phi i64 [ %i.cn, %.lr.ph.i.i ], [ %i.ey, %bb.r ]
  store i64 1, ptr %i.at, align 8
  store i64 %.sroa.7.0.i, ptr %i.au, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2751)
  call void @llvm.experimental.noalias.scope.decl(metadata !2752)
  br i1 %or.cond.i, label %.thread, label %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i

.loopexit176.thread803:                           ; preds = %bb.o
  store i64 1, ptr %i.aq, align 8
  store i64 0, ptr %i.ap, align 8
  store i64 0, ptr %i.at, align 8
  br i1 %or.cond.i, label %.thread, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread

.loopexit176.thread:                              ; preds = %bb.q
  store i64 %.mux500.mux, ptr %i.at, align 8
  store i64 %.mux.mux, ptr %i.au, align 8
  br i1 %or.cond.i, label %.thread, label %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i

_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i: ; preds = %.loopexit176, %.loopexit176.thread
  %spec.select801 = phi i64 [ %spec.select800, %.loopexit176.thread ], [ %spec.select, %.loopexit176 ] ; 5 uses
  %i.ez = urem i64 %i.cf, %.sroa.4.0498
  %.not.i.i52 = icmp ne i64 %i.ez, 0
  %i.fa = udiv i64 %i.cf, %.sroa.4.0498
  %..i138.i = zext i1 %.not.i.i52 to i64
  %i.fb = add nuw nsw i64 %i.fa, %..i138.i
  %.sroa.0.0.i207.fr677.i = freeze i64 %i.fb      ; 6 uses
  %i.fc = icmp ule i64 %.sroa.0.0.i207.fr677.i, %spec.select801
  %or.cond4.not.i = select i1 %i.db, i1 true, i1 %i.fc
  br i1 %or.cond4.not.i, label %.outer.split.i.split.us.preheader.sink.split, label %bb.s

bb.s:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i
  %i.fd = sub nuw nsw i64 %.sroa.0.0.i207.fr677.i, %spec.select801 ; 3 uses
  store i64 %i.fd, ptr %i.aw, align 8, !alias.scope !2752
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.t, label %.outer.split.i.split.us.preheader

bb.t:                                             ; preds = %bb.s
  %i.ff = add nuw nsw i64 %spec.select801, 1
  br label %.outer.split.i.split.us.preheader.sink.split

.outer.split.i.split.us.preheader.sink.split:     ; preds = %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i, %bb.t
  %.sroa.08.1.i816.ph = phi i64 [ %i.ff, %bb.t ], [ %spec.select801, %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i ]
  store i64 0, ptr %i.aw, align 8, !alias.scope !2752
  br label %.outer.split.i.split.us.preheader

.outer.split.i.split.us.preheader:                ; preds = %.outer.split.i.split.us.preheader.sink.split, %bb.s
  %.sroa.08.1.i816 = phi i64 [ %spec.select801, %bb.s ], [ %.sroa.08.1.i816.ph, %.outer.split.i.split.us.preheader.sink.split ] ; 2 uses
  %i.fg = phi i64 [ %i.fd, %bb.s ], [ 0, %.outer.split.i.split.us.preheader.sink.split ] ; 2 uses
  br label %.outer.split.i.split.us

.invoke:                                          ; preds = %bb.gj, %bb.go, %bb.gt, %bb.gy, %bb.hd, %bb.hi, %.split.i, %.split.1.i, %.split.2.i, %.split.3.i, %.split.4.i, %.split.5.i, %bb.u, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i, %.split.us, %bb.gn, %bb.gs, %bb.gx, %bb.hc, %bb.hh, %bb.gl, %bb.gq, %bb.gv, %bb.ha, %bb.hf, %bb.ag, %bb.ae
  %i.fh = phi ptr [ @2877, %bb.gs ], [ @2876, %bb.hf ], [ @3129, %bb.ae ], [ @2876, %bb.gv ], [ @2876, %bb.ha ], [ @2877, %.split.us ], [ @2877, %bb.gn ], [ @2877, %bb.hc ], [ @2877, %bb.hh ], [ @2876, %bb.gl ], [ @2876, %bb.gq ], [ @2877, %bb.gx ], [ @2856, %bb.ag ], [ @2874, %.split.i ], [ @2875, %bb.gj ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i ], [ @2874, %.split.5.i ], [ @2874, %.split.4.i ], [ @2874, %.split.3.i ], [ @2874, %.split.2.i ], [ @2874, %.split.1.i ], [ @2875, %bb.hi ], [ @2875, %bb.hd ], [ @2875, %bb.gy ], [ @2875, %bb.gt ], [ @2875, %bb.go ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i ], [ @2860, %bb.u ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fh) #37
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i: ; preds = %bb.hi
  %..i199.5.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.acb) ; 2 uses
  %i.fi = add nuw i64 %.sroa.022.0.ph429.5.i.lcssa, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2753
  store i64 %..i199.i846, ptr %i.ag, align 8, !noalias !2753
  store i64 %i.zl, ptr %.sroa.6.0..sroa_idx.i54, align 8, !noalias !2753
  store i64 %..i199.1688.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %i.zo, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %..i199.2.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %i.aad, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %..i199.3.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %i.aav, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %..i199.4.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %i.abm, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %..i199.5.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %i.fi, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !2753
  %i.fj = add i64 %..i199.1688.i, %..i199.i846    ; 3 uses
  %i.fk = icmp ult i64 %i.fj, %..i199.i846
  br i1 %i.fk, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i
  %i.fl = add i64 %..i199.2.i, %i.fj              ; 3 uses
  %i.fm = icmp ult i64 %i.fl, %i.fj
  br i1 %i.fm, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i
  %i.fn = add i64 %..i199.3.i, %i.fl              ; 3 uses
  %i.fo = icmp ult i64 %i.fn, %i.fl
  br i1 %i.fo, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i
  %i.fp = add i64 %..i199.4.i, %i.fn              ; 3 uses
  %i.fq = icmp ult i64 %i.fp, %i.fn
  br i1 %i.fq, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i
  %i.fr = add i64 %..i199.5.i, %i.fp              ; 3 uses
  %i.fs = icmp ult i64 %i.fr, %i.fp
  br i1 %i.fs, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i
  %i.ft = icmp slt i64 %i.eo, 0
  br i1 %i.ft, label %.invoke1053, label %bb.u

bb.u:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i
  %i.fu = shl nuw i64 %i.eo, 1
  %i.fv = add i64 %i.fr, %i.fu                    ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.fr
  br i1 %i.fw, label %.invoke, label %bb.v

.invoke1053:                                      ; preds = %.outer.split.us.1.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i, %bb.af
  %i.fx = phi ptr [ @2856, %bb.af ], [ @2859, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ @2876, %.outer.split.us.1.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fx) #37
          to label %.cont1054 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont1054:                                        ; preds = %.invoke1053
  unreachable

bb.v:                                             ; preds = %bb.u
  %.not.i55.not = icmp uge i64 %i.ba, %i.fv       ; 2 uses
  br i1 %.not.i55.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not114.i = icmp ugt i64 %.sroa.0.0.i207.fr678.i812827834844, %.sroa.08.1.i814826835840
  br i1 %.not114.i, label %bb.y, label %.thread219.i

bb.x:                                             ; preds = %bb.v
  %.not132.i = icmp eq i64 %.sroa.4.0498, 1
  br i1 %.not132.i, label %bb.gi, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit, !prof !7

bb.y:                                             ; preds = %bb.w
  %i.fy = sub nuw nsw i64 %.sroa.0.0.i207.fr678.i812827834844, %.sroa.08.1.i814826835840
  %..i141.i = call noundef i64 @llvm.umin.i64(i64 %i.fy, i64 %i.cr) ; 2 uses
  %i.fz = add nuw nsw i64 %..i141.i, %.sroa.08.1.i814826835840
  br label %.thread219.i

.thread219.i:                                     ; preds = %bb.y, %bb.w
  %.sroa.034.0217224.i = phi i64 [ %..i141.i, %bb.y ], [ 0, %bb.w ] ; 7 uses
  %.sroa.028.0218223.i = phi i64 [ %i.fz, %bb.y ], [ %.sroa.0.0.i207.fr678.i812827834844, %bb.w ] ; 6 uses
  %i.ga = sub nuw nsw i64 %.sroa.028.0218223.i, %.sroa.034.0217224.i
  %.not118.i = icmp ugt i64 %i.ga, %.sroa.08.1.i814826835840
  br i1 %.not118.i, label %bb.z, label %bb.aa, !prof !7

bb.z:                                             ; preds = %.thread219.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2861, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2862) #37
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %.thread219.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2754)
  call void @llvm.experimental.noalias.scope.decl(metadata !2755)
  store i64 %.sroa.034.0217224.i, ptr %i.ar, align 8, !alias.scope !2756
  store i64 %.sroa.028.0218223.i, ptr %i.as, align 8, !alias.scope !2756
  br i1 %i.ch, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gb = urem i64 %i.cf, %.sroa.4.0498
  %.not.i.i.i = icmp ne i64 %i.gb, 0
  %i.gc = udiv i64 %i.cf, %.sroa.4.0498
  %..i.i.i = zext i1 %.not.i.i.i to i64
  %i.gd = add nuw nsw i64 %i.gc, %..i.i.i         ; 7 uses
  br i1 %i.el, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ge = icmp eq i64 %i.gd, 0                    ; 3 uses
  %brmerge506 = select i1 %i.ge, i1 true, i1 %.not2.i.i
  %.mux508 = select i1 %i.ge, i64 undef, i64 %i.ck
  %not. = xor i1 %i.ge, true
  br i1 %brmerge506, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac, %bb.ad
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.gf, %bb.ad ], [ %i.ck, %bb.ac ] ; 2 uses
  %.not6.i.i.i.i = icmp ult i64 %.sroa.0.03.i.i.i.i, %i.gd
  br i1 %.not6.i.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gf = sub nuw i64 %.sroa.0.03.i.i.i.i, %i.gd  ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.gf, %i.cf
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %.lr.ph.i.i.i.i

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i, %bb.ac, %bb.ab, %bb.aa
  %.sroa.0.0.i.i.i138 = phi i64 [ %i.gd, %bb.ac ], [ %i.gd, %bb.ab ], [ 0, %bb.aa ], [ %i.gd, %.lr.ph.i.i.i.i ], [ %i.gd, %bb.ad ]
  %.sroa.7.0.i.i.i = phi i64 [ %.mux508, %bb.ac ], [ 0, %bb.ab ], [ undef, %bb.aa ], [ %i.gf, %bb.ad ], [ %i.cn, %.lr.ph.i.i.i.i ]
  %.sroa.0.0.i18.i.i = phi i1 [ %not., %bb.ac ], [ %i.cl, %bb.ab ], [ false, %bb.aa ], [ true, %.lr.ph.i.i.i.i ], [ true, %bb.ad ]
  %i.gg = icmp samesign ult i64 %.sroa.034.0217224.i, %.sroa.028.0218223.i
  br i1 %i.gg, label %.lr.ph303.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i

.lr.ph303.i.i:                                    ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, %._crit_edge.i.i
  %.sroa.08.0302.i.i = phi i64 [ %i.gh, %._crit_edge.i.i ], [ %.sroa.034.0217224.i, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i ] ; 4 uses
  %i.gh = add nuw nsw i64 %.sroa.08.0302.i.i, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2757
  store <2 x ptr> %i.de, ptr %i.m, align 16, !noalias !2757
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2758
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit

.noexc65:                                         ; preds = %.lr.ph303.i.i
  %i.gi = load i64, ptr %i.k, align 8, !range !22, !noalias !2758, !noundef !5
  %i.gj = trunc nuw i64 %i.gi to i1
  br i1 %i.gj, label %.lr.ph.i.i58, label %._crit_edge.i.i

.lr.ph.i.i58:                                     ; preds = %.noexc65
  %i.gk = trunc i64 %.sroa.08.0302.i.i to i1      ; 4 uses
  %spec.select.i.i.i.i = select i1 %i.gk, i8 22, i8 18
  %i.gl = select i1 %i.gk, i8 4, i8 0
  %spec.select.i134.i.reass.reass.i.reass.i.reass.reass = add i8 %i.gl, %invariant.op
  %spec.select.i137.i.i.i = select i1 %i.gk, i8 24, i8 20
  %spec.select.i140.i.i.i = select i1 %i.gk, i8 25, i8 21
  %i.gm = sub nuw nsw i64 %.sroa.08.0302.i.i, %.sroa.034.0217224.i
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc72, %.lr.ph.i.i58
  call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  %i.gn = load i64, ptr %i.df, align 8, !noalias !2760, !noundef !5 ; 8 uses
  %i.go = load i64, ptr %i.dg, align 8, !noalias !2760, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2760
  %i.gp = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !alias.scope !2759, !noalias !2757, !noundef !5 ; 4 uses
  %i.gq = icmp eq i64 %i.gp, -1
  br i1 %i.gq, label %.invoke, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gr = add nuw i64 %i.gp, 1
  store i64 %i.gr, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !alias.scope !2759, !noalias !2757
  %i.gs = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gp, i64 %.sroa.0.0.i.i.i138) ; 2 uses
  %i.gt = extractvalue { i64, i1 } %i.gs, 1
end_hunk_0
begin_hunk_1_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render:bb.a
  call void @llvm.assume(i1 %i.wy)
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i, i64 4
  %i.xa = load i8, ptr %i.wp, align 1, !noalias !2791, !noundef !5
  %i.xb = shl nuw nsw i32 %i.we, 18
  %i.xc = and i32 %i.xb, 1835008
  %i.xd = shl nuw nsw i32 %i.wu, 6
  %i.xe = and i8 %i.xa, 63
  %i.xf = zext nneg i8 %i.xe to i32
  %i.xg = or disjoint i32 %i.xd, %i.xf
  %i.xh = or disjoint i32 %i.xg, %i.xc
  br label %bb.fs

bb.fs:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i, %bb.fr, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i
  %.sroa.11.1.ph.i.i = phi ptr [ %.sroa.11.0.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i ], [ %i.wg, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.wp, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.wz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.wa, %bb.fr ] ; 2 uses
  %.sroa.036.1.ph.i.i = phi ptr [ %i.vy, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ null, %bb.fr ] ; 2 uses
  %.sroa.03.0.ph.i.i = phi i32 [ %i.vt, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i ], [ %i.wl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.ww, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.xh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.wn, %bb.fr ] ; 2 uses
  %i.xi = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.03.0.ph.i.i)
          to label %.noexc182.i unwind label %.loopexit247.i, !noalias !2779 ; 2 uses

.noexc182.i:                                      ; preds = %bb.fs
  %i.xj = extractvalue { i64, i64 } %i.xi, 0
  %i.xk = trunc nuw i64 %i.xj to i1
  br i1 %i.xk, label %.loopexit.i178.i, label %.peel.next.i.i, !llvm.loop !2725

.loopexit.i178.i:                                 ; preds = %.noexc182.i, %.noexc180.i
  %.sroa.11.1.ph.lcssa.i.i = phi ptr [ %.sroa.11.1.ph.peel.i.i, %.noexc180.i ], [ %.sroa.11.1.ph.i.i, %.noexc182.i ] ; 5 uses
  %.sroa.036.1.ph.lcssa.i.i = phi ptr [ %.sroa.036.1.ph.peel.i.i, %.noexc180.i ], [ %.sroa.036.1.ph.i.i, %.noexc182.i ] ; 4 uses
  %.sroa.03.0.ph.lcssa.i.i = phi i32 [ %.sroa.03.0.ph.peel.i.i, %.noexc180.i ], [ %.sroa.03.0.ph.i.i, %.noexc182.i ]
  %.lcssa72.i.i = phi { i64, i64 } [ %i.vp, %.noexc180.i ], [ %i.xi, %.noexc182.i ]
  %i.xl = extractvalue { i64, i64 } %.lcssa72.i.i, 1 ; 3 uses
  %i.xm = icmp ugt i64 %i.xl, %.sroa.013.0.ph.i450.i
  br i1 %i.xm, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i, label %bb.ft

bb.ft:                                            ; preds = %.loopexit.i178.i
  %.not453.i = icmp eq i64 %i.xl, %.sroa.013.0.ph.i450.i ; 2 uses
  br i1 %.not453.i, label %bb.fu, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.fx, %bb.fw, %bb.ft
  %.sroa.11.2.i.i = phi ptr [ %.sroa.11.1.ph.lcssa.i.i, %bb.ft ], [ null, %bb.fw ], [ getelementptr inbounds nuw (i8, ptr @2870, i64 1), %bb.fx ]
  %.sroa.036.2.i.i = phi ptr [ %.sroa.036.1.ph.lcssa.i.i, %bb.ft ], [ null, %bb.fw ], [ null, %bb.fx ]
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.tv, i32 noundef %.sroa.03.0.ph.lcssa.i.i, i32 noundef 0, i64 noundef 0, i64 undef)
          to label %.noexc183.i unwind label %.loopexit.split-lp248.loopexit.i, !noalias !2779

.noexc183.i:                                      ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i
  %i.xn = icmp eq i64 %.sroa.0.0.ph.i451.i, -1
  br i1 %i.xn, label %bb.fz, label %.outer.i.i

bb.fu:                                            ; preds = %bb.ft
  %.not.i.i.i.i34.i.i = icmp eq ptr %.sroa.036.1.ph.lcssa.i.i, null
  %i.xo = icmp eq ptr %.sroa.036.1.ph.lcssa.i.i, %i.tz
  %or.cond246.i = select i1 %.not.i.i.i.i34.i.i, i1 true, i1 %i.xo
  br i1 %or.cond246.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.xp = load i32, ptr %.sroa.036.1.ph.lcssa.i.i, align 4, !noalias !2793, !noundef !5 ; 2 uses
  %i.xq = xor i32 %i.xp, 55296
  %i.xr = add i32 %i.xq, -1114112
  %i.xs = icmp ult i32 %i.xr, -1112064
  br i1 %i.xs, label %.split.i.i.i.i.i.i.i.i, label %.sink.split.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2794
  store i32 %i.xp, ptr %i.a, align 4, !noalias !2794
  br label %.split.i.i.i.i.i.invoke.i

bb.fw:                                            ; preds = %bb.fu
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.1.ph.lcssa.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.1.ph.lcssa.i.i, getelementptr inbounds nuw (i8, ptr @2870, i64 1)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.xt = load i8, ptr %.sroa.11.1.ph.lcssa.i.i, align 1, !noalias !2795, !noundef !5
  %i.xu = icmp sgt i8 %i.xt, -1
  br i1 %i.xu, label %.sink.split.i.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i: ; preds = %bb.fy
  %i.xv = icmp ne ptr %.sroa.11.1.ph.lcssa.i.i, @2870
  call void @llvm.assume(i1 %i.xv)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i, %bb.fv, %bb.fy
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.tv, i32 noundef 8230, i32 noundef 0, i64 noundef 0, i64 undef)
          to label %.noexc185.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !2779

.noexc185.i:                                      ; preds = %.sink.split.i.i
  %i.xw = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc186.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !2779 ; 2 uses

.noexc186.i:                                      ; preds = %.noexc185.i
  %i.xx = extractvalue { i64, i64 } %i.xw, 0
  %i.xy = trunc nuw i64 %i.xx to i1
  br i1 %i.xy, label %bb.ga, label %.invoke.i, !prof !8

.outer.i.i:                                       ; preds = %.noexc183.i
  %i.xz = add nuw i64 %.sroa.0.0.ph.i451.i, 1
  %i.ya = sub nuw i64 %.sroa.013.0.ph.i450.i, %i.xl
  br i1 %.not453.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread, label %bb.fi

bb.fz:                                            ; preds = %.noexc183.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #37
          to label %.noexc187.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !2779

.noexc187.i:                                      ; preds = %bb.fz
  unreachable

bb.ga:                                            ; preds = %.noexc186.i
  %i.yb = extractvalue { i64, i64 } %i.xw, 1
  %i.yc = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.i450.i, i64 %i.yb)
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i

.invoke.i:                                        ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i, %.noexc186.i
  %i.yd = phi ptr [ @16, %.noexc186.i ], [ @17, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yd) #37
          to label %.cont.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !2779

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i: ; preds = %.loopexit.i178.i, %bb.fk, %bb.fp, %bb.ga
  %.sroa.013.2.i.i = phi i64 [ %i.yc, %bb.ga ], [ %.sroa.013.0.ph.i450.i, %bb.fp ], [ %.sroa.013.0.ph.i450.i, %bb.fk ], [ %.sroa.013.0.ph.i450.i, %.loopexit.i178.i ] ; 2 uses
  %i.ye = icmp ult i64 %i.ek, %.sroa.013.2.i.i
  br i1 %i.ye, label %.invoke.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread, !prof !2796

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread: ; preds = %.outer.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i
  %.sroa.013.2.i.i140 = phi i64 [ %.sroa.013.2.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i ], [ 0, %.outer.i.i ] ; 2 uses
  %i.yf = load ptr, ptr %.sroa.488.0..sroa_idx.i, align 8, !noalias !2753, !nonnull !5, !noundef !5 ; 2 uses
  %i.yg = load i64, ptr %.sroa.689.0..sroa_idx.i, align 8, !noalias !2753, !noundef !5
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %i.yg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2753
  store i8 0, ptr %i.r, align 1, !noalias !2753
  store i8 1, ptr %.sroa.454.0..sroa_idx.i, align 1, !noalias !2753
  store i16 0, ptr %.sroa.555.0..sroa_idx.i, align 1, !noalias !2753
  %i.yi = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCINvB2_9print_maxBJ_E0EB4_(i64 noundef 0, i64 undef, ptr noundef nonnull %i.yf, ptr noundef nonnull %i.yh, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.r, i64 noundef %.sroa.013.2.i.i140, i1 noundef zeroext false, ptr noalias nofree noundef align 8 dereferenceable(40) %i.tv)
          to label %bb.gb unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !2779

bb.gb:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2753
  %i.yj = icmp ult i64 %.sroa.013.2.i.i140, %i.yi
  br i1 %i.yj, label %bb.gf, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i191.i unwind label %bb.gd, !noalias !2779

bb.gd:                                            ; preds = %bb.gc
  %i.yk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body192.i unwind label %bb.ge, !noalias !2779

bb.ge:                                            ; preds = %bb.gd
  %i.yl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2779
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i191.i: ; preds = %bb.gc
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit195.i unwind label %.loopexit.split-lp260.i.loopexit, !noalias !2779

bb.gf:                                            ; preds = %bb.gb
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2871) #36
          to label %bb.ct unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !2779

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit195.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i191.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2753
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.sink.split.sink.split.i unwind label %bb.gg, !noalias !2779

bb.gg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit195.i
  %i.ym = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body unwind label %bb.gh, !noalias !2779

bb.gh:                                            ; preds = %bb.gg
  %i.yn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2779
  unreachable

.sink.split.sink.split.i:                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit195.i, %bb.ev
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc73:                                         ; preds = %.sink.split.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2753
  br label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit

bb.gi:                                            ; preds = %bb.x
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2872, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2873) #37
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc74:                                         ; preds = %bb.gi
  unreachable

.split.i:                                         ; preds = %.outer.i, %.outer.split.i.split.us
  %.us-phi = phi i64 [ %.sroa.022.0.ph429.i491, %.outer.split.i.split.us ], [ %..i200.i, %.outer.i ] ; 4 uses
  %.us-phi477 = phi i64 [ %.sroa.025.0.ph428.i492, %.outer.split.i.split.us ], [ %..i201.i.a, %.outer.i ]
  %i.yo = add i64 %.us-phi477, %.us-phi           ; 2 uses
  %i.yp = icmp ult i64 %i.yo, %.us-phi
  br i1 %i.yp, label %.invoke, label %bb.gj

bb.gj:                                            ; preds = %.split.i
  %i.yq = icmp ugt i64 %.us-phi, -3
  br i1 %i.yq, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i: ; preds = %bb.gj
  %..i199.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.yo) ; 2 uses
  %i.yr = add nuw i64 %.us-phi, 2                 ; 2 uses
  br i1 %i.dd, label %.outer.split.us.1.i, label %.outer.split.1.i.preheader

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread: ; preds = %.loopexit176.thread803
  store i64 0, ptr %i.aw, align 8, !alias.scope !2752
  br i1 %i.dd, label %.outer.split.preheader.2.i, label %.outer.split.1.i.preheader

.outer.split.1.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i
  %i.ys = phi i64 [ 2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ], [ %i.yr, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ]
  %..i199.i847 = phi i64 [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ], [ %..i199.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ]
  %.sroa.0.0.i207.fr678.i812827834843 = phi i64 [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ], [ %.sroa.0.0.i207.fr677.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ] ; 9 uses
  %i.yt = phi i64 [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ], [ %i.fg, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ]
  %.sroa.08.1.i814826835841 = phi i64 [ %spec.select807, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ], [ %.sroa.08.1.i816, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ]
  %exitcond.1.not.i12621267 = icmp eq i64 %.sroa.0.0.i207.fr678.i812827834843, 0
  br i1 %exitcond.1.not.i12621267, label %.split.1.i, label %.lr.ph

.lr.ph:                                           ; preds = %.outer.split.1.i.preheader, %.outer.1.i
  %umax.1.i1271 = phi i64 [ %umax.1.i, %.outer.1.i ], [ %.sroa.0.0.i207.fr678.i812827834843, %.outer.split.1.i.preheader ]
  %.sroa.060.0.ph427.1.i1270 = phi i64 [ %i.yw, %.outer.1.i ], [ 0, %.outer.split.1.i.preheader ]
  %.sroa.025.0.ph428.1.i1269 = phi i64 [ %..i201.1.i, %.outer.1.i ], [ 0, %.outer.split.1.i.preheader ] ; 2 uses
  %.sroa.022.0.ph429.1.i1268 = phi i64 [ %..i200.1.i, %.outer.1.i ], [ 0, %.outer.split.1.i.preheader ] ; 2 uses
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gm
  %exitcond.1.not.i = icmp eq i64 %i.yw, %umax.1.i1271
  br i1 %exitcond.1.not.i, label %.split.1.i, label %bb.gl

bb.gl:                                            ; preds = %.lr.ph, %bb.gk
  %.sroa.060.0.1.i1263 = phi i64 [ %.sroa.060.0.ph427.1.i1270, %.lr.ph ], [ %i.yw, %bb.gk ] ; 2 uses
  %i.yu = add i64 %.sroa.060.0.1.i1263, %.sroa.0.0.i207.fr678.i812827834843 ; 3 uses
  %i.yv = icmp ult i64 %i.yu, %.sroa.0.0.i207.fr678.i812827834843
  br i1 %i.yv, label %.invoke, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.yw = add i64 %.sroa.060.0.1.i1263, 1         ; 5 uses
  %.not133.1.i = icmp ult i64 %i.yu, %i.cf
  br i1 %.not133.1.i, label %bb.gn, label %bb.gk

bb.gn:                                            ; preds = %bb.gm
  %i.yx = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.yu ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 136
  %i.yz = load i64, ptr %i.yy, align 8, !alias.scope !2751, !noundef !5 ; 3 uses
  %i.za = icmp eq i64 %i.yz, 0
  %..1.i = select i1 %i.za, i64 0, i64 4
  %i.zb = add i64 %..1.i, %i.yz                   ; 2 uses
  %i.zc = icmp ult i64 %i.zb, %i.yz
  br i1 %i.zc, label %.invoke, label %.outer.1.i

.outer.1.i:                                       ; preds = %bb.gn
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yx, i64 128
  %i.ze = load i64, ptr %i.zd, align 8, !alias.scope !2751, !noundef !5
  %..i200.1.i = call noundef i64 @llvm.umax.i64(i64 %i.ze, i64 %.sroa.022.0.ph429.1.i1268) ; 2 uses
  %..i201.1.i = call noundef i64 @llvm.umax.i64(i64 %i.zb, i64 %.sroa.025.0.ph428.1.i1269) ; 2 uses
  %umax.1.i = call i64 @llvm.umax.i64(i64 %i.yw, i64 %.sroa.0.0.i207.fr678.i812827834843)
  %exitcond.1.not.i1262.not = icmp ult i64 %i.yw, %.sroa.0.0.i207.fr678.i812827834843
  br i1 %exitcond.1.not.i1262.not, label %.lr.ph, label %.split.1.i

.outer.split.us.1.i:                              ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i
  %.not.1.i = icmp eq i64 %.sroa.0.0.i207.fr677.i, 0
  br i1 %.not.1.i, label %.outer.split.preheader.2.i, label %.invoke1053

.split.1.i:                                       ; preds = %.outer.1.i, %bb.gk, %.outer.split.1.i.preheader
  %.sroa.022.0.ph429.1.i.lcssa = phi i64 [ %.sroa.022.0.ph429.1.i1268, %bb.gk ], [ 0, %.outer.split.1.i.preheader ], [ %..i200.1.i, %.outer.1.i ] ; 4 uses
  %.sroa.025.0.ph428.1.i.lcssa = phi i64 [ %.sroa.025.0.ph428.1.i1269, %bb.gk ], [ 0, %.outer.split.1.i.preheader ], [ %..i201.1.i, %.outer.1.i ]
  %i.zf = add i64 %.sroa.025.0.ph428.1.i.lcssa, %.sroa.022.0.ph429.1.i.lcssa ; 2 uses
  %i.zg = icmp ult i64 %i.zf, %.sroa.022.0.ph429.1.i.lcssa
  br i1 %i.zg, label %.invoke, label %bb.go

bb.go:                                            ; preds = %.split.1.i
  %i.zh = icmp ugt i64 %.sroa.022.0.ph429.1.i.lcssa, -3
  br i1 %i.zh, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i: ; preds = %bb.go
  %..i199.1.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.zf)
  %i.zi = add nuw i64 %.sroa.022.0.ph429.1.i.lcssa, 2
  %i.zj = icmp slt i64 %.sroa.0.0.i207.fr678.i812827834843, 0
  %i.zk = shl nuw i64 %.sroa.0.0.i207.fr678.i812827834843, 1
  br i1 %i.zj, label %.invoke1053, label %.outer.split.preheader.2.i

.outer.split.preheader.2.i:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i, %.outer.split.us.1.i
  %i.zl = phi i64 [ %i.ys, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ %i.yr, %.outer.split.us.1.i ], [ 2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ]
  %..i199.i846 = phi i64 [ %..i199.i847, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ %..i199.i, %.outer.split.us.1.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ] ; 3 uses
  %.sroa.0.0.i207.fr678.i812827834844 = phi i64 [ %.sroa.0.0.i207.fr678.i812827834843, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ 0, %.outer.split.us.1.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ] ; 25 uses
  %i.zm = phi i64 [ %i.yt, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ %i.fg, %.outer.split.us.1.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ]
  %.sroa.08.1.i814826835840 = phi i64 [ %.sroa.08.1.i814826835841, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ %.sroa.08.1.i816, %.outer.split.us.1.i ], [ %spec.select807, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ] ; 4 uses
  %i.zn = phi i64 [ %i.zk, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ 0, %.outer.split.us.1.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ] ; 2 uses
  %i.zo = phi i64 [ %i.zi, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ 2, %.outer.split.us.1.i ], [ 2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ]
  %..i199.1688.i = phi i64 [ %..i199.1.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ 0, %.outer.split.us.1.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread ] ; 2 uses
  %exitcond.2.not.i12741281 = icmp eq i64 %.sroa.0.0.i207.fr678.i812827834844, 0
  br i1 %exitcond.2.not.i12741281, label %.split.2.i, label %.lr.ph1276

.lr.ph1276:                                       ; preds = %.outer.split.preheader.2.i, %.outer.2.i
  %umax.2.i1285 = phi i64 [ %umax.2.i, %.outer.2.i ], [ %.sroa.0.0.i207.fr678.i812827834844, %.outer.split.preheader.2.i ]
  %.sroa.060.0.ph427.2.i1284 = phi i64 [ %i.zr, %.outer.2.i ], [ 0, %.outer.split.preheader.2.i ]
  %.sroa.025.0.ph428.2.i1283 = phi i64 [ %..i201.2.i, %.outer.2.i ], [ 0, %.outer.split.preheader.2.i ] ; 2 uses
  %.sroa.022.0.ph429.2.i1282 = phi i64 [ %..i200.2.i, %.outer.2.i ], [ 0, %.outer.split.preheader.2.i ] ; 2 uses
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gr
  %exitcond.2.not.i = icmp eq i64 %i.zr, %umax.2.i1285
  br i1 %exitcond.2.not.i, label %.split.2.i, label %bb.gq

bb.gq:                                            ; preds = %.lr.ph1276, %bb.gp
  %.sroa.060.0.2.i1275 = phi i64 [ %.sroa.060.0.ph427.2.i1284, %.lr.ph1276 ], [ %i.zr, %bb.gp ] ; 2 uses
  %i.zp = add i64 %.sroa.060.0.2.i1275, %i.zn     ; 3 uses
  %i.zq = icmp ult i64 %i.zp, %i.zn
  br i1 %i.zq, label %.invoke, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.zr = add i64 %.sroa.060.0.2.i1275, 1         ; 5 uses
  %.not133.2.i = icmp ult i64 %i.zp, %i.cf
  br i1 %.not133.2.i, label %bb.gs, label %bb.gp

bb.gs:                                            ; preds = %bb.gr
  %i.zs = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.zp ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 136
  %i.zu = load i64, ptr %i.zt, align 8, !alias.scope !2751, !noundef !5 ; 3 uses
  %i.zv = icmp eq i64 %i.zu, 0
  %..2.i = select i1 %i.zv, i64 0, i64 4
  %i.zw = add i64 %..2.i, %i.zu                   ; 2 uses
  %i.zx = icmp ult i64 %i.zw, %i.zu
  br i1 %i.zx, label %.invoke, label %.outer.2.i

.outer.2.i:                                       ; preds = %bb.gs
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zs, i64 128
  %i.zz = load i64, ptr %i.zy, align 8, !alias.scope !2751, !noundef !5
  %..i200.2.i = call noundef i64 @llvm.umax.i64(i64 %i.zz, i64 %.sroa.022.0.ph429.2.i1282) ; 2 uses
  %..i201.2.i = call noundef i64 @llvm.umax.i64(i64 %i.zw, i64 %.sroa.025.0.ph428.2.i1283) ; 2 uses
  %umax.2.i = call i64 @llvm.umax.i64(i64 %i.zr, i64 %.sroa.0.0.i207.fr678.i812827834844)
  %exitcond.2.not.i1274.not = icmp ult i64 %i.zr, %.sroa.0.0.i207.fr678.i812827834844
  br i1 %exitcond.2.not.i1274.not, label %.lr.ph1276, label %.split.2.i

.split.2.i:                                       ; preds = %.outer.2.i, %bb.gp, %.outer.split.preheader.2.i
  %.sroa.022.0.ph429.2.i.lcssa = phi i64 [ %.sroa.022.0.ph429.2.i1282, %bb.gp ], [ 0, %.outer.split.preheader.2.i ], [ %..i200.2.i, %.outer.2.i ] ; 4 uses
  %.sroa.025.0.ph428.2.i.lcssa = phi i64 [ %.sroa.025.0.ph428.2.i1283, %bb.gp ], [ 0, %.outer.split.preheader.2.i ], [ %..i201.2.i, %.outer.2.i ]
  %i.aaa = add i64 %.sroa.025.0.ph428.2.i.lcssa, %.sroa.022.0.ph429.2.i.lcssa ; 2 uses
  %i.aab = icmp ult i64 %i.aaa, %.sroa.022.0.ph429.2.i.lcssa
  br i1 %i.aab, label %.invoke, label %bb.gt

bb.gt:                                            ; preds = %.split.2.i
  %i.aac = icmp ugt i64 %.sroa.022.0.ph429.2.i.lcssa, -3
  br i1 %i.aac, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i: ; preds = %bb.gt
  %..i199.2.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.aaa) ; 2 uses
  %i.aad = add nuw i64 %.sroa.022.0.ph429.2.i.lcssa, 2
  %i.aae = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i207.fr678.i812827834844, i64 3) ; 2 uses
  %i.aaf = extractvalue { i64, i1 } %i.aae, 1
  %i.aag = extractvalue { i64, i1 } %i.aae, 0     ; 2 uses
  br i1 %i.aaf, label %.invoke1053, label %.outer.split.3.i.preheader

.outer.split.3.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i
  %exitcond.3.not.i12881295 = icmp eq i64 %.sroa.0.0.i207.fr678.i812827834844, 0
  br i1 %exitcond.3.not.i12881295, label %.split.3.i, label %.lr.ph1290

.lr.ph1290:                                       ; preds = %.outer.split.3.i.preheader, %.outer.3.i
  %umax.3.i1299 = phi i64 [ %umax.3.i, %.outer.3.i ], [ %.sroa.0.0.i207.fr678.i812827834844, %.outer.split.3.i.preheader ]
  %.sroa.060.0.ph427.3.i1298 = phi i64 [ %i.aaj, %.outer.3.i ], [ 0, %.outer.split.3.i.preheader ]
  %.sroa.025.0.ph428.3.i1297 = phi i64 [ %..i201.3.i, %.outer.3.i ], [ 0, %.outer.split.3.i.preheader ] ; 2 uses
  %.sroa.022.0.ph429.3.i1296 = phi i64 [ %..i200.3.i, %.outer.3.i ], [ 0, %.outer.split.3.i.preheader ] ; 2 uses
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gw
  %exitcond.3.not.i = icmp eq i64 %i.aaj, %umax.3.i1299
  br i1 %exitcond.3.not.i, label %.split.3.i, label %bb.gv

bb.gv:                                            ; preds = %.lr.ph1290, %bb.gu
  %.sroa.060.0.3.i1289 = phi i64 [ %.sroa.060.0.ph427.3.i1298, %.lr.ph1290 ], [ %i.aaj, %bb.gu ] ; 2 uses
  %i.aah = add i64 %.sroa.060.0.3.i1289, %i.aag   ; 3 uses
  %i.aai = icmp ult i64 %i.aah, %i.aag
  br i1 %i.aai, label %.invoke, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aaj = add i64 %.sroa.060.0.3.i1289, 1        ; 5 uses
  %.not133.3.i = icmp ult i64 %i.aah, %i.cf
  br i1 %.not133.3.i, label %bb.gx, label %bb.gu

bb.gx:                                            ; preds = %bb.gw
  %i.aak = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.aah ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 136
  %i.aam = load i64, ptr %i.aal, align 8, !alias.scope !2751, !noundef !5 ; 3 uses
  %i.aan = icmp eq i64 %i.aam, 0
  %..3.i = select i1 %i.aan, i64 0, i64 4
  %i.aao = add i64 %..3.i, %i.aam                 ; 2 uses
  %i.aap = icmp ult i64 %i.aao, %i.aam
  br i1 %i.aap, label %.invoke, label %.outer.3.i

.outer.3.i:                                       ; preds = %bb.gx
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aak, i64 128
  %i.aar = load i64, ptr %i.aaq, align 8, !alias.scope !2751, !noundef !5
  %..i200.3.i = call noundef i64 @llvm.umax.i64(i64 %i.aar, i64 %.sroa.022.0.ph429.3.i1296) ; 2 uses
  %..i201.3.i = call noundef i64 @llvm.umax.i64(i64 %i.aao, i64 %.sroa.025.0.ph428.3.i1297) ; 2 uses
  %umax.3.i = call i64 @llvm.umax.i64(i64 %i.aaj, i64 %.sroa.0.0.i207.fr678.i812827834844)
  %exitcond.3.not.i1288.not = icmp ult i64 %i.aaj, %.sroa.0.0.i207.fr678.i812827834844
  br i1 %exitcond.3.not.i1288.not, label %.lr.ph1290, label %.split.3.i

.split.3.i:                                       ; preds = %.outer.3.i, %bb.gu, %.outer.split.3.i.preheader
  %.sroa.022.0.ph429.3.i.lcssa = phi i64 [ %.sroa.022.0.ph429.3.i1296, %bb.gu ], [ 0, %.outer.split.3.i.preheader ], [ %..i200.3.i, %.outer.3.i ] ; 4 uses
  %.sroa.025.0.ph428.3.i.lcssa = phi i64 [ %.sroa.025.0.ph428.3.i1297, %bb.gu ], [ 0, %.outer.split.3.i.preheader ], [ %..i201.3.i, %.outer.3.i ]
  %i.aas = add i64 %.sroa.025.0.ph428.3.i.lcssa, %.sroa.022.0.ph429.3.i.lcssa ; 2 uses
  %i.aat = icmp ult i64 %i.aas, %.sroa.022.0.ph429.3.i.lcssa
  br i1 %i.aat, label %.invoke, label %bb.gy

bb.gy:                                            ; preds = %.split.3.i
  %i.aau = icmp ugt i64 %.sroa.022.0.ph429.3.i.lcssa, -3
  br i1 %i.aau, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i: ; preds = %bb.gy
  %..i199.3.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.aas) ; 2 uses
  %i.aav = add nuw i64 %.sroa.022.0.ph429.3.i.lcssa, 2
  %i.aaw = icmp samesign ugt i64 %.sroa.0.0.i207.fr678.i812827834844, 4611686018427387903
  %i.aax = shl nuw i64 %.sroa.0.0.i207.fr678.i812827834844, 2 ; 2 uses
  br i1 %i.aaw, label %.invoke1053, label %.outer.split.4.i.preheader

.outer.split.4.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i
  %exitcond.4.not.i13021309 = icmp eq i64 %.sroa.0.0.i207.fr678.i812827834844, 0
  br i1 %exitcond.4.not.i13021309, label %.split.4.i, label %.lr.ph1304

.lr.ph1304:                                       ; preds = %.outer.split.4.i.preheader, %.outer.4.i
  %umax.4.i1313 = phi i64 [ %umax.4.i, %.outer.4.i ], [ %.sroa.0.0.i207.fr678.i812827834844, %.outer.split.4.i.preheader ]
  %.sroa.060.0.ph427.4.i1312 = phi i64 [ %i.aba, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ]
  %.sroa.025.0.ph428.4.i1311 = phi i64 [ %..i201.4.i, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ] ; 2 uses
  %.sroa.022.0.ph429.4.i1310 = phi i64 [ %..i200.4.i, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ] ; 2 uses
  br label %bb.ha

bb.gz:                                            ; preds = %bb.hb
  %exitcond.4.not.i = icmp eq i64 %i.aba, %umax.4.i1313
  br i1 %exitcond.4.not.i, label %.split.4.i, label %bb.ha

bb.ha:                                            ; preds = %.lr.ph1304, %bb.gz
  %.sroa.060.0.4.i1303 = phi i64 [ %.sroa.060.0.ph427.4.i1312, %.lr.ph1304 ], [ %i.aba, %bb.gz ] ; 2 uses
  %i.aay = add i64 %.sroa.060.0.4.i1303, %i.aax   ; 3 uses
  %i.aaz = icmp ult i64 %i.aay, %i.aax
  br i1 %i.aaz, label %.invoke, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aba = add i64 %.sroa.060.0.4.i1303, 1        ; 5 uses
  %.not133.4.i = icmp ult i64 %i.aay, %i.cf
  br i1 %.not133.4.i, label %bb.hc, label %bb.gz

bb.hc:                                            ; preds = %bb.hb
  %i.abb = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.aay ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 136
  %i.abd = load i64, ptr %i.abc, align 8, !alias.scope !2751, !noundef !5 ; 3 uses
  %i.abe = icmp eq i64 %i.abd, 0
  %..4.i = select i1 %i.abe, i64 0, i64 4
  %i.abf = add i64 %..4.i, %i.abd                 ; 2 uses
  %i.abg = icmp ult i64 %i.abf, %i.abd
  br i1 %i.abg, label %.invoke, label %.outer.4.i

.outer.4.i:                                       ; preds = %bb.hc
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abb, i64 128
  %i.abi = load i64, ptr %i.abh, align 8, !alias.scope !2751, !noundef !5
  %..i200.4.i = call noundef i64 @llvm.umax.i64(i64 %i.abi, i64 %.sroa.022.0.ph429.4.i1310) ; 2 uses
  %..i201.4.i = call noundef i64 @llvm.umax.i64(i64 %i.abf, i64 %.sroa.025.0.ph428.4.i1311) ; 2 uses
  %umax.4.i = call i64 @llvm.umax.i64(i64 %i.aba, i64 %.sroa.0.0.i207.fr678.i812827834844)
  %exitcond.4.not.i1302.not = icmp ult i64 %i.aba, %.sroa.0.0.i207.fr678.i812827834844
  br i1 %exitcond.4.not.i1302.not, label %.lr.ph1304, label %.split.4.i

.split.4.i:                                       ; preds = %.outer.4.i, %bb.gz, %.outer.split.4.i.preheader
  %.sroa.022.0.ph429.4.i.lcssa = phi i64 [ %.sroa.022.0.ph429.4.i1310, %bb.gz ], [ 0, %.outer.split.4.i.preheader ], [ %..i200.4.i, %.outer.4.i ] ; 4 uses
  %.sroa.025.0.ph428.4.i.lcssa = phi i64 [ %.sroa.025.0.ph428.4.i1311, %bb.gz ], [ 0, %.outer.split.4.i.preheader ], [ %..i201.4.i, %.outer.4.i ]
  %i.abj = add i64 %.sroa.025.0.ph428.4.i.lcssa, %.sroa.022.0.ph429.4.i.lcssa ; 2 uses
  %i.abk = icmp ult i64 %i.abj, %.sroa.022.0.ph429.4.i.lcssa
  br i1 %i.abk, label %.invoke, label %bb.hd

bb.hd:                                            ; preds = %.split.4.i
  %i.abl = icmp ugt i64 %.sroa.022.0.ph429.4.i.lcssa, -3
  br i1 %i.abl, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i: ; preds = %bb.hd
  %..i199.4.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.abj) ; 2 uses
  %i.abm = add nuw i64 %.sroa.022.0.ph429.4.i.lcssa, 2
  %i.abn = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i207.fr678.i812827834844, i64 5) ; 2 uses
  %i.abo = extractvalue { i64, i1 } %i.abn, 1
  %i.abp = extractvalue { i64, i1 } %i.abn, 0     ; 2 uses
  br i1 %i.abo, label %.invoke1053, label %.outer.split.5.i.preheader

.outer.split.5.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i
  %exitcond.5.not.i13161323 = icmp eq i64 %.sroa.0.0.i207.fr678.i812827834844, 0
  br i1 %exitcond.5.not.i13161323, label %.split.5.i, label %.lr.ph1318

.lr.ph1318:                                       ; preds = %.outer.split.5.i.preheader, %.outer.5.i
  %umax.5.i1327 = phi i64 [ %umax.5.i, %.outer.5.i ], [ %.sroa.0.0.i207.fr678.i812827834844, %.outer.split.5.i.preheader ]
  %.sroa.060.0.ph427.5.i1326 = phi i64 [ %i.abs, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ]
  %.sroa.025.0.ph428.5.i1325 = phi i64 [ %..i201.5.i, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ] ; 2 uses
  %.sroa.022.0.ph429.5.i1324 = phi i64 [ %..i200.5.i, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ] ; 2 uses
  br label %bb.hf

bb.he:                                            ; preds = %bb.hg
  %exitcond.5.not.i = icmp eq i64 %i.abs, %umax.5.i1327
  br i1 %exitcond.5.not.i, label %.split.5.i, label %bb.hf

bb.hf:                                            ; preds = %.lr.ph1318, %bb.he
  %.sroa.060.0.5.i1317 = phi i64 [ %.sroa.060.0.ph427.5.i1326, %.lr.ph1318 ], [ %i.abs, %bb.he ] ; 2 uses
  %i.abq = add i64 %.sroa.060.0.5.i1317, %i.abp   ; 3 uses
  %i.abr = icmp ult i64 %i.abq, %i.abp
  br i1 %i.abr, label %.invoke, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.abs = add i64 %.sroa.060.0.5.i1317, 1        ; 5 uses
  %.not133.5.i = icmp ult i64 %i.abq, %i.cf
  br i1 %.not133.5.i, label %bb.hh, label %bb.he

bb.hh:                                            ; preds = %bb.hg
  %i.abt = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.abq ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 136
  %i.abv = load i64, ptr %i.abu, align 8, !alias.scope !2751, !noundef !5 ; 3 uses
  %i.abw = icmp eq i64 %i.abv, 0
  %..5.i = select i1 %i.abw, i64 0, i64 4
  %i.abx = add i64 %..5.i, %i.abv                 ; 2 uses
  %i.aby = icmp ult i64 %i.abx, %i.abv
  br i1 %i.aby, label %.invoke, label %.outer.5.i

.outer.5.i:                                       ; preds = %bb.hh
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abt, i64 128
  %i.aca = load i64, ptr %i.abz, align 8, !alias.scope !2751, !noundef !5
  %..i200.5.i = call noundef i64 @llvm.umax.i64(i64 %i.aca, i64 %.sroa.022.0.ph429.5.i1324) ; 2 uses
  %..i201.5.i = call noundef i64 @llvm.umax.i64(i64 %i.abx, i64 %.sroa.025.0.ph428.5.i1325) ; 2 uses
  %umax.5.i = call i64 @llvm.umax.i64(i64 %i.abs, i64 %.sroa.0.0.i207.fr678.i812827834844)
  %exitcond.5.not.i1316.not = icmp ult i64 %i.abs, %.sroa.0.0.i207.fr678.i812827834844
  br i1 %exitcond.5.not.i1316.not, label %.lr.ph1318, label %.split.5.i

.split.5.i:                                       ; preds = %.outer.5.i, %bb.he, %.outer.split.5.i.preheader
  %.sroa.022.0.ph429.5.i.lcssa = phi i64 [ %.sroa.022.0.ph429.5.i1324, %bb.he ], [ 0, %.outer.split.5.i.preheader ], [ %..i200.5.i, %.outer.5.i ] ; 4 uses
  %.sroa.025.0.ph428.5.i.lcssa = phi i64 [ %.sroa.025.0.ph428.5.i1325, %bb.he ], [ 0, %.outer.split.5.i.preheader ], [ %..i201.5.i, %.outer.5.i ]
  %i.acb = add i64 %.sroa.025.0.ph428.5.i.lcssa, %.sroa.022.0.ph429.5.i.lcssa ; 2 uses
  %i.acc = icmp ult i64 %i.acb, %.sroa.022.0.ph429.5.i.lcssa
  br i1 %i.acc, label %.invoke, label %bb.hi

bb.hi:                                            ; preds = %.split.5.i
  %i.acd = icmp ugt i64 %.sroa.022.0.ph429.5.i.lcssa, -3
  br i1 %i.acd, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i

.outer.i:                                         ; preds = %.split.us
  %i.ace = add i64 %.sroa.060.0.ph427.i493, 1     ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ach, i64 128
  %i.acg = load i64, ptr %i.acf, align 8, !alias.scope !2751, !noundef !5
  %..i200.i = call noundef i64 @llvm.umax.i64(i64 %i.acg, i64 %.sroa.022.0.ph429.i491) ; 2 uses
  %..i201.i.a = call noundef i64 @llvm.umax.i64(i64 %i.acl, i64 %.sroa.025.0.ph428.i492) ; 2 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %i.ace, i64 %.sroa.0.0.i207.fr677.i)
  %.not133.i = icmp ult i64 %i.ace, %i.cf
  %.not133.i.fr = freeze i1 %.not133.i
  br i1 %.not133.i.fr, label %.outer.split.i.split.us, label %.split.i

.outer.split.i.split.us:                          ; preds = %.outer.split.i.split.us.preheader, %.outer.i
  %umax.i494 = phi i64 [ %umax.i, %.outer.i ], [ %.sroa.0.0.i207.fr677.i, %.outer.split.i.split.us.preheader ]
  %.sroa.060.0.ph427.i493 = phi i64 [ %i.ace, %.outer.i ], [ 0, %.outer.split.i.split.us.preheader ] ; 3 uses
  %.sroa.025.0.ph428.i492 = phi i64 [ %..i201.i.a, %.outer.i ], [ 0, %.outer.split.i.split.us.preheader ] ; 2 uses
  %.sroa.022.0.ph429.i491 = phi i64 [ %..i200.i, %.outer.i ], [ 0, %.outer.split.i.split.us.preheader ] ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %.sroa.060.0.ph427.i493, %umax.i494
  br i1 %exitcond.not.i.us, label %.split.i, label %.split.us

.split.us:                                        ; preds = %.outer.split.i.split.us
  %i.ach = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %.sroa.060.0.ph427.i493 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 136
  %i.acj = load i64, ptr %i.aci, align 8, !alias.scope !2751, !noundef !5 ; 3 uses
  %i.ack = icmp eq i64 %i.acj, 0
  %..i53 = select i1 %i.ack, i64 0, i64 4
  %i.acl = add i64 %..i53, %i.acj                 ; 2 uses
  %i.acm = icmp ult i64 %i.acl, %i.acj
  br i1 %i.acm, label %.invoke, label %.outer.i

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit: ; preds = %bb.x, %.noexc73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2753
  %.not.i = icmp eq i64 %i.eo, 0
  %or.cond = select i1 %.not.i55.not, i1 true, i1 %.not.i
  br i1 %or.cond, label %.thread, label %.backedge541.backedge

bb.hj:                                            ; preds = %.body
  %i.acn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.hk:                                            ; preds = %.body
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
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val14           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !2799
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
end_hunk_1
