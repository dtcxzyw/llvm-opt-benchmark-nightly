Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/vector_test?download=true
inline.NumInlined: 28809
inline.NumDeleted: 5416
loop-unroll.NumCompletelyUnrolled: 323
loop-unroll.NumRuntimeUnrolled: 1736
loop-unroll.NumUnrolled: 2069
begin_hunk_0_@_ZN5boost9container4test20vector_copyable_onlyINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.mb = getelementptr inbounds nuw i8, ptr %i.gn, i64 172
  store i32 1, ptr %i.mb, align 4, !tbaa !318, !noalias !3421
  %i.mc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.md = add i32 %i.mc, 1
  store i32 %i.md, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.me = getelementptr inbounds nuw i8, ptr %i.gn, i64 176
  store i32 1, ptr %i.me, align 4, !tbaa !318, !noalias !3421
  %i.mf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.mg = add i32 %i.mf, 1
  store i32 %i.mg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.mh = getelementptr inbounds nuw i8, ptr %i.gn, i64 180
  store i32 1, ptr %i.mh, align 4, !tbaa !318, !noalias !3421
  %i.mi = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.mj = add i32 %i.mi, 1
  store i32 %i.mj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.mk = getelementptr inbounds nuw i8, ptr %i.gn, i64 184
  store i32 1, ptr %i.mk, align 4, !tbaa !318, !noalias !3421
  %i.ml = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.mm = add i32 %i.ml, 1
  store i32 %i.mm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.mn = getelementptr inbounds nuw i8, ptr %i.gn, i64 188
  store i32 1, ptr %i.mn, align 4, !tbaa !318, !noalias !3421
  %i.mo = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.mp = add i32 %i.mo, 1
  store i32 %i.mp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.mq = getelementptr inbounds nuw i8, ptr %i.gn, i64 192
  store i32 1, ptr %i.mq, align 4, !tbaa !318, !noalias !3421
  %i.mr = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.ms = add i32 %i.mr, 1
  store i32 %i.ms, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.mt = getelementptr inbounds nuw i8, ptr %i.gn, i64 196
  store i32 1, ptr %i.mt, align 4, !tbaa !318, !noalias !3421
  %i.mu = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.mv = add i32 %i.mu, 1
  store i32 %i.mv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i407

bb.g:                                             ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx.i, %.idx471
  %i.mw = ashr exact i64 %gepdiff, 2              ; 8 uses
  %.not.i.i.i.i390 = icmp ult i64 %i.mw, 50
  br i1 %.not.i.i.i.i390, label %.lr.ph.i43.preheader.i.i.i.i408, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.mx = getelementptr inbounds i8, ptr %i.gn, i64 -200
  br label %.lr.ph.i.i10.i.i.i391

.lr.ph.i.i10.i.i.i391:                            ; preds = %.lr.ph.i.i10.i.i.i391, %bb.h
  %.020.i.i.i.i.i392 = phi i64 [ 50, %bb.h ], [ %i.nd, %.lr.ph.i.i10.i.i.i391 ]
  %.0819.i.i.i.i.i393 = phi ptr [ %i.mx, %bb.h ], [ %i.ng, %.lr.ph.i.i10.i.i.i391 ] ; 3 uses
  %.01618.i.i.i.i.i394 = phi ptr [ %i.gn, %bb.h ], [ %i.nh, %.lr.ph.i.i10.i.i.i391 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i394) ]
  %i.my = load i32, ptr %.0819.i.i.i.i.i393, align 4, !tbaa !318, !noalias !3421
  store i32 %i.my, ptr %.01618.i.i.i.i.i394, align 4, !tbaa !318, !noalias !3421
  %i.mz = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421 ; 2 uses
  %i.na = add i32 %i.mz, 1
  store i32 %i.na, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.nb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i393, i64 4
  %i.nc = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i394, i64 4
  %i.nd = add nsw i64 %.020.i.i.i.i.i392, -2      ; 2 uses
  %i.ne = load i32, ptr %i.nb, align 4, !tbaa !318, !noalias !3421
  store i32 %i.ne, ptr %i.nc, align 4, !tbaa !318, !noalias !3421
  %i.nf = add i32 %i.mz, 2
  store i32 %i.nf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.ng = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i393, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i394, i64 8
  %.not.i.i11.i.i.i395.1 = icmp eq i64 %i.nd, 0
  br i1 %.not.i.i11.i.i.i395.1, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i396, label %.lr.ph.i.i10.i.i.i391, !llvm.loop !76

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i396: ; preds = %.lr.ph.i.i10.i.i.i391
  %i.ni = add i64 %.idx.i, -200                   ; 2 uses
  %.not8.i.i.i.i.i397 = icmp eq i64 %.idx471, %i.ni
  br i1 %.not8.i.i.i.i.i397, label %.lr.ph.i39.i.i.i.i402, label %.lr.ph.i37.i.i.i.i398.preheader

.lr.ph.i37.i.i.i.i398.preheader:                  ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i396
  %i.nj = getelementptr i8, ptr %i.gm, i64 %.idx471
  %scevgep = getelementptr i8, ptr %i.nj, i64 200
  %i.nk = sub i64 %i.ni, %.idx471
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %i.gz, i64 %i.nk, i1 false), !tbaa !318, !noalias !3421
  br label %.lr.ph.i39.i.i.i.i402

.lr.ph.i39.i.i.i.i402:                            ; preds = %.lr.ph.i37.i.i.i.i398.preheader, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i396
  %.pre.i.i.i.i.i403 = load i32, ptr %6, align 4, !tbaa !318, !noalias !3421 ; 3 uses
  %i.nl = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i403, i64 0
  %i.nm = shufflevector <4 x i32> %i.nl, <4 x i32> poison, <4 x i32> zeroinitializer ; 12 uses
  store <4 x i32> %i.nm, ptr %i.gz, align 4, !tbaa !318, !noalias !3421
  %i.nn = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store <4 x i32> %i.nm, ptr %i.nn, align 4, !tbaa !318, !noalias !3421
  %i.no = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  store <4 x i32> %i.nm, ptr %i.no, align 4, !tbaa !318, !noalias !3421
  %i.np = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  store <4 x i32> %i.nm, ptr %i.np, align 4, !tbaa !318, !noalias !3421
  %i.nq = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  store <4 x i32> %i.nm, ptr %i.nq, align 4, !tbaa !318, !noalias !3421
  %i.nr = getelementptr inbounds nuw i8, ptr %i.gz, i64 80
  store <4 x i32> %i.nm, ptr %i.nr, align 4, !tbaa !318, !noalias !3421
  %i.ns = getelementptr inbounds nuw i8, ptr %i.gz, i64 96
  store <4 x i32> %i.nm, ptr %i.ns, align 4, !tbaa !318, !noalias !3421
  %i.nt = getelementptr inbounds nuw i8, ptr %i.gz, i64 112
  store <4 x i32> %i.nm, ptr %i.nt, align 4, !tbaa !318, !noalias !3421
  %i.nu = getelementptr inbounds nuw i8, ptr %i.gz, i64 128
  store <4 x i32> %i.nm, ptr %i.nu, align 4, !tbaa !318, !noalias !3421
  %i.nv = getelementptr inbounds nuw i8, ptr %i.gz, i64 144
  store <4 x i32> %i.nm, ptr %i.nv, align 4, !tbaa !318, !noalias !3421
  %i.nw = getelementptr inbounds nuw i8, ptr %i.gz, i64 160
  store <4 x i32> %i.nm, ptr %i.nw, align 4, !tbaa !318, !noalias !3421
  %i.nx = getelementptr inbounds nuw i8, ptr %i.gz, i64 176
  store <4 x i32> %i.nm, ptr %i.nx, align 4, !tbaa !318, !noalias !3421
  %i.ny = getelementptr inbounds nuw i8, ptr %i.gz, i64 192
  store i32 %.pre.i.i.i.i.i403, ptr %i.ny, align 4, !tbaa !318, !noalias !3421
  %i.nz = getelementptr inbounds nuw i8, ptr %i.gz, i64 196
  store i32 %.pre.i.i.i.i.i403, ptr %i.nz, align 4, !tbaa !318, !noalias !3421
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i407

.lr.ph.i43.preheader.i.i.i.i408:                  ; preds = %bb.g
  %i.oa = getelementptr inbounds nuw i8, ptr %i.gz, i64 200
  br label %.lr.ph.i43.i.i.i.i409

.lr.ph.i43.i.i.i.i409:                            ; preds = %.lr.ph.i43.i.i.i.i409, %.lr.ph.i43.preheader.i.i.i.i408
  %.018.i.i.i.i.i410 = phi ptr [ %i.oe, %.lr.ph.i43.i.i.i.i409 ], [ %i.gz, %.lr.ph.i43.preheader.i.i.i.i408 ] ; 2 uses
  %.01517.i.i.i.i.i411 = phi ptr [ %i.of, %.lr.ph.i43.i.i.i.i409 ], [ %i.oa, %.lr.ph.i43.preheader.i.i.i.i408 ] ; 2 uses
  %i.ob = load i32, ptr %.018.i.i.i.i.i410, align 4, !tbaa !318, !noalias !3421
  store i32 %i.ob, ptr %.01517.i.i.i.i.i411, align 4, !tbaa !318, !noalias !3421
  %i.oc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.od = add i32 %i.oc, 1
  store i32 %i.od, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.oe = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i410, i64 4 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i411, i64 4
  %.not.i44.i.i.i.i412 = icmp eq ptr %i.oe, %i.gn
  br i1 %.not.i44.i.i.i.i412, label %.lr.ph.i46.i.i.i.i413, label %.lr.ph.i43.i.i.i.i409, !llvm.loop !77

