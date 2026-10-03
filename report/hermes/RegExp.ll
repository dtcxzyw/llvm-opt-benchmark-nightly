Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegExp?download=true
inline.NumInlined: 2505
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6hermes2vm29regExpPrototypeSymbolMatchAllEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.cr = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.cq, i32 noundef 16) #12
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.t:                                             ; preds = %bb.r
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !49
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.t, %bb.s
  %i.cs = phi ptr [ %i.cr, %bb.s ], [ %i.cm, %bb.t ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %i.cc, ptr %i.ct, align 8, !tbaa !54
  store i32 402653200, ptr %i.cs, align 8, !tbaa !23
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %1 to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = or i32 %i.cx, 3
  br label %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit

_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit: ; preds = %bb.q, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %.sroa.0.0.i.i = phi i32 [ %i.ck, %bb.q ], [ %i.cy, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ]
  %i.cz = call noundef i32 @_ZN6hermes2vm7Runtime20putNamedThrowOnErrorENS0_6HandleINS0_8JSObjectEEENS0_11PropCacheIDENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.bm, i32 noundef 0, i32 %.sroa.0.0.i.i) #12
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.ap, label %bb.u

bb.u:                                             ; preds = %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit
  %i.db = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i33) #12 ; 2 uses
  %i.dc = extractvalue { ptr, i64 } %i.db, 0      ; 9 uses
  %i.dd = ptrtoaddr ptr %i.dc to i64
  %i.de = extractvalue { ptr, i64 } %i.db, 1      ; 7 uses
  %.sroa.7.8.extract.trunc = trunc i64 %i.de to i32 ; 4 uses
  %i.df = icmp slt i32 %.sroa.7.8.extract.trunc, 0
  br i1 %i.df, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.dg = and i32 %.sroa.7.8.extract.trunc, 1073741824
  %.not.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.dc, align 8, !tbaa !16
  %i.dh = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.di = inttoptr i64 %i.dh to ptr               ; 5 uses
  %i.dj = load i32, ptr %i.di, align 4            ; 2 uses
  %i.dk = icmp ugt i32 %i.dj, 150994943
  br i1 %i.dk, label %bb.x, label %bb.y, !prof !15

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us

