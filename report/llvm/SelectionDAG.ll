Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectionDAG?download=true
inline.NumInlined: 15007
inline.NumDeleted: 4174
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE:bb.a
  %i.r = icmp ugt i64 %i.m, 8
  br i1 %i.r, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i: ; preds = %bb.d
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull %i.o, i64 noundef %i.m, i64 noundef 4) #32
  %.pre8.pre.i.i = load i32, ptr %i.p, align 8, !tbaa !136
  %i.s = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %19, align 8, !tbaa !63
  br label %bb.e

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i:  ; preds = %bb.d
  %.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i
  %i.t = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i ], [ %i.o, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.s, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 4 %.sroa.0143.0.copyload, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.p, align 8, !tbaa !136
  br label %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i, %bb.e
  %i.v = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.e ]
  %i.w = add i32 %i.v, %i.n
  store i32 %i.w, ptr %i.p, align 8, !tbaa !136
  %i.x = load ptr, ptr %6, align 8, !tbaa !92     ; 2 uses
  %i.y = icmp eq ptr %4, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp eq i32 %5, %i.aa
  %i.ac = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit
  %.sroa.0137.0.copyload = load i16, ptr %18, align 8, !tbaa !97
  %.sroa.2139.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.ad = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 %.sroa.0137.0.copyload, ptr %.sroa.2139.0.copyload) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %.fca.0.extract133 = extractvalue { ptr, i32 } %i.ad, 0 ; 4 uses
  %.fca.1.extract134 = extractvalue { ptr, i32 } %i.ad, 1 ; 4 uses
  store ptr %.fca.0.extract133, ptr %6, align 8, !tbaa !109
  store i32 %.fca.1.extract134, ptr %i.z, align 8, !tbaa !114
  %.not176306 = icmp eq i32 %i.n, 0
  br i1 %.not176306, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ae = load ptr, ptr %19, align 8, !tbaa !63   ; 9 uses
  %i.af = and i64 %i.m, 4294967295                ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.m, 4294967288               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue403, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue403 ] ; 9 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <4 x i32>, ptr %i.ag, align 4, !tbaa !114 ; 5 uses
  %wide.load389 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !114 ; 5 uses
  %i.ai = icmp sge <4 x i32> %wide.load, %broadcast.splat ; 4 uses
  %i.aj = icmp sge <4 x i32> %wide.load389, %broadcast.splat ; 4 uses
  %i.ak = extractelement <4 x i1> %i.ai, i64 0
  br i1 %i.ak, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.al = extractelement <4 x i32> %wide.load, i64 0
  %i.am = sub nsw i32 %i.al, %i.n
  store i32 %i.am, ptr %i.ag, align 4, !tbaa !114
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.an = extractelement <4 x i1> %i.ai, i64 1
  br i1 %i.an, label %pred.store.if390, label %pred.store.continue391

pred.store.if390:                                 ; preds = %pred.store.continue
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = extractelement <4 x i32> %wide.load, i64 1
  %i.ar = sub nsw i32 %i.aq, %i.n
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !114
  br label %pred.store.continue391

pred.store.continue391:                           ; preds = %pred.store.if390, %pred.store.continue
  %i.as = extractelement <4 x i1> %i.ai, i64 2
  br i1 %i.as, label %pred.store.if392, label %pred.store.continue393

pred.store.if392:                                 ; preds = %pred.store.continue391
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = extractelement <4 x i32> %wide.load, i64 2
  %i.aw = sub nsw i32 %i.av, %i.n
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !114
  br label %pred.store.continue393

pred.store.continue393:                           ; preds = %pred.store.if392, %pred.store.continue391
  %i.ax = extractelement <4 x i1> %i.ai, i64 3
  br i1 %i.ax, label %pred.store.if394, label %pred.store.continue395

pred.store.if394:                                 ; preds = %pred.store.continue393
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ba = extractelement <4 x i32> %wide.load, i64 3
  %i.bb = sub nsw i32 %i.ba, %i.n
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !114
  br label %pred.store.continue395

pred.store.continue395:                           ; preds = %pred.store.if394, %pred.store.continue393
  %i.bc = extractelement <4 x i1> %i.aj, i64 0
  br i1 %i.bc, label %pred.store.if396, label %pred.store.continue397

pred.store.if396:                                 ; preds = %pred.store.continue395
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = extractelement <4 x i32> %wide.load389, i64 0
  %i.bg = sub nsw i32 %i.bf, %i.n
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !114
  br label %pred.store.continue397

pred.store.continue397:                           ; preds = %pred.store.if396, %pred.store.continue395
  %i.bh = extractelement <4 x i1> %i.aj, i64 1
  br i1 %i.bh, label %pred.store.if398, label %pred.store.continue399

pred.store.if398:                                 ; preds = %pred.store.continue397
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.bk = extractelement <4 x i32> %wide.load389, i64 1
  %i.bl = sub nsw i32 %i.bk, %i.n
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !114
  br label %pred.store.continue399

pred.store.continue399:                           ; preds = %pred.store.if398, %pred.store.continue397
  %i.bm = extractelement <4 x i1> %i.aj, i64 2
  br i1 %i.bm, label %pred.store.if400, label %pred.store.continue401

pred.store.if400:                                 ; preds = %pred.store.continue399
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = extractelement <4 x i32> %wide.load389, i64 2
  %i.bq = sub nsw i32 %i.bp, %i.n
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !114
  br label %pred.store.continue401

pred.store.continue401:                           ; preds = %pred.store.if400, %pred.store.continue399
  %i.br = extractelement <4 x i1> %i.aj, i64 3
  br i1 %i.br, label %pred.store.if402, label %pred.store.continue403

pred.store.if402:                                 ; preds = %pred.store.continue401
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  %i.bu = extractelement <4 x i32> %wide.load389, i64 3
  %i.bv = sub nsw i32 %i.bu, %i.n
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !114
  br label %pred.store.continue403

pred.store.continue403:                           ; preds = %pred.store.if402, %pred.store.continue401
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !1106

middle.block:                                     ; preds = %pred.store.continue403
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !114 ; 2 uses
  %.not187 = icmp slt i32 %i.by, %i.n
  br i1 %.not187, label %bb.h, label %bb.g

bb.g:                                             ; preds = %scalar.ph
  %i.bz = sub nsw i32 %i.by, %i.n
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !114
  br label %bb.h

bb.h:                                             ; preds = %scalar.ph, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not176 = icmp eq i64 %indvars.iv.next, %i.af
  br i1 %.not176, label %.loopexit, label %scalar.ph, !llvm.loop !1107

.loopexit:                                        ; preds = %bb.h, %middle.block, %bb.f, %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit
  %.sroa.15.0.copyload284 = phi i32 [ %i.aa, %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit ], [ %.fca.1.extract134, %bb.f ], [ %.fca.1.extract134, %middle.block ], [ %.fca.1.extract134, %bb.h ] ; 4 uses
  %.sroa.0264.0.copyload273 = phi ptr [ %i.x, %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit ], [ %.fca.0.extract133, %bb.f ], [ %.fca.0.extract133, %middle.block ], [ %.fca.0.extract133, %bb.h ] ; 4 uses
  %i.ca = load i32, ptr %i.d, align 8, !tbaa !88
  %i.cb = add i32 %i.ca, -53
  %spec.select.i.i198 = icmp ult i32 %i.cb, 2
  br i1 %spec.select.i.i198, label %bb.i, label %_ZL14commuteShuffleRN4llvm7SDValueES1_NS_15MutableArrayRefIiEE.exit

