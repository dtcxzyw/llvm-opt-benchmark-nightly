Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/brotli_bit_stream?download=true
inline.NumInlined: 36
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@StoreTrivialContextMap:bb.a
  %.163 = phi i64 [ 1, %.peel.next ], [ %i.eq, %bb.c ] ; 2 uses
  %i.dh = add i64 %i.an, %.163                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.dh
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !17
  %i.dn = zext i16 %i.dm to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.do = lshr i64 %i.dg, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 %i.do ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !13, !alias.scope !453, !noalias !452
  %i.dr = zext i8 %i.dq to i64
  %i.ds = and i64 %i.dg, 7
  %i.dt = shl nuw nsw i64 %i.dn, %i.ds
  %i.du = or i64 %i.dt, %i.dr
  store i64 %i.du, ptr %i.dp, align 1, !noalias !452
  %i.dv = add i64 %i.dg, %i.dk                    ; 4 uses
  store i64 %i.dv, ptr %4, align 8, !tbaa !12, !alias.scope !452, !noalias !453
  %i.dw = load i8, ptr %i.bx, align 1, !tbaa !13
  %i.dx = zext i8 %i.dw to i64
  %i.dy = load i16, ptr %i.by, align 2, !tbaa !17
  %i.dz = zext i16 %i.dy to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.ea = lshr i64 %i.dv, 3
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 %i.ea ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !13, !alias.scope !455, !noalias !454
  %i.ed = zext i8 %i.ec to i64
  %i.ee = and i64 %i.dv, 7
  %i.ef = shl nuw nsw i64 %i.dz, %i.ee
  %i.eg = or i64 %i.ef, %i.ed
  store i64 %i.eg, ptr %i.eb, align 1, !noalias !454
  %i.eh = add i64 %i.dv, %i.dx                    ; 5 uses
  store i64 %i.eh, ptr %4, align 8, !tbaa !12, !alias.scope !454, !noalias !455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.ei = lshr i64 %i.eh, 3
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 %i.ei ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !13, !alias.scope !457, !noalias !456
  %i.el = zext i8 %i.ek to i64
  %i.em = and i64 %i.eh, 7
  %i.en = shl nuw nsw i64 %i.aq, %i.em
  %i.eo = or i64 %i.en, %i.el
  store i64 %i.eo, ptr %i.ej, align 1, !noalias !456
  %i.ep = add i64 %i.eh, %i.an                    ; 4 uses
  store i64 %i.ep, ptr %4, align 8, !tbaa !12, !alias.scope !456, !noalias !457
  %i.eq = add nuw i64 %.163, 1                    ; 2 uses
  %exitcond64.not = icmp eq i64 %i.eq, %1
  br i1 %exitcond64.not, label %.loopexit, label %bb.c, !llvm.loop !430

.loopexit:                                        ; preds = %bb.c
  %i.er = lshr i64 %i.ep, 3
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 %i.er ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !13, !alias.scope !459, !noalias !460
  %i.eu = zext i8 %i.et to i64
  %i.ev = and i64 %i.ep, 7
  %i.ew = shl nuw nsw i64 1, %i.ev
  %i.ex = or i64 %i.ew, %i.eu
  store i64 %i.ex, ptr %i.es, align 1, !noalias !460
  %i.ey = add i64 %i.eh, %2
  br label %.sink.split

.sink.split:                                      ; preds = %.loopexit, %StoreVarLenUint8.exit.thread
  %.sink = phi i64 [ %i.h, %StoreVarLenUint8.exit.thread ], [ %i.ey, %.loopexit ]
  store i64 %.sink, ptr %4, align 8, !tbaa !12, !noalias !18
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %StoreVarLenUint8.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @EncodeContextMap(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 1, 0) %3, i64 noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1360 ; 2 uses
  %i.d = add i64 %4, -1                           ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %StoreVarLenUint8.exit.thread, label %bb.b

