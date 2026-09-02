Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/entropy_common?download=true
inline.NumInlined: 37
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@FSE_readNCount_body_bmi2:bb.a
  %i.ai = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %i.ah, i1 true) ; 2 uses
  %i.aj = icmp samesign ugt i32 %i.ai, 23
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.i, %bb.f
  %.1154.i.lcssa = phi ptr [ %.0153.i, %bb.f ], [ %.2155.i, %bb.i ] ; 5 uses
  %.1140.i.lcssa = phi i32 [ %.0139.i, %bb.f ], [ %i.af, %bb.i ]
  %.1136.i.lcssa = phi i32 [ %.0135.i, %bb.f ], [ %.2137.i, %bb.i ]
  %.1134.i.lcssa = phi i32 [ %.0133.i, %bb.f ], [ %i.aa, %bb.i ]
  %.0129.in.i.lcssa = phi i32 [ %i.y, %bb.f ], [ %i.ai, %bb.i ] ; 2 uses
  %.0129.i = lshr i32 %.0129.in.i.lcssa, 1
  %i.ak = mul nuw nsw i32 %.0129.i, 3
  %i.al = add i32 %i.ak, %.1134.i.lcssa
  %i.am = and i32 %.0129.in.i.lcssa, 30           ; 2 uses
  %i.an = lshr i32 %.1140.i.lcssa, %i.am
  %i.ao = and i32 %i.an, 3
  %i.ap = add i32 %i.al, %i.ao                    ; 3 uses
  %i.aq = add nuw nsw i32 %.1136.i.lcssa, 2
  %i.ar = add nuw nsw i32 %i.aq, %i.am            ; 4 uses
  %.not.i = icmp ult i32 %i.ap, %i.d
  br i1 %.not.i, label %bb.j, label %.thread8

bb.j:                                             ; preds = %._crit_edge
  %.not176.i = icmp ugt ptr %.1154.i.lcssa, %i.s
  %i.as = lshr i32 %i.ar, 3
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  br i1 %.not176.i, label %bb.k, label %._crit_edge24, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.1154.i.lcssa, i64 %i.at
  %.not177.i = icmp ugt ptr %i.au, %i.u
  br i1 %.not177.i, label %bb.l, label %._crit_edge24

._crit_edge24:                                    ; preds = %bb.j, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %.1154.i.lcssa, i64 %i.at
  %i.aw = and i32 %i.ar, 7
  br label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ax = ptrtoint ptr %.1154.i.lcssa to i64
  %.neg.i = sub i64 %i.ax, %i.v
  %.tr.neg.i = trunc i64 %.neg.i to i32
  %.neg178.i = shl i32 %.tr.neg.i, 3
  %i.ay = add i32 %i.ar, %.neg178.i
  %i.az = and i32 %i.ay, 31
  br label %.thread

.thread:                                          ; preds = %._crit_edge24, %bb.l
  %.3156.i = phi ptr [ %i.av, %._crit_edge24 ], [ %i.u, %bb.l ] ; 2 uses
  %.3138.i = phi i32 [ %i.aw, %._crit_edge24 ], [ %i.az, %bb.l ] ; 2 uses
  %.3156.i.val = load i32, ptr %.3156.i, align 1, !tbaa !10
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
  store i16 %i.bn, ptr %i.bq, align 2, !tbaa !14
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
  br i1 %.not181.i, label %bb.u, label %._crit_edge25, !prof !11

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
  %.6159.i.val = load i32, ptr %.6159.i, align 1, !tbaa !10
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
  store i32 %i.ci, ptr %1, align 4, !tbaa !10
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
  %10 = and i32 %9, 1
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i64 @HUF_readStats_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8)
  br label %HUF_readStats_body_default.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %6, 0
  br i1 %.not.i.i, label %HUF_readStats_body_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load i8, ptr %5, align 1, !tbaa !15      ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 7 uses
  %i.d = icmp slt i8 %i.b, 0
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = add nsw i64 %i.c, -127                   ; 6 uses
  %i.f = add nsw i64 %i.c, -126
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.not90.i.i = icmp ult i64 %i.g, %6
  br i1 %.not90.i.i, label %bb.f, label %HUF_readStats_body_default.exit

bb.f:                                             ; preds = %bb.e
  %.not91.i.i = icmp ult i64 %i.e, %1
  br i1 %.not91.i.i, label %iter.check, label %HUF_readStats_body_default.exit

