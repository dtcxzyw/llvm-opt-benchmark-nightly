Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/entropy_common?download=true
inline.NumInlined: 24
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@FSE_readNCount_bmi2:bb.a
  br i1 %.not177.i.i, label %bb.l, label %._crit_edge24

._crit_edge24:                                    ; preds = %bb.j, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %.1154.i.i.lcssa, i64 %i.at
  %i.aw = and i32 %i.ar, 7
  br label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ax = ptrtoint ptr %.1154.i.i.lcssa to i64
  %.neg.i.i = sub i64 %i.ax, %i.v
  %.tr.neg.i.i = trunc i64 %.neg.i.i to i32
  %.neg178.i.i = shl i32 %.tr.neg.i.i, 3
  %i.ay = add i32 %i.ar, %.neg178.i.i
  %i.az = and i32 %i.ay, 31
  br label %.thread

.thread:                                          ; preds = %._crit_edge24, %bb.l
  %.3156.i.i = phi ptr [ %i.av, %._crit_edge24 ], [ %i.u, %bb.l ] ; 2 uses
  %.3138.i.i = phi i32 [ %i.aw, %._crit_edge24 ], [ %i.az, %bb.l ] ; 2 uses
  %.3156.i.val.i = load i32, ptr %.3156.i.i, align 1, !tbaa !9
  %i.ba = lshr i32 %.3156.i.val.i, %.3138.i.i
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.e
  %.5158.i.i = phi ptr [ %.3156.i.i, %.thread ], [ %.0153.i.i, %bb.e ] ; 6 uses
  %.3142.i.i = phi i32 [ %i.ba, %.thread ], [ %.0139.i.i, %bb.e ] ; 2 uses
  %.5.i.i = phi i32 [ %.3138.i.i, %.thread ], [ %.0135.i.i, %bb.e ]
  %.2.i.i = phi i32 [ %i.ap, %.thread ], [ %.0133.i.i, %bb.e ] ; 2 uses
  %i.bb = shl nuw nsw i32 %.0144.i.i, 1
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  %i.bd = sub nsw i32 %i.bc, %.0147.i.i           ; 2 uses
  %i.be = add nsw i32 %.0144.i.i, -1
  %i.bf = and i32 %.3142.i.i, %i.be               ; 2 uses
  %i.bg = icmp ult i32 %i.bf, %i.bd
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bh = add nsw i32 %.0150.i.i, -1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bi = and i32 %.3142.i.i, %i.bc               ; 2 uses
  %.not179.i.i = icmp slt i32 %i.bi, %.0144.i.i
  %i.bj = select i1 %.not179.i.i, i32 0, i32 %i.bd
  %spec.select.i.i = sub nsw i32 %i.bi, %i.bj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.i.i = phi i32 [ %i.bh, %bb.n ], [ %.0150.i.i, %bb.o ]
  %.1.i.i = phi i32 [ %i.bf, %bb.n ], [ %spec.select.i.i, %bb.o ] ; 3 uses
  %.6.i.i = add nuw nsw i32 %.pn.i.i, %.5.i.i     ; 5 uses
  %i.bk = add nsw i32 %.1.i.i, -1                 ; 3 uses
  %i.bl = icmp sgt i32 %.1.i.i, 0
  %i.bm = sub nsw i32 1, %.1.i.i
  %.1148.i.i.p = select i1 %i.bl, i32 %i.bm, i32 %i.bk
  %.1148.i.i = add i32 %.1148.i.i.p, %.0147.i.i   ; 6 uses
  %i.bn = trunc i32 %i.bk to i16
  %i.bo = add nuw i32 %.2.i.i, 1                  ; 4 uses
  %i.bp = zext i32 %.2.i.i to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bp
  store i16 %i.bn, ptr %i.bq, align 2, !tbaa !15
  %i.br = icmp ne i32 %i.bk, 0
  %i.bs = icmp slt i32 %.1148.i.i, %.0144.i.i
  br i1 %i.bs, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bt = icmp slt i32 %.1148.i.i, 2
  br i1 %i.bt, label %.thread8, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.1148.i.i, i1 true) ; 2 uses
  %i.bv = sub nuw nsw i32 32, %i.bu
  %i.bw = lshr exact i32 -2147483648, %i.bu
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.1151.i.i = phi i32 [ %i.bv, %bb.r ], [ %.0150.i.i, %bb.p ]
  %.1145.i.i = phi i32 [ %i.bw, %bb.r ], [ %.0144.i.i, %bb.p ]
  %.not180.i.i = icmp ult i32 %i.bo, %i.d
  br i1 %.not180.i.i, label %bb.t, label %.thread8

