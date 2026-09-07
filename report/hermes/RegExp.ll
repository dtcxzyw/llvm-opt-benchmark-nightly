Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegExp?download=true
inline.NumInlined: 2505
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6hermes2vm29regExpPrototypeSymbolMatchAllEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.fs = bitcast <4 x i1> %i.fo to i4
  %i.ft = icmp ne i4 %i.fs, 0                     ; 2 uses
  %cmp.n431 = icmp eq i64 %i.et, %n.vec418
  br i1 %cmp.n431, label %.split113.us, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader: ; preds = %iter.check413, %vec.epilog.iter.check415, %vec.epilog.middle.block430
  %.0.us.us269.ph = phi i1 [ false, %iter.check413 ], [ %i.fh, %vec.epilog.iter.check415 ], [ %i.fr, %vec.epilog.middle.block430 ]
  %.030.us.us268.ph = phi i1 [ false, %iter.check413 ], [ %i.fj, %vec.epilog.iter.check415 ], [ %i.ft, %vec.epilog.middle.block430 ]
  %.sroa.062.0.us.us267.ph = phi ptr [ %i.ei, %iter.check413 ], [ %i.ev, %vec.epilog.iter.check415 ], [ %i.fk, %vec.epilog.middle.block430 ]
  br label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us
  %.0.us.us269 = phi i1 [ %spec.select.us.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us ], [ %.0.us.us269.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader ]
  %.030.us.us268 = phi i1 [ %.131.us.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us ], [ %.030.us.us268.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader ]
  %.sroa.062.0.us.us267 = phi ptr [ %i.fx, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us ], [ %.sroa.062.0.us.us267.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader ] ; 2 uses
  %i.fu = load i8, ptr %.sroa.062.0.us.us267, align 1, !tbaa !23 ; 2 uses
  %i.fv = icmp eq i8 %i.fu, 103
  %spec.select.us.us = select i1 %i.fv, i1 true, i1 %.0.us.us269 ; 2 uses
  %i.fw = icmp eq i8 %i.fu, 117
  %.131.us.us = select i1 %i.fw, i1 true, i1 %.030.us.us268 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.062.0.us.us267, i64 1 ; 2 uses
  %.not444 = icmp ult ptr %i.fx, %i.el
  br i1 %.not444, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us, label %.split113.us, !llvm.loop !100

_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us
  %.sroa.0.0.copyload.i.i.i.i.i49.us = load i64, ptr %i.dc, align 8, !tbaa !16
  %i.fy = and i64 %.sroa.0.0.copyload.i.i.i.i.i49.us, 281474976710655
  %i.fz = inttoptr i64 %i.fy to ptr               ; 4 uses
  %i.ga = load i32, ptr %i.fz, align 4            ; 2 uses
  %i.gb = icmp ugt i32 %i.ga, 150994943
  %.mask.i.i.i.i.i.i.i.i.i.i50.us = and i32 %i.ga, 251658240
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  br i1 %i.gb, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split.us, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split, !prof !15

_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split.us: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !57 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.eh
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.sroa.7.12.extract.shift222 ; 2 uses
  %i.gi = icmp uge ptr %i.ei, %i.gh
  %.not.i.us.us165258 = icmp eq ptr %.0.i.sink.i.i, null
  %brmerge189259 = select i1 %.not.i.us.us165258, i1 true, i1 %i.gi
  br i1 %brmerge189259, label %.split113.us, label %iter.check368

iter.check368:                                    ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split.us
  %i.gj = ptrtoaddr ptr %i.gf to i64
  %i.gk = add i64 %.sroa.7.12.extract.shift222, %i.gj
  %i.gl = xor i64 %.0.i.sink.i.i345, -1
  %i.gm = add i64 %i.gk, %i.gl
  %i.gn = freeze i64 %i.gm
  %i.go = xor i64 %.0.i.sink.i.i345, -1
  %i.gp = sub i64 %i.go, %i.eh
  %umin = call i64 @llvm.umin.i64(i64 %i.gn, i64 %i.gp)
  %i.gq = add i64 %umin, 1                        ; 7 uses
  %min.iters.check346 = icmp ult i64 %i.gq, 4
  br i1 %min.iters.check346, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader, label %vector.main.loop.iter.check347

vector.main.loop.iter.check347:                   ; preds = %iter.check368
  %min.iters.check348 = icmp ult i64 %i.gq, 32
  br i1 %min.iters.check348, label %vec.epilog.ph372, label %vector.ph349