.lr.ph.i46.i.i.i.i413:                            ; preds = %.lr.ph.i43.i.i.i.i409
  %.pre.i47.i.i.i.i414 = load i32, ptr %6, align 4, !tbaa !318, !noalias !3421 ; 2 uses
  %min.iters.check = icmp ult i64 %i.mw, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i46.i.i.i.i413
  %n.vec = and i64 %i.mw, 56                      ; 7 uses
  %i.og = and i64 %i.mw, 7
  %i.oh = shl nuw nsw i64 %n.vec, 2
  %i.oi = getelementptr i8, ptr %i.gz, i64 %i.oh
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i47.i.i.i.i414, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 12 uses
  %i.oj = getelementptr i8, ptr %i.gz, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.gz, align 4, !tbaa !318, !noalias !3421
  store <4 x i32> %broadcast.splat, ptr %i.oj, align 4, !tbaa !318, !noalias !3421
  %i.ok = icmp eq i64 %n.vec, 8
  br i1 %i.ok, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %i.gz, i64 32
  %i.ol = getelementptr i8, ptr %i.gz, i64 48
  store <4 x i32> %broadcast.splat, ptr %next.gep.1, align 4, !tbaa !318, !noalias !3421
  store <4 x i32> %broadcast.splat, ptr %i.ol, align 4, !tbaa !318, !noalias !3421
  %i.om = icmp eq i64 %n.vec, 16
  br i1 %i.om, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %i.gz, i64 64
  %i.on = getelementptr i8, ptr %i.gz, i64 80
  store <4 x i32> %broadcast.splat, ptr %next.gep.2, align 4, !tbaa !318, !noalias !3421
  store <4 x i32> %broadcast.splat, ptr %i.on, align 4, !tbaa !318, !noalias !3421
  %i.oo = icmp eq i64 %n.vec, 24
  br i1 %i.oo, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %i.gz, i64 96
  %i.op = getelementptr i8, ptr %i.gz, i64 112
  store <4 x i32> %broadcast.splat, ptr %next.gep.3, align 4, !tbaa !318, !noalias !3421
  store <4 x i32> %broadcast.splat, ptr %i.op, align 4, !tbaa !318, !noalias !3421
  %i.oq = icmp eq i64 %n.vec, 32
  br i1 %i.oq, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep.4 = getelementptr i8, ptr %i.gz, i64 128
  %i.or = getelementptr i8, ptr %i.gz, i64 144
  store <4 x i32> %broadcast.splat, ptr %next.gep.4, align 4, !tbaa !318, !noalias !3421
  store <4 x i32> %broadcast.splat, ptr %i.or, align 4, !tbaa !318, !noalias !3421
  %i.os = icmp eq i64 %n.vec, 40
  br i1 %i.os, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %next.gep.5 = getelementptr i8, ptr %i.gz, i64 160
  %i.ot = getelementptr i8, ptr %i.gz, i64 176
  store <4 x i32> %broadcast.splat, ptr %next.gep.5, align 4, !tbaa !318, !noalias !3421
  store <4 x i32> %broadcast.splat, ptr %i.ot, align 4, !tbaa !318, !noalias !3421
  br label %middle.block

middle.block:                                     ; preds = %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.mw, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i.i418, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i46.i.i.i.i413, %middle.block
  %.07.i48.i.i.i.i415.ph = phi i64 [ %i.mw, %.lr.ph.i46.i.i.i.i413 ], [ %i.og, %middle.block ]
  %.046.i49.i.i.i.i416.ph = phi ptr [ %i.gz, %.lr.ph.i46.i.i.i.i413 ], [ %i.oi, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i48.i.i.i.i415 = phi i64 [ %i.ou, %scalar.ph ], [ %.07.i48.i.i.i.i415.ph, %scalar.ph.preheader ]
  %.046.i49.i.i.i.i416 = phi ptr [ %i.ov, %scalar.ph ], [ %.046.i49.i.i.i.i416.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ou = add i64 %.07.i48.i.i.i.i415, -1         ; 2 uses
  store i32 %.pre.i47.i.i.i.i414, ptr %.046.i49.i.i.i.i416, align 4, !tbaa !318, !noalias !3421
  %i.ov = getelementptr inbounds nuw i8, ptr %.046.i49.i.i.i.i416, i64 4
  %.not.i50.i.i.i.i417 = icmp eq i64 %i.ou, 0
  br i1 %.not.i50.i.i.i.i417, label %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i.i418, label %scalar.ph, !llvm.loop !3344

_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i.i418: ; preds = %scalar.ph, %middle.block
  %i.ow = sub nsw i64 50, %i.mw                   ; 3 uses
  %.pre495 = load i32, ptr %6, align 4, !tbaa !318, !noalias !3421 ; 5 uses
  %xtraiter = and i64 %i.ow, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i419.prol.loopexit, label %.lr.ph.i.i.i.i.i.i419.prol

.lr.ph.i.i.i.i.i.i419.prol:                       ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i.i418, %.lr.ph.i.i.i.i.i.i419.prol
  %.017.i.i.i.i.i.i420.prol = phi i64 [ %i.ox, %.lr.ph.i.i.i.i.i.i419.prol ], [ %i.ow, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i.i418 ]
  %.01416.i.i.i.i.i.i421.prol = phi ptr [ %i.pa, %.lr.ph.i.i.i.i.i.i419.prol ], [ %i.gn, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i.i418 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i419.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i.i418 ]
  %i.ox = add nsw i64 %.017.i.i.i.i.i.i420.prol, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i421.prol) ]
  store i32 %.pre495, ptr %.01416.i.i.i.i.i.i421.prol, align 4, !tbaa !318, !noalias !3421
  %i.oy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.oz = add i32 %i.oy, 1
  store i32 %i.oz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.pa = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i421.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i419.prol.loopexit, label %.lr.ph.i.i.i.i.i.i419.prol, !llvm.loop !3345

.lr.ph.i.i.i.i.i.i419.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i419.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i.i418
  %.017.i.i.i.i.i.i420.unr = phi i64 [ %i.ow, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i.i418 ], [ %i.ox, %.lr.ph.i.i.i.i.i.i419.prol ]
  %.01416.i.i.i.i.i.i421.unr = phi ptr [ %i.gn, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test12copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit51.i.i.i.i418 ], [ %i.pa, %.lr.ph.i.i.i.i.i.i419.prol ]
  %i.pb = add nsw i64 %i.mw, -47
  %i.pc = icmp ult i64 %i.pb, 3
  br i1 %i.pc, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i407, label %.lr.ph.i.i.i.i.i.i419

.lr.ph.i.i.i.i.i.i419:                            ; preds = %.lr.ph.i.i.i.i.i.i419.prol.loopexit, %.lr.ph.i.i.i.i.i.i419
  %.017.i.i.i.i.i.i420 = phi i64 [ %i.pk, %.lr.ph.i.i.i.i.i.i419 ], [ %.017.i.i.i.i.i.i420.unr, %.lr.ph.i.i.i.i.i.i419.prol.loopexit ]
  %.01416.i.i.i.i.i.i421 = phi ptr [ %i.pm, %.lr.ph.i.i.i.i.i.i419 ], [ %.01416.i.i.i.i.i.i421.unr, %.lr.ph.i.i.i.i.i.i419.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i421) ]
  store i32 %.pre495, ptr %.01416.i.i.i.i.i.i421, align 4, !tbaa !318, !noalias !3421
  %i.pd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421 ; 4 uses
  %i.pe = add i32 %i.pd, 1
  store i32 %i.pe, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.pf = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i421, i64 4
  store i32 %.pre495, ptr %i.pf, align 4, !tbaa !318, !noalias !3421
  %i.pg = add i32 %i.pd, 2
  store i32 %i.pg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.ph = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i421, i64 8
  store i32 %.pre495, ptr %i.ph, align 4, !tbaa !318, !noalias !3421
  %i.pi = add i32 %i.pd, 3
  store i32 %i.pi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.pj = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i421, i64 12
  %i.pk = add nsw i64 %.017.i.i.i.i.i.i420, -4    ; 2 uses
  store i32 %.pre495, ptr %i.pj, align 4, !tbaa !318, !noalias !3421
  %i.pl = add i32 %i.pd, 4
  store i32 %i.pl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3421
  %i.pm = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i421, i64 16
  %.not.i.i.i.i.i.i422.3 = icmp eq i64 %i.pk, 0
  br i1 %.not.i.i.i.i.i.i422.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i407, label %.lr.ph.i.i.i.i.i.i419, !llvm.loop !78