iter.check:                                       ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 4 uses
  %umax29 = tail call i64 @llvm.umax.i64(i64 %i.e, i64 2)
  %i.i = add nsw i64 %umax29, -1
  %i.j = lshr i64 %i.i, 1
  %i.k = add nuw i64 %i.j, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.e, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.l = add nsw i64 %i.c, -128
  %i.m = and i64 %i.c, 126
  %i.n = getelementptr i8, ptr %0, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.n, i64 2
  %i.o = lshr i64 %i.l, 1
  %i.p = getelementptr i8, ptr %5, i64 %i.o
  %scevgep28 = getelementptr i8, ptr %i.p, i64 2
  %bound0 = icmp ult ptr %0, %scevgep28
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i64 %i.e, 31
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.k, 12
  %n.vec = and i64 %i.k, -16                      ; 6 uses
  %i.r = shl i64 %n.vec, 1
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 9
  %wide.load = load <8 x i8>, ptr %i.h, align 1, !tbaa !15, !alias.scope !26 ; 2 uses
  %wide.load31 = load <8 x i8>, ptr %i.s, align 1, !tbaa !15, !alias.scope !26 ; 2 uses
  %i.t = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.u = lshr <8 x i8> %wide.load31, splat (i8 4)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = and <8 x i8> %wide.load, splat (i8 15)
  %i.x = and <8 x i8> %wide.load31, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.t, <8 x i8> %i.w, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %0, align 1, !tbaa !15, !alias.scope !27, !noalias !26
  %interleaved.vec34 = shufflevector <8 x i8> %i.u, <8 x i8> %i.x, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34, ptr %i.v, align 1, !tbaa !15, !alias.scope !27, !noalias !26
  %i.y = icmp eq i64 %n.vec, 16
  br i1 %i.y, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 25
  %wide.load.1 = load <8 x i8>, ptr %i.z, align 1, !tbaa !15, !alias.scope !26 ; 2 uses
  %wide.load31.1 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !15, !alias.scope !26 ; 2 uses
  %i.ab = lshr <8 x i8> %wide.load.1, splat (i8 4)
  %i.ac = lshr <8 x i8> %wide.load31.1, splat (i8 4)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = and <8 x i8> %wide.load.1, splat (i8 15)
  %i.ag = and <8 x i8> %wide.load31.1, splat (i8 15)
  %interleaved.vec.1 = shufflevector <8 x i8> %i.ab, <8 x i8> %i.af, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %i.ad, align 1, !tbaa !15, !alias.scope !27, !noalias !26
  %interleaved.vec34.1 = shufflevector <8 x i8> %i.ac, <8 x i8> %i.ag, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34.1, ptr %i.ae, align 1, !tbaa !15, !alias.scope !27, !noalias !26
  %i.ah = icmp eq i64 %n.vec, 32
  br i1 %i.ah, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 41
  %wide.load.2 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !15, !alias.scope !26 ; 2 uses
  %wide.load31.2 = load <8 x i8>, ptr %i.aj, align 1, !tbaa !15, !alias.scope !26 ; 2 uses
  %i.ak = lshr <8 x i8> %wide.load.2, splat (i8 4)
  %i.al = lshr <8 x i8> %wide.load31.2, splat (i8 4)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = and <8 x i8> %wide.load.2, splat (i8 15)
  %i.ap = and <8 x i8> %wide.load31.2, splat (i8 15)
  %interleaved.vec.2 = shufflevector <8 x i8> %i.ak, <8 x i8> %i.ao, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.2, ptr %i.am, align 1, !tbaa !15, !alias.scope !27, !noalias !26
  %interleaved.vec34.2 = shufflevector <8 x i8> %i.al, <8 x i8> %i.ap, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34.2, ptr %i.an, align 1, !tbaa !15, !alias.scope !27, !noalias !26
  %i.aq = icmp eq i64 %n.vec, 48
  br i1 %i.aq, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 49
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 57
  %wide.load.3 = load <8 x i8>, ptr %i.ar, align 1, !tbaa !15, !alias.scope !26 ; 2 uses
  %wide.load31.3 = load <8 x i8>, ptr %i.as, align 1, !tbaa !15, !alias.scope !26 ; 2 uses
  %i.at = lshr <8 x i8> %wide.load.3, splat (i8 4)
  %i.au = lshr <8 x i8> %wide.load31.3, splat (i8 4)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = and <8 x i8> %wide.load.3, splat (i8 15)
  %i.ay = and <8 x i8> %wide.load31.3, splat (i8 15)
  %interleaved.vec.3 = shufflevector <8 x i8> %i.at, <8 x i8> %i.ax, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.3, ptr %i.av, align 1, !tbaa !15, !alias.scope !27, !noalias !26
  %interleaved.vec34.3 = shufflevector <8 x i8> %i.au, <8 x i8> %i.ay, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34.3, ptr %i.aw, align 1, !tbaa !15, !alias.scope !27, !noalias !26
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.loopexit.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %i.k, -4                     ; 3 uses
  %i.az = shl i64 %n.vec35, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.ba = shl nuw i64 %index36, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 %index36
  %wide.load37 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !15, !alias.scope !26 ; 2 uses
  %i.bc = lshr <4 x i8> %wide.load37, splat (i8 4)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba
  %i.be = and <4 x i8> %wide.load37, splat (i8 15)
  %interleaved.vec39 = shufflevector <4 x i8> %i.bc, <4 x i8> %i.be, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec39, ptr %i.bd, align 1, !tbaa !15, !alias.scope !27, !noalias !26
  %index.next40 = add nuw i64 %index36, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next40, %n.vec35
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %i.k, %n.vec35
  br i1 %cmp.n41, label %.loopexit.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bg = phi i64 [ %i.bp, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bh = lshr exact i64 %i.bg, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bh ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !15
  %i.bk = lshr i8 %i.bj, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg ; 2 uses
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !15
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !15
  %i.bn = and i8 %i.bm, 15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !15
  %i.bp = add nuw nsw i64 %i.bg, 2                ; 2 uses
  %i.bq = icmp samesign ugt i64 %i.e, %i.bp
  br i1 %i.bq, label %.lr.ph.i, label %.loopexit.thread.i, !llvm.loop !25

.loopexit.thread.i:                               ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  br label %.lr.ph13.preheader.i

bb.g:                                             ; preds = %bb.d
  %.not88.i.i = icmp ugt i64 %6, %i.c
  br i1 %.not88.i.i, label %bb.h, label %HUF_readStats_body_default.exit

bb.h:                                             ; preds = %bb.g
  %i.br = add i64 %1, -1
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.bt = tail call i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %i.br, ptr noundef nonnull %i.bs, i64 noundef %i.c, i32 noundef 6, ptr noundef %7, i64 noundef %8, i32 noundef 0) #10 ; 4 uses
  %i.bu = icmp ult i64 %i.bt, -119
  br i1 %i.bu, label %.loopexit.i, label %HUF_readStats_body_default.exit