bb.t:                                             ; preds = %bb.s
  %.not181.i.i = icmp ugt ptr %.5158.i.i, %i.s
  %i.bx = lshr i32 %.6.i.i, 3
  %i.by = zext nneg i32 %i.bx to i64              ; 2 uses
  br i1 %.not181.i.i, label %bb.u, label %._crit_edge25, !prof !13

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %.5158.i.i, i64 %i.by
  %.not182.i.i = icmp ugt ptr %i.bz, %i.u
  br i1 %.not182.i.i, label %bb.v, label %._crit_edge25

._crit_edge25:                                    ; preds = %bb.t, %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %.5158.i.i, i64 %i.by
  %i.cb = and i32 %.6.i.i, 7
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cc = ptrtoint ptr %.5158.i.i to i64
  %.neg183.i.i = sub i64 %i.cc, %i.v
  %.tr.neg184.i.i = trunc i64 %.neg183.i.i to i32
  %.neg185.i.i = shl i32 %.tr.neg184.i.i, 3
  %i.cd = add i32 %.6.i.i, %.neg185.i.i
  %i.ce = and i32 %i.cd, 31
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge25, %bb.v
  %.6159.i.i = phi ptr [ %i.ca, %._crit_edge25 ], [ %i.u, %bb.v ] ; 2 uses
  %.7.i.i = phi i32 [ %i.cb, %._crit_edge25 ], [ %i.ce, %bb.v ] ; 2 uses
  %.6159.i.val.i = load i32, ptr %.6159.i.i, align 1, !tbaa !9
  %i.cf = lshr i32 %.6159.i.val.i, %.7.i.i
  br label %bb.e

.thread8:                                         ; preds = %bb.s, %bb.q, %._crit_edge
  %.8161.i.i = phi ptr [ %.1154.i.i.lcssa, %._crit_edge ], [ %.5158.i.i, %bb.q ], [ %.5158.i.i, %bb.s ]
  %.2149.i.i = phi i32 [ %.0147.i.i, %._crit_edge ], [ %.1148.i.i, %bb.q ], [ %.1148.i.i, %bb.s ]
  %.9.i.i = phi i32 [ %i.ar, %._crit_edge ], [ %.6.i.i, %bb.q ], [ %.6.i.i, %bb.s ] ; 2 uses
  %.3.i.i = phi i32 [ %i.ap, %._crit_edge ], [ %i.bo, %bb.q ], [ %i.bo, %bb.s ] ; 2 uses
  %.not186.i.i = icmp eq i32 %.2149.i.i, 1
  br i1 %.not186.i.i, label %bb.x, label %FSE_readNCount_body_default.exit

bb.x:                                             ; preds = %.thread8
  %i.cg = icmp ugt i32 %.3.i.i, %i.d
  br i1 %i.cg, label %FSE_readNCount_body_default.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = icmp sgt i32 %.9.i.i, 32
  br i1 %i.ch, label %FSE_readNCount_body_default.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = add i32 %.3.i.i, -1
  store i32 %i.ci, ptr %1, align 4, !tbaa !9
  %i.cj = add nsw i32 %.9.i.i, 7
  %i.ck = ashr i32 %i.cj, 3
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %.8161.i.i, i64 %i.cl
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %3 to i64
  %i.cp = sub i64 %i.cn, %i.co
  br label %FSE_readNCount_body_default.exit

FSE_readNCount_body_default.exit:                 ; preds = %bb.b, %bb.c, %.thread8, %bb.x, %bb.y, %bb.z
  %.1163.i.i = phi i64 [ %.0162.i.i, %bb.b ], [ %i.cp, %bb.z ], [ -44, %bb.c ], [ -20, %.thread8 ], [ -48, %bb.x ], [ -20, %bb.y ]
  ret i64 %.1163.i.i
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @FSE_readNCount(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @FSE_readNCount_bmi2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 poison)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, -9223372036854775808) i64 @HUF_readStats(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [219 x i32], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = call i64 @HUF_readStats_wksp(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %i.a, i64 noundef 876, i32 poison)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, -9223372036854775808) i64 @HUF_readStats_wksp(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i32 %9) local_unnamed_addr #1 {
bb.a:
  %.not.i.i = icmp eq i64 %6, 0
  br i1 %.not.i.i, label %HUF_readStats_body_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %5, align 1, !tbaa !22      ; 2 uses
  %i.b = zext i8 %i.a to i64                      ; 7 uses
  %i.c = icmp slt i8 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i64 %i.b, -127                   ; 6 uses
  %i.e = add nsw i64 %i.b, -126
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %.not90.i.i = icmp ult i64 %i.f, %6
  br i1 %.not90.i.i, label %bb.d, label %HUF_readStats_body_default.exit

bb.d:                                             ; preds = %bb.c
  %.not91.i.i = icmp ult i64 %i.d, %1
  br i1 %.not91.i.i, label %iter.check, label %HUF_readStats_body_default.exit

