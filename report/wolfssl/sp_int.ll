Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sp_int?download=true
inline.NumInlined: 293
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_sp_invmod:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store volatile i16 %i.q, ptr %i.s, align 2, !tbaa !37
  store volatile i16 0, ptr %i.m, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  store volatile i64 0, ptr %i.t, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 18
  store volatile i16 %i.q, ptr %i.u, align 2, !tbaa !37
  store volatile i16 0, ptr %i.o, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store volatile i64 0, ptr %i.v, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 18
  store volatile i16 %i.q, ptr %i.w, align 2, !tbaa !37
  %i.x = shl nuw nsw i16 %i.a, 1
  %i.y = or disjoint i16 %i.x, 1
  store volatile i16 0, ptr %i.i, align 16, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 36 uses
  store volatile i64 0, ptr %i.z, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store volatile i16 %i.y, ptr %i.aa, align 2, !tbaa !37
  br i1 %i.b, label %bb.d, label %sp_count_bits.exit.thread.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !36
  %i.ad = and i64 %i.ac, 1
  %i.ae = icmp eq i64 %i.ad, 0                    ; 3 uses
  br i1 %i.ae, label %bb.e, label %.thread282

bb.e:                                             ; preds = %bb.d
  %i.af = load i16, ptr %0, align 8, !tbaa !40    ; 3 uses
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.r, align 8, !tbaa !36
  br label %sp_mod.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = zext i16 %i.af to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = shl nuw nsw i64 %i.ah, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull readonly align 8 %i.ai, i64 %i.aj, i1 false)
  br label %sp_mod.exit

sp_mod.exit:                                      ; preds = %bb.f, %bb.g
  store i16 %i.af, ptr %i.f, align 16, !tbaa !40
  %i.ak = call i32 @sp_div(ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %0, ptr noundef null, ptr noundef nonnull %i.m) ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.h, label %sp_sub.exit

bb.h:                                             ; preds = %sp_mod.exit
  %i.am = load i16, ptr %i.m, align 8, !tbaa !40
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %sp_sub.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.pre = load i16, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not25.i = icmp eq i16 %.pre, 0
  br i1 %.not25.i, label %sp_count_bits.exit.thread.thread, label %.thread282

.thread282:                                       ; preds = %bb.d, %bb.i
  %.080.ph290 = phi ptr [ %i.m, %bb.i ], [ %0, %bb.d ] ; 2 uses
  %.081.ph289 = phi ptr [ %0, %bb.i ], [ %1, %bb.d ] ; 4 uses
  %.pre.i.i288 = phi i16 [ %.pre, %bb.i ], [ %i.a, %bb.d ] ; 2 uses
  %i.ao = zext i16 %.pre.i.i288 to i64            ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ap = icmp sgt i64 %indvars.iv.i342, 1
  br i1 %i.ap, label %bb.k, label %sp_count_bits.exit.thread, !llvm.loop !2

bb.k:                                             ; preds = %.thread282, %bb.j
  %indvars.iv.i342 = phi i64 [ %i.ao, %.thread282 ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i342, -1 ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %.081.ph289, i64 %indvars.iv.i342
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !36 ; 5 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.j, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.k
  %i.at = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.au = shl nuw nsw i32 %i.at, 6                ; 2 uses
  %i.av = icmp ugt i64 %i.ar, 4294967295
  br i1 %i.av, label %bb.l, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.aw = call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %reass.sub.i = add nuw nsw i32 %i.au, 64
  %i.ay = sub nuw nsw i32 %reass.sub.i, %i.ax
  br label %sp_count_bits.exit

bb.l:                                             ; preds = %.critedge.i
  %i.az = add nuw nsw i32 %i.au, 64               ; 2 uses
  %i.ba = icmp sgt i64 %i.ar, -1
  br i1 %i.ba, label %.lr.ph36.i, label %sp_count_bits.exit

.lr.ph36.i:                                       ; preds = %bb.l, %.lr.ph36.i
  %.035.i = phi i64 [ %i.bc, %.lr.ph36.i ], [ %i.ar, %bb.l ]
  %.234.i = phi i32 [ %i.bb, %.lr.ph36.i ], [ %i.az, %bb.l ]
  %i.bb = add nsw i32 %.234.i, -1                 ; 2 uses
  %i.bc = shl nuw i64 %.035.i, 1                  ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, -1
  br i1 %i.bd, label %.lr.ph36.i, label %sp_count_bits.exit, !llvm.loop !3

sp_count_bits.exit:                               ; preds = %.lr.ph36.i, %.lr.ph.preheader.i, %bb.l
  %.5.i = phi i32 [ %i.ay, %.lr.ph.preheader.i ], [ %i.az, %bb.l ], [ %i.bb, %.lr.ph36.i ]
  %i.be = icmp sgt i32 %.5.i, 1023
  br i1 %i.be, label %bb.m, label %sp_count_bits.exit.thread

bb.m:                                             ; preds = %sp_count_bits.exit
  %i.bf = call fastcc i32 @_sp_invmod_div(ptr noundef %.080.ph290, ptr noundef nonnull %.081.ph289, ptr noundef nonnull %i.f, ptr noundef nonnull %i.m, ptr noundef nonnull %i.o, ptr noundef %i.i, ptr noundef %i.i)
  br label %_sp_invmod_bin.exit

sp_count_bits.exit.thread.thread:                 ; preds = %bb.c, %bb.i
  %.080.ph278 = phi ptr [ %i.m, %bb.i ], [ %0, %bb.c ]
  %.081.ph276 = phi ptr [ %0, %bb.i ], [ %1, %bb.c ]
  store i64 0, ptr %i.r, align 8, !tbaa !36
  br label %_sp_copy.exit.i

sp_count_bits.exit.thread:                        ; preds = %bb.j, %sp_count_bits.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.081.ph289, i64 8
  %i.bh = shl nuw nsw i64 %i.ao, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull readonly align 8 %i.bg, i64 %i.bh, i1 false)
  br label %_sp_copy.exit.i

_sp_copy.exit.i:                                  ; preds = %sp_count_bits.exit.thread, %sp_count_bits.exit.thread.thread
  %.ph280 = phi i1 [ %i.ae, %sp_count_bits.exit.thread ], [ %i.b, %sp_count_bits.exit.thread.thread ]
  %.080.ph277 = phi ptr [ %.080.ph290, %sp_count_bits.exit.thread ], [ %.080.ph278, %sp_count_bits.exit.thread.thread ] ; 4 uses
  %.081.ph275 = phi ptr [ %.081.ph289, %sp_count_bits.exit.thread ], [ %.081.ph276, %sp_count_bits.exit.thread.thread ] ; 2 uses
  %.pre.i.i273 = phi i16 [ %.pre.i.i288, %sp_count_bits.exit.thread ], [ 0, %sp_count_bits.exit.thread.thread ] ; 5 uses
  store i16 %.pre.i.i273, ptr %i.f, align 16, !tbaa !40
  %.not.i100 = icmp eq ptr %.080.ph277, %i.m
  br i1 %.not.i100, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_sp_copy.exit.i
  %i.bi = load i16, ptr %.080.ph277, align 8, !tbaa !40 ; 2 uses
  %i.bj = icmp eq i16 %i.bi, 0
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 0, ptr %i.t, align 8, !tbaa !36
  br label %_sp_copy.exit65.i

bb.p:                                             ; preds = %bb.n
  %i.bk = zext i16 %i.bi to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.080.ph277, i64 8
  %i.bm = shl nuw nsw i64 %i.bk, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull readonly align 8 %i.bl, i64 %i.bm, i1 false)
  %.pre.i64.i = load i16, ptr %.080.ph277, align 8, !tbaa !40
  br label %_sp_copy.exit65.i

_sp_copy.exit65.i:                                ; preds = %bb.p, %bb.o
  %i.bn = phi i16 [ %.pre.i64.i, %bb.p ], [ 0, %bb.o ]
  store i16 %i.bn, ptr %i.m, align 8, !tbaa !40
  br label %bb.q

bb.q:                                             ; preds = %_sp_copy.exit65.i, %_sp_copy.exit.i
  store volatile i16 0, ptr %i.o, align 8, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 29 uses
  store volatile i64 0, ptr %i.bo, align 8, !tbaa !36
  store i64 1, ptr %i.z, align 8, !tbaa !36
  store i16 1, ptr %i.i, align 16, !tbaa !34
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 13 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 12 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.081.ph275, i64 8 ; 16 uses
  br label %_sp_sub_off.exit241.i.outer

