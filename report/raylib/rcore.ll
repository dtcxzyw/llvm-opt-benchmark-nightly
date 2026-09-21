Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@sinfl_decompress:bb.a
  %umax = tail call i64 @llvm.umax.i64(i64 %i.st, i64 %i.su)
  %i.sv = add i64 %umax, -2
  %i.sw = sub i64 %i.sv, %i.rb                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.sw, 8
  %i.sx = add nsw i64 %i.qy, -1
  %diff.check = icmp ult i64 %i.sx, 31
  %or.cond522 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond522, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check472 = icmp ult i64 %i.sw, 32
  br i1 %min.iters.check472, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.sy = and i64 %i.sw, 24
  %n.vec = and i64 %i.sw, -32                     ; 5 uses
  %i.sz = getelementptr i8, ptr %i.ss, i64 %n.vec
  %i.ta = getelementptr i8, ptr %i.sq, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ss, i64 %index ; 2 uses
  %next.gep473 = getelementptr i8, ptr %i.sq, i64 %index ; 2 uses
  %i.tb = getelementptr i8, ptr %next.gep473, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep473, align 1
  %wide.load474 = load <16 x i8>, ptr %i.tb, align 1
  %i.tc = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load474, ptr %i.tc, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.td = icmp eq i64 %index.next, %n.vec
  br i1 %i.td, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.sw, %n.vec
  br i1 %cmp.n, label %.preheader299.backedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.sy, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec476 = and i64 %i.sw, -8                   ; 4 uses
  %i.te = getelementptr i8, ptr %i.ss, i64 %n.vec476
  %i.tf = getelementptr i8, ptr %i.sq, i64 %n.vec476
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index477 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next481, %vec.epilog.vector.body ] ; 3 uses
  %next.gep478 = getelementptr i8, ptr %i.ss, i64 %index477
  %next.gep479 = getelementptr i8, ptr %i.sq, i64 %index477
  %wide.load480 = load <8 x i8>, ptr %next.gep479, align 1
  store <8 x i8> %wide.load480, ptr %next.gep478, align 1
  %index.next481 = add nuw i64 %index477, 8       ; 2 uses
  %i.tg = icmp eq i64 %index.next481, %n.vec476
  br i1 %i.tg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !221

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n482 = icmp eq i64 %i.sw, %n.vec476
  br i1 %cmp.n482, label %.preheader299.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2268.ph = phi ptr [ %i.ss, %iter.check ], [ %i.sz, %vec.epilog.iter.check ], [ %i.te, %vec.epilog.middle.block ]
  %.1264.ph = phi ptr [ %i.sq, %iter.check ], [ %i.ta, %vec.epilog.iter.check ], [ %i.tf, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.2268 = phi ptr [ %i.tj, %vec.epilog.scalar.ph ], [ %.2268.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1264 = phi ptr [ %i.th, %vec.epilog.scalar.ph ], [ %.1264.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.1264, i64 1
  %i.ti = load i8, ptr %.1264, align 1
  %i.tj = getelementptr inbounds nuw i8, ptr %.2268, i64 1 ; 2 uses
  store i8 %i.ti, ptr %.2268, align 1
  %i.tk = icmp ult ptr %i.tj, %i.ri
  br i1 %i.tk, label %vec.epilog.scalar.ph, label %.preheader299.backedge, !llvm.loop !222

iter.check504:                                    ; preds = %bb.az
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ra, i64 1
  %i.tm = load i8, ptr %i.ra, align 1
  %i.tn = getelementptr inbounds nuw i8, ptr %.3156, i64 1
  store i8 %i.tm, ptr %.3156, align 1
  %i.to = getelementptr inbounds nuw i8, ptr %i.ra, i64 2 ; 5 uses
  %i.tp = load i8, ptr %i.tl, align 1
  %i.tq = getelementptr inbounds nuw i8, ptr %.3156, i64 2 ; 5 uses
  store i8 %i.tp, ptr %i.tn, align 1
  %i.tr = add i64 %i.rh, %i.rb
  %i.ts = add i64 %i.rb, 3
  %umax487 = tail call i64 @llvm.umax.i64(i64 %i.tr, i64 %i.ts)
  %i.tt = add i64 %umax487, -2
  %i.tu = sub i64 %i.tt, %i.rb                    ; 7 uses
  %min.iters.check488 = icmp ult i64 %i.tu, 8
  %i.tv = add nsw i64 %i.qy, -1
  %diff.check486 = icmp ult i64 %i.tv, 31
  %or.cond523 = select i1 %min.iters.check488, i1 true, i1 %diff.check486
  br i1 %or.cond523, label %vec.epilog.scalar.ph505.preheader, label %vector.main.loop.iter.check489

vector.main.loop.iter.check489:                   ; preds = %iter.check504
  %min.iters.check490 = icmp ult i64 %i.tu, 32
  br i1 %min.iters.check490, label %vec.epilog.ph508, label %vector.ph491

vector.ph491:                                     ; preds = %vector.main.loop.iter.check489
  %i.tw = and i64 %i.tu, 24
  %n.vec492 = and i64 %i.tu, -32                  ; 5 uses
  %i.tx = getelementptr i8, ptr %i.tq, i64 %n.vec492
  %i.ty = getelementptr i8, ptr %i.to, i64 %n.vec492
  br label %vector.body493

vector.body493:                                   ; preds = %vector.body493, %vector.ph491
  %index494 = phi i64 [ 0, %vector.ph491 ], [ %index.next499, %vector.body493 ] ; 3 uses
  %next.gep495 = getelementptr i8, ptr %i.tq, i64 %index494 ; 2 uses
  %next.gep496 = getelementptr i8, ptr %i.to, i64 %index494 ; 2 uses
  %i.tz = getelementptr i8, ptr %next.gep496, i64 16
  %wide.load497 = load <16 x i8>, ptr %next.gep496, align 1
  %wide.load498 = load <16 x i8>, ptr %i.tz, align 1
  %i.ua = getelementptr i8, ptr %next.gep495, i64 16
  store <16 x i8> %wide.load497, ptr %next.gep495, align 1
  store <16 x i8> %wide.load498, ptr %i.ua, align 1
  %index.next499 = add nuw i64 %index494, 32      ; 2 uses
  %i.ub = icmp eq i64 %index.next499, %n.vec492
  br i1 %i.ub, label %middle.block500, label %vector.body493, !llvm.loop !223

middle.block500:                                  ; preds = %vector.body493
  %cmp.n501 = icmp eq i64 %i.tu, %n.vec492
  br i1 %cmp.n501, label %.preheader299.backedge, label %vec.epilog.iter.check506

.preheader299.backedge:                           ; preds = %vec.epilog.scalar.ph505, %vec.epilog.scalar.ph, %bb.bf, %bb.bc, %middle.block500, %vec.epilog.middle.block516, %middle.block, %vec.epilog.middle.block, %bb.ar
  %.2155.be = phi ptr [ %i.ri, %vec.epilog.middle.block516 ], [ %i.ri, %vec.epilog.scalar.ph ], [ %i.ri, %middle.block ], [ %i.oq, %bb.ar ], [ %i.ri, %bb.bf ], [ %i.ri, %middle.block500 ], [ %i.ri, %bb.bc ], [ %i.ri, %vec.epilog.middle.block ], [ %i.ri, %vec.epilog.scalar.ph505 ]
  br label %.preheader299

vec.epilog.iter.check506:                         ; preds = %middle.block500
  %min.epilog.iters.check507 = icmp eq i64 %i.tw, 0
  br i1 %min.epilog.iters.check507, label %vec.epilog.scalar.ph505.preheader, label %vec.epilog.ph508, !prof !228

vec.epilog.ph508:                                 ; preds = %vector.main.loop.iter.check489, %vec.epilog.iter.check506
  %vec.epilog.resume.val502 = phi i64 [ %n.vec492, %vec.epilog.iter.check506 ], [ 0, %vector.main.loop.iter.check489 ]
  %n.vec509 = and i64 %i.tu, -8                   ; 4 uses
  %i.uc = getelementptr i8, ptr %i.tq, i64 %n.vec509
  %i.ud = getelementptr i8, ptr %i.to, i64 %n.vec509
  br label %vec.epilog.vector.body510

vec.epilog.vector.body510:                        ; preds = %vec.epilog.vector.body510, %vec.epilog.ph508
  %index511 = phi i64 [ %vec.epilog.resume.val502, %vec.epilog.ph508 ], [ %index.next515, %vec.epilog.vector.body510 ] ; 3 uses
  %next.gep512 = getelementptr i8, ptr %i.tq, i64 %index511
  %next.gep513 = getelementptr i8, ptr %i.to, i64 %index511
  %wide.load514 = load <8 x i8>, ptr %next.gep513, align 1
  store <8 x i8> %wide.load514, ptr %next.gep512, align 1
  %index.next515 = add nuw i64 %index511, 8       ; 2 uses
  %i.ue = icmp eq i64 %index.next515, %n.vec509
  br i1 %i.ue, label %vec.epilog.middle.block516, label %vec.epilog.vector.body510, !llvm.loop !224

vec.epilog.middle.block516:                       ; preds = %vec.epilog.vector.body510
  %cmp.n517 = icmp eq i64 %i.tu, %n.vec509
  br i1 %cmp.n517, label %.preheader299.backedge, label %vec.epilog.scalar.ph505.preheader

vec.epilog.scalar.ph505.preheader:                ; preds = %iter.check504, %vec.epilog.iter.check506, %vec.epilog.middle.block516
  %.3269.ph = phi ptr [ %i.tq, %iter.check504 ], [ %i.tx, %vec.epilog.iter.check506 ], [ %i.uc, %vec.epilog.middle.block516 ]
  %.2265.ph = phi ptr [ %i.to, %iter.check504 ], [ %i.ty, %vec.epilog.iter.check506 ], [ %i.ud, %vec.epilog.middle.block516 ]
  br label %vec.epilog.scalar.ph505

vec.epilog.scalar.ph505:                          ; preds = %vec.epilog.scalar.ph505.preheader, %vec.epilog.scalar.ph505
  %.3269 = phi ptr [ %i.uh, %vec.epilog.scalar.ph505 ], [ %.3269.ph, %vec.epilog.scalar.ph505.preheader ] ; 2 uses
  %.2265 = phi ptr [ %i.uf, %vec.epilog.scalar.ph505 ], [ %.2265.ph, %vec.epilog.scalar.ph505.preheader ] ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.2265, i64 1
  %i.ug = load i8, ptr %.2265, align 1
  %i.uh = getelementptr inbounds nuw i8, ptr %.3269, i64 1 ; 2 uses
  store i8 %i.ug, ptr %.3269, align 1
  %i.ui = icmp ult ptr %i.uh, %i.ri
  br i1 %i.ui, label %vec.epilog.scalar.ph505, label %.preheader299.backedge, !llvm.loop !225

default.unreachable416:                           ; preds = %sinfl_refill.exit
  unreachable

.thread274:                                       ; preds = %sinfl_decode.exit234, %bb.aw, %bb.au, %bb.ao, %bb.i, %bb.k, %bb.g, %bb.e
  %.7 = phi i32 [ %i.bo, %bb.e ], [ %i.cc, %bb.g ], [ %i.ck, %bb.i ], [ %i.cp, %bb.k ], [ %i.nm, %bb.ao ], [ %i.oz, %bb.aw ], [ %i.ov, %bb.au ], [ %i.rd, %sinfl_decode.exit234 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  ret i32 %.7
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @zsinflate(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #30 {
bb.a:
  %i.a = icmp sgt i32 %3, 5
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %3 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = tail call fastcc i32 @sinfl_decompress(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.e, i32 noundef %3) ; 4 uses
  %.not78.i = icmp eq i32 %i.f, 0
  br i1 %.not78.i, label %sinfl_adler32.exit, label %.preheader62.preheader.i

.preheader62.preheader.i:                         ; preds = %bb.b
  %i.g = srem i32 %i.f, 5552
  br label %.preheader62.i

.preheader62.i:                                   ; preds = %._crit_edge.i, %.preheader62.preheader.i
  %.05283.i = phi i32 [ 5552, %._crit_edge.i ], [ %i.g, %.preheader62.preheader.i ] ; 8 uses
  %.05382.i = phi i32 [ %i.ce, %._crit_edge.i ], [ 0, %.preheader62.preheader.i ] ; 2 uses
  %.05581.i = phi i32 [ %i.cd, %._crit_edge.i ], [ 1, %.preheader62.preheader.i ] ; 2 uses
  %.05880.i = phi i32 [ %i.cf, %._crit_edge.i ], [ %i.f, %.preheader62.preheader.i ]
  %.05979.i = phi ptr [ %.261.lcssa.i, %._crit_edge.i ], [ %0, %.preheader62.preheader.i ] ; 2 uses
  %i.h = icmp ugt i32 %.05283.i, 7
  br i1 %i.h, label %.lr.ph.i, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %4 = and i32 %.05283.i, -8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader62.i
  %.160.lcssa.i = phi ptr [ %.05979.i, %.preheader62.i ], [ %i.be, %.preheader.loopexit.i ] ; 3 uses
  %.156.lcssa.i = phi i32 [ %.05581.i, %.preheader62.i ], [ %i.bc, %.preheader.loopexit.i ] ; 3 uses
  %.154.lcssa.i = phi i32 [ %.05382.i, %.preheader62.i ], [ %i.bd, %.preheader.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %.preheader62.i ], [ %4, %.preheader.loopexit.i ] ; 4 uses
  %i.i = icmp ult i32 %.0.lcssa.i, %.05283.i
  br i1 %i.i, label %.lr.ph74.i.preheader, label %._crit_edge.i

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %xtraiter = and i32 %.05283.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph74.i.prol.loopexit, label %.lr.ph74.i.prol

.lr.ph74.i.prol:                                  ; preds = %.lr.ph74.i.preheader, %.lr.ph74.i.prol
  %.173.i.prol = phi i32 [ %i.o, %.lr.ph74.i.prol ], [ %.0.lcssa.i, %.lr.ph74.i.preheader ]
  %.272.i.prol = phi i32 [ %i.n, %.lr.ph74.i.prol ], [ %.154.lcssa.i, %.lr.ph74.i.preheader ]
  %.25771.i.prol = phi i32 [ %i.m, %.lr.ph74.i.prol ], [ %.156.lcssa.i, %.lr.ph74.i.preheader ]
  %.26170.i.prol = phi ptr [ %i.j, %.lr.ph74.i.prol ], [ %.160.lcssa.i, %.lr.ph74.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph74.i.prol ], [ 0, %.lr.ph74.i.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.26170.i.prol, i64 1 ; 3 uses
  %i.k = load i8, ptr %.26170.i.prol, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = add i32 %.25771.i.prol, %i.l             ; 4 uses
  %i.n = add i32 %i.m, %.272.i.prol               ; 3 uses
  %i.o = add nuw i32 %.173.i.prol, 1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph74.i.prol.loopexit, label %.lr.ph74.i.prol, !llvm.loop !229

.lr.ph74.i.prol.loopexit:                         ; preds = %.lr.ph74.i.prol, %.lr.ph74.i.preheader
  %.lcssa58.unr = phi ptr [ poison, %.lr.ph74.i.preheader ], [ %i.j, %.lr.ph74.i.prol ]
  %.lcssa57.unr = phi i32 [ poison, %.lr.ph74.i.preheader ], [ %i.m, %.lr.ph74.i.prol ]
  %.lcssa56.unr = phi i32 [ poison, %.lr.ph74.i.preheader ], [ %i.n, %.lr.ph74.i.prol ]
  %.173.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph74.i.preheader ], [ %i.o, %.lr.ph74.i.prol ]
  %.272.i.unr = phi i32 [ %.154.lcssa.i, %.lr.ph74.i.preheader ], [ %i.n, %.lr.ph74.i.prol ]
  %.25771.i.unr = phi i32 [ %.156.lcssa.i, %.lr.ph74.i.preheader ], [ %i.m, %.lr.ph74.i.prol ]
  %.26170.i.unr = phi ptr [ %.160.lcssa.i, %.lr.ph74.i.preheader ], [ %i.j, %.lr.ph74.i.prol ]
  %i.p = sub nsw i32 %.0.lcssa.i, %.05283.i
  %i.q = icmp ugt i32 %i.p, -4
  br i1 %i.q, label %._crit_edge.i, label %.lr.ph74.i

.lr.ph.i:                                         ; preds = %.preheader62.i, %.lr.ph.i
  %.066.i = phi i32 [ %i.bf, %.lr.ph.i ], [ 0, %.preheader62.i ]
  %.15465.i = phi i32 [ %i.bd, %.lr.ph.i ], [ %.05382.i, %.preheader62.i ]
  %.15664.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.05581.i, %.preheader62.i ]
  %.16063.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.05979.i, %.preheader62.i ] ; 9 uses
  %i.r = load i8, ptr %.16063.i, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = add i32 %.15664.i, %i.s                  ; 2 uses
  %i.u = add i32 %i.t, %.15465.i
  %i.v = getelementptr inbounds nuw i8, ptr %.16063.i, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = add i32 %i.t, %i.x                       ; 2 uses
  %i.z = add i32 %i.u, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.16063.i, i64 2
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add i32 %i.y, %i.ac                     ; 2 uses
  %i.ae = add i32 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.16063.i, i64 3
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add i32 %i.ad, %i.ah                    ; 2 uses
  %i.aj = add i32 %i.ae, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.16063.i, i64 4
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = add i32 %i.ai, %i.am                    ; 2 uses
  %i.ao = add i32 %i.aj, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.16063.i, i64 5
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = add i32 %i.an, %i.ar                    ; 2 uses
  %i.at = add i32 %i.ao, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.16063.i, i64 6
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = add i32 %i.as, %i.aw                    ; 2 uses
  %i.ay = add i32 %i.at, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.16063.i, i64 7
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add i32 %i.ax, %i.bb                    ; 3 uses
  %i.bd = add i32 %i.ay, %i.bc                    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.16063.i, i64 8 ; 2 uses
  %i.bf = add nuw i32 %.066.i, 8                  ; 2 uses
  %i.bg = or disjoint i32 %i.bf, 7
  %i.bh = icmp ult i32 %i.bg, %.05283.i
  br i1 %i.bh, label %.lr.ph.i, label %.preheader.loopexit.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i
  %.173.i = phi i32 [ %i.cc, %.lr.ph74.i ], [ %.173.i.unr, %.lr.ph74.i.prol.loopexit ]
  %.272.i = phi i32 [ %i.cb, %.lr.ph74.i ], [ %.272.i.unr, %.lr.ph74.i.prol.loopexit ]
  %.25771.i = phi i32 [ %i.ca, %.lr.ph74.i ], [ %.25771.i.unr, %.lr.ph74.i.prol.loopexit ]
  %.26170.i = phi ptr [ %i.bx, %.lr.ph74.i ], [ %.26170.i.unr, %.lr.ph74.i.prol.loopexit ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.26170.i, i64 1
  %i.bj = load i8, ptr %.26170.i, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add i32 %.25771.i, %i.bk                ; 2 uses
  %i.bm = add i32 %i.bl, %.272.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.26170.i, i64 2
  %i.bo = load i8, ptr %i.bi, align 1
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add i32 %i.bl, %i.bp                    ; 2 uses
  %i.br = add i32 %i.bq, %i.bm
  %i.bs = getelementptr inbounds nuw i8, ptr %.26170.i, i64 3
  %i.bt = load i8, ptr %i.bn, align 1
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add i32 %i.bq, %i.bu                    ; 2 uses
  %i.bw = add i32 %i.bv, %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %.26170.i, i64 4 ; 2 uses
  %i.by = load i8, ptr %i.bs, align 1
  %i.bz = zext i8 %i.by to i32
  %i.ca = add i32 %i.bv, %i.bz                    ; 3 uses
  %i.cb = add i32 %i.ca, %i.bw                    ; 2 uses
  %i.cc = add nuw i32 %.173.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.cc, %.05283.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph74.i

._crit_edge.i:                                    ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i, %.preheader.i
  %.261.lcssa.i = phi ptr [ %.160.lcssa.i, %.preheader.i ], [ %.lcssa58.unr, %.lr.ph74.i.prol.loopexit ], [ %i.bx, %.lr.ph74.i ]
  %.257.lcssa.i = phi i32 [ %.156.lcssa.i, %.preheader.i ], [ %.lcssa57.unr, %.lr.ph74.i.prol.loopexit ], [ %i.ca, %.lr.ph74.i ]
  %.2.lcssa.i = phi i32 [ %.154.lcssa.i, %.preheader.i ], [ %.lcssa56.unr, %.lr.ph74.i.prol.loopexit ], [ %i.cb, %.lr.ph74.i ]
  %i.cd = urem i32 %.257.lcssa.i, 65521           ; 2 uses
  %i.ce = urem i32 %.2.lcssa.i, 65521             ; 2 uses
  %i.cf = sub i32 %.05880.i, %.05283.i            ; 2 uses
  %.not.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i, label %._crit_edge84.loopexit.i, label %.preheader62.i

._crit_edge84.loopexit.i:                         ; preds = %._crit_edge.i
  %i.cg = shl nuw i32 %i.ce, 16
  %i.ch = or disjoint i32 %i.cg, %i.cd
  br label %sinfl_adler32.exit

sinfl_adler32.exit:                               ; preds = %bb.b, %._crit_edge84.loopexit.i
  %i.ci = phi i32 [ 1, %bb.b ], [ %i.ch, %._crit_edge84.loopexit.i ]
  %i.cj = load i32, ptr %i.d, align 1
  %i.ck = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cl = icmp eq i32 %i.ci, %i.ck
  %i.cm = select i1 %i.cl, i32 %i.f, i32 -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %sinfl_adler32.exit
  %.0 = phi i32 [ %i.cm, %sinfl_adler32.exit ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @sdeflate(ptr noundef initializes((0, 131080)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4
  store i32 0, ptr %0, align 4
  %i.b = tail call fastcc i32 @sdefl_compr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @sdefl_compr(ptr nofree noundef initializes((8, 131080)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #30 {
.preheader213:
  %i.a = alloca [320 x i8], align 16              ; 6 uses
  %i.b = alloca [19 x i32], align 16              ; 4 uses
  %i.c = alloca [19 x i8], align 16               ; 24 uses
  %i.d = alloca [19 x i32], align 16              ; 15 uses
  %i.e = alloca [320 x i32], align 16             ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(131072) %i.f, i8 -1, i64 131072, i1 false)
  %i.g = icmp slt i32 %4, 8
  %i.h = add nsw i32 %4, 1
  %i.i = shl nuw nsw i32 1, %i.h
  %i.j = select i1 %i.g, i32 %i.i, i32 8192       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 961212 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 962236 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 962492 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 963772 ; 5 uses
  %i.o = sext i32 %4 to i64
  %i.p = getelementptr inbounds i8, ptr @sdefl_compr.pref, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 131080 ; 3 uses
  %i.r = icmp sgt i32 %4, 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 262156 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 262152 ; 11 uses
  %i.u = getelementptr i8, ptr %0, i64 962240     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 962364 ; 3 uses
  %i.w = icmp sgt i32 %4, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 964060 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 963644 ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 964059
  %i.aa = getelementptr i8, ptr %0, i64 964058
  %i.ab = getelementptr i8, ptr %0, i64 964057
  %i.ac = getelementptr i8, ptr %0, i64 964056
  %i.ad = getelementptr i8, ptr %0, i64 964055
  %i.ae = getelementptr i8, ptr %0, i64 964054    ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 964053
  %i.ag = getelementptr i8, ptr %0, i64 964052
  %i.ah = getelementptr i8, ptr %0, i64 964051
  %i.ai = getelementptr i8, ptr %0, i64 964050
  %i.aj = getelementptr i8, ptr %0, i64 964049
  %i.ak = getelementptr i8, ptr %0, i64 964048
  %i.al = getelementptr i8, ptr %0, i64 964047
  %i.am = getelementptr i8, ptr %0, i64 964046    ; 2 uses
  %i.an = getelementptr i8, ptr %0, i64 964045
  %i.ao = getelementptr i8, ptr %0, i64 964044
  %i.ap = getelementptr i8, ptr %0, i64 964043
  %i.aq = getelementptr i8, ptr %0, i64 964042
  %i.ar = getelementptr i8, ptr %0, i64 964041
  %i.as = getelementptr i8, ptr %0, i64 964040
  %i.at = getelementptr i8, ptr %0, i64 964039
  %i.au = getelementptr i8, ptr %0, i64 964038
  %i.av = getelementptr i8, ptr %0, i64 964037
  %i.aw = getelementptr i8, ptr %0, i64 964036
  %i.ax = getelementptr i8, ptr %0, i64 964035
  %i.ay = getelementptr i8, ptr %0, i64 964034
  %i.az = getelementptr i8, ptr %0, i64 964033
  %i.ba = getelementptr i8, ptr %0, i64 964032
  %i.bb = getelementptr i8, ptr %0, i64 964031
  %i.bc = getelementptr i8, ptr %0, i64 964030    ; 2 uses
  %i.bd = getelementptr i8, ptr %0, i64 964029    ; 2 uses
  %i.be = getelementptr i8, ptr %0, i64 964091
  %i.bf = getelementptr i8, ptr %0, i64 964090
  %i.bg = getelementptr i8, ptr %0, i64 964089    ; 2 uses
  %i.bh = getelementptr i8, ptr %0, i64 964088    ; 2 uses
  %i.bi = getelementptr i8, ptr %0, i64 964087
  %i.bj = getelementptr i8, ptr %0, i64 964086
  %i.bk = getelementptr i8, ptr %0, i64 964085
  %i.bl = getelementptr i8, ptr %0, i64 964084
  %i.bm = getelementptr i8, ptr %0, i64 964083
  %i.bn = getelementptr i8, ptr %0, i64 964082
  %i.bo = getelementptr i8, ptr %0, i64 964081
  %i.bp = getelementptr i8, ptr %0, i64 964080
  %i.bq = getelementptr i8, ptr %0, i64 964079
  %i.br = getelementptr i8, ptr %0, i64 964078
  %i.bs = getelementptr i8, ptr %0, i64 964077
  %i.bt = getelementptr i8, ptr %0, i64 964076
  %i.bu = getelementptr i8, ptr %0, i64 964075
  %i.bv = getelementptr i8, ptr %0, i64 964074
  %i.bw = getelementptr i8, ptr %0, i64 964073
  %i.bx = getelementptr i8, ptr %0, i64 964072
  %i.by = getelementptr i8, ptr %0, i64 964071
  %i.bz = getelementptr i8, ptr %0, i64 964070
  %i.ca = getelementptr i8, ptr %0, i64 964069
  %i.cb = getelementptr i8, ptr %0, i64 964068
  %i.cc = getelementptr i8, ptr %0, i64 964067
  %i.cd = getelementptr i8, ptr %0, i64 964066
  %i.ce = getelementptr i8, ptr %0, i64 964065
  %i.cf = getelementptr i8, ptr %0, i64 964064    ; 2 uses
  %i.cg = getelementptr i8, ptr %0, i64 964063
  %i.ch = getelementptr i8, ptr %0, i64 964062
  %i.ci = getelementptr i8, ptr %0, i64 964061
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 68 ; 3 uses
  %i.cm = ptrtoint ptr %i.e to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 14 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 13 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 9 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 964028 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 962244
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 962380
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 962476
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 962480
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 63 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 963516
  br label %bb.a

bb.a:                                             ; preds = %.preheader213, %sdefl_flush.exit
  %.0198 = phi ptr [ %.43, %sdefl_flush.exit ], [ %1, %.preheader213 ] ; 4 uses
  %.089 = phi i32 [ %.190.lcssa397, %sdefl_flush.exit ], [ 0, %.preheader213 ] ; 6 uses
  %i.dr = add nsw i32 %.089, 262144               ; 2 uses
  %i.ds = call i32 @llvm.smin.i32(i32 %i.dr, i32 %3) ; 3 uses
end_hunk_0
begin_hunk_1_@sdefl_compr:.preheader213
  %i.ahc = load i8, ptr %i.ahb, align 1
  %i.ahd = zext i8 %i.ahc to i32
  %i.ahe = shl i32 %i.aha, %i.agx
  %i.ahf = or i32 %i.ahe, %i.agw                  ; 3 uses
  store i32 %i.ahf, ptr %0, align 4
  %i.ahg = add nsw i32 %i.agx, %i.ahd             ; 3 uses
  store i32 %i.ahg, ptr %i.dp, align 4
  %i.ahh = icmp sgt i32 %i.ahg, 7
  br i1 %i.ahh, label %.lr.ph.i22.i.i, label %sdefl_put.exit24.i.i

.lr.ph.i22.i.i:                                   ; preds = %sdefl_put.exit19.i.i, %.lr.ph.i22.i.i
  %i.ahi = phi i32 [ %i.ahl, %.lr.ph.i22.i.i ], [ %i.ahf, %sdefl_put.exit19.i.i ]
  %.24 = phi ptr [ %i.aho, %.lr.ph.i22.i.i ], [ %.20, %sdefl_put.exit19.i.i ] ; 2 uses
  %i.ahj = trunc i32 %i.ahi to i8
  store i8 %i.ahj, ptr %.24, align 1
  %i.ahk = load i32, ptr %0, align 4
  %i.ahl = ashr i32 %i.ahk, 8                     ; 3 uses
  store i32 %i.ahl, ptr %0, align 4
  %i.ahm = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.ahn = add nsw i32 %i.ahm, -8                 ; 2 uses
  store i32 %i.ahn, ptr %i.dp, align 4
  %i.aho = getelementptr inbounds nuw i8, ptr %.24, i64 1 ; 2 uses
  %i.ahp = icmp sgt i32 %i.ahm, 15
  br i1 %i.ahp, label %.lr.ph.i22.i.i, label %sdefl_put.exit24.i.i

sdefl_put.exit24.i.i:                             ; preds = %.lr.ph.i22.i.i, %sdefl_put.exit19.i.i
  %.21 = phi ptr [ %.20, %sdefl_put.exit19.i.i ], [ %i.aho, %.lr.ph.i22.i.i ] ; 2 uses
  %i.ahq = phi i32 [ %i.ahf, %sdefl_put.exit19.i.i ], [ %i.ahl, %.lr.ph.i22.i.i ]
  %i.ahr = phi i32 [ %i.ahg, %sdefl_put.exit19.i.i ], [ %i.ahn, %.lr.ph.i22.i.i ] ; 2 uses
  %i.ahs = getelementptr inbounds nuw [2 x i8], ptr @sdefl_match.dmin, i64 %i.agy
  %i.aht = load i16, ptr %i.ahs, align 2
  %i.ahu = sext i16 %i.aht to i32
  %i.ahv = sub nsw i32 %i.aei, %i.ahu
  %i.ahw = shl i32 %i.ahv, %i.ahr
  %i.ahx = or i32 %i.ahw, %i.ahq                  ; 3 uses
  store i32 %i.ahx, ptr %0, align 4
  %i.ahy = add nsw i32 %i.ahr, %.0.i12.i.i.i      ; 3 uses
  store i32 %i.ahy, ptr %i.dp, align 4
  %i.ahz = icmp sgt i32 %i.ahy, 7
  br i1 %i.ahz, label %.lr.ph.i27.i.i, label %sdefl_match.exit.i

.lr.ph.i27.i.i:                                   ; preds = %sdefl_put.exit24.i.i, %.lr.ph.i27.i.i
  %i.aia = phi i32 [ %i.aid, %.lr.ph.i27.i.i ], [ %i.ahx, %sdefl_put.exit24.i.i ]
  %.23 = phi ptr [ %i.aig, %.lr.ph.i27.i.i ], [ %.21, %sdefl_put.exit24.i.i ] ; 2 uses
  %i.aib = trunc i32 %i.aia to i8
  store i8 %i.aib, ptr %.23, align 1
  %i.aic = load i32, ptr %0, align 4
  %i.aid = ashr i32 %i.aic, 8                     ; 3 uses
  store i32 %i.aid, ptr %0, align 4
  %i.aie = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.aif = add nsw i32 %i.aie, -8                 ; 2 uses
  store i32 %i.aif, ptr %i.dp, align 4
  %i.aig = getelementptr inbounds nuw i8, ptr %.23, i64 1 ; 2 uses
  %i.aih = icmp sgt i32 %i.aie, 15
  br i1 %i.aih, label %.lr.ph.i27.i.i, label %sdefl_match.exit.i

sdefl_match.exit.i:                               ; preds = %.lr.ph.i27.i.i, %sdefl_put.exit204.i, %sdefl_put.exit24.i.i, %.preheader.i
  %i.aii = phi i32 [ %i.ahx, %sdefl_put.exit24.i.i ], [ %i.acv, %.preheader.i ], [ %i.aed, %sdefl_put.exit204.i ], [ %i.aid, %.lr.ph.i27.i.i ] ; 2 uses
  %.22 = phi ptr [ %.21, %sdefl_put.exit24.i.i ], [ %.18, %.preheader.i ], [ %.28, %sdefl_put.exit204.i ], [ %i.aig, %.lr.ph.i27.i.i ] ; 2 uses
  %i.aij = phi i32 [ %i.ahy, %sdefl_put.exit24.i.i ], [ %i.acw, %.preheader.i ], [ %i.aef, %sdefl_put.exit204.i ], [ %i.aif, %.lr.ph.i27.i.i ] ; 2 uses
  %indvars.iv.next259.i = add nuw nsw i64 %indvars.iv258.i, 1 ; 2 uses
  %i.aik = load i32, ptr %i.t, align 4
  %i.ail = sext i32 %i.aik to i64
  %i.aim = icmp slt i64 %indvars.iv.next259.i, %i.ail
  br i1 %i.aim, label %.lr.ph236.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %sdefl_match.exit.i, %.preheader214.i
  %i.ain = phi i32 [ %i.aah, %.preheader214.i ], [ %i.aii, %sdefl_match.exit.i ]
  %.16 = phi ptr [ %.15, %.preheader214.i ], [ %.22, %sdefl_match.exit.i ] ; 2 uses
  %i.aio = phi i32 [ %i.aai, %.preheader214.i ], [ %i.aij, %sdefl_match.exit.i ] ; 2 uses
  %i.aip = load i32, ptr %i.dq, align 4
  %i.aiq = load i8, ptr %i.dk, align 4
  %i.air = zext i8 %i.aiq to i32
  %i.ais = shl i32 %i.aip, %i.aio
  %i.ait = or i32 %i.ain, %i.ais                  ; 2 uses
  store i32 %i.ait, ptr %0, align 4
  %i.aiu = add nsw i32 %i.aio, %i.air             ; 2 uses
  store i32 %i.aiu, ptr %i.dp, align 4
  %i.aiv = icmp sgt i32 %i.aiu, 7
  br i1 %i.aiv, label %.lr.ph.i209.i, label %sdefl_flush.exit

.lr.ph.i209.i:                                    ; preds = %._crit_edge.i, %.lr.ph.i209.i
  %i.aiw = phi i32 [ %i.aiz, %.lr.ph.i209.i ], [ %i.ait, %._crit_edge.i ]
  %.17 = phi ptr [ %i.ajc, %.lr.ph.i209.i ], [ %.16, %._crit_edge.i ] ; 2 uses
  %i.aix = trunc i32 %i.aiw to i8
  store i8 %i.aix, ptr %.17, align 1
  %i.aiy = load i32, ptr %0, align 4
  %i.aiz = ashr i32 %i.aiy, 8                     ; 2 uses
  store i32 %i.aiz, ptr %0, align 4
  %i.aja = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.ajb = add nsw i32 %i.aja, -8
  store i32 %i.ajb, ptr %i.dp, align 4
  %i.ajc = getelementptr inbounds nuw i8, ptr %.17, i64 1 ; 2 uses
  %i.ajd = icmp sgt i32 %i.aja, 15
  br i1 %i.ajd, label %.lr.ph.i209.i, label %sdefl_flush.exit

sdefl_flush.exit:                                 ; preds = %sdefl_put.exit138.i, %.lr.ph.i209.i, %.preheader218.i, %._crit_edge.i
  %.43 = phi ptr [ %.0198, %.preheader218.i ], [ %.16, %._crit_edge.i ], [ %i.ajc, %.lr.ph.i209.i ], [ %i.wl, %sdefl_put.exit138.i ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1280) %i.k, i8 0, i64 1280, i1 false)
  store i32 0, ptr %i.t, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  %i.aje = icmp slt i32 %.190.lcssa397, %3
  br i1 %i.aje, label %bb.a, label %bb.dd

bb.dd:                                            ; preds = %sdefl_flush.exit
  %i.ajf = load i32, ptr %i.dp, align 4
  %.not102 = icmp eq i32 %i.ajf, 0
  br i1 %.not102, label %sdefl_put.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.dd
  store i32 8, ptr %i.dp, align 4
  %.pre348 = load i32, ptr %0, align 4
  br label %.lr.ph.i165

.lr.ph.i165:                                      ; preds = %.lr.ph.i165, %.lr.ph.preheader.i
  %i.ajg = phi i32 [ %.pre348, %.lr.ph.preheader.i ], [ %i.ajj, %.lr.ph.i165 ]
  %.44 = phi ptr [ %.43, %.lr.ph.preheader.i ], [ %i.ajm, %.lr.ph.i165 ] ; 2 uses
  %i.ajh = trunc i32 %i.ajg to i8
  store i8 %i.ajh, ptr %.44, align 1
  %i.aji = load i32, ptr %0, align 4
  %i.ajj = ashr i32 %i.aji, 8                     ; 2 uses
  store i32 %i.ajj, ptr %0, align 4
  %i.ajk = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.ajl = add nsw i32 %i.ajk, -8
  store i32 %i.ajl, ptr %i.dp, align 4
  %i.ajm = getelementptr inbounds nuw i8, ptr %.44, i64 1 ; 2 uses
  %i.ajn = icmp sgt i32 %i.ajk, 15
  br i1 %i.ajn, label %.lr.ph.i165, label %sdefl_put.exit

sdefl_put.exit:                                   ; preds = %.lr.ph.i165, %bb.dd
  %.1199 = phi ptr [ %.43, %bb.dd ], [ %i.ajm, %.lr.ph.i165 ]
  %i.ajo = ptrtoint ptr %.1199 to i64
  %i.ajp = ptrtoint ptr %1 to i64
  %i.ajq = sub i64 %i.ajo, %i.ajp
  %i.ajr = trunc i64 %i.ajq to i32
  ret i32 %i.ajr
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @zsdeflate(ptr noundef initializes((0, 8)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #30 {
.lr.ph.preheader.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 19 uses
  store i32 120, ptr %0, align 4
  store i32 8, ptr %i.a, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.b = phi i32 [ 120, %.lr.ph.preheader.i ], [ %i.e, %.lr.ph.i ]
  %.1 = phi ptr [ %1, %.lr.ph.preheader.i ], [ %i.h, %.lr.ph.i ] ; 2 uses
  %i.c = trunc i32 %i.b to i8
  store i8 %i.c, ptr %.1, align 1
  %i.d = load i32, ptr %0, align 4
  %i.e = ashr i32 %i.d, 8                         ; 3 uses
  store i32 %i.e, ptr %0, align 4
  %i.f = load i32, ptr %i.a, align 4              ; 4 uses
  %i.g = add nsw i32 %i.f, -8                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  %i.i = icmp sgt i32 %i.f, 15
  br i1 %i.i, label %.lr.ph.i, label %sdefl_put.exit

sdefl_put.exit:                                   ; preds = %.lr.ph.i
  %i.j = shl nuw nsw i32 1, %i.g
  %i.k = or i32 %i.e, %i.j                        ; 2 uses
  store i32 %i.k, ptr %0, align 4
  store i32 %i.f, ptr %i.a, align 4
  %i.l = icmp sgt i32 %i.f, 7
  br i1 %i.l, label %.lr.ph.i19, label %sdefl_put.exit21

.lr.ph.i19:                                       ; preds = %sdefl_put.exit, %.lr.ph.i19
  %i.m = phi i32 [ %i.p, %.lr.ph.i19 ], [ %i.k, %sdefl_put.exit ]
  %.3 = phi ptr [ %i.s, %.lr.ph.i19 ], [ %i.h, %sdefl_put.exit ] ; 2 uses
  %i.n = trunc i32 %i.m to i8
  store i8 %i.n, ptr %.3, align 1
  %i.o = load i32, ptr %0, align 4
  %i.p = ashr i32 %i.o, 8                         ; 2 uses
  store i32 %i.p, ptr %0, align 4
  %i.q = load i32, ptr %i.a, align 4              ; 2 uses
  %i.r = add nsw i32 %i.q, -8
  store i32 %i.r, ptr %i.a, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.t = icmp sgt i32 %i.q, 15
  br i1 %i.t, label %.lr.ph.i19, label %sdefl_put.exit21

sdefl_put.exit21:                                 ; preds = %.lr.ph.i19, %sdefl_put.exit
  %.4 = phi ptr [ %i.h, %sdefl_put.exit ], [ %i.s, %.lr.ph.i19 ] ; 2 uses
  %i.u = tail call fastcc i32 @sdefl_compr(ptr noundef nonnull %0, ptr noundef nonnull %.4, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %.4, i64 %i.v ; 2 uses
  %.not78.i = icmp eq i32 %3, 0
  br i1 %.not78.i, label %sdefl_adler32.exit, label %.preheader62.preheader.i

.preheader62.preheader.i:                         ; preds = %sdefl_put.exit21
  %i.x = srem i32 %3, 5552
  br label %.preheader62.i

.preheader62.i:                                   ; preds = %._crit_edge.i, %.preheader62.preheader.i
  %.05283.i = phi i32 [ 5552, %._crit_edge.i ], [ %i.x, %.preheader62.preheader.i ] ; 8 uses
  %.05382.i = phi i32 [ %i.cv, %._crit_edge.i ], [ 0, %.preheader62.preheader.i ] ; 2 uses
  %.05581.i = phi i32 [ %i.cu, %._crit_edge.i ], [ 1, %.preheader62.preheader.i ] ; 2 uses
  %.05880.i = phi i32 [ %i.cw, %._crit_edge.i ], [ %3, %.preheader62.preheader.i ]
  %.05979.i = phi ptr [ %.261.lcssa.i, %._crit_edge.i ], [ %2, %.preheader62.preheader.i ] ; 2 uses
  %i.y = icmp ugt i32 %.05283.i, 7
  br i1 %i.y, label %.lr.ph.i22, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i22
  %5 = and i32 %.05283.i, -8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader62.i
  %.160.lcssa.i = phi ptr [ %.05979.i, %.preheader62.i ], [ %i.bv, %.preheader.loopexit.i ] ; 3 uses
  %.156.lcssa.i = phi i32 [ %.05581.i, %.preheader62.i ], [ %i.bt, %.preheader.loopexit.i ] ; 3 uses
  %.154.lcssa.i = phi i32 [ %.05382.i, %.preheader62.i ], [ %i.bu, %.preheader.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %.preheader62.i ], [ %5, %.preheader.loopexit.i ] ; 4 uses
  %i.z = icmp ult i32 %.0.lcssa.i, %.05283.i
  br i1 %i.z, label %.lr.ph74.i.preheader, label %._crit_edge.i

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %xtraiter = and i32 %.05283.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph74.i.prol.loopexit, label %.lr.ph74.i.prol

.lr.ph74.i.prol:                                  ; preds = %.lr.ph74.i.preheader, %.lr.ph74.i.prol
  %.173.i.prol = phi i32 [ %i.af, %.lr.ph74.i.prol ], [ %.0.lcssa.i, %.lr.ph74.i.preheader ]
  %.272.i.prol = phi i32 [ %i.ae, %.lr.ph74.i.prol ], [ %.154.lcssa.i, %.lr.ph74.i.preheader ]
  %.25771.i.prol = phi i32 [ %i.ad, %.lr.ph74.i.prol ], [ %.156.lcssa.i, %.lr.ph74.i.preheader ]
  %.26170.i.prol = phi ptr [ %i.aa, %.lr.ph74.i.prol ], [ %.160.lcssa.i, %.lr.ph74.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph74.i.prol ], [ 0, %.lr.ph74.i.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.26170.i.prol, i64 1 ; 3 uses
  %i.ab = load i8, ptr %.26170.i.prol, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add i32 %.25771.i.prol, %i.ac           ; 4 uses
  %i.ae = add i32 %i.ad, %.272.i.prol             ; 3 uses
  %i.af = add nuw i32 %.173.i.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph74.i.prol.loopexit, label %.lr.ph74.i.prol, !llvm.loop !232

.lr.ph74.i.prol.loopexit:                         ; preds = %.lr.ph74.i.prol, %.lr.ph74.i.preheader
  %.lcssa123.unr = phi ptr [ poison, %.lr.ph74.i.preheader ], [ %i.aa, %.lr.ph74.i.prol ]
  %.lcssa122.unr = phi i32 [ poison, %.lr.ph74.i.preheader ], [ %i.ad, %.lr.ph74.i.prol ]
  %.lcssa121.unr = phi i32 [ poison, %.lr.ph74.i.preheader ], [ %i.ae, %.lr.ph74.i.prol ]
  %.173.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph74.i.preheader ], [ %i.af, %.lr.ph74.i.prol ]
  %.272.i.unr = phi i32 [ %.154.lcssa.i, %.lr.ph74.i.preheader ], [ %i.ae, %.lr.ph74.i.prol ]
  %.25771.i.unr = phi i32 [ %.156.lcssa.i, %.lr.ph74.i.preheader ], [ %i.ad, %.lr.ph74.i.prol ]
  %.26170.i.unr = phi ptr [ %.160.lcssa.i, %.lr.ph74.i.preheader ], [ %i.aa, %.lr.ph74.i.prol ]
  %i.ag = sub nsw i32 %.0.lcssa.i, %.05283.i
  %i.ah = icmp ugt i32 %i.ag, -4
  br i1 %i.ah, label %._crit_edge.i, label %.lr.ph74.i

.lr.ph.i22:                                       ; preds = %.preheader62.i, %.lr.ph.i22
  %.066.i = phi i32 [ %i.bw, %.lr.ph.i22 ], [ 0, %.preheader62.i ]
  %.15465.i = phi i32 [ %i.bu, %.lr.ph.i22 ], [ %.05382.i, %.preheader62.i ]
  %.15664.i = phi i32 [ %i.bt, %.lr.ph.i22 ], [ %.05581.i, %.preheader62.i ]
  %.16063.i = phi ptr [ %i.bv, %.lr.ph.i22 ], [ %.05979.i, %.preheader62.i ] ; 9 uses
  %i.ai = load i8, ptr %.16063.i, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add i32 %.15664.i, %i.aj                ; 2 uses
  %i.al = add i32 %i.ak, %.15465.i
  %i.am = getelementptr inbounds nuw i8, ptr %.16063.i, i64 1
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = add i32 %i.ak, %i.ao                    ; 2 uses
  %i.aq = add i32 %i.al, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.16063.i, i64 2
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i32
  %i.au = add i32 %i.ap, %i.at                    ; 2 uses
  %i.av = add i32 %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.16063.i, i64 3
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = add i32 %i.au, %i.ay                    ; 2 uses
  %i.ba = add i32 %i.av, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.16063.i, i64 4
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = add i32 %i.az, %i.bd                    ; 2 uses
  %i.bf = add i32 %i.ba, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.16063.i, i64 5
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add i32 %i.be, %i.bi                    ; 2 uses
  %i.bk = add i32 %i.bf, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %.16063.i, i64 6
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add i32 %i.bj, %i.bn                    ; 2 uses
  %i.bp = add i32 %i.bk, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.16063.i, i64 7
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i32
  %i.bt = add i32 %i.bo, %i.bs                    ; 3 uses
  %i.bu = add i32 %i.bp, %i.bt                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.16063.i, i64 8 ; 2 uses
  %i.bw = add nuw i32 %.066.i, 8                  ; 2 uses
  %i.bx = or disjoint i32 %i.bw, 7
  %i.by = icmp ult i32 %i.bx, %.05283.i
  br i1 %i.by, label %.lr.ph.i22, label %.preheader.loopexit.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i
  %.173.i = phi i32 [ %i.ct, %.lr.ph74.i ], [ %.173.i.unr, %.lr.ph74.i.prol.loopexit ]
  %.272.i = phi i32 [ %i.cs, %.lr.ph74.i ], [ %.272.i.unr, %.lr.ph74.i.prol.loopexit ]
  %.25771.i = phi i32 [ %i.cr, %.lr.ph74.i ], [ %.25771.i.unr, %.lr.ph74.i.prol.loopexit ]
  %.26170.i = phi ptr [ %i.co, %.lr.ph74.i ], [ %.26170.i.unr, %.lr.ph74.i.prol.loopexit ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.26170.i, i64 1
  %i.ca = load i8, ptr %.26170.i, align 1
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add i32 %.25771.i, %i.cb                ; 2 uses
  %i.cd = add i32 %i.cc, %.272.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.26170.i, i64 2
  %i.cf = load i8, ptr %i.bz, align 1
  %i.cg = zext i8 %i.cf to i32
  %i.ch = add i32 %i.cc, %i.cg                    ; 2 uses
  %i.ci = add i32 %i.ch, %i.cd
  %i.cj = getelementptr inbounds nuw i8, ptr %.26170.i, i64 3
  %i.ck = load i8, ptr %i.ce, align 1
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add i32 %i.ch, %i.cl                    ; 2 uses
  %i.cn = add i32 %i.cm, %i.ci
  %i.co = getelementptr inbounds nuw i8, ptr %.26170.i, i64 4 ; 2 uses
  %i.cp = load i8, ptr %i.cj, align 1
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add i32 %i.cm, %i.cq                    ; 3 uses
  %i.cs = add i32 %i.cr, %i.cn                    ; 2 uses
  %i.ct = add nuw i32 %.173.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.ct, %.05283.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph74.i

._crit_edge.i:                                    ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i, %.preheader.i
  %.261.lcssa.i = phi ptr [ %.160.lcssa.i, %.preheader.i ], [ %.lcssa123.unr, %.lr.ph74.i.prol.loopexit ], [ %i.co, %.lr.ph74.i ]
  %.257.lcssa.i = phi i32 [ %.156.lcssa.i, %.preheader.i ], [ %.lcssa122.unr, %.lr.ph74.i.prol.loopexit ], [ %i.cr, %.lr.ph74.i ]
  %.2.lcssa.i = phi i32 [ %.154.lcssa.i, %.preheader.i ], [ %.lcssa121.unr, %.lr.ph74.i.prol.loopexit ], [ %i.cs, %.lr.ph74.i ]
  %i.cu = urem i32 %.257.lcssa.i, 65521           ; 2 uses
  %i.cv = urem i32 %.2.lcssa.i, 65521             ; 2 uses
  %i.cw = sub i32 %.05880.i, %.05283.i            ; 2 uses
  %.not.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i, label %._crit_edge84.loopexit.i, label %.preheader62.i

._crit_edge84.loopexit.i:                         ; preds = %._crit_edge.i
  %i.cx = shl nuw i32 %i.cv, 16
  %i.cy = or disjoint i32 %i.cx, %i.cu
  br label %sdefl_adler32.exit

sdefl_adler32.exit:                               ; preds = %sdefl_put.exit21, %._crit_edge84.loopexit.i
  %i.cz = phi i32 [ 1, %sdefl_put.exit21 ], [ %i.cy, %._crit_edge84.loopexit.i ] ; 4 uses
  %i.da = lshr i32 %i.cz, 24
  %i.db = load i32, ptr %i.a, align 4             ; 3 uses
  %i.dc = shl i32 %i.da, %i.db
  %i.dd = load i32, ptr %0, align 4
  %i.de = or i32 %i.dd, %i.dc                     ; 3 uses
  store i32 %i.de, ptr %0, align 4
  %i.df = add nsw i32 %i.db, 8                    ; 2 uses
  store i32 %i.df, ptr %i.a, align 4
  %i.dg = icmp sgt i32 %i.db, -1
  br i1 %i.dg, label %.lr.ph.i26, label %sdefl_put.exit28

.lr.ph.i26:                                       ; preds = %sdefl_adler32.exit, %.lr.ph.i26
  %i.dh = phi i32 [ %i.dk, %.lr.ph.i26 ], [ %i.de, %sdefl_adler32.exit ]
  %.5 = phi ptr [ %i.dn, %.lr.ph.i26 ], [ %i.w, %sdefl_adler32.exit ] ; 2 uses
  %i.di = trunc i32 %i.dh to i8
  store i8 %i.di, ptr %.5, align 1
  %i.dj = load i32, ptr %0, align 4
  %i.dk = ashr i32 %i.dj, 8                       ; 3 uses
  store i32 %i.dk, ptr %0, align 4
  %i.dl = load i32, ptr %i.a, align 4             ; 2 uses
  %i.dm = add nsw i32 %i.dl, -8                   ; 2 uses
  store i32 %i.dm, ptr %i.a, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  %i.do = icmp sgt i32 %i.dl, 15
  br i1 %i.do, label %.lr.ph.i26, label %sdefl_put.exit28

sdefl_put.exit28:                                 ; preds = %.lr.ph.i26, %sdefl_adler32.exit
  %i.dp = phi i32 [ %i.de, %sdefl_adler32.exit ], [ %i.dk, %.lr.ph.i26 ]
  %i.dq = phi i32 [ %i.df, %sdefl_adler32.exit ], [ %i.dm, %.lr.ph.i26 ] ; 3 uses
  %.6 = phi ptr [ %i.w, %sdefl_adler32.exit ], [ %i.dn, %.lr.ph.i26 ] ; 2 uses
  %i.dr = lshr i32 %i.cz, 16
  %i.ds = and i32 %i.dr, 255
  %i.dt = shl nuw nsw i32 %i.ds, %i.dq
  %i.du = or i32 %i.dp, %i.dt                     ; 3 uses
  store i32 %i.du, ptr %0, align 4
  %i.dv = add nsw i32 %i.dq, 8                    ; 2 uses
  store i32 %i.dv, ptr %i.a, align 4
  %i.dw = icmp sgt i32 %i.dq, -1
  br i1 %i.dw, label %.lr.ph.i26.1, label %sdefl_put.exit28.1

.lr.ph.i26.1:                                     ; preds = %sdefl_put.exit28, %.lr.ph.i26.1
  %i.dx = phi i32 [ %i.ea, %.lr.ph.i26.1 ], [ %i.du, %sdefl_put.exit28 ]
  %.5.1 = phi ptr [ %i.ed, %.lr.ph.i26.1 ], [ %.6, %sdefl_put.exit28 ] ; 2 uses
  %i.dy = trunc i32 %i.dx to i8
  store i8 %i.dy, ptr %.5.1, align 1
  %i.dz = load i32, ptr %0, align 4
  %i.ea = ashr i32 %i.dz, 8                       ; 3 uses
  store i32 %i.ea, ptr %0, align 4
  %i.eb = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ec = add nsw i32 %i.eb, -8                   ; 2 uses
  store i32 %i.ec, ptr %i.a, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %.5.1, i64 1 ; 2 uses
  %i.ee = icmp sgt i32 %i.eb, 15
  br i1 %i.ee, label %.lr.ph.i26.1, label %sdefl_put.exit28.1

sdefl_put.exit28.1:                               ; preds = %.lr.ph.i26.1, %sdefl_put.exit28
  %i.ef = phi i32 [ %i.du, %sdefl_put.exit28 ], [ %i.ea, %.lr.ph.i26.1 ]
  %i.eg = phi i32 [ %i.dv, %sdefl_put.exit28 ], [ %i.ec, %.lr.ph.i26.1 ] ; 3 uses
  %.6.1 = phi ptr [ %.6, %sdefl_put.exit28 ], [ %i.ed, %.lr.ph.i26.1 ] ; 2 uses
  %i.eh = lshr i32 %i.cz, 8
  %i.ei = and i32 %i.eh, 255
  %i.ej = shl nuw nsw i32 %i.ei, %i.eg
  %i.ek = or i32 %i.ef, %i.ej                     ; 3 uses
  store i32 %i.ek, ptr %0, align 4
  %i.el = add nsw i32 %i.eg, 8                    ; 2 uses
  store i32 %i.el, ptr %i.a, align 4
  %i.em = icmp sgt i32 %i.eg, -1
  br i1 %i.em, label %.lr.ph.i26.2, label %sdefl_put.exit28.2

.lr.ph.i26.2:                                     ; preds = %sdefl_put.exit28.1, %.lr.ph.i26.2
  %i.en = phi i32 [ %i.eq, %.lr.ph.i26.2 ], [ %i.ek, %sdefl_put.exit28.1 ]
  %.5.2 = phi ptr [ %i.et, %.lr.ph.i26.2 ], [ %.6.1, %sdefl_put.exit28.1 ] ; 2 uses
  %i.eo = trunc i32 %i.en to i8
  store i8 %i.eo, ptr %.5.2, align 1
  %i.ep = load i32, ptr %0, align 4
  %i.eq = ashr i32 %i.ep, 8                       ; 3 uses
  store i32 %i.eq, ptr %0, align 4
  %i.er = load i32, ptr %i.a, align 4             ; 2 uses
  %i.es = add nsw i32 %i.er, -8                   ; 2 uses
  store i32 %i.es, ptr %i.a, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %.5.2, i64 1 ; 2 uses
  %i.eu = icmp sgt i32 %i.er, 15
  br i1 %i.eu, label %.lr.ph.i26.2, label %sdefl_put.exit28.2

sdefl_put.exit28.2:                               ; preds = %.lr.ph.i26.2, %sdefl_put.exit28.1
  %i.ev = phi i32 [ %i.ek, %sdefl_put.exit28.1 ], [ %i.eq, %.lr.ph.i26.2 ]
  %i.ew = phi i32 [ %i.el, %sdefl_put.exit28.1 ], [ %i.es, %.lr.ph.i26.2 ] ; 3 uses
  %.6.2 = phi ptr [ %.6.1, %sdefl_put.exit28.1 ], [ %i.et, %.lr.ph.i26.2 ] ; 2 uses
  %i.ex = and i32 %i.cz, 255
  %i.ey = shl nuw nsw i32 %i.ex, %i.ew
  %i.ez = or i32 %i.ev, %i.ey                     ; 2 uses
  store i32 %i.ez, ptr %0, align 4
  %i.fa = add nsw i32 %i.ew, 8
  store i32 %i.fa, ptr %i.a, align 4
  %i.fb = icmp sgt i32 %i.ew, -1
  br i1 %i.fb, label %.lr.ph.i26.3, label %sdefl_put.exit28.3

.lr.ph.i26.3:                                     ; preds = %sdefl_put.exit28.2, %.lr.ph.i26.3
  %i.fc = phi i32 [ %i.ff, %.lr.ph.i26.3 ], [ %i.ez, %sdefl_put.exit28.2 ]
  %.5.3 = phi ptr [ %i.fi, %.lr.ph.i26.3 ], [ %.6.2, %sdefl_put.exit28.2 ] ; 2 uses
  %i.fd = trunc i32 %i.fc to i8
  store i8 %i.fd, ptr %.5.3, align 1
  %i.fe = load i32, ptr %0, align 4
  %i.ff = ashr i32 %i.fe, 8                       ; 2 uses
  store i32 %i.ff, ptr %0, align 4
  %i.fg = load i32, ptr %i.a, align 4             ; 2 uses
  %i.fh = add nsw i32 %i.fg, -8
  store i32 %i.fh, ptr %i.a, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %.5.3, i64 1 ; 2 uses
  %i.fj = icmp sgt i32 %i.fg, 15
  br i1 %i.fj, label %.lr.ph.i26.3, label %sdefl_put.exit28.3

sdefl_put.exit28.3:                               ; preds = %.lr.ph.i26.3, %sdefl_put.exit28.2
  %.6.3 = phi ptr [ %.6.2, %sdefl_put.exit28.2 ], [ %i.fi, %.lr.ph.i26.3 ]
  %i.fk = ptrtoint ptr %.6.3 to i64
  %i.fl = ptrtoint ptr %1 to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = trunc i64 %i.fm to i32
  ret i32 %i.fn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 -2147483635, -2147483648) i32 @sdefl_bound(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = add nsw i32 %0, 65534
  %i.b = sdiv i32 %i.a, 65535
  %i.c = mul nsw i32 %i.b, 5
  %i.d = add i32 %0, 18
  %i.e = add i32 %i.d, %i.c
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @rprand_set_seed(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %0, -7046029254386353131         ; 2 uses
  %i.b = lshr i64 %i.a, 30
  %i.c = xor i64 %i.b, %i.a
  %i.d = mul i64 %i.c, -4658895280553007687       ; 2 uses
  %i.e = lshr i64 %i.d, 27
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, -7723592293110705685       ; 2 uses
  %i.h = lshr i64 %i.g, 31
  %i.i = xor i64 %i.h, %i.g
  %i.j = trunc i64 %i.i to i32
  store i32 %i.j, ptr @rprand_state.0, align 16
  %i.k = add i64 %0, 4354685564936845354          ; 2 uses
  %i.l = lshr i64 %i.k, 30
  %i.m = xor i64 %i.l, %i.k
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 27
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, -7723592293110705685       ; 2 uses
end_hunk_1
