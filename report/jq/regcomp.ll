Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regcomp?download=true
inline.NumInlined: 305
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@node_char_len1:bb.a
bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.hv = load i32, ptr %2, align 4, !tbaa !166   ; 2 uses
  %i.hw = icmp ugt i32 %i.hv, %.val
  br i1 %i.hw, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 %.val, ptr %2, align 4, !tbaa !166
  %i.hx = load i32, ptr %i.hk, align 8, !tbaa !164
  br label %.sink.split.i231

bb.bs:                                            ; preds = %bb.bq
  %i.hy = icmp ne i32 %i.hv, %.val
  %i.hz = load i32, ptr %i.hk, align 8
  %.not.i230 = icmp eq i32 %i.hz, 0
  %or.cond240 = select i1 %i.hy, i1 true, i1 %.not.i230
  br i1 %or.cond240, label %bb.bt, label %.sink.split.i231

.sink.split.i231:                                 ; preds = %bb.bs, %bb.br
  %.sink.i232 = phi i32 [ %i.hx, %bb.br ], [ 1, %bb.bs ]
  store i32 %.sink.i232, ptr %i.hl, align 4, !tbaa !164
  br label %bb.bt

bb.bt:                                            ; preds = %.sink.split.i231, %bb.bs
  %i.ia = load i32, ptr %i.hc, align 4, !tbaa !155
  %i.ib = icmp ult i32 %i.ia, %.val212
  br i1 %i.ib, label %bb.bu, label %mmcl_alt_merge.exit233

bb.bu:                                            ; preds = %bb.bt
  store i32 %.val212, ptr %i.hc, align 4, !tbaa !155
  br label %mmcl_alt_merge.exit233

mmcl_alt_merge.exit233:                           ; preds = %bb.bt, %bb.bu
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ic = load i32, ptr %i.hg, align 8, !tbaa !101
  %i.id = sext i32 %i.ic to i64
  %i.ie = icmp slt i64 %indvars.iv.next, %i.id
  br i1 %i.ie, label %bb.bn, label %.thread, !llvm.loop !316