_sp_sub_off.exit241.i.outer:                      ; preds = %_sp_sub_off.exit241.i.outer.backedge, %bb.q
  %.ph431 = phi i16 [ %.pre.i.i273, %bb.q ], [ %.ph431.be, %_sp_sub_off.exit241.i.outer.backedge ] ; 18 uses
  %.ph432.a = phi i16 [ %.pre.i.i273, %bb.q ], [ %.ph432.be.a, %_sp_sub_off.exit241.i.outer.backedge ]
  %.ph434.a = phi i16 [ %.pre.i.i273, %bb.q ], [ %.ph434.be, %_sp_sub_off.exit241.i.outer.backedge ]
  %.ph435 = phi i16 [ %.pre.i.i273, %bb.q ], [ %.ph435.be, %_sp_sub_off.exit241.i.outer.backedge ]
  %.ph436.a = phi i16 [ 1, %bb.q ], [ %i.bv, %_sp_sub_off.exit241.i.outer.backedge ] ; 2 uses
  %wide.trip.count.i67.i = zext i16 %.ph431 to i64 ; 6 uses
  %i.bs = add nsw i64 %wide.trip.count.i67.i, -1
  br label %_sp_sub_off.exit241.i.outer438

_sp_sub_off.exit241.i.outer438:                   ; preds = %_sp_sub_off.exit241.i.outer, %_sp_div_2.exit81.i
  %.ph439.a = phi i16 [ %.ph432.a, %_sp_sub_off.exit241.i.outer ], [ %i.gx, %_sp_div_2.exit81.i ] ; 17 uses
  %.ph440.a = phi i16 [ %.ph436.a, %_sp_sub_off.exit241.i.outer ], [ %i.bv, %_sp_div_2.exit81.i ]
  %.ph441 = phi i16 [ %.ph434.a, %_sp_sub_off.exit241.i.outer ], [ %i.gy, %_sp_div_2.exit81.i ]
  %.ph442.a = phi i16 [ %.ph435, %_sp_sub_off.exit241.i.outer ], [ %i.gz, %_sp_div_2.exit81.i ]
  %.ph443.a = phi i16 [ %.ph436.a, %_sp_sub_off.exit241.i.outer ], [ %i.bx, %_sp_div_2.exit81.i ]
  %wide.trip.count.i95.i = zext i16 %.ph439.a to i64 ; 6 uses
  %i.bt = add nsw i64 %wide.trip.count.i95.i, -1
  %.promoted619 = load i16, ptr %i.m, align 8, !tbaa !40
  br label %_sp_sub_off.exit241.i.outer444

_sp_sub_off.exit241.i.outer444:                   ; preds = %_sp_sub_off.exit241.i.outer438, %_sp_div_2.exit143.i
  %.promoted620 = phi i16 [ %.promoted619, %_sp_sub_off.exit241.i.outer438 ], [ %i.ik, %_sp_div_2.exit143.i ]
  %.ph445.a = phi i16 [ %.ph440.a, %_sp_sub_off.exit241.i.outer438 ], [ %i.mj, %_sp_div_2.exit143.i ]
  %.ph446 = phi i16 [ %.ph441, %_sp_sub_off.exit241.i.outer438 ], [ %i.ma, %_sp_div_2.exit143.i ] ; 17 uses
  %.ph447 = phi i16 [ %.ph442.a, %_sp_sub_off.exit241.i.outer438 ], [ %i.mb, %_sp_div_2.exit143.i ]
  %.ph448 = phi i16 [ %.ph443.a, %_sp_sub_off.exit241.i.outer438 ], [ %i.mj, %_sp_div_2.exit143.i ]
  %wide.trip.count90.i314.i = zext i16 %.ph446 to i64 ; 5 uses
  %i.bu = add nsw i64 %wide.trip.count90.i314.i, -1
  br label %_sp_sub_off.exit241.i

_sp_sub_off.exit241.i:                            ; preds = %_sp_sub_off.exit241.i.backedge, %_sp_sub_off.exit241.i.outer444
  %.0.in.lcssa.i253.i618 = phi i16 [ %.promoted620, %_sp_sub_off.exit241.i.outer444 ], [ %.0.in.lcssa.i253.i, %_sp_sub_off.exit241.i.backedge ] ; 12 uses
  %i.bv = phi i16 [ %.ph445.a, %_sp_sub_off.exit241.i.outer444 ], [ %.be450, %_sp_sub_off.exit241.i.backedge ] ; 12 uses
  %i.bw = phi i16 [ %.ph447, %_sp_sub_off.exit241.i.outer444 ], [ %.be449, %_sp_sub_off.exit241.i.backedge ] ; 14 uses
  %i.bx = phi i16 [ %.ph448, %_sp_sub_off.exit241.i.outer444 ], [ %.be450, %_sp_sub_off.exit241.i.backedge ] ; 16 uses
  %i.by = icmp eq i16 %.0.in.lcssa.i253.i618, 1
  br i1 %i.by, label %bb.r, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_sp_sub_off.exit241.i
  %.pre436.i.a = load i16, ptr %i.f, align 16, !tbaa !40
  br label %bb.s

bb.r:                                             ; preds = %_sp_sub_off.exit241.i
  %i.bz = load i64, ptr %i.bp, align 8, !tbaa !36
  %i.ca = icmp eq i64 %i.bz, 1
  %.pre437.i = load i16, ptr %i.f, align 16, !tbaa !40 ; 2 uses
  br i1 %i.ca, label %..critedge_crit_edge.i, label %bb.s

..critedge_crit_edge.i:                           ; preds = %bb.r
  %i.cb = icmp eq i16 %.pre437.i, 0
  %i.cc = select i1 %i.cb, i32 -98, i32 0
  br label %_sp_invmod_bin.exit

bb.s:                                             ; preds = %bb.r, %._crit_edge.i
  %i.cd = phi i16 [ %.pre436.i.a, %._crit_edge.i ], [ %.pre437.i, %bb.r ] ; 13 uses
  %.not58.i = icmp eq i16 %i.cd, 0
  br i1 %.not58.i, label %sp_sub.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = load i64, ptr %i.bq, align 8, !tbaa !36 ; 4 uses
  %i.cf = and i64 %i.ce, 1
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.ch = zext i16 %i.cd to i32
  %i.ci = add nsw i32 %i.ch, -1                   ; 2 uses
  %.not392.i = icmp eq i16 %i.cd, 1
  br i1 %.not392.i, label %_sp_div_2.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u
  %wide.trip.count.i.i = zext nneg i32 %i.ci to i64 ; 4 uses
  %min.iters.check372 = icmp ult i16 %i.cd, 5
  br i1 %min.iters.check372, label %scalar.ph371.preheader, label %vector.ph373

vector.ph373:                                     ; preds = %.lr.ph.i.i
  %n.vec374 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %vector.recur.init377 = insertelement <2 x i64> poison, i64 %i.ce, i64 1
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph373
  %index376 = phi i64 [ 0, %vector.ph373 ], [ %index.next381, %vector.body375 ] ; 3 uses
  %vector.recur378 = phi <2 x i64> [ %vector.recur.init377, %vector.ph373 ], [ %wide.load380, %vector.body375 ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index376 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index376 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %wide.load379.a = load <2 x i64>, ptr %i.cl, align 16, !tbaa !36 ; 3 uses
  %wide.load380 = load <2 x i64>, ptr %i.cm, align 16, !tbaa !36 ; 4 uses
  %i.cn = shufflevector <2 x i64> %vector.recur378, <2 x i64> %wide.load379.a, <2 x i32> <i32 1, i32 2>
  %i.co = shufflevector <2 x i64> %wide.load379.a, <2 x i64> %wide.load380, <2 x i32> <i32 1, i32 2>
  %i.cp = call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %wide.load379.a, <2 x i64> %i.cn, <2 x i64> splat (i64 63))
  %i.cq = call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %wide.load380, <2 x i64> %i.co, <2 x i64> splat (i64 63))
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x i64> %i.cp, ptr %i.cj, align 8, !tbaa !36
  store <2 x i64> %i.cq, ptr %i.cr, align 8, !tbaa !36
  %index.next381 = add nuw i64 %index376, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next381, %n.vec374
  br i1 %i.cs, label %middle.block382, label %vector.body375, !llvm.loop !124

middle.block382:                                  ; preds = %vector.body375
  %vector.recur.extract383 = extractelement <2 x i64> %wide.load380, i64 1
  %cmp.n384 = icmp eq i64 %n.vec374, %wide.trip.count.i.i
  br i1 %cmp.n384, label %_sp_div_2.exit.loopexit.i, label %scalar.ph371.preheader

scalar.ph371.preheader:                           ; preds = %.lr.ph.i.i, %middle.block382
  %.ph425 = phi i64 [ %i.ce, %.lr.ph.i.i ], [ %vector.recur.extract383, %middle.block382 ]
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec374, %middle.block382 ]
  br label %scalar.ph371

scalar.ph371:                                     ; preds = %scalar.ph371.preheader, %scalar.ph371
  %i.ct = phi i64 [ %i.cw, %scalar.ph371 ], [ %.ph425, %scalar.ph371.preheader ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph371 ], [ %indvars.iv.i.i.ph, %scalar.ph371.preheader ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next.i.i
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !36 ; 2 uses
  %i.cx = call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.ct, i64 63)
  store i64 %i.cx, ptr %i.cu, align 8, !tbaa !36
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_sp_div_2.exit.loopexit.i, label %scalar.ph371, !llvm.loop !125

