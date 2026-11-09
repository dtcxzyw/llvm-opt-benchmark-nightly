Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.13?download=true
inline.NumInlined: 13443
inline.NumDeleted: 3890
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_RNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB7_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12263.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12263.sroa.22)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB1H_14PreparedCommitNtNtNtB4_6future11into_future10IntoFuture11into_future00EEB1L_(ptr noundef nonnull align 8 %i.ss) #46
          to label %bb.dj unwind label %bb.bv

bb.el:                                            ; preds = %bb.a, %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12263.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12263.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12263.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12263.sroa.22)
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 736 ; 9 uses
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25944)
  %i.su = load i64, ptr %i.ss, align 8, !range !114, !alias.scope !25944, !noalias !25945, !noundef !97
  %.not.i.i144 = icmp eq i64 %i.su, 2
  br i1 %.not.i.i144, label %.noexc145, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 760
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ss, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.sv)
          to label %.noexc145 unwind label %bb.ek

.noexc145:                                        ; preds = %bb.em, %bb.el
  %i.sw = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !25945
  %i.sx = icmp eq i8 %i.sw, 0
  br i1 %i.sx, label %bb.en, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.en:                                            ; preds = %.noexc145
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.sz = load ptr, ptr %i.sy, align 8, !alias.scope !25944, !noalias !25945, !align !100, !noundef !97 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.sz, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !25946
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.tb = load ptr, ptr %i.ta, align 8, !noalias !25947, !nonnull !97, !noundef !97
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  %i.td = load i64, ptr %i.tc, align 8, !noalias !25947, !noundef !97
  store ptr %i.tb, ptr %i.ed, align 8, !noalias !25946
  %i.te = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %i.td, ptr %i.te, align 8, !noalias !25946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !25946
  store ptr %i.ed, ptr %i.ec, align 8, !noalias !25946
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !25946
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ss, ptr noalias noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 21, ptr noundef nonnull @646, ptr noundef nonnull %i.ec) #49
          to label %.noexc146 unwind label %bb.ek

.noexc146:                                        ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !25946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !25946
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc146, %bb.en, %.noexc145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3662.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3618.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11531.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12532.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13533.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15535.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16536.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17537.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20540.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !25945
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 1518 ; 3 uses
  %i.tg = load i8, ptr %i.tf, align 2, !range !129, !noalias !25948, !noundef !97
  switch i8 %i.tg, label %default.unreachable362 [
    i8 0, label %bb.ep
    i8 1, label %bb.er
    i8 2, label %bb.es
    i8 3, label %bb.iv
    i8 4, label %bb.mv
    i8 5, label %bb.ly
    i8 6, label %bb.eu
    i8 7, label %bb.rw
  ]

bb.ep:                                            ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 1519
  store i8 0, ptr %i.th, align 1, !noalias !25948
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 1520
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 1525
  store i8 0, ptr %i.tj, align 1, !noalias !25948
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 1328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ti, i8 1, i64 5, i1 false), !noalias !25948
  %i.tl = load i64, ptr %i.tk, align 8, !noalias !25948, !noundef !97
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.tn = add i64 %i.tl, 1                        ; 2 uses
  store i64 %i.tn, ptr %i.tm, align 8, !noalias !25948
  br label %bb.eq

bb.eq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorEEB19_.exit.i.i, %bb.ep
  %i.to = phi i64 [ %.pre.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorEEB19_.exit.i.i ], [ %i.tn, %bb.ep ]
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 1368 ; 2 uses
  %i.tq = load i64, ptr %i.tp, align 8, !noalias !25948, !noundef !97
  %.not.i2.i = icmp ugt i64 %i.tq, %i.to
  br i1 %.not.i2.i, label %bb.hd, label %bb.hc

bb.er:                                            ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @352) #50
          to label %.noexc.i unwind label %bb.ub, !noalias !25947

.noexc.i:                                         ; preds = %bb.er
  unreachable

bb.es:                                            ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @352) #50
          to label %.noexc3.i unwind label %bb.ub, !noalias !25947

.noexc3.i:                                        ; preds = %bb.es
  unreachable

bb.et:                                            ; preds = %bb.eu
  %i.tr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !25948
  %.val280.i.i = load ptr, ptr %i.tt, align 8, !noalias !25948
  %i.ts = getelementptr i8, ptr %1, i64 1536
  %.val281.i.i = load ptr, ptr %i.ts, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_(ptr %.val280.i.i, ptr nonnull %.val281.i.i) #46
          to label %.body288.i.i unwind label %bb.gc, !noalias !25949

bb.eu:                                            ; preds = %bb.mr, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !25948
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 1528 ; 6 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2i_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bx, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.tt, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ev unwind label %bb.et, !noalias !25949

bb.ev:                                            ; preds = %bb.eu
  %i.tu = load i64, ptr %i.bx, align 8, !range !25922, !noalias !25948, !noundef !97
  %i.tv = icmp eq i64 %i.tu, -9223372036854775780
  br i1 %i.tv, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !25948
  br label %bb.uc

bb.ex:                                            ; preds = %bb.ev
  %i.tw = getelementptr inbounds nuw i8, ptr %1, i64 1440 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.tw, ptr noundef nonnull align 8 dereferenceable(72) %i.bx, i64 72, i1 false), !noalias !25948
  %i.tx = getelementptr inbounds nuw i8, ptr %1, i64 1525 ; 3 uses
  store i8 1, ptr %i.tx, align 1, !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !25948
  %.val278.i.i = load ptr, ptr %i.tt, align 8, !noalias !25948 ; 5 uses
  %i.ty = getelementptr i8, ptr %1, i64 1536
  %.val279.i.i = load ptr, ptr %i.ty, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97 ; 5 uses
  %i.tz = load ptr, ptr %.val279.i.i, align 8, !invariant.load !97, !noalias !25949 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.tz, null
  br i1 %.not.i.i.i.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val278.i.i) ]
  invoke void %i.tz(ptr noundef nonnull %.val278.i.i)
          to label %bb.ez unwind label %bb.fb, !noalias !25949

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.ua = getelementptr inbounds nuw i8, ptr %.val279.i.i, i64 8
  %i.ub = load i64, ptr %i.ua, align 8, !range !98, !invariant.load !97, !noalias !25949 ; 2 uses
  %i.uc = icmp eq i64 %i.ub, 0
  br i1 %i.uc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_.exit.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ud = getelementptr inbounds nuw i8, ptr %.val279.i.i, i64 16
  %i.ue = load i64, ptr %i.ud, align 8, !range !96, !invariant.load !97, !noalias !25949
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val278.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val278.i.i, i64 noundef range(i64 1, 0) %i.ub, i64 noundef range(i64 1, 536870913) %i.ue) #40, !noalias !25949
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_.exit.i.i