_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i407: ; preds = %.lr.ph.i.i.i.i.i.i419.prol.loopexit, %.lr.ph.i.i.i.i.i.i419, %.lr.ph.i.i.i.i.i423, %.lr.ph.i39.i.i.i.i402
  %i.pn = add nsw i64 %i.gg, 50
  store i64 %i.pn, ptr %i.t, align 8, !tbaa !375, !noalias !3421
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE6insertENS0_12vec_iteratorIPS3_Lb1EEEmRKS3_.exit205

bb.i:                                             ; preds = %.loopexit487
  invoke void @_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.37") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.gz, i64 noundef 50, ptr nonnull align 4 dereferenceable(4) %6)
          to label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE6insertENS0_12vec_iteratorIPS3_Lb1EEEmRKS3_.exit205 unwind label %bb.m

_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE6insertENS0_12vec_iteratorIPS3_Lb1EEEmRKS3_.exit205: ; preds = %bb.i, %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i407
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.po = load ptr, ptr %1, align 8, !tbaa !259
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 1, ptr %i.b, align 4, !tbaa !247
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.pp, i64 noundef 50, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE6insertENS0_12vec_iteratorIPS3_Lb1EEEmRKS3_.exit205
  %i.pq = load ptr, ptr %1, align 8, !tbaa !259   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.pr = load i64, ptr %i.t, align 8, !tbaa !381 ; 4 uses
  %i.ps = load ptr, ptr %i.fy, align 8, !tbaa !288
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = ptrtoint ptr %i.pq to i64
  %i.pv = sub i64 %i.pt, %i.pu
  %i.pw = ashr exact i64 %i.pv, 2
  %.not.i206 = icmp eq i64 %i.pr, %i.pw
  br i1 %.not.i206, label %bb.k, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit214

bb.k:                                             ; preds = %bb.j
  %i.px = load ptr, ptr %0, align 8, !tbaa !374, !noalias !3422 ; 2 uses
  %.idx.i208 = shl nsw i64 %i.pr, 2
  %i.py = getelementptr inbounds i8, ptr %i.px, i64 %.idx.i208
  %.not2324.i209 = icmp eq i64 %i.pr, 0
  br i1 %.not2324.i209, label %.loopexit484, label %.lr.ph.i210

.lr.ph.i210:                                      ; preds = %bb.k, %bb.l
  %.sroa.019.026.i211 = phi ptr [ %i.qc, %bb.l ], [ %i.px, %bb.k ] ; 2 uses
  %.sroa.015.025.i212 = phi ptr [ %i.qd, %bb.l ], [ %i.pq, %bb.k ] ; 2 uses
  %i.pz = load i32, ptr %.sroa.015.025.i212, align 4, !tbaa !247
  %i.qa = load i32, ptr %.sroa.019.026.i211, align 4, !tbaa !318
  %i.qb = icmp eq i32 %i.qa, %i.pz
  br i1 %i.qb, label %bb.l, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit214

bb.l:                                             ; preds = %.lr.ph.i210
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i211, i64 4 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i212, i64 4
  %.not23.i213 = icmp eq ptr %i.qc, %i.py
  br i1 %.not23.i213, label %.loopexit484, label %.lr.ph.i210, !llvm.loop !17

bb.m:                                             ; preds = %bb.i
  %i.qe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.q

bb.n:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE6insertENS0_12vec_iteratorIPS3_Lb1EEEmRKS3_.exit205
  %i.qf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.q

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit214: ; preds = %.lr.ph.i210, %bb.j
  %i.qg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.qh = add i32 %i.qg, -1
  store i32 %i.qh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

.loopexit484:                                     ; preds = %bb.l, %bb.k
  %i.qi = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 2, ptr %8, align 4, !tbaa !318
  store i32 %i.qi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.qj = lshr i64 %i.pr, 1
  invoke void @_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE6assignINS0_17constant_iteratorIS3_EEEEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj1EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 dereferenceable(4) %8, i64 %i.qj, ptr null, i64 0, ptr noundef null)
          to label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE6assignEmRKS3_.exit unwind label %bb.r

_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE6assignEmRKS3_.exit: ; preds = %.loopexit484
  %i.qk = load ptr, ptr %i.fy, align 8, !tbaa !288
  %i.ql = load ptr, ptr %1, align 8, !tbaa !277
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = ashr exact i64 %i.qo, 2
  %i.qq = lshr i64 %i.qp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 2, ptr %i.c, align 4, !tbaa !247
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.qq, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit unwind label %bb.s

_ZNSt6vectorIiSaIiEE6assignEmRKi.exit:            ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE6assignEmRKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.qr = load i64, ptr %i.t, align 8, !tbaa !381 ; 4 uses
  %i.qs = load ptr, ptr %i.fy, align 8, !tbaa !288
  %i.qt = load ptr, ptr %1, align 8, !tbaa !277   ; 2 uses
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = ashr exact i64 %i.qw, 2
  %.not.i215 = icmp eq i64 %i.qr, %i.qx
  br i1 %.not.i215, label %bb.o, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit223

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit
  %i.qy = load ptr, ptr %0, align 8, !tbaa !374, !noalias !3423 ; 2 uses
  %.idx.i217 = shl nsw i64 %i.qr, 2
  %i.qz = getelementptr inbounds i8, ptr %i.qy, i64 %.idx.i217
  %.not2324.i218 = icmp eq i64 %i.qr, 0
  br i1 %.not2324.i218, label %.loopexit483, label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %bb.o, %bb.p
  %.sroa.019.026.i220 = phi ptr [ %i.rd, %bb.p ], [ %i.qy, %bb.o ] ; 2 uses
  %.sroa.015.025.i221 = phi ptr [ %i.re, %bb.p ], [ %i.qt, %bb.o ] ; 2 uses
  %i.ra = load i32, ptr %.sroa.015.025.i221, align 4, !tbaa !247
  %i.rb = load i32, ptr %.sroa.019.026.i220, align 4, !tbaa !318
  %i.rc = icmp eq i32 %i.rb, %i.ra
  br i1 %i.rc, label %bb.p, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit223

bb.p:                                             ; preds = %.lr.ph.i219
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i220, i64 4 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i221, i64 4
  %.not23.i222 = icmp eq ptr %i.rd, %i.qz
  br i1 %.not23.i222, label %.loopexit483, label %.lr.ph.i219, !llvm.loop !17

bb.q:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.qe, %bb.m ], [ %i.qf, %bb.n ]
  %i.rf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.rg = add i32 %i.rf, -1
  store i32 %i.rg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %common.resume

bb.r:                                             ; preds = %.loopexit484
  %i.rh = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE6assignEmRKS3_.exit
  %i.ri = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN5boost9container4test20vector_copyable_onlyINS0_6vectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.mc = getelementptr inbounds nuw i8, ptr %i.go, i64 172
  store i32 1, ptr %i.mc, align 4, !tbaa !318, !noalias !8109
  %i.md = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.me = add i32 %i.md, 1
  store i32 %i.me, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.mf = getelementptr inbounds nuw i8, ptr %i.go, i64 176
  store i32 1, ptr %i.mf, align 4, !tbaa !318, !noalias !8109
  %i.mg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.mh = add i32 %i.mg, 1
  store i32 %i.mh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.mi = getelementptr inbounds nuw i8, ptr %i.go, i64 180
  store i32 1, ptr %i.mi, align 4, !tbaa !318, !noalias !8109
  %i.mj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.mk = add i32 %i.mj, 1
  store i32 %i.mk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.ml = getelementptr inbounds nuw i8, ptr %i.go, i64 184
  store i32 1, ptr %i.ml, align 4, !tbaa !318, !noalias !8109
  %i.mm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.mn = add i32 %i.mm, 1
  store i32 %i.mn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.mo = getelementptr inbounds nuw i8, ptr %i.go, i64 188
  store i32 1, ptr %i.mo, align 4, !tbaa !318, !noalias !8109
  %i.mp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.mq = add i32 %i.mp, 1
  store i32 %i.mq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.mr = getelementptr inbounds nuw i8, ptr %i.go, i64 192
  store i32 1, ptr %i.mr, align 4, !tbaa !318, !noalias !8109
  %i.ms = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.mt = add i32 %i.ms, 1
  store i32 %i.mt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.mu = getelementptr inbounds nuw i8, ptr %i.go, i64 196
  store i32 1, ptr %i.mu, align 4, !tbaa !318, !noalias !8109
  %i.mv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.mw = add i32 %i.mv, 1
  store i32 %i.mw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i403

bb.g:                                             ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx.i, %.idx467
  %i.mx = ashr exact i64 %gepdiff, 2              ; 8 uses
  %.not.i.i.i.i386 = icmp ult i64 %i.mx, 50
  br i1 %.not.i.i.i.i386, label %.lr.ph.i43.preheader.i.i.i.i404, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.my = getelementptr inbounds i8, ptr %i.go, i64 -200
  br label %.lr.ph.i.i10.i.i.i387