bb.i:                                             ; preds = %.loopexit
  %i.cc = load ptr, ptr %19, align 8, !tbaa !63   ; 5 uses
  %i.cd = load i32, ptr %i.p, align 8, !tbaa !136 ; 7 uses
  %i.ce = zext i32 %i.cd to i64                   ; 3 uses
  store ptr %4, ptr %6, align 8, !tbaa !109
  store i32 %5, ptr %i.z, align 8, !tbaa !114
  %.not17.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not17.i.i, label %_ZL14commuteShuffleRN4llvm7SDValueES1_NS_15MutableArrayRefIiEE.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %i.cf = sub i32 0, %i.cd                        ; 2 uses
  %min.iters.check405 = icmp ult i32 %i.cd, 4
  br i1 %min.iters.check405, label %.lr.ph.i.i.preheader, label %vector.ph406

vector.ph406:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec407 = and i64 %i.ce, 4294967292           ; 3 uses
  %broadcast.splatinsert408 = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat409 = shufflevector <4 x i32> %broadcast.splatinsert408, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert410 = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat411 = shufflevector <4 x i32> %broadcast.splatinsert410, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body412

vector.body412:                                   ; preds = %pred.store.continue422, %vector.ph406
  %index413 = phi i64 [ 0, %vector.ph406 ], [ %index.next423, %pred.store.continue422 ] ; 5 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index413 ; 2 uses
  %wide.load414.a = load <4 x i32>, ptr %i.cg, align 4, !tbaa !114 ; 3 uses
  %i.ch = icmp sgt <4 x i32> %wide.load414.a, splat (i32 -1) ; 4 uses
  %i.ci = icmp slt <4 x i32> %wide.load414.a, %broadcast.splat411
  %i.cj = select <4 x i1> %i.ci, <4 x i32> %broadcast.splat411, <4 x i32> %broadcast.splat409
  %i.ck = add <4 x i32> %i.cj, %wide.load414.a    ; 4 uses
  %i.cl = extractelement <4 x i1> %i.ch, i64 0
  br i1 %i.cl, label %pred.store.if415, label %pred.store.continue416

pred.store.if415:                                 ; preds = %vector.body412
  %i.cm = extractelement <4 x i32> %i.ck, i64 0
  store i32 %i.cm, ptr %i.cg, align 4, !tbaa !114
  br label %pred.store.continue416

pred.store.continue416:                           ; preds = %pred.store.if415, %vector.body412
  %i.cn = extractelement <4 x i1> %i.ch, i64 1
  br i1 %i.cn, label %pred.store.if417, label %pred.store.continue418

pred.store.if417:                                 ; preds = %pred.store.continue416
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index413
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = extractelement <4 x i32> %i.ck, i64 1
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !114
  br label %pred.store.continue418

pred.store.continue418:                           ; preds = %pred.store.if417, %pred.store.continue416
  %i.cr = extractelement <4 x i1> %i.ch, i64 2
  br i1 %i.cr, label %pred.store.if419, label %pred.store.continue420

pred.store.if419:                                 ; preds = %pred.store.continue418
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index413
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = extractelement <4 x i32> %i.ck, i64 2
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !114
  br label %pred.store.continue420

pred.store.continue420:                           ; preds = %pred.store.if419, %pred.store.continue418
  %i.cv = extractelement <4 x i1> %i.ch, i64 3
  br i1 %i.cv, label %pred.store.if421, label %pred.store.continue422

pred.store.if421:                                 ; preds = %pred.store.continue420
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index413
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.cy = extractelement <4 x i32> %i.ck, i64 3
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !114
  br label %pred.store.continue422

pred.store.continue422:                           ; preds = %pred.store.if421, %pred.store.continue420
  %index.next423 = add nuw i64 %index413, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next423, %n.vec407
  br i1 %i.cz, label %middle.block424, label %vector.body412, !llvm.loop !1108

middle.block424:                                  ; preds = %pred.store.continue422
  %cmp.n425 = icmp eq i64 %n.vec407, %i.ce
  br i1 %cmp.n425, label %_ZL14commuteShuffleRN4llvm7SDValueES1_NS_15MutableArrayRefIiEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block424
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec407, %middle.block424 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.j
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.j ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i.i ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !114 ; 3 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %bb.j, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.i.i
  %i.dd = icmp slt i32 %i.db, %i.cd
  %.sink.p.i.i = select i1 %i.dd, i32 %i.cd, i32 %i.cf
  %.sink.i.i = add i32 %.sink.p.i.i, %i.db
  store i32 %.sink.i.i, ptr %i.da, align 4, !tbaa !114
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i.i, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ce
  br i1 %.not.i.i, label %_ZL14commuteShuffleRN4llvm7SDValueES1_NS_15MutableArrayRefIiEE.exit, label %.lr.ph.i.i, !llvm.loop !1109