.thread:                                          ; preds = %mmcl_alt_merge.exit233, %bb.bn, %bb.g, %bb.e, %.peel.next, %.preheader, %bb.b, %bb.bm, %bb.a, %bb.bj, %bb.ao, %bb.ap, %bb.al, %mmcl_alt_merge.exit227, %bb.ag, %bb.v, %bb.y, %bb.u, %mmcl_multiply.exit, %mmcl_repeat_range_multiply.exit, %._crit_edge, %bb.p, %bb.m, %bb.f, %._crit_edge264, %bb.ad, %bb.ae, %bb.bi, %bb.bh, %bb.bd, %bb.bc, %bb.af
  %.15 = phi i32 [ %i.ha, %bb.bj ], [ -11, %bb.ag ], [ %i.ha, %bb.bm ], [ 0, %._crit_edge264 ], [ -122, %bb.p ], [ 0, %bb.ad ], [ %i.dz, %bb.ae ], [ 0, %bb.af ], [ %i.de, %mmcl_repeat_range_multiply.exit ], [ 0, %bb.bc ], [ 0, %bb.bd ], [ 0, %bb.bh ], [ 0, %bb.bi ], [ %i.ao, %bb.g ], [ %spec.select211, %bb.m ], [ %i.ad, %bb.f ], [ -11, %bb.a ], [ 0, %._crit_edge ], [ %i.de, %bb.y ], [ %i.co, %bb.v ], [ 0, %bb.u ], [ %i.co, %mmcl_multiply.exit ], [ %.10, %mmcl_alt_merge.exit227 ], [ %.7, %bb.ao ], [ %i.eo, %bb.al ], [ %i.fb, %bb.ap ], [ %i.k, %bb.e ], [ %i.g, %.preheader ], [ %i.g, %bb.b ], [ %i.k, %.peel.next ], [ %i.hr, %bb.bn ], [ %i.hr, %mmcl_alt_merge.exit233 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i32 %.15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mmcl_add(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #19 {
bb.a:
  %i.a = load <2 x i32>, ptr %0, align 4, !tbaa !15 ; 3 uses
  %i.b = load <2 x i32>, ptr %1, align 4, !tbaa !15 ; 3 uses
  %i.c = icmp eq <2 x i32> %i.a, splat (i32 -1)
  %i.d = icmp eq <2 x i32> %i.b, splat (i32 -1)
  %i.e = or <2 x i1> %i.c, %i.d
  %i.f = xor <2 x i32> %i.b, splat (i32 -1)
  %i.g = icmp ugt <2 x i32> %i.a, %i.f
  %i.h = or <2 x i1> %i.g, %i.e
  %i.i = add <2 x i32> %i.b, %i.a
  %i.j = select <2 x i1> %i.h, <2 x i32> splat (i32 -1), <2 x i32> %i.i
  store <2 x i32> %i.j, ptr %0, align 4, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !164
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !164
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = phi i32 [ 0, %bb.a ], [ %i.p, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.q, ptr %i.r, align 4, !tbaa !164
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -6, 1) i32 @optimize_nodes(ptr nofree noundef captures(address) %0, ptr noundef nonnull initializes((0, 41), (64, 89), (112, 137), (160, 436)) %1, ptr noundef nonnull %2) unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %3 = alloca %struct.OptNode, align 8            ; 32 uses
  %i.b = ptrtoaddr ptr %3 to i64
  %4 = alloca %struct.OptEnv, align 8             ; 6 uses
  %5 = alloca %struct.OptEnv, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25) %i.e, i8 0, i64 25, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25) %i.f, i8 0, i64 25, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(276) %i.g, i8 0, i64 276, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(41) %1, i8 0, i64 41, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i = load i32, ptr %2, align 8, !tbaa !54 ; 2 uses
  %i.i = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %.val10.i = load i32, ptr %i.i, align 4, !tbaa !53 ; 2 uses
  store i32 %.val9.i, ptr %i.h, align 4, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %.val10.i, ptr %i.j, align 4, !tbaa !53
  store i32 %.val9.i, ptr %i.f, align 4, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i32 %.val10.i, ptr %i.k, align 4, !tbaa !53
  %i.l = load <2 x i32>, ptr %2, align 8, !tbaa !15
  store <2 x i32> %i.l, ptr %i.g, align 4, !tbaa !15
  %i.m = load i32, ptr %0, align 8, !tbaa !27
  %.sink384.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sink384.sroa.gep461 = getelementptr inbounds nuw i8, ptr %3, i64 64
  switch i32 %i.m, label %bb.cm [
    i32 7, label %bb.b
    i32 8, label %.preheader
    i32 0, label %bb.i
    i32 1, label %bb.p
    i32 2, label %bb.w
    i32 6, label %bb.am
    i32 3, label %bb.at
    i32 9, label %bb.av
    i32 4, label %bb.ay
    i32 5, label %bb.bs
    i32 10, label %.critedge2
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !335
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0207 = phi ptr [ %0, %bb.b ], [ %i.ac, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0207, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = call fastcc i32 @optimize_nodes(ptr noundef %i.o, ptr noundef %3, ptr noundef %4) ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.r = load <2 x i32>, ptr %3, align 8, !tbaa !15 ; 3 uses
  %i.s = load <2 x i32>, ptr %4, align 8, !tbaa !15 ; 3 uses
  %i.t = icmp eq <2 x i32> %i.s, splat (i32 -1)
  %i.u = icmp eq <2 x i32> %i.r, splat (i32 -1)
  %i.v = or <2 x i1> %i.u, %i.t
  %i.w = xor <2 x i32> %i.r, splat (i32 -1)
  %i.x = icmp ugt <2 x i32> %i.s, %i.w
  %i.y = or <2 x i1> %i.x, %i.v
  %i.z = add <2 x i32> %i.s, %i.r
  %i.aa = select <2 x i1> %i.y, <2 x i32> splat (i32 -1), <2 x i32> %i.z
  store <2 x i32> %i.aa, ptr %4, align 8, !tbaa !15
  call fastcc void @concat_left_node_opt_info(ptr noundef %i.d, ptr noundef %1, ptr noundef %3)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0207, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27 ; 2 uses
  %.not248 = icmp eq ptr %i.ac, null
  br i1 %.not248, label %.critedge, label %bb.c, !llvm.loop !319

.critedge:                                        ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.critedge2

.preheader:                                       ; preds = %bb.a, %bb.h
  %.0208 = phi ptr [ %i.aj, %bb.h ], [ %0, %bb.a ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0208, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.af = call fastcc i32 @optimize_nodes(ptr noundef %i.ae, ptr noundef %3, ptr noundef %2) ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %.preheader
  %i.ah = icmp eq ptr %.0208, %0
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(436) %1, ptr noundef nonnull readonly align 8 dereferenceable(436) %3, i64 436, i1 false), !tbaa.struct !336
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call fastcc void @alt_merge_node_opt_info(ptr noundef %1, ptr noundef %3, ptr noundef %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.0208, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27 ; 2 uses
  %.not247 = icmp eq ptr %i.aj, null
  br i1 %.not247, label %.critedge2, label %.preheader, !llvm.loop !320

bb.i:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !92 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !91 ; 3 uses
  %i.ao = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = trunc i64 %i.aq to i32                  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.at = icmp ult ptr %i.an, %i.al
  br i1 %i.at, label %.lr.ph31.i, label %._crit_edge.i.thread

.lr.ph31.i:                                       ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  br label %bb.j

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i, %vec.epilog.middle.block446, %middle.block432
  %.lcssa388 = phi ptr [ %i.bw, %vec.epilog.middle.block446 ], [ %i.bq, %middle.block432 ], [ %i.bz, %.lr.ph.i ]
  %indvars.iv.next.i.lcssa = phi i64 [ %i.bv, %vec.epilog.middle.block446 ], [ %i.bp, %middle.block432 ], [ %indvars.iv.next.i, %.lr.ph.i ]
  %i.av = trunc nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %.loopexit.loopexit.i
  %.123.lcssa.i = phi i32 [ %.02229.i, %.preheader.i ], [ %i.av, %.loopexit.loopexit.i ] ; 3 uses
  %.1.lcssa.i = phi ptr [ %.030.i, %.preheader.i ], [ %.lcssa388, %.loopexit.loopexit.i ] ; 2 uses
  %i.aw = icmp ult ptr %.1.lcssa.i, %i.al         ; 2 uses
  %i.ax = icmp slt i32 %.123.lcssa.i, 24
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %i.ay, label %bb.j, label %._crit_edge.i, !llvm.loop !321

bb.j:                                             ; preds = %.loopexit.i, %.lr.ph31.i
  %.030.i = phi ptr [ %i.an, %.lr.ph31.i ], [ %.1.lcssa.i, %.loopexit.i ] ; 10 uses
  %.02229.i = phi i32 [ 0, %.lr.ph31.i ], [ %.123.lcssa.i, %.loopexit.i ] ; 4 uses
  %.030.i417 = ptrtoaddr ptr %.030.i to i64       ; 2 uses
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !66
  %i.ba = tail call i32 %i.az(ptr noundef %.030.i) #24, !inline_history !322 ; 4 uses
  %i.bb = add nsw i32 %i.ba, %.02229.i
  %i.bc = icmp sgt i32 %i.bb, 24
  br i1 %i.bc, label %._crit_edge.thread.i, label %.preheader.i

._crit_edge.thread.i:                             ; preds = %bb.j
  store i32 %.02229.i, ptr %i.as, align 4, !tbaa !64
  br label %concat_opt_exact_str.exit

.preheader.i:                                     ; preds = %bb.j
  %i.bd = icmp sgt i32 %i.ba, 0
  %i.be = icmp ult ptr %.030.i, %i.al
  %i.bf = and i1 %i.be, %i.bd
  br i1 %i.bf, label %iter.check434, label %.loopexit.i

iter.check434:                                    ; preds = %.preheader.i
  %i.bg = sext i32 %.02229.i to i64               ; 7 uses
  %i.bh = xor i64 %.030.i417, -1
  %i.bi = add i64 %i.bh, %i.ao
  %i.bj = add nsw i32 %i.ba, -1
  %i.bk = zext i32 %i.bj to i64
  %umin418 = call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.bk) ; 3 uses
  %i.bl = add nuw nsw i64 %umin418, 1             ; 5 uses
  %min.iters.check419 = icmp samesign ult i64 %umin418, 3
  br i1 %min.iters.check419, label %.lr.ph.i.preheader, label %vector.memcheck420

vector.memcheck420:                               ; preds = %iter.check434
  %6 = add i64 %i.a, %i.bg
  %i.bm = sub i64 %6, %.030.i417
  %i.bn = add i64 %i.bm, 39
  %diff.check421 = icmp ult i64 %i.bn, 31
  br i1 %diff.check421, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check422

vector.main.loop.iter.check422:                   ; preds = %vector.memcheck420
  %min.iters.check423 = icmp samesign ult i64 %umin418, 31
  br i1 %min.iters.check423, label %vec.epilog.ph438, label %vector.ph424

vector.ph424:                                     ; preds = %vector.main.loop.iter.check422
  %i.bo = and i64 %i.bl, 28
  %n.vec425 = and i64 %i.bl, 8589934560           ; 6 uses
  %i.bp = add nsw i64 %n.vec425, %i.bg            ; 2 uses
  %i.bq = getelementptr i8, ptr %.030.i, i64 %n.vec425 ; 2 uses
  %i.br = trunc i64 %n.vec425 to i32
  %invariant.gep473 = getelementptr i8, ptr %i.au, i64 %i.bg
  br label %vector.body426

vector.body426:                                   ; preds = %vector.ph424, %vector.body426
  %index427 = phi i64 [ 0, %vector.ph424 ], [ %index.next431, %vector.body426 ] ; 3 uses
  %next.gep428 = getelementptr i8, ptr %.030.i, i64 %index427 ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep428, i64 16
  %wide.load429 = load <16 x i8>, ptr %next.gep428, align 1, !tbaa !27
  %wide.load430 = load <16 x i8>, ptr %i.bs, align 1, !tbaa !27
  %gep474 = getelementptr i8, ptr %invariant.gep473, i64 %index427 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %gep474, i64 16
  store <16 x i8> %wide.load429, ptr %gep474, align 1, !tbaa !27
  store <16 x i8> %wide.load430, ptr %i.bt, align 1, !tbaa !27
  %index.next431 = add nuw i64 %index427, 32      ; 2 uses
  %i.bu = icmp eq i64 %index.next431, %n.vec425
  br i1 %i.bu, label %middle.block432, label %vector.body426, !llvm.loop !323

middle.block432:                                  ; preds = %vector.body426
  %cmp.n433 = icmp eq i64 %i.bl, %n.vec425
  br i1 %cmp.n433, label %.loopexit.loopexit.i, label %vec.epilog.iter.check435

vec.epilog.iter.check435:                         ; preds = %middle.block432
  %min.epilog.iters.check437 = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check437, label %.lr.ph.i.preheader, label %vec.epilog.ph438, !prof !167

vec.epilog.ph438:                                 ; preds = %vector.main.loop.iter.check422, %vec.epilog.iter.check435
  %vec.epilog.resume.val439 = phi i64 [ %n.vec425, %vec.epilog.iter.check435 ], [ 0, %vector.main.loop.iter.check422 ]
  %n.vec440 = and i64 %i.bl, 8589934588           ; 5 uses
  %i.bv = add nsw i64 %n.vec440, %i.bg            ; 2 uses
  %i.bw = getelementptr i8, ptr %.030.i, i64 %n.vec440 ; 2 uses
  %i.bx = trunc i64 %n.vec440 to i32
  %invariant.gep475 = getelementptr i8, ptr %i.au, i64 %i.bg
  br label %vec.epilog.vector.body441

vec.epilog.vector.body441:                        ; preds = %vec.epilog.vector.body441, %vec.epilog.ph438
  %index442 = phi i64 [ %vec.epilog.resume.val439, %vec.epilog.ph438 ], [ %index.next445, %vec.epilog.vector.body441 ] ; 3 uses
  %next.gep443 = getelementptr i8, ptr %.030.i, i64 %index442
  %wide.load444 = load <4 x i8>, ptr %next.gep443, align 1, !tbaa !27
  %gep476 = getelementptr i8, ptr %invariant.gep475, i64 %index442
  store <4 x i8> %wide.load444, ptr %gep476, align 1, !tbaa !27
  %index.next445 = add nuw i64 %index442, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next445, %n.vec440
  br i1 %i.by, label %vec.epilog.middle.block446, label %vec.epilog.vector.body441, !llvm.loop !324

vec.epilog.middle.block446:                       ; preds = %vec.epilog.vector.body441
  %cmp.n447 = icmp eq i64 %i.bl, %n.vec440
  br i1 %cmp.n447, label %.loopexit.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check434, %vector.memcheck420, %vec.epilog.iter.check435, %vec.epilog.middle.block446
  %indvars.iv.i.ph = phi i64 [ %i.bg, %iter.check434 ], [ %i.bg, %vector.memcheck420 ], [ %i.bp, %vec.epilog.iter.check435 ], [ %i.bv, %vec.epilog.middle.block446 ]
  %.127.i.ph = phi ptr [ %.030.i, %iter.check434 ], [ %.030.i, %vector.memcheck420 ], [ %i.bq, %vec.epilog.iter.check435 ], [ %i.bw, %vec.epilog.middle.block446 ]
  %.02126.i.ph = phi i32 [ 0, %iter.check434 ], [ 0, %vector.memcheck420 ], [ %i.br, %vec.epilog.iter.check435 ], [ %i.bx, %vec.epilog.middle.block446 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.127.i = phi ptr [ %i.bz, %.lr.ph.i ], [ %.127.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02126.i = phi i32 [ %i.cc, %.lr.ph.i ], [ %.02126.i.ph, %.lr.ph.i.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.127.i, i64 1 ; 3 uses
  %i.ca = load i8, ptr %.127.i, align 1, !tbaa !27
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.au, i64 %indvars.iv.i
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !27
  %i.cc = add nuw nsw i32 %.02126.i, 1            ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.ba
  %i.ce = icmp ult ptr %i.bz, %i.al
  %i.cf = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %i.cf, label %.lr.ph.i, label %.loopexit.loopexit.i, !llvm.loop !325

._crit_edge.i:                                    ; preds = %.loopexit.i
  store i32 %.123.lcssa.i, ptr %i.as, align 4, !tbaa !64
  br i1 %i.aw, label %concat_opt_exact_str.exit, label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %bb.i, %._crit_edge.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 1, ptr %i.cg, align 4, !tbaa !168
  br label %concat_opt_exact_str.exit

concat_opt_exact_str.exit:                        ; preds = %._crit_edge.thread.i, %._crit_edge.i, %._crit_edge.i.thread
  %i.ch = icmp sgt i32 %i.ar, 0
  br i1 %i.ch, label %bb.k, label %add_char_opt_map.exit

bb.k:                                             ; preds = %concat_opt_exact_str.exit
  %i.ci = load ptr, ptr %i.am, align 8, !tbaa !91
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !27  ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.cl = zext i8 %i.cj to i64                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !27
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.l, label %add_char_opt_map.exit

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.cm, align 1, !tbaa !27
  %i.cp = icmp sgt i8 %i.cj, -1
  br i1 %i.cp, label %bb.m, label %map_position_value.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cq = icmp eq i8 %i.cj, 0
  br i1 %i.cq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !61
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %map_position_value.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr @map_position_value.Vals, i64 %i.cl
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !63
  %i.cw = sext i16 %i.cv to i32
  br label %map_position_value.exit.i

map_position_value.exit.i:                        ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i258 = phi i32 [ 20, %bb.n ], [ %i.cw, %bb.o ], [ 4, %bb.l ]
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !169
  %i.cz = add nsw i32 %i.cy, %.0.i.i258
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !169
  br label %add_char_opt_map.exit

add_char_opt_map.exit:                            ; preds = %map_position_value.exit.i, %bb.k, %concat_opt_exact_str.exit
  store i32 %i.ar, ptr %1, align 4, !tbaa !54
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ar, ptr %i.da, align 4, !tbaa !53
  br label %.critedge2

bb.p:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !95
  %.not242 = icmp eq ptr %i.dc, null
  br i1 %.not242, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !96
  %i.df = and i32 %i.de, 1
  %.not243 = icmp eq i32 %i.df, 0
  br i1 %.not243, label %.preheader302, label %bb.r

.preheader302:                                    ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.dj = load i32, ptr %i.dg, align 4, !tbaa !15
  %i.dk = and i32 %i.dj, 1
  %.not244.peel = icmp eq i32 %i.dk, 0
  br i1 %.not244.peel, label %.peel.next.preheader, label %map_position_value.exit.i259.peel

.peel.next.preheader:                             ; preds = %map_position_value.exit.i259.peel, %.preheader302
  %.ph = phi i32 [ 0, %.preheader302 ], [ %spec.select, %map_position_value.exit.i259.peel ]
  br label %.peel.next

map_position_value.exit.i259.peel:                ; preds = %.preheader302
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i8 1, ptr %i.dh, align 4, !tbaa !27
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !61
  %i.dn = icmp sgt i32 %i.dm, 1
  %spec.select = select i1 %i.dn, i32 20, i32 5   ; 2 uses
  store i32 %spec.select, ptr %i.di, align 4, !tbaa !169
  br label %.peel.next.preheader

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dp = load <2 x i32>, ptr %i.do, align 8, !tbaa !15
  %i.dq = shufflevector <2 x i32> %i.dp, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.dq, ptr %1, align 4, !tbaa !15
  br label %.critedge2

.peel.next:                                       ; preds = %.peel.next.preheader, %add_char_opt_map.exit261
  %i.dr = phi i32 [ %i.ek, %add_char_opt_map.exit261 ], [ %.ph, %.peel.next.preheader ] ; 4 uses
  %indvars.iv332 = phi i64 [ %indvars.iv.next333, %add_char_opt_map.exit261 ], [ 1, %.peel.next.preheader ] ; 6 uses
  %i.ds = trunc nuw nsw i64 %indvars.iv332 to i32
  %i.dt = lshr i64 %indvars.iv332, 5
  %i.du = and i64 %i.dt, 134217727
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !15
  %i.dx = and i32 %i.ds, 31
  %i.dy = shl nuw i32 1, %i.dx
  %i.dz = and i32 %i.dw, %i.dy
  %.not244 = icmp eq i32 %i.dz, 0
  %i.ea = load i32, ptr %i.dd, align 8, !tbaa !96
  %i.eb = and i32 %i.ea, 1
  %.not246 = icmp eq i32 %i.eb, 0                 ; 2 uses
  br i1 %.not244, label %.critedge252, label %bb.s

bb.s:                                             ; preds = %.peel.next
end_hunk_0
begin_hunk_1_@optimize_nodes:bb.a

bb.aj:                                            ; preds = %bb.ai
  %i.gj = load i32, ptr %i.ey, align 4, !tbaa !61
  %i.gk = icmp sgt i32 %i.gj, 1
  br i1 %i.gk, label %map_position_value.exit.i268, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr @map_position_value.Vals, i64 %i.gd
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !63
  %i.gn = sext i16 %i.gm to i32
  br label %map_position_value.exit.i268

map_position_value.exit.i268:                     ; preds = %bb.ak, %bb.aj, %bb.ah
  %.0.i.i269 = phi i32 [ 20, %bb.aj ], [ %i.gn, %bb.ak ], [ 4, %bb.ah ]
  %i.go = load i32, ptr %i.ez, align 4, !tbaa !169
  %i.gp = add nsw i32 %i.go, %.0.i.i269
  store i32 %i.gp, ptr %i.ez, align 4, !tbaa !169
  br label %add_char_opt_map.exit270

add_char_opt_map.exit270:                         ; preds = %map_position_value.exit.i268, %bb.ag, %.preheader303
  %i.gq = add nuw nsw i32 %.3320, 1               ; 2 uses
  %exitcond331.not = icmp eq i32 %i.gq, %i.et
  br i1 %exitcond331.not, label %.loopexit, label %.preheader303, !llvm.loop !329

bb.al:                                            ; preds = %bb.w
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !61
  br label %.loopexit

.loopexit:                                        ; preds = %add_char_opt_map.exit267, %add_char_opt_map.exit270, %.preheader304, %bb.x, %bb.al
  %.0206 = phi i32 [ 1, %.preheader304 ], [ %i.gs, %bb.al ], [ 1, %bb.x ], [ 1, %add_char_opt_map.exit270 ], [ 1, %add_char_opt_map.exit267 ]
  store i32 %.0206, ptr %1, align 4, !tbaa !54
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.en, ptr %i.gt, align 4, !tbaa !53
  br label %.critedge2

bb.am:                                            ; preds = %bb.a
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !27 ; 4 uses
  %i.gw = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gv)
  %i.gx = icmp eq i32 %i.gw, 1
  br i1 %i.gx, label %.split, label %.critedge2

.split:                                           ; preds = %bb.am
  %i.gy = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.gv, i1 true)
  switch i32 %i.gy, label %.critedge2 [
    i32 0, label %bb.ao
    i32 9, label %bb.an
    i32 8, label %bb.an
    i32 7, label %bb.an
    i32 1, label %bb.an
    i32 2, label %is_left.exit.i
    i32 4, label %is_left.exit.i
    i32 5, label %is_left.exit.i
    i32 6, label %is_left.exit.i
  ]

is_left.exit.i:                                   ; preds = %.split, %.split, %.split, %.split
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.gv, ptr %i.gz, align 4, !tbaa !54
  br label %.critedge2

bb.an:                                            ; preds = %.split, %.split, %.split, %.split
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.gv, ptr %i.ha, align 4, !tbaa !53
  br label %.critedge2

bb.ao:                                            ; preds = %.split
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !27
  %i.hd = call fastcc i32 @optimize_nodes(ptr noundef %i.hc, ptr noundef %3, ptr noundef %2) ; 2 uses
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.ap, label %.critedge2

bb.ap:                                            ; preds = %bb.ao
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !59
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %.sink.split, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !337
  %i.hk = icmp sgt i32 %i.hj, 0
  br i1 %i.hk, label %.sink.split, label %bb.ar

.sink.split:                                      ; preds = %bb.aq, %bb.ap
  %.sink384.sroa.phi = phi ptr [ %.sink384.sroa.gep, %bb.ap ], [ %.sink384.sroa.gep461, %bb.aq ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 4 dereferenceable(48) %.sink384.sroa.phi, i64 48, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %bb.aq
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 0, ptr %i.hl, align 4, !tbaa !338
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !65
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %bb.as, label %.critedge2

bb.as:                                            ; preds = %bb.ar
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(276) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(276) %i.hp, i64 276, i1 false), !tbaa.struct !339
  br label %.critedge2

bb.at:                                            ; preds = %bb.a
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !27
  %i.hs = and i32 %i.hr, 131072
  %.not237 = icmp eq i32 %i.hs, 0
  br i1 %.not237, label %bb.au, label %.critedge2

bb.au:                                            ; preds = %bb.at
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !52
  %i.hv = tail call fastcc i32 @node_min_byte_len(ptr noundef nonnull %0, ptr noundef %i.hu)
  %i.hw = load ptr, ptr %i.ht, align 8, !tbaa !52
  %i.hx = tail call fastcc i32 @node_max_byte_len(ptr noundef nonnull %0, ptr noundef %i.hw)
  store i32 %i.hv, ptr %1, align 4, !tbaa !54
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !53
  br label %.critedge2

bb.av:                                            ; preds = %bb.a
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !27
  %i.ib = and i32 %i.ia, 64
  %.not236 = icmp eq i32 %i.ib, 0
  br i1 %.not236, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %1, align 4, !tbaa !54
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 -1, ptr %i.ic, align 4, !tbaa !53
  br label %.critedge2

bb.ax:                                            ; preds = %bb.av
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !27
  %i.if = tail call fastcc i32 @optimize_nodes(ptr noundef %i.ie, ptr noundef %1, ptr noundef %2)
  br label %.critedge2

bb.ay:                                            ; preds = %bb.a
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !112
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %1, align 4, !tbaa !54
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.ij, align 4, !tbaa !53
  br label %.critedge2

bb.ba:                                            ; preds = %bb.ay
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !27
  %i.im = call fastcc i32 @optimize_nodes(ptr noundef %i.il, ptr noundef %3, ptr noundef %2) ; 2 uses
  %.not228 = icmp eq i32 %i.im, 0
  br i1 %.not228, label %bb.bb, label %.critedge2

bb.bb:                                            ; preds = %bb.ba
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.io = load i32, ptr %i.in, align 8, !tbaa !116 ; 2 uses
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %bb.bc, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bb
  %.pre341 = load i32, ptr %i.ig, align 4, !tbaa !112
  br label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(436) %1, ptr noundef nonnull readonly align 8 dereferenceable(436) %3, i64 436, i1 false), !tbaa.struct !336
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !59
  %i.is = icmp sgt i32 %i.ir, 0
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 8            ; 2 uses
  %i.iv = icmp ne i32 %i.iu, 0
  %or.cond = select i1 %i.is, i1 %i.iv, i1 false
  br i1 %or.cond, label %.preheader307, label %thread-pre-split

.preheader307:                                    ; preds = %bb.bc
  %i.iw = getelementptr i8, ptr %1, i64 36        ; 2 uses
  %i.ix = load i32, ptr %i.in, align 8, !tbaa !116 ; 3 uses
  %.not229312 = icmp slt i32 %i.ix, 2
  br i1 %.not229312, label %.critedge4.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader307
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val257.pre = load i32, ptr %i.iw, align 4, !tbaa !64 ; 2 uses
  %i.je = icmp slt i32 %.val257.pre, 24
  br i1 %i.je, label %.lr.ph395, label %.critedge4

.lr.ph395:                                        ; preds = %.lr.ph
  %i.jf = add i64 %i.b, 39
  br label %bb.be

bb.bd:                                            ; preds = %bb.bf
  %i.jg = icmp slt i32 %.030.lcssa.i, 24
  br i1 %i.jg, label %bb.be, label %.critedge4, !llvm.loop !330

bb.be:                                            ; preds = %.lr.ph395, %bb.bd
  %.4313394 = phi i32 [ 2, %.lr.ph395 ], [ %i.ld, %bb.bd ] ; 3 uses
  %.val257393 = phi i32 [ %.val257.pre, %.lr.ph395 ], [ %.030.lcssa.i, %bb.bd ] ; 2 uses
  %i.jh = phi i32 [ %i.iu, %.lr.ph395 ], [ %i.kw, %bb.bd ]
  %i.ji = load i32, ptr %i.iq, align 4, !tbaa !64 ; 2 uses
  %i.jj = sext i32 %i.ji to i64                   ; 2 uses
  %i.jk = getelementptr inbounds i8, ptr %i.iy, i64 %i.jj ; 4 uses
  %i.jl = icmp sgt i32 %i.ji, 0
  br i1 %i.jl, label %.lr.ph39.i.preheader, label %._crit_edge.i271

.lr.ph39.i.preheader:                             ; preds = %bb.be
  %i.jm = add i64 %i.jf, %i.jj
  br label %.lr.ph39.i

.loopexit.loopexit.i279:                          ; preds = %.lr.ph.i276, %vec.epilog.middle.block, %middle.block
  %.lcssa391 = phi ptr [ %i.kl, %vec.epilog.middle.block ], [ %i.kf, %middle.block ], [ %i.ko, %.lr.ph.i276 ]
  %indvars.iv.next.i278.lcssa = phi i64 [ %i.kk, %vec.epilog.middle.block ], [ %i.ke, %middle.block ], [ %indvars.iv.next.i278, %.lr.ph.i276 ]
  %i.jn = trunc nsw i64 %indvars.iv.next.i278.lcssa to i32
  br label %.loopexit.i273

.loopexit.i273:                                   ; preds = %.preheader.i272, %.loopexit.loopexit.i279
  %.131.lcssa.i = phi i32 [ %.03037.i, %.preheader.i272 ], [ %i.jn, %.loopexit.loopexit.i279 ] ; 2 uses
  %.1.lcssa.i274 = phi ptr [ %.038.i, %.preheader.i272 ], [ %.lcssa391, %.loopexit.loopexit.i279 ] ; 3 uses
  %i.jo = icmp ult ptr %.1.lcssa.i274, %i.jk
  br i1 %i.jo, label %.lr.ph39.i, label %._crit_edge.i271.loopexit, !llvm.loop !1

.lr.ph39.i:                                       ; preds = %.lr.ph39.i.preheader, %.loopexit.i273
  %.038.i = phi ptr [ %.1.lcssa.i274, %.loopexit.i273 ], [ %i.iy, %.lr.ph39.i.preheader ] ; 11 uses
  %.03037.i = phi i32 [ %.131.lcssa.i, %.loopexit.i273 ], [ %.val257393, %.lr.ph39.i.preheader ] ; 4 uses
  %.038.i403 = ptrtoaddr ptr %.038.i to i64       ; 2 uses
  %i.jp = load ptr, ptr %i.d, align 8, !tbaa !66
  %i.jq = call i32 %i.jp(ptr noundef %.038.i) #24, !inline_history !2 ; 4 uses
  %i.jr = add nsw i32 %i.jq, %.03037.i
  %i.js = icmp slt i32 %i.jr, 25                  ; 2 uses
  br i1 %i.js, label %.preheader.i272, label %._crit_edge.i271.loopexit

.preheader.i272:                                  ; preds = %.lr.ph39.i
  %i.jt = icmp sgt i32 %i.jq, 0
  %i.ju = icmp ult ptr %.038.i, %i.jk
  %i.jv = select i1 %i.jt, i1 %i.ju, i1 false
  br i1 %i.jv, label %iter.check, label %.loopexit.i273

iter.check:                                       ; preds = %.preheader.i272
  %i.jw = sext i32 %.03037.i to i64               ; 7 uses
  %i.jx = sub i64 %i.jm, %.038.i403
  %i.jy = add nsw i32 %i.jq, -1
  %i.jz = zext i32 %i.jy to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.jx, i64 %i.jz) ; 3 uses
  %i.ka = add nuw nsw i64 %umin, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin, 3
  br i1 %min.iters.check, label %.lr.ph.i276.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %7 = add i64 %i.a, %i.jw
  %i.kb = sub i64 %7, %.038.i403
  %i.kc = add i64 %i.kb, 39
  %diff.check = icmp ult i64 %i.kc, 31
  br i1 %diff.check, label %.lr.ph.i276.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check404 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check404, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kd = and i64 %i.ka, 28
  %n.vec = and i64 %i.ka, 8589934560              ; 6 uses
  %i.ke = add nsw i64 %n.vec, %i.jw               ; 2 uses
  %i.kf = getelementptr i8, ptr %.038.i, i64 %n.vec ; 2 uses
  %i.kg = trunc i64 %n.vec to i32
  %invariant.gep = getelementptr i8, ptr %i.iz, i64 %i.jw
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.038.i, i64 %index ; 2 uses
  %i.kh = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !27
  %wide.load405 = load <16 x i8>, ptr %i.kh, align 1, !tbaa !27
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !27
  store <16 x i8> %wide.load405, ptr %i.ki, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kj = icmp eq i64 %index.next, %n.vec
  br i1 %i.kj, label %middle.block, label %vector.body, !llvm.loop !331

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ka, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i279, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i276.preheader, label %vec.epilog.ph, !prof !167

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec406 = and i64 %i.ka, 8589934588           ; 5 uses
  %i.kk = add nsw i64 %n.vec406, %i.jw            ; 2 uses
  %i.kl = getelementptr i8, ptr %.038.i, i64 %n.vec406 ; 2 uses
  %i.km = trunc i64 %n.vec406 to i32
  %invariant.gep471 = getelementptr i8, ptr %i.iz, i64 %i.jw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index407 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next410, %vec.epilog.vector.body ] ; 3 uses
  %next.gep408 = getelementptr i8, ptr %.038.i, i64 %index407
  %wide.load409 = load <4 x i8>, ptr %next.gep408, align 1, !tbaa !27
  %gep472 = getelementptr i8, ptr %invariant.gep471, i64 %index407
  store <4 x i8> %wide.load409, ptr %gep472, align 1, !tbaa !27
  %index.next410 = add nuw i64 %index407, 4       ; 2 uses
  %i.kn = icmp eq i64 %index.next410, %n.vec406
  br i1 %i.kn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !332

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n411 = icmp eq i64 %i.ka, %n.vec406
  br i1 %cmp.n411, label %.loopexit.loopexit.i279, label %.lr.ph.i276.preheader