bb.y:                                             ; preds = %bb.w
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.dj, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.ab [
    i32 134217728, label %bb.z
    i32 67108864, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us

bb.aa:                                            ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us

bb.ab:                                            ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.dp, align 8, !tbaa !16
  %i.dq = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us

bb.ac:                                            ; preds = %bb.u
  %.not.i1.i = icmp samesign ult i32 %.sroa.7.8.extract.trunc, 1073741824
  br i1 %.not.i1.i, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.dc, align 8, !tbaa !16
  %i.du = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.dv = inttoptr i64 %i.du to ptr               ; 5 uses
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = icmp ugt i32 %i.dw, 150994943
  br i1 %i.dx, label %bb.ae, label %bb.af, !prof !15

bb.ae:                                            ; preds = %bb.ad
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split

bb.af:                                            ; preds = %bb.ad
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.dw, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.ai [
    i32 117440512, label %bb.ag
    i32 50331648, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split

bb.ah:                                            ; preds = %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split

bb.ai:                                            ; preds = %bb.af
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.ec, align 8, !tbaa !16
  %i.ed = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split

_ZNK6hermes2vm10StringView5beginEv.exit.split.us: ; preds = %bb.v, %bb.x, %bb.z, %bb.aa, %bb.ab
  %.0.i.sink.i.i = phi ptr [ %i.dc, %bb.v ], [ %i.dm, %bb.x ], [ %i.dn, %bb.z ], [ %i.do, %bb.aa ], [ %i.dt, %bb.ab ] ; 4 uses
  %.0.i.sink.i.i344 = ptrtoaddr ptr %.0.i.sink.i.i to i64 ; 4 uses
  %i.eh = and i64 %i.de, 1073741823               ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i, i64 %i.eh ; 13 uses
  %.sroa.7.12.extract.shift222 = lshr i64 %i.de, 32 ; 5 uses
  %i.ej = and i32 %.sroa.7.8.extract.trunc, 1073741824
  %.not.i.i48 = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i48, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.us, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split

_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.us: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.eh
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.7.12.extract.shift222 ; 2 uses
  %i.em = icmp uge ptr %i.ei, %i.el
  %.not.i.us.us265 = icmp eq ptr %.0.i.sink.i.i, null
  %brmerge187266 = select i1 %.not.i.us.us265, i1 true, i1 %i.em
  br i1 %brmerge187266, label %.split113.us, label %iter.check412

iter.check412:                                    ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.us
  %i.en = add i64 %.sroa.7.12.extract.shift222, %i.dd
  %i.eo = xor i64 %.0.i.sink.i.i344, -1
  %i.ep = add i64 %i.en, %i.eo
  %i.eq = freeze i64 %i.ep
  %i.er = xor i64 %.0.i.sink.i.i344, -1
  %i.es = sub i64 %i.er, %i.eh
  %umin389 = call i64 @llvm.umin.i64(i64 %i.eq, i64 %i.es)
  %i.et = add i64 %umin389, 1                     ; 7 uses
  %min.iters.check390 = icmp ult i64 %i.et, 4
  br i1 %min.iters.check390, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader, label %vector.main.loop.iter.check391

vector.main.loop.iter.check391:                   ; preds = %iter.check412
  %min.iters.check392 = icmp ult i64 %i.et, 32
  br i1 %min.iters.check392, label %vec.epilog.ph416, label %vector.ph393

vector.ph393:                                     ; preds = %vector.main.loop.iter.check391
  %i.eu = and i64 %i.et, 28
  %n.vec394 = and i64 %i.et, -32                  ; 4 uses
  %i.ev = getelementptr i8, ptr %i.ei, i64 %n.vec394
  br label %vector.body395

vector.body395:                                   ; preds = %vector.ph393, %vector.body395
  %index396 = phi i64 [ 0, %vector.ph393 ], [ %index.next404, %vector.body395 ] ; 2 uses
  %vec.phi397 = phi <16 x i1> [ zeroinitializer, %vector.ph393 ], [ %i.ez, %vector.body395 ]
  %vec.phi398 = phi <16 x i1> [ zeroinitializer, %vector.ph393 ], [ %i.fa, %vector.body395 ]
  %vec.phi399 = phi <16 x i1> [ zeroinitializer, %vector.ph393 ], [ %i.fd, %vector.body395 ]
  %vec.phi400 = phi <16 x i1> [ zeroinitializer, %vector.ph393 ], [ %i.fe, %vector.body395 ]
  %next.gep401 = getelementptr i8, ptr %i.ei, i64 %index396 ; 2 uses
  %i.ew = getelementptr i8, ptr %next.gep401, i64 16
  %wide.load402 = load <16 x i8>, ptr %next.gep401, align 1, !tbaa !23 ; 2 uses
  %wide.load403 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !23 ; 2 uses
  %i.ex = icmp eq <16 x i8> %wide.load402, splat (i8 103)
  %i.ey = icmp eq <16 x i8> %wide.load403, splat (i8 103)
  %i.ez = or <16 x i1> %vec.phi397, %i.ex         ; 2 uses
  %i.fa = or <16 x i1> %vec.phi398, %i.ey         ; 2 uses
  %i.fb = icmp eq <16 x i8> %wide.load402, splat (i8 117)
  %i.fc = icmp eq <16 x i8> %wide.load403, splat (i8 117)
  %i.fd = or <16 x i1> %vec.phi399, %i.fb         ; 2 uses
  %i.fe = or <16 x i1> %vec.phi400, %i.fc         ; 2 uses
  %index.next404 = add nuw i64 %index396, 32      ; 2 uses
  %i.ff = icmp eq i64 %index.next404, %n.vec394
  br i1 %i.ff, label %middle.block405, label %vector.body395, !llvm.loop !98

middle.block405:                                  ; preds = %vector.body395
  %bin.rdx406 = or <16 x i1> %i.fa, %i.ez
  %bin.rdx406.fr = freeze <16 x i1> %bin.rdx406
  %i.fg = bitcast <16 x i1> %bin.rdx406.fr to i16
  %i.fh = icmp ne i16 %i.fg, 0                    ; 3 uses
  %bin.rdx407 = or <16 x i1> %i.fe, %i.fd
  %bin.rdx407.fr = freeze <16 x i1> %bin.rdx407
  %i.fi = bitcast <16 x i1> %bin.rdx407.fr to i16
  %i.fj = icmp ne i16 %i.fi, 0                    ; 3 uses
  %cmp.n408 = icmp eq i64 %i.et, %n.vec394
  br i1 %cmp.n408, label %.split113.us, label %vec.epilog.iter.check414

vec.epilog.iter.check414:                         ; preds = %middle.block405
  %min.epilog.iters.check415 = icmp eq i64 %i.eu, 0
  br i1 %min.epilog.iters.check415, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader, label %vec.epilog.ph416, !prof !115

vec.epilog.ph416:                                 ; preds = %vector.main.loop.iter.check391, %vec.epilog.iter.check414
  %vec.epilog.resume.val409 = phi i64 [ %n.vec394, %vec.epilog.iter.check414 ], [ 0, %vector.main.loop.iter.check391 ]
  %bc.merge.rdx410 = phi i1 [ %i.fh, %vec.epilog.iter.check414 ], [ false, %vector.main.loop.iter.check391 ]
  %bc.merge.rdx411 = phi i1 [ %i.fj, %vec.epilog.iter.check414 ], [ false, %vector.main.loop.iter.check391 ]
  %n.vec417 = and i64 %i.et, -4                   ; 3 uses
  %5 = getelementptr i8, ptr %i.ei, i64 %n.vec417
  %broadcast.splatinsert418 = insertelement <4 x i1> poison, i1 %bc.merge.rdx410, i64 0
  %broadcast.splat419 = shufflevector <4 x i1> %broadcast.splatinsert418, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert420 = insertelement <4 x i1> poison, i1 %bc.merge.rdx411, i64 0
  %broadcast.splat421 = shufflevector <4 x i1> %broadcast.splatinsert420, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body422

vec.epilog.vector.body422:                        ; preds = %vec.epilog.vector.body422, %vec.epilog.ph416
  %index423 = phi i64 [ %vec.epilog.resume.val409, %vec.epilog.ph416 ], [ %index.next428, %vec.epilog.vector.body422 ] ; 2 uses
  %vec.phi424 = phi <4 x i1> [ %broadcast.splat419, %vec.epilog.ph416 ], [ %i.fl, %vec.epilog.vector.body422 ]
  %vec.phi425 = phi <4 x i1> [ %broadcast.splat421, %vec.epilog.ph416 ], [ %i.fn, %vec.epilog.vector.body422 ]
  %next.gep426 = getelementptr i8, ptr %i.ei, i64 %index423
  %wide.load427 = load <4 x i8>, ptr %next.gep426, align 1, !tbaa !23
  %wide.load427.fr = freeze <4 x i8> %wide.load427 ; 2 uses
  %i.fk = icmp eq <4 x i8> %wide.load427.fr, splat (i8 103)
  %i.fl = or <4 x i1> %vec.phi424, %i.fk          ; 2 uses
  %i.fm = icmp eq <4 x i8> %wide.load427.fr, splat (i8 117)
  %i.fn = or <4 x i1> %vec.phi425, %i.fm          ; 2 uses
  %index.next428 = add nuw i64 %index423, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next428, %n.vec417
  br i1 %i.fo, label %vec.epilog.middle.block429, label %vec.epilog.vector.body422, !llvm.loop !99

vec.epilog.middle.block429:                       ; preds = %vec.epilog.vector.body422
  %i.fp = bitcast <4 x i1> %i.fl to i4
  %i.fq = icmp ne i4 %i.fp, 0                     ; 2 uses
  %i.fr = bitcast <4 x i1> %i.fn to i4
  %i.fs = icmp ne i4 %i.fr, 0                     ; 2 uses
  %cmp.n430 = icmp eq i64 %i.et, %n.vec417
  br i1 %cmp.n430, label %.split113.us, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader: ; preds = %iter.check412, %vec.epilog.iter.check414, %vec.epilog.middle.block429
  %.0.us.us269.ph = phi i1 [ false, %iter.check412 ], [ %i.fh, %vec.epilog.iter.check414 ], [ %i.fq, %vec.epilog.middle.block429 ]
  %.030.us.us268.ph = phi i1 [ false, %iter.check412 ], [ %i.fj, %vec.epilog.iter.check414 ], [ %i.fs, %vec.epilog.middle.block429 ]
  %.sroa.062.0.us.us267.ph = phi ptr [ %i.ei, %iter.check412 ], [ %i.ev, %vec.epilog.iter.check414 ], [ %5, %vec.epilog.middle.block429 ]
  br label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us
  %.0.us.us269 = phi i1 [ %spec.select.us.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us ], [ %.0.us.us269.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader ]
  %.030.us.us268 = phi i1 [ %.131.us.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us ], [ %.030.us.us268.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader ]
  %.sroa.062.0.us.us267 = phi ptr [ %i.fw, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us ], [ %.sroa.062.0.us.us267.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader ] ; 2 uses
  %i.ft = load i8, ptr %.sroa.062.0.us.us267, align 1, !tbaa !23 ; 2 uses
  %i.fu = icmp eq i8 %i.ft, 103
  %spec.select.us.us = select i1 %i.fu, i1 true, i1 %.0.us.us269 ; 2 uses
  %i.fv = icmp eq i8 %i.ft, 117
  %.131.us.us = select i1 %i.fv, i1 true, i1 %.030.us.us268 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.062.0.us.us267, i64 1 ; 2 uses
  %.not443 = icmp ult ptr %i.fw, %i.el
  br i1 %.not443, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us, label %.split113.us, !llvm.loop !100

_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us
  %.sroa.0.0.copyload.i.i.i.i.i49.us = load i64, ptr %i.dc, align 8, !tbaa !16
  %i.fx = and i64 %.sroa.0.0.copyload.i.i.i.i.i49.us, 281474976710655
  %i.fy = inttoptr i64 %i.fx to ptr               ; 4 uses
  %i.fz = load i32, ptr %i.fy, align 4            ; 2 uses
  %i.ga = icmp ugt i32 %i.fz, 150994943
  %.mask.i.i.i.i.i.i.i.i.i.i50.us = and i32 %i.fz, 251658240
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  br i1 %i.ga, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split.us, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split, !prof !15

_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split.us: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !57 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.eh
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.sroa.7.12.extract.shift222 ; 2 uses
  %i.gh = icmp uge ptr %i.ei, %i.gg
  %.not.i.us.us165258 = icmp eq ptr %.0.i.sink.i.i, null
  %brmerge189259 = select i1 %.not.i.us.us165258, i1 true, i1 %i.gh
  br i1 %brmerge189259, label %.split113.us, label %iter.check367

iter.check367:                                    ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split.us
  %i.gi = ptrtoaddr ptr %i.ge to i64
  %i.gj = add i64 %.sroa.7.12.extract.shift222, %i.gi
  %i.gk = xor i64 %.0.i.sink.i.i344, -1
  %i.gl = add i64 %i.gj, %i.gk
  %i.gm = freeze i64 %i.gl
  %i.gn = xor i64 %.0.i.sink.i.i344, -1
  %i.go = sub i64 %i.gn, %i.eh
  %umin = call i64 @llvm.umin.i64(i64 %i.gm, i64 %i.go)
  %i.gp = add i64 %umin, 1                        ; 7 uses
  %min.iters.check345 = icmp ult i64 %i.gp, 4
  br i1 %min.iters.check345, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader, label %vector.main.loop.iter.check346

vector.main.loop.iter.check346:                   ; preds = %iter.check367
  %min.iters.check347 = icmp ult i64 %i.gp, 32
  br i1 %min.iters.check347, label %vec.epilog.ph371, label %vector.ph348

vector.ph348:                                     ; preds = %vector.main.loop.iter.check346
  %i.gq = and i64 %i.gp, 28
  %n.vec349 = and i64 %i.gp, -32                  ; 4 uses
  %i.gr = getelementptr i8, ptr %i.ei, i64 %n.vec349
  br label %vector.body350

vector.body350:                                   ; preds = %vector.ph348, %vector.body350
  %index351 = phi i64 [ 0, %vector.ph348 ], [ %index.next359, %vector.body350 ] ; 2 uses
  %vec.phi352 = phi <16 x i1> [ zeroinitializer, %vector.ph348 ], [ %i.gv, %vector.body350 ]
  %vec.phi353 = phi <16 x i1> [ zeroinitializer, %vector.ph348 ], [ %i.gw, %vector.body350 ]
  %vec.phi354 = phi <16 x i1> [ zeroinitializer, %vector.ph348 ], [ %i.gz, %vector.body350 ]
  %vec.phi355 = phi <16 x i1> [ zeroinitializer, %vector.ph348 ], [ %i.ha, %vector.body350 ]
  %next.gep356 = getelementptr i8, ptr %i.ei, i64 %index351 ; 2 uses
  %i.gs = getelementptr i8, ptr %next.gep356, i64 16
  %wide.load357 = load <16 x i8>, ptr %next.gep356, align 1, !tbaa !23 ; 2 uses
  %wide.load358 = load <16 x i8>, ptr %i.gs, align 1, !tbaa !23 ; 2 uses
  %i.gt = icmp eq <16 x i8> %wide.load357, splat (i8 103)
  %i.gu = icmp eq <16 x i8> %wide.load358, splat (i8 103)
  %i.gv = or <16 x i1> %vec.phi352, %i.gt         ; 2 uses
  %i.gw = or <16 x i1> %vec.phi353, %i.gu         ; 2 uses
  %i.gx = icmp eq <16 x i8> %wide.load357, splat (i8 117)
  %i.gy = icmp eq <16 x i8> %wide.load358, splat (i8 117)
  %i.gz = or <16 x i1> %vec.phi354, %i.gx         ; 2 uses
  %i.ha = or <16 x i1> %vec.phi355, %i.gy         ; 2 uses
  %index.next359 = add nuw i64 %index351, 32      ; 2 uses
  %i.hb = icmp eq i64 %index.next359, %n.vec349
  br i1 %i.hb, label %middle.block360, label %vector.body350, !llvm.loop !101

middle.block360:                                  ; preds = %vector.body350
  %bin.rdx361 = or <16 x i1> %i.gw, %i.gv
  %bin.rdx361.fr = freeze <16 x i1> %bin.rdx361
  %i.hc = bitcast <16 x i1> %bin.rdx361.fr to i16
  %i.hd = icmp ne i16 %i.hc, 0                    ; 3 uses
  %bin.rdx362 = or <16 x i1> %i.ha, %i.gz
  %bin.rdx362.fr = freeze <16 x i1> %bin.rdx362
  %i.he = bitcast <16 x i1> %bin.rdx362.fr to i16
  %i.hf = icmp ne i16 %i.he, 0                    ; 3 uses
  %cmp.n363 = icmp eq i64 %i.gp, %n.vec349
  br i1 %cmp.n363, label %.split113.us, label %vec.epilog.iter.check369

vec.epilog.iter.check369:                         ; preds = %middle.block360
  %min.epilog.iters.check370 = icmp eq i64 %i.gq, 0
  br i1 %min.epilog.iters.check370, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader, label %vec.epilog.ph371, !prof !115

vec.epilog.ph371:                                 ; preds = %vector.main.loop.iter.check346, %vec.epilog.iter.check369
  %vec.epilog.resume.val364 = phi i64 [ %n.vec349, %vec.epilog.iter.check369 ], [ 0, %vector.main.loop.iter.check346 ]
  %bc.merge.rdx365 = phi i1 [ %i.hd, %vec.epilog.iter.check369 ], [ false, %vector.main.loop.iter.check346 ]
  %bc.merge.rdx366 = phi i1 [ %i.hf, %vec.epilog.iter.check369 ], [ false, %vector.main.loop.iter.check346 ]
  %n.vec372 = and i64 %i.gp, -4                   ; 3 uses
  %6 = getelementptr i8, ptr %i.ei, i64 %n.vec372
  %broadcast.splatinsert373 = insertelement <4 x i1> poison, i1 %bc.merge.rdx365, i64 0
  %broadcast.splat374 = shufflevector <4 x i1> %broadcast.splatinsert373, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert375 = insertelement <4 x i1> poison, i1 %bc.merge.rdx366, i64 0
  %broadcast.splat376 = shufflevector <4 x i1> %broadcast.splatinsert375, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body377

vec.epilog.vector.body377:                        ; preds = %vec.epilog.vector.body377, %vec.epilog.ph371
  %index378 = phi i64 [ %vec.epilog.resume.val364, %vec.epilog.ph371 ], [ %index.next383, %vec.epilog.vector.body377 ] ; 2 uses
  %vec.phi379 = phi <4 x i1> [ %broadcast.splat374, %vec.epilog.ph371 ], [ %i.hh, %vec.epilog.vector.body377 ]
  %vec.phi380 = phi <4 x i1> [ %broadcast.splat376, %vec.epilog.ph371 ], [ %i.hj, %vec.epilog.vector.body377 ]
  %next.gep381 = getelementptr i8, ptr %i.ei, i64 %index378
  %wide.load382 = load <4 x i8>, ptr %next.gep381, align 1, !tbaa !23
  %wide.load382.fr = freeze <4 x i8> %wide.load382 ; 2 uses
  %i.hg = icmp eq <4 x i8> %wide.load382.fr, splat (i8 103)
  %i.hh = or <4 x i1> %vec.phi379, %i.hg          ; 2 uses
  %i.hi = icmp eq <4 x i8> %wide.load382.fr, splat (i8 117)
  %i.hj = or <4 x i1> %vec.phi380, %i.hi          ; 2 uses
  %index.next383 = add nuw i64 %index378, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next383, %n.vec372
  br i1 %i.hk, label %vec.epilog.middle.block384, label %vec.epilog.vector.body377, !llvm.loop !102

vec.epilog.middle.block384:                       ; preds = %vec.epilog.vector.body377
  %i.hl = bitcast <4 x i1> %i.hh to i4
  %i.hm = icmp ne i4 %i.hl, 0                     ; 2 uses
  %i.hn = bitcast <4 x i1> %i.hj to i4
  %i.ho = icmp ne i4 %i.hn, 0                     ; 2 uses
  %cmp.n385 = icmp eq i64 %i.gp, %n.vec372
  br i1 %cmp.n385, label %.split113.us, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader: ; preds = %iter.check367, %vec.epilog.iter.check369, %vec.epilog.middle.block384
  %.0.us.us162262.ph = phi i1 [ false, %iter.check367 ], [ %i.hd, %vec.epilog.iter.check369 ], [ %i.hm, %vec.epilog.middle.block384 ]
  %.030.us.us161261.ph = phi i1 [ false, %iter.check367 ], [ %i.hf, %vec.epilog.iter.check369 ], [ %i.ho, %vec.epilog.middle.block384 ]
  %.sroa.062.0.us.us160260.ph = phi ptr [ %i.ei, %iter.check367 ], [ %i.gr, %vec.epilog.iter.check369 ], [ %6, %vec.epilog.middle.block384 ]
  br label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172
  %.0.us.us162262 = phi i1 [ %spec.select.us.us167, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172 ], [ %.0.us.us162262.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader ]
  %.030.us.us161261 = phi i1 [ %.131.us.us168, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172 ], [ %.030.us.us161261.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader ]
  %.sroa.062.0.us.us160260 = phi ptr [ %i.hs, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172 ], [ %.sroa.062.0.us.us160260.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader ] ; 2 uses
  %i.hp = load i8, ptr %.sroa.062.0.us.us160260, align 1, !tbaa !23 ; 2 uses
  %i.hq = icmp eq i8 %i.hp, 103
  %spec.select.us.us167 = select i1 %i.hq, i1 true, i1 %.0.us.us162262 ; 2 uses
  %i.hr = icmp eq i8 %i.hp, 117
  %.131.us.us168 = select i1 %i.hr, i1 true, i1 %.030.us.us161261 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.062.0.us.us160260, i64 1 ; 2 uses
  %.not440 = icmp ult ptr %i.hs, %i.gg
  br i1 %.not440, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172, label %.split113.us, !llvm.loop !103

_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us
  %.sroa.062.0.us = phi ptr [ %i.id, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us ], [ %i.ei, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split ] ; 4 uses
  %.030.us = phi i1 [ %.131.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split ] ; 2 uses
  %.0.us = phi i1 [ %spec.select.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split ] ; 2 uses
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i50.us, label %bb.ak [
    i32 134217728, label %bb.aj
    i32 67108864, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us
  ]

bb.aj:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us

bb.ak:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split
  %.sroa.0.0.copyload.i.i.i2.i.i53.us = load i64, ptr %i.gb, align 8, !tbaa !16
  %i.ht = and i64 %.sroa.0.0.copyload.i.i.i2.i.i53.us, 281474976710655
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split, %bb.ak, %bb.aj
  %.0.i.sink.i.i52.us = phi ptr [ %i.hw, %bb.ak ], [ %i.gc, %bb.aj ], [ %i.gb, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i52.us, i64 %i.eh
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.sroa.7.12.extract.shift222
  %i.hz = icmp uge ptr %.sroa.062.0.us, %i.hy
  %.not.i.us = icmp eq ptr %.sroa.062.0.us, null
  %brmerge191 = select i1 %.not.i.us, i1 true, i1 %i.hz
  br i1 %brmerge191, label %.split113.us, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us: ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us
  %i.ia = load i8, ptr %.sroa.062.0.us, align 1, !tbaa !23 ; 2 uses
  %i.ib = icmp eq i8 %i.ia, 103
  %spec.select.us = select i1 %i.ib, i1 true, i1 %.0.us
  %i.ic = icmp eq i8 %i.ia, 117
  %.131.us = select i1 %i.ic, i1 true, i1 %.030.us
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.062.0.us, i64 1
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split, !llvm.loop !104

_ZNK6hermes2vm10StringView5beginEv.exit.split.split.us: ; preds = %bb.ac
  %i.ie = and i64 %i.de, 1073741823               ; 2 uses
  %.idx = shl nuw nsw i64 %i.ie, 1                ; 3 uses
  %.sroa.7.12.extract.shift = lshr i64 %i.de, 31  ; 2 uses
  %.idx237 = shl nuw nsw i64 %i.ie, 1
  %i.if = add nuw nsw i64 %.idx237, %.sroa.7.12.extract.shift ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.if
  %.not239 = icmp samesign ult i64 %.idx, %i.if
  br i1 %.not239, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.peel, label %.split113.us

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.peel: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.us
  %i.ih = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx ; 2 uses
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !64 ; 2 uses
  %i.ij = icmp eq i16 %i.ii, 103                  ; 6 uses
  %i.ik = icmp eq i16 %i.ii, 117                  ; 6 uses
  %.sroa.8.0.us115251 = getelementptr inbounds nuw i8, ptr %i.ih, i64 2 ; 5 uses
  %i.il = add nuw nsw i64 %.idx, 2
  %.not218252 = icmp samesign ult i64 %i.il, %i.if
  br i1 %.not218252, label %iter.check320, label %.split113.us

iter.check320:                                    ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.peel
  %i.im = add nsw i64 %.sroa.7.12.extract.shift, -4 ; 3 uses
  %i.in = lshr exact i64 %i.im, 1
  %i.io = add nuw i64 %i.in, 1                    ; 5 uses
  %min.iters.check296 = icmp ult i64 %i.im, 6
  br i1 %min.iters.check296, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader, label %vector.main.loop.iter.check297

vector.main.loop.iter.check297:                   ; preds = %iter.check320
  %min.iters.check298 = icmp ult i64 %i.im, 30
  br i1 %min.iters.check298, label %vec.epilog.ph324, label %vector.ph299

vector.ph299:                                     ; preds = %vector.main.loop.iter.check297
  %i.ip = and i64 %i.io, 12
  %n.vec300 = and i64 %i.io, -16                  ; 4 uses
  %i.iq = shl i64 %n.vec300, 1
  %i.ir = getelementptr i8, ptr %.sroa.8.0.us115251, i64 %i.iq
  br label %vector.body301

vector.body301:                                   ; preds = %vector.ph299, %vector.body301
  %index302 = phi i64 [ 0, %vector.ph299 ], [ %index.next310, %vector.body301 ] ; 2 uses
  %vec.phi303 = phi <8 x i1> [ zeroinitializer, %vector.ph299 ], [ %i.iw, %vector.body301 ]
  %vec.phi304 = phi <8 x i1> [ zeroinitializer, %vector.ph299 ], [ %i.ix, %vector.body301 ]
  %vec.phi305 = phi <8 x i1> [ zeroinitializer, %vector.ph299 ], [ %i.ja, %vector.body301 ]
  %vec.phi306 = phi <8 x i1> [ zeroinitializer, %vector.ph299 ], [ %i.jb, %vector.body301 ]
  %i.is = shl i64 %index302, 1
  %next.gep307 = getelementptr i8, ptr %.sroa.8.0.us115251, i64 %i.is ; 2 uses
  %i.it = getelementptr i8, ptr %next.gep307, i64 16
  %wide.load308 = load <8 x i16>, ptr %next.gep307, align 2, !tbaa !64 ; 2 uses
  %wide.load309 = load <8 x i16>, ptr %i.it, align 2, !tbaa !64 ; 2 uses
  %i.iu = icmp eq <8 x i16> %wide.load308, splat (i16 103)
  %i.iv = icmp eq <8 x i16> %wide.load309, splat (i16 103)
  %i.iw = or <8 x i1> %vec.phi303, %i.iu          ; 2 uses
  %i.ix = or <8 x i1> %vec.phi304, %i.iv          ; 2 uses
  %i.iy = icmp eq <8 x i16> %wide.load308, splat (i16 117)
  %i.iz = icmp eq <8 x i16> %wide.load309, splat (i16 117)
  %i.ja = or <8 x i1> %vec.phi305, %i.iy          ; 2 uses
  %i.jb = or <8 x i1> %vec.phi306, %i.iz          ; 2 uses
  %index.next310 = add nuw i64 %index302, 16      ; 2 uses
  %i.jc = icmp eq i64 %index.next310, %n.vec300
  br i1 %i.jc, label %middle.block311, label %vector.body301, !llvm.loop !105

middle.block311:                                  ; preds = %vector.body301
  %bin.rdx312 = or <8 x i1> %i.ix, %i.iw
  %bin.rdx312.fr = freeze <8 x i1> %bin.rdx312
  %i.jd = bitcast <8 x i1> %bin.rdx312.fr to i8
  %i.je = icmp ne i8 %i.jd, 0
  %rdx.select313 = select i1 %i.je, i1 true, i1 %i.ij ; 3 uses
  %bin.rdx314 = or <8 x i1> %i.jb, %i.ja
  %bin.rdx314.fr = freeze <8 x i1> %bin.rdx314
  %i.jf = bitcast <8 x i1> %bin.rdx314.fr to i8
  %i.jg = icmp ne i8 %i.jf, 0
  %rdx.select315 = select i1 %i.jg, i1 true, i1 %i.ik ; 3 uses
  %cmp.n316 = icmp eq i64 %i.io, %n.vec300
  br i1 %cmp.n316, label %.split113.us, label %vec.epilog.iter.check322

vec.epilog.iter.check322:                         ; preds = %middle.block311
  %min.epilog.iters.check323 = icmp eq i64 %i.ip, 0
  br i1 %min.epilog.iters.check323, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader, label %vec.epilog.ph324, !prof !117

vec.epilog.ph324:                                 ; preds = %vector.main.loop.iter.check297, %vec.epilog.iter.check322
  %vec.epilog.resume.val317 = phi i64 [ %n.vec300, %vec.epilog.iter.check322 ], [ 0, %vector.main.loop.iter.check297 ]
  %bc.merge.rdx318 = phi i1 [ %rdx.select313, %vec.epilog.iter.check322 ], [ %i.ij, %vector.main.loop.iter.check297 ]
  %bc.merge.rdx319 = phi i1 [ %rdx.select315, %vec.epilog.iter.check322 ], [ %i.ik, %vector.main.loop.iter.check297 ]
  %7 = xor i1 %bc.merge.rdx318, %i.ij
  %i.jh = xor i1 %bc.merge.rdx319, %i.ik
  %n.vec325 = and i64 %i.io, -4                   ; 3 uses
  %8 = shl i64 %n.vec325, 1
  %9 = getelementptr i8, ptr %.sroa.8.0.us115251, i64 %8
  %broadcast.splatinsert326.a = insertelement <4 x i1> poison, i1 %7, i64 0
  %broadcast.splat327.a = shufflevector <4 x i1> %broadcast.splatinsert326.a, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert328 = insertelement <4 x i1> poison, i1 %i.jh, i64 0
  %broadcast.splat329 = shufflevector <4 x i1> %broadcast.splatinsert328, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body330

vec.epilog.vector.body330:                        ; preds = %vec.epilog.vector.body330, %vec.epilog.ph324
  %index331 = phi i64 [ %vec.epilog.resume.val317, %vec.epilog.ph324 ], [ %index.next336, %vec.epilog.vector.body330 ] ; 2 uses
  %vec.phi332 = phi <4 x i1> [ %broadcast.splat327.a, %vec.epilog.ph324 ], [ %.fr436, %vec.epilog.vector.body330 ]
  %vec.phi333 = phi <4 x i1> [ %broadcast.splat329, %vec.epilog.ph324 ], [ %.fr437, %vec.epilog.vector.body330 ]
  %i.ji = shl i64 %index331, 1
  %next.gep334 = getelementptr i8, ptr %.sroa.8.0.us115251, i64 %i.ji
  %wide.load335 = load <4 x i16>, ptr %next.gep334, align 2, !tbaa !64 ; 2 uses
  %i.jj = icmp eq <4 x i16> %wide.load335, splat (i16 103)
  %i.jk = or <4 x i1> %vec.phi332, %i.jj
  %.fr436 = freeze <4 x i1> %i.jk                 ; 2 uses
  %i.jl = icmp eq <4 x i16> %wide.load335, splat (i16 117)
  %i.jm = or <4 x i1> %vec.phi333, %i.jl
  %.fr437 = freeze <4 x i1> %i.jm                 ; 2 uses
  %index.next336 = add nuw i64 %index331, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next336, %n.vec325
  br i1 %i.jn, label %vec.epilog.middle.block337, label %vec.epilog.vector.body330, !llvm.loop !106

vec.epilog.middle.block337:                       ; preds = %vec.epilog.vector.body330
  %i.jo = bitcast <4 x i1> %.fr436 to i4
  %i.jp = icmp ne i4 %i.jo, 0
  %rdx.select338 = select i1 %i.jp, i1 true, i1 %i.ij ; 2 uses
  %i.jq = bitcast <4 x i1> %.fr437 to i4
  %i.jr = icmp ne i4 %i.jq, 0
  %rdx.select339 = select i1 %i.jr, i1 true, i1 %i.ik ; 2 uses
  %cmp.n340 = icmp eq i64 %i.io, %n.vec325
  br i1 %cmp.n340, label %.split113.us, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader: ; preds = %iter.check320, %vec.epilog.iter.check322, %vec.epilog.middle.block337
  %.sroa.8.0.us115255.ph = phi ptr [ %.sroa.8.0.us115251, %iter.check320 ], [ %i.ir, %vec.epilog.iter.check322 ], [ %9, %vec.epilog.middle.block337 ]
  %.0.us118254.ph = phi i1 [ %i.ij, %iter.check320 ], [ %rdx.select313, %vec.epilog.iter.check322 ], [ %rdx.select338, %vec.epilog.middle.block337 ]
  %.030.us117253.ph = phi i1 [ %i.ik, %iter.check320 ], [ %rdx.select315, %vec.epilog.iter.check322 ], [ %rdx.select339, %vec.epilog.middle.block337 ]
  br label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126
  %.sroa.8.0.us115255 = phi ptr [ %.sroa.8.0.us115, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126 ], [ %.sroa.8.0.us115255.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader ] ; 2 uses
  %.0.us118254 = phi i1 [ %spec.select100.us124, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126 ], [ %.0.us118254.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader ]
  %.030.us117253 = phi i1 [ %.131104.us125, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126 ], [ %.030.us117253.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader ]
  %i.js = load i16, ptr %.sroa.8.0.us115255, align 2, !tbaa !64 ; 2 uses
  %i.jt = icmp eq i16 %i.js, 103
  %spec.select100.us124 = select i1 %i.jt, i1 true, i1 %.0.us118254 ; 2 uses
  %i.ju = icmp eq i16 %i.js, 117
  %.131104.us125 = select i1 %i.ju, i1 true, i1 %.030.us117253 ; 2 uses
  %.sroa.8.0.us115 = getelementptr inbounds nuw i8, ptr %.sroa.8.0.us115255, i64 2 ; 2 uses
  %.not218 = icmp ult ptr %.sroa.8.0.us115, %i.ig
  br i1 %.not218, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126, label %.split113.us, !llvm.loop !107

_ZNK6hermes2vm10StringView5beginEv.exit.split.split: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ae
  %.0.i.sink.i4.i.ph = phi ptr [ %i.eg, %bb.ai ], [ %i.eb, %bb.ah ], [ %i.ea, %bb.ag ], [ %i.dz, %bb.ae ] ; 2 uses
  %.0.i.sink.i4.i.ph272 = ptrtoaddr ptr %.0.i.sink.i4.i.ph to i64
  %i.jv = and i64 %i.de, 1073741823               ; 4 uses
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i.ph, i64 %i.jv ; 6 uses
  %.sroa.7.12.extract.shift227 = lshr i64 %i.de, 32 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i2.i39 = load i64, ptr %i.dc, align 8, !tbaa !16
  %i.jx = and i64 %.sroa.0.0.copyload.i.i.i.i2.i39, 281474976710655
  %i.jy = inttoptr i64 %i.jx to ptr               ; 4 uses
  %i.jz = load i32, ptr %i.jy, align 4            ; 2 uses
  %i.ka = icmp ugt i32 %i.jz, 150994943
  %.mask.i.i.i.i.i.i.i.i.i3.i40 = and i32 %i.jz, 251658240 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 12 ; 2 uses
  br i1 %i.ka, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.us, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader, !prof !15

_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i40, label %bb.am [
    i32 117440512, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel
    i32 50331648, label %bb.al
  ]

bb.al:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel

bb.am:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader
  %.sroa.0.0.copyload.i.i.i2.i5.i47.peel = load i64, ptr %i.kb, align 8, !tbaa !16
  %i.kd = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i47.peel, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel: ; preds = %bb.am, %bb.al, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader
  %.0.i.sink.i4.i42.peel = phi ptr [ %i.kg, %bb.am ], [ %i.kb, %bb.al ], [ %i.kc, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader ]
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i42.peel, i64 %i.jv
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %.sroa.7.12.extract.shift227
  %.not235 = icmp ult ptr %i.jw, %i.ki
  br i1 %.not235, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.peel, label %.split113.us

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.peel: ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel
  %i.kj = load i16, ptr %i.jw, align 2, !tbaa !64 ; 2 uses
  %i.kk = icmp eq i16 %i.kj, 103
  %i.kl = icmp eq i16 %i.kj, 117
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split

_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.us: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split
  %i.km = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !61 ; 2 uses
  %i.ko = ptrtoaddr ptr %i.kn to i64
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.kn, i64 %i.jv
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.kp, i64 %.sroa.7.12.extract.shift227 ; 3 uses
  %.not236 = icmp ult ptr %i.jw, %i.kq
  br i1 %.not236, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.peel, label %.split113.us

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.peel: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.us
  %i.kr = load i16, ptr %i.jw, align 2, !tbaa !64 ; 2 uses
  %i.ks = icmp eq i16 %i.kr, 103                  ; 6 uses
  %i.kt = icmp eq i16 %i.kr, 117                  ; 6 uses
  %.sroa.8.0.us135245 = getelementptr inbounds nuw i8, ptr %i.jw, i64 2 ; 6 uses
  %.not216246 = icmp ult ptr %.sroa.8.0.us135245, %i.kq
  br i1 %.not216246, label %iter.check, label %.split113.us

iter.check:                                       ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.peel
  %i.ku = shl nuw nsw i64 %.sroa.7.12.extract.shift227, 1
  %i.kv = add i64 %i.ku, %i.ko
  %i.kw = add i64 %i.kv, -3
  %i.kx = sub i64 %i.kw, %.0.i.sink.i4.i.ph272    ; 3 uses
  %i.ky = lshr i64 %i.kx, 1
  %i.kz = add nuw i64 %i.ky, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.kx, 6
  br i1 %min.iters.check, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check273 = icmp ult i64 %i.kx, 30
  br i1 %min.iters.check273, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.la = and i64 %i.kz, 12
  %n.vec = and i64 %i.kz, -16                     ; 4 uses
  %i.lb = shl i64 %n.vec, 1
  %i.lc = getelementptr i8, ptr %.sroa.8.0.us135245, i64 %i.lb
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.lh, %vector.body ]
  %vec.phi274 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.li, %vector.body ]
  %vec.phi275 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ll, %vector.body ]
  %vec.phi276 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.lm, %vector.body ]
  %i.ld = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.sroa.8.0.us135245, i64 %i.ld ; 2 uses
  %i.le = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !64 ; 2 uses
  %wide.load277 = load <8 x i16>, ptr %i.le, align 2, !tbaa !64 ; 2 uses
  %i.lf = icmp eq <8 x i16> %wide.load, splat (i16 103)
  %i.lg = icmp eq <8 x i16> %wide.load277, splat (i16 103)
  %i.lh = or <8 x i1> %vec.phi, %i.lf             ; 2 uses
  %i.li = or <8 x i1> %vec.phi274, %i.lg          ; 2 uses
  %i.lj = icmp eq <8 x i16> %wide.load, splat (i16 117)
  %i.lk = icmp eq <8 x i16> %wide.load277, splat (i16 117)
  %i.ll = or <8 x i1> %vec.phi275, %i.lj          ; 2 uses
  %i.lm = or <8 x i1> %vec.phi276, %i.lk          ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ln = icmp eq i64 %index.next, %n.vec
  br i1 %i.ln, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.li, %i.lh
  %bin.rdx.fr = freeze <8 x i1> %bin.rdx
  %i.lo = bitcast <8 x i1> %bin.rdx.fr to i8
  %i.lp = icmp ne i8 %i.lo, 0
  %rdx.select = select i1 %i.lp, i1 true, i1 %i.ks ; 3 uses
  %bin.rdx278 = or <8 x i1> %i.lm, %i.ll
  %bin.rdx278.fr = freeze <8 x i1> %bin.rdx278
  %i.lq = bitcast <8 x i1> %bin.rdx278.fr to i8
  %i.lr = icmp ne i8 %i.lq, 0
  %rdx.select279 = select i1 %i.lr, i1 true, i1 %i.kt ; 3 uses
  %cmp.n = icmp eq i64 %i.kz, %n.vec
  br i1 %cmp.n, label %.split113.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.la, 0
  br i1 %min.epilog.iters.check, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.preheader, label %vec.epilog.ph, !prof !117

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %rdx.select, %vec.epilog.iter.check ], [ %i.ks, %vector.main.loop.iter.check ]
  %bc.merge.rdx280 = phi i1 [ %rdx.select279, %vec.epilog.iter.check ], [ %i.kt, %vector.main.loop.iter.check ]
  %10 = xor i1 %bc.merge.rdx, %i.ks
  %i.ls = xor i1 %bc.merge.rdx280, %i.kt
  %n.vec281 = and i64 %i.kz, -4                   ; 3 uses
  %11 = shl i64 %n.vec281, 1
  %12 = getelementptr i8, ptr %.sroa.8.0.us135245, i64 %11
  %broadcast.splatinsert.a = insertelement <4 x i1> poison, i1 %10, i64 0
  %broadcast.splat.a = shufflevector <4 x i1> %broadcast.splatinsert.a, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert282 = insertelement <4 x i1> poison, i1 %i.ls, i64 0
  %broadcast.splat283 = shufflevector <4 x i1> %broadcast.splatinsert282, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index284 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next289, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi285 = phi <4 x i1> [ %broadcast.splat.a, %vec.epilog.ph ], [ %.fr434, %vec.epilog.vector.body ]
  %vec.phi286 = phi <4 x i1> [ %broadcast.splat283, %vec.epilog.ph ], [ %.fr435, %vec.epilog.vector.body ]
  %i.lt = shl i64 %index284, 1
  %next.gep287 = getelementptr i8, ptr %.sroa.8.0.us135245, i64 %i.lt
  %wide.load288 = load <4 x i16>, ptr %next.gep287, align 2, !tbaa !64 ; 2 uses
  %i.lu = icmp eq <4 x i16> %wide.load288, splat (i16 103)
  %i.lv = or <4 x i1> %vec.phi285, %i.lu
  %.fr434 = freeze <4 x i1> %i.lv                 ; 2 uses
  %i.lw = icmp eq <4 x i16> %wide.load288, splat (i16 117)
  %i.lx = or <4 x i1> %vec.phi286, %i.lw
  %.fr435 = freeze <4 x i1> %i.lx                 ; 2 uses
  %index.next289 = add nuw i64 %index284, 4       ; 2 uses
  %i.ly = icmp eq i64 %index.next289, %n.vec281
  br i1 %i.ly, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !109

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.lz = bitcast <4 x i1> %.fr434 to i4
  %i.ma = icmp ne i4 %i.lz, 0
  %rdx.select290 = select i1 %i.ma, i1 true, i1 %i.ks ; 2 uses
  %i.mb = bitcast <4 x i1> %.fr435 to i4
  %i.mc = icmp ne i4 %i.mb, 0
  %rdx.select291 = select i1 %i.mc, i1 true, i1 %i.kt ; 2 uses
  %cmp.n292 = icmp eq i64 %i.kz, %n.vec281
  br i1 %cmp.n292, label %.split113.us, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.preheader

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.8.0.us135249.ph = phi ptr [ %.sroa.8.0.us135245, %iter.check ], [ %i.lc, %vec.epilog.iter.check ], [ %12, %vec.epilog.middle.block ]
  %.0.us138248.ph = phi i1 [ %i.ks, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select290, %vec.epilog.middle.block ]
  %.030.us137247.ph = phi i1 [ %i.kt, %iter.check ], [ %rdx.select279, %vec.epilog.iter.check ], [ %rdx.select291, %vec.epilog.middle.block ]
  br label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.preheader, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148
  %.sroa.8.0.us135249 = phi ptr [ %.sroa.8.0.us135, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148 ], [ %.sroa.8.0.us135249.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.preheader ] ; 2 uses
  %.0.us138248 = phi i1 [ %spec.select100.us146, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148 ], [ %.0.us138248.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.preheader ]
  %.030.us137247 = phi i1 [ %.131104.us147, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148 ], [ %.030.us137247.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.preheader ]
  %i.md = load i16, ptr %.sroa.8.0.us135249, align 2, !tbaa !64 ; 2 uses
  %i.me = icmp eq i16 %i.md, 103
  %spec.select100.us146 = select i1 %i.me, i1 true, i1 %.0.us138248 ; 2 uses
  %i.mf = icmp eq i16 %i.md, 117
  %.131104.us147 = select i1 %i.mf, i1 true, i1 %.030.us137247 ; 2 uses
  %.sroa.8.0.us135 = getelementptr inbounds nuw i8, ptr %.sroa.8.0.us135249, i64 2 ; 2 uses
  %.not216 = icmp ult ptr %.sroa.8.0.us135, %i.kq
  br i1 %.not216, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148, label %.split113.us, !llvm.loop !110