.loopexit.i:                                      ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %.not92.i10.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not92.i10.not.i, label %HUF_readStats_body_default.exit, label %.lr.ph13.preheader.i

.lr.ph13.preheader.i:                             ; preds = %.loopexit.i, %.loopexit.thread.i
  %.074.i26.i = phi i64 [ %i.e, %.loopexit.thread.i ], [ %i.bt, %.loopexit.i ] ; 3 uses
  %.075.i24.i = phi i64 [ %i.g, %.loopexit.thread.i ], [ %i.c, %.loopexit.i ]
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %bb.i, %.lr.ph13.preheader.i
  %i.bv = phi i64 [ %i.cj, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %.0.i12.i = phi i32 [ %i.ci, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %.076.i11.i = phi i32 [ %i.ch, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !15  ; 2 uses
  %i.by = icmp ugt i8 %i.bx, 12
  br i1 %i.by, label %HUF_readStats_body_default.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph13.i
  %i.bz = zext nneg i8 %i.bx to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !10
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !10
  %i.cd = load i8, ptr %i.bw, align 1, !tbaa !15
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = ashr i32 %i.cf, 1
  %i.ch = add i32 %i.cg, %.076.i11.i              ; 4 uses
  %i.ci = add i32 %.0.i12.i, 1                    ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %.not92.i.i = icmp ugt i64 %.074.i26.i, %i.cj
  br i1 %.not92.i.i, label %.lr.ph13.i, label %.critedge.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %bb.i
  %.old.i.i = icmp eq i32 %i.ch, 0
  br i1 %.old.i.i, label %HUF_readStats_body_default.exit, label %bb.j

bb.j:                                             ; preds = %.critedge.i.i
  %i.ck = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ch, i1 true) ; 2 uses
  %i.cl = xor i32 %i.ck, 31                       ; 2 uses
  %i.cm = icmp samesign ugt i32 %i.cl, 11
  br i1 %i.cm, label %HUF_readStats_body_default.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cn = sub nuw nsw i32 32, %i.ck
  store i32 %i.cn, ptr %4, align 4, !tbaa !10
  %i.co = shl nuw nsw i32 2, %i.cl
  %i.cp = sub i32 %i.co, %i.ch                    ; 2 uses
  %i.cq = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cp, i1 true) ; 2 uses
  %i.cr = lshr exact i32 -2147483648, %i.cq
  %.not93.i.i = icmp eq i32 %i.cr, %i.cp
  br i1 %.not93.i.i, label %bb.l, label %HUF_readStats_body_default.exit

bb.l:                                             ; preds = %bb.k
  %i.cs = sub nuw nsw i32 32, %i.cq               ; 2 uses
  %i.ct = trunc nuw nsw i32 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %.074.i26.i
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !15
  %i.cv = zext nneg i32 %i.cs to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !10
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !10 ; 2 uses
  %11 = icmp ugt i32 %i.da, 1
  %12 = and i32 %i.da, 1
  %.not94.i.i = icmp eq i32 %12, 0
  %or.cond.i.i = and i1 %11, %.not94.i.i
  br i1 %or.cond.i.i, label %bb.m, label %HUF_readStats_body_default.exit

bb.m:                                             ; preds = %bb.l
  %i.db = trunc nuw i64 %.074.i26.i to i32
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %3, align 4, !tbaa !10
  %i.dd = add nuw nsw i64 %.075.i24.i, 1
  br label %HUF_readStats_body_default.exit

HUF_readStats_body_default.exit:                  ; preds = %.lr.ph13.i, %bb.m, %bb.l, %bb.k, %bb.j, %.critedge.i.i, %.loopexit.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ -72, %bb.c ], [ -72, %bb.e ], [ %i.bt, %bb.h ], [ -20, %bb.j ], [ %i.dd, %bb.m ], [ -20, %bb.k ], [ -20, %bb.l ], [ -20, %bb.f ], [ -72, %bb.g ], [ -20, %.critedge.i.i ], [ -20, %.loopexit.i ], [ -20, %.lr.ph13.i ]
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
  %i.a = load i8, ptr %5, align 1, !tbaa !15      ; 2 uses
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
  %umax33 = tail call i64 @llvm.umax.i64(i64 %i.d, i64 2)
  %i.h = add nsw i64 %umax33, -1
  %i.i = lshr i64 %i.h, 1
  %i.j = add nuw i64 %i.i, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.k = add nsw i64 %i.b, -128
  %i.l = and i64 %i.b, 126
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %scevgep = getelementptr i8, ptr %i.m, i64 2
  %i.n = lshr i64 %i.k, 1
  %i.o = getelementptr i8, ptr %5, i64 %i.n
  %scevgep32 = getelementptr i8, ptr %i.o, i64 2
  %bound0 = icmp ult ptr %0, %scevgep32
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check34 = icmp ult i64 %i.d, 31
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.j, 12
  %n.vec = and i64 %i.j, -16                      ; 6 uses
  %i.q = shl i64 %n.vec, 1
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 9
  %wide.load = load <8 x i8>, ptr %i.g, align 1, !tbaa !15, !alias.scope !33 ; 2 uses
  %wide.load35 = load <8 x i8>, ptr %i.r, align 1, !tbaa !15, !alias.scope !33 ; 2 uses
  %i.s = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.t = lshr <8 x i8> %wide.load35, splat (i8 4)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = and <8 x i8> %wide.load, splat (i8 15)
  %i.w = and <8 x i8> %wide.load35, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.s, <8 x i8> %i.v, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %0, align 1, !tbaa !15, !alias.scope !34, !noalias !33
  %interleaved.vec38 = shufflevector <8 x i8> %i.t, <8 x i8> %i.w, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec38, ptr %i.u, align 1, !tbaa !15, !alias.scope !34, !noalias !33
  %i.x = icmp eq i64 %n.vec, 16
  br i1 %i.x, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 25
  %wide.load.1 = load <8 x i8>, ptr %i.y, align 1, !tbaa !15, !alias.scope !33 ; 2 uses
  %wide.load35.1 = load <8 x i8>, ptr %i.z, align 1, !tbaa !15, !alias.scope !33 ; 2 uses
  %i.aa = lshr <8 x i8> %wide.load.1, splat (i8 4)
  %i.ab = lshr <8 x i8> %wide.load35.1, splat (i8 4)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = and <8 x i8> %wide.load.1, splat (i8 15)
  %i.af = and <8 x i8> %wide.load35.1, splat (i8 15)
  %interleaved.vec.1 = shufflevector <8 x i8> %i.aa, <8 x i8> %i.ae, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %i.ac, align 1, !tbaa !15, !alias.scope !34, !noalias !33
  %interleaved.vec38.1 = shufflevector <8 x i8> %i.ab, <8 x i8> %i.af, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec38.1, ptr %i.ad, align 1, !tbaa !15, !alias.scope !34, !noalias !33
  %i.ag = icmp eq i64 %n.vec, 32
  br i1 %i.ag, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 41
  %wide.load.2 = load <8 x i8>, ptr %i.ah, align 1, !tbaa !15, !alias.scope !33 ; 2 uses
  %wide.load35.2 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !15, !alias.scope !33 ; 2 uses
  %i.aj = lshr <8 x i8> %wide.load.2, splat (i8 4)
  %i.ak = lshr <8 x i8> %wide.load35.2, splat (i8 4)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.an = and <8 x i8> %wide.load.2, splat (i8 15)
  %i.ao = and <8 x i8> %wide.load35.2, splat (i8 15)
  %interleaved.vec.2 = shufflevector <8 x i8> %i.aj, <8 x i8> %i.an, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.2, ptr %i.al, align 1, !tbaa !15, !alias.scope !34, !noalias !33
  %interleaved.vec38.2 = shufflevector <8 x i8> %i.ak, <8 x i8> %i.ao, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec38.2, ptr %i.am, align 1, !tbaa !15, !alias.scope !34, !noalias !33
  %i.ap = icmp eq i64 %n.vec, 48
  br i1 %i.ap, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 49
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 57
  %wide.load.3 = load <8 x i8>, ptr %i.aq, align 1, !tbaa !15, !alias.scope !33 ; 2 uses
  %wide.load35.3 = load <8 x i8>, ptr %i.ar, align 1, !tbaa !15, !alias.scope !33 ; 2 uses
  %i.as = lshr <8 x i8> %wide.load.3, splat (i8 4)
  %i.at = lshr <8 x i8> %wide.load35.3, splat (i8 4)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aw = and <8 x i8> %wide.load.3, splat (i8 15)
  %i.ax = and <8 x i8> %wide.load35.3, splat (i8 15)
  %interleaved.vec.3 = shufflevector <8 x i8> %i.as, <8 x i8> %i.aw, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.3, ptr %i.au, align 1, !tbaa !15, !alias.scope !34, !noalias !33
  %interleaved.vec38.3 = shufflevector <8 x i8> %i.at, <8 x i8> %i.ax, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec38.3, ptr %i.av, align 1, !tbaa !15, !alias.scope !34, !noalias !33
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.j, -4                     ; 3 uses
  %i.ay = shl i64 %n.vec39, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 3 uses
  %i.az = shl nuw i64 %index40, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 %index40
  %wide.load41 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !15, !alias.scope !33 ; 2 uses
  %i.bb = lshr <4 x i8> %wide.load41, splat (i8 4)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  %i.bd = and <4 x i8> %wide.load41, splat (i8 15)
  %interleaved.vec43 = shufflevector <4 x i8> %i.bb, <4 x i8> %i.bd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec43, ptr %i.bc, align 1, !tbaa !15, !alias.scope !34, !noalias !33
  %index.next44 = add nuw i64 %index40, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.j, %n.vec39
  br i1 %cmp.n45, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.q, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bf = phi i64 [ %i.bp, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 4 uses
  %i.bg = lshr exact i64 %i.bf, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bg ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !15
  %i.bj = lshr i8 %i.bi, 4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !15
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !15
  %i.bm = and i8 %i.bl, 15
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !15
  %i.bp = add nuw nsw i64 %i.bf, 2                ; 2 uses
  %i.bq = icmp samesign ugt i64 %i.d, %i.bp
  br i1 %i.bq, label %.lr.ph, label %.loopexit.thread, !llvm.loop !32

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  br label %.lr.ph13.preheader

bb.e:                                             ; preds = %bb.b
  %.not88.i = icmp ugt i64 %6, %i.b
  br i1 %.not88.i, label %bb.f, label %HUF_readStats_body.exit

bb.f:                                             ; preds = %bb.e
  %i.br = add i64 %1, -1
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.bt = tail call i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %i.br, ptr noundef nonnull %i.bs, i64 noundef %i.b, i32 noundef 6, ptr noundef %7, i64 noundef %8, i32 noundef 1) #10 ; 4 uses
  %i.bu = icmp ult i64 %i.bt, -119
  br i1 %i.bu, label %.loopexit, label %HUF_readStats_body.exit