_sp_div_2.exit.loopexit.i:                        ; preds = %scalar.ph371, %middle.block382
  %.phi.trans.insert432.i = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %wide.trip.count.i.i
  %.pre433.i.a = load i64, ptr %.phi.trans.insert432.i, align 8, !tbaa !36
  br label %_sp_div_2.exit.i

_sp_div_2.exit.i:                                 ; preds = %bb.u, %_sp_div_2.exit.loopexit.i
  %i.cy = phi i64 [ %.pre433.i.a, %_sp_div_2.exit.loopexit.i ], [ %i.ce, %bb.u ]
  %.0.lcssa.i.i = phi i32 [ %i.ci, %_sp_div_2.exit.loopexit.i ], [ 0, %bb.u ] ; 2 uses
  %i.cz = zext nneg i32 %.0.lcssa.i.i to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cz
  %i.db = lshr i64 %i.cy, 1                       ; 2 uses
  store i64 %i.db, ptr %i.da, align 8, !tbaa !36
  %i.dc = add nuw nsw i32 %.0.lcssa.i.i, 1
  %i.dd = add nsw i64 %i.db, -1
  %.neg.i.i = ashr i64 %i.dd, 63
  %.neg18.i.i = trunc nsw i64 %.neg.i.i to i32
  %i.de = add nsw i32 %i.dc, %.neg18.i.i
  %i.df = trunc nuw i32 %i.de to i16
  store i16 %i.df, ptr %i.f, align 16, !tbaa !40
  %i.dg = load i16, ptr %i.o, align 8, !tbaa !40  ; 7 uses
  %.not62.i = icmp eq i16 %i.dg, 0
  br i1 %.not62.i, label %_sp_div_2.exit81.i, label %bb.v

bb.v:                                             ; preds = %_sp_div_2.exit.i
  %i.dh = load i64, ptr %i.bo, align 8, !tbaa !36
  %i.di = and i64 %i.dh, 1
  %.not63.i = icmp eq i64 %i.di, 0
  br i1 %.not63.i, label %_sp_add_off.exit.i, label %.lr.ph.i66.i

.lr.ph.i66.i:                                     ; preds = %bb.v
  %i.dj = add i16 %i.dg, -1
  %umin.i.i = call i16 @llvm.umin.i16(i16 %.ph431, i16 %i.dj) ; 2 uses
  %i.dk = add nuw i16 %umin.i.i, 1
  %wide.trip.count80.i.i = zext i16 %i.dg to i64  ; 6 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.lr.ph.i66.i
  %indvars.iv.i68.i = phi i64 [ 0, %.lr.ph.i66.i ], [ %indvars.iv.next.i70.i, %bb.x ] ; 4 uses
  %.05058.i.i = phi i128 [ 0, %.lr.ph.i66.i ], [ %i.du, %bb.x ] ; 2 uses
  %exitcond.not.i69.i = icmp eq i64 %indvars.iv.i68.i, %wide.trip.count.i67.i
  br i1 %exitcond.not.i69.i, label %.critedge.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i68.i ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !36
  %i.dn = zext i64 %i.dm to i128
  %i.do = add nuw nsw i128 %.05058.i.i, %i.dn
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i68.i
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !36
  %i.dr = zext i64 %i.dq to i128
  %i.ds = add nuw nsw i128 %i.do, %i.dr           ; 2 uses
  %i.dt = trunc i128 %i.ds to i64
  store i64 %i.dt, ptr %i.dl, align 8, !tbaa !36
  %i.du = lshr i128 %i.ds, 64                     ; 2 uses
  %indvars.iv.next.i70.i = add nuw nsw i64 %indvars.iv.i68.i, 1 ; 2 uses
  %exitcond81.not.i.i = icmp eq i64 %indvars.iv.next.i70.i, %wide.trip.count80.i.i
  br i1 %exitcond81.not.i.i, label %.critedge.i.i, label %bb.w, !llvm.loop !13

.critedge.i.i:                                    ; preds = %bb.x, %bb.w
  %.051.lcssa.i.i = phi i16 [ %umin.i.i, %bb.w ], [ %i.dk, %bb.x ] ; 3 uses
  %.050.lcssa.i.i = phi i128 [ %.05058.i.i, %bb.w ], [ %i.du, %bb.x ] ; 3 uses
  %i.dv = icmp ult i16 %.051.lcssa.i.i, %i.dg
  %i.dw = zext i16 %.051.lcssa.i.i to i64         ; 6 uses
  br i1 %i.dv, label %.lr.ph67.i.i.preheader, label %.preheader.i.i

.lr.ph67.i.i.preheader:                           ; preds = %.critedge.i.i
  %i.dx = sub nsw i64 %wide.trip.count80.i.i, %i.dw
  %xtraiter530 = and i64 %i.dx, 1
  %lcmp.mod531.not = icmp eq i64 %xtraiter530, 0
  br i1 %lcmp.mod531.not, label %.lr.ph67.i.i.prol.loopexit, label %.lr.ph67.i.i.prol

.lr.ph67.i.i.prol:                                ; preds = %.lr.ph67.i.i.preheader
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.dw ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !36
  %i.ea = zext i64 %i.dz to i128
  %i.eb = add nuw nsw i128 %.050.lcssa.i.i, %i.ea ; 2 uses
  %i.ec = trunc i128 %i.eb to i64
  store i64 %i.ec, ptr %i.dy, align 8, !tbaa !36
  %i.ed = lshr i128 %i.eb, 64                     ; 2 uses
  %indvars.iv.next83.i.i.prol = add nuw nsw i64 %i.dw, 1
  br label %.lr.ph67.i.i.prol.loopexit

.lr.ph67.i.i.prol.loopexit:                       ; preds = %.lr.ph67.i.i.prol, %.lr.ph67.i.i.preheader
  %.lcssa500.unr = phi i128 [ poison, %.lr.ph67.i.i.preheader ], [ %i.ed, %.lr.ph67.i.i.prol ]
  %indvars.iv82.i.i.unr = phi i64 [ %i.dw, %.lr.ph67.i.i.preheader ], [ %indvars.iv.next83.i.i.prol, %.lr.ph67.i.i.prol ]
  %.166.i.i.unr = phi i128 [ %.050.lcssa.i.i, %.lr.ph67.i.i.preheader ], [ %i.ed, %.lr.ph67.i.i.prol ]
  %i.ee = add nsw i64 %wide.trip.count80.i.i, -1
  %i.ef = icmp eq i64 %i.ee, %i.dw
  br i1 %i.ef, label %.preheader.i.i, label %.lr.ph67.i.i

.preheader.i.i:                                   ; preds = %.lr.ph67.i.i.prol.loopexit, %.lr.ph67.i.i, %.critedge.i.i
  %.pre-phi215 = phi i64 [ %i.dw, %.critedge.i.i ], [ %wide.trip.count80.i.i, %.lr.ph67.i.i ], [ %wide.trip.count80.i.i, %.lr.ph67.i.i.prol.loopexit ] ; 7 uses
  %.152.lcssa.i.i = phi i16 [ %.051.lcssa.i.i, %.critedge.i.i ], [ %i.dg, %.lr.ph67.i.i ], [ %i.dg, %.lr.ph67.i.i.prol.loopexit ] ; 2 uses
  %.1.lcssa.i.i = phi i128 [ %.050.lcssa.i.i, %.critedge.i.i ], [ %.lcssa500.unr, %.lr.ph67.i.i.prol.loopexit ], [ %i.fc, %.lr.ph67.i.i ] ; 3 uses
  %i.eg = icmp ult i16 %.152.lcssa.i.i, %.ph431
  br i1 %i.eg, label %.lr.ph72.i.i.preheader, label %._crit_edge.i.i

.lr.ph72.i.i.preheader:                           ; preds = %.preheader.i.i
  %i.eh = sub nsw i64 %wide.trip.count.i67.i, %.pre-phi215
  %xtraiter532 = and i64 %i.eh, 1
  %lcmp.mod533.not = icmp eq i64 %xtraiter532, 0
  br i1 %lcmp.mod533.not, label %.lr.ph72.i.i.prol.loopexit, label %.lr.ph72.i.i.prol

.lr.ph72.i.i.prol:                                ; preds = %.lr.ph72.i.i.preheader
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.pre-phi215
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !36
  %i.ek = zext i64 %i.ej to i128
  %i.el = add nuw nsw i128 %.1.lcssa.i.i, %i.ek   ; 2 uses
  %i.em = trunc i128 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.pre-phi215
  store i64 %i.em, ptr %i.en, align 8, !tbaa !36
  %i.eo = lshr i128 %i.el, 64                     ; 2 uses
  %indvars.iv.next88.i.i.prol = add nuw nsw i64 %.pre-phi215, 1
  br label %.lr.ph72.i.i.prol.loopexit