.lr.ph.i.i10.i.i.i387:                            ; preds = %.lr.ph.i.i10.i.i.i387, %bb.h
  %.020.i.i.i.i.i388 = phi i64 [ 50, %bb.h ], [ %i.ne, %.lr.ph.i.i10.i.i.i387 ]
  %.0819.i.i.i.i.i389 = phi ptr [ %i.my, %bb.h ], [ %i.nh, %.lr.ph.i.i10.i.i.i387 ] ; 3 uses
  %.01618.i.i.i.i.i390 = phi ptr [ %i.go, %bb.h ], [ %i.ni, %.lr.ph.i.i10.i.i.i387 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i390) ]
  %i.mz = load i32, ptr %.0819.i.i.i.i.i389, align 4, !tbaa !318, !noalias !8109
  store i32 %i.mz, ptr %.01618.i.i.i.i.i390, align 4, !tbaa !318, !noalias !8109
  %i.na = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109 ; 2 uses
  %i.nb = add i32 %i.na, 1
  store i32 %i.nb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.nc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i389, i64 4
  %i.nd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i390, i64 4
  %i.ne = add nsw i64 %.020.i.i.i.i.i388, -2      ; 2 uses
  %i.nf = load i32, ptr %i.nc, align 4, !tbaa !318, !noalias !8109
  store i32 %i.nf, ptr %i.nd, align 4, !tbaa !318, !noalias !8109
  %i.ng = add i32 %i.na, 2
  store i32 %i.ng, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.nh = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i389, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i390, i64 8
  %.not.i.i11.i.i.i391.1 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i11.i.i.i391.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i392, label %.lr.ph.i.i10.i.i.i387, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i392: ; preds = %.lr.ph.i.i10.i.i.i387
  %i.nj = add i64 %.idx.i, -200                   ; 2 uses
  %.not8.i.i.i.i.i393 = icmp eq i64 %.idx467, %i.nj
  br i1 %.not8.i.i.i.i.i393, label %.lr.ph.i39.i.i.i.i398, label %.lr.ph.i37.i.i.i.i394.preheader

.lr.ph.i37.i.i.i.i394.preheader:                  ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i392
  %i.nk = getelementptr i8, ptr %i.gn, i64 %.idx467
  %scevgep = getelementptr i8, ptr %i.nk, i64 200
  %i.nl = sub i64 %i.nj, %.idx467
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %i.ha, i64 %i.nl, i1 false), !tbaa !318, !noalias !8109
  br label %.lr.ph.i39.i.i.i.i398

.lr.ph.i39.i.i.i.i398:                            ; preds = %.lr.ph.i37.i.i.i.i394.preheader, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i392
  %.pre.i.i.i.i.i399 = load i32, ptr %6, align 4, !tbaa !318, !noalias !8109 ; 3 uses
  %i.nm = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i399, i64 0
  %i.nn = shufflevector <4 x i32> %i.nm, <4 x i32> poison, <4 x i32> zeroinitializer ; 12 uses
  store <4 x i32> %i.nn, ptr %i.ha, align 4, !tbaa !318, !noalias !8109
  %i.no = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store <4 x i32> %i.nn, ptr %i.no, align 4, !tbaa !318, !noalias !8109
  %i.np = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  store <4 x i32> %i.nn, ptr %i.np, align 4, !tbaa !318, !noalias !8109
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  store <4 x i32> %i.nn, ptr %i.nq, align 4, !tbaa !318, !noalias !8109
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ha, i64 64
  store <4 x i32> %i.nn, ptr %i.nr, align 4, !tbaa !318, !noalias !8109
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ha, i64 80
  store <4 x i32> %i.nn, ptr %i.ns, align 4, !tbaa !318, !noalias !8109
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ha, i64 96
  store <4 x i32> %i.nn, ptr %i.nt, align 4, !tbaa !318, !noalias !8109
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ha, i64 112
  store <4 x i32> %i.nn, ptr %i.nu, align 4, !tbaa !318, !noalias !8109
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ha, i64 128
  store <4 x i32> %i.nn, ptr %i.nv, align 4, !tbaa !318, !noalias !8109
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ha, i64 144
  store <4 x i32> %i.nn, ptr %i.nw, align 4, !tbaa !318, !noalias !8109
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ha, i64 160
  store <4 x i32> %i.nn, ptr %i.nx, align 4, !tbaa !318, !noalias !8109
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ha, i64 176
  store <4 x i32> %i.nn, ptr %i.ny, align 4, !tbaa !318, !noalias !8109
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ha, i64 192
  store i32 %.pre.i.i.i.i.i399, ptr %i.nz, align 4, !tbaa !318, !noalias !8109
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ha, i64 196
  store i32 %.pre.i.i.i.i.i399, ptr %i.oa, align 4, !tbaa !318, !noalias !8109
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i403

.lr.ph.i43.preheader.i.i.i.i404:                  ; preds = %bb.g
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ha, i64 200
  br label %.lr.ph.i43.i.i.i.i405

.lr.ph.i43.i.i.i.i405:                            ; preds = %.lr.ph.i43.i.i.i.i405, %.lr.ph.i43.preheader.i.i.i.i404
  %.018.i.i.i.i.i406 = phi ptr [ %i.of, %.lr.ph.i43.i.i.i.i405 ], [ %i.ha, %.lr.ph.i43.preheader.i.i.i.i404 ] ; 2 uses
  %.01517.i.i.i.i.i407 = phi ptr [ %i.og, %.lr.ph.i43.i.i.i.i405 ], [ %i.ob, %.lr.ph.i43.preheader.i.i.i.i404 ] ; 2 uses
  %i.oc = load i32, ptr %.018.i.i.i.i.i406, align 4, !tbaa !318, !noalias !8109
  store i32 %i.oc, ptr %.01517.i.i.i.i.i407, align 4, !tbaa !318, !noalias !8109
  %i.od = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.oe = add i32 %i.od, 1
  store i32 %i.oe, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.of = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i406, i64 4 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i407, i64 4
  %.not.i44.i.i.i.i408 = icmp eq ptr %i.of, %i.go
  br i1 %.not.i44.i.i.i.i408, label %.lr.ph.i46.i.i.i.i409, label %.lr.ph.i43.i.i.i.i405, !llvm.loop !153

.lr.ph.i46.i.i.i.i409:                            ; preds = %.lr.ph.i43.i.i.i.i405
  %.pre.i47.i.i.i.i410 = load i32, ptr %6, align 4, !tbaa !318, !noalias !8109 ; 2 uses
  %min.iters.check = icmp ult i64 %i.mx, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i46.i.i.i.i409
  %n.vec = and i64 %i.mx, 56                      ; 7 uses
  %i.oh = and i64 %i.mx, 7
  %i.oi = shl nuw nsw i64 %n.vec, 2
  %i.oj = getelementptr i8, ptr %i.ha, i64 %i.oi
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i47.i.i.i.i410, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 12 uses
  %i.ok = getelementptr i8, ptr %i.ha, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ha, align 4, !tbaa !318, !noalias !8109
  store <4 x i32> %broadcast.splat, ptr %i.ok, align 4, !tbaa !318, !noalias !8109
  %i.ol = icmp eq i64 %n.vec, 8
  br i1 %i.ol, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %i.ha, i64 32
  %i.om = getelementptr i8, ptr %i.ha, i64 48
  store <4 x i32> %broadcast.splat, ptr %next.gep.1, align 4, !tbaa !318, !noalias !8109
  store <4 x i32> %broadcast.splat, ptr %i.om, align 4, !tbaa !318, !noalias !8109
  %i.on = icmp eq i64 %n.vec, 16
  br i1 %i.on, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %i.ha, i64 64
  %i.oo = getelementptr i8, ptr %i.ha, i64 80
  store <4 x i32> %broadcast.splat, ptr %next.gep.2, align 4, !tbaa !318, !noalias !8109
  store <4 x i32> %broadcast.splat, ptr %i.oo, align 4, !tbaa !318, !noalias !8109
  %i.op = icmp eq i64 %n.vec, 24
  br i1 %i.op, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %i.ha, i64 96
  %i.oq = getelementptr i8, ptr %i.ha, i64 112
  store <4 x i32> %broadcast.splat, ptr %next.gep.3, align 4, !tbaa !318, !noalias !8109
  store <4 x i32> %broadcast.splat, ptr %i.oq, align 4, !tbaa !318, !noalias !8109
  %i.or = icmp eq i64 %n.vec, 32
  br i1 %i.or, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep.4 = getelementptr i8, ptr %i.ha, i64 128
  %i.os = getelementptr i8, ptr %i.ha, i64 144
  store <4 x i32> %broadcast.splat, ptr %next.gep.4, align 4, !tbaa !318, !noalias !8109
  store <4 x i32> %broadcast.splat, ptr %i.os, align 4, !tbaa !318, !noalias !8109
  %i.ot = icmp eq i64 %n.vec, 40
  br i1 %i.ot, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %next.gep.5 = getelementptr i8, ptr %i.ha, i64 160
  %i.ou = getelementptr i8, ptr %i.ha, i64 176
  store <4 x i32> %broadcast.splat, ptr %next.gep.5, align 4, !tbaa !318, !noalias !8109
  store <4 x i32> %broadcast.splat, ptr %i.ou, align 4, !tbaa !318, !noalias !8109
  br label %middle.block