_ZL14commuteShuffleRN4llvm7SDValueES1_NS_15MutableArrayRefIiEE.exit: ; preds = %bb.j, %middle.block424, %bb.i, %.loopexit
  %.sroa.15.0.copyload286352 = phi i32 [ %.sroa.15.0.copyload284, %.loopexit ], [ %5, %bb.i ], [ %5, %middle.block424 ], [ %5, %bb.j ]
  %i.de = phi ptr [ %.sroa.0264.0.copyload273, %.loopexit ], [ %4, %bb.i ], [ %4, %middle.block424 ], [ %4, %bb.j ] ; 5 uses
  %.sroa.0264.0 = phi ptr [ %4, %.loopexit ], [ %.sroa.0264.0.copyload273, %bb.i ], [ %.sroa.0264.0.copyload273, %middle.block424 ], [ %.sroa.0264.0.copyload273, %bb.j ] ; 4 uses
  %.sroa.15.0 = phi i32 [ %5, %.loopexit ], [ %.sroa.15.0.copyload284, %bb.i ], [ %.sroa.15.0.copyload284, %middle.block424 ], [ %.sroa.15.0.copyload284, %bb.j ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !319 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !51
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1504
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call noundef zeroext i1 %i.dj(ptr noundef nonnull align 8 dereferenceable(518435) %i.dg) #32
  br i1 %i.dk, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZL14commuteShuffleRN4llvm7SDValueES1_NS_15MutableArrayRefIiEE.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0264.0, i64 24
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !88
  %i.dn = icmp ne i32 %i.dm, 162
  %.not177302 = icmp eq ptr %.sroa.0264.0, null
  %.not177 = select i1 %i.dn, i1 true, i1 %.not177302
  br i1 %.not177, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call fastcc void @"_ZZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEEENK3$_0clEPNS_17BuildVectorSDNodeEi"(ptr nonnull %i.a, ptr nonnull %19, ptr noundef %.sroa.0264.0, i32 noundef 0)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !88
  %i.dq = icmp ne i32 %i.dp, 162
  %.not178303 = icmp eq ptr %i.de, null
  %.not178 = or i1 %.not178303, %i.dq
  br i1 %.not178, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call fastcc void @"_ZZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEEENK3$_0clEPNS_17BuildVectorSDNodeEi"(ptr nonnull %i.a, ptr nonnull %19, ptr noundef %i.de, i32 noundef %i.n)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %_ZL14commuteShuffleRN4llvm7SDValueES1_NS_15MutableArrayRefIiEE.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !88
  %.fr334 = freeze i32 %i.ds
  %i.dt = add i32 %.fr334, -55
  %spec.select.i.i200 = icmp ult i32 %i.dt, -2    ; 2 uses
  %.not179308.not = icmp eq i32 %i.n, 0           ; 3 uses
  br i1 %.not179308.not, label %._crit_edge, label %.lr.ph312

.lr.ph312:                                        ; preds = %bb.o
  %i.du = load ptr, ptr %19, align 8, !tbaa !63   ; 12 uses
  %i.dv = and i64 %i.m, 4294967295                ; 4 uses
  br i1 %spec.select.i.i200, label %.lr.ph312.split.us.preheader, label %.lr.ph312.split.preheader

.lr.ph312.split.us.preheader:                     ; preds = %.lr.ph312
  %xtraiter = and i64 %i.m, 1
  %i.dw = icmp eq i64 %i.dv, 1
  br i1 %i.dw, label %.lr.ph312.split.us.epil.preheader, label %.lr.ph312.split.us.preheader.new

.lr.ph312.split.us.preheader.new:                 ; preds = %.lr.ph312.split.us.preheader
  %unroll_iter = and i64 %i.m, 4294967294
  br label %.lr.ph312.split.us

.lr.ph312.split.preheader:                        ; preds = %.lr.ph312
  %min.iters.check428 = icmp samesign ult i64 %i.dv, 8
  br i1 %min.iters.check428, label %.lr.ph312.split.preheader487, label %vector.ph429

vector.ph429:                                     ; preds = %.lr.ph312.split.preheader
  %n.vec430 = and i64 %i.m, 4294967288            ; 3 uses
  %broadcast.splatinsert431 = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat432 = shufflevector <4 x i32> %broadcast.splatinsert431, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body433

vector.body433:                                   ; preds = %pred.store.continue453, %vector.ph429
  %index434 = phi i64 [ 0, %vector.ph429 ], [ %index.next455, %pred.store.continue453 ] ; 9 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph429 ], [ %predphi, %pred.store.continue453 ]
  %vec.phi435 = phi <4 x i1> [ zeroinitializer, %vector.ph429 ], [ %predphi454, %pred.store.continue453 ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index434 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load436 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !114 ; 2 uses
  %wide.load437 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !114 ; 2 uses
  %i.dz = icmp sge <4 x i32> %wide.load436, %broadcast.splat432 ; 5 uses
  %i.ea = icmp sge <4 x i32> %wide.load437, %broadcast.splat432 ; 5 uses
  %i.eb = extractelement <4 x i1> %i.dz, i64 0
  br i1 %i.eb, label %pred.store.if438, label %pred.store.continue439

pred.store.if438:                                 ; preds = %vector.body433
  store i32 -1, ptr %i.dx, align 4, !tbaa !114
  br label %pred.store.continue439

pred.store.continue439:                           ; preds = %pred.store.if438, %vector.body433
  %i.ec = extractelement <4 x i1> %i.dz, i64 1
  br i1 %i.ec, label %pred.store.if440, label %pred.store.continue441

pred.store.if440:                                 ; preds = %pred.store.continue439
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index434
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 -1, ptr %i.ee, align 4, !tbaa !114
  br label %pred.store.continue441

pred.store.continue441:                           ; preds = %pred.store.if440, %pred.store.continue439
  %i.ef = extractelement <4 x i1> %i.dz, i64 2
  br i1 %i.ef, label %pred.store.if442, label %pred.store.continue443

pred.store.if442:                                 ; preds = %pred.store.continue441
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index434
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i32 -1, ptr %i.eh, align 4, !tbaa !114
  br label %pred.store.continue443

pred.store.continue443:                           ; preds = %pred.store.if442, %pred.store.continue441
  %i.ei = extractelement <4 x i1> %i.dz, i64 3
  br i1 %i.ei, label %pred.store.if444, label %pred.store.continue445

pred.store.if444:                                 ; preds = %pred.store.continue443
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index434
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i32 -1, ptr %i.ek, align 4, !tbaa !114
  br label %pred.store.continue445

pred.store.continue445:                           ; preds = %pred.store.if444, %pred.store.continue443
  %i.el = extractelement <4 x i1> %i.ea, i64 0
  br i1 %i.el, label %pred.store.if446, label %pred.store.continue447

pred.store.if446:                                 ; preds = %pred.store.continue445
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index434
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i32 -1, ptr %i.en, align 4, !tbaa !114
  br label %pred.store.continue447

pred.store.continue447:                           ; preds = %pred.store.if446, %pred.store.continue445
  %i.eo = extractelement <4 x i1> %i.ea, i64 1
  br i1 %i.eo, label %pred.store.if448, label %pred.store.continue449

pred.store.if448:                                 ; preds = %pred.store.continue447
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index434
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 20
  store i32 -1, ptr %i.eq, align 4, !tbaa !114
  br label %pred.store.continue449

pred.store.continue449:                           ; preds = %pred.store.if448, %pred.store.continue447
  %i.er = extractelement <4 x i1> %i.ea, i64 2
  br i1 %i.er, label %pred.store.if450, label %pred.store.continue451

pred.store.if450:                                 ; preds = %pred.store.continue449
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index434
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store i32 -1, ptr %i.et, align 4, !tbaa !114
  br label %pred.store.continue451

pred.store.continue451:                           ; preds = %pred.store.if450, %pred.store.continue449
  %i.eu = extractelement <4 x i1> %i.ea, i64 3
  br i1 %i.eu, label %pred.store.if452, label %pred.store.continue453

pred.store.if452:                                 ; preds = %pred.store.continue451
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index434
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 28
  store i32 -1, ptr %i.ew, align 4, !tbaa !114
  br label %pred.store.continue453

pred.store.continue453:                           ; preds = %pred.store.if452, %pred.store.continue451
  %i.ex = icmp sgt <4 x i32> %wide.load436, splat (i32 -1)
  %i.ey = icmp sgt <4 x i32> %wide.load437, splat (i32 -1)
  %not.482 = xor <4 x i1> %i.dz, splat (i1 true)
  %i.ez = and <4 x i1> %i.ex, %not.482
  %predphi = or <4 x i1> %vec.phi, %i.ez          ; 2 uses
  %not.483 = xor <4 x i1> %i.ea, splat (i1 true)
  %i.fa = and <4 x i1> %i.ey, %not.483
  %predphi454 = or <4 x i1> %vec.phi435, %i.fa    ; 2 uses
  %index.next455 = add nuw i64 %index434, 8       ; 2 uses
  %i.fb = icmp eq i64 %index.next455, %n.vec430
  br i1 %i.fb, label %middle.block456, label %vector.body433, !llvm.loop !1110

middle.block456:                                  ; preds = %pred.store.continue453
  %bin.rdx = or <4 x i1> %predphi454, %predphi
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.fc = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not484 = icmp eq i4 %i.fc, 0                  ; 2 uses
  %cmp.n457 = icmp eq i64 %i.dv, %n.vec430
  br i1 %cmp.n457, label %._crit_edge, label %.lr.ph312.split.preheader487

.lr.ph312.split.preheader487:                     ; preds = %.lr.ph312.split.preheader, %middle.block456
  %indvars.iv339.ph = phi i64 [ 0, %.lr.ph312.split.preheader ], [ %n.vec430, %middle.block456 ]
  %.0160310.ph = phi i1 [ true, %.lr.ph312.split.preheader ], [ %.not484, %middle.block456 ]
  br label %.lr.ph312.split

.lr.ph312.split.us:                               ; preds = %.lr.ph312.split.us, %.lr.ph312.split.us.preheader.new
  %indvars.iv341 = phi i64 [ 0, %.lr.ph312.split.us.preheader.new ], [ %indvars.iv.next342.1, %.lr.ph312.split.us ] ; 3 uses
  %.0158311.us = phi i1 [ true, %.lr.ph312.split.us.preheader.new ], [ %.1.us.1, %.lr.ph312.split.us ]
  %.0160310.us = phi i1 [ true, %.lr.ph312.split.us.preheader.new ], [ %.1161.us.1, %.lr.ph312.split.us ]
  %niter = phi i64 [ 0, %.lr.ph312.split.us.preheader.new ], [ %niter.next.1, %.lr.ph312.split.us ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv341
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !114 ; 2 uses
  %.not186.us = icmp slt i32 %i.fe, %i.n          ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, -1
  %i.fg = and i1 %.not186.us, %i.ff
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv341
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !114 ; 2 uses
  %.not186.us.1 = icmp slt i32 %i.fj, %i.n        ; 2 uses
  %i.fk = icmp sgt i32 %i.fj, -1
  %i.fl = and i1 %.not186.us.1, %i.fk
  %i.fm = select i1 %i.fl, i1 true, i1 %i.fg
  %i.fn = xor i1 %i.fm, true
  %.1161.us.1 = select i1 %i.fn, i1 %.0160310.us, i1 false ; 3 uses
  %i.fo = select i1 %.not186.us.1, i1 %.not186.us, i1 false
  %.1.us.1 = select i1 %i.fo, i1 %.0158311.us, i1 false ; 3 uses
  %indvars.iv.next342.1 = add nuw nsw i64 %indvars.iv341, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph312.split.us, !llvm.loop !1111

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph312.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph312.split.us.epil.preheader

.lr.ph312.split.us.epil.preheader:                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph312.split.us.preheader
  %indvars.iv341.epil.init = phi i64 [ 0, %.lr.ph312.split.us.preheader ], [ %indvars.iv.next342.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0158311.us.epil.init = phi i1 [ true, %.lr.ph312.split.us.preheader ], [ %.1.us.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0160310.us.epil.init = phi i1 [ true, %.lr.ph312.split.us.preheader ], [ %.1161.us.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod491 = trunc i64 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod491)
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv341.epil.init
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !114 ; 2 uses
  %.not186.us.epil = icmp slt i32 %i.fq, %i.n     ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, -1
  %i.fs = and i1 %.not186.us.epil, %i.fr
  %not..epil = xor i1 %i.fs, true
  %.1161.us.epil = select i1 %not..epil, i1 %.0160310.us.epil.init, i1 false
  %.1.us.epil = select i1 %.not186.us.epil, i1 %.0158311.us.epil.init, i1 false
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %.lr.ph312.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %middle.block456, %bb.o
  %.0160.lcssa = phi i1 [ true, %bb.o ], [ %.1161.us.epil, %.lr.ph312.split.us.epil.preheader ], [ %.not484, %middle.block456 ], [ %.1161.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1161, %bb.r ] ; 2 uses
  %.0158.lcssa = phi i1 [ true, %bb.o ], [ %.1.us.epil, %.lr.ph312.split.us.epil.preheader ], [ true, %middle.block456 ], [ %.1.us.1, %._crit_edge.loopexit.unr-lcssa ], [ true, %bb.r ] ; 2 uses
  %or.cond = select i1 %.0158.lcssa, i1 %.0160.lcssa, i1 false
  br i1 %or.cond, label %bb.s, label %bb.t

.lr.ph312.split:                                  ; preds = %.lr.ph312.split.preheader487, %bb.r
  %indvars.iv339 = phi i64 [ %indvars.iv.next340, %bb.r ], [ %indvars.iv339.ph, %.lr.ph312.split.preheader487 ] ; 2 uses
  %.0160310 = phi i1 [ %.1161, %bb.r ], [ %.0160310.ph, %.lr.ph312.split.preheader487 ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv339 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !114 ; 2 uses
  %.not186 = icmp slt i32 %i.fu, %i.n
  br i1 %.not186, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph312.split
  store i32 -1, ptr %i.ft, align 4, !tbaa !114
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph312.split
  %i.fv = icmp slt i32 %i.fu, 0
  %spec.select = select i1 %i.fv, i1 %.0160310, i1 false
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1161 = phi i1 [ %.0160310, %bb.p ], [ %spec.select, %bb.q ] ; 2 uses
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %.not179 = icmp eq i64 %indvars.iv.next340, %i.dv
  br i1 %.not179, label %._crit_edge, label %.lr.ph312.split, !llvm.loop !1112

bb.s:                                             ; preds = %._crit_edge
  %.sroa.0109.0.copyload = load i16, ptr %18, align 8, !tbaa !97
  %.sroa.2111.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.fw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0109.0.copyload, ptr %.sroa.2111.0.copyload) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %.fca.0.extract105 = extractvalue { ptr, i32 } %i.fw, 0
  %.fca.1.extract106 = extractvalue { ptr, i32 } %i.fw, 1
  br label %bb.bt

bb.t:                                             ; preds = %._crit_edge
  %or.cond6.not = and i1 %spec.select.i.i200, %.0158.lcssa
  br i1 %or.cond6.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.sroa.095.0.copyload = load i16, ptr %18, align 8, !tbaa !97
  %.sroa.297.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.fx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 %.sroa.095.0.copyload, ptr %.sroa.297.0.copyload) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %.fca.0.extract91 = extractvalue { ptr, i32 } %i.fx, 0 ; 2 uses
  %.fca.1.extract92 = extractvalue { ptr, i32 } %i.fx, 1 ; 2 uses
  store ptr %.fca.0.extract91, ptr %6, align 8, !tbaa !109
  store i32 %.fca.1.extract92, ptr %i.z, align 8, !tbaa !114
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.15.0.copyload286 = phi i32 [ %.fca.1.extract92, %bb.u ], [ %.sroa.15.0.copyload286352, %bb.t ] ; 3 uses
  %.sroa.0264.0.copyload274 = phi ptr [ %.fca.0.extract91, %bb.u ], [ %i.de, %bb.t ] ; 4 uses
  br i1 %.0160.lcssa, label %bb.w, label %_ZL14commuteShuffleRN4llvm7SDValueES1_NS_15MutableArrayRefIiEE.exit210

bb.w:                                             ; preds = %bb.v
  %.sroa.085.0.copyload = load i16, ptr %18, align 8, !tbaa !97
  %.sroa.287.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.fy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.085.0.copyload, ptr %.sroa.287.0.copyload) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %.fca.0.extract81 = extractvalue { ptr, i32 } %i.fy, 0 ; 4 uses
  %.fca.1.extract82 = extractvalue { ptr, i32 } %i.fy, 1
  %i.fz = load ptr, ptr %19, align 8, !tbaa !63   ; 5 uses
  %i.ga = load i32, ptr %i.p, align 8, !tbaa !136 ; 7 uses
  %i.gb = zext i32 %i.ga to i64                   ; 3 uses
  store ptr %.fca.0.extract81, ptr %6, align 8, !tbaa !109
  store i32 %.fca.1.extract82, ptr %i.z, align 8, !tbaa !114
  %.not17.i.i201 = icmp eq i32 %i.ga, 0
  br i1 %.not17.i.i201, label %_ZL14commuteShuffleRN4llvm7SDValueES1_NS_15MutableArrayRefIiEE.exit210, label %.lr.ph.preheader.i.i202

.lr.ph.preheader.i.i202:                          ; preds = %bb.w
  %i.gc = sub i32 0, %i.ga                        ; 2 uses
  %min.iters.check460 = icmp ult i32 %i.ga, 4
  br i1 %min.iters.check460, label %.lr.ph.i.i203.preheader, label %vector.ph461

vector.ph461:                                     ; preds = %.lr.ph.preheader.i.i202
  %n.vec462 = and i64 %i.gb, 4294967292           ; 3 uses
  %broadcast.splatinsert463 = insertelement <4 x i32> poison, i32 %i.gc, i64 0
  %broadcast.splat464 = shufflevector <4 x i32> %broadcast.splatinsert463, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert465 = insertelement <4 x i32> poison, i32 %i.ga, i64 0
  %broadcast.splat466 = shufflevector <4 x i32> %broadcast.splatinsert465, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body467

vector.body467:                                   ; preds = %pred.store.continue477, %vector.ph461
  %index468 = phi i64 [ 0, %vector.ph461 ], [ %index.next478, %pred.store.continue477 ] ; 5 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %index468 ; 2 uses
  %wide.load469 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !114 ; 3 uses
  %i.ge = icmp sgt <4 x i32> %wide.load469, splat (i32 -1) ; 4 uses
  %i.gf = icmp slt <4 x i32> %wide.load469, %broadcast.splat466
  %i.gg = select <4 x i1> %i.gf, <4 x i32> %broadcast.splat466, <4 x i32> %broadcast.splat464
  %i.gh = add <4 x i32> %i.gg, %wide.load469      ; 4 uses
  %i.gi = extractelement <4 x i1> %i.ge, i64 0
  br i1 %i.gi, label %pred.store.if470, label %pred.store.continue471

pred.store.if470:                                 ; preds = %vector.body467
  %i.gj = extractelement <4 x i32> %i.gh, i64 0
  store i32 %i.gj, ptr %i.gd, align 4, !tbaa !114
  br label %pred.store.continue471

pred.store.continue471:                           ; preds = %pred.store.if470, %vector.body467
  %i.gk = extractelement <4 x i1> %i.ge, i64 1
  br i1 %i.gk, label %pred.store.if472, label %pred.store.continue473

pred.store.if472:                                 ; preds = %pred.store.continue471
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %index468
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = extractelement <4 x i32> %i.gh, i64 1
  store i32 %i.gn, ptr %i.gm, align 4, !tbaa !114
  br label %pred.store.continue473

pred.store.continue473:                           ; preds = %pred.store.if472, %pred.store.continue471
  %i.go = extractelement <4 x i1> %i.ge, i64 2
  br i1 %i.go, label %pred.store.if474, label %pred.store.continue475

pred.store.if474:                                 ; preds = %pred.store.continue473
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %index468
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = extractelement <4 x i32> %i.gh, i64 2
  store i32 %i.gr, ptr %i.gq, align 4, !tbaa !114
  br label %pred.store.continue475

pred.store.continue475:                           ; preds = %pred.store.if474, %pred.store.continue473
  %i.gs = extractelement <4 x i1> %i.ge, i64 3
  br i1 %i.gs, label %pred.store.if476, label %pred.store.continue477

pred.store.if476:                                 ; preds = %pred.store.continue475
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %index468
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  %i.gv = extractelement <4 x i32> %i.gh, i64 3
  store i32 %i.gv, ptr %i.gu, align 4, !tbaa !114
  br label %pred.store.continue477

pred.store.continue477:                           ; preds = %pred.store.if476, %pred.store.continue475
  %index.next478 = add nuw i64 %index468, 4       ; 2 uses
  %i.gw = icmp eq i64 %index.next478, %n.vec462
  br i1 %i.gw, label %middle.block479, label %vector.body467, !llvm.loop !1113

middle.block479:                                  ; preds = %pred.store.continue477
  %cmp.n480 = icmp eq i64 %n.vec462, %i.gb
  br i1 %cmp.n480, label %_ZL14commuteShuffleRN4llvm7SDValueES1_NS_15MutableArrayRefIiEE.exit210, label %.lr.ph.i.i203.preheader

.lr.ph.i.i203.preheader:                          ; preds = %.lr.ph.preheader.i.i202, %middle.block479
  %indvars.iv.i.i204.ph = phi i64 [ 0, %.lr.ph.preheader.i.i202 ], [ %n.vec462, %middle.block479 ]
  br label %.lr.ph.i.i203

.lr.ph.i.i203:                                    ; preds = %.lr.ph.i.i203.preheader, %bb.x
  %indvars.iv.i.i204 = phi i64 [ %indvars.iv.next.i.i208, %bb.x ], [ %indvars.iv.i.i204.ph, %.lr.ph.i.i203.preheader ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.i.i204 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !114 ; 3 uses
  %i.gz = icmp slt i32 %i.gy, 0
  br i1 %i.gz, label %bb.x, label %.sink.split.i.i205

.sink.split.i.i205:                               ; preds = %.lr.ph.i.i203
  %i.ha = icmp slt i32 %i.gy, %i.ga
  %.sink.p.i.i206 = select i1 %i.ha, i32 %i.ga, i32 %i.gc
  %.sink.i.i207 = add i32 %.sink.p.i.i206, %i.gy
  store i32 %.sink.i.i207, ptr %i.gx, align 4, !tbaa !114
  br label %bb.x

bb.x:                                             ; preds = %.sink.split.i.i205, %.lr.ph.i.i203
  %indvars.iv.next.i.i208 = add nuw nsw i64 %indvars.iv.i.i204, 1 ; 2 uses
  %.not.i.i209 = icmp eq i64 %indvars.iv.next.i.i208, %i.gb
  br i1 %.not.i.i209, label %_ZL14commuteShuffleRN4llvm7SDValueES1_NS_15MutableArrayRefIiEE.exit210, label %.lr.ph.i.i203, !llvm.loop !1114

_ZL14commuteShuffleRN4llvm7SDValueES1_NS_15MutableArrayRefIiEE.exit210: ; preds = %bb.x, %middle.block479, %bb.w, %bb.v
  %i.hb = phi ptr [ %.sroa.0264.0.copyload274, %bb.v ], [ %.fca.0.extract81, %bb.w ], [ %.fca.0.extract81, %middle.block479 ], [ %.fca.0.extract81, %bb.x ]
  %.sroa.0264.1 = phi ptr [ %.sroa.0264.0, %bb.v ], [ %.sroa.0264.0.copyload274, %bb.w ], [ %.sroa.0264.0.copyload274, %middle.block479 ], [ %.sroa.0264.0.copyload274, %bb.x ] ; 7 uses
  %.sroa.15.1 = phi i32 [ %.sroa.15.0, %bb.v ], [ %.sroa.15.0.copyload286, %bb.w ], [ %.sroa.15.0.copyload286, %middle.block479 ], [ %.sroa.15.0.copyload286, %bb.x ] ; 5 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !88
  %i.he = add i32 %i.hd, -53                      ; 2 uses
  %spec.select.i.i211 = icmp ult i32 %i.he, 2
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0264.1, i64 24
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !88 ; 3 uses
  %i.hh = add i32 %i.hg, -53
  %i.hi = or i32 %i.hh, %i.he
  %or.cond8 = icmp ult i32 %i.hi, 2
  br i1 %or.cond8, label %bb.y, label %.preheader305

.preheader305:                                    ; preds = %_ZL14commuteShuffleRN4llvm7SDValueES1_NS_15MutableArrayRefIiEE.exit210
  br i1 %.not179308.not, label %._crit_edge320.thread, label %.lr.ph319

.lr.ph319:                                        ; preds = %.preheader305
  %i.hj = load ptr, ptr %19, align 8, !tbaa !63   ; 4 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !114 ; 3 uses
  %i.hl = and i64 %i.m, 4294967295
  %xtraiter492 = and i64 %i.m, 1
  %i.hm = icmp eq i64 %i.hl, 1
  br i1 %i.hm, label %.epil.preheader, label %.lr.ph319.new

.lr.ph319.new:                                    ; preds = %.lr.ph319
  %unroll_iter497 = and i64 %i.m, 4294967294
  br label %bb.z

bb.y:                                             ; preds = %_ZL14commuteShuffleRN4llvm7SDValueES1_NS_15MutableArrayRefIiEE.exit210
  %.sroa.078.0.copyload = load i16, ptr %18, align 8, !tbaa !97
  %.sroa.280.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.hn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.078.0.copyload, ptr %.sroa.280.0.copyload) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %.fca.0.extract74 = extractvalue { ptr, i32 } %i.hn, 0
  %.fca.1.extract75 = extractvalue { ptr, i32 } %i.hn, 1
  br label %bb.bt

._crit_edge320.unr-lcssa:                         ; preds = %bb.z
  %lcmp.mod493.not = icmp eq i64 %xtraiter492, 0
  br i1 %lcmp.mod493.not, label %._crit_edge320, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge320.unr-lcssa, %.lr.ph319
  %indvars.iv343.epil.init = phi i64 [ 0, %.lr.ph319 ], [ %indvars.iv.next344.1, %._crit_edge320.unr-lcssa ] ; 2 uses
  %.0165318.epil.init = phi i1 [ true, %.lr.ph319 ], [ %.1166.1, %._crit_edge320.unr-lcssa ]
  %.0167317.epil.init = phi i1 [ true, %.lr.ph319 ], [ %spec.select189.1, %._crit_edge320.unr-lcssa ]
  %lcmp.mod496 = trunc i64 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod496)
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv343.epil.init
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !114 ; 3 uses
  %i.hq = zext i32 %i.hp to i64
  %.not184.epil = icmp eq i64 %indvars.iv343.epil.init, %i.hq
  %i.hr = icmp slt i32 %i.hp, 0
  %i.hs = or i1 %i.hr, %.not184.epil
  %.1166.epil = select i1 %i.hs, i1 %.0165318.epil.init, i1 false
  %.not185.epil = icmp eq i32 %i.hp, %i.hk
  %spec.select189.epil = select i1 %.not185.epil, i1 %.0167317.epil.init, i1 false
  br label %._crit_edge320

._crit_edge320:                                   ; preds = %._crit_edge320.unr-lcssa, %.epil.preheader
  %.1166.lcssa = phi i1 [ %.1166.1, %._crit_edge320.unr-lcssa ], [ %.1166.epil, %.epil.preheader ]
  %spec.select189.lcssa = phi i1 [ %spec.select189.1, %._crit_edge320.unr-lcssa ], [ %spec.select189.epil, %.epil.preheader ]
  br i1 %.1166.lcssa, label %bb.bt, label %._crit_edge320.thread

bb.z:                                             ; preds = %bb.z, %.lr.ph319.new
  %indvars.iv343 = phi i64 [ 0, %.lr.ph319.new ], [ %indvars.iv.next344.1, %bb.z ] ; 4 uses
  %.0165318 = phi i1 [ true, %.lr.ph319.new ], [ %.1166.1, %bb.z ]
  %.0167317 = phi i1 [ true, %.lr.ph319.new ], [ %spec.select189.1, %bb.z ]
  %niter498 = phi i64 [ 0, %.lr.ph319.new ], [ %niter498.next.1, %bb.z ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv343
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !114 ; 3 uses
  %i.hv = zext i32 %i.hu to i64
  %.not184 = icmp eq i64 %indvars.iv343, %i.hv
  %i.hw = icmp slt i32 %i.hu, 0
  %i.hx = or i1 %i.hw, %.not184
  %.not185 = icmp eq i32 %i.hu, %i.hk
  %indvars.iv.next344 = or disjoint i64 %indvars.iv343, 1 ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next344
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !114 ; 3 uses
  %i.ia = zext i32 %i.hz to i64
  %.not184.1 = icmp eq i64 %indvars.iv.next344, %i.ia
  %i.ib = icmp slt i32 %i.hz, 0
  %i.ic = or i1 %i.ib, %.not184.1
  %i.id = select i1 %i.ic, i1 %i.hx, i1 false
  %.1166.1 = select i1 %i.id, i1 %.0165318, i1 false ; 3 uses
  %.not185.1 = icmp eq i32 %i.hz, %i.hk
  %i.ie = select i1 %.not185.1, i1 %.not185, i1 false
  %spec.select189.1 = select i1 %i.ie, i1 %.0167317, i1 false ; 3 uses
  %indvars.iv.next344.1 = add nuw nsw i64 %indvars.iv343, 2 ; 2 uses
  %niter498.next.1 = add i64 %niter498, 2         ; 2 uses
  %niter498.ncmp.1 = icmp eq i64 %niter498.next.1, %unroll_iter497
  br i1 %niter498.ncmp.1, label %._crit_edge320.unr-lcssa, label %bb.z, !llvm.loop !1115

._crit_edge320.thread:                            ; preds = %.preheader305, %._crit_edge320
  %.0167.lcssa381 = phi i1 [ %spec.select189.lcssa, %._crit_edge320 ], [ true, %.preheader305 ]
  br i1 %spec.select.i.i211, label %.preheader, label %bb.aw

.preheader:                                       ; preds = %._crit_edge320.thread
  %i.if = icmp eq i32 %i.hg, 248
  br i1 %i.if, label %.lr.ph324, label %bb.aa

.lr.ph324:                                        ; preds = %.preheader, %.lr.ph324
  %.sroa.0250.0323 = phi ptr [ %.sroa.0250.0.copyload254, %.lr.ph324 ], [ %.sroa.0264.1, %.preheader ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0250.0323, i64 40
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !89 ; 2 uses
  %.sroa.0250.0.copyload254 = load ptr, ptr %i.ih, align 8, !tbaa !109 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0250.0.copyload254, i64 24
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !88 ; 2 uses
  %i.ik = icmp eq i32 %i.ij, 248
  br i1 %i.ik, label %.lr.ph324, label %._crit_edge325, !llvm.loop !1116

._crit_edge325:                                   ; preds = %.lr.ph324
  %.sroa.9.0..sroa_idx255.le = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %.sroa.9.0.copyload256.le = load i32, ptr %.sroa.9.0..sroa_idx255.le, align 8, !tbaa !114
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge325, %.preheader
  %.sroa.9.0.lcssa = phi i32 [ %.sroa.9.0.copyload256.le, %._crit_edge325 ], [ %.sroa.15.1, %.preheader ]
  %.sroa.0250.0.lcssa = phi ptr [ %.sroa.0250.0.copyload254, %._crit_edge325 ], [ %.sroa.0264.1, %.preheader ] ; 4 uses
  %.lcssa = phi i32 [ %i.ij, %._crit_edge325 ], [ %i.hg, %.preheader ]
  %.not385 = icmp eq i32 %.lcssa, 162
  br i1 %.not385, label %bb.ab, label %bb.aw

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  %i.il = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  store ptr %i.il, ptr %20, align 8, !tbaa !63
  %i.im = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 0, ptr %i.im, align 8, !tbaa !136
  %i.in = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i32 6, ptr %i.in, align 4, !tbaa !137
  %i.io = getelementptr inbounds nuw i8, ptr %20, i64 64
  store i32 0, ptr %i.io, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0250.0.lcssa, i64 64
  %i.iq = load i16, ptr %i.ip, align 8, !tbaa !105 ; 3 uses
  %i.ir = zext i16 %i.iq to i32                   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i32 %i.ir, ptr %i.is, align 8, !tbaa !101, !alias.scope !1120
  %i.it = icmp ult i16 %i.iq, 65
  br i1 %i.it, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.iu = sub nsw i32 0, %i.ir
  %i.iv = and i32 %i.iu, 63
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = lshr i64 -1, %i.iw
  %i.iy = icmp eq i16 %i.iq, 0
  %spec.select.i.i.i214 = select i1 %i.iy, i64 0, i64 %i.ix, !prof !113
  store i64 %spec.select.i.i.i214, ptr %11, align 8, !tbaa !86, !alias.scope !1120
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i

bb.ad:                                            ; preds = %bb.ab
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %11, i64 noundef -1, i1 noundef zeroext true) #32
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i

_ZN4llvm5APInt10getAllOnesEj.exit.i:              ; preds = %bb.ad, %bb.ac
  %i.iz = call { ptr, i32 } @_ZNK4llvm17BuildVectorSDNode13getSplatValueERKNS_5APIntEPNS_9BitVectorE(ptr noundef nonnull readonly align 8 dereferenceable(88) %.sroa.0250.0.lcssa, ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull %20)
  %i.ja = load i32, ptr %i.is, align 8, !tbaa !101
  %i.jb = icmp ugt i32 %i.ja, 64
  br i1 %i.jb, label %bb.ae, label %_ZNK4llvm17BuildVectorSDNode13getSplatValueEPNS_9BitVectorE.exit

bb.ae:                                            ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i
  %i.jc = load ptr, ptr %11, align 8, !tbaa !86   ; 2 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %_ZNK4llvm17BuildVectorSDNode13getSplatValueEPNS_9BitVectorE.exit, label %bb.af

end_hunk_0
begin_hunk_1_@_ZN4llvm12SelectionDAG14createOperandsEPNS_6SDNodeENS_8ArrayRefINS_7SDValueEEE:bb.a
  store ptr %i.w, ptr %i.g, align 8, !tbaa !371
  br label %_ZN4llvm13ArrayRecyclerINS_5SDUseELm8EE8allocateINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEEPS1_NS2_8CapacityERT_.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.x = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef %i.p, i64 noundef %i.p, i8 3)
  br label %_ZN4llvm13ArrayRecyclerINS_5SDUseELm8EE8allocateINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEEPS1_NS2_8CapacityERT_.exit

_ZN4llvm13ArrayRecyclerINS_5SDUseELm8EE8allocateINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEEPS1_NS2_8CapacityERT_.exit: ; preds = %_ZN4llvm13ArrayRecyclerINS_5SDUseELm8EE3popEj.exit.i, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.n, %_ZN4llvm13ArrayRecyclerINS_5SDUseELm8EE3popEj.exit.i ], [ %i.q, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %_ZN4llvm13ArrayRecyclerINS_5SDUseELm8EE8allocateINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEEPS1_NS2_8CapacityERT_.exit
  %.023.lcssa = phi i8 [ 0, %_ZN4llvm13ArrayRecyclerINS_5SDUseELm8EE8allocateINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEEPS1_NS2_8CapacityERT_.exit ], [ %.1, %bb.j ]
  %i.y = trunc i64 %3 to i16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i16 %i.y, ptr %i.z, align 8, !tbaa !105
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %.1.i, ptr %i.aa, align 8, !tbaa !89
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !319 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1880
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(518435) %i.ac, ptr noundef %1) #32
  br i1 %i.ag, label %bb.l, label %bb.k

