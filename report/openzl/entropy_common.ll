Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/entropy_common?download=true
inline.NumInlined: 37
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@FSE_readNCount_body_bmi2:bb.a
  %.neg.i = sub i64 %i.ax, %i.v
  %.tr.neg.i = trunc i64 %.neg.i to i32
  %.neg178.i = shl i32 %.tr.neg.i, 3
  %i.ay = add i32 %i.ar, %.neg178.i
  %i.az = and i32 %i.ay, 31
  br label %.thread

.thread:                                          ; preds = %._crit_edge24, %bb.l
  %.3156.i = phi ptr [ %i.av, %._crit_edge24 ], [ %i.u, %bb.l ] ; 2 uses
  %.3138.i = phi i32 [ %i.aw, %._crit_edge24 ], [ %i.az, %bb.l ] ; 2 uses
  %.3156.i.val = load i32, ptr %.3156.i, align 1, !tbaa !13
  %i.ba = lshr i32 %.3156.i.val, %.3138.i
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.e
  %.5158.i = phi ptr [ %.3156.i, %.thread ], [ %.0153.i, %bb.e ] ; 6 uses
  %.3142.i = phi i32 [ %i.ba, %.thread ], [ %.0139.i, %bb.e ] ; 2 uses
  %.5.i = phi i32 [ %.3138.i, %.thread ], [ %.0135.i, %bb.e ]
  %.2.i = phi i32 [ %i.ap, %.thread ], [ %.0133.i, %bb.e ] ; 2 uses
  %i.bb = shl nuw nsw i32 %.0144.i, 1
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  %i.bd = sub nsw i32 %i.bc, %.0147.i             ; 2 uses
  %i.be = add nsw i32 %.0144.i, -1
  %i.bf = and i32 %.3142.i, %i.be                 ; 2 uses
  %i.bg = icmp ult i32 %i.bf, %i.bd
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bh = add nsw i32 %.0150.i, -1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bi = and i32 %.3142.i, %i.bc                 ; 2 uses
  %.not179.i = icmp slt i32 %i.bi, %.0144.i
  %i.bj = select i1 %.not179.i, i32 0, i32 %i.bd
  %spec.select.i = sub nsw i32 %i.bi, %i.bj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.i = phi i32 [ %i.bh, %bb.n ], [ %.0150.i, %bb.o ]
  %.1.i = phi i32 [ %i.bf, %bb.n ], [ %spec.select.i, %bb.o ] ; 3 uses
  %.6.i = add nuw nsw i32 %.pn.i, %.5.i           ; 5 uses
  %i.bk = add nsw i32 %.1.i, -1                   ; 3 uses
  %i.bl = icmp sgt i32 %.1.i, 0
  %i.bm = sub nsw i32 1, %.1.i
  %.1148.i.p = select i1 %i.bl, i32 %i.bm, i32 %i.bk
  %.1148.i = add i32 %.1148.i.p, %.0147.i         ; 6 uses
  %i.bn = trunc i32 %i.bk to i16
  %i.bo = add nuw i32 %.2.i, 1                    ; 4 uses
  %i.bp = zext i32 %.2.i to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bp
  store i16 %i.bn, ptr %i.bq, align 2, !tbaa !17
  %i.br = icmp ne i32 %i.bk, 0
  %i.bs = icmp slt i32 %.1148.i, %.0144.i
  br i1 %i.bs, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bt = icmp slt i32 %.1148.i, 2
  br i1 %i.bt, label %.thread8, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.1148.i, i1 true) ; 2 uses
  %i.bv = sub nuw nsw i32 32, %i.bu
  %i.bw = lshr exact i32 -2147483648, %i.bu
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.1151.i = phi i32 [ %i.bv, %bb.r ], [ %.0150.i, %bb.p ]
  %.1145.i = phi i32 [ %i.bw, %bb.r ], [ %.0144.i, %bb.p ]
  %.not180.i = icmp ult i32 %i.bo, %i.d
  br i1 %.not180.i, label %bb.t, label %.thread8