.lr.ph.i276.preheader:                            ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i277.ph = phi i64 [ %i.jw, %iter.check ], [ %i.jw, %vector.memcheck ], [ %i.ke, %vec.epilog.iter.check ], [ %i.kk, %vec.epilog.middle.block ]
  %.135.i.ph = phi ptr [ %.038.i, %iter.check ], [ %.038.i, %vector.memcheck ], [ %i.kf, %vec.epilog.iter.check ], [ %i.kl, %vec.epilog.middle.block ]
  %.02934.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.kg, %vec.epilog.iter.check ], [ %i.km, %vec.epilog.middle.block ]
  br label %.lr.ph.i276

.lr.ph.i276:                                      ; preds = %.lr.ph.i276.preheader, %.lr.ph.i276
  %indvars.iv.i277 = phi i64 [ %indvars.iv.next.i278, %.lr.ph.i276 ], [ %indvars.iv.i277.ph, %.lr.ph.i276.preheader ] ; 2 uses
  %.135.i = phi ptr [ %i.ko, %.lr.ph.i276 ], [ %.135.i.ph, %.lr.ph.i276.preheader ] ; 2 uses
  %.02934.i = phi i32 [ %i.kr, %.lr.ph.i276 ], [ %.02934.i.ph, %.lr.ph.i276.preheader ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.135.i, i64 1 ; 3 uses
  %i.kp = load i8, ptr %.135.i, align 1, !tbaa !27
  %indvars.iv.next.i278 = add nsw i64 %indvars.iv.i277, 1 ; 2 uses
  %i.kq = getelementptr inbounds i8, ptr %i.iz, i64 %indvars.iv.i277
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !27
  %i.kr = add nuw nsw i32 %.02934.i, 1            ; 2 uses
  %i.ks = icmp slt i32 %i.kr, %i.jq
  %i.kt = icmp ult ptr %i.ko, %i.jk
  %i.ku = select i1 %i.ks, i1 %i.kt, i1 false
  br i1 %i.ku, label %.lr.ph.i276, label %.loopexit.loopexit.i279, !llvm.loop !333

._crit_edge.i271.loopexit:                        ; preds = %.loopexit.i273, %.lr.ph39.i
  %.030.lcssa.i.ph = phi i32 [ %.131.lcssa.i, %.loopexit.i273 ], [ %.03037.i, %.lr.ph39.i ]
  %.0.lcssa.i.ph = phi ptr [ %.1.lcssa.i274, %.loopexit.i273 ], [ %.038.i, %.lr.ph39.i ]
  %.pre = load i32, ptr %i.it, align 8
  br label %._crit_edge.i271

._crit_edge.i271:                                 ; preds = %._crit_edge.i271.loopexit, %bb.be
  %i.kv = phi i32 [ %i.jh, %bb.be ], [ %.pre, %._crit_edge.i271.loopexit ]
  %.030.lcssa.i = phi i32 [ %.val257393, %bb.be ], [ %.030.lcssa.i.ph, %._crit_edge.i271.loopexit ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.iy, %bb.be ], [ %.0.lcssa.i.ph, %._crit_edge.i271.loopexit ]
  %.not231 = phi i1 [ true, %bb.be ], [ %i.js, %._crit_edge.i271.loopexit ]
  %i.kw = freeze i32 %i.kv                        ; 2 uses
  store i32 %.030.lcssa.i, ptr %i.iw, align 4, !tbaa !64
  %i.kx = icmp eq ptr %.0.lcssa.i, %i.jk
  %.fr.i = select i1 %i.kx, i32 %i.kw, i32 0      ; 2 uses
  store i32 %.fr.i, ptr %i.ja, align 4, !tbaa !168
  %i.ky = load i32, ptr %i.jb, align 4, !tbaa !54
  %i.kz = load i32, ptr %i.jc, align 4, !tbaa !53
  %i.la = load i32, ptr %i.jd, align 4, !tbaa !53
  %i.lb = and i32 %i.la, 2
  %storemerge.i.i = or i32 %i.lb, %i.kz
  %.not.i = icmp eq i32 %.fr.i, 0
  %i.lc = select i1 %.not.i, i32 0, i32 %storemerge.i.i
  %.sroa.5.0.insert.ext.i = zext i32 %i.lc to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ky to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.jb, align 4, !tbaa !15
  %.pre340.pre = load i32, ptr %i.in, align 8, !tbaa !116 ; 4 uses
  br i1 %.not231, label %bb.bf, label %.critedge4

bb.bf:                                            ; preds = %._crit_edge.i271
  %i.ld = add nuw nsw i32 %.4313394, 1            ; 3 uses
  %.not229.not = icmp slt i32 %.4313394, %.pre340.pre
  br i1 %.not229.not, label %bb.bd, label %..critedge4_crit_edge397, !llvm.loop !330

..critedge4_crit_edge397:                         ; preds = %bb.bf
  br label %.critedge4, !llvm.loop !330

.critedge4:                                       ; preds = %._crit_edge.i271, %bb.bd, %..critedge4_crit_edge397, %.lr.ph
  %.pre340 = phi i32 [ %i.ix, %.lr.ph ], [ %.pre340.pre, %..critedge4_crit_edge397 ], [ %.pre340.pre, %bb.bd ], [ %.pre340.pre, %._crit_edge.i271 ] ; 3 uses
  %.4.lcssa.ph = phi i32 [ 2, %.lr.ph ], [ %i.ld, %..critedge4_crit_edge397 ], [ %.4313394, %._crit_edge.i271 ], [ %i.ld, %bb.bd ]
  %i.le = icmp slt i32 %.4.lcssa.ph, %.pre340
  br i1 %i.le, label %bb.bg, label %.critedge4.thread

bb.bg:                                            ; preds = %.critedge4
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.lf, align 4, !tbaa !170
  br label %.critedge4.thread

thread-pre-split:                                 ; preds = %bb.bc
  %.pr = load i32, ptr %i.in, align 8, !tbaa !116
  br label %.critedge4.thread

.critedge4.thread:                                ; preds = %.preheader307, %thread-pre-split, %bb.bg, %.critedge4
  %i.lg = phi i32 [ %.pr, %thread-pre-split ], [ %.pre340, %bb.bg ], [ %.pre340, %.critedge4 ], [ %i.ix, %.preheader307 ] ; 4 uses
  %i.lh = load i32, ptr %i.ig, align 4, !tbaa !112 ; 3 uses
  %.not232 = icmp eq i32 %i.lg, %i.lh
  br i1 %.not232, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.critedge4.thread
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.li, align 4, !tbaa !170
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 0, ptr %i.lj, align 4, !tbaa !171
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.critedge4.thread
  %i.lk = icmp sgt i32 %i.lg, 1
  br i1 %i.lk, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 0, ptr %i.ll, align 4, !tbaa !171
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge, %bb.bi, %bb.bj
  %i.lm = phi i32 [ %i.io, %._crit_edge ], [ %i.lg, %bb.bi ], [ %i.lg, %bb.bj ] ; 3 uses
  %i.ln = phi i32 [ %.pre341, %._crit_edge ], [ %i.lh, %bb.bi ], [ %i.lh, %bb.bj ] ; 4 uses
  switch i32 %i.ln, label %bb.bq [
    i32 -1, label %bb.bl
    i32 0, label %distance_multiply.exit
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.lo = load i32, ptr %i.i, align 4, !tbaa !340
  %i.lp = icmp eq i32 %i.lo, 0
  br i1 %i.lp, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.lq = load ptr, ptr %i.ik, align 8, !tbaa !27 ; 3 uses
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !27
  %i.ls = icmp eq i32 %i.lr, 2
  br i1 %i.ls, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !27
  %i.lv = icmp eq i32 %i.lu, -1
  br i1 %i.lv, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !115
  %.not233 = icmp eq i32 %i.lx, 0
  br i1 %.not233, label %bb.bp, label %.sink.split385

.sink.split385:                                   ; preds = %bb.bo
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !27
  %i.ma = and i32 %i.lz, 4194304
  %.not234 = icmp eq i32 %i.ma, 0
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !54
  %. = select i1 %.not234, i32 16384, i32 32768
  %i.md = or i32 %i.mc, %.
  store i32 %i.md, ptr %i.mb, align 4, !tbaa !54
  br label %bb.bp
end_hunk_1
begin_hunk_2_@select_opt_exact:bb.a
  %.0.i28 = phi i32 [ 20, %bb.i ], [ %i.ad, %bb.j ], [ 4, %map_position_value.exit ] ; 2 uses
  %i.ae = icmp sgt i32 %i.b, 1
  %i.af = add nsw i32 %.0.i28, 5
  %spec.select = select i1 %i.ae, i32 %i.af, i32 %.0.i28
  %i.ag = icmp sgt i32 %i.d, 1
  %i.ah = add nsw i32 %.0.i, 5
  %spec.select27 = select i1 %i.ag, i32 %i.ah, i32 %.0.i
  br label %bb.k

bb.k:                                             ; preds = %map_position_value.exit29, %bb.c
  %.1 = phi i32 [ %i.b, %bb.c ], [ %spec.select, %map_position_value.exit29 ] ; 2 uses
  %.0 = phi i32 [ %i.d, %bb.c ], [ %spec.select27, %map_position_value.exit29 ] ; 2 uses
  %i.ai = shl nuw nsw i32 %.1, 1                  ; 2 uses
  %i.aj = shl nuw nsw i32 %.0, 1                  ; 2 uses
  %i.ak = icmp slt i32 %.0, 1
  br i1 %i.ak, label %comp_distance_value.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = icmp slt i32 %.1, 1
  br i1 %i.al, label %comp_distance_value.exit.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !53 ; 2 uses
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %distance_value.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load i32, ptr %1, align 4, !tbaa !54
  %i.aq = sub i32 %i.an, %i.ap                    ; 2 uses
  %i.ar = icmp ult i32 %i.aq, 100
  br i1 %i.ar, label %bb.o, label %distance_value.exit.i

bb.o:                                             ; preds = %bb.n
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @distance_value.dist_vals, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !63
  %i.av = sext i16 %i.au to i32
  %i.aw = mul nsw i32 %i.ai, %i.av
  br label %distance_value.exit.i

distance_value.exit.i:                            ; preds = %bb.o, %bb.n, %bb.m
  %.0.i.i = phi i32 [ 0, %bb.m ], [ %i.aw, %bb.o ], [ %i.ai, %bb.n ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !53 ; 2 uses
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %distance_value.exit21.i, label %bb.p

bb.p:                                             ; preds = %distance_value.exit.i
  %i.ba = load i32, ptr %2, align 4, !tbaa !54
  %i.bb = sub i32 %i.ay, %i.ba                    ; 2 uses
  %i.bc = icmp ult i32 %i.bb, 100
  br i1 %i.bc, label %bb.q, label %distance_value.exit21.i

bb.q:                                             ; preds = %bb.p
  %i.bd = zext nneg i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr @distance_value.dist_vals, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !63
  %i.bg = sext i16 %i.bf to i32
  %i.bh = mul nsw i32 %i.aj, %i.bg
  br label %distance_value.exit21.i

distance_value.exit21.i:                          ; preds = %bb.q, %bb.p, %distance_value.exit.i
  %.0.i20.i = phi i32 [ 0, %distance_value.exit.i ], [ %i.bh, %bb.q ], [ %i.aj, %bb.p ] ; 2 uses
  %i.bi = icmp sgt i32 %.0.i20.i, %.0.i.i
  br i1 %i.bi, label %comp_distance_value.exit.sink.split, label %bb.r

bb.r:                                             ; preds = %distance_value.exit21.i
  %i.bj = icmp slt i32 %.0.i20.i, %.0.i.i
  br i1 %i.bj, label %comp_distance_value.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = load i32, ptr %2, align 4, !tbaa !54
  %i.bl = load i32, ptr %1, align 4, !tbaa !54
  %i.bm = icmp ult i32 %i.bk, %i.bl
  br i1 %i.bm, label %comp_distance_value.exit.sink.split, label %comp_distance_value.exit

comp_distance_value.exit.sink.split:              ; preds = %distance_value.exit21.i, %bb.l, %bb.s, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull readonly align 4 dereferenceable(48) %2, i64 48, i1 false)
  br label %comp_distance_value.exit

comp_distance_value.exit:                         ; preds = %comp_distance_value.exit.sink.split, %bb.s, %bb.r, %bb.k, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @concat_left_node_opt_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull %2) unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !69
  %i.h = load i32, ptr %i.c, align 4, !tbaa !54   ; 2 uses
  %i.i = icmp ne i32 %i.e, 0                      ; 2 uses
  br i1 %i.i, label %concat_opt_anc_info.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %i.l = or i32 %i.k, %i.h
  br label %concat_opt_anc_info.exit

concat_opt_anc_info.exit:                         ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %i.l, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !53
  %i.o = icmp eq i32 %i.g, 0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !53   ; 2 uses
  %i.r = and i32 %i.q, 2
  %.pn.i = select i1 %i.o, i32 %i.q, i32 %i.r
  %storemerge.i = or i32 %.pn.i, %i.n             ; 3 uses
  %.sroa.10.0.insert.ext92 = zext i32 %storemerge.i to i64
  %.sroa.10.0.insert.shift93 = shl nuw i64 %.sroa.10.0.insert.ext92, 32
  %.sroa.0.0.insert.ext89 = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert91 = or disjoint i64 %.sroa.10.0.insert.shift93, %.sroa.0.0.insert.ext89
  store i64 %.sroa.0.0.insert.insert91, ptr %i.c, align 4, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !59   ; 3 uses
  %i.v = icmp slt i32 %i.u, 1                     ; 2 uses
  %brmerge = or i1 %i.i, %i.v
  br i1 %brmerge, label %bb.d, label %bb.c

bb.c:                                             ; preds = %concat_opt_anc_info.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.x = load i32, ptr %i.f, align 4, !tbaa !69
  %i.y = load i32, ptr %i.w, align 4, !tbaa !54
  %i.z = or i32 %i.y, %.sroa.0.0
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !53
  %i.ac = icmp eq i32 %i.x, 0
  %i.ad = and i32 %storemerge.i, 2
  %.pn.i60 = select i1 %i.ac, i32 %storemerge.i, i32 %i.ad
  %storemerge.i61 = or i32 %.pn.i60, %i.ab
  %.sroa.10.0.insert.ext = zext i32 %storemerge.i61 to i64
  %.sroa.10.0.insert.shift = shl nuw i64 %.sroa.10.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.z to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.10.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.w, align 4, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %concat_opt_anc_info.exit, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !65
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ah = load i32, ptr %i.d, align 4, !tbaa !69
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !349
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr %i.c, align 4, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !350
  %i.ap = or i32 %i.ao, %i.am
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !350
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !170
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !171
  %i.aw = load i32, ptr %i.f, align 4, !tbaa !69
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.au, align 4, !tbaa !171
  store i32 0, ptr %i.ar, align 4, !tbaa !170
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.v, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not54 = icmp eq i32 %i.as, 0
  br i1 %.not54, label %bb.n, label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ay = zext nneg i32 %i.u to i64               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bd = add i64 %i.a, %i.ay
  %i.be = add i64 %i.bd, 39
  br label %bb.l

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.lcssa126 = phi ptr [ %i.cd, %vec.epilog.middle.block ], [ %i.bx, %middle.block ], [ %i.cg, %.lr.ph.i ]
  %indvars.iv.next.i.lcssa = phi i64 [ %i.cc, %vec.epilog.middle.block ], [ %i.bw, %middle.block ], [ %indvars.iv.next.i, %.lr.ph.i ]
  %i.bf = trunc nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %.loopexit.loopexit.i
  %.131.lcssa.i = phi i32 [ %.03037.i, %.preheader.i ], [ %i.bf, %.loopexit.loopexit.i ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.038.i, %.preheader.i ], [ %.lcssa126, %.loopexit.loopexit.i ] ; 3 uses
  %i.bg = icmp ult ptr %.1.lcssa.i, %i.az
  br i1 %i.bg, label %bb.l, label %._crit_edge.i, !llvm.loop !1

bb.l:                                             ; preds = %.loopexit.i, %.lr.ph39.i
  %.038.i = phi ptr [ %i.ax, %.lr.ph39.i ], [ %.1.lcssa.i, %.loopexit.i ] ; 11 uses
  %.03037.i = phi i32 [ %i.bb, %.lr.ph39.i ], [ %.131.lcssa.i, %.loopexit.i ] ; 4 uses
  %.038.i128 = ptrtoaddr ptr %.038.i to i64       ; 2 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !66
  %i.bi = tail call i32 %i.bh(ptr noundef %.038.i) #24, !inline_history !2 ; 4 uses
  %i.bj = add nsw i32 %i.bi, %.03037.i
  %i.bk = icmp sgt i32 %i.bj, 24
  br i1 %i.bk, label %._crit_edge.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %i.bl = icmp sgt i32 %i.bi, 0
  %i.bm = icmp ult ptr %.038.i, %i.az
  %i.bn = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %i.bn, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %.preheader.i
  %i.bo = sext i32 %.03037.i to i64               ; 7 uses
  %i.bp = sub i64 %i.be, %.038.i128
  %i.bq = add nsw i32 %i.bi, -1
  %i.br = zext i32 %i.bq to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.br) ; 3 uses
  %i.bs = add nuw nsw i64 %umin, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin, 3
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %3 = add i64 %i.b, %i.bo
  %i.bt = sub i64 %3, %.038.i128
  %i.bu = add i64 %i.bt, 39
  %diff.check = icmp ult i64 %i.bu, 31
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check129 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check129, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bv = and i64 %i.bs, 28
  %n.vec = and i64 %i.bs, 8589934560              ; 6 uses
  %i.bw = add nsw i64 %n.vec, %i.bo               ; 2 uses
  %i.bx = getelementptr i8, ptr %.038.i, i64 %n.vec ; 2 uses
  %i.by = trunc i64 %n.vec to i32
  %invariant.gep = getelementptr i8, ptr %i.bc, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.038.i, i64 %index ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !27
  %wide.load130 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !27
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !27
  store <16 x i8> %wide.load130, ptr %i.ca, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !167

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec131 = and i64 %i.bs, 8589934588           ; 5 uses
  %i.cc = add nsw i64 %n.vec131, %i.bo            ; 2 uses
  %i.cd = getelementptr i8, ptr %.038.i, i64 %n.vec131 ; 2 uses
  %i.ce = trunc i64 %n.vec131 to i32
  %invariant.gep184 = getelementptr i8, ptr %i.bc, i64 %i.bo
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index132 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next135, %vec.epilog.vector.body ] ; 3 uses
  %next.gep133 = getelementptr i8, ptr %.038.i, i64 %index132
  %wide.load134 = load <4 x i8>, ptr %next.gep133, align 1, !tbaa !27
  %gep185 = getelementptr i8, ptr %invariant.gep184, i64 %index132
  store <4 x i8> %wide.load134, ptr %gep185, align 1, !tbaa !27
  %index.next135 = add nuw i64 %index132, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next135, %n.vec131
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !344

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n136 = icmp eq i64 %i.bs, %n.vec131
  br i1 %cmp.n136, label %.loopexit.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.bo, %iter.check ], [ %i.bo, %vector.memcheck ], [ %i.bw, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ]
  %.135.i.ph = phi ptr [ %.038.i, %iter.check ], [ %.038.i, %vector.memcheck ], [ %i.bx, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ]
  %.02934.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.by, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.135.i = phi ptr [ %i.cg, %.lr.ph.i ], [ %.135.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02934.i = phi i32 [ %i.cj, %.lr.ph.i ], [ %.02934.i.ph, %.lr.ph.i.preheader ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.135.i, i64 1 ; 3 uses
  %i.ch = load i8, ptr %.135.i, align 1, !tbaa !27
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.bc, i64 %indvars.iv.i
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !27
  %i.cj = add nuw nsw i32 %.02934.i, 1            ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.bi
  %i.cl = icmp ult ptr %i.cg, %i.az
  %i.cm = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %i.cm, label %.lr.ph.i, label %.loopexit.loopexit.i, !llvm.loop !345

._crit_edge.i:                                    ; preds = %bb.l, %.loopexit.i
  %.030.lcssa.i.ph = phi i32 [ %.03037.i, %bb.l ], [ %.131.lcssa.i, %.loopexit.i ]
  %.0.lcssa.i.ph = phi ptr [ %.038.i, %bb.l ], [ %.1.lcssa.i, %.loopexit.i ]
  store i32 %.030.lcssa.i.ph, ptr %i.ba, align 4, !tbaa !64
  %i.cn = icmp eq ptr %.0.lcssa.i.ph, %i.az
  br i1 %i.cn, label %bb.m, label %concat_opt_exact.exit

bb.m:                                             ; preds = %._crit_edge.i
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !168
  %i.cq = freeze i32 %i.cp
  br label %concat_opt_exact.exit

concat_opt_exact.exit:                            ; preds = %._crit_edge.i, %bb.m
  %.fr.i = phi i32 [ %i.cq, %bb.m ], [ 0, %._crit_edge.i ] ; 2 uses
  store i32 %.fr.i, ptr %i.ar, align 4, !tbaa !168
  br label %.sink.split

bb.n:                                             ; preds = %bb.k
  %.not55 = icmp eq i32 %i.av, 0
  br i1 %.not55, label %bb.q, label %.lr.ph39.i74

.lr.ph39.i74:                                     ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.cs = zext nneg i32 %i.u to i64               ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !64
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.cx = add i64 %i.a, %i.cs
  %i.cy = add i64 %i.cx, 39
  br label %bb.o

.loopexit.loopexit.i87:                           ; preds = %.lr.ph.i82, %vec.epilog.middle.block171, %middle.block157
  %.lcssa = phi ptr [ %i.dx, %vec.epilog.middle.block171 ], [ %i.dr, %middle.block157 ], [ %i.ea, %.lr.ph.i82 ]
  %indvars.iv.next.i86.lcssa = phi i64 [ %i.dw, %vec.epilog.middle.block171 ], [ %i.dq, %middle.block157 ], [ %indvars.iv.next.i86, %.lr.ph.i82 ]
  %i.cz = trunc nsw i64 %indvars.iv.next.i86.lcssa to i32
  br label %.loopexit.i78

.loopexit.i78:                                    ; preds = %.preheader.i77, %.loopexit.loopexit.i87
  %.131.lcssa.i79 = phi i32 [ %.03037.i76, %.preheader.i77 ], [ %i.cz, %.loopexit.loopexit.i87 ] ; 2 uses
  %.1.lcssa.i80 = phi ptr [ %.038.i75, %.preheader.i77 ], [ %.lcssa, %.loopexit.loopexit.i87 ] ; 3 uses
  %i.da = icmp ult ptr %.1.lcssa.i80, %i.ct
  br i1 %i.da, label %bb.o, label %._crit_edge.i62, !llvm.loop !1

bb.o:                                             ; preds = %.loopexit.i78, %.lr.ph39.i74
  %.038.i75 = phi ptr [ %i.cr, %.lr.ph39.i74 ], [ %.1.lcssa.i80, %.loopexit.i78 ] ; 11 uses
  %.03037.i76 = phi i32 [ %i.cv, %.lr.ph39.i74 ], [ %.131.lcssa.i79, %.loopexit.i78 ] ; 4 uses
  %.038.i75142 = ptrtoaddr ptr %.038.i75 to i64   ; 2 uses
  %i.db = load ptr, ptr %0, align 8, !tbaa !66
  %i.dc = tail call i32 %i.db(ptr noundef %.038.i75) #24, !inline_history !2 ; 4 uses
  %i.dd = add nsw i32 %i.dc, %.03037.i76
  %i.de = icmp sgt i32 %i.dd, 24
  br i1 %i.de, label %._crit_edge.i62, label %.preheader.i77

.preheader.i77:                                   ; preds = %bb.o
  %i.df = icmp sgt i32 %i.dc, 0
  %i.dg = icmp ult ptr %.038.i75, %i.ct
  %i.dh = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %i.dh, label %iter.check159, label %.loopexit.i78

iter.check159:                                    ; preds = %.preheader.i77
  %i.di = sext i32 %.03037.i76 to i64             ; 7 uses
  %i.dj = sub i64 %i.cy, %.038.i75142
  %i.dk = add nsw i32 %i.dc, -1
  %i.dl = zext i32 %i.dk to i64
  %umin143 = tail call i64 @llvm.umin.i64(i64 %i.dj, i64 %i.dl) ; 3 uses
  %i.dm = add nuw nsw i64 %umin143, 1             ; 5 uses
  %min.iters.check144 = icmp samesign ult i64 %umin143, 3
  br i1 %min.iters.check144, label %.lr.ph.i82.preheader, label %vector.memcheck145

vector.memcheck145:                               ; preds = %iter.check159
  %4 = add i64 %i.b, %i.di
  %i.dn = sub i64 %4, %.038.i75142
  %i.do = add i64 %i.dn, 87
  %diff.check146 = icmp ult i64 %i.do, 31
  br i1 %diff.check146, label %.lr.ph.i82.preheader, label %vector.main.loop.iter.check147

vector.main.loop.iter.check147:                   ; preds = %vector.memcheck145
  %min.iters.check148 = icmp samesign ult i64 %umin143, 31
  br i1 %min.iters.check148, label %vec.epilog.ph163, label %vector.ph149

vector.ph149:                                     ; preds = %vector.main.loop.iter.check147
  %i.dp = and i64 %i.dm, 28
  %n.vec150 = and i64 %i.dm, 8589934560           ; 6 uses
  %i.dq = add nsw i64 %n.vec150, %i.di            ; 2 uses
  %i.dr = getelementptr i8, ptr %.038.i75, i64 %n.vec150 ; 2 uses
  %i.ds = trunc i64 %n.vec150 to i32
  %invariant.gep186 = getelementptr i8, ptr %i.cw, i64 %i.di
  br label %vector.body151

vector.body151:                                   ; preds = %vector.ph149, %vector.body151
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next156, %vector.body151 ] ; 3 uses
  %next.gep153 = getelementptr i8, ptr %.038.i75, i64 %index152 ; 2 uses
  %i.dt = getelementptr i8, ptr %next.gep153, i64 16
  %wide.load154 = load <16 x i8>, ptr %next.gep153, align 1, !tbaa !27
  %wide.load155 = load <16 x i8>, ptr %i.dt, align 1, !tbaa !27
  %gep187 = getelementptr i8, ptr %invariant.gep186, i64 %index152 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %gep187, i64 16
  store <16 x i8> %wide.load154, ptr %gep187, align 1, !tbaa !27
  store <16 x i8> %wide.load155, ptr %i.du, align 1, !tbaa !27
  %index.next156 = add nuw i64 %index152, 32      ; 2 uses
  %i.dv = icmp eq i64 %index.next156, %n.vec150
  br i1 %i.dv, label %middle.block157, label %vector.body151, !llvm.loop !346

middle.block157:                                  ; preds = %vector.body151
  %cmp.n158 = icmp eq i64 %i.dm, %n.vec150
  br i1 %cmp.n158, label %.loopexit.loopexit.i87, label %vec.epilog.iter.check160

vec.epilog.iter.check160:                         ; preds = %middle.block157
  %min.epilog.iters.check162 = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check162, label %.lr.ph.i82.preheader, label %vec.epilog.ph163, !prof !167

vec.epilog.ph163:                                 ; preds = %vector.main.loop.iter.check147, %vec.epilog.iter.check160
  %vec.epilog.resume.val164 = phi i64 [ %n.vec150, %vec.epilog.iter.check160 ], [ 0, %vector.main.loop.iter.check147 ]
  %n.vec165 = and i64 %i.dm, 8589934588           ; 5 uses
  %i.dw = add nsw i64 %n.vec165, %i.di            ; 2 uses
  %i.dx = getelementptr i8, ptr %.038.i75, i64 %n.vec165 ; 2 uses
  %i.dy = trunc i64 %n.vec165 to i32
  %invariant.gep188 = getelementptr i8, ptr %i.cw, i64 %i.di
  br label %vec.epilog.vector.body166

vec.epilog.vector.body166:                        ; preds = %vec.epilog.vector.body166, %vec.epilog.ph163
  %index167 = phi i64 [ %vec.epilog.resume.val164, %vec.epilog.ph163 ], [ %index.next170, %vec.epilog.vector.body166 ] ; 3 uses
  %next.gep168 = getelementptr i8, ptr %.038.i75, i64 %index167
  %wide.load169 = load <4 x i8>, ptr %next.gep168, align 1, !tbaa !27
  %gep189 = getelementptr i8, ptr %invariant.gep188, i64 %index167
  store <4 x i8> %wide.load169, ptr %gep189, align 1, !tbaa !27
  %index.next170 = add nuw i64 %index167, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next170, %n.vec165
  br i1 %i.dz, label %vec.epilog.middle.block171, label %vec.epilog.vector.body166, !llvm.loop !347

vec.epilog.middle.block171:                       ; preds = %vec.epilog.vector.body166
  %cmp.n172 = icmp eq i64 %i.dm, %n.vec165
  br i1 %cmp.n172, label %.loopexit.loopexit.i87, label %.lr.ph.i82.preheader

.lr.ph.i82.preheader:                             ; preds = %iter.check159, %vector.memcheck145, %vec.epilog.iter.check160, %vec.epilog.middle.block171
  %indvars.iv.i83.ph = phi i64 [ %i.di, %iter.check159 ], [ %i.di, %vector.memcheck145 ], [ %i.dq, %vec.epilog.iter.check160 ], [ %i.dw, %vec.epilog.middle.block171 ]
  %.135.i84.ph = phi ptr [ %.038.i75, %iter.check159 ], [ %.038.i75, %vector.memcheck145 ], [ %i.dr, %vec.epilog.iter.check160 ], [ %i.dx, %vec.epilog.middle.block171 ]
  %.02934.i85.ph = phi i32 [ 0, %iter.check159 ], [ 0, %vector.memcheck145 ], [ %i.ds, %vec.epilog.iter.check160 ], [ %i.dy, %vec.epilog.middle.block171 ]
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.preheader, %.lr.ph.i82
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i86, %.lr.ph.i82 ], [ %indvars.iv.i83.ph, %.lr.ph.i82.preheader ] ; 2 uses
  %.135.i84 = phi ptr [ %i.ea, %.lr.ph.i82 ], [ %.135.i84.ph, %.lr.ph.i82.preheader ] ; 2 uses
  %.02934.i85 = phi i32 [ %i.ed, %.lr.ph.i82 ], [ %.02934.i85.ph, %.lr.ph.i82.preheader ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.135.i84, i64 1 ; 3 uses
  %i.eb = load i8, ptr %.135.i84, align 1, !tbaa !27
  %indvars.iv.next.i86 = add nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.cw, i64 %indvars.iv.i83
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !27
  %i.ed = add nuw nsw i32 %.02934.i85, 1          ; 2 uses
  %i.ee = icmp slt i32 %i.ed, %i.dc
  %i.ef = icmp ult ptr %i.ea, %i.ct
  %i.eg = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %i.eg, label %.lr.ph.i82, label %.loopexit.loopexit.i87, !llvm.loop !348

._crit_edge.i62:                                  ; preds = %bb.o, %.loopexit.i78
  %.030.lcssa.i63.ph = phi i32 [ %.03037.i76, %bb.o ], [ %.131.lcssa.i79, %.loopexit.i78 ]
  %.0.lcssa.i64.ph = phi ptr [ %.038.i75, %bb.o ], [ %.1.lcssa.i80, %.loopexit.i78 ]
  store i32 %.030.lcssa.i63.ph, ptr %i.cu, align 4, !tbaa !64
  %i.eh = icmp eq ptr %.0.lcssa.i64.ph, %i.ct
  br i1 %i.eh, label %bb.p, label %concat_opt_exact.exit88

bb.p:                                             ; preds = %._crit_edge.i62
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !168
  %i.ek = freeze i32 %i.ej
  br label %concat_opt_exact.exit88

concat_opt_exact.exit88:                          ; preds = %._crit_edge.i62, %bb.p
  %.fr.i66 = phi i32 [ %i.ek, %bb.p ], [ 0, %._crit_edge.i62 ] ; 2 uses
  store i32 %.fr.i66, ptr %i.au, align 4, !tbaa !168
  br label %.sink.split

.sink.split:                                      ; preds = %concat_opt_exact.exit88, %concat_opt_exact.exit
  %.sink125 = phi i64 [ 24, %concat_opt_exact.exit ], [ 72, %concat_opt_exact.exit88 ]
  %.sink122 = phi i64 [ 28, %concat_opt_exact.exit ], [ 76, %concat_opt_exact.exit88 ]
  %.fr.i.sink = phi i32 [ %.fr.i, %concat_opt_exact.exit ], [ %.fr.i66, %concat_opt_exact.exit88 ]
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 %.sink125 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !54
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !53
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 %.sink122
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !53
  %i.er = and i32 %i.eq, 2
  %storemerge.i.i = or i32 %i.er, %i.eo
  %.not.i = icmp eq i32 %.fr.i.sink, 0
  %spec.select = select i1 %.not.i, i32 0, i32 %storemerge.i.i
  %.sroa.5.0.insert.ext.i = zext i32 %spec.select to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.em to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.el, align 4, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25) %i.s, i8 0, i64 25, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.n, %bb.j
  tail call fastcc void @select_opt_exact(ptr noundef %0, ptr noundef %i.at, ptr noundef %i.s)
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call fastcc void @select_opt_exact(ptr noundef %0, ptr noundef %i.at, ptr noundef %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !351
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ex = load i32, ptr %i.f, align 4, !tbaa !69
  %.not56 = icmp eq i32 %i.ex, 0
  br i1 %.not56, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !352
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @select_opt_exact(ptr noundef %0, ptr noundef %i.aq, ptr noundef %i.et)
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  tail call fastcc void @select_opt_exact(ptr noundef %0, ptr noundef %i.at, ptr noundef %i.et)
  br label %bb.x

bb.v:                                             ; preds = %bb.q
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !351
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.et, ptr noundef nonnull readonly align 4 dereferenceable(48) %i.fe, i64 48, i1 false), !tbaa.struct !353
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.r, %bb.u, %bb.t
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.fh = load i32, ptr %i.ae, align 4, !tbaa !169 ; 2 uses
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %select_opt_map.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !169 ; 2 uses
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %comp_distance_value.exit.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fm = sdiv i32 32768, %i.fk                   ; 3 uses
  %i.fn = sdiv i32 32768, %i.fh                   ; 3 uses
  %i.fo = icmp slt i32 %i.fn, 1
  br i1 %i.fo, label %select_opt_map.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fp = icmp slt i32 %i.fm, 1
  br i1 %i.fp, label %comp_distance_value.exit.sink.split.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !53 ; 2 uses
  %i.fs = icmp eq i32 %i.fr, -1
  br i1 %i.fs, label %distance_value.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ft = load i32, ptr %i.fg, align 4, !tbaa !54
  %i.fu = sub i32 %i.fr, %i.ft                    ; 2 uses
  %i.fv = icmp ult i32 %i.fu, 100
  br i1 %i.fv, label %bb.ad, label %distance_value.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.fw = zext nneg i32 %i.fu to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr @distance_value.dist_vals, i64 %i.fw
end_hunk_2