middle.block:                                     ; preds = %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.mx, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i414, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i46.i.i.i.i409, %middle.block
  %.07.i48.i.i.i.i411.ph = phi i64 [ %i.mx, %.lr.ph.i46.i.i.i.i409 ], [ %i.oh, %middle.block ]
  %.046.i49.i.i.i.i412.ph = phi ptr [ %i.ha, %.lr.ph.i46.i.i.i.i409 ], [ %i.oj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i48.i.i.i.i411 = phi i64 [ %i.ov, %scalar.ph ], [ %.07.i48.i.i.i.i411.ph, %scalar.ph.preheader ]
  %.046.i49.i.i.i.i412 = phi ptr [ %i.ow, %scalar.ph ], [ %.046.i49.i.i.i.i412.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ov = add i64 %.07.i48.i.i.i.i411, -1         ; 2 uses
  store i32 %.pre.i47.i.i.i.i410, ptr %.046.i49.i.i.i.i412, align 4, !tbaa !318, !noalias !8109
  %i.ow = getelementptr inbounds nuw i8, ptr %.046.i49.i.i.i.i412, i64 4
  %.not.i50.i.i.i.i413 = icmp eq i64 %i.ov, 0
  br i1 %.not.i50.i.i.i.i413, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i414, label %scalar.ph, !llvm.loop !8038

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i414: ; preds = %scalar.ph, %middle.block
  %i.ox = sub nsw i64 50, %i.mx                   ; 3 uses
  %.pre491 = load i32, ptr %6, align 4, !tbaa !318, !noalias !8109 ; 5 uses
  %xtraiter = and i64 %i.ox, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i415.prol.loopexit, label %.lr.ph.i.i.i.i.i.i415.prol

.lr.ph.i.i.i.i.i.i415.prol:                       ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i414, %.lr.ph.i.i.i.i.i.i415.prol
  %.017.i.i.i.i.i.i416.prol = phi i64 [ %i.oy, %.lr.ph.i.i.i.i.i.i415.prol ], [ %i.ox, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i414 ]
  %.01416.i.i.i.i.i.i417.prol = phi ptr [ %i.pb, %.lr.ph.i.i.i.i.i.i415.prol ], [ %i.go, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i414 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i415.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i414 ]
  %i.oy = add nsw i64 %.017.i.i.i.i.i.i416.prol, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i417.prol) ]
  store i32 %.pre491, ptr %.01416.i.i.i.i.i.i417.prol, align 4, !tbaa !318, !noalias !8109
  %i.oz = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.pa = add i32 %i.oz, 1
  store i32 %i.pa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.pb = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i417.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i415.prol.loopexit, label %.lr.ph.i.i.i.i.i.i415.prol, !llvm.loop !8039

.lr.ph.i.i.i.i.i.i415.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i415.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i414
  %.017.i.i.i.i.i.i416.unr = phi i64 [ %i.ox, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i414 ], [ %i.oy, %.lr.ph.i.i.i.i.i.i415.prol ]
  %.01416.i.i.i.i.i.i417.unr = phi ptr [ %i.go, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i414 ], [ %i.pb, %.lr.ph.i.i.i.i.i.i415.prol ]
  %i.pc = add nsw i64 %i.mx, -47
  %i.pd = icmp ult i64 %i.pc, 3
  br i1 %i.pd, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i403, label %.lr.ph.i.i.i.i.i.i415

.lr.ph.i.i.i.i.i.i415:                            ; preds = %.lr.ph.i.i.i.i.i.i415.prol.loopexit, %.lr.ph.i.i.i.i.i.i415
  %.017.i.i.i.i.i.i416 = phi i64 [ %i.pl, %.lr.ph.i.i.i.i.i.i415 ], [ %.017.i.i.i.i.i.i416.unr, %.lr.ph.i.i.i.i.i.i415.prol.loopexit ]
  %.01416.i.i.i.i.i.i417 = phi ptr [ %i.pn, %.lr.ph.i.i.i.i.i.i415 ], [ %.01416.i.i.i.i.i.i417.unr, %.lr.ph.i.i.i.i.i.i415.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i417) ]
  store i32 %.pre491, ptr %.01416.i.i.i.i.i.i417, align 4, !tbaa !318, !noalias !8109
  %i.pe = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109 ; 4 uses
  %i.pf = add i32 %i.pe, 1
  store i32 %i.pf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.pg = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i417, i64 4
  store i32 %.pre491, ptr %i.pg, align 4, !tbaa !318, !noalias !8109
  %i.ph = add i32 %i.pe, 2
  store i32 %i.ph, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.pi = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i417, i64 8
  store i32 %.pre491, ptr %i.pi, align 4, !tbaa !318, !noalias !8109
  %i.pj = add i32 %i.pe, 3
  store i32 %i.pj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.pk = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i417, i64 12
  %i.pl = add nsw i64 %.017.i.i.i.i.i.i416, -4    ; 2 uses
  store i32 %.pre491, ptr %i.pk, align 4, !tbaa !318, !noalias !8109
  %i.pm = add i32 %i.pe, 4
  store i32 %i.pm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8109
  %i.pn = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i417, i64 16
  %.not.i.i.i.i.i.i418.3 = icmp eq i64 %i.pl, 0
  br i1 %.not.i.i.i.i.i.i418.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i403, label %.lr.ph.i.i.i.i.i.i415, !llvm.loop !154

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i403: ; preds = %.lr.ph.i.i.i.i.i.i415.prol.loopexit, %.lr.ph.i.i.i.i.i.i415, %.lr.ph.i.i.i.i.i419, %.lr.ph.i39.i.i.i.i398
  %i.po = add nsw i64 %i.gh, 50
  store i64 %i.po, ptr %i.u, align 8, !tbaa !489, !noalias !8109
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEmRKS3_.exit203

bb.i:                                             ; preds = %.loopexit483
  invoke void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj2EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.37") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ha, i64 noundef 50, ptr nonnull align 4 dereferenceable(4) %6)
          to label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEmRKS3_.exit203 unwind label %bb.m

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEmRKS3_.exit203: ; preds = %bb.i, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.pp = load ptr, ptr %1, align 8, !tbaa !259
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 1, ptr %i.c, align 4, !tbaa !247
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.pq, i64 noundef 50, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEmRKS3_.exit203
  %i.pr = load ptr, ptr %1, align 8, !tbaa !259   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.ps = load i64, ptr %i.u, align 8, !tbaa !495 ; 4 uses
  %i.pt = load ptr, ptr %i.fz, align 8, !tbaa !288
  %i.pu = ptrtoint ptr %i.pt to i64
  %i.pv = ptrtoint ptr %i.pr to i64
  %i.pw = sub i64 %i.pu, %i.pv
  %i.px = ashr exact i64 %i.pw, 2
  %.not.i204 = icmp eq i64 %i.ps, %i.px
  br i1 %.not.i204, label %bb.k, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit212

bb.k:                                             ; preds = %bb.j
  %i.py = load ptr, ptr %0, align 8, !tbaa !488, !noalias !8110 ; 2 uses
  %.idx.i206 = shl nsw i64 %i.ps, 2
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 %.idx.i206
  %.not2324.i207 = icmp eq i64 %i.ps, 0
  br i1 %.not2324.i207, label %.loopexit480, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %bb.k, %bb.l
  %.sroa.019.026.i209 = phi ptr [ %i.qd, %bb.l ], [ %i.py, %bb.k ] ; 2 uses
  %.sroa.015.025.i210 = phi ptr [ %i.qe, %bb.l ], [ %i.pr, %bb.k ] ; 2 uses
  %i.qa = load i32, ptr %.sroa.015.025.i210, align 4, !tbaa !247
  %i.qb = load i32, ptr %.sroa.019.026.i209, align 4, !tbaa !318
  %i.qc = icmp eq i32 %i.qb, %i.qa
  br i1 %i.qc, label %bb.l, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit212

bb.l:                                             ; preds = %.lr.ph.i208
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i209, i64 4 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i210, i64 4
  %.not23.i211 = icmp eq ptr %i.qd, %i.pz
  br i1 %.not23.i211, label %.loopexit480, label %.lr.ph.i208, !llvm.loop !122

bb.m:                                             ; preds = %bb.i
  %i.qf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.q

bb.n:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEmRKS3_.exit203
  %i.qg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.q

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit212: ; preds = %.lr.ph.i208, %bb.j
  %i.qh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.qi = add i32 %i.qh, -1
  store i32 %i.qi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