bb.t:                                             ; preds = %bb.s
  %.not181.i = icmp ugt ptr %.5158.i, %i.s
  %i.bx = lshr i32 %.6.i, 3
  %i.by = zext nneg i32 %i.bx to i64              ; 2 uses
  br i1 %.not181.i, label %bb.u, label %._crit_edge25, !prof !14

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %.5158.i, i64 %i.by
  %.not182.i = icmp ugt ptr %i.bz, %i.u
  br i1 %.not182.i, label %bb.v, label %._crit_edge25

._crit_edge25:                                    ; preds = %bb.t, %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %.5158.i, i64 %i.by
  %i.cb = and i32 %.6.i, 7
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cc = ptrtoint ptr %.5158.i to i64
  %.neg183.i = sub i64 %i.cc, %i.v
  %.tr.neg184.i = trunc i64 %.neg183.i to i32
  %.neg185.i = shl i32 %.tr.neg184.i, 3
  %i.cd = add i32 %.6.i, %.neg185.i
  %i.ce = and i32 %i.cd, 31
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge25, %bb.v
  %.6159.i = phi ptr [ %i.ca, %._crit_edge25 ], [ %i.u, %bb.v ] ; 2 uses
  %.7.i = phi i32 [ %i.cb, %._crit_edge25 ], [ %i.ce, %bb.v ] ; 2 uses
  %.6159.i.val = load i32, ptr %.6159.i, align 1, !tbaa !13
  %i.cf = lshr i32 %.6159.i.val, %.7.i
  br label %bb.e

.thread8:                                         ; preds = %bb.s, %bb.q, %._crit_edge
  %.8161.i = phi ptr [ %.1154.i.lcssa, %._crit_edge ], [ %.5158.i, %bb.q ], [ %.5158.i, %bb.s ]
  %.2149.i = phi i32 [ %.0147.i, %._crit_edge ], [ %.1148.i, %bb.q ], [ %.1148.i, %bb.s ]
  %.9.i = phi i32 [ %i.ar, %._crit_edge ], [ %.6.i, %bb.q ], [ %.6.i, %bb.s ] ; 2 uses
  %.3.i = phi i32 [ %i.ap, %._crit_edge ], [ %i.bo, %bb.q ], [ %i.bo, %bb.s ] ; 2 uses
  %.not186.i = icmp eq i32 %.2149.i, 1
  br i1 %.not186.i, label %bb.x, label %FSE_readNCount_body.exit

bb.x:                                             ; preds = %.thread8
  %i.cg = icmp ugt i32 %.3.i, %i.d
  br i1 %i.cg, label %FSE_readNCount_body.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = icmp sgt i32 %.9.i, 32
  br i1 %i.ch, label %FSE_readNCount_body.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = add i32 %.3.i, -1
  store i32 %i.ci, ptr %1, align 4, !tbaa !13
  %i.cj = add nsw i32 %.9.i, 7
  %i.ck = ashr i32 %i.cj, 3
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %.8161.i, i64 %i.cl
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %3 to i64
  %i.cp = sub i64 %i.cn, %i.co
  br label %FSE_readNCount_body.exit