_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.peel, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit
  %.sroa.8.0.pn = phi ptr [ %.sroa.8.0, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit ], [ %i.jw, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.peel ]
  %.030 = phi i1 [ %.131104, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit ], [ %i.kl, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.peel ] ; 2 uses
  %.0 = phi i1 [ %spec.select100, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit ], [ %i.kk, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.peel ] ; 2 uses
  %.sroa.8.0 = getelementptr inbounds nuw i8, ptr %.sroa.8.0.pn, i64 2 ; 3 uses
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i40, label %bb.ao [
    i32 117440512, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41
    i32 50331648, label %bb.an
  ]

bb.an:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41

bb.ao:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split
  %.sroa.0.0.copyload.i.i.i2.i5.i47 = load i64, ptr %i.kb, align 8, !tbaa !16
  %i.mg = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i47, 281474976710655
  %i.mh = inttoptr i64 %i.mg to ptr
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split, %bb.ao, %bb.an
  %.0.i.sink.i4.i42 = phi ptr [ %i.mj, %bb.ao ], [ %i.kb, %bb.an ], [ %i.kc, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split ]
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i42, i64 %i.jv
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.mk, i64 %.sroa.7.12.extract.shift227
  %.not215 = icmp ult ptr %.sroa.8.0, %i.ml
  br i1 %.not215, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit, label %.split113.us