bb.fb:                                            ; preds = %bb.ey
  %i.uf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.val279.i.i, i64 8
  %i.uh = load i64, ptr %i.ug, align 8, !range !98, !invariant.load !97, !noalias !25949 ; 2 uses
  %i.ui = icmp eq i64 %i.uh, 0
  br i1 %i.ui, label %.body288.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.uj = getelementptr inbounds nuw i8, ptr %.val279.i.i, i64 16
  %i.uk = load i64, ptr %i.uj, align 8, !range !96, !invariant.load !97, !noalias !25949
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val278.i.i, i64 noundef range(i64 1, 0) %i.uh, i64 noundef range(i64 1, 536870913) %i.uk) #40, !noalias !25949
  br label %.body288.i.i

.body288.i.i:                                     ; preds = %bb.tq, %bb.tp, %bb.ms, %bb.mq, %bb.ge, %bb.fc, %bb.fb, %bb.et
  %.pn132.i.i = phi { ptr, i32 } [ %.pn89.i.i, %bb.ms ], [ %.pn126.pn.pn.pn.i.i, %bb.tq ], [ %.pn126.pn.pn.pn.i.i, %bb.tp ], [ %.pn126.pn.pn.pn.i.i, %bb.ge ], [ %i.tr, %bb.et ], [ %i.aof, %bb.mq ], [ %i.uf, %bb.fc ], [ %i.uf, %bb.fb ]
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 1525
  store i8 0, ptr %i.ul, align 1, !noalias !25948
  br label %.body343.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_.exit.i.i: ; preds = %bb.fa, %bb.ez
  %i.um = load i64, ptr %i.tw, align 8, !range !139, !noalias !25948, !noundef !97 ; 2 uses
  switch i64 %i.um, label %bb.rb [
    i64 -9223372036854775781, label %bb.fd
    i64 -9223372036854775790, label %bb.gf
  ]

bb.fd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_.exit.i.i
  %i.un = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !25948
  %i.uo = icmp samesign ult i64 %i.un, 3
  br i1 %i.uo, label %bb.fe, label %bb.fj

bb.fe:                                            ; preds = %bb.fd
  %i.up = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s2_10___CALLSITE, i64 16) monotonic, align 8, !noalias !25948 ; 2 uses
  %i.uq = icmp ult i8 %i.up, 3
  br i1 %i.uq, label %bb.fg, label %bb.ff, !prof !170

bb.ff:                                            ; preds = %bb.fe
  %i.ur = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s2_10___CALLSITE) #45
          to label %bb.fg unwind label %bb.fn, !noalias !25949

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.sroa.0.0.i.i.i = phi i8 [ %i.up, %bb.fe ], [ %i.ur, %bb.ff ] ; 2 uses
  %i.us = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.us, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ut = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s2_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.uu = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ut, i8 noundef %.sroa.0.0.i.i.i)
          to label %bb.fi unwind label %bb.fn, !noalias !25949

bb.fi:                                            ; preds = %bb.fh
  br i1 %i.uu, label %bb.fs, label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fg, %bb.fd
  %i.uv = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !25948
  %.not720.i.i.a = icmp eq i8 %i.uv, 0
  br i1 %.not720.i.i.a, label %bb.fk, label %bb.fv

bb.fk:                                            ; preds = %bb.fj
  %i.uw = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !25948 ; 2 uses
  %i.ux = icmp ult i64 %i.uw, 6
  call void @llvm.assume(i1 %i.ux)
  %i.uy = icmp samesign ugt i64 %i.uw, 2
  br i1 %i.uy, label %bb.fl, label %bb.fv

bb.fl:                                            ; preds = %bb.fk
  %i.uz = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s2_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97 ; 3 uses
  %i.va = getelementptr i8, ptr %i.uz, i64 32
  %.val261.i.i = load ptr, ptr %i.va, align 8, !noalias !25949, !nonnull !97, !noundef !97
  %i.vb = getelementptr i8, ptr %i.uz, i64 40
  %.val262.i.i = load i64, ptr %i.vb, align 8, !noalias !25949, !noundef !97
  store i64 3, ptr %i.bs, align 8, !alias.scope !25950, !noalias !25948
  %.sroa.6631.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %.val261.i.i, ptr %.sroa.6631.0..sroa_idx.i.i, align 8, !alias.scope !25950, !noalias !25948
  %.sroa.8632.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %.val262.i.i, ptr %.sroa.8632.0..sroa_idx.i.i, align 8, !alias.scope !25950, !noalias !25948
  %i.vc = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.fm unwind label %bb.fn, !noalias !25949 ; 2 uses

bb.fm:                                            ; preds = %bb.fl
  %i.vd = extractvalue { ptr, ptr } %i.vc, 0      ; 2 uses
  %i.ve = extractvalue { ptr, ptr } %i.vc, 1      ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 24
  %i.vg = load ptr, ptr %i.vf, align 8, !invariant.load !97, !noalias !25949, !nonnull !97
  %i.vh = invoke noundef zeroext i1 %i.vg(ptr noundef %i.vd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs)
          to label %bb.fo unwind label %bb.fn, !noalias !25949