vector.ph349:                                     ; preds = %vector.main.loop.iter.check347
  %i.gr = and i64 %i.gq, 28
  %n.vec350 = and i64 %i.gq, -32                  ; 4 uses
  %i.gs = getelementptr i8, ptr %i.ei, i64 %n.vec350
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next360, %vector.body351 ] ; 2 uses
  %vec.phi353 = phi <16 x i1> [ zeroinitializer, %vector.ph349 ], [ %i.gw, %vector.body351 ]
  %vec.phi354 = phi <16 x i1> [ zeroinitializer, %vector.ph349 ], [ %i.gx, %vector.body351 ]
  %vec.phi355 = phi <16 x i1> [ zeroinitializer, %vector.ph349 ], [ %i.ha, %vector.body351 ]
  %vec.phi356 = phi <16 x i1> [ zeroinitializer, %vector.ph349 ], [ %i.hb, %vector.body351 ]
  %next.gep357 = getelementptr i8, ptr %i.ei, i64 %index352 ; 2 uses
  %i.gt = getelementptr i8, ptr %next.gep357, i64 16
  %wide.load358 = load <16 x i8>, ptr %next.gep357, align 1, !tbaa !23 ; 2 uses
  %wide.load359 = load <16 x i8>, ptr %i.gt, align 1, !tbaa !23 ; 2 uses
  %i.gu = icmp eq <16 x i8> %wide.load358, splat (i8 103)
  %i.gv = icmp eq <16 x i8> %wide.load359, splat (i8 103)
  %i.gw = or <16 x i1> %vec.phi353, %i.gu         ; 2 uses
  %i.gx = or <16 x i1> %vec.phi354, %i.gv         ; 2 uses
  %i.gy = icmp eq <16 x i8> %wide.load358, splat (i8 117)
  %i.gz = icmp eq <16 x i8> %wide.load359, splat (i8 117)
  %i.ha = or <16 x i1> %vec.phi355, %i.gy         ; 2 uses
  %i.hb = or <16 x i1> %vec.phi356, %i.gz         ; 2 uses
  %index.next360 = add nuw i64 %index352, 32      ; 2 uses
  %i.hc = icmp eq i64 %index.next360, %n.vec350
  br i1 %i.hc, label %middle.block361, label %vector.body351, !llvm.loop !101

middle.block361:                                  ; preds = %vector.body351
  %bin.rdx362 = or <16 x i1> %i.gx, %i.gw
  %bin.rdx362.fr = freeze <16 x i1> %bin.rdx362
  %i.hd = bitcast <16 x i1> %bin.rdx362.fr to i16
  %i.he = icmp ne i16 %i.hd, 0                    ; 3 uses
  %bin.rdx363 = or <16 x i1> %i.hb, %i.ha
  %bin.rdx363.fr = freeze <16 x i1> %bin.rdx363
  %i.hf = bitcast <16 x i1> %bin.rdx363.fr to i16
  %i.hg = icmp ne i16 %i.hf, 0                    ; 3 uses
  %cmp.n364 = icmp eq i64 %i.gq, %n.vec350
  br i1 %cmp.n364, label %.split113.us, label %vec.epilog.iter.check370

vec.epilog.iter.check370:                         ; preds = %middle.block361
  %min.epilog.iters.check371 = icmp eq i64 %i.gr, 0
  br i1 %min.epilog.iters.check371, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader, label %vec.epilog.ph372, !prof !115

vec.epilog.ph372:                                 ; preds = %vector.main.loop.iter.check347, %vec.epilog.iter.check370
  %vec.epilog.resume.val365 = phi i64 [ %n.vec350, %vec.epilog.iter.check370 ], [ 0, %vector.main.loop.iter.check347 ]
  %bc.merge.rdx366 = phi i1 [ %i.he, %vec.epilog.iter.check370 ], [ false, %vector.main.loop.iter.check347 ]
  %bc.merge.rdx367 = phi i1 [ %i.hg, %vec.epilog.iter.check370 ], [ false, %vector.main.loop.iter.check347 ]
  %n.vec373 = and i64 %i.gq, -4                   ; 3 uses
  %i.hh = getelementptr i8, ptr %i.ei, i64 %n.vec373
  %broadcast.splatinsert374 = insertelement <4 x i1> poison, i1 %bc.merge.rdx366, i64 0
  %broadcast.splat375 = shufflevector <4 x i1> %broadcast.splatinsert374, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert376 = insertelement <4 x i1> poison, i1 %bc.merge.rdx367, i64 0
  %broadcast.splat377 = shufflevector <4 x i1> %broadcast.splatinsert376, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body378