FSE_readNCount_body.exit:                         ; preds = %bb.b, %bb.c, %.thread8, %bb.x, %bb.y, %bb.z
  %.1163.i = phi i64 [ %.0162.i, %bb.b ], [ %i.cp, %bb.z ], [ -44, %bb.c ], [ -20, %.thread8 ], [ -48, %bb.x ], [ -20, %bb.y ]
  ret i64 %.1163.i
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @FSE_readNCount(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @FSE_readNCount_bmi2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define range(i64 -119, -9223372036854775808) i64 @HUF_readStats(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [219 x i32], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call i64 @HUF_readStats_wksp(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %i.a, i64 noundef 876, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define range(i64 -119, -9223372036854775808) i64 @HUF_readStats_wksp(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i32 noundef %9) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %9, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @HUF_readStats_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8)
  br label %HUF_readStats_body_default.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %6, 0
  br i1 %.not.i.i, label %HUF_readStats_body_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr %5, align 1, !tbaa !18      ; 2 uses
  %i.d = zext i8 %i.c to i64                      ; 7 uses
  %i.e = icmp slt i8 %i.c, 0
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i64 %i.d, -127                   ; 6 uses
  %i.g = add nsw i64 %i.d, -126
  %i.h = lshr i64 %i.g, 1                         ; 2 uses
  %.not90.i.i = icmp ult i64 %i.h, %6
  br i1 %.not90.i.i, label %bb.f, label %HUF_readStats_body_default.exit

bb.f:                                             ; preds = %bb.e
  %.not91.i.i = icmp ult i64 %i.f, %1
  br i1 %.not91.i.i, label %iter.check, label %HUF_readStats_body_default.exit

iter.check:                                       ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 2)
  %i.j = add nsw i64 %umax, -1
  %i.k = lshr i64 %i.j, 1
  %i.l = add nuw i64 %i.k, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.f, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.m = add nsw i64 %i.d, -128
  %i.n = and i64 %i.d, 126
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 2
  %10 = lshr i64 %i.m, 1
  %i.q = getelementptr i8, ptr %5, i64 %10
  %i.r = getelementptr i8, ptr %i.q, i64 2
  %bound0 = icmp ult ptr %0, %i.r
  %bound1 = icmp ult ptr %i.i, %i.p
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check29 = icmp ult i64 %i.f, 31
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.l, 12
  %n.vec = and i64 %i.l, -16                      ; 6 uses
  %i.t = shl i64 %n.vec, 1
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 9
  %wide.load = load <8 x i8>, ptr %i.i, align 1, !tbaa !18, !alias.scope !29 ; 2 uses
  %wide.load30 = load <8 x i8>, ptr %i.u, align 1, !tbaa !18, !alias.scope !29 ; 2 uses
  %i.v = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.w = lshr <8 x i8> %wide.load30, splat (i8 4)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = and <8 x i8> %wide.load, splat (i8 15)
  %i.z = and <8 x i8> %wide.load30, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.v, <8 x i8> %i.y, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %0, align 1, !tbaa !18, !alias.scope !30, !noalias !29
  %interleaved.vec31 = shufflevector <8 x i8> %i.w, <8 x i8> %i.z, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec31, ptr %i.x, align 1, !tbaa !18, !alias.scope !30, !noalias !29
  %i.aa = icmp eq i64 %n.vec, 16
  br i1 %i.aa, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 25
  %wide.load.1 = load <8 x i8>, ptr %i.ab, align 1, !tbaa !18, !alias.scope !29 ; 2 uses
  %wide.load30.1 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !18, !alias.scope !29 ; 2 uses
  %i.ad = lshr <8 x i8> %wide.load.1, splat (i8 4)
  %i.ae = lshr <8 x i8> %wide.load30.1, splat (i8 4)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = and <8 x i8> %wide.load.1, splat (i8 15)
  %i.ai = and <8 x i8> %wide.load30.1, splat (i8 15)
  %interleaved.vec.1 = shufflevector <8 x i8> %i.ad, <8 x i8> %i.ah, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %i.af, align 1, !tbaa !18, !alias.scope !30, !noalias !29
  %interleaved.vec31.1 = shufflevector <8 x i8> %i.ae, <8 x i8> %i.ai, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec31.1, ptr %i.ag, align 1, !tbaa !18, !alias.scope !30, !noalias !29
  %i.aj = icmp eq i64 %n.vec, 32
  br i1 %i.aj, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 41
  %wide.load.2 = load <8 x i8>, ptr %i.ak, align 1, !tbaa !18, !alias.scope !29 ; 2 uses
  %wide.load30.2 = load <8 x i8>, ptr %i.al, align 1, !tbaa !18, !alias.scope !29 ; 2 uses
  %i.am = lshr <8 x i8> %wide.load.2, splat (i8 4)
  %i.an = lshr <8 x i8> %wide.load30.2, splat (i8 4)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = and <8 x i8> %wide.load.2, splat (i8 15)
  %i.ar = and <8 x i8> %wide.load30.2, splat (i8 15)
  %interleaved.vec.2 = shufflevector <8 x i8> %i.am, <8 x i8> %i.aq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.2, ptr %i.ao, align 1, !tbaa !18, !alias.scope !30, !noalias !29
  %interleaved.vec31.2 = shufflevector <8 x i8> %i.an, <8 x i8> %i.ar, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec31.2, ptr %i.ap, align 1, !tbaa !18, !alias.scope !30, !noalias !29
  %i.as = icmp eq i64 %n.vec, 48
  br i1 %i.as, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 49
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 57
  %wide.load.3 = load <8 x i8>, ptr %i.at, align 1, !tbaa !18, !alias.scope !29 ; 2 uses
  %wide.load30.3 = load <8 x i8>, ptr %i.au, align 1, !tbaa !18, !alias.scope !29 ; 2 uses
  %i.av = lshr <8 x i8> %wide.load.3, splat (i8 4)
  %i.aw = lshr <8 x i8> %wide.load30.3, splat (i8 4)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = and <8 x i8> %wide.load.3, splat (i8 15)
  %i.ba = and <8 x i8> %wide.load30.3, splat (i8 15)
  %interleaved.vec.3 = shufflevector <8 x i8> %i.av, <8 x i8> %i.az, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.3, ptr %i.ax, align 1, !tbaa !18, !alias.scope !30, !noalias !29
  %interleaved.vec31.3 = shufflevector <8 x i8> %i.aw, <8 x i8> %i.ba, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec31.3, ptr %i.ay, align 1, !tbaa !18, !alias.scope !30, !noalias !29
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.l, -4                     ; 3 uses
  %i.bb = shl i64 %n.vec32, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %i.bc = shl nuw i64 %index33, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 %index33
  %wide.load34 = load <4 x i8>, ptr %i.bd, align 1, !tbaa !18, !alias.scope !29 ; 2 uses
  %i.be = lshr <4 x i8> %wide.load34, splat (i8 4)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  %i.bg = and <4 x i8> %wide.load34, splat (i8 15)
  %interleaved.vec35 = shufflevector <4 x i8> %i.be, <4 x i8> %i.bg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec35, ptr %i.bf, align 1, !tbaa !18, !alias.scope !30, !noalias !29
  %index.next36 = add nuw i64 %index33, 4         ; 2 uses
  %i.bh = icmp eq i64 %index.next36, %n.vec32
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %i.l, %n.vec32
  br i1 %cmp.n37, label %.loopexit.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bi = phi i64 [ %i.br, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bj = lshr exact i64 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bj ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !18
  %i.bm = lshr i8 %i.bl, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi ; 2 uses
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !18
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !18
  %i.bp = and i8 %i.bo, 15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !18
  %i.br = add nuw nsw i64 %i.bi, 2                ; 2 uses
  %i.bs = icmp samesign ugt i64 %i.f, %i.br
  br i1 %i.bs, label %.lr.ph.i, label %.loopexit.thread.i, !llvm.loop !28

.loopexit.thread.i:                               ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  br label %.lr.ph13.preheader.i

bb.g:                                             ; preds = %bb.d
  %.not88.i.i = icmp ugt i64 %6, %i.d
  br i1 %.not88.i.i, label %bb.h, label %HUF_readStats_body_default.exit

bb.h:                                             ; preds = %bb.g
  %i.bt = add i64 %1, -1
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.bv = tail call i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %i.bt, ptr noundef nonnull %i.bu, i64 noundef %i.d, i32 noundef 6, ptr noundef %7, i64 noundef %8, i32 noundef 0) #10 ; 4 uses
  %i.bw = icmp ult i64 %i.bv, -119
  br i1 %i.bw, label %.loopexit.i, label %HUF_readStats_body_default.exit

.loopexit.i:                                      ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %.not92.i10.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not92.i10.not.i, label %HUF_readStats_body_default.exit, label %.lr.ph13.preheader.i

.lr.ph13.preheader.i:                             ; preds = %.loopexit.i, %.loopexit.thread.i
  %.074.i26.i = phi i64 [ %i.f, %.loopexit.thread.i ], [ %i.bv, %.loopexit.i ] ; 3 uses
  %.075.i24.i = phi i64 [ %i.h, %.loopexit.thread.i ], [ %i.d, %.loopexit.i ]
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %bb.i, %.lr.ph13.preheader.i
  %i.bx = phi i64 [ %i.cl, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %.0.i12.i = phi i32 [ %i.ck, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %.076.i11.i = phi i32 [ %i.cj, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.bx ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !18  ; 2 uses
  %i.ca = icmp ugt i8 %i.bz, 12
  br i1 %i.ca, label %HUF_readStats_body_default.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph13.i
  %i.cb = zext nneg i8 %i.bz to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !13
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !13
  %i.cf = load i8, ptr %i.by, align 1, !tbaa !18
  %i.cg = zext nneg i8 %i.cf to i32
  %i.ch = shl nuw i32 1, %i.cg
  %i.ci = ashr i32 %i.ch, 1
  %i.cj = add i32 %i.ci, %.076.i11.i              ; 4 uses
  %i.ck = add i32 %.0.i12.i, 1                    ; 2 uses
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %.not92.i.i = icmp ugt i64 %.074.i26.i, %i.cl
  br i1 %.not92.i.i, label %.lr.ph13.i, label %.critedge.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %bb.i
  %.old.i.i = icmp eq i32 %i.cj, 0
  br i1 %.old.i.i, label %HUF_readStats_body_default.exit, label %bb.j

bb.j:                                             ; preds = %.critedge.i.i
  %i.cm = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cj, i1 true) ; 2 uses
  %i.cn = xor i32 %i.cm, 31                       ; 2 uses
  %i.co = icmp samesign ugt i32 %i.cn, 11
  br i1 %i.co, label %HUF_readStats_body_default.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = sub nuw nsw i32 32, %i.cm
  store i32 %i.cp, ptr %4, align 4, !tbaa !13
  %i.cq = shl nuw nsw i32 2, %i.cn
  %i.cr = sub i32 %i.cq, %i.cj                    ; 2 uses
  %i.cs = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cr, i1 true) ; 2 uses
  %i.ct = lshr exact i32 -2147483648, %i.cs
  %.not93.i.i = icmp eq i32 %i.ct, %i.cr
  br i1 %.not93.i.i, label %bb.l, label %HUF_readStats_body_default.exit

bb.l:                                             ; preds = %bb.k
  %i.cu = sub nuw nsw i32 32, %i.cs               ; 2 uses
  %i.cv = trunc nuw nsw i32 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 %.074.i26.i
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !18
  %i.cx = zext nneg i32 %i.cu to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !13
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !13
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !13 ; 2 uses
  %i.dd = icmp ugt i32 %i.dc, 1
  %i.de = and i32 %i.dc, 1
  %.not94.i.i = icmp eq i32 %i.de, 0
  %or.cond.i.i = and i1 %i.dd, %.not94.i.i
  br i1 %or.cond.i.i, label %bb.m, label %HUF_readStats_body_default.exit

bb.m:                                             ; preds = %bb.l
  %i.df = trunc nuw i64 %.074.i26.i to i32
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %3, align 4, !tbaa !13
  %i.dh = add nuw nsw i64 %.075.i24.i, 1
  br label %HUF_readStats_body_default.exit

HUF_readStats_body_default.exit:                  ; preds = %.lr.ph13.i, %bb.m, %bb.l, %bb.k, %bb.j, %.critedge.i.i, %.loopexit.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ -72, %bb.c ], [ -72, %bb.e ], [ %i.bv, %bb.h ], [ -20, %bb.j ], [ %i.dh, %bb.m ], [ -20, %bb.k ], [ -20, %bb.l ], [ -20, %bb.f ], [ -72, %bb.g ], [ -20, %.critedge.i.i ], [ -20, %.loopexit.i ], [ -20, %.lr.ph13.i ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, -9223372036854775808) i64 @HUF_readStats_body_bmi2(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8) unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq i64 %6, 0
  br i1 %.not.i, label %HUF_readStats_body.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %5, align 1, !tbaa !18      ; 2 uses
  %i.b = zext i8 %i.a to i64                      ; 7 uses
  %i.c = icmp slt i8 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i64 %i.b, -127                   ; 6 uses
  %i.e = add nsw i64 %i.b, -126
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %.not90.i = icmp ult i64 %i.f, %6
  br i1 %.not90.i, label %bb.d, label %HUF_readStats_body.exit

bb.d:                                             ; preds = %bb.c
  %.not91.i = icmp ult i64 %i.d, %1
  br i1 %.not91.i, label %iter.check, label %HUF_readStats_body.exit

iter.check:                                       ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.d, i64 2)
  %i.h = add nsw i64 %umax, -1
  %i.i = lshr i64 %i.h, 1
  %i.j = add nuw i64 %i.i, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.k = add nsw i64 %i.b, -128
  %i.l = and i64 %i.b, 126
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 2
  %9 = lshr i64 %i.k, 1
  %i.o = getelementptr i8, ptr %5, i64 %9
  %i.p = getelementptr i8, ptr %i.o, i64 2
  %bound0 = icmp ult ptr %0, %i.p
  %bound1 = icmp ult ptr %i.g, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check33 = icmp ult i64 %i.d, 31
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.j, 12
  %n.vec = and i64 %i.j, -16                      ; 6 uses
  %i.r = shl i64 %n.vec, 1
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 9
  %wide.load = load <8 x i8>, ptr %i.g, align 1, !tbaa !18, !alias.scope !36 ; 2 uses
  %wide.load34 = load <8 x i8>, ptr %i.s, align 1, !tbaa !18, !alias.scope !36 ; 2 uses
  %i.t = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.u = lshr <8 x i8> %wide.load34, splat (i8 4)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = and <8 x i8> %wide.load, splat (i8 15)
  %i.x = and <8 x i8> %wide.load34, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.t, <8 x i8> %i.w, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %0, align 1, !tbaa !18, !alias.scope !37, !noalias !36
  %interleaved.vec35 = shufflevector <8 x i8> %i.u, <8 x i8> %i.x, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec35, ptr %i.v, align 1, !tbaa !18, !alias.scope !37, !noalias !36
  %i.y = icmp eq i64 %n.vec, 16
  br i1 %i.y, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 25
  %wide.load.1 = load <8 x i8>, ptr %i.z, align 1, !tbaa !18, !alias.scope !36 ; 2 uses
  %wide.load34.1 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !18, !alias.scope !36 ; 2 uses
  %i.ab = lshr <8 x i8> %wide.load.1, splat (i8 4)
  %i.ac = lshr <8 x i8> %wide.load34.1, splat (i8 4)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = and <8 x i8> %wide.load.1, splat (i8 15)
  %i.ag = and <8 x i8> %wide.load34.1, splat (i8 15)
  %interleaved.vec.1 = shufflevector <8 x i8> %i.ab, <8 x i8> %i.af, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %i.ad, align 1, !tbaa !18, !alias.scope !37, !noalias !36
  %interleaved.vec35.1 = shufflevector <8 x i8> %i.ac, <8 x i8> %i.ag, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec35.1, ptr %i.ae, align 1, !tbaa !18, !alias.scope !37, !noalias !36
  %i.ah = icmp eq i64 %n.vec, 32
  br i1 %i.ah, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 41
  %wide.load.2 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !18, !alias.scope !36 ; 2 uses
  %wide.load34.2 = load <8 x i8>, ptr %i.aj, align 1, !tbaa !18, !alias.scope !36 ; 2 uses
  %i.ak = lshr <8 x i8> %wide.load.2, splat (i8 4)
  %i.al = lshr <8 x i8> %wide.load34.2, splat (i8 4)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = and <8 x i8> %wide.load.2, splat (i8 15)
  %i.ap = and <8 x i8> %wide.load34.2, splat (i8 15)
  %interleaved.vec.2 = shufflevector <8 x i8> %i.ak, <8 x i8> %i.ao, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.2, ptr %i.am, align 1, !tbaa !18, !alias.scope !37, !noalias !36
  %interleaved.vec35.2 = shufflevector <8 x i8> %i.al, <8 x i8> %i.ap, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec35.2, ptr %i.an, align 1, !tbaa !18, !alias.scope !37, !noalias !36
  %i.aq = icmp eq i64 %n.vec, 48
  br i1 %i.aq, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 49
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 57
  %wide.load.3 = load <8 x i8>, ptr %i.ar, align 1, !tbaa !18, !alias.scope !36 ; 2 uses
  %wide.load34.3 = load <8 x i8>, ptr %i.as, align 1, !tbaa !18, !alias.scope !36 ; 2 uses
  %i.at = lshr <8 x i8> %wide.load.3, splat (i8 4)
  %i.au = lshr <8 x i8> %wide.load34.3, splat (i8 4)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = and <8 x i8> %wide.load.3, splat (i8 15)
  %i.ay = and <8 x i8> %wide.load34.3, splat (i8 15)
  %interleaved.vec.3 = shufflevector <8 x i8> %i.at, <8 x i8> %i.ax, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.3, ptr %i.av, align 1, !tbaa !18, !alias.scope !37, !noalias !36
  %interleaved.vec35.3 = shufflevector <8 x i8> %i.au, <8 x i8> %i.ay, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec35.3, ptr %i.aw, align 1, !tbaa !18, !alias.scope !37, !noalias !36
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.j, -4                     ; 3 uses
  %i.az = shl i64 %n.vec36, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.ba = shl nuw i64 %index37, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 %index37
  %wide.load38 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !18, !alias.scope !36 ; 2 uses
  %i.bc = lshr <4 x i8> %wide.load38, splat (i8 4)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba
  %i.be = and <4 x i8> %wide.load38, splat (i8 15)
  %interleaved.vec39 = shufflevector <4 x i8> %i.bc, <4 x i8> %i.be, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec39, ptr %i.bd, align 1, !tbaa !18, !alias.scope !37, !noalias !36
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next40, %n.vec36
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %i.j, %n.vec36
  br i1 %cmp.n41, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bg = phi i64 [ %i.bq, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 4 uses
  %i.bh = lshr exact i64 %i.bg, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bh ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !18
  %i.bk = lshr i8 %i.bj, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !18
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !18
  %i.bn = and i8 %i.bm, 15
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !18
  %i.bq = add nuw nsw i64 %i.bg, 2                ; 2 uses
  %i.br = icmp samesign ugt i64 %i.d, %i.bq
  br i1 %i.br, label %.lr.ph, label %.loopexit.thread, !llvm.loop !35

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  br label %.lr.ph13.preheader

bb.e:                                             ; preds = %bb.b
  %.not88.i = icmp ugt i64 %6, %i.b
  br i1 %.not88.i, label %bb.f, label %HUF_readStats_body.exit

bb.f:                                             ; preds = %bb.e
  %i.bs = add i64 %1, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.bu = tail call i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %i.bs, ptr noundef nonnull %i.bt, i64 noundef %i.b, i32 noundef 6, ptr noundef %7, i64 noundef %8, i32 noundef 1) #10 ; 4 uses
  %i.bv = icmp ult i64 %i.bu, -119
  br i1 %i.bv, label %.loopexit, label %HUF_readStats_body.exit