bb.fn:                                            ; preds = %bb.fm, %bb.fl, %bb.fh, %bb.ff
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.fo:                                            ; preds = %bb.fm
  br i1 %i.vh, label %bb.fp, label %bb.fv

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !25948
  %i.vj = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s2_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !25948
  store ptr @353, ptr %i.bp, align 8, !noalias !25948
  %i.vl = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr inttoptr (i64 69 to ptr), ptr %i.vl, align 8, !noalias !25948
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 1432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !25948
  %i.vn = getelementptr inbounds nuw i8, ptr %1, i64 1368
  %i.vo = load i64, ptr %i.vn, align 8, !noalias !25948, !noundef !97
  %i.vp = add i64 %i.vo, -1
  store i64 %i.vp, ptr %i.bo, align 8, !noalias !25948
  store ptr %i.bp, ptr %i.bq, align 8, !noalias !25948
  %i.vq = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr @196, ptr %i.vq, align 8, !noalias !25948
  %i.vr = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %i.vm, ptr %i.vr, align 8, !noalias !25948
  %i.vs = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr @235, ptr %i.vs, align 8, !noalias !25948
  %i.vt = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store ptr %i.bo, ptr %i.vt, align 8, !noalias !25948
  %i.vu = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store ptr @309, ptr %i.vu, align 8, !noalias !25948
  store i64 1, ptr %i.br, align 8, !alias.scope !25951, !noalias !25948
  %.sroa.4.0..sroa_idx.i292.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx.i292.i.i, align 8, !alias.scope !25951, !noalias !25948
  %.sroa.5.0..sroa_idx.i293.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i293.i.i, align 8, !alias.scope !25951, !noalias !25948
  %i.vv = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %i.vk, ptr %i.vv, align 8, !alias.scope !25951, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !25948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !25948
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.uz, ptr noundef nonnull %i.vd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ve, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.br)
          to label %bb.fr unwind label %bb.fq, !noalias !25949

bb.fq:                                            ; preds = %bb.fp
  %i.vw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !25948
  br label %bb.ge

bb.fr:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !25948
  br label %bb.fv

bb.fs:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !25948
  %i.vx = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s2_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !25948
  store ptr @353, ptr %i.bu, align 8, !noalias !25948
  %i.vz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr inttoptr (i64 69 to ptr), ptr %i.vz, align 8, !noalias !25948
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 1432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !25948
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 1368
  %i.wc = load i64, ptr %i.wb, align 8, !noalias !25948, !noundef !97
  %i.wd = add i64 %i.wc, -1
  store i64 %i.wd, ptr %i.bt, align 8, !noalias !25948
  store ptr %i.bu, ptr %i.bv, align 8, !noalias !25948
  %i.we = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @196, ptr %i.we, align 8, !noalias !25948
  %i.wf = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.wa, ptr %i.wf, align 8, !noalias !25948
  %i.wg = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr @235, ptr %i.wg, align 8, !noalias !25948
  %i.wh = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr %i.bt, ptr %i.wh, align 8, !noalias !25948
  %i.wi = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store ptr @309, ptr %i.wi, align 8, !noalias !25948
  store i64 1, ptr %i.bw, align 8, !noalias !25948
  %.sroa.7624.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bv, ptr %.sroa.7624.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.8625.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 3, ptr %.sroa.8625.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.9626.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.vy, ptr %.sroa.9626.0..sroa_idx.i.i, align 8, !noalias !25948
  invoke fastcc void @_RNCNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s4_0Bf_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.bw)
          to label %bb.fu unwind label %bb.ft, !noalias !25949

bb.ft:                                            ; preds = %bb.fs
  %i.wj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !25948
  br label %bb.ge

bb.fu:                                            ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !25948
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.fr, %bb.fo, %bb.fk, %bb.fj
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 1432
  %i.wl = load i64, ptr %i.wk, align 8, !noalias !25948, !noundef !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !25948
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 1524
  store i8 0, ptr %i.wm, align 4, !noalias !25948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.bn, ptr noundef nonnull align 8 dereferenceable(504) %i.st, i64 504, i1 false), !noalias !25948
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 1516
  %i.wo = load i8, ptr %i.wn, align 4, !range !105, !noalias !25948, !noundef !97 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 1517
  %i.wq = load i8, ptr %i.wp, align 1, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !25948
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 1523
  store i8 0, ptr %i.wr, align 1, !noalias !25948
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 1312
  %i.wt = load ptr, ptr %i.ws, align 8, !noalias !25948, !nonnull !97, !noundef !97 ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 1320
  %i.wv = load ptr, ptr %i.wu, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97 ; 2 uses
  store ptr %i.wt, ptr %i.bm, align 8, !noalias !25948
  %i.ww = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.wv, ptr %i.ww, align 8, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !25948
  %i.wx = getelementptr inbounds nuw i8, ptr %1, i64 1522
  store i8 0, ptr %i.wx, align 2, !noalias !25948
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 1280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.wy, i64 32, i1 false), !noalias !25948
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !25952
  %i.wz = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 32, i64 noundef range(i64 8, 17) 8) #40, !noalias !25952 ; 3 uses
  %i.xa = icmp eq ptr %i.wz, null
  br i1 %i.xa, label %bb.fw, label %bb.ga, !prof !101

bb.fw:                                            ; preds = %bb.fv
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #48
          to label %.noexc300.i.i unwind label %bb.fx, !noalias !25949

.noexc300.i.i:                                    ; preds = %bb.fw
  unreachable

bb.fx:                                            ; preds = %bb.fw
  %i.xb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl) #46
          to label %.body.i.i unwind label %bb.fy, !noalias !25949

bb.fy:                                            ; preds = %bb.fx
  %i.xc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !25949
  unreachable

.body.i.i:                                        ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !25948
  %i.xd = atomicrmw add ptr %i.wt, i64 -1 release, align 8, !noalias !25953
  %i.xe = icmp eq i64 %i.xd, 1
  br i1 %i.xe, label %bb.fz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i.i

bb.fz:                                            ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bm) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i.i unwind label %bb.gc, !noalias !25949