.lr.ph:                                           ; preds = %_ZN4llvm13ArrayRecyclerINS_5SDUseELm8EE8allocateINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEEPS1_NS2_8CapacityERT_.exit, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %_ZN4llvm13ArrayRecyclerINS_5SDUseELm8EE8allocateINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEEPS1_NS2_8CapacityERT_.exit ] ; 4 uses
  %.02338 = phi i8 [ %.1, %bb.j ], [ 0, %_ZN4llvm13ArrayRecyclerINS_5SDUseELm8EE8allocateINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEEPS1_NS2_8CapacityERT_.exit ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %.1.i, i64 %indvars.iv ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %1, ptr %i.ai, align 8, !tbaa !132
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(12) %i.aj, i64 12, i1 false), !tbaa.struct !661
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !133 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !134
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZN4llvm5SDUse10setInitialERKNS_7SDValueE.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !135
  br label %_ZN4llvm5SDUse10setInitialERKNS_7SDValueE.exit

_ZN4llvm5SDUse10setInitialERKNS_7SDValueE.exit:   ; preds = %.lr.ph, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !135
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !133
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !92 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !115
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !95
  %i.av = zext i32 %i.as to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.aw, align 8, !tbaa !97 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !99
  %.not.i25 = icmp ne i16 %.sroa.0.0.copyload.i.i.i, 1
  %i.ax = icmp ne ptr %.sroa.21.0.copyload.i.i.i, null ; 2 uses
  %i.ay = select i1 %.not.i25, i1 true, i1 %i.ax
  br i1 %i.ay, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN4llvm5SDUse10setInitialERKNS_7SDValueE.exit
  %.not.i26 = icmp ne i16 %.sroa.0.0.copyload.i.i.i, 249
  %i.az = select i1 %.not.i26, i1 true, i1 %i.ax
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr i8, ptr %i.aq, i64 24
  %.val = load i32, ptr %i.ba, align 8, !tbaa !88
  %i.bb = add i32 %.val, -53
  %switch.i = icmp ult i32 %i.bb, -2
  br i1 %switch.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.bd = load i8, ptr %i.bc, align 8
  %i.be = and i8 %i.bd, 4
  %.not36 = icmp eq i8 %i.be, 0
  %spec.select = select i1 %.not36, i8 %.02338, i8 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_ZN4llvm5SDUse10setInitialERKNS_7SDValueE.exit
  %.1 = phi i8 [ %.02338, %_ZN4llvm5SDUse10setInitialERKNS_7SDValueE.exit ], [ %spec.select, %bb.i ], [ %.02338, %bb.h ] ; 2 uses
  %i.bf = add i64 %indvars.iv, 1
  %i.bg = and i64 %i.bf, 4294967295
  %.not = icmp eq i64 %3, %i.bg
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1130