.lr.ph72.i.i.prol.loopexit:                       ; preds = %.lr.ph72.i.i.prol, %.lr.ph72.i.i.preheader
  %.lcssa501.unr = phi i128 [ poison, %.lr.ph72.i.i.preheader ], [ %i.eo, %.lr.ph72.i.i.prol ]
  %indvars.iv87.i.i.unr = phi i64 [ %.pre-phi215, %.lr.ph72.i.i.preheader ], [ %indvars.iv.next88.i.i.prol, %.lr.ph72.i.i.prol ]
  %.271.i.i.unr = phi i128 [ %.1.lcssa.i.i, %.lr.ph72.i.i.preheader ], [ %i.eo, %.lr.ph72.i.i.prol ]
  %i.ep = icmp eq i64 %.pre-phi215, %i.bs
  br i1 %i.ep, label %._crit_edge.i.i, label %.lr.ph72.i.i

.lr.ph67.i.i:                                     ; preds = %.lr.ph67.i.i.prol.loopexit, %.lr.ph67.i.i
  %indvars.iv82.i.i = phi i64 [ %indvars.iv.next83.i.i.1, %.lr.ph67.i.i ], [ %indvars.iv82.i.i.unr, %.lr.ph67.i.i.prol.loopexit ] ; 3 uses
  %.166.i.i = phi i128 [ %i.fc, %.lr.ph67.i.i ], [ %.166.i.i.unr, %.lr.ph67.i.i.prol.loopexit ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv82.i.i ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !36
  %i.es = zext i64 %i.er to i128
  %i.et = add nuw nsw i128 %.166.i.i, %i.es       ; 2 uses
  %i.eu = trunc i128 %i.et to i64
  store i64 %i.eu, ptr %i.eq, align 8, !tbaa !36
  %i.ev = lshr i128 %i.et, 64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv82.i.i
end_hunk_0
begin_hunk_1_@_sp_invmod:bb.a
  %.lcssa492.unr = phi i128 [ poison, %.lr.ph67.i127.i.preheader ], [ %i.jh, %.lr.ph67.i127.i.prol ]
  %indvars.iv82.i129.i.unr = phi i64 [ %i.ja, %.lr.ph67.i127.i.preheader ], [ %indvars.iv.next83.i131.i.prol, %.lr.ph67.i127.i.prol ]
  %.166.i130.i.unr = phi i128 [ %.050.lcssa.i104.i, %.lr.ph67.i127.i.preheader ], [ %i.jh, %.lr.ph67.i127.i.prol ]
  %i.ji = add nsw i64 %wide.trip.count80.i96.i, -1
  %i.jj = icmp eq i64 %i.ji, %i.ja
  br i1 %i.jj, label %.preheader.i105.i, label %.lr.ph67.i127.i

.preheader.i105.i:                                ; preds = %.lr.ph67.i127.i.prol.loopexit, %.lr.ph67.i127.i, %.critedge.i102.i
  %.pre-phi217 = phi i64 [ %i.ja, %.critedge.i102.i ], [ %wide.trip.count80.i96.i, %.lr.ph67.i127.i ], [ %wide.trip.count80.i96.i, %.lr.ph67.i127.i.prol.loopexit ] ; 7 uses
  %.152.lcssa.i106.i = phi i16 [ %.051.lcssa.i103.i, %.critedge.i102.i ], [ %i.bv, %.lr.ph67.i127.i ], [ %i.bv, %.lr.ph67.i127.i.prol.loopexit ] ; 2 uses
  %.1.lcssa.i107.i = phi i128 [ %.050.lcssa.i104.i, %.critedge.i102.i ], [ %.lcssa492.unr, %.lr.ph67.i127.i.prol.loopexit ], [ %i.kg, %.lr.ph67.i127.i ] ; 3 uses
  %i.jk = icmp ult i16 %.152.lcssa.i106.i, %.ph439.a
  br i1 %i.jk, label %.lr.ph72.i121.i.preheader, label %._crit_edge.i110.i

.lr.ph72.i121.i.preheader:                        ; preds = %.preheader.i105.i
  %i.jl = sub nsw i64 %wide.trip.count.i95.i, %.pre-phi217
  %xtraiter528 = and i64 %i.jl, 1
  %lcmp.mod529.not = icmp eq i64 %xtraiter528, 0
  br i1 %lcmp.mod529.not, label %.lr.ph72.i121.i.prol.loopexit, label %.lr.ph72.i121.i.prol

.lr.ph72.i121.i.prol:                             ; preds = %.lr.ph72.i121.i.preheader
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.pre-phi217
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !36
  %i.jo = zext i64 %i.jn to i128
  %i.jp = add nuw nsw i128 %.1.lcssa.i107.i, %i.jo ; 2 uses
  %i.jq = trunc i128 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.pre-phi217
  store i64 %i.jq, ptr %i.jr, align 8, !tbaa !36
  %i.js = lshr i128 %i.jp, 64                     ; 2 uses
  %indvars.iv.next88.i125.i.prol = add nuw nsw i64 %.pre-phi217, 1
  br label %.lr.ph72.i121.i.prol.loopexit

.lr.ph72.i121.i.prol.loopexit:                    ; preds = %.lr.ph72.i121.i.prol, %.lr.ph72.i121.i.preheader
  %.lcssa493.unr = phi i128 [ poison, %.lr.ph72.i121.i.preheader ], [ %i.js, %.lr.ph72.i121.i.prol ]
  %indvars.iv87.i123.i.unr = phi i64 [ %.pre-phi217, %.lr.ph72.i121.i.preheader ], [ %indvars.iv.next88.i125.i.prol, %.lr.ph72.i121.i.prol ]
  %.271.i124.i.unr = phi i128 [ %.1.lcssa.i107.i, %.lr.ph72.i121.i.preheader ], [ %i.js, %.lr.ph72.i121.i.prol ]
  %i.jt = icmp eq i64 %.pre-phi217, %i.bt
  br i1 %i.jt, label %._crit_edge.i110.i, label %.lr.ph72.i121.i

.lr.ph67.i127.i:                                  ; preds = %.lr.ph67.i127.i.prol.loopexit, %.lr.ph67.i127.i
  %indvars.iv82.i129.i = phi i64 [ %indvars.iv.next83.i131.i.1, %.lr.ph67.i127.i ], [ %indvars.iv82.i129.i.unr, %.lr.ph67.i127.i.prol.loopexit ] ; 3 uses
  %.166.i130.i = phi i128 [ %i.kg, %.lr.ph67.i127.i ], [ %.166.i130.i.unr, %.lr.ph67.i127.i.prol.loopexit ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv82.i129.i ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !36
  %i.jw = zext i64 %i.jv to i128
  %i.jx = add nuw nsw i128 %.166.i130.i, %i.jw    ; 2 uses
  %i.jy = trunc i128 %i.jx to i64
  store i64 %i.jy, ptr %i.ju, align 8, !tbaa !36
  %i.jz = lshr i128 %i.jx, 64
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv82.i129.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !36
  %i.kd = zext i64 %i.kc to i128
  %i.ke = add nuw nsw i128 %i.jz, %i.kd           ; 2 uses
  %i.kf = trunc i128 %i.ke to i64
  store i64 %i.kf, ptr %i.kb, align 8, !tbaa !36
  %i.kg = lshr i128 %i.ke, 64                     ; 2 uses
  %indvars.iv.next83.i131.i.1 = add nuw nsw i64 %indvars.iv82.i129.i, 2 ; 2 uses
  %exitcond86.not.i132.i.1 = icmp eq i64 %indvars.iv.next83.i131.i.1, %wide.trip.count80.i96.i
  br i1 %exitcond86.not.i132.i.1, label %.preheader.i105.i, label %.lr.ph67.i127.i, !llvm.loop !14

.lr.ph72.i121.i:                                  ; preds = %.lr.ph72.i121.i.prol.loopexit, %.lr.ph72.i121.i
  %indvars.iv87.i123.i = phi i64 [ %indvars.iv.next88.i125.i.1, %.lr.ph72.i121.i ], [ %indvars.iv87.i123.i.unr, %.lr.ph72.i121.i.prol.loopexit ] ; 4 uses
  %.271.i124.i = phi i128 [ %i.ku, %.lr.ph72.i121.i ], [ %.271.i124.i.unr, %.lr.ph72.i121.i.prol.loopexit ]
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv87.i123.i
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !36
  %i.kj = zext i64 %i.ki to i128
  %i.kk = add nuw nsw i128 %.271.i124.i, %i.kj    ; 2 uses
  %i.kl = trunc i128 %i.kk to i64
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv87.i123.i
  store i64 %i.kl, ptr %i.km, align 8, !tbaa !36
  %i.kn = lshr i128 %i.kk, 64
  %indvars.iv.next88.i125.i = add nuw nsw i64 %indvars.iv87.i123.i, 1 ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next88.i125.i
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !36
  %i.kq = zext i64 %i.kp to i128
  %i.kr = add nuw nsw i128 %i.kn, %i.kq           ; 2 uses
  %i.ks = trunc i128 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next88.i125.i
  store i64 %i.ks, ptr %i.kt, align 8, !tbaa !36
  %i.ku = lshr i128 %i.kr, 64                     ; 2 uses
  %indvars.iv.next88.i125.i.1 = add nuw nsw i64 %indvars.iv87.i123.i, 2 ; 2 uses
  %exitcond91.not.i126.i.1 = icmp eq i64 %indvars.iv.next88.i125.i.1, %wide.trip.count.i95.i
  br i1 %exitcond91.not.i126.i.1, label %._crit_edge.i110.i, label %.lr.ph72.i121.i, !llvm.loop !15

._crit_edge.i110.i:                               ; preds = %.lr.ph72.i121.i.prol.loopexit, %.lr.ph72.i121.i, %.preheader.i105.i
  %.pre-phi.i111.i = phi i64 [ %.pre-phi217, %.preheader.i105.i ], [ %wide.trip.count.i95.i, %.lr.ph72.i121.i ], [ %wide.trip.count.i95.i, %.lr.ph72.i121.i.prol.loopexit ]
  %.253.lcssa.i112.i = phi i16 [ %.152.lcssa.i106.i, %.preheader.i105.i ], [ %.ph439.a, %.lr.ph72.i121.i ], [ %.ph439.a, %.lr.ph72.i121.i.prol.loopexit ]
  %.2.lcssa.i113.i = phi i128 [ %.1.lcssa.i107.i, %.preheader.i105.i ], [ %.lcssa493.unr, %.lr.ph72.i121.i.prol.loopexit ], [ %i.ku, %.lr.ph72.i121.i ] ; 2 uses
  %i.kv = trunc nuw nsw i128 %.2.lcssa.i113.i to i64
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.pre-phi.i111.i
  store i64 %i.kv, ptr %i.kw, align 8, !tbaa !36
  %i.kx = icmp ne i128 %.2.lcssa.i113.i, 0
  %i.ky = zext i1 %i.kx to i16
  %i.kz = add i16 %.253.lcssa.i112.i, %i.ky       ; 2 uses
  %.not.i114.i = icmp eq i16 %i.kz, 0
  br i1 %.not.i114.i, label %_sp_div_2.exit143.i, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i110.i
  %i.la = zext i16 %i.kz to i64
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %indvars.iv.next93.i118.i = add nsw i64 %indvars.iv92.i115.i365, -1
  %i.lb = icmp sgt i64 %indvars.iv92.i115.i365, 1
  br i1 %i.lb, label %bb.ai, label %_sp_div_2.exit143.i, !llvm.loop !16

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %indvars.iv92.i115.i365 = phi i64 [ %i.la, %bb.ag ], [ %indvars.iv.next93.i118.i, %bb.ah ] ; 4 uses
  %i.lc = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv92.i115.i365
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !36
  %.not56.i119.i = icmp eq i64 %i.ld, 0
  br i1 %.not56.i119.i, label %bb.ah, label %.split.loop.exit.i120.i, !llvm.loop !16

.split.loop.exit.i120.i:                          ; preds = %bb.ai
  %i.le = trunc nuw i64 %indvars.iv92.i115.i365 to i16
  br label %_sp_add_off.exit133.i

_sp_add_off.exit133.i:                            ; preds = %.split.loop.exit.i120.i, %bb.ad
  %i.lf = phi i16 [ %.ph446, %bb.ad ], [ %.ph439.a, %.split.loop.exit.i120.i ] ; 3 uses
  %i.lg = phi i16 [ %i.bw, %bb.ad ], [ %.ph439.a, %.split.loop.exit.i120.i ] ; 3 uses
  %i.lh = phi i16 [ %i.bv, %bb.ad ], [ %i.le, %.split.loop.exit.i120.i ] ; 3 uses
  %i.li = zext i16 %i.lh to i32
  %i.lj = add nsw i32 %i.li, -1                   ; 3 uses
  %i.lk = icmp ugt i16 %i.lh, 1
  br i1 %i.lk, label %.lr.ph.i138.i, label %_sp_div_2.exit143.i

.lr.ph.i138.i:                                    ; preds = %_sp_add_off.exit133.i
  %wide.trip.count.i139.i = zext nneg i32 %i.lj to i64 ; 3 uses
  %.pre431.i = load i64, ptr %i.z, align 8, !tbaa !36 ; 2 uses
  %min.iters.check388 = icmp ult i16 %i.lh, 5
  br i1 %min.iters.check388, label %scalar.ph387.preheader, label %vector.ph389

vector.ph389:                                     ; preds = %.lr.ph.i138.i
  %n.vec390 = and i64 %wide.trip.count.i139.i, 2147483644 ; 3 uses
  %vector.recur.init393 = insertelement <2 x i64> poison, i64 %.pre431.i, i64 1
  br label %vector.body391

vector.body391:                                   ; preds = %vector.body391, %vector.ph389
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next397, %vector.body391 ] ; 3 uses
  %vector.recur394 = phi <2 x i64> [ %vector.recur.init393, %vector.ph389 ], [ %wide.load396, %vector.body391 ]
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index392 ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index392 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %wide.load395.a = load <2 x i64>, ptr %i.ln, align 16, !tbaa !36 ; 3 uses
  %wide.load396 = load <2 x i64>, ptr %i.lo, align 16, !tbaa !36 ; 4 uses
  %i.lp = shufflevector <2 x i64> %vector.recur394, <2 x i64> %wide.load395.a, <2 x i32> <i32 1, i32 2>
  %i.lq = shufflevector <2 x i64> %wide.load395.a, <2 x i64> %wide.load396, <2 x i32> <i32 1, i32 2>
  %i.lr = call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %wide.load395.a, <2 x i64> %i.lp, <2 x i64> splat (i64 63))
  %i.ls = call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %wide.load396, <2 x i64> %i.lq, <2 x i64> splat (i64 63))
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store <2 x i64> %i.lr, ptr %i.ll, align 8, !tbaa !36
  store <2 x i64> %i.ls, ptr %i.lt, align 8, !tbaa !36
  %index.next397 = add nuw i64 %index392, 4       ; 2 uses
  %i.lu = icmp eq i64 %index.next397, %n.vec390
  br i1 %i.lu, label %middle.block398, label %vector.body391, !llvm.loop !131