bb.ga:                                            ; preds = %bb.fv
  %.not.i296.i.i = icmp eq i8 %i.wo, 2
  %spec.select.i297.i.i = select i1 %.not.i296.i.i, i8 3, i8 %i.wq ; 2 uses
  %.not.i298.i.i = icmp eq i8 %spec.select.i297.i.i, 3
  %spec.select.i299.i.i = select i1 %.not.i298.i.i, i8 2, i8 %spec.select.i297.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wz, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false), !noalias !25949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !25948
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 1521
  store i8 0, ptr %i.xf, align 1, !noalias !25948
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 1336
  %i.xh = getelementptr inbounds nuw i8, ptr %1, i64 1368
  %i.xi = load i64, ptr %i.xh, align 8, !noalias !25948, !noundef !97
  %i.xj = add i64 %i.xi, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(504) %i.af, ptr noundef nonnull align 8 dereferenceable(504) %i.bn, i64 504, i1 false), !noalias !25948
  %i.xk = and i8 %i.wo, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !25948
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 504
  store ptr %i.wt, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  store ptr %i.wv, ptr %.sroa.6.0..sroa_idx.i.i, align 16, !noalias !25948
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 520
  store i64 %i.wl, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 528
  store ptr %i.wz, ptr %.sroa.8.0..sroa_idx.i.i, align 16, !noalias !25948
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 536
  store ptr @229, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 544
  %i.xl = load <2 x ptr>, ptr %i.xg, align 8, !noalias !25948
  store <2 x ptr> %i.xl, ptr %.sroa.10.0..sroa_idx.i.i, align 16, !noalias !25948
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 560
  store i64 %i.xj, ptr %.sroa.12.0..sroa_idx.i.i, align 16, !noalias !25948
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 568
  store i8 %i.xk, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 569
  store i8 %spec.select.i299.i.i, ptr %.sroa.14.0..sroa_idx.i.i, align 1, !noalias !25948
  br label %bb.gb

bb.gb:                                            ; preds = %bb.sl, %bb.ga
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 1525
  store i8 0, ptr %i.xm, align 1, !noalias !25948
  br label %bb.qy

bb.gc:                                            ; preds = %bb.ua, %bb.tz, %bb.tx, %bb.tu, %bb.ts, %bb.tq, %bb.to, %bb.tn, %bb.tm, %bb.tl, %bb.ti, %bb.rv, %bb.qs, %bb.qr, %bb.pk, %.body405.i.i, %bb.mh, %bb.lx, %bb.ky, %bb.iu, %bb.io, %bb.ig, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit.i.i, %bb.ia, %bb.hx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i.i, %bb.fz, %bb.et
  %i.xn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !25949
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i.i: ; preds = %bb.fz, %.body.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !25948
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction10CommitDataEBM_(ptr noalias noundef align 8 dereferenceable(504) %i.bn) #46
          to label %bb.gd unwind label %bb.gc, !noalias !25949

bb.gd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !25948
  br label %bb.ge

bb.ge:                                            ; preds = %bb.sn, %bb.ra, %bb.gd, %bb.ft, %bb.fq, %bb.fn
  %.pn126.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn126.pn.pn.i.i, %bb.ra ], [ %.pn118.i.i, %bb.sn ], [ %i.xb, %bb.gd ], [ %i.wj, %bb.ft ], [ %i.vi, %bb.fn ], [ %i.vw, %bb.fq ] ; 3 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %1, i64 1440 ; 2 uses
  %i.xp = load i64, ptr %i.xo, align 8, !range !139, !noalias !25948, !noundef !97
  %.not131.i.i = icmp eq i64 %i.xp, -9223372036854775781
  br i1 %.not131.i.i, label %.body288.i.i, label %bb.tp

bb.gf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !25948
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 1448
  %i.xr = load i64, ptr %i.xq, align 8, !noalias !25948, !noundef !97
  store i64 %i.xr, ptr %i.bk, align 8, !noalias !25948
  %i.xs = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !25948
  %i.xt = icmp samesign ult i64 %i.xs, 4
  br i1 %i.xt, label %bb.gg, label %bb.gl

bb.gg:                                            ; preds = %bb.gf
  %i.xu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s3_10___CALLSITE, i64 16) monotonic, align 8, !noalias !25948 ; 2 uses
  %i.xv = icmp ult i8 %i.xu, 3
  br i1 %i.xv, label %bb.gi, label %bb.gh, !prof !170

bb.gh:                                            ; preds = %bb.gg
  %i.xw = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s3_10___CALLSITE) #45
          to label %bb.gi unwind label %bb.gp, !noalias !25949

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.sroa.0.0.i303.i.i = phi i8 [ %i.xu, %bb.gg ], [ %i.xw, %bb.gh ] ; 2 uses
  %i.xx = icmp eq i8 %.sroa.0.0.i303.i.i, 0
  br i1 %i.xx, label %bb.gl, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.xy = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s3_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.xz = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.xy, i8 noundef %.sroa.0.0.i303.i.i)
          to label %bb.gk unwind label %bb.gp, !noalias !25949

bb.gk:                                            ; preds = %bb.gj
  br i1 %i.xz, label %bb.gw, label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gi, %bb.gf
  %i.ya = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !25948
  %.not719.i.i.a = icmp eq i8 %i.ya, 0
  br i1 %.not719.i.i.a, label %bb.gm, label %bb.gu

bb.gm:                                            ; preds = %bb.gl
  %i.yb = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !25948 ; 2 uses
  %i.yc = icmp ult i64 %i.yb, 6
  call void @llvm.assume(i1 %i.yc)
  %i.yd = icmp samesign ugt i64 %i.yb, 1
  br i1 %i.yd, label %bb.gn, label %bb.gu

bb.gn:                                            ; preds = %bb.gm
  %i.ye = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s3_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97 ; 3 uses
  %i.yf = getelementptr i8, ptr %i.ye, i64 32
  %.val259.i.i = load ptr, ptr %i.yf, align 8, !noalias !25949, !nonnull !97, !noundef !97
  %i.yg = getelementptr i8, ptr %i.ye, i64 40
  %.val260.i.i = load i64, ptr %i.yg, align 8, !noalias !25949, !noundef !97
  store i64 2, ptr %i.bg, align 8, !alias.scope !25954, !noalias !25948
  %.sroa.6643.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.val259.i.i, ptr %.sroa.6643.0..sroa_idx.i.i, align 8, !alias.scope !25954, !noalias !25948
  %.sroa.8644.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %.val260.i.i, ptr %.sroa.8644.0..sroa_idx.i.i, align 8, !alias.scope !25954, !noalias !25948
  %i.yh = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.go unwind label %bb.gp, !noalias !25949 ; 2 uses