bb.k:                                             ; preds = %._crit_edge
  %i.bh = load ptr, ptr %i.ab, align 8, !tbaa !319 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !321
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !322
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !51
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1856
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(518435) %i.bh, ptr noundef nonnull %1, ptr noundef %i.bj, ptr noundef %i.bl) #32
  %i.bq = zext i1 %i.bp to i8
  %i.br = or i8 %.023.lcssa, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 8
  %i.bu = shl nuw nsw i8 %i.br, 2
  %i.bv = and i8 %i.bt, -5
  %i.bw = or disjoint i8 %i.bu, %i.bv
  store i8 %i.bw, ptr %i.bs, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZN4llvm12SelectionDAG24getCommutedVectorShuffleERKNS_19ShuffleVectorSDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %3 = alloca %"class.llvm::SmallVector.556", align 8 ; 10 uses
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.555", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.b, align 8, !tbaa !97 ; 5 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !99 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store i16 %.sroa.0.0.copyload.i, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !678
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.a
  %i.f = add i16 %.sroa.0.0.copyload.i, -163
  %spec.select.i.i.i.i = icmp ult i16 %i.f, 53
  br i1 %spec.select.i.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i:       ; preds = %bb.a
  %i.g = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #33
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, %.split.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #34
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i:   ; preds = %.split.i.i
  %i.h = zext i16 %.sroa.0.0.copyload.i to i64
  %i.i = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !632
  %i.l = zext i16 %i.k to i32
  br label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i
  %i.m = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #33
  br label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit

_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i, %bb.c
  %i.n = phi i32 [ %i.l, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i ], [ %i.m, %bb.c ] ; 4 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.q, align 8, !tbaa !136
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.r, align 4, !tbaa !137
  %.idx.i = shl nuw nsw i64 %i.o, 2
  %i.s = icmp ugt i32 %i.n, 8
  br i1 %i.s, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i: ; preds = %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.p, i64 noundef %i.o, i64 noundef 4) #32
  %.pre8.pre.i.i = load i32, ptr %i.q, align 8, !tbaa !136
  %i.t = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %3, align 8, !tbaa !63
  br label %bb.d

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i:  ; preds = %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit
  %.not.i.i.i21 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i21, label %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i
  %i.u = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i ], [ %i.p, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.t, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 4 %i.e, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.q, align 8, !tbaa !136
  %.pre22 = load ptr, ptr %3, align 8, !tbaa !63
  br label %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i, %bb.d
  %i.w = phi ptr [ %i.p, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ], [ %.pre22, %bb.d ] ; 6 uses
  %i.x = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.d ]
  %i.y = add i32 %i.x, %i.n                       ; 8 uses
  store i32 %i.y, ptr %i.q, align 8, !tbaa !136
  %i.z = zext i32 %i.y to i64                     ; 3 uses
  %.not17.i = icmp eq i32 %i.y, 0
  br i1 %.not17.i, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit
  %i.aa = sub i32 0, %i.y                         ; 2 uses
  %min.iters.check = icmp ult i32 %i.y, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.z, 4294967292               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert27 = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat28 = shufflevector <4 x i32> %broadcast.splatinsert27, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue34, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue34 ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %wide.load.a = load <4 x i32>, ptr %i.ab, align 4, !tbaa !114 ; 3 uses
  %i.ac = icmp sgt <4 x i32> %wide.load.a, splat (i32 -1) ; 4 uses
  %i.ad = icmp slt <4 x i32> %wide.load.a, %broadcast.splat28
  %i.ae = select <4 x i1> %i.ad, <4 x i32> %broadcast.splat28, <4 x i32> %broadcast.splat
  %i.af = add <4 x i32> %i.ae, %wide.load.a       ; 4 uses
  %i.ag = extractelement <4 x i1> %i.ac, i64 0
  br i1 %i.ag, label %pred.store.if.a, label %pred.store.continue.a