.loopexit:                                        ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %.not92.i10.not = icmp eq i64 %i.bt, 0
  br i1 %.not92.i10.not, label %HUF_readStats_body.exit, label %.lr.ph13.preheader

.lr.ph13.preheader:                               ; preds = %.loopexit.thread, %.loopexit
  %.074.i26 = phi i64 [ %i.d, %.loopexit.thread ], [ %i.bt, %.loopexit ] ; 3 uses
  %.075.i24 = phi i64 [ %i.f, %.loopexit.thread ], [ %i.b, %.loopexit ]
  br label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph13.preheader, %bb.g
  %i.bv = phi i64 [ %i.cj, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %.0.i12 = phi i32 [ %i.ci, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %.076.i11 = phi i32 [ %i.ch, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !15  ; 2 uses
  %i.by = icmp ugt i8 %i.bx, 12
  br i1 %i.by, label %HUF_readStats_body.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph13
  %i.bz = zext nneg i8 %i.bx to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !10
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !10
  %i.cd = load i8, ptr %i.bw, align 1, !tbaa !15
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = ashr i32 %i.cf, 1
  %i.ch = add i32 %i.cg, %.076.i11                ; 4 uses
  %i.ci = add i32 %.0.i12, 1                      ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %.not92.i = icmp ugt i64 %.074.i26, %i.cj
  br i1 %.not92.i, label %.lr.ph13, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %bb.g
  %.old.i = icmp eq i32 %i.ch, 0
  br i1 %.old.i, label %HUF_readStats_body.exit, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.ck = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ch, i1 true) ; 2 uses
  %i.cl = xor i32 %i.ck, 31                       ; 2 uses
  %i.cm = icmp samesign ugt i32 %i.cl, 11
  br i1 %i.cm, label %HUF_readStats_body.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = sub nuw nsw i32 32, %i.ck
  store i32 %i.cn, ptr %4, align 4, !tbaa !10
  %i.co = shl nuw nsw i32 2, %i.cl
  %i.cp = sub i32 %i.co, %i.ch                    ; 2 uses
  %i.cq = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cp, i1 true) ; 2 uses
  %i.cr = lshr exact i32 -2147483648, %i.cq
  %.not93.i = icmp eq i32 %i.cr, %i.cp
  br i1 %.not93.i, label %bb.j, label %HUF_readStats_body.exit

bb.j:                                             ; preds = %bb.i
  %i.cs = sub nuw nsw i32 32, %i.cq               ; 2 uses
  %i.ct = trunc nuw nsw i32 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %.074.i26
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !15
  %i.cv = zext nneg i32 %i.cs to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !10
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !10 ; 2 uses
  %9 = icmp ugt i32 %i.da, 1
  %10 = and i32 %i.da, 1
  %.not94.i = icmp eq i32 %10, 0
  %or.cond.i = and i1 %9, %.not94.i
  br i1 %or.cond.i, label %bb.k, label %HUF_readStats_body.exit

bb.k:                                             ; preds = %bb.j
  %i.db = trunc nuw i64 %.074.i26 to i32
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %3, align 4, !tbaa !10
  %i.dd = add nuw nsw i64 %.075.i24, 1
  br label %HUF_readStats_body.exit

HUF_readStats_body.exit:                          ; preds = %.lr.ph13, %.loopexit, %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %.critedge.i, %bb.h, %bb.i, %bb.j, %bb.k
  %.3.i = phi i64 [ -72, %bb.a ], [ -72, %bb.c ], [ %i.bt, %bb.f ], [ -20, %bb.h ], [ %i.dd, %bb.k ], [ -20, %bb.i ], [ -20, %bb.j ], [ -20, %bb.d ], [ -72, %bb.e ], [ -20, %.critedge.i ], [ -20, %.loopexit ], [ -20, %.lr.ph13 ]
  ret i64 %.3.i
}

declare ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

declare i64 @FSE_decompress_wksp_bmi2(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"short", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!"branch_weights", i32 4, i32 12}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{ptr @FSE_readNCount, null}
!20 = !{ptr @FSE_readNCount}
!21 = distinct !{!21, !"LVerDomain"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !12, !17, !18}
!25 = distinct !{!25, !12, !17}
!26 = !{!22}
!27 = !{!23}
!28 = distinct !{!28, !"LVerDomain"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !12, !17, !18}
!32 = distinct !{!32, !12, !17}
!33 = !{!29}
!34 = !{!30}
end_hunk_0