iter.check:                                       ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.d, i64 2)
  %i.h = add nsw i64 %umax, -1
  %i.i = lshr i64 %i.h, 1
  %i.j = add nuw i64 %i.i, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.k = add nsw i64 %i.b, -128
  %i.l = and i64 %i.b, 126
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 2
  %10 = lshr i64 %i.k, 1
  %i.o = getelementptr i8, ptr %5, i64 %10
  %i.p = getelementptr i8, ptr %i.o, i64 2
  %bound0 = icmp ult ptr %0, %i.p
  %bound1 = icmp ult ptr %i.g, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check17 = icmp ult i64 %i.d, 31
  br i1 %min.iters.check17, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.j, 12
  %n.vec = and i64 %i.j, -16                      ; 6 uses
  %i.r = shl i64 %n.vec, 1
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 9
  %wide.load = load <8 x i8>, ptr %i.g, align 1, !tbaa !22, !alias.scope !23 ; 2 uses
  %wide.load18 = load <8 x i8>, ptr %i.s, align 1, !tbaa !22, !alias.scope !23 ; 2 uses
  %i.t = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.u = lshr <8 x i8> %wide.load18, splat (i8 4)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = and <8 x i8> %wide.load, splat (i8 15)
  %i.x = and <8 x i8> %wide.load18, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.t, <8 x i8> %i.w, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %0, align 1, !tbaa !22, !alias.scope !24, !noalias !23
  %interleaved.vec19 = shufflevector <8 x i8> %i.u, <8 x i8> %i.x, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec19, ptr %i.v, align 1, !tbaa !22, !alias.scope !24, !noalias !23
  %i.y = icmp eq i64 %n.vec, 16
  br i1 %i.y, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 25
  %wide.load.1 = load <8 x i8>, ptr %i.z, align 1, !tbaa !22, !alias.scope !23 ; 2 uses
  %wide.load18.1 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !22, !alias.scope !23 ; 2 uses
  %i.ab = lshr <8 x i8> %wide.load.1, splat (i8 4)
  %i.ac = lshr <8 x i8> %wide.load18.1, splat (i8 4)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = and <8 x i8> %wide.load.1, splat (i8 15)
  %i.ag = and <8 x i8> %wide.load18.1, splat (i8 15)
  %interleaved.vec.1 = shufflevector <8 x i8> %i.ab, <8 x i8> %i.af, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %i.ad, align 1, !tbaa !22, !alias.scope !24, !noalias !23
  %interleaved.vec19.1 = shufflevector <8 x i8> %i.ac, <8 x i8> %i.ag, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec19.1, ptr %i.ae, align 1, !tbaa !22, !alias.scope !24, !noalias !23
  %i.ah = icmp eq i64 %n.vec, 32
  br i1 %i.ah, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 41
  %wide.load.2 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !22, !alias.scope !23 ; 2 uses
  %wide.load18.2 = load <8 x i8>, ptr %i.aj, align 1, !tbaa !22, !alias.scope !23 ; 2 uses
  %i.ak = lshr <8 x i8> %wide.load.2, splat (i8 4)
  %i.al = lshr <8 x i8> %wide.load18.2, splat (i8 4)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = and <8 x i8> %wide.load.2, splat (i8 15)
  %i.ap = and <8 x i8> %wide.load18.2, splat (i8 15)
  %interleaved.vec.2 = shufflevector <8 x i8> %i.ak, <8 x i8> %i.ao, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.2, ptr %i.am, align 1, !tbaa !22, !alias.scope !24, !noalias !23
  %interleaved.vec19.2 = shufflevector <8 x i8> %i.al, <8 x i8> %i.ap, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec19.2, ptr %i.an, align 1, !tbaa !22, !alias.scope !24, !noalias !23
  %i.aq = icmp eq i64 %n.vec, 48
  br i1 %i.aq, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 49
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 57
  %wide.load.3 = load <8 x i8>, ptr %i.ar, align 1, !tbaa !22, !alias.scope !23 ; 2 uses
  %wide.load18.3 = load <8 x i8>, ptr %i.as, align 1, !tbaa !22, !alias.scope !23 ; 2 uses
  %i.at = lshr <8 x i8> %wide.load.3, splat (i8 4)
  %i.au = lshr <8 x i8> %wide.load18.3, splat (i8 4)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = and <8 x i8> %wide.load.3, splat (i8 15)
  %i.ay = and <8 x i8> %wide.load18.3, splat (i8 15)
  %interleaved.vec.3 = shufflevector <8 x i8> %i.at, <8 x i8> %i.ax, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.3, ptr %i.av, align 1, !tbaa !22, !alias.scope !24, !noalias !23
  %interleaved.vec19.3 = shufflevector <8 x i8> %i.au, <8 x i8> %i.ay, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec19.3, ptr %i.aw, align 1, !tbaa !22, !alias.scope !24, !noalias !23
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.j, -4                     ; 3 uses
  %i.az = shl i64 %n.vec20, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.ba = shl nuw i64 %index21, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 %index21
  %wide.load22 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !22, !alias.scope !23 ; 2 uses
  %i.bc = lshr <4 x i8> %wide.load22, splat (i8 4)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba
  %i.be = and <4 x i8> %wide.load22, splat (i8 15)
  %interleaved.vec23 = shufflevector <4 x i8> %i.bc, <4 x i8> %i.be, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec23, ptr %i.bd, align 1, !tbaa !22, !alias.scope !24, !noalias !23
  %index.next24 = add nuw i64 %index21, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next24, %n.vec20
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %i.j, %n.vec20
  br i1 %cmp.n25, label %.loopexit.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bg = phi i64 [ %i.bp, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bh = lshr exact i64 %i.bg, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bh ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !22
  %i.bk = lshr i8 %i.bj, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg ; 2 uses
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !22
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !22
  %i.bn = and i8 %i.bm, 15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !22
  %i.bp = add nuw nsw i64 %i.bg, 2                ; 2 uses
  %i.bq = icmp samesign ugt i64 %i.d, %i.bp
  br i1 %i.bq, label %.lr.ph.i, label %.loopexit.thread.i, !llvm.loop !20

.loopexit.thread.i:                               ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  br label %.lr.ph13.preheader.i

bb.e:                                             ; preds = %bb.b
  %.not88.i.i = icmp ugt i64 %6, %i.b
  br i1 %.not88.i.i, label %bb.f, label %HUF_readStats_body_default.exit

bb.f:                                             ; preds = %bb.e
  %i.br = add i64 %1, -1
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.bt = tail call i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %i.br, ptr noundef nonnull %i.bs, i64 noundef %i.b, i32 noundef 6, ptr noundef %7, i64 noundef %8, i32 noundef 0) #8 ; 4 uses
  %i.bu = icmp ult i64 %i.bt, -119
  br i1 %i.bu, label %.loopexit.i, label %HUF_readStats_body_default.exit