pred.store.if.a:                                  ; preds = %vector.body
  %i.ah = extractelement <4 x i32> %i.af, i64 0
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !114
  br label %pred.store.continue.a

pred.store.continue.a:                            ; preds = %pred.store.if.a, %vector.body
  %i.ai = extractelement <4 x i1> %i.ac, i64 1
  br i1 %i.ai, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue.a
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = extractelement <4 x i32> %i.af, i64 1
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !114
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue.a
  %i.am = extractelement <4 x i1> %i.ac, i64 2
  br i1 %i.am, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue30
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = extractelement <4 x i32> %i.af, i64 2
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !114
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  %i.aq = extractelement <4 x i1> %i.ac, i64 3
  br i1 %i.aq, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = extractelement <4 x i32> %i.af, i64 3
  store i32 %i.at, ptr %i.as, align 4, !tbaa !114
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1131

middle.block:                                     ; preds = %pred.store.continue34
  %cmp.n = icmp eq i64 %n.vec, %i.z
  br i1 %cmp.n, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit, label %.lr.ph.i.preheader35

.lr.ph.i.preheader35:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader35, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader35 ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !114 ; 3 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.e, label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i
  %i.ay = icmp slt i32 %i.aw, %i.y
  %.sink.p.i = select i1 %i.ay, i32 %i.y, i32 %i.aa
  %.sink.i = add i32 %.sink.p.i, %i.aw
  store i32 %.sink.i, ptr %i.av, align 4, !tbaa !114
  br label %bb.e