vec.epilog.vector.body378:                        ; preds = %vec.epilog.vector.body378, %vec.epilog.ph372
  %index379 = phi i64 [ %vec.epilog.resume.val365, %vec.epilog.ph372 ], [ %index.next384, %vec.epilog.vector.body378 ] ; 2 uses
  %vec.phi380 = phi <4 x i1> [ %broadcast.splat375, %vec.epilog.ph372 ], [ %i.hj, %vec.epilog.vector.body378 ]
  %vec.phi381 = phi <4 x i1> [ %broadcast.splat377, %vec.epilog.ph372 ], [ %i.hl, %vec.epilog.vector.body378 ]
  %next.gep382 = getelementptr i8, ptr %i.ei, i64 %index379
  %wide.load383 = load <4 x i8>, ptr %next.gep382, align 1, !tbaa !23
  %wide.load383.fr = freeze <4 x i8> %wide.load383 ; 2 uses
  %i.hi = icmp eq <4 x i8> %wide.load383.fr, splat (i8 103)
  %i.hj = or <4 x i1> %vec.phi380, %i.hi          ; 2 uses
  %i.hk = icmp eq <4 x i8> %wide.load383.fr, splat (i8 117)
  %i.hl = or <4 x i1> %vec.phi381, %i.hk          ; 2 uses
  %index.next384 = add nuw i64 %index379, 4       ; 2 uses
  %i.hm = icmp eq i64 %index.next384, %n.vec373
  br i1 %i.hm, label %vec.epilog.middle.block385, label %vec.epilog.vector.body378, !llvm.loop !102

vec.epilog.middle.block385:                       ; preds = %vec.epilog.vector.body378
  %i.hn = bitcast <4 x i1> %i.hj to i4
  %i.ho = icmp ne i4 %i.hn, 0                     ; 2 uses
  %i.hp = bitcast <4 x i1> %i.hl to i4
  %i.hq = icmp ne i4 %i.hp, 0                     ; 2 uses
  %cmp.n386 = icmp eq i64 %i.gq, %n.vec373
  br i1 %cmp.n386, label %.split113.us, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader: ; preds = %iter.check368, %vec.epilog.iter.check370, %vec.epilog.middle.block385
  %.0.us.us162262.ph = phi i1 [ false, %iter.check368 ], [ %i.he, %vec.epilog.iter.check370 ], [ %i.ho, %vec.epilog.middle.block385 ]
  %.030.us.us161261.ph = phi i1 [ false, %iter.check368 ], [ %i.hg, %vec.epilog.iter.check370 ], [ %i.hq, %vec.epilog.middle.block385 ]
  %.sroa.062.0.us.us160260.ph = phi ptr [ %i.ei, %iter.check368 ], [ %i.gs, %vec.epilog.iter.check370 ], [ %i.hh, %vec.epilog.middle.block385 ]
  br label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172
  %.0.us.us162262 = phi i1 [ %spec.select.us.us167, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172 ], [ %.0.us.us162262.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader ]
  %.030.us.us161261 = phi i1 [ %.131.us.us168, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172 ], [ %.030.us.us161261.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader ]
  %.sroa.062.0.us.us160260 = phi ptr [ %i.hu, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172 ], [ %.sroa.062.0.us.us160260.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader ] ; 2 uses
  %i.hr = load i8, ptr %.sroa.062.0.us.us160260, align 1, !tbaa !23 ; 2 uses
  %i.hs = icmp eq i8 %i.hr, 103
  %spec.select.us.us167 = select i1 %i.hs, i1 true, i1 %.0.us.us162262 ; 2 uses
  %i.ht = icmp eq i8 %i.hr, 117
  %.131.us.us168 = select i1 %i.ht, i1 true, i1 %.030.us.us161261 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.062.0.us.us160260, i64 1 ; 2 uses
  %.not441 = icmp ult ptr %i.hu, %i.gh
  br i1 %.not441, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172, label %.split113.us, !llvm.loop !103