.split113.us:                                     ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.peel, %vec.epilog.middle.block, %middle.block, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.peel, %vec.epilog.middle.block337, %middle.block311, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split.us, %vec.epilog.middle.block384, %middle.block360, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.us, %vec.epilog.middle.block429, %middle.block405, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.us, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.us
  %.us-phi = phi i1 [ %.131104.us147, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148 ], [ %.131.us.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us ], [ %.030.us, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us ], [ %.131104.us125, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126 ], [ %.131.us.us168, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172 ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.us ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.us ], [ false, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.us ], [ %i.fs, %vec.epilog.middle.block429 ], [ %i.fj, %middle.block405 ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split.us ], [ %i.ho, %vec.epilog.middle.block384 ], [ %i.hf, %middle.block360 ], [ %i.ik, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.peel ], [ %rdx.select339, %vec.epilog.middle.block337 ], [ %rdx.select315, %middle.block311 ], [ %i.kt, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.peel ], [ %rdx.select291, %vec.epilog.middle.block ], [ %rdx.select279, %middle.block ], [ %.030, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41 ]
  %.us-phi114 = phi i1 [ %spec.select100.us146, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148 ], [ %spec.select.us.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us ], [ %.0.us, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us ], [ %spec.select100.us124, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126 ], [ %spec.select.us.us167, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172 ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.us ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.us ], [ false, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.us ], [ %i.fq, %vec.epilog.middle.block429 ], [ %i.fh, %middle.block405 ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split.us ], [ %i.hm, %vec.epilog.middle.block384 ], [ %i.hd, %middle.block360 ], [ %i.ij, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.peel ], [ %rdx.select338, %vec.epilog.middle.block337 ], [ %rdx.select313, %middle.block311 ], [ %i.ks, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.peel ], [ %rdx.select290, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %.0, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41 ]
  %i.mm = call ptr @_ZN6hermes2vm22JSRegExpStringIterator6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_15StringPrimitiveEEEbb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.bm, ptr %.0.i.i.i.i.i.i, i1 noundef zeroext %.us-phi114, i1 noundef zeroext %.us-phi) #12
  %i.mn = ptrtoint ptr %i.mm to i64
  %i.mo = or i64 %i.mn, -281474976710656
  br label %bb.ap