.loopexit.i:                                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %.not92.i10.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not92.i10.not.i, label %HUF_readStats_body_default.exit, label %.lr.ph13.preheader.i

.lr.ph13.preheader.i:                             ; preds = %.loopexit.i, %.loopexit.thread.i
  %.074.i26.i = phi i64 [ %i.d, %.loopexit.thread.i ], [ %i.bt, %.loopexit.i ] ; 3 uses
  %.075.i24.i = phi i64 [ %i.f, %.loopexit.thread.i ], [ %i.b, %.loopexit.i ]
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %bb.g, %.lr.ph13.preheader.i
  %i.bv = phi i64 [ %i.cj, %bb.g ], [ 0, %.lr.ph13.preheader.i ]
  %.0.i12.i = phi i32 [ %i.ci, %bb.g ], [ 0, %.lr.ph13.preheader.i ]
  %.076.i11.i = phi i32 [ %i.ch, %bb.g ], [ 0, %.lr.ph13.preheader.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !22  ; 2 uses
  %i.by = icmp ugt i8 %i.bx, 12
  br i1 %i.by, label %HUF_readStats_body_default.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph13.i
  %i.bz = zext nneg i8 %i.bx to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !9
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !9
  %i.cd = load i8, ptr %i.bw, align 1, !tbaa !22
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = ashr i32 %i.cf, 1
  %i.ch = add i32 %i.cg, %.076.i11.i              ; 4 uses
  %i.ci = add i32 %.0.i12.i, 1                    ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %.not92.i.i = icmp ugt i64 %.074.i26.i, %i.cj
  br i1 %.not92.i.i, label %.lr.ph13.i, label %.critedge.i.i, !llvm.loop !21

.critedge.i.i:                                    ; preds = %bb.g
  %.old.i.i = icmp eq i32 %i.ch, 0
  br i1 %.old.i.i, label %HUF_readStats_body_default.exit, label %bb.h

bb.h:                                             ; preds = %.critedge.i.i
  %i.ck = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ch, i1 true) ; 2 uses
  %i.cl = xor i32 %i.ck, 31                       ; 2 uses
  %i.cm = icmp samesign ugt i32 %i.cl, 11
  br i1 %i.cm, label %HUF_readStats_body_default.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = sub nuw nsw i32 32, %i.ck
  store i32 %i.cn, ptr %4, align 4, !tbaa !9
  %i.co = shl nuw nsw i32 2, %i.cl
  %i.cp = sub i32 %i.co, %i.ch                    ; 2 uses
end_hunk_0