_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us
  %.sroa.062.0.us = phi ptr [ %i.if, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us ], [ %i.ei, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split ] ; 4 uses
  %.030.us = phi i1 [ %.131.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split ] ; 2 uses
  %.0.us = phi i1 [ %spec.select.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split ] ; 2 uses
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i50.us, label %bb.ak [
    i32 134217728, label %bb.aj
    i32 67108864, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us
  ]

bb.aj:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us

bb.ak:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split
  %.sroa.0.0.copyload.i.i.i2.i.i53.us = load i64, ptr %i.gc, align 8, !tbaa !16
  %i.hv = and i64 %.sroa.0.0.copyload.i.i.i2.i.i53.us, 281474976710655
  %i.hw = inttoptr i64 %i.hv to ptr
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split, %bb.ak, %bb.aj
  %.0.i.sink.i.i52.us = phi ptr [ %i.hy, %bb.ak ], [ %i.gd, %bb.aj ], [ %i.gc, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i52.us, i64 %i.eh
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.sroa.7.12.extract.shift222
  %i.ib = icmp uge ptr %.sroa.062.0.us, %i.ia
  %.not.i.us = icmp eq ptr %.sroa.062.0.us, null
  %brmerge191 = select i1 %.not.i.us, i1 true, i1 %i.ib
  br i1 %brmerge191, label %.split113.us, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us: ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us
  %i.ic = load i8, ptr %.sroa.062.0.us, align 1, !tbaa !23 ; 2 uses
  %i.id = icmp eq i8 %i.ic, 103
  %spec.select.us = select i1 %i.id, i1 true, i1 %.0.us
  %i.ie = icmp eq i8 %i.ic, 117
  %.131.us = select i1 %i.ie, i1 true, i1 %.030.us
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.062.0.us, i64 1
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split, !llvm.loop !104

_ZNK6hermes2vm10StringView5beginEv.exit.split.split.us: ; preds = %bb.ac
  %i.ig = and i64 %i.de, 1073741823               ; 2 uses
  %.idx = shl nuw nsw i64 %i.ig, 1                ; 5 uses
  %.sroa.7.12.extract.shift = lshr i64 %i.de, 31
  %.idx237 = shl nuw nsw i64 %i.ig, 1
  %i.ih = add nuw nsw i64 %.idx237, %.sroa.7.12.extract.shift ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ih
  %.not239 = icmp samesign ult i64 %.idx, %i.ih
  br i1 %.not239, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.peel, label %.split113.us

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.peel: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.us
  %i.ij = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx ; 2 uses
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !64 ; 2 uses
  %i.il = icmp eq i16 %i.ik, 103                  ; 6 uses
  %i.im = icmp eq i16 %i.ik, 117                  ; 6 uses
  %.sroa.8.0.us115251 = getelementptr inbounds nuw i8, ptr %i.ij, i64 2 ; 5 uses
  %i.in = add nuw nsw i64 %.idx, 2
  %.not218252 = icmp samesign ult i64 %i.in, %i.ih
  br i1 %.not218252, label %iter.check321, label %.split113.us

iter.check321:                                    ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.peel
  %i.io = add i64 %i.ih, %i.dd
  %i.ip = add i64 %.idx, %i.dd
  %i.iq = add i64 %i.ip, 4
  %umax296 = call i64 @llvm.umax.i64(i64 %i.io, i64 %i.iq)
  %i.ir = add i64 %umax296, -3
  %i.is = add i64 %.idx, %i.dd
  %i.it = sub i64 %i.ir, %i.is                    ; 3 uses
  %i.iu = lshr i64 %i.it, 1
  %i.iv = add nuw i64 %i.iu, 1                    ; 5 uses
  %min.iters.check297 = icmp ult i64 %i.it, 6
  br i1 %min.iters.check297, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader, label %vector.main.loop.iter.check298

vector.main.loop.iter.check298:                   ; preds = %iter.check321
  %min.iters.check299 = icmp ult i64 %i.it, 30
  br i1 %min.iters.check299, label %vec.epilog.ph325, label %vector.ph300

vector.ph300:                                     ; preds = %vector.main.loop.iter.check298
  %i.iw = and i64 %i.iv, 12
  %n.vec301 = and i64 %i.iv, -16                  ; 4 uses
  %i.ix = shl i64 %n.vec301, 1
  %i.iy = getelementptr i8, ptr %.sroa.8.0.us115251, i64 %i.ix
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph300
  %index303 = phi i64 [ 0, %vector.ph300 ], [ %index.next311, %vector.body302 ] ; 2 uses
  %vec.phi304 = phi <8 x i1> [ zeroinitializer, %vector.ph300 ], [ %i.jd, %vector.body302 ]
  %vec.phi305 = phi <8 x i1> [ zeroinitializer, %vector.ph300 ], [ %i.je, %vector.body302 ]
  %vec.phi306 = phi <8 x i1> [ zeroinitializer, %vector.ph300 ], [ %i.jh, %vector.body302 ]
  %vec.phi307 = phi <8 x i1> [ zeroinitializer, %vector.ph300 ], [ %i.ji, %vector.body302 ]
  %i.iz = shl i64 %index303, 1
  %next.gep308 = getelementptr i8, ptr %.sroa.8.0.us115251, i64 %i.iz ; 2 uses
  %i.ja = getelementptr i8, ptr %next.gep308, i64 16
  %wide.load309 = load <8 x i16>, ptr %next.gep308, align 2, !tbaa !64 ; 2 uses
  %wide.load310 = load <8 x i16>, ptr %i.ja, align 2, !tbaa !64 ; 2 uses
  %i.jb = icmp eq <8 x i16> %wide.load309, splat (i16 103)
  %i.jc = icmp eq <8 x i16> %wide.load310, splat (i16 103)
  %i.jd = or <8 x i1> %vec.phi304, %i.jb          ; 2 uses
  %i.je = or <8 x i1> %vec.phi305, %i.jc          ; 2 uses
  %i.jf = icmp eq <8 x i16> %wide.load309, splat (i16 117)
  %i.jg = icmp eq <8 x i16> %wide.load310, splat (i16 117)
  %i.jh = or <8 x i1> %vec.phi306, %i.jf          ; 2 uses
  %i.ji = or <8 x i1> %vec.phi307, %i.jg          ; 2 uses
  %index.next311 = add nuw i64 %index303, 16      ; 2 uses
  %i.jj = icmp eq i64 %index.next311, %n.vec301
  br i1 %i.jj, label %middle.block312, label %vector.body302, !llvm.loop !105

middle.block312:                                  ; preds = %vector.body302
  %bin.rdx313 = or <8 x i1> %i.je, %i.jd
  %bin.rdx313.fr = freeze <8 x i1> %bin.rdx313
  %i.jk = bitcast <8 x i1> %bin.rdx313.fr to i8
  %i.jl = icmp ne i8 %i.jk, 0
  %rdx.select314 = select i1 %i.jl, i1 true, i1 %i.il ; 3 uses
  %bin.rdx315 = or <8 x i1> %i.ji, %i.jh
  %bin.rdx315.fr = freeze <8 x i1> %bin.rdx315
  %i.jm = bitcast <8 x i1> %bin.rdx315.fr to i8
  %i.jn = icmp ne i8 %i.jm, 0
  %rdx.select316 = select i1 %i.jn, i1 true, i1 %i.im ; 3 uses
  %cmp.n317 = icmp eq i64 %i.iv, %n.vec301
  br i1 %cmp.n317, label %.split113.us, label %vec.epilog.iter.check323

vec.epilog.iter.check323:                         ; preds = %middle.block312
  %min.epilog.iters.check324 = icmp eq i64 %i.iw, 0
  br i1 %min.epilog.iters.check324, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader, label %vec.epilog.ph325, !prof !117

vec.epilog.ph325:                                 ; preds = %vector.main.loop.iter.check298, %vec.epilog.iter.check323
  %vec.epilog.resume.val318 = phi i64 [ %n.vec301, %vec.epilog.iter.check323 ], [ 0, %vector.main.loop.iter.check298 ]
  %bc.merge.rdx319 = phi i1 [ %rdx.select314, %vec.epilog.iter.check323 ], [ %i.il, %vector.main.loop.iter.check298 ]
  %bc.merge.rdx320 = phi i1 [ %rdx.select316, %vec.epilog.iter.check323 ], [ %i.im, %vector.main.loop.iter.check298 ]
  %i.jo = xor i1 %bc.merge.rdx319, %i.il
  %i.jp = xor i1 %bc.merge.rdx320, %i.im
  %n.vec326 = and i64 %i.iv, -4                   ; 3 uses
  %i.jq = shl i64 %n.vec326, 1
  %i.jr = getelementptr i8, ptr %.sroa.8.0.us115251, i64 %i.jq
  %broadcast.splatinsert327 = insertelement <4 x i1> poison, i1 %i.jo, i64 0
  %broadcast.splat328 = shufflevector <4 x i1> %broadcast.splatinsert327, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert329 = insertelement <4 x i1> poison, i1 %i.jp, i64 0
  %broadcast.splat330 = shufflevector <4 x i1> %broadcast.splatinsert329, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body331

vec.epilog.vector.body331:                        ; preds = %vec.epilog.vector.body331, %vec.epilog.ph325
  %index332 = phi i64 [ %vec.epilog.resume.val318, %vec.epilog.ph325 ], [ %index.next337, %vec.epilog.vector.body331 ] ; 2 uses
  %vec.phi333 = phi <4 x i1> [ %broadcast.splat328, %vec.epilog.ph325 ], [ %.fr437, %vec.epilog.vector.body331 ]
  %vec.phi334 = phi <4 x i1> [ %broadcast.splat330, %vec.epilog.ph325 ], [ %.fr438, %vec.epilog.vector.body331 ]
  %i.js = shl i64 %index332, 1
  %next.gep335 = getelementptr i8, ptr %.sroa.8.0.us115251, i64 %i.js
  %wide.load336 = load <4 x i16>, ptr %next.gep335, align 2, !tbaa !64 ; 2 uses
  %i.jt = icmp eq <4 x i16> %wide.load336, splat (i16 103)
  %i.ju = or <4 x i1> %vec.phi333, %i.jt
  %.fr437 = freeze <4 x i1> %i.ju                 ; 2 uses
  %i.jv = icmp eq <4 x i16> %wide.load336, splat (i16 117)
  %i.jw = or <4 x i1> %vec.phi334, %i.jv
  %.fr438 = freeze <4 x i1> %i.jw                 ; 2 uses
  %index.next337 = add nuw i64 %index332, 4       ; 2 uses
  %i.jx = icmp eq i64 %index.next337, %n.vec326
  br i1 %i.jx, label %vec.epilog.middle.block338, label %vec.epilog.vector.body331, !llvm.loop !106

vec.epilog.middle.block338:                       ; preds = %vec.epilog.vector.body331
  %i.jy = bitcast <4 x i1> %.fr437 to i4
  %i.jz = icmp ne i4 %i.jy, 0
  %rdx.select339 = select i1 %i.jz, i1 true, i1 %i.il ; 2 uses
  %i.ka = bitcast <4 x i1> %.fr438 to i4
  %i.kb = icmp ne i4 %i.ka, 0
  %rdx.select340 = select i1 %i.kb, i1 true, i1 %i.im ; 2 uses
  %cmp.n341 = icmp eq i64 %i.iv, %n.vec326
  br i1 %cmp.n341, label %.split113.us, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader: ; preds = %iter.check321, %vec.epilog.iter.check323, %vec.epilog.middle.block338
  %.sroa.8.0.us115255.ph = phi ptr [ %.sroa.8.0.us115251, %iter.check321 ], [ %i.iy, %vec.epilog.iter.check323 ], [ %i.jr, %vec.epilog.middle.block338 ]
  %.0.us118254.ph = phi i1 [ %i.il, %iter.check321 ], [ %rdx.select314, %vec.epilog.iter.check323 ], [ %rdx.select339, %vec.epilog.middle.block338 ]
  %.030.us117253.ph = phi i1 [ %i.im, %iter.check321 ], [ %rdx.select316, %vec.epilog.iter.check323 ], [ %rdx.select340, %vec.epilog.middle.block338 ]
  br label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126
  %.sroa.8.0.us115255 = phi ptr [ %.sroa.8.0.us115, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126 ], [ %.sroa.8.0.us115255.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader ] ; 2 uses
  %.0.us118254 = phi i1 [ %spec.select100.us124, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126 ], [ %.0.us118254.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader ]
  %.030.us117253 = phi i1 [ %.131104.us125, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126 ], [ %.030.us117253.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader ]
  %i.kc = load i16, ptr %.sroa.8.0.us115255, align 2, !tbaa !64 ; 2 uses
  %i.kd = icmp eq i16 %i.kc, 103
  %spec.select100.us124 = select i1 %i.kd, i1 true, i1 %.0.us118254 ; 2 uses
  %i.ke = icmp eq i16 %i.kc, 117
  %.131104.us125 = select i1 %i.ke, i1 true, i1 %.030.us117253 ; 2 uses
  %.sroa.8.0.us115 = getelementptr inbounds nuw i8, ptr %.sroa.8.0.us115255, i64 2 ; 2 uses
  %.not218 = icmp ult ptr %.sroa.8.0.us115, %i.ii
  br i1 %.not218, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126, label %.split113.us, !llvm.loop !107

_ZNK6hermes2vm10StringView5beginEv.exit.split.split: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ae
  %.0.i.sink.i4.i.ph = phi ptr [ %i.eg, %bb.ai ], [ %i.eb, %bb.ah ], [ %i.ea, %bb.ag ], [ %i.dz, %bb.ae ] ; 2 uses
  %.0.i.sink.i4.i.ph272 = ptrtoaddr ptr %.0.i.sink.i4.i.ph to i64 ; 2 uses
  %i.kf = and i64 %i.de, 1073741823               ; 5 uses
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i.ph, i64 %i.kf ; 6 uses
  %.sroa.7.12.extract.shift227 = lshr i64 %i.de, 32 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i2.i39 = load i64, ptr %i.dc, align 8, !tbaa !16
  %i.kh = and i64 %.sroa.0.0.copyload.i.i.i.i2.i39, 281474976710655
  %i.ki = inttoptr i64 %i.kh to ptr               ; 4 uses
  %i.kj = load i32, ptr %i.ki, align 4            ; 2 uses
  %i.kk = icmp ugt i32 %i.kj, 150994943
  %.mask.i.i.i.i.i.i.i.i.i3.i40 = and i32 %i.kj, 251658240 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 12 ; 2 uses
  br i1 %i.kk, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.us, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader, !prof !15

_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i40, label %bb.am [
    i32 117440512, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel
    i32 50331648, label %bb.al
  ]

bb.al:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel

bb.am:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader
  %.sroa.0.0.copyload.i.i.i2.i5.i47.peel = load i64, ptr %i.kl, align 8, !tbaa !16
  %i.kn = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i47.peel, 281474976710655
  %i.ko = inttoptr i64 %i.kn to ptr
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel: ; preds = %bb.am, %bb.al, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader
  %.0.i.sink.i4.i42.peel = phi ptr [ %i.kq, %bb.am ], [ %i.kl, %bb.al ], [ %i.km, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader ]
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i42.peel, i64 %i.kf
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %i.kr, i64 %.sroa.7.12.extract.shift227
  %.not235 = icmp ult ptr %i.kg, %i.ks
  br i1 %.not235, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.peel, label %.split113.us

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.peel: ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel
  %i.kt = load i16, ptr %i.kg, align 2, !tbaa !64 ; 2 uses
  %i.ku = icmp eq i16 %i.kt, 103
  %i.kv = icmp eq i16 %i.kt, 117
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split

_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.us: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !61 ; 2 uses
  %i.ky = ptrtoaddr ptr %i.kx to i64
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %i.kf
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.kz, i64 %.sroa.7.12.extract.shift227 ; 3 uses
  %.not236 = icmp ult ptr %i.kg, %i.la
  br i1 %.not236, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.peel, label %.split113.us

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.peel: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.us
  %i.lb = load i16, ptr %i.kg, align 2, !tbaa !64 ; 2 uses
  %i.lc = icmp eq i16 %i.lb, 103                  ; 6 uses
  %i.ld = icmp eq i16 %i.lb, 117                  ; 6 uses
  %.sroa.8.0.us135245 = getelementptr inbounds nuw i8, ptr %i.kg, i64 2 ; 6 uses
  %.not216246 = icmp ult ptr %.sroa.8.0.us135245, %i.la
  br i1 %.not216246, label %iter.check, label %.split113.us

iter.check:                                       ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.peel
  %i.le = shl nuw nsw i64 %.sroa.7.12.extract.shift227, 1
  %i.lf = add nuw i64 %i.le, %i.ky
  %i.lg = shl nuw nsw i64 %i.kf, 1                ; 3 uses
  %i.lh = add nuw i64 %i.lf, %i.lg
  %i.li = add i64 %i.lg, %.0.i.sink.i4.i.ph272
  %i.lj = add i64 %i.li, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.lh, i64 %i.lj)
  %i.lk = add i64 %umax, -3
  %i.ll = add i64 %i.lg, %.0.i.sink.i4.i.ph272
  %i.lm = sub i64 %i.lk, %i.ll                    ; 3 uses
  %i.ln = lshr i64 %i.lm, 1
  %i.lo = add nuw i64 %i.ln, 1                    ; 5 uses
end_hunk_0