_ZN6hermes2vm10StringView14const_iteratorppEi.exit: ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41
  %i.mp = load i16, ptr %.sroa.8.0, align 2, !tbaa !64 ; 2 uses
  %i.mq = icmp eq i16 %i.mp, 103
  %spec.select100 = select i1 %i.mq, i1 true, i1 %.0
  %i.mr = icmp eq i16 %i.mp, 117
  %.131104 = select i1 %i.mr, i1 true, i1 %.030
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split, !llvm.loop !111

bb.ap:                                            ; preds = %bb.b, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.l, %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit37, %.split113.us, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit34, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.099.6 = phi i32 [ %i.aa, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 0, %bb.b ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit34 ], [ 0, %bb.l ], [ 1, %.split113.us ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit37 ], [ 0, %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit ]
  %.sroa.10.6 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ undef, %bb.b ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit34 ], [ undef, %bb.l ], [ %i.mo, %.split113.us ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit37 ], [ undef, %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.099.6, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.10.6, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm18regExpSourceGetterEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !17, !noalias !120
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16 ; 5 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit.thread22

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = add i32 %i.e, -436207616
  %i.g = icmp ult i32 %i.f, 855638016
  br i1 %i.g, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit.thread, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %i.h = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !14 ; 2 uses
  %i.i = icmp ugt i64 %i.h, -844424930131969
  %i.j = and i64 %i.h, 281474976710655
  %i.k = icmp ne i64 %i.j, 0
  %i.l = and i1 %i.i, %i.k
  br i1 %i.l, label %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit.thread22: ; preds = %bb.a
  %i.m = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !14 ; 2 uses
  %i.n = icmp ugt i64 %i.m, -844424930131969
  %i.o = and i64 %i.m, 281474976710655            ; 2 uses
  %i.p = icmp ne i64 %i.o, 0
  %i.q = and i1 %i.n, %i.p
  br i1 %i.q, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit.thread: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit.thread22, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit.thread, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.r, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 51, ptr %i.s, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.t, align 8, !tbaa !22
  store ptr @.str.3, ptr %3, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !24
  %i.v = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.w = insertvalue { i32, i64 } poison, i32 %i.v, 0
  %i.x = insertvalue { i32, i64 } %i.w, i64 undef, 1
  br label %bb.e

_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i: ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit.thread
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.e, -16777216
  %i.y = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 1040187392 ; 2 uses
  %.pre.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8 ; 2 uses
  %.pre26 = and i64 %.pre.pre, 281474976710655
  %.pre-phi = select i1 %i.y, i64 %i.c, i64 %.pre26 ; 2 uses
  %i.z = select i1 %i.y, i64 %.sroa.0.0.copyload.i, i64 %.pre.pre
  %i.aa = icmp ugt i64 %i.z, -844424930131969
  %i.ab = icmp ne i64 %.pre-phi, 0
  %i.ac = and i1 %i.aa, %i.ab
  br i1 %i.ac, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i.i

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i.i: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 536
  %.val = load i64, ptr %i.ad, align 8
  %i.ae = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ag, -436207616
  %i.ai = icmp ult i32 %i.ah, 855638016
  %.sroa.0.0.copyload.i.i.pre.i = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8
  %.sroa.0.0.copyload.i.i.i = select i1 %i.ai, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i.i.pre.i
  %i.aj = xor i64 %.sroa.0.0.copyload.i.i.i, %.val
  %i.ak = and i64 %i.aj, 281474976710655
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit13, !prof !15

bb.b:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i.i
  %i.am = tail call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @.str.4, i64 4) #12
  br label %bb.e

_ZN6hermes2vm11TwineChar16C2EPKc.exit13:          ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.an, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 51, ptr %i.ao, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ap, align 8, !tbaa !22
  store ptr @.str.3, ptr %4, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.aq, align 8, !tbaa !24
  %i.ar = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.as = insertvalue { i32, i64 } poison, i32 %i.ar, 0
  %i.at = insertvalue { i32, i64 } %i.as, i64 undef, 1
  br label %bb.e

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread: ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit.thread22, %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i
end_hunk_0