StoreVarLenUint8.exit.thread:                     ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.f = load i64, ptr %6, align 8, !tbaa !12, !alias.scope !508, !noalias !509 ; 2 uses
  %i.g = lshr i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13, !alias.scope !509, !noalias !508
  %i.j = zext i8 %i.i to i64
  store i64 %i.j, ptr %i.h, align 1, !noalias !508
  %i.k = add i64 %i.f, 1
  store i64 %i.k, ptr %6, align 8, !tbaa !12, !noalias !18
  br label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.l = trunc i64 %i.d to i32
  %i.m = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.l, i1 true)
  %i.n = xor i32 %i.m, 31
  %i.o = zext nneg i32 %i.n to i64                ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.p = load i64, ptr %6, align 8, !tbaa !12, !alias.scope !510, !noalias !511 ; 4 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13, !alias.scope !511, !noalias !510
  %i.t = zext i8 %i.s to i64
  %i.u = and i64 %i.p, 7
  %i.v = shl nuw nsw i64 1, %i.u
  %i.w = or i64 %i.v, %i.t
  store i64 %i.w, ptr %i.r, align 1, !noalias !510
  %i.x = add i64 %i.p, 1                          ; 3 uses
  store i64 %i.x, ptr %6, align 8, !tbaa !12, !alias.scope !510, !noalias !511
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.y = lshr i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13, !alias.scope !513, !noalias !512
  %i.ab = zext i8 %i.aa to i64
  %i.ac = and i64 %i.x, 7
  %i.ad = shl nuw nsw i64 %i.o, %i.ac
  %i.ae = or i64 %i.ad, %i.ab
  store i64 %i.ae, ptr %i.z, align 1, !noalias !512
  %i.af = add i64 %i.p, 4                         ; 4 uses
  store i64 %i.af, ptr %6, align 8, !tbaa !12, !alias.scope !512, !noalias !513
  %.neg.i = shl nsw i64 -1, %i.o
  %i.ag = add i64 %.neg.i, %i.d
  %i.ah = lshr i64 %i.af, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 %i.ah ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13, !alias.scope !514, !noalias !515
  %i.ak = zext i8 %i.aj to i64
  %i.al = and i64 %i.af, 7
  %i.am = shl i64 %i.ag, %i.al
  %i.an = or i64 %i.am, %i.ak
  store i64 %i.an, ptr %i.ai, align 1, !noalias !515
  %i.ao = add i64 %i.af, %i.o
  store i64 %i.ao, ptr %6, align 8, !tbaa !12, !noalias !18
  %i.ap = shl i64 %3, 2
  %i.aq = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.ap) #11 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11, !noalias !516
  %i.ar = load i32, ptr %2, align 4, !tbaa !14, !alias.scope !516 ; 3 uses
  %i.as = icmp ugt i64 %3, 1
  br i1 %i.as, label %.lr.ph.i.preheader, label %iter.check

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.at = add i64 %3, -1                          ; 2 uses
  %min.iters.check = icmp ult i64 %3, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader149, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.at, -8                      ; 3 uses
  %i.au = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi123 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.az, %vector.body ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %wide.load = load <4 x i32>, ptr %i.aw, align 4, !tbaa !14, !alias.scope !516
  %wide.load124 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !14, !alias.scope !516
  %i.ay = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.az = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load124, <4 x i32> %vec.phi123) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !475

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ay, <4 x i32> %i.az)
  %i.bb = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %iter.check, label %.lr.ph.i.preheader149