.loopexit:                                        ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %.not92.i10.not = icmp eq i64 %i.bu, 0
  br i1 %.not92.i10.not, label %HUF_readStats_body.exit, label %.lr.ph13.preheader

.lr.ph13.preheader:                               ; preds = %.loopexit.thread, %.loopexit
  %.074.i26 = phi i64 [ %i.d, %.loopexit.thread ], [ %i.bu, %.loopexit ] ; 3 uses
  %.075.i24 = phi i64 [ %i.f, %.loopexit.thread ], [ %i.b, %.loopexit ]
  br label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph13.preheader, %bb.g
  %i.bw = phi i64 [ %i.ck, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %.0.i12 = phi i32 [ %i.cj, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %.076.i11 = phi i32 [ %i.ci, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bw ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !18  ; 2 uses
  %i.bz = icmp ugt i8 %i.by, 12
  br i1 %i.bz, label %HUF_readStats_body.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph13
  %i.ca = zext nneg i8 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !13
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !13
  %i.ce = load i8, ptr %i.bx, align 1, !tbaa !18
  %i.cf = zext nneg i8 %i.ce to i32
  %i.cg = shl nuw i32 1, %i.cf
  %i.ch = ashr i32 %i.cg, 1
  %i.ci = add i32 %i.ch, %.076.i11                ; 4 uses
  %i.cj = add i32 %.0.i12, 1                      ; 2 uses
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %.not92.i = icmp ugt i64 %.074.i26, %i.ck
  br i1 %.not92.i, label %.lr.ph13, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %bb.g
  %.old.i = icmp eq i32 %i.ci, 0
  br i1 %.old.i, label %HUF_readStats_body.exit, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.cl = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ci, i1 true) ; 2 uses
  %i.cm = xor i32 %i.cl, 31                       ; 2 uses
  %i.cn = icmp samesign ugt i32 %i.cm, 11
  br i1 %i.cn, label %HUF_readStats_body.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = sub nuw nsw i32 32, %i.cl
  store i32 %i.co, ptr %4, align 4, !tbaa !13
  %i.cp = shl nuw nsw i32 2, %i.cm
end_hunk_0
