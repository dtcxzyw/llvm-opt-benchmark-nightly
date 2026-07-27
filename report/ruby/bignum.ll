inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 183
begin_hunk_0_@bigdivrem_restoring:bb.a
  br i1 %.not.i.i, label %bigdivrem_single1.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.p = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.q = xor i32 %i.p, 31
  %i.r = zext i32 %i.j to i64                     ; 3 uses
  %i.s = zext nneg i32 %i.q to i64                ; 4 uses
  %min.iters.check = icmp ult i64 %i.g, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.t = sub i64 %.0, %3
  %i.u = shl i64 %i.t, 2
  %i.v = add i64 %i.u, -1
  %diff.check = icmp ult i64 %i.v, 15
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %vector.recur.init = insertelement <4 x i64> poison, i64 %i.r, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i64> [ %vector.recur.init, %vector.ph ], [ %i.aa, %vector.body ]
  %i.w = xor i64 %index, -1
  %i.x = add i64 %i.g, %i.w                       ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %i.f, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -12
  %wide.load = load <4 x i32>, ptr %i.z, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.aa = zext <4 x i32> %reverse to <4 x i64>    ; 4 uses
  %i.ab = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.aa, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ac = shl nuw <4 x i64> %i.ab, splat (i64 32)
  %i.ad = or disjoint <4 x i64> %i.ac, %i.aa
  %i.ae = lshr <4 x i64> %i.ad, %broadcast.splat
  %i.af = trunc <4 x i64> %i.ae to <4 x i32>
  %i.ag = getelementptr [4 x i8], ptr %i.e, i64 %i.x
  %i.ah = getelementptr i8, ptr %i.ag, i64 -12
  %reverse40 = shufflevector <4 x i32> %i.af, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse40, ptr %i.ah, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !421

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %i.aa, i64 3
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %bigdivrem_single1.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.017.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.014.in16.i.i.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %i.aj = sub i64 %1, %3
  %i.ak = xor i64 %.017.i.i.ph, -1
  %i.al = add i64 %1, %i.ak
  %xtraiter = and i64 %i.aj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.014.i.i.prol = shl nuw i64 %.014.in16.i.i.ph, 32
  %i.am = xor i64 %.017.i.i.ph, -1
  %i.an = add i64 %i.g, %i.am                     ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.f, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = or disjoint i64 %.014.i.i.prol, %i.aq
  %i.as = lshr i64 %i.ar, %i.s
  %i.at = trunc i64 %i.as to i32
  %i.au = getelementptr [4 x i8], ptr %i.e, i64 %i.an
  store i32 %i.at, ptr %i.au, align 4, !tbaa !7
  %i.av = or disjoint i64 %.017.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.i.unr = phi i64 [ %.017.i.i.ph, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %.014.in16.i.i.unr = phi i64 [ %.014.in16.i.i.ph, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %i.aw = icmp eq i64 %i.al, %3
  br i1 %i.aw, label %bigdivrem_single1.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i.i = phi i64 [ %i.bo, %scalar.ph ], [ %.017.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.014.in16.i.i = phi i64 [ %i.bj, %scalar.ph ], [ %.014.in16.i.i.unr, %scalar.ph.prol.loopexit ]
  %.014.i.i = shl nuw i64 %.014.in16.i.i, 32
  %i.ax = xor i64 %.017.i.i, -1
  %i.ay = add i64 %i.g, %i.ax                     ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.f, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = or disjoint i64 %.014.i.i, %i.bb
  %i.bd = lshr i64 %i.bc, %i.s
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr [4 x i8], ptr %i.e, i64 %i.ay
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !7
  %.014.i.i.1 = shl nuw i64 %i.bb, 32
  %reass.sub = sub i64 %i.g, %.017.i.i
  %i.bg = add i64 %reass.sub, -2                  ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.f, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = or disjoint i64 %.014.i.i.1, %i.bj
  %i.bl = lshr i64 %i.bk, %i.s
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr [4 x i8], ptr %i.e, i64 %i.bg
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !7
  %i.bo = add nuw i64 %.017.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bo, %i.g
  br i1 %exitcond.not.i.i.1, label %bigdivrem_single1.exit, label %scalar.ph, !llvm.loop !422

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i64 %1, %3
  br i1 %.not.i, label %bigdivrem_single1.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.bp = zext i32 %i.j to i64
  %i.bq = zext i32 %i.b to i64                    ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.030.i = phi i64 [ %i.bp, %.lr.ph.i ], [ %i.cb, %bb.g ]
  %.02629.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cc, %bb.g ] ; 2 uses
  %i.br = shl nuw i64 %.030.i, 32
  %i.bs = xor i64 %.02629.i, -1
  %i.bt = add i64 %i.g, %i.bs                     ; 2 uses
  %i.bu = getelementptr [4 x i8], ptr %i.f, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.bw = zext i32 %i.bv to i64
  %i.bx = or disjoint i64 %i.br, %i.bw            ; 2 uses
  %i.by = udiv i64 %i.bx, %i.bq
  %i.bz = trunc i64 %i.by to i32
  %i.ca = getelementptr [4 x i8], ptr %i.e, i64 %i.bt
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !7
  %i.cb = urem i64 %i.bx, %i.bq                   ; 2 uses
  %i.cc = add nuw i64 %.02629.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cc, %i.g
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.g, !llvm.loop !113

._crit_edge.loopexit.i:                           ; preds = %bb.g
  %i.cd = trunc nuw i64 %i.cb to i32
  br label %bigdivrem_single1.exit

bigdivrem_single1.exit:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.e, %bb.f, %._crit_edge.loopexit.i
  %.027.i = phi i32 [ %i.cd, %._crit_edge.loopexit.i ], [ %i.o, %bb.e ], [ %i.j, %bb.f ], [ %i.o, %middle.block ], [ %i.o, %scalar.ph ], [ %i.o, %scalar.ph.prol.loopexit ]
  store i32 %.027.i, ptr %i.f, align 4, !tbaa !7
  br label %.loopexit

bb.h:                                             ; preds = %bb.c
  %i.ce = getelementptr [4 x i8], ptr %2, i64 %.0
  %i.cf = sub i64 %3, %.0                         ; 2 uses
  store i64 %i.cf, ptr %4, align 8, !tbaa !423
  %i.cg = getelementptr [4 x i8], ptr %0, i64 %.0
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !425
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ce, ptr %i.ci, align 8, !tbaa !426
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store volatile i64 0, ptr %i.cj, align 8, !tbaa !427
  %i.ck = sub i64 %1, %.0                         ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !428
  %i.cm = icmp ugt i64 %i.ck, 10000
  %i.cn = icmp ugt i64 %i.cf, 10000
  %or.cond = or i1 %i.cm, %i.cn
  br i1 %or.cond, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h, %.preheader
  store volatile i64 0, ptr %i.cj, align 8, !tbaa !427
  %i.co = call ptr @rb_nogvl(ptr noundef nonnull @bigdivrem1, ptr noundef nonnull %4, ptr noundef nonnull @rb_big_stop, ptr noundef nonnull %4, i32 noundef 6) #23 ; 0 uses
  %i.cp = load volatile i64, ptr %i.cj, align 8, !tbaa !427
  %i.cq = icmp eq i64 %i.cp, 20
  br i1 %i.cq, label %.preheader, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.cr = call ptr @bigdivrem1(ptr noundef nonnull %4) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.i, %bigdivrem_single1.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

declare ptr @rb_nogvl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal noalias noundef ptr @bigdivrem1(ptr nofree noundef captures(address) %0) #15 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !423
  %.fr = freeze i64 %i.a                          ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !428  ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !426  ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !425  ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %i.e, i64 %.fr
  %i.j = getelementptr i8, ptr %i.i, i64 -4       ; 2 uses
  %i.k = xor i64 %.fr, -1
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr, i64 1)
  %.not.i.i = icmp eq i64 %.fr, 0
  br i1 %.not.i.i, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %.fr, 1
  %i.l = icmp eq i64 %.fr, 1
  %unroll_iter = and i64 %.fr, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod111 = trunc i64 %.fr to i1
  br label %.split

.split.us:                                        ; preds = %bb.a, %.loopexit.us
  %.047.us = phi i64 [ %i.al, %.loopexit.us ], [ %i.c, %bb.a ] ; 3 uses
  %i.m = load volatile i64, ptr %i.h, align 8, !tbaa !427
  %.not.us = icmp eq i64 %i.m, 0
  br i1 %.not.us, label %bb.b, label %.split64.us

bb.b:                                             ; preds = %.split.us
  %i.n = getelementptr [4 x i8], ptr %i.g, i64 %.047.us ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -4       ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7    ; 2 uses
  %i.q = load i32, ptr %i.j, align 4, !tbaa !7    ; 2 uses
  %i.r = icmp eq i32 %i.p, %i.q
  %.pre77 = zext i32 %i.p to i64                  ; 3 uses
  br i1 %i.r, label %.thread.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = shl nuw i64 %.pre77, 32
  %i.t = getelementptr i8, ptr %i.n, i64 -8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = zext i32 %i.u to i64
  %i.w = or disjoint i64 %i.s, %i.v
  %i.x = zext i32 %i.q to i64
  %i.y = udiv i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %.not51.us = icmp eq i32 %i.z, 0
  br i1 %.not51.us, label %.loopexit.us, label %.thread.us

.thread.us:                                       ; preds = %bb.b, %bb.c
  %.055.us = phi i32 [ %i.z, %bb.c ], [ -1, %bb.b ] ; 2 uses
  %i.aa = zext i32 %.055.us to i64
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !7
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw i64 %i.ac, %i.aa                ; 2 uses
  %i.ae = and i64 %i.ad, 4294967295               ; 2 uses
  %i.af = sub nsw i64 %.pre77, %i.ae              ; 3 uses
  %.not.i.us = icmp eq i64 %i.ae, 0
  br i1 %.not.i.us, label %bigdivrem_mulsub.exit.us, label %bb.d

bb.d:                                             ; preds = %.thread.us
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.o, align 4, !tbaa !7
  %.pre = and i64 %i.af, 4294967295
  br label %bigdivrem_mulsub.exit.us

bigdivrem_mulsub.exit.us:                         ; preds = %bb.d, %.thread.us
  %.pre-phi = phi i64 [ %.pre, %bb.d ], [ %.pre77, %.thread.us ]
  %i.ah = ashr i64 %i.af, 32
  %i.ai = lshr i64 %i.ad, 32
  %i.aj = sub nsw i64 %i.ah, %i.ai
  %i.ak = sub nsw i64 0, %.pre-phi
  %.not5261.us = icmp eq i64 %i.aj, %i.ak
  br i1 %.not5261.us, label %.loopexit.us, label %bary_add.exit.us

.loopexit.us:                                     ; preds = %bigdivrem_mulsub.exit.us, %bb.c
  %.2.us = phi i32 [ 0, %bb.c ], [ %.055.us, %bigdivrem_mulsub.exit.us ]
  %i.al = add i64 %.047.us, -1                    ; 3 uses
  %i.am = getelementptr [4 x i8], ptr %i.g, i64 %i.al
  store i32 %.2.us, ptr %i.am, align 4, !tbaa !7
  %.not85 = icmp eq i64 %i.al, 0
  br i1 %.not85, label %.loopexit57, label %.split.us, !llvm.loop !429

.split:                                           ; preds = %.split.preheader, %.loopexit
  %.047 = phi i64 [ %i.de, %.loopexit ], [ %i.c, %.split.preheader ] ; 3 uses
  %i.an = load volatile i64, ptr %i.h, align 8, !tbaa !427
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %bb.e, label %.split64.us

.split64.us:                                      ; preds = %.split, %.split.us
  %.us-phi65 = phi i64 [ %.047.us, %.split.us ], [ %.047, %.split ]
  store i64 %.us-phi65, ptr %i.b, align 8, !tbaa !428
  br label %.loopexit57

bb.e:                                             ; preds = %.split
  %i.ao = getelementptr [4 x i8], ptr %i.g, i64 %.047 ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4     ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7  ; 2 uses
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !7   ; 2 uses
  %i.as = icmp eq i32 %i.aq, %i.ar
  br i1 %i.as, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = zext i32 %i.aq to i64
  %i.au = shl nuw i64 %i.at, 32
  %i.av = getelementptr i8, ptr %i.ao, i64 -8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = zext i32 %i.aw to i64
  %i.ay = or disjoint i64 %i.au, %i.ax
  %i.az = zext i32 %i.ar to i64
  %i.ba = udiv i64 %i.ay, %i.az
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %.not51 = icmp eq i32 %i.bb, 0
  br i1 %.not51, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %.055 = phi i32 [ %i.bb, %bb.f ], [ -1, %bb.e ] ; 3 uses
  %i.bc = getelementptr [4 x i8], ptr %i.ao, i64 %i.k ; 4 uses
  %i.bd = zext i32 %.055 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.thread
  %.023.i = phi i64 [ 0, %.thread ], [ %i.br, %bb.i ]
  %.022.i = phi i64 [ 0, %.thread ], [ %i.bq, %bb.i ] ; 2 uses
  %.0.i = phi i64 [ 0, %.thread ], [ %i.bs, %bb.i ] ; 3 uses
  %i.be = getelementptr [4 x i8], ptr %i.e, i64 %.0.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = zext i32 %i.bf to i64
  %i.bh = mul nuw i64 %i.bg, %i.bd
  %i.bi = add nuw i64 %i.bh, %.023.i              ; 2 uses
  %i.bj = and i64 %i.bi, 4294967295               ; 2 uses
  %i.bk = sub nsw i64 %.022.i, %i.bj
  %i.bl = getelementptr [4 x i8], ptr %i.bc, i64 %.0.i ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add nsw i64 %i.bk, %i.bn                ; 2 uses
  %.not.i = icmp eq i64 %.022.i, %i.bj
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = trunc i64 %i.bo to i32
  store i32 %i.bp, ptr %i.bl, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bq = ashr i64 %i.bo, 32                      ; 2 uses
  %i.br = lshr i64 %i.bi, 32                      ; 2 uses
  %i.bs = add nuw i64 %.0.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bs, %umax.i
  br i1 %exitcond.not.i, label %bigdivrem_mulsub.exit, label %bb.g, !llvm.loop !127

bigdivrem_mulsub.exit:                            ; preds = %bb.i
  %i.bt = sub nsw i64 %i.bq, %i.br
  %i.bu = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.bv = zext i32 %i.bu to i64
  %i.bw = sub nsw i64 0, %i.bv
  %.not5261 = icmp eq i64 %i.bt, %i.bw
  br i1 %.not5261, label %.loopexit, label %.lr.ph.i.i.preheader

bary_add.exit.us:                                 ; preds = %bigdivrem_mulsub.exit.us, %bary_add.exit.us
  br label %bary_add.exit.us

.lr.ph.i.i.preheader:                             ; preds = %bigdivrem_mulsub.exit, %bary_add.exit.loopexit
  %.162 = phi i32 [ %i.dd, %bary_add.exit.loopexit ], [ %.055, %bigdivrem_mulsub.exit ]
  br i1 %i.l, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05779.i.i = phi i64 [ %i.cs, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %.05878.i.i = phi i64 [ %i.cr, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bx = getelementptr [4 x i8], ptr %i.bc, i64 %.05779.i.i ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr [4 x i8], ptr %i.e, i64 %.05779.i.i
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nuw nsw i64 %.05878.i.i, %i.bz
  %i.ce = add nuw nsw i64 %i.cd, %i.cc            ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  store i32 %i.cf, ptr %i.bx, align 4, !tbaa !7
  %i.cg = lshr i64 %i.ce, 32
  %i.ch = or disjoint i64 %.05779.i.i, 1          ; 2 uses
  %i.ci = getelementptr [4 x i8], ptr %i.bc, i64 %i.ch ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !7
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr [4 x i8], ptr %i.e, i64 %i.ch
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !7
  %i.cn = zext i32 %i.cm to i64
  %i.co = add nuw nsw i64 %i.cg, %i.ck
  %i.cp = add nuw nsw i64 %i.co, %i.cn            ; 2 uses
  %i.cq = trunc i64 %i.cp to i32
  store i32 %i.cq, ptr %i.ci, align 4, !tbaa !7
  %i.cr = lshr i64 %i.cp, 32                      ; 3 uses
  %i.cs = add nuw i64 %.05779.i.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bary_add.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !34

bary_add.exit.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod.not, label %bary_add.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %bary_add.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.05779.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cs, %bary_add.exit.loopexit.unr-lcssa ] ; 2 uses
  %.05878.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cr, %bary_add.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.ct = getelementptr [4 x i8], ptr %i.bc, i64 %.05779.i.i.epil.init ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !7
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr [4 x i8], ptr %i.e, i64 %.05779.i.i.epil.init
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !7
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add nuw nsw i64 %.05878.i.i.epil.init, %i.cv
  %i.da = add nuw nsw i64 %i.cz, %i.cy            ; 2 uses
  %i.db = trunc i64 %i.da to i32
  store i32 %i.db, ptr %i.ct, align 4, !tbaa !7
  %i.dc = lshr i64 %i.da, 32
  br label %bary_add.exit.loopexit

bary_add.exit.loopexit:                           ; preds = %bary_add.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa107 = phi i64 [ %i.cr, %bary_add.exit.loopexit.unr-lcssa ], [ %i.dc, %.lr.ph.i.i.epil.preheader ]
  %i.dd = add i32 %.162, -1                       ; 2 uses
  %.not56.not = icmp eq i64 %.lcssa107, 0
  br i1 %.not56.not, label %.lr.ph.i.i.preheader, label %.loopexit, !llvm.loop !430

.loopexit:                                        ; preds = %bary_add.exit.loopexit, %bigdivrem_mulsub.exit, %bb.f
  %.2 = phi i32 [ 0, %bb.f ], [ %.055, %bigdivrem_mulsub.exit ], [ %i.dd, %bary_add.exit.loopexit ]
  %i.de = add i64 %.047, -1                       ; 3 uses
  %i.df = getelementptr [4 x i8], ptr %i.g, i64 %i.de
  store i32 %.2, ptr %i.df, align 4, !tbaa !7
  %i.dg = icmp ugt i64 %i.de, %.fr
  br i1 %i.dg, label %.split, label %.loopexit57, !llvm.loop !429

.loopexit57:                                      ; preds = %.loopexit, %.loopexit.us, %.split64.us
  ret ptr null
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @rb_big_stop(ptr nofree noundef captures(address) %0) #16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  store volatile i64 20, ptr %i.a, align 8, !tbaa !427
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #18

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

declare i64 @rb_gc_obj_slot_size(i64 noundef) local_unnamed_addr #5

declare i64 @rb_wb_protected_newobj_of(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare void @rb_obj_freeze_inline(i64 noundef) local_unnamed_addr #5

declare zeroext i1 @rb_gc_size_allocatable_p(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #3

end_hunk_0