middle.block398:                                  ; preds = %vector.body391
  %vector.recur.extract399 = extractelement <2 x i64> %wide.load396, i64 1
  %cmp.n400 = icmp eq i64 %n.vec390, %wide.trip.count.i139.i
  br i1 %cmp.n400, label %_sp_div_2.exit143.i, label %scalar.ph387.preheader

scalar.ph387.preheader:                           ; preds = %.lr.ph.i138.i, %middle.block398
  %.ph426 = phi i64 [ %.pre431.i, %.lr.ph.i138.i ], [ %vector.recur.extract399, %middle.block398 ]
  %indvars.iv.i140.i.ph = phi i64 [ 0, %.lr.ph.i138.i ], [ %n.vec390, %middle.block398 ]
  br label %scalar.ph387

scalar.ph387:                                     ; preds = %scalar.ph387.preheader, %scalar.ph387
  %i.lv = phi i64 [ %i.ly, %scalar.ph387 ], [ %.ph426, %scalar.ph387.preheader ]
  %indvars.iv.i140.i = phi i64 [ %indvars.iv.next.i141.i, %scalar.ph387 ], [ %indvars.iv.i140.i.ph, %scalar.ph387.preheader ] ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i140.i
  %indvars.iv.next.i141.i = add nuw nsw i64 %indvars.iv.i140.i, 1 ; 3 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next.i141.i
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !36 ; 2 uses
  %i.lz = call i64 @llvm.fshl.i64(i64 %i.ly, i64 %i.lv, i64 63)
  store i64 %i.lz, ptr %i.lw, align 8, !tbaa !36
  %exitcond.not.i142.i = icmp eq i64 %indvars.iv.next.i141.i, %wide.trip.count.i139.i
  br i1 %exitcond.not.i142.i, label %_sp_div_2.exit143.i, label %scalar.ph387, !llvm.loop !132