bb.go:                                            ; preds = %bb.gn
  %i.yi = extractvalue { ptr, ptr } %i.yh, 0      ; 2 uses
  %i.yj = extractvalue { ptr, ptr } %i.yh, 1      ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 24
  %i.yl = load ptr, ptr %i.yk, align 8, !invariant.load !97, !noalias !25949, !nonnull !97
  %i.ym = invoke noundef zeroext i1 %i.yl(ptr noundef %i.yi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %bb.gq unwind label %bb.gp, !noalias !25949

bb.gp:                                            ; preds = %bb.go, %bb.gn, %bb.gj, %bb.gh
  %i.yn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ra

bb.gq:                                            ; preds = %bb.go
  br i1 %i.ym, label %bb.gr, label %bb.gu

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !25948
  %i.yo = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s3_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !25948
  store ptr @354, ptr %i.bd, align 8, !noalias !25948
  %i.yq = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr inttoptr (i64 69 to ptr), ptr %i.yq, align 8, !noalias !25948
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 1368
  store ptr %i.bd, ptr %i.be, align 8, !noalias !25948
  %i.ys = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @196, ptr %i.ys, align 8, !noalias !25948
  %i.yt = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bk, ptr %i.yt, align 8, !noalias !25948
  %i.yu = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr @235, ptr %i.yu, align 8, !noalias !25948
  %i.yv = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.yr, ptr %i.yv, align 8, !noalias !25948
  %i.yw = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr @206, ptr %i.yw, align 8, !noalias !25948
  store i64 1, ptr %i.bf, align 8, !alias.scope !25955, !noalias !25948
  %.sroa.4.0..sroa_idx.i310.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx.i310.i.i, align 8, !alias.scope !25955, !noalias !25948
  %.sroa.5.0..sroa_idx.i311.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i311.i.i, align 8, !alias.scope !25955, !noalias !25948
  %i.yx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %i.yp, ptr %i.yx, align 8, !alias.scope !25955, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !25948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !25948
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ye, ptr noundef nonnull %i.yi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.yj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bf)
          to label %bb.gt unwind label %bb.gs, !noalias !25949

bb.gs:                                            ; preds = %bb.gr
  %i.yy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !25948
  br label %bb.ra

bb.gt:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !25948
  br label %bb.gu

bb.gu:                                            ; preds = %bb.hb, %bb.gt, %bb.gq, %bb.gm, %bb.gl
  %i.yz = getelementptr inbounds nuw i8, ptr %1, i64 1368 ; 2 uses
  %i.za = load i64, ptr %i.yz, align 8, !noalias !25948, !noundef !97
  %i.zb = add i64 %i.za, 1
  store i64 %i.zb, ptr %i.yz, align 8, !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !25948
  %i.zc = load i64, ptr %i.tw, align 8, !range !139, !alias.scope !25956, !noalias !25948, !noundef !97
  %i.zd = icmp eq i64 %i.zc, -9223372036854775781
  br i1 %i.zd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorEEB19_.exit.i.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorEBM_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.tw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorEEB19_.exit.i.i unwind label %bb.mq, !noalias !25949

bb.gw:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !25948
  %i.ze = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s3_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !25948
  store ptr @354, ptr %i.bh, align 8, !noalias !25948
  %i.zg = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr inttoptr (i64 69 to ptr), ptr %i.zg, align 8, !noalias !25948
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 1368
  store ptr %i.bh, ptr %i.bi, align 8, !noalias !25948
  %i.zi = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @196, ptr %i.zi, align 8, !noalias !25948
  %i.zj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bk, ptr %i.zj, align 8, !noalias !25948
  %i.zk = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr @235, ptr %i.zk, align 8, !noalias !25948
  %i.zl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.zh, ptr %i.zl, align 8, !noalias !25948
  %i.zm = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store ptr @206, ptr %i.zm, align 8, !noalias !25948
  store i64 1, ptr %i.bj, align 8, !noalias !25948
  %.sroa.7636.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bi, ptr %.sroa.7636.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.8637.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 3, ptr %.sroa.8637.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.9638.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.zf, ptr %.sroa.9638.0..sroa_idx.i.i, align 8, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !25948
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ze, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj)
          to label %.noexc316.i.i unwind label %bb.ha, !noalias !25949

.noexc316.i.i:                                    ; preds = %bb.gw
  %i.zn = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !25957
  %i.zo = icmp eq i8 %i.zn, 0
  br i1 %i.zo, label %bb.gx, label %bb.hb

bb.gx:                                            ; preds = %.noexc316.i.i
  %i.zp = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !25957 ; 2 uses
  %i.zq = icmp ult i64 %i.zp, 6
  call void @llvm.assume(i1 %i.zq)
  %i.zr = icmp samesign ugt i64 %i.zp, 1
  br i1 %i.zr, label %bb.gy, label %bb.hb

bb.gy:                                            ; preds = %bb.gx
  %i.zs = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s3_10___CALLSITE, align 8, !noalias !25957, !nonnull !97, !align !100, !noundef !97 ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 32
  %i.zu = load ptr, ptr %i.zt, align 8, !noalias !25949, !nonnull !97, !noundef !97
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zs, i64 40
  %i.zw = load i64, ptr %i.zv, align 8, !noalias !25949, !noundef !97
  store i64 2, ptr %i.w, align 8, !noalias !25957
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.zu, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !25957
  %.sroa.5.0..sroa_idx.i315.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.zw, ptr %.sroa.5.0..sroa_idx.i315.i.i, align 8, !noalias !25957
  %i.zx = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc317.i.i unwind label %bb.ha, !noalias !25949 ; 2 uses

.noexc317.i.i:                                    ; preds = %bb.gy
  %i.zy = extractvalue { ptr, ptr } %i.zx, 0      ; 2 uses
  %i.zz = extractvalue { ptr, ptr } %i.zx, 1      ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 24
  %i.aab = load ptr, ptr %i.aaa, align 8, !invariant.load !97, !noalias !25949, !nonnull !97
  %i.aac = invoke noundef zeroext i1 %i.aab(ptr noundef %i.zy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w) #49
          to label %.noexc318.i.i unwind label %bb.ha, !noalias !25949, !inline_history !25765