.loopexit480:                                     ; preds = %bb.l, %bb.k
  %i.qj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 2, ptr %8, align 4, !tbaa !318
  store i32 %i.qj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.qk = lshr i64 %i.ps, 1
  invoke void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6assignINS0_17constant_iteratorIS3_EEEEvT_SA_PNS_11move_detail13disable_if_orIvNSB_7is_sameINSB_17integral_constantIjLj2EEENSE_IjLj0EEEEENSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 dereferenceable(4) %8, i64 %i.qk, ptr null, i64 0, ptr noundef null)
          to label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6assignEmRKS3_.exit unwind label %bb.r

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6assignEmRKS3_.exit: ; preds = %.loopexit480
  %i.ql = load ptr, ptr %i.fz, align 8, !tbaa !288
  %i.qm = load ptr, ptr %1, align 8, !tbaa !277
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = sub i64 %i.qn, %i.qo
  %i.qq = ashr exact i64 %i.qp, 2
  %i.qr = lshr i64 %i.qq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 2, ptr %i.d, align 4, !tbaa !247
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.qr, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit unwind label %bb.s

_ZNSt6vectorIiSaIiEE6assignEmRKi.exit:            ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6assignEmRKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.qs = load i64, ptr %i.u, align 8, !tbaa !495 ; 4 uses
  %i.qt = load ptr, ptr %i.fz, align 8, !tbaa !288
  %i.qu = load ptr, ptr %1, align 8, !tbaa !277   ; 2 uses
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = ptrtoint ptr %i.qu to i64
  %i.qx = sub i64 %i.qv, %i.qw
  %i.qy = ashr exact i64 %i.qx, 2
  %.not.i213 = icmp eq i64 %i.qs, %i.qy
  br i1 %.not.i213, label %bb.o, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit221

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit
  %i.qz = load ptr, ptr %0, align 8, !tbaa !488, !noalias !8111 ; 2 uses
  %.idx.i215 = shl nsw i64 %i.qs, 2
  %i.ra = getelementptr inbounds i8, ptr %i.qz, i64 %.idx.i215
  %.not2324.i216 = icmp eq i64 %i.qs, 0
  br i1 %.not2324.i216, label %.loopexit479, label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %bb.o, %bb.p
  %.sroa.019.026.i218 = phi ptr [ %i.re, %bb.p ], [ %i.qz, %bb.o ] ; 2 uses
  %.sroa.015.025.i219 = phi ptr [ %i.rf, %bb.p ], [ %i.qu, %bb.o ] ; 2 uses
  %i.rb = load i32, ptr %.sroa.015.025.i219, align 4, !tbaa !247
  %i.rc = load i32, ptr %.sroa.019.026.i218, align 4, !tbaa !318
  %i.rd = icmp eq i32 %i.rc, %i.rb
  br i1 %i.rd, label %bb.p, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit221

bb.p:                                             ; preds = %.lr.ph.i217
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i218, i64 4 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i219, i64 4
  %.not23.i220 = icmp eq ptr %i.re, %i.ra
  br i1 %.not23.i220, label %.loopexit479, label %.lr.ph.i217, !llvm.loop !122

bb.q:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.qf, %bb.m ], [ %i.qg, %bb.n ]
  %i.rg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.rh = add i32 %i.rg, -1
  store i32 %i.rh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %common.resume

bb.r:                                             ; preds = %.loopexit480
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6assignEmRKS3_.exit
  %i.rj = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN5boost9container4test20vector_copyable_onlyINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.mb = getelementptr inbounds nuw i8, ptr %i.gn, i64 172
  store i32 1, ptr %i.mb, align 4, !tbaa !318, !noalias !11673
  %i.mc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.md = add i32 %i.mc, 1
  store i32 %i.md, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.me = getelementptr inbounds nuw i8, ptr %i.gn, i64 176
  store i32 1, ptr %i.me, align 4, !tbaa !318, !noalias !11673
  %i.mf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.mg = add i32 %i.mf, 1
  store i32 %i.mg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.mh = getelementptr inbounds nuw i8, ptr %i.gn, i64 180
  store i32 1, ptr %i.mh, align 4, !tbaa !318, !noalias !11673
  %i.mi = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.mj = add i32 %i.mi, 1
  store i32 %i.mj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.mk = getelementptr inbounds nuw i8, ptr %i.gn, i64 184
  store i32 1, ptr %i.mk, align 4, !tbaa !318, !noalias !11673
  %i.ml = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.mm = add i32 %i.ml, 1
  store i32 %i.mm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.mn = getelementptr inbounds nuw i8, ptr %i.gn, i64 188
  store i32 1, ptr %i.mn, align 4, !tbaa !318, !noalias !11673
  %i.mo = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.mp = add i32 %i.mo, 1
  store i32 %i.mp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.mq = getelementptr inbounds nuw i8, ptr %i.gn, i64 192
  store i32 1, ptr %i.mq, align 4, !tbaa !318, !noalias !11673
  %i.mr = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.ms = add i32 %i.mr, 1
  store i32 %i.ms, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.mt = getelementptr inbounds nuw i8, ptr %i.gn, i64 196
  store i32 1, ptr %i.mt, align 4, !tbaa !318, !noalias !11673
  %i.mu = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.mv = add i32 %i.mu, 1
  store i32 %i.mv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i404

bb.g:                                             ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx.i, %.idx468
  %i.mw = ashr exact i64 %gepdiff, 2              ; 8 uses
  %.not.i.i.i.i387 = icmp ult i64 %i.mw, 50
  br i1 %.not.i.i.i.i387, label %.lr.ph.i43.preheader.i.i.i.i405, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.mx = getelementptr inbounds i8, ptr %i.gn, i64 -200
  br label %.lr.ph.i.i10.i.i.i388

.lr.ph.i.i10.i.i.i388:                            ; preds = %.lr.ph.i.i10.i.i.i388, %bb.h
  %.020.i.i.i.i.i389 = phi i64 [ 50, %bb.h ], [ %i.nd, %.lr.ph.i.i10.i.i.i388 ]
  %.0819.i.i.i.i.i390 = phi ptr [ %i.mx, %bb.h ], [ %i.ng, %.lr.ph.i.i10.i.i.i388 ] ; 3 uses
  %.01618.i.i.i.i.i391 = phi ptr [ %i.gn, %bb.h ], [ %i.nh, %.lr.ph.i.i10.i.i.i388 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i391) ]
  %i.my = load i32, ptr %.0819.i.i.i.i.i390, align 4, !tbaa !318, !noalias !11673
  store i32 %i.my, ptr %.01618.i.i.i.i.i391, align 4, !tbaa !318, !noalias !11673
  %i.mz = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673 ; 2 uses
  %i.na = add i32 %i.mz, 1
  store i32 %i.na, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.nb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i390, i64 4
  %i.nc = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i391, i64 4
  %i.nd = add nsw i64 %.020.i.i.i.i.i389, -2      ; 2 uses
  %i.ne = load i32, ptr %i.nb, align 4, !tbaa !318, !noalias !11673
  store i32 %i.ne, ptr %i.nc, align 4, !tbaa !318, !noalias !11673
  %i.nf = add i32 %i.mz, 2
  store i32 %i.nf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.ng = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i390, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i391, i64 8
  %.not.i.i11.i.i.i392.1 = icmp eq i64 %i.nd, 0
  br i1 %.not.i.i11.i.i.i392.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i393, label %.lr.ph.i.i10.i.i.i388, !llvm.loop !196

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i393: ; preds = %.lr.ph.i.i10.i.i.i388
  %i.ni = add i64 %.idx.i, -200                   ; 2 uses
  %.not8.i.i.i.i.i394 = icmp eq i64 %.idx468, %i.ni
  br i1 %.not8.i.i.i.i.i394, label %.lr.ph.i39.i.i.i.i399, label %.lr.ph.i37.i.i.i.i395.preheader

.lr.ph.i37.i.i.i.i395.preheader:                  ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i393
  %i.nj = getelementptr i8, ptr %i.gm, i64 %.idx468
  %scevgep = getelementptr i8, ptr %i.nj, i64 200
  %i.nk = sub i64 %i.ni, %.idx468
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %i.gz, i64 %i.nk, i1 false), !tbaa !318, !noalias !11673
  br label %.lr.ph.i39.i.i.i.i399