_sp_div_2.exit143.i:                              ; preds = %bb.ah, %scalar.ph387, %middle.block398, %_sp_add_off.exit133.i, %._crit_edge.i110.i, %_sp_div_2.exit91.i
  %i.ma = phi i16 [ %i.lf, %_sp_add_off.exit133.i ], [ %.ph446, %_sp_div_2.exit91.i ], [ %.ph439.a, %._crit_edge.i110.i ], [ %i.lf, %middle.block398 ], [ %i.lf, %scalar.ph387 ], [ %.ph439.a, %bb.ah ]
  %i.mb = phi i16 [ %i.lg, %_sp_add_off.exit133.i ], [ %i.bw, %_sp_div_2.exit91.i ], [ %.ph439.a, %._crit_edge.i110.i ], [ %i.lg, %middle.block398 ], [ %i.lg, %scalar.ph387 ], [ %.ph439.a, %bb.ah ]
  %.0.lcssa.i135.i = phi i32 [ 0, %_sp_add_off.exit133.i ], [ 0, %_sp_div_2.exit91.i ], [ 0, %._crit_edge.i110.i ], [ %i.lj, %middle.block398 ], [ %i.lj, %scalar.ph387 ], [ 0, %bb.ah ] ; 2 uses
  %i.mc = zext nneg i32 %.0.lcssa.i135.i to i64
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.mc ; 2 uses
  %i.me = load i64, ptr %i.md, align 8, !tbaa !36
  %i.mf = lshr i64 %i.me, 1                       ; 2 uses
  store i64 %i.mf, ptr %i.md, align 8, !tbaa !36
  %i.mg = add nuw nsw i32 %.0.lcssa.i135.i, 1
  %i.mh = add nsw i64 %i.mf, -1
  %.neg.i136.i = ashr i64 %i.mh, 63
  %.neg18.i137.i = trunc nsw i64 %.neg.i136.i to i32
  %i.mi = add nsw i32 %i.mg, %.neg18.i137.i
  %i.mj = trunc nuw i32 %i.mi to i16              ; 3 uses
  store i16 %i.mj, ptr %i.i, align 16, !tbaa !40
  br label %_sp_sub_off.exit241.i.outer444, !llvm.loop !128

bb.aj:                                            ; preds = %bb.ab
  %i.mk = icmp ugt i16 %i.cd, %.0.in.lcssa.i253.i618
  br i1 %i.mk, label %.lr.ph64.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ml = icmp ult i16 %i.cd, %.0.in.lcssa.i253.i618
  %.pre446.i = zext i16 %i.cd to i64              ; 7 uses
  br i1 %i.ml, label %_sp_cmp_abs.exit.i.preheader, label %.preheader.i144.i.preheader

_sp_cmp_abs.exit.i.preheader:                     ; preds = %bb.al, %bb.ak
  br label %_sp_cmp_abs.exit.i

.preheader.i144.i:                                ; preds = %bb.al
  %indvars.iv.next.i146.i345 = add nsw i64 %indvars.iv.i145.i344, -1
  %i.mm = icmp sgt i64 %indvars.iv.i145.i344, 1
  br i1 %i.mm, label %.preheader.i144.i.preheader, label %.lr.ph64.i.i, !llvm.loop !1

.preheader.i144.i.preheader:                      ; preds = %bb.ak, %.preheader.i144.i
  %indvars.iv.i145.i344 = phi i64 [ %indvars.iv.next.i146.i345, %.preheader.i144.i ], [ %.pre446.i, %bb.ak ] ; 4 uses
  %i.mn = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.i145.i344
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !36 ; 2 uses
  %i.mp = getelementptr [8 x i8], ptr %i.m, i64 %indvars.iv.i145.i344
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !36 ; 2 uses
  %i.mr = icmp ugt i64 %i.mo, %i.mq
  br i1 %i.mr, label %.lr.ph64.i.i, label %bb.al

bb.al:                                            ; preds = %.preheader.i144.i.preheader
  %i.ms = icmp ult i64 %i.mo, %i.mq
  br i1 %i.ms, label %_sp_cmp_abs.exit.i.preheader, label %.preheader.i144.i, !llvm.loop !1

.lr.ph64.i.i:                                     ; preds = %bb.aj, %.preheader.i144.i.preheader, %.preheader.i144.i
  %wide.trip.count87.i.i = zext i16 %.0.in.lcssa.i253.i618 to i64 ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %.lr.ph64.i.i
  %indvars.iv82.i155.i = phi i64 [ 0, %.lr.ph64.i.i ], [ %indvars.iv.next83.i156.i, %bb.an ] ; 4 uses
  %.04963.i.i = phi i128 [ 0, %.lr.ph64.i.i ], [ %i.nc, %bb.an ] ; 2 uses
  %exitcond88.not.i.i = icmp eq i64 %indvars.iv82.i155.i, %wide.trip.count87.i.i
  br i1 %exitcond88.not.i.i, label %.critedge2.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv82.i155.i ; 2 uses
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !36
  %i.mv = zext i64 %i.mu to i128
  %i.mw = add nsw i128 %.04963.i.i, %i.mv
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv82.i155.i
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !36
  %i.mz = zext i64 %i.my to i128
  %i.na = sub nsw i128 %i.mw, %i.mz               ; 2 uses
  %i.nb = trunc i128 %i.na to i64
  store i64 %i.nb, ptr %i.mt, align 8, !tbaa !36
  %i.nc = ashr i128 %i.na, 64                     ; 2 uses
  %indvars.iv.next83.i156.i = add nuw nsw i64 %indvars.iv82.i155.i, 1 ; 3 uses
  %lftr.wideiv426.i = trunc i64 %indvars.iv.next83.i156.i to i16
  %exitcond210 = icmp eq i16 %i.cd, %lftr.wideiv426.i
  br i1 %exitcond210, label %.critedge2.i.i, label %bb.am, !llvm.loop !17

.critedge2.i.i:                                   ; preds = %bb.an, %bb.am
  %.2.lcssa.ph.i.pre-phi.i = phi i16 [ %.0.in.lcssa.i253.i618, %bb.am ], [ %i.cd, %bb.an ] ; 2 uses
  %.2.lcssa.ph.in.i.i = phi i64 [ %wide.trip.count87.i.i, %bb.am ], [ %indvars.iv.next83.i156.i, %bb.an ] ; 2 uses
  %.049.lcssa.ph.i.i = phi i128 [ %.04963.i.i, %bb.am ], [ %i.nc, %bb.an ] ; 2 uses
  %i.nd = icmp ugt i16 %i.cd, %.2.lcssa.ph.i.pre-phi.i
  br i1 %i.nd, label %.lr.ph74.i.i.a, label %._crit_edge.i150.i

.lr.ph74.i.i.a:                                   ; preds = %.critedge2.i.i
  %3 = and i64 %.2.lcssa.ph.in.i.i, 65535         ; 4 uses
  %wide.trip.count93.i.i = zext i16 %i.cd to i64  ; 5 uses
  %4 = sub i64 %wide.trip.count93.i.i, %.2.lcssa.ph.in.i.i
  %xtraiter536 = and i64 %4, 1
  %lcmp.mod537.not = icmp eq i64 %xtraiter536, 0
  br i1 %lcmp.mod537.not, label %.prol.loopexit535, label %.prol.loopexit535.unr-lcssa

.prol.loopexit535.unr-lcssa:                      ; preds = %.lr.ph74.i.i.a
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %3 ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !36
  %i.ng = zext i64 %i.nf to i128
  %i.nh = add nsw i128 %.049.lcssa.ph.i.i, %i.ng  ; 2 uses
  %i.ni = trunc i128 %i.nh to i64
  store i64 %i.ni, ptr %i.ne, align 8, !tbaa !36
  %i.nj = ashr i128 %i.nh, 64
  %indvars.iv.next91.i.i.prol = add nuw nsw i64 %3, 1
  br label %.prol.loopexit535

.prol.loopexit535:                                ; preds = %.prol.loopexit535.unr-lcssa, %.lr.ph74.i.i.a
  %indvars.iv90.i.i.unr = phi i64 [ %3, %.lr.ph74.i.i.a ], [ %indvars.iv.next91.i.i.prol, %.prol.loopexit535.unr-lcssa ]
  %.173.i.i.unr = phi i128 [ %.049.lcssa.ph.i.i, %.lr.ph74.i.i.a ], [ %i.nj, %.prol.loopexit535.unr-lcssa ]
  %5 = add nsw i64 %wide.trip.count93.i.i, -1
  %i.nk = icmp eq i64 %3, %5
  br i1 %i.nk, label %.preheader.i151.i, label %.lr.ph74.i.i.new

.lr.ph74.i.i.new:                                 ; preds = %.prol.loopexit535, %.lr.ph74.i.i.new
  %indvars.iv90.i.i = phi i64 [ %indvars.iv.next91.i.i.1, %.lr.ph74.i.i.new ], [ %indvars.iv90.i.i.unr, %.prol.loopexit535 ] ; 3 uses
  %.173.i.i = phi i128 [ %i.nx, %.lr.ph74.i.i.new ], [ %.173.i.i.unr, %.prol.loopexit535 ]
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv90.i.i ; 2 uses
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !36
  %i.nn = zext i64 %i.nm to i128
  %i.no = add nsw i128 %.173.i.i, %i.nn           ; 2 uses
  %i.np = trunc i128 %i.no to i64
  store i64 %i.np, ptr %i.nl, align 8, !tbaa !36
  %i.nq = ashr i128 %i.no, 64
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv90.i.i
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8 ; 2 uses
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !36
  %i.nu = zext i64 %i.nt to i128
  %i.nv = add nsw i128 %i.nq, %i.nu               ; 2 uses
  %i.nw = trunc i128 %i.nv to i64
  store i64 %i.nw, ptr %i.ns, align 8, !tbaa !36
  %i.nx = ashr i128 %i.nv, 64
  %indvars.iv.next91.i.i.1 = add nuw nsw i64 %indvars.iv90.i.i, 2 ; 2 uses
  %exitcond94.not.i.i.1 = icmp eq i64 %indvars.iv.next91.i.i.1, %wide.trip.count93.i.i
  br i1 %exitcond94.not.i.i.1, label %.preheader.i151.i, label %.lr.ph74.i.i.new, !llvm.loop !18