end_hunk_0
begin_hunk_1_@_RNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB7_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  store ptr @364, ptr %i.avl, align 8, !noalias !25948
  store i64 1, ptr %i.cp, align 8, !alias.scope !26020, !noalias !25948
  %.sroa.4.0..sroa_idx.i421.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.co, ptr %.sroa.4.0..sroa_idx.i421.i.i, align 8, !alias.scope !26020, !noalias !25948
  %.sroa.5.0..sroa_idx.i422.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i422.i.i, align 8, !alias.scope !26020, !noalias !25948
  %i.avm = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store ptr %i.ave, ptr %i.avm, align 8, !alias.scope !26020, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !25948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false), !noalias !25948
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aut, ptr noundef nonnull %i.aux, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.auy, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cp)
          to label %bb.qj unwind label %bb.qi, !noalias !25949

bb.qi:                                            ; preds = %bb.qh
  %i.avn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !25948
  br label %bb.qr

bb.qj:                                            ; preds = %bb.qh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !25948
  br label %bb.qk

bb.qk:                                            ; preds = %bb.qn, %bb.qj, %bb.qg, %bb.qc, %bb.qb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !25948
  %i.avo = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.avo, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false), !noalias !25948
  store i64 -9223372036854775787, ptr %i.ck, align 8, !noalias !25948
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_16TransactionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.cl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ck)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit424.i.i unwind label %bb.qp, !noalias !25949

bb.ql:                                            ; preds = %bb.qa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !25948
  %i.avp = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s0_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !25948
  store ptr @363, ptr %i.cs, align 8, !noalias !25948
  %i.avr = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.avr, align 8, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !25948
  %i.avs = getelementptr inbounds nuw i8, ptr %1, i64 1512
  store ptr %i.cv, ptr %i.cr, align 8, !noalias !25948
  store ptr %i.cs, ptr %i.ct, align 8, !noalias !25948
  %i.avt = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr @196, ptr %i.avt, align 8, !noalias !25948
  %i.avu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store ptr %i.avs, ptr %i.avu, align 8, !noalias !25948
  %i.avv = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store ptr @361, ptr %i.avv, align 8, !noalias !25948
  %i.avw = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  store ptr %i.cr, ptr %i.avw, align 8, !noalias !25948
  %i.avx = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store ptr @364, ptr %i.avx, align 8, !noalias !25948
  store i64 1, ptr %i.cu, align 8, !noalias !25948
  %.sroa.7576.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.ct, ptr %.sroa.7576.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.8577.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 3, ptr %.sroa.8577.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.9578.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store ptr %i.avq, ptr %.sroa.9578.0..sroa_idx.i.i, align 8, !noalias !25948
  invoke fastcc void @_RNCNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s2_0Bf_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.cu)
          to label %bb.qn unwind label %bb.qm, !noalias !25949

bb.qm:                                            ; preds = %bb.ql
  %i.avy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !25948
  br label %bb.qr

bb.qn:                                            ; preds = %bb.ql
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !25948
  br label %bb.qk

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit424.i.i: ; preds = %bb.qk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !25948
  %i.avz = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.avz, ptr noundef nonnull align 16 dereferenceable(96) %i.cl, i64 96, i1 false), !noalias !25948
  store i64 20, ptr %i.af, align 16, !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !25948
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker15ConflictCheckerEBO_(ptr noalias noundef align 16 dereferenceable(528) %i.cy)
          to label %bb.qo unwind label %bb.pt, !noalias !25949

bb.qo:                                            ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit424.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !25948
  br label %bb.qu

bb.qp:                                            ; preds = %bb.qk
  %i.awa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !25948
  br label %bb.qq

bb.qq:                                            ; preds = %bb.qr, %bb.qp
  %.pn62705.i.i = phi { ptr, i32 } [ %.pn62.ph.i.i, %bb.qr ], [ %i.awa, %bb.qp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !25948
  br label %bb.qs

bb.qr:                                            ; preds = %bb.qm, %bb.qi, %bb.qf
  %.pn62.ph.i.i = phi { ptr, i32 } [ %i.avn, %bb.qi ], [ %i.avy, %bb.qm ], [ %i.avc, %bb.qf ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cv) #46
          to label %bb.qq unwind label %bb.gc, !noalias !25949

bb.qs:                                            ; preds = %bb.qq, %bb.pq
  %.pn62.pn.i.i = phi { ptr, i32 } [ %.pn62705.i.i, %bb.qq ], [ %i.auc, %bb.pq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !25948
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker15ConflictCheckerEBO_(ptr noalias noundef align 16 dereferenceable(528) %i.cy) #46
          to label %bb.qt unwind label %bb.gc, !noalias !25949

bb.qt:                                            ; preds = %bb.qs, %bb.pt, %bb.po
  %.pn65.i.i = phi { ptr, i32 } [ %i.auh, %bb.pt ], [ %.pn62.pn.i.i, %bb.qs ], [ %i.aub, %bb.po ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !25948
  br label %.body410.i.i

bb.qu:                                            ; preds = %bb.qx, %bb.qv, %bb.qo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !25948
  br label %bb.qy

bb.qv:                                            ; preds = %bb.pm
  %i.awb = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %.sroa.8568.16..sroa_idx570.i.i = getelementptr inbounds nuw i8, ptr %.sroa.8568.i.i, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8568.16..sroa_idx570.i.i, ptr noundef nonnull align 16 dereferenceable(96) %i.awb, i64 96, i1 false), !alias.scope !26017, !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !25948
  %i.awc = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.awc, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8568.16..sroa_idx570.i.i, i64 96, i1 false), !noalias !25948
  store i64 20, ptr %i.af, align 16, !alias.scope !26021, !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8568.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker20WinningCommitSummaryEBO_(ptr noalias noundef align 8 dereferenceable(280) %i.dd)
          to label %bb.qu unwind label %bb.qw, !noalias !25949

.body410.i.i:                                     ; preds = %bb.qw, %bb.qt, %bb.pk, %.body405.i.i
  %.pn70.pn.i.i = phi { ptr, i32 } [ %.pn65.i.i, %bb.qt ], [ %i.awd, %bb.qw ], [ %i.att, %bb.pk ], [ %eh.lpad-body406.i.i, %.body405.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !25948
  br label %.body343.i.i

bb.qw:                                            ; preds = %bb.qv
  %i.awd = landingpad { ptr, i32 }
          cleanup
  br label %.body410.i.i

bb.qx:                                            ; preds = %bb.pi
  %.sroa.7547.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.7547.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.11531.i.i, i64 24, i1 false), !noalias !25948
  %.sroa.8548.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8548.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12532.i.i, i64 24, i1 false), !noalias !25948
  call void @llvm.experimental.noalias.scope.decl(metadata !26022)
  %i.awe = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.sroa.679.0.i.i.i, ptr %i.awe, align 16, !alias.scope !26023, !noalias !25948
  %.sroa.2542.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %.sroa.1080.0.i.i.i, ptr %.sroa.2542.0..sroa_idx.i.i, align 8, !alias.scope !26023, !noalias !25948
  %.sroa.3543.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i64 %.sroa.1481.0.i.i.i, ptr %.sroa.3543.0..sroa_idx.i.i, align 16, !alias.scope !26023, !noalias !25948
  %.sroa.4544.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i64 %.sroa.1682.sroa.0.0.i.i.i, ptr %.sroa.4544.0..sroa_idx.i.i, align 8, !alias.scope !26023, !noalias !25948
  %.sroa.5545.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i64 %.sroa.1682.sroa.4.sroa.0.0.i.i.i, ptr %.sroa.5545.0..sroa_idx.i.i, align 16, !alias.scope !26023, !noalias !25948
  %.sroa.6546.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store i64 %.sroa.1682.sroa.4.sroa.4.sroa.0.0.i.i.i, ptr %.sroa.6546.0..sroa_idx.i.i, align 8, !alias.scope !26023, !noalias !25948
  store i64 20, ptr %i.af, align 16, !alias.scope !26024, !noalias !25948
  br label %bb.qu