.lr.ph.i39.i.i.i.i399:                            ; preds = %.lr.ph.i37.i.i.i.i395.preheader, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i393
  %.pre.i.i.i.i.i400 = load i32, ptr %6, align 4, !tbaa !318, !noalias !11673 ; 3 uses
  %i.nl = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i400, i64 0
  %i.nm = shufflevector <4 x i32> %i.nl, <4 x i32> poison, <4 x i32> zeroinitializer ; 12 uses
  store <4 x i32> %i.nm, ptr %i.gz, align 4, !tbaa !318, !noalias !11673
  %i.nn = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store <4 x i32> %i.nm, ptr %i.nn, align 4, !tbaa !318, !noalias !11673
  %i.no = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  store <4 x i32> %i.nm, ptr %i.no, align 4, !tbaa !318, !noalias !11673
  %i.np = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  store <4 x i32> %i.nm, ptr %i.np, align 4, !tbaa !318, !noalias !11673
  %i.nq = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  store <4 x i32> %i.nm, ptr %i.nq, align 4, !tbaa !318, !noalias !11673
  %i.nr = getelementptr inbounds nuw i8, ptr %i.gz, i64 80
  store <4 x i32> %i.nm, ptr %i.nr, align 4, !tbaa !318, !noalias !11673
  %i.ns = getelementptr inbounds nuw i8, ptr %i.gz, i64 96
  store <4 x i32> %i.nm, ptr %i.ns, align 4, !tbaa !318, !noalias !11673
  %i.nt = getelementptr inbounds nuw i8, ptr %i.gz, i64 112
  store <4 x i32> %i.nm, ptr %i.nt, align 4, !tbaa !318, !noalias !11673
  %i.nu = getelementptr inbounds nuw i8, ptr %i.gz, i64 128
  store <4 x i32> %i.nm, ptr %i.nu, align 4, !tbaa !318, !noalias !11673
  %i.nv = getelementptr inbounds nuw i8, ptr %i.gz, i64 144
  store <4 x i32> %i.nm, ptr %i.nv, align 4, !tbaa !318, !noalias !11673
  %i.nw = getelementptr inbounds nuw i8, ptr %i.gz, i64 160
  store <4 x i32> %i.nm, ptr %i.nw, align 4, !tbaa !318, !noalias !11673
  %i.nx = getelementptr inbounds nuw i8, ptr %i.gz, i64 176
  store <4 x i32> %i.nm, ptr %i.nx, align 4, !tbaa !318, !noalias !11673
  %i.ny = getelementptr inbounds nuw i8, ptr %i.gz, i64 192
  store i32 %.pre.i.i.i.i.i400, ptr %i.ny, align 4, !tbaa !318, !noalias !11673
  %i.nz = getelementptr inbounds nuw i8, ptr %i.gz, i64 196
  store i32 %.pre.i.i.i.i.i400, ptr %i.nz, align 4, !tbaa !318, !noalias !11673
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i404

.lr.ph.i43.preheader.i.i.i.i405:                  ; preds = %bb.g
  %i.oa = getelementptr inbounds nuw i8, ptr %i.gz, i64 200
  br label %.lr.ph.i43.i.i.i.i406

.lr.ph.i43.i.i.i.i406:                            ; preds = %.lr.ph.i43.i.i.i.i406, %.lr.ph.i43.preheader.i.i.i.i405
  %.018.i.i.i.i.i407 = phi ptr [ %i.oe, %.lr.ph.i43.i.i.i.i406 ], [ %i.gz, %.lr.ph.i43.preheader.i.i.i.i405 ] ; 2 uses
  %.01517.i.i.i.i.i408 = phi ptr [ %i.of, %.lr.ph.i43.i.i.i.i406 ], [ %i.oa, %.lr.ph.i43.preheader.i.i.i.i405 ] ; 2 uses
  %i.ob = load i32, ptr %.018.i.i.i.i.i407, align 4, !tbaa !318, !noalias !11673
  store i32 %i.ob, ptr %.01517.i.i.i.i.i408, align 4, !tbaa !318, !noalias !11673
  %i.oc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.od = add i32 %i.oc, 1
  store i32 %i.od, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.oe = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i407, i64 4 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i408, i64 4
  %.not.i44.i.i.i.i409 = icmp eq ptr %i.oe, %i.gn
  br i1 %.not.i44.i.i.i.i409, label %.lr.ph.i46.i.i.i.i410, label %.lr.ph.i43.i.i.i.i406, !llvm.loop !197

.lr.ph.i46.i.i.i.i410:                            ; preds = %.lr.ph.i43.i.i.i.i406
  %.pre.i47.i.i.i.i411 = load i32, ptr %6, align 4, !tbaa !318, !noalias !11673 ; 2 uses
  %min.iters.check = icmp ult i64 %i.mw, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i46.i.i.i.i410
  %n.vec = and i64 %i.mw, 56                      ; 7 uses
  %i.og = and i64 %i.mw, 7
  %i.oh = shl nuw nsw i64 %n.vec, 2
  %i.oi = getelementptr i8, ptr %i.gz, i64 %i.oh
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i47.i.i.i.i411, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 12 uses
  %i.oj = getelementptr i8, ptr %i.gz, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.gz, align 4, !tbaa !318, !noalias !11673
  store <4 x i32> %broadcast.splat, ptr %i.oj, align 4, !tbaa !318, !noalias !11673
  %i.ok = icmp eq i64 %n.vec, 8
  br i1 %i.ok, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %i.gz, i64 32
  %i.ol = getelementptr i8, ptr %i.gz, i64 48
  store <4 x i32> %broadcast.splat, ptr %next.gep.1, align 4, !tbaa !318, !noalias !11673
  store <4 x i32> %broadcast.splat, ptr %i.ol, align 4, !tbaa !318, !noalias !11673
  %i.om = icmp eq i64 %n.vec, 16
  br i1 %i.om, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %i.gz, i64 64
  %i.on = getelementptr i8, ptr %i.gz, i64 80
  store <4 x i32> %broadcast.splat, ptr %next.gep.2, align 4, !tbaa !318, !noalias !11673
  store <4 x i32> %broadcast.splat, ptr %i.on, align 4, !tbaa !318, !noalias !11673
  %i.oo = icmp eq i64 %n.vec, 24
  br i1 %i.oo, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %i.gz, i64 96
  %i.op = getelementptr i8, ptr %i.gz, i64 112
  store <4 x i32> %broadcast.splat, ptr %next.gep.3, align 4, !tbaa !318, !noalias !11673
  store <4 x i32> %broadcast.splat, ptr %i.op, align 4, !tbaa !318, !noalias !11673
  %i.oq = icmp eq i64 %n.vec, 32
  br i1 %i.oq, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep.4 = getelementptr i8, ptr %i.gz, i64 128
  %i.or = getelementptr i8, ptr %i.gz, i64 144
  store <4 x i32> %broadcast.splat, ptr %next.gep.4, align 4, !tbaa !318, !noalias !11673
  store <4 x i32> %broadcast.splat, ptr %i.or, align 4, !tbaa !318, !noalias !11673
  %i.os = icmp eq i64 %n.vec, 40
  br i1 %i.os, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %next.gep.5 = getelementptr i8, ptr %i.gz, i64 160
  %i.ot = getelementptr i8, ptr %i.gz, i64 176
  store <4 x i32> %broadcast.splat, ptr %next.gep.5, align 4, !tbaa !318, !noalias !11673
  store <4 x i32> %broadcast.splat, ptr %i.ot, align 4, !tbaa !318, !noalias !11673
  br label %middle.block

middle.block:                                     ; preds = %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.mw, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i415, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i46.i.i.i.i410, %middle.block
  %.07.i48.i.i.i.i412.ph = phi i64 [ %i.mw, %.lr.ph.i46.i.i.i.i410 ], [ %i.og, %middle.block ]
  %.046.i49.i.i.i.i413.ph = phi ptr [ %i.gz, %.lr.ph.i46.i.i.i.i410 ], [ %i.oi, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i48.i.i.i.i412 = phi i64 [ %i.ou, %scalar.ph ], [ %.07.i48.i.i.i.i412.ph, %scalar.ph.preheader ]
  %.046.i49.i.i.i.i413 = phi ptr [ %i.ov, %scalar.ph ], [ %.046.i49.i.i.i.i413.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ou = add i64 %.07.i48.i.i.i.i412, -1         ; 2 uses
  store i32 %.pre.i47.i.i.i.i411, ptr %.046.i49.i.i.i.i413, align 4, !tbaa !318, !noalias !11673
  %i.ov = getelementptr inbounds nuw i8, ptr %.046.i49.i.i.i.i413, i64 4
  %.not.i50.i.i.i.i414 = icmp eq i64 %i.ou, 0
  br i1 %.not.i50.i.i.i.i414, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i415, label %scalar.ph, !llvm.loop !11596

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i415: ; preds = %scalar.ph, %middle.block
  %i.ow = sub nsw i64 50, %i.mw                   ; 3 uses
  %.pre492 = load i32, ptr %6, align 4, !tbaa !318, !noalias !11673 ; 5 uses
  %xtraiter = and i64 %i.ow, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i416.prol.loopexit, label %.lr.ph.i.i.i.i.i.i416.prol

.lr.ph.i.i.i.i.i.i416.prol:                       ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i415, %.lr.ph.i.i.i.i.i.i416.prol
  %.017.i.i.i.i.i.i417.prol = phi i64 [ %i.ox, %.lr.ph.i.i.i.i.i.i416.prol ], [ %i.ow, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i415 ]
  %.01416.i.i.i.i.i.i418.prol = phi ptr [ %i.pa, %.lr.ph.i.i.i.i.i.i416.prol ], [ %i.gn, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i415 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i416.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i415 ]
  %i.ox = add nsw i64 %.017.i.i.i.i.i.i417.prol, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i418.prol) ]
  store i32 %.pre492, ptr %.01416.i.i.i.i.i.i418.prol, align 4, !tbaa !318, !noalias !11673
  %i.oy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.oz = add i32 %i.oy, 1
  store i32 %i.oz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.pa = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i418.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i416.prol.loopexit, label %.lr.ph.i.i.i.i.i.i416.prol, !llvm.loop !11597