._crit_edge.i150.i:                               ; preds = %.critedge2.i.i
  %.pre438.i = zext i16 %.2.lcssa.ph.i.pre-phi.i to i64
  br label %.preheader.i151.i

.preheader.i151.i:                                ; preds = %.prol.loopexit535, %.lr.ph74.i.i.new, %._crit_edge.i150.i
  %.pre-phi.i = phi i64 [ %.pre438.i, %._crit_edge.i150.i ], [ %wide.trip.count93.i.i, %.lr.ph74.i.i.new ], [ %wide.trip.count93.i.i, %.prol.loopexit535 ] ; 2 uses
  %.not420 = icmp eq i64 %.pre-phi.i, 0
  br i1 %.not420, label %.split.loop.exit106.i.i, label %.lr.ph356

bb.ao:                                            ; preds = %.lr.ph356
  %indvars.iv.next96.i.i = add nsw i64 %indvars.iv95.i.i355, -1
  %i.ny = icmp sgt i64 %indvars.iv95.i.i355, 1
  br i1 %i.ny, label %.lr.ph356, label %.split.loop.exit106.i.i, !llvm.loop !19

.lr.ph356:                                        ; preds = %.preheader.i151.i, %bb.ao
  %indvars.iv95.i.i355 = phi i64 [ %indvars.iv.next96.i.i, %bb.ao ], [ %.pre-phi.i, %.preheader.i151.i ] ; 4 uses
  %i.nz = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv95.i.i355
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !36
  %.not56.i153.i = icmp eq i64 %i.oa, 0
  br i1 %.not56.i153.i, label %bb.ao, label %.split.loop.exit.i154.i, !llvm.loop !19

.split.loop.exit.i154.i:                          ; preds = %.lr.ph356
  %i.ob = trunc nuw i64 %indvars.iv95.i.i355 to i16
  br label %.split.loop.exit106.i.i

.split.loop.exit106.i.i:                          ; preds = %bb.ao, %.preheader.i151.i, %.split.loop.exit.i154.i
  %.0.in.lcssa.i152.i = phi i16 [ %i.ob, %.split.loop.exit.i154.i ], [ 0, %.preheader.i151.i ], [ 0, %bb.ao ]
  store i16 %.0.in.lcssa.i152.i, ptr %i.f, align 16, !tbaa !40
  %i.oc = load i16, ptr %i.o, align 8, !tbaa !40  ; 15 uses
  %i.od = icmp ugt i16 %i.oc, %i.bv
  br i1 %i.od, label %.lr.ph64.i226.i, label %bb.ap

bb.ap:                                            ; preds = %.split.loop.exit106.i.i
  %i.oe = icmp ult i16 %i.oc, %i.bv
  br i1 %i.oe, label %_sp_cmp_abs.exit162.i, label %.preheader.i158.i

.preheader.i158.i:                                ; preds = %bb.ap
  %.not421 = icmp eq i16 %i.oc, 0
  br i1 %.not421, label %_sp_add_off.exit204.i, label %.lr.ph360

.lr.ph360:                                        ; preds = %.preheader.i158.i
  %i.of = zext i16 %i.oc to i64
  br label %bb.ar

bb.aq:                                            ; preds = %bb.as
  %indvars.iv.next.i160.i359 = add nsw i64 %indvars.iv.i159.i358, -1
  %i.og = icmp sgt i64 %indvars.iv.i159.i358, 1
  br i1 %i.og, label %bb.ar, label %_sp_add_off.exit204.i, !llvm.loop !1

bb.ar:                                            ; preds = %.lr.ph360, %bb.aq
  %indvars.iv.i159.i358 = phi i64 [ %i.of, %.lr.ph360 ], [ %indvars.iv.next.i160.i359, %bb.aq ] ; 4 uses
  %i.oh = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i159.i358
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !36 ; 2 uses
  %i.oj = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv.i159.i358
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !36 ; 2 uses
  %i.ol = icmp ugt i64 %i.oi, %i.ok
  br i1 %i.ol, label %_sp_add_off.exit204.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.om = icmp ult i64 %i.oi, %i.ok
  br i1 %i.om, label %_sp_cmp_abs.exit162.i, label %bb.aq, !llvm.loop !1

_sp_cmp_abs.exit162.i:                            ; preds = %bb.as, %bb.ap
  %.not75.i163.i = icmp eq i16 %i.oc, 0
  br i1 %.not75.i163.i, label %.critedge.i173.i, label %.lr.ph.i164.i

.lr.ph.i164.i:                                    ; preds = %_sp_cmp_abs.exit162.i
  %i.on = add i16 %i.oc, -1
  %umin.i165.i = call i16 @llvm.umin.i16(i16 %.ph446, i16 %i.on) ; 2 uses
  %i.oo = add nuw i16 %umin.i165.i, 1
  %wide.trip.count.i166.i = zext i16 %.ph446 to i64
  %wide.trip.count80.i167.i = zext i16 %i.oc to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %.lr.ph.i164.i
  %indvars.iv.i168.i = phi i64 [ 0, %.lr.ph.i164.i ], [ %indvars.iv.next.i171.i, %bb.au ] ; 4 uses
  %.05058.i169.i = phi i128 [ 0, %.lr.ph.i164.i ], [ %i.oy, %bb.au ] ; 2 uses
  %exitcond.not.i170.i = icmp eq i64 %indvars.iv.i168.i, %wide.trip.count.i166.i
  br i1 %exitcond.not.i170.i, label %.critedge.i173.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i168.i ; 2 uses
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !36
  %i.or = zext i64 %i.oq to i128
  %i.os = add nuw nsw i128 %.05058.i169.i, %i.or
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i168.i
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !36
  %i.ov = zext i64 %i.ou to i128
  %i.ow = add nuw nsw i128 %i.os, %i.ov           ; 2 uses
  %i.ox = trunc i128 %i.ow to i64
  store i64 %i.ox, ptr %i.op, align 8, !tbaa !36
  %i.oy = lshr i128 %i.ow, 64                     ; 2 uses
  %indvars.iv.next.i171.i = add nuw nsw i64 %indvars.iv.i168.i, 1 ; 2 uses
  %exitcond81.not.i172.i = icmp eq i64 %indvars.iv.next.i171.i, %wide.trip.count80.i167.i
  br i1 %exitcond81.not.i172.i, label %.critedge.i173.i, label %bb.at, !llvm.loop !13

.critedge.i173.i:                                 ; preds = %bb.au, %bb.at, %_sp_cmp_abs.exit162.i
  %.051.lcssa.i174.i = phi i16 [ 0, %_sp_cmp_abs.exit162.i ], [ %i.oo, %bb.au ], [ %umin.i165.i, %bb.at ] ; 3 uses
  %.050.lcssa.i175.i = phi i128 [ 0, %_sp_cmp_abs.exit162.i ], [ %i.oy, %bb.au ], [ %.05058.i169.i, %bb.at ] ; 3 uses
  %i.oz = icmp ult i16 %.051.lcssa.i174.i, %i.oc
  %i.pa = zext i16 %.051.lcssa.i174.i to i64      ; 6 uses
  br i1 %i.oz, label %.lr.ph67.i198.i, label %.preheader.i176.i

.lr.ph67.i198.i:                                  ; preds = %.critedge.i173.i
  %wide.trip.count85.i199.i = zext i16 %i.oc to i64 ; 5 uses
  %i.pb = sub nsw i64 %wide.trip.count85.i199.i, %i.pa
  %xtraiter540 = and i64 %i.pb, 1
  %lcmp.mod541.not = icmp eq i64 %xtraiter540, 0
  br i1 %lcmp.mod541.not, label %.prol.loopexit539, label %.prol.loopexit539.unr-lcssa

.prol.loopexit539.unr-lcssa:                      ; preds = %.lr.ph67.i198.i
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.pa ; 2 uses
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !36
  %i.pe = zext i64 %i.pd to i128
  %i.pf = add nuw nsw i128 %.050.lcssa.i175.i, %i.pe ; 2 uses
  %i.pg = trunc i128 %i.pf to i64
  store i64 %i.pg, ptr %i.pc, align 8, !tbaa !36
  %i.ph = lshr i128 %i.pf, 64                     ; 2 uses
  %indvars.iv.next83.i202.i.prol = add nuw nsw i64 %i.pa, 1
  br label %.prol.loopexit539