bb.qy:                                            ; preds = %bb.qz, %bb.qu, %bb.mt, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit357.i.i, %bb.gb
  %i.awf = getelementptr inbounds nuw i8, ptr %1, i64 1523
  %i.awg = load i8, ptr %i.awf, align 1, !range !107, !noalias !25948, !noundef !97
  %i.awh = trunc nuw i8 %i.awg to i1
  br i1 %i.awh, label %bb.sp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit449.i.i

bb.qz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i.i
  %.sroa.3474.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.3474.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.5.i.i, i64 80, i1 false), !noalias !25948
  call void @llvm.experimental.noalias.scope.decl(metadata !26025)
  %i.awi = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.aee, ptr %i.awi, align 16, !alias.scope !26026, !noalias !25948
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %.sroa.3.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !26026, !noalias !25948
  store i64 20, ptr %i.af, align 16, !alias.scope !26027, !noalias !25948
  br label %bb.qy

bb.ra:                                            ; preds = %bb.ha, %bb.gs, %bb.gp
  %.pn126.pn.pn.i.i = phi { ptr, i32 } [ %i.aad, %bb.ha ], [ %i.yn, %bb.gp ], [ %i.yy, %bb.gs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !25948
  br label %bb.ge

bb.rb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEEB2B_.exit.i.i
  %3 = icmp ne i64 %i.um, -9223372036854775788
  call void @llvm.assume(i1 %3)
  store i8 0, ptr %i.tx, align 1, !noalias !25948
  %i.awj = getelementptr inbounds nuw i8, ptr %1, i64 1519
  store i8 1, ptr %i.awj, align 1, !noalias !25948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.tt, ptr noundef nonnull align 8 dereferenceable(72) %i.tw, i64 72, i1 false), !noalias !25948
  %i.awk = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !25948
  %i.awl = icmp samesign ult i64 %i.awk, 5
  br i1 %i.awl, label %bb.rc, label %bb.rh

bb.rc:                                            ; preds = %bb.rb
  %i.awm = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s4_10___CALLSITE, i64 16) monotonic, align 8, !noalias !25948 ; 2 uses
  %i.awn = icmp ult i8 %i.awm, 3
  br i1 %i.awn, label %bb.re, label %bb.rd, !prof !170

bb.rd:                                            ; preds = %bb.rc
  %i.awo = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s4_10___CALLSITE) #45
          to label %bb.re unwind label %bb.sf, !noalias !25949

bb.re:                                            ; preds = %bb.rd, %bb.rc
  %.sroa.0.0.i428.i.i = phi i8 [ %i.awm, %bb.rc ], [ %i.awo, %bb.rd ] ; 2 uses
  %i.awp = icmp eq i8 %.sroa.0.0.i428.i.i, 0
  br i1 %i.awp, label %bb.rh, label %bb.rf

bb.rf:                                            ; preds = %bb.re
  %i.awq = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s4_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.awr = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.awq, i8 noundef %.sroa.0.0.i428.i.i)
          to label %bb.rg unwind label %bb.sf, !noalias !25949

bb.rg:                                            ; preds = %bb.rf
  br i1 %i.awr, label %bb.rp, label %bb.rh

bb.rh:                                            ; preds = %bb.rg, %bb.re, %bb.rb
  %i.aws = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !25948
  %.not717.i.i = icmp eq i8 %i.aws, 0
  br i1 %.not717.i.i, label %bb.ri, label %bb.rs

bb.ri:                                            ; preds = %bb.rh
  %i.awt = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !25948 ; 2 uses
  %i.awu = icmp ult i64 %i.awt, 6
  call void @llvm.assume(i1 %i.awu)
  %.not718.i.i = icmp eq i64 %i.awt, 0
  br i1 %.not718.i.i, label %bb.rs, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.awv = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s4_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97 ; 3 uses
  %i.aww = getelementptr i8, ptr %i.awv, i64 32
  %.val247.i.i = load ptr, ptr %i.aww, align 8, !noalias !25949, !nonnull !97, !noundef !97
  %i.awx = getelementptr i8, ptr %i.awv, i64 40
  %.val248.i.i = load i64, ptr %i.awx, align 8, !noalias !25949, !noundef !97
  store i64 1, ptr %i.ay, align 8, !alias.scope !26028, !noalias !25948
  %.sroa.6655.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %.val247.i.i, ptr %.sroa.6655.0..sroa_idx.i.i, align 8, !alias.scope !26028, !noalias !25948
  %.sroa.8656.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %.val248.i.i, ptr %.sroa.8656.0..sroa_idx.i.i, align 8, !alias.scope !26028, !noalias !25948
  %i.awy = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.rk unwind label %bb.sf, !noalias !25949 ; 2 uses