.lr.ph.i.i.i.i.i.i416.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i416.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i415
  %.017.i.i.i.i.i.i417.unr = phi i64 [ %i.ow, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i415 ], [ %i.ox, %.lr.ph.i.i.i.i.i.i416.prol ]
  %.01416.i.i.i.i.i.i418.unr = phi ptr [ %i.gn, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test12copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i415 ], [ %i.pa, %.lr.ph.i.i.i.i.i.i416.prol ]
  %i.pb = add nsw i64 %i.mw, -47
  %i.pc = icmp ult i64 %i.pb, 3
  br i1 %i.pc, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i404, label %.lr.ph.i.i.i.i.i.i416

.lr.ph.i.i.i.i.i.i416:                            ; preds = %.lr.ph.i.i.i.i.i.i416.prol.loopexit, %.lr.ph.i.i.i.i.i.i416
  %.017.i.i.i.i.i.i417 = phi i64 [ %i.pk, %.lr.ph.i.i.i.i.i.i416 ], [ %.017.i.i.i.i.i.i417.unr, %.lr.ph.i.i.i.i.i.i416.prol.loopexit ]
  %.01416.i.i.i.i.i.i418 = phi ptr [ %i.pm, %.lr.ph.i.i.i.i.i.i416 ], [ %.01416.i.i.i.i.i.i418.unr, %.lr.ph.i.i.i.i.i.i416.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i418) ]
  store i32 %.pre492, ptr %.01416.i.i.i.i.i.i418, align 4, !tbaa !318, !noalias !11673
  %i.pd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673 ; 4 uses
  %i.pe = add i32 %i.pd, 1
  store i32 %i.pe, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.pf = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i418, i64 4
  store i32 %.pre492, ptr %i.pf, align 4, !tbaa !318, !noalias !11673
  %i.pg = add i32 %i.pd, 2
  store i32 %i.pg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.ph = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i418, i64 8
  store i32 %.pre492, ptr %i.ph, align 4, !tbaa !318, !noalias !11673
  %i.pi = add i32 %i.pd, 3
  store i32 %i.pi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.pj = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i418, i64 12
  %i.pk = add nsw i64 %.017.i.i.i.i.i.i417, -4    ; 2 uses
  store i32 %.pre492, ptr %i.pj, align 4, !tbaa !318, !noalias !11673
  %i.pl = add i32 %i.pd, 4
  store i32 %i.pl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11673
  %i.pm = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i418, i64 16
  %.not.i.i.i.i.i.i419.3 = icmp eq i64 %i.pk, 0
  br i1 %.not.i.i.i.i.i.i419.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i404, label %.lr.ph.i.i.i.i.i.i416, !llvm.loop !198

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i404: ; preds = %.lr.ph.i.i.i.i.i.i416.prol.loopexit, %.lr.ph.i.i.i.i.i.i416, %.lr.ph.i.i.i.i.i420, %.lr.ph.i39.i.i.i.i399
  %i.pn = add nsw i64 %i.gg, 50
  store i64 %i.pn, ptr %i.t, align 8, !tbaa !546, !noalias !11673
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEmRKS3_.exit203

bb.i:                                             ; preds = %.loopexit484
  invoke void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.37") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.gz, i64 noundef 50, ptr nonnull align 4 dereferenceable(4) %6)
          to label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEmRKS3_.exit203 unwind label %bb.m

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEmRKS3_.exit203: ; preds = %bb.i, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i404
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.po = load ptr, ptr %1, align 8, !tbaa !259
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 1, ptr %i.b, align 4, !tbaa !247
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.pp, i64 noundef 50, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEmRKS3_.exit203
  %i.pq = load ptr, ptr %1, align 8, !tbaa !259   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.pr = load i64, ptr %i.t, align 8, !tbaa !552 ; 4 uses
  %i.ps = load ptr, ptr %i.fy, align 8, !tbaa !288
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = ptrtoint ptr %i.pq to i64
  %i.pv = sub i64 %i.pt, %i.pu
  %i.pw = ashr exact i64 %i.pv, 2
  %.not.i204 = icmp eq i64 %i.pr, %i.pw
  br i1 %.not.i204, label %bb.k, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit212

bb.k:                                             ; preds = %bb.j
  %i.px = load ptr, ptr %0, align 8, !tbaa !545, !noalias !11674 ; 2 uses
  %.idx.i206 = shl nsw i64 %i.pr, 2
  %i.py = getelementptr inbounds i8, ptr %i.px, i64 %.idx.i206
  %.not2324.i207 = icmp eq i64 %i.pr, 0
  br i1 %.not2324.i207, label %.loopexit481, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %bb.k, %bb.l
  %.sroa.019.026.i209 = phi ptr [ %i.qc, %bb.l ], [ %i.px, %bb.k ] ; 2 uses
  %.sroa.015.025.i210 = phi ptr [ %i.qd, %bb.l ], [ %i.pq, %bb.k ] ; 2 uses
  %i.pz = load i32, ptr %.sroa.015.025.i210, align 4, !tbaa !247
  %i.qa = load i32, ptr %.sroa.019.026.i209, align 4, !tbaa !318
  %i.qb = icmp eq i32 %i.qa, %i.pz
  br i1 %i.qb, label %bb.l, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit212

bb.l:                                             ; preds = %.lr.ph.i208
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i209, i64 4 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i210, i64 4
  %.not23.i211 = icmp eq ptr %i.qc, %i.py
  br i1 %.not23.i211, label %.loopexit481, label %.lr.ph.i208, !llvm.loop !176

bb.m:                                             ; preds = %bb.i
  %i.qe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.q

bb.n:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEmRKS3_.exit203
  %i.qf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.q

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit212: ; preds = %.lr.ph.i208, %bb.j
  %i.qg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.qh = add i32 %i.qg, -1
  store i32 %i.qh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

.loopexit481:                                     ; preds = %bb.l, %bb.k
  %i.qi = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 2, ptr %8, align 4, !tbaa !318
  store i32 %i.qi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.qj = lshr i64 %i.pr, 1
  invoke void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE6assignINS0_17constant_iteratorIS3_EEEEvT_SA_PNS_11move_detail13disable_if_orIvNSB_7is_sameINSB_17integral_constantIjLj1EEENSE_IjLj0EEEEENSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 dereferenceable(4) %8, i64 %i.qj, ptr null, i64 0, ptr noundef null)
          to label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE6assignEmRKS3_.exit unwind label %bb.r

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE6assignEmRKS3_.exit: ; preds = %.loopexit481
  %i.qk = load ptr, ptr %i.fy, align 8, !tbaa !288
  %i.ql = load ptr, ptr %1, align 8, !tbaa !277
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = ashr exact i64 %i.qo, 2
  %i.qq = lshr i64 %i.qp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 2, ptr %i.c, align 4, !tbaa !247
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.qq, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit unwind label %bb.s

_ZNSt6vectorIiSaIiEE6assignEmRKi.exit:            ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE6assignEmRKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.qr = load i64, ptr %i.t, align 8, !tbaa !552 ; 4 uses
  %i.qs = load ptr, ptr %i.fy, align 8, !tbaa !288
  %i.qt = load ptr, ptr %1, align 8, !tbaa !277   ; 2 uses
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = ashr exact i64 %i.qw, 2
  %.not.i213 = icmp eq i64 %i.qr, %i.qx
  br i1 %.not.i213, label %bb.o, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit221

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit
  %i.qy = load ptr, ptr %0, align 8, !tbaa !545, !noalias !11675 ; 2 uses
  %.idx.i215 = shl nsw i64 %i.qr, 2
  %i.qz = getelementptr inbounds i8, ptr %i.qy, i64 %.idx.i215
  %.not2324.i216 = icmp eq i64 %i.qr, 0
  br i1 %.not2324.i216, label %.loopexit480, label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %bb.o, %bb.p
  %.sroa.019.026.i218 = phi ptr [ %i.rd, %bb.p ], [ %i.qy, %bb.o ] ; 2 uses
  %.sroa.015.025.i219 = phi ptr [ %i.re, %bb.p ], [ %i.qt, %bb.o ] ; 2 uses
  %i.ra = load i32, ptr %.sroa.015.025.i219, align 4, !tbaa !247
  %i.rb = load i32, ptr %.sroa.019.026.i218, align 4, !tbaa !318
  %i.rc = icmp eq i32 %i.rb, %i.ra
  br i1 %i.rc, label %bb.p, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit221

bb.p:                                             ; preds = %.lr.ph.i217
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i218, i64 4 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i219, i64 4
  %.not23.i220 = icmp eq ptr %i.rd, %i.qz
  br i1 %.not23.i220, label %.loopexit480, label %.lr.ph.i217, !llvm.loop !176

bb.q:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.qe, %bb.m ], [ %i.qf, %bb.n ]
  %i.rf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.rg = add i32 %i.rf, -1
  store i32 %i.rg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %common.resume

bb.r:                                             ; preds = %.loopexit481
  %i.rh = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE6assignEmRKS3_.exit
  %i.ri = landingpad { ptr, i32 }
end_hunk_2