.prol.loopexit539:                                ; preds = %.prol.loopexit539.unr-lcssa, %.lr.ph67.i198.i
  %.lcssa508.unr = phi i128 [ poison, %.lr.ph67.i198.i ], [ %i.ph, %.prol.loopexit539.unr-lcssa ]
  %indvars.iv82.i200.i.unr = phi i64 [ %i.pa, %.lr.ph67.i198.i ], [ %indvars.iv.next83.i202.i.prol, %.prol.loopexit539.unr-lcssa ]
  %.166.i201.i.unr = phi i128 [ %.050.lcssa.i175.i, %.lr.ph67.i198.i ], [ %i.ph, %.prol.loopexit539.unr-lcssa ]
  %i.pi = add nsw i64 %wide.trip.count85.i199.i, -1
  %i.pj = icmp eq i64 %i.pi, %i.pa
  br i1 %i.pj, label %.preheader.i176.i, label %.lr.ph67.i198.i.new

.preheader.i176.i:                                ; preds = %.prol.loopexit539, %.lr.ph67.i198.i.new, %.critedge.i173.i
  %.pre-phi219 = phi i64 [ %i.pa, %.critedge.i173.i ], [ %wide.trip.count85.i199.i, %.lr.ph67.i198.i.new ], [ %wide.trip.count85.i199.i, %.prol.loopexit539 ] ; 7 uses
  %.152.lcssa.i177.i = phi i16 [ %.051.lcssa.i174.i, %.critedge.i173.i ], [ %i.oc, %.lr.ph67.i198.i.new ], [ %i.oc, %.prol.loopexit539 ] ; 2 uses
  %.1.lcssa.i178.i = phi i128 [ %.050.lcssa.i175.i, %.critedge.i173.i ], [ %.lcssa508.unr, %.prol.loopexit539 ], [ %i.qi, %.lr.ph67.i198.i.new ] ; 3 uses
  %i.pk = load i16, ptr %.081.ph275, align 8, !tbaa !40 ; 16 uses
  %i.pl = icmp ult i16 %.152.lcssa.i177.i, %i.pk
  br i1 %i.pl, label %.lr.ph72.i192.i, label %._crit_edge.i181.i

.lr.ph72.i192.i:                                  ; preds = %.preheader.i176.i
  %wide.trip.count90.i193.i = zext i16 %i.pk to i64 ; 5 uses
  %i.pm = sub nsw i64 %wide.trip.count90.i193.i, %.pre-phi219
  %xtraiter544 = and i64 %i.pm, 1
  %lcmp.mod545.not = icmp eq i64 %xtraiter544, 0
  br i1 %lcmp.mod545.not, label %.prol.loopexit543, label %.prol.loopexit543.unr-lcssa

.prol.loopexit543.unr-lcssa:                      ; preds = %.lr.ph72.i192.i
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.pre-phi219
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !36
  %i.pp = zext i64 %i.po to i128
  %i.pq = add nuw nsw i128 %.1.lcssa.i178.i, %i.pp ; 2 uses
  %i.pr = trunc i128 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.pre-phi219
  store i64 %i.pr, ptr %i.ps, align 8, !tbaa !36
  %i.pt = lshr i128 %i.pq, 64                     ; 2 uses
  %indvars.iv.next88.i196.i.prol = add nuw nsw i64 %.pre-phi219, 1
  br label %.prol.loopexit543

.prol.loopexit543:                                ; preds = %.prol.loopexit543.unr-lcssa, %.lr.ph72.i192.i
  %.lcssa509.unr = phi i128 [ poison, %.lr.ph72.i192.i ], [ %i.pt, %.prol.loopexit543.unr-lcssa ]
  %indvars.iv87.i194.i.unr = phi i64 [ %.pre-phi219, %.lr.ph72.i192.i ], [ %indvars.iv.next88.i196.i.prol, %.prol.loopexit543.unr-lcssa ]
  %.271.i195.i.unr = phi i128 [ %.1.lcssa.i178.i, %.lr.ph72.i192.i ], [ %i.pt, %.prol.loopexit543.unr-lcssa ]
  %i.pu = add nsw i64 %wide.trip.count90.i193.i, -1
  %i.pv = icmp eq i64 %.pre-phi219, %i.pu
  br i1 %i.pv, label %._crit_edge.i181.i, label %.lr.ph72.i192.i.new

.lr.ph67.i198.i.new:                              ; preds = %.prol.loopexit539, %.lr.ph67.i198.i.new
  %indvars.iv82.i200.i = phi i64 [ %indvars.iv.next83.i202.i.1, %.lr.ph67.i198.i.new ], [ %indvars.iv82.i200.i.unr, %.prol.loopexit539 ] ; 3 uses
  %.166.i201.i = phi i128 [ %i.qi, %.lr.ph67.i198.i.new ], [ %.166.i201.i.unr, %.prol.loopexit539 ]
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv82.i200.i ; 2 uses
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !36
  %i.py = zext i64 %i.px to i128
  %i.pz = add nuw nsw i128 %.166.i201.i, %i.py    ; 2 uses
  %i.qa = trunc i128 %i.pz to i64
  store i64 %i.qa, ptr %i.pw, align 8, !tbaa !36
  %i.qb = lshr i128 %i.pz, 64
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv82.i200.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8 ; 2 uses
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !36
  %i.qf = zext i64 %i.qe to i128
  %i.qg = add nuw nsw i128 %i.qb, %i.qf           ; 2 uses
  %i.qh = trunc i128 %i.qg to i64
  store i64 %i.qh, ptr %i.qd, align 8, !tbaa !36
  %i.qi = lshr i128 %i.qg, 64                     ; 2 uses
  %indvars.iv.next83.i202.i.1 = add nuw nsw i64 %indvars.iv82.i200.i, 2 ; 2 uses
  %exitcond86.not.i203.i.1 = icmp eq i64 %indvars.iv.next83.i202.i.1, %wide.trip.count85.i199.i
  br i1 %exitcond86.not.i203.i.1, label %.preheader.i176.i, label %.lr.ph67.i198.i.new, !llvm.loop !14

.lr.ph72.i192.i.new:                              ; preds = %.prol.loopexit543, %.lr.ph72.i192.i.new
  %indvars.iv87.i194.i = phi i64 [ %indvars.iv.next88.i196.i.1, %.lr.ph72.i192.i.new ], [ %indvars.iv87.i194.i.unr, %.prol.loopexit543 ] ; 4 uses
  %.271.i195.i = phi i128 [ %i.qw, %.lr.ph72.i192.i.new ], [ %.271.i195.i.unr, %.prol.loopexit543 ]
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv87.i194.i
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !36
  %i.ql = zext i64 %i.qk to i128
  %i.qm = add nuw nsw i128 %.271.i195.i, %i.ql    ; 2 uses
  %i.qn = trunc i128 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv87.i194.i
  store i64 %i.qn, ptr %i.qo, align 8, !tbaa !36
  %i.qp = lshr i128 %i.qm, 64
  %indvars.iv.next88.i196.i = add nuw nsw i64 %indvars.iv87.i194.i, 1 ; 2 uses
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next88.i196.i
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !36
  %i.qs = zext i64 %i.qr to i128
  %i.qt = add nuw nsw i128 %i.qp, %i.qs           ; 2 uses
  %i.qu = trunc i128 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next88.i196.i
  store i64 %i.qu, ptr %i.qv, align 8, !tbaa !36
  %i.qw = lshr i128 %i.qt, 64                     ; 2 uses
  %indvars.iv.next88.i196.i.1 = add nuw nsw i64 %indvars.iv87.i194.i, 2 ; 2 uses
  %exitcond91.not.i197.i.1 = icmp eq i64 %indvars.iv.next88.i196.i.1, %wide.trip.count90.i193.i
  br i1 %exitcond91.not.i197.i.1, label %._crit_edge.i181.i, label %.lr.ph72.i192.i.new, !llvm.loop !15

._crit_edge.i181.i:                               ; preds = %.prol.loopexit543, %.lr.ph72.i192.i.new, %.preheader.i176.i
  %.pre-phi.i182.i = phi i64 [ %.pre-phi219, %.preheader.i176.i ], [ %wide.trip.count90.i193.i, %.lr.ph72.i192.i.new ], [ %wide.trip.count90.i193.i, %.prol.loopexit543 ]
  %.253.lcssa.i183.i = phi i16 [ %.152.lcssa.i177.i, %.preheader.i176.i ], [ %i.pk, %.lr.ph72.i192.i.new ], [ %i.pk, %.prol.loopexit543 ]
  %.2.lcssa.i184.i = phi i128 [ %.1.lcssa.i178.i, %.preheader.i176.i ], [ %.lcssa509.unr, %.prol.loopexit543 ], [ %i.qw, %.lr.ph72.i192.i.new ] ; 2 uses
  %i.qx = trunc nuw nsw i128 %.2.lcssa.i184.i to i64
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.pre-phi.i182.i
  store i64 %i.qx, ptr %i.qy, align 8, !tbaa !36
  %i.qz = icmp ne i128 %.2.lcssa.i184.i, 0
  %i.ra = zext i1 %i.qz to i16
  %i.rb = add i16 %.253.lcssa.i183.i, %i.ra       ; 2 uses
  %.not.i185.i = icmp eq i16 %i.rb, 0
  br i1 %.not.i185.i, label %_sp_sub_off.exit241.i.outer.backedge, label %bb.av

end_hunk_1