bb.rk:                                            ; preds = %bb.rj
  %i.awz = extractvalue { ptr, ptr } %i.awy, 0    ; 2 uses
  %i.axa = extractvalue { ptr, ptr } %i.awy, 1    ; 2 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 24
  %i.axc = load ptr, ptr %i.axb, align 8, !invariant.load !97, !noalias !25949, !nonnull !97
  %i.axd = invoke noundef zeroext i1 %i.axc(ptr noundef %i.awz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %bb.rl unwind label %bb.sf, !noalias !25949

bb.rl:                                            ; preds = %bb.rk
  br i1 %i.axd, label %bb.rm, label %bb.rs

bb.rm:                                            ; preds = %bb.rl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !25948
  %i.axe = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s4_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !25948
  store ptr @365, ptr %i.av, align 8, !noalias !25948
  %i.axg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr inttoptr (i64 47 to ptr), ptr %i.axg, align 8, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !25948
  %i.axh = getelementptr inbounds nuw i8, ptr %1, i64 1432
  store ptr %i.tt, ptr %i.au, align 8, !noalias !25948
  store ptr %i.av, ptr %i.aw, align 8, !noalias !25948
  %i.axi = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @196, ptr %i.axi, align 8, !noalias !25948
  %i.axj = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.axh, ptr %i.axj, align 8, !noalias !25948
  %i.axk = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr @235, ptr %i.axk, align 8, !noalias !25948
  %i.axl = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.au, ptr %i.axl, align 8, !noalias !25948
  %i.axm = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr @366, ptr %i.axm, align 8, !noalias !25948
  store i64 1, ptr %i.ax, align 8, !alias.scope !26029, !noalias !25948
  %.sroa.4.0..sroa_idx.i435.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx.i435.i.i, align 8, !alias.scope !26029, !noalias !25948
  %.sroa.5.0..sroa_idx.i436.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i436.i.i, align 8, !alias.scope !26029, !noalias !25948
  %i.axn = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.axf, ptr %i.axn, align 8, !alias.scope !26029, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !25948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !25948
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.awv, ptr noundef nonnull %i.awz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.axa, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ax)
          to label %bb.ro unwind label %bb.rn, !noalias !25949

bb.rn:                                            ; preds = %bb.rm
  %i.axo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !25948
  br label %.body441.i.i

bb.ro:                                            ; preds = %bb.rm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !25948
  br label %bb.rs

bb.rp:                                            ; preds = %bb.rg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !25948
  %i.axp = load ptr, ptr @_RNvNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s4_10___CALLSITE, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !25948
  store ptr @365, ptr %i.ba, align 8, !noalias !25948
  %i.axr = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr inttoptr (i64 47 to ptr), ptr %i.axr, align 8, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !25948
  %i.axs = getelementptr inbounds nuw i8, ptr %1, i64 1432
  store ptr %i.tt, ptr %i.az, align 8, !noalias !25948
  store ptr %i.ba, ptr %i.bb, align 8, !noalias !25948
  %i.axt = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @196, ptr %i.axt, align 8, !noalias !25948
  %i.axu = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.axs, ptr %i.axu, align 8, !noalias !25948
  %i.axv = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr @235, ptr %i.axv, align 8, !noalias !25948
  %i.axw = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %i.az, ptr %i.axw, align 8, !noalias !25948
  %i.axx = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr @366, ptr %i.axx, align 8, !noalias !25948
  store i64 1, ptr %i.bc, align 8, !noalias !25948
  %.sroa.7648.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %.sroa.7648.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.8649.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 3, ptr %.sroa.8649.0..sroa_idx.i.i, align 8, !noalias !25948
  %.sroa.9650.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.axq, ptr %.sroa.9650.0..sroa_idx.i.i, align 8, !noalias !25948
  invoke fastcc void @_RNCNCNCNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBb_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future00s6_0Bf_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.bc)
          to label %bb.rr unwind label %bb.rq, !noalias !25949

bb.rq:                                            ; preds = %bb.rp
  %i.axy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !25948
  br label %.body441.i.i

bb.rr:                                            ; preds = %bb.rp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !25948
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %bb.ro, %bb.rl, %bb.ri, %bb.rh
  %i.axz = getelementptr inbounds nuw i8, ptr %1, i64 1312
  %.val201.i.i = load ptr, ptr %i.axz, align 8, !noalias !25948, !nonnull !97, !noundef !97
  %i.aya = getelementptr i8, ptr %1, i64 1320
  %.val202.i.i = load ptr, ptr %i.aya, align 8, !noalias !25948, !nonnull !97, !align !100, !noundef !97 ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %.val202.i.i, i64 16
  %i.ayc = load i64, ptr %i.ayb, align 8, !range !96, !invariant.load !97, !noalias !25949
  %i.ayd = add nsw i64 %i.ayc, -1
  %i.aye = and i64 %i.ayd, -16
  %i.ayf = getelementptr inbounds nuw i8, ptr %.val201.i.i, i64 %i.aye
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 16
  %i.ayh = getelementptr inbounds nuw i8, ptr %1, i64 1432
  %i.ayi = load i64, ptr %i.ayh, align 8, !noalias !25948, !noundef !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !25948
  %i.ayj = getelementptr inbounds nuw i8, ptr %1, i64 1520
  store i8 0, ptr %i.ayj, align 8, !noalias !25948
  %i.ayk = getelementptr inbounds nuw i8, ptr %1, i64 1376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.ayk, i64 32, i1 false), !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !25948
  %i.ayl = getelementptr inbounds nuw i8, ptr %1, i64 1352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ayl, i64 16, i1 false), !noalias !25948
  %i.aym = getelementptr inbounds nuw i8, ptr %.val202.i.i, i64 96
  %i.ayn = load ptr, ptr %i.aym, align 8, !invariant.load !97, !noalias !25949, !nonnull !97
  %i.ayo = invoke { ptr, ptr } %i.ayn(ptr noundef nonnull %i.ayg, i64 noundef %i.ayi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.at, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.as)
          to label %bb.ru unwind label %bb.rt, !noalias !25949 ; 2 uses

bb.rt:                                            ; preds = %bb.rs
  %i.ayp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !25948
  br label %.body441.i.i
end_hunk_1