.lr.ph.i.preheader149:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.037.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  %.02536.i.ph = phi i32 [ %i.ar, %.lr.ph.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i

iter.check:                                       ; preds = %.lr.ph.i, %middle.block, %bb.b
  %.025.lcssa.i = phi i32 [ %i.ar, %bb.b ], [ %i.bb, %middle.block ], [ %spec.select.i, %.lr.ph.i ] ; 4 uses
  %i.bc = zext i32 %.025.lcssa.i to i64           ; 2 uses
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 5 uses
  %min.iters.check126 = icmp ult i32 %.025.lcssa.i, 7
  br i1 %min.iters.check126, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check127 = icmp ult i32 %.025.lcssa.i, 31
  br i1 %min.iters.check127, label %vec.epilog.ph, label %vector.ph128

vector.ph128:                                     ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %i.bd, 24
  %n.vec129 = and i64 %i.bd, 8589934560           ; 4 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.ph128, %vector.body130
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next132, %vector.body130 ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph128 ], [ %vec.ind.next, %vector.body130 ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %index131 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <16 x i8> %vec.ind, ptr %i.bf, align 16, !tbaa !13, !noalias !516
  store <16 x i8> %step.add, ptr %i.bg, align 16, !tbaa !13, !noalias !516
  %index.next132 = add nuw i64 %index131, 32      ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.bh = icmp eq i64 %index.next132, %n.vec129
  br i1 %i.bh, label %middle.block133, label %vector.body130, !llvm.loop !476

middle.block133:                                  ; preds = %vector.body130
  %cmp.n134 = icmp eq i64 %i.bd, %n.vec129
  br i1 %cmp.n134, label %.lr.ph.i.preheader.i.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block133
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !517

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec129, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec135 = and i64 %i.bd, 8589934584           ; 3 uses
  %i.bi = trunc i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert136 = insertelement <8 x i8> poison, i8 %i.bi, i64 0
  %broadcast.splat137 = shufflevector <8 x i8> %broadcast.splatinsert136, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i8> %broadcast.splat137, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind139 = phi <8 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next141, %vec.epilog.vector.body ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %index138
  store <8 x i8> %vec.ind139, ptr %i.bj, align 8, !tbaa !13, !noalias !516
  %index.next140 = add nuw i64 %index138, 8       ; 2 uses
  %vec.ind.next141 = add <8 x i8> %vec.ind139, splat (i8 8)
  %i.bk = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !477

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n142 = icmp eq i64 %i.bd, %n.vec135
  br i1 %cmp.n142, label %.lr.ph.i.preheader.i.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.138.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec129, %vec.epilog.iter.check ], [ %n.vec135, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader149, %.lr.ph.i
  %.037.i = phi i64 [ %i.bn, %.lr.ph.i ], [ %.037.i.ph, %.lr.ph.i.preheader149 ] ; 2 uses
  %.02536.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.02536.i.ph, %.lr.ph.i.preheader149 ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.037.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !14, !alias.scope !516
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.bm, i32 %.02536.i) ; 2 uses
  %i.bn = add nuw i64 %.037.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bn, %3
  br i1 %exitcond.not.i, label %iter.check, label %.lr.ph.i, !llvm.loop !478

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.138.i = phi i64 [ %i.bq, %vec.epilog.scalar.ph ], [ %.138.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.bo = trunc i64 %.138.i to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.138.i
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !13, !noalias !516
  %i.bq = add nuw nsw i64 %.138.i, 1
  %exitcond45.not.i = icmp eq i64 %.138.i, %i.bc
  br i1 %exitcond45.not.i, label %.lr.ph.i.preheader.i.preheader, label %vec.epilog.scalar.ph, !llvm.loop !479

.lr.ph.i.preheader.i.preheader:                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block133
  %i.br = add nuw i32 %.025.lcssa.i, 1            ; 2 uses
  %i.bs = zext i32 %i.br to i64                   ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i.preheader.i.preheader, %MoveToFront.exit.i
  %.239.i = phi i64 [ %i.ch, %MoveToFront.exit.i ], [ 0, %.lr.ph.i.preheader.i.preheader ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.239.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !14, !alias.scope !516
  %i.bw = trunc i32 %i.bv to i8                   ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.preheader.i
  %.09.i.i = phi i64 [ %i.ca, %bb.c ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.09.i.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13, !noalias !516
  %i.bz = icmp eq i8 %i.by, %i.bw
  br i1 %i.bz, label %IndexOf.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ca = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ca, %i.bs
  br i1 %exitcond.not.i.i, label %IndexOf.exit.thread31.i, label %.lr.ph.i.i, !llvm.loop !480

IndexOf.exit.thread31.i:                          ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.239.i
  store i32 %i.br, ptr %i.cb, align 4, !tbaa !14, !noalias !516
  %i.cc = load i8, ptr %i.bt, align 1, !tbaa !13, !noalias !516
  br label %.lr.ph.preheader.i.i

IndexOf.exit.i:                                   ; preds = %.lr.ph.i.i
  %i.cd = trunc i64 %.09.i.i to i32
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.239.i
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !14, !noalias !516
  %.not10.i.i = icmp eq i64 %.09.i.i, 0
  br i1 %.not10.i.i, label %MoveToFront.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %IndexOf.exit.i, %IndexOf.exit.thread31.i
  %i.cf = phi i8 [ %i.cc, %IndexOf.exit.thread31.i ], [ %i.bw, %IndexOf.exit.i ]
  %.0.lcssa.i34.i = phi i64 [ %i.bs, %IndexOf.exit.thread31.i ], [ %.09.i.i, %IndexOf.exit.i ]
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i, ptr nonnull align 16 %i.a, i64 %.0.lcssa.i34.i, i1 false), !tbaa !13, !noalias !516
  br label %MoveToFront.exit.i

MoveToFront.exit.i:                               ; preds = %.lr.ph.preheader.i.i, %IndexOf.exit.i
  %i.cg = phi i8 [ %i.cf, %.lr.ph.preheader.i.i ], [ %i.bw, %IndexOf.exit.i ]
  store i8 %i.cg, ptr %i.a, align 16, !tbaa !13, !noalias !516
  %i.ch = add nuw i64 %.239.i, 1                  ; 2 uses
  %exitcond46.not.i = icmp eq i64 %i.ch, %3
  br i1 %exitcond46.not.i, label %MoveToFrontTransform.exit, label %.lr.ph.i.preheader.i, !llvm.loop !481

MoveToFrontTransform.exit:                        ; preds = %MoveToFront.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11, !noalias !516
  %i.ci = trunc i64 %3 to i32                     ; 2 uses
  br label %.preheader78.i

.preheader78.i:                                   ; preds = %.critedge2.i, %MoveToFrontTransform.exit
  %.088.i = phi i32 [ 0, %MoveToFrontTransform.exit ], [ %.068.lcssa.i, %.critedge2.i ] ; 3 uses
  %.06487.i = phi i64 [ 0, %MoveToFrontTransform.exit ], [ %.2.lcssa.i, %.critedge2.i ] ; 2 uses
  %i.cj = add nuw i64 %.06487.i, 1
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 1, 0) %3, i64 %i.cj)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader78.i
  %.180.i = phi i64 [ %.06487.i, %.preheader78.i ], [ %i.cm, %bb.e ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.180.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14, !alias.scope !518, !noalias !519
  %.not75.i = icmp eq i32 %i.cl, 0
  br i1 %.not75.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = add i64 %.180.i, 1                      ; 2 uses
  %exitcond.not.i61 = icmp eq i64 %i.cm, %umax.i
  br i1 %exitcond.not.i61, label %.critedge2.thread.i, label %bb.d, !llvm.loop !486

.critedge.i:                                      ; preds = %bb.d
  %i.cn = icmp ult i64 %.180.i, %3
  br i1 %i.cn, label %.lr.ph.preheader.i, label %.critedge2.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.co = trunc i64 %.180.i to i32
  %i.cp = sub i32 %i.ci, %i.co
  br label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %bb.f, %.lr.ph.preheader.i
  %.282.i = phi i64 [ %i.cu, %bb.f ], [ %.180.i, %.lr.ph.preheader.i ] ; 3 uses
  %.06881.i = phi i32 [ %i.ct, %bb.f ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.282.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !14, !alias.scope !518, !noalias !519
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.f, label %.critedge2.loopexit.i

bb.f:                                             ; preds = %.lr.ph.i64
  %i.ct = add i32 %.06881.i, 1
  %i.cu = add i64 %.282.i, 1                      ; 2 uses
  %exitcond101.not.i = icmp eq i64 %i.cu, %3
  br i1 %exitcond101.not.i, label %.critedge2.loopexit.i, label %.lr.ph.i64, !llvm.loop !487

.critedge2.loopexit.i:                            ; preds = %bb.f, %.lr.ph.i64
  %.068.lcssa.ph.i = phi i32 [ %.06881.i, %.lr.ph.i64 ], [ %i.cp, %bb.f ]
  %.2.lcssa.ph.i = phi i64 [ %.282.i, %.lr.ph.i64 ], [ %3, %bb.f ]
  %i.cv = tail call i32 @llvm.umax.i32(i32 %.068.lcssa.ph.i, i32 %.088.i)
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.loopexit.i, %.critedge.i
  %.068.lcssa.i = phi i32 [ %.088.i, %.critedge.i ], [ %i.cv, %.critedge2.loopexit.i ] ; 2 uses
  %.2.lcssa.i = phi i64 [ %.180.i, %.critedge.i ], [ %.2.lcssa.ph.i, %.critedge2.loopexit.i ] ; 2 uses
  %i.cw = icmp ult i64 %.2.lcssa.i, %3
  br i1 %i.cw, label %.preheader78.i, label %.critedge2.thread.i, !llvm.loop !488

.critedge2.thread.i:                              ; preds = %.critedge2.i, %bb.e
  %.068.lcssa111.i = phi i32 [ %.088.i, %bb.e ], [ %.068.lcssa.i, %.critedge2.i ] ; 2 uses
  %.not.i = icmp eq i32 %.068.lcssa111.i, 0
  %i.cx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.068.lcssa111.i, i1 true)
  %i.cy = xor i32 %i.cx, 31
  %i.cz = tail call i32 @llvm.umin.i32(i32 range(i32 0, 32) %i.cy, i32 6)
  %i.da = select i1 %.not.i, i32 0, i32 %i.cz
  %i.db = freeze i32 %i.da                        ; 8 uses
  %i.dc = shl nuw nsw i32 2, %i.db                ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.db
  %i.dd = xor i32 %notmask.i, -1
  %i.de = shl nuw nsw i32 %i.dd, 9
  %i.df = add nuw nsw i32 %i.de, %i.db
  %invariant.op = sub i32 1, %i.dc
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i, %.critedge2.thread.i
  %.071 = phi i64 [ 0, %.critedge2.thread.i ], [ %.172, %.loopexit.i ]
  %i.dg = phi i64 [ 0, %.critedge2.thread.i ], [ %i.ei, %.loopexit.i ] ; 5 uses
  %.399.i = phi i64 [ 0, %.critedge2.thread.i ], [ %.4.i, %.loopexit.i ] ; 5 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.399.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !14, !alias.scope !518, !noalias !519 ; 2 uses
  %.not73.i = icmp eq i32 %i.di, 0
end_hunk_0