bb.e:                                             ; preds = %.sink.split.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.z
  br i1 %.not.i, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit, label %.lr.ph.i, !llvm.loop !1132

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit: ; preds = %bb.e, %middle.block
  %.pre23 = load i32, ptr %i.q, align 8, !tbaa !136
  %i.az = zext i32 %.pre23 to i64
  br label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit: ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit, %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit
  %i.ba = phi i64 [ %i.az, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit ], [ 0, %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !89 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %.sroa.06.0.copyload = load ptr, ptr %i.bd, align 8, !tbaa !109
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !128
  store i64 %i.bf, ptr %4, align 8, !tbaa !128
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !127
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !363
  store ptr %i.w, ptr %5, align 8, !tbaa !1133
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ba, ptr %i.bj, align 8, !tbaa !673
  %i.bk = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %.sroa.06.0.copyload, i32 %.sroa.4.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bc, ptr noundef nonnull byval(%"class.llvm::ArrayRef.555") align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.bl = load ptr, ptr %3, align 8, !tbaa !63    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.p
  br i1 %i.bm, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit
  call void @free(ptr noundef %i.bl) #32
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit:            ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret { ptr, i32 } %i.bk
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm19ShuffleVectorSDNode7getMaskEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %1 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.b, align 8, !tbaa !97 ; 4 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !99
  store i16 %.sroa.0.0.copyload.i, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !678
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.f = add i16 %.sroa.0.0.copyload.i, -163
  %spec.select.i.i.i = icmp ult i16 %i.f, 53
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.a
  %i.g = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #33
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #34
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.h = zext i16 %.sroa.0.0.copyload.i to i64
  %i.i = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !632
  %i.l = zext i16 %i.k to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.m = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #33
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.c
  %i.n = phi i32 [ %i.l, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.m, %bb.c ]
  %i.o = zext i32 %i.n to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.o, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 %1, i16 %2, ptr %3) local_unnamed_addr #5 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %5 = alloca %"class.llvm::FoldingSetNodeID", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i16 %2, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.b, align 8
  %.not.i.i = icmp eq i16 %2, 0
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i8, ptr @_ZGVZN4llvm6SDNode16getValueTypeListENS_3MVTEE13SimpleVTArray acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN4llvm6SDNode16getValueTypeListENS_3MVTE.exit.i, !prof !120

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvm6SDNode16getValueTypeListENS_3MVTEE13SimpleVTArray) #32
  %.not.i3.i = icmp eq i32 %i.e, 0
  br i1 %.not.i3.i, label %_ZN4llvm6SDNode16getValueTypeListENS_3MVTE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN12_GLOBAL__N_18EVTArrayC2Ev()
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN12_GLOBAL__N_18EVTArrayD2Ev, ptr nonnull @_ZZN4llvm6SDNode16getValueTypeListENS_3MVTEE13SimpleVTArray, ptr nonnull @__dso_handle) #32 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvm6SDNode16getValueTypeListENS_3MVTEE13SimpleVTArray) #32
  br label %_ZN4llvm6SDNode16getValueTypeListENS_3MVTE.exit.i

_ZN4llvm6SDNode16getValueTypeListENS_3MVTE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.g = zext i16 %2 to i64
  %i.h = load ptr, ptr @_ZZN4llvm6SDNode16getValueTypeListENS_3MVTEE13SimpleVTArray, align 8, !tbaa !122
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g
  br label %_ZN4llvm16FoldingSetNodeID10AddIntegerEj.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = call { ptr, i8 } @_ZNSt8_Rb_treeIN4llvm3EVTES1_St9_IdentityIS1_ENS1_14compareRawBitsESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 32
  br label %_ZN4llvm16FoldingSetNodeID10AddIntegerEj.exit

_ZN4llvm16FoldingSetNodeID10AddIntegerEj.exit:    ; preds = %_ZN4llvm6SDNode16getValueTypeListENS_3MVTE.exit.i, %bb.e
  %.pn8.i = phi ptr [ %i.l, %bb.e ], [ %i.i, %_ZN4llvm6SDNode16getValueTypeListENS_3MVTE.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 32, ptr %i.o, align 4, !tbaa !137
  store i32 10, ptr %i.m, align 8
  %i.p = ptrtoint ptr %.pn8.i to i64              ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.q, ptr %i.r, align 4
  %i.s = lshr i64 %i.p, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %1, ptr %i.v, align 4
  store i32 4, ptr %i.n, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store ptr null, ptr %i.a, align 8, !tbaa !370
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.x = call noundef ptr @_ZN4llvm14FoldingSetBase19FindNodeOrInsertPosERKNS_16FoldingSetNodeIDERPvRKNS0_14FoldingSetInfoE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4llvm10FoldingSetINS_6SDNodeEE17getFoldingSetInfoEvE4Info) #32 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.critedge, label %_ZN4llvm12SelectionDAG10InsertNodeEPNS_6SDNodeE.exit

.critedge:                                        ; preds = %_ZN4llvm16FoldingSetNodeID10AddIntegerEj.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !196 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !198
end_hunk_1
