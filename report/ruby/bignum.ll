inline.NumInlined: 999
inline.NumDeleted: 129
begin_hunk_0_@rb_big_remainder:bb.a
  %indvar = phi i32 [ %indvar.next, %bb.j ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02332.i.i = phi i64 [ %i.aw, %bb.j ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.as = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02332.i.i
  %i.at = getelementptr i8, ptr %i.as, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.j, label %.critedge.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.aw = add i64 %.02332.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.aw, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %cond.i.i, label %bignorm.exit, label %.lr.ph.i.i, !llvm.loop !161

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ax = icmp ugt i64 %.02332.i.i, 2
  br i1 %i.ax, label %bb.o, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.ay = trunc nuw i64 %.02332.i.i to i32        ; 3 uses
  %i.az = trunc i64 %.0.i28.i.i to i32
  %i.ba = sub i32 %indvar, %i.az
  %i.bb = icmp ugt i32 %i.ba, -4
  br i1 %i.bb, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.preheader.i.i, %.lr.ph36.i.i
  %.035.i.i = phi i32 [ %i.bc, %.lr.ph36.i.i ], [ %i.ay, %.lr.ph36.preheader.i.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.preheader.i.i ]
  %i.bc = add i32 %.035.i.i, -4                   ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !162

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.bd = add i32 %.035.i.i, -3
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = zext i32 %i.bg to i64
  %i.bi = shl nuw i64 %i.bh, 32
  %i.bj = sext i32 %i.bc to i64
  %i.bk = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !7
  %i.bm = zext i32 %i.bl to i64
  %i.bn = or disjoint i64 %i.bi, %i.bm
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.preheader.i.i
  %.035.i.i.epil.init = phi i32 [ %i.ay, %.lr.ph36.preheader.i.i ], [ %i.bc, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i ], [ %i.bn, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %.035.i.i.epil = phi i32 [ %i.bo, %.lr.ph36.i.i.epil ], [ %.035.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.bu, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %i.bo = add i32 %.035.i.i.epil, -1              ; 2 uses
  %i.bp = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7
  %i.bt = zext i32 %i.bs to i64
  %i.bu = or disjoint i64 %i.bp, %i.bt            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.ay
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !307

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.bv = icmp ult i64 %i.bp, 4611686018427387904
  %i.bw = and i64 %i.ah, 8192
  %.not.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.bv, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bx = shl nuw nsw i64 %i.bu, 1
  %i.by = or disjoint i64 %i.bx, 1
  br label %bignorm.exit

bb.m:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.bz = icmp ult i64 %i.bu, 4611686018427387905
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.neg.i.i = mul nsw i64 %i.bu, -2
  %i.ca = or disjoint i64 %.neg.i.i, 1
  br label %bignorm.exit

bb.o:                                             ; preds = %bb.m, %bb.k, %.critedge.i.i
  call void @rb_big_resize(i64 noundef %i.ab, i64 noundef %.02332.i.i)
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %bb.j, %bb.o, %bb.n, %bb.l, %BIGNUM_DIGITS.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %rb_int2big.exit, %rbimpl_intern_const.exit
  %.0 = phi i64 [ %i.aa, %rbimpl_intern_const.exit ], [ %i.ab, %rb_int2big.exit ], [ %i.ab, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.ca, %bb.n ], [ %i.ab, %bb.o ], [ %i.by, %bb.l ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bigdivrem(i64 noundef %0, i64 noundef %1, ptr nofree noundef captures(address) %2, ptr nofree noundef captures(address) %3) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  %i.c = and i64 %i.b, 16384
  %.not.i = icmp eq i64 %i.c, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.b, 15
  %i.g = and i64 %i.f, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.g, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.h = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13   ; 5 uses
  %i.j = and i64 %i.i, 16384
  %.not.i120 = icmp eq i64 %i.j, 0
  br i1 %.not.i120, label %bb.e, label %bb.d

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %i.k = lshr i64 %i.i, 15
  %i.l = and i64 %i.k, 511
  %i.m = getelementptr i8, ptr %i.h, i64 16
  br label %BIGNUM_DIGITS.exit

bb.e:                                             ; preds = %BIGNUM_LEN.exit
  %i.n = getelementptr i8, ptr %i.h, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !15
  %i.p = getelementptr i8, ptr %i.h, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.d, %bb.e
  %.0.i121162 = phi i64 [ %i.l, %bb.d ], [ %i.o, %bb.e ] ; 4 uses
  %.0.i124 = phi ptr [ %i.m, %bb.d ], [ %i.q, %bb.e ] ; 5 uses
  %i.r = icmp sgt i64 %.0.i121162, 0
  br i1 %i.r, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %BIGNUM_DIGITS.exit, %bb.f
  %.0102170 = phi i64 [ %i.w, %bb.f ], [ %.0.i121162, %BIGNUM_DIGITS.exit ] ; 4 uses
  %i.s = getelementptr [4 x i8], ptr %.0.i124, i64 %.0102170
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %.lr.ph
  %i.w = add nsw i64 %.0102170, -1
  %i.x = icmp sgt i64 %.0102170, 1
  br i1 %i.x, label %.lr.ph, label %.critedge.thread184, !llvm.loop !308

.critedge:                                        ; preds = %BIGNUM_DIGITS.exit
  %i.y = icmp eq i64 %.0.i121162, 0
  br i1 %i.y, label %.critedge.thread184, label %.critedge.thread

.critedge.thread184:                              ; preds = %bb.f, %.critedge
  tail call void @rb_num_zerodiv() #27
  unreachable

.critedge.thread:                                 ; preds = %.lr.ph, %.critedge
  %.0102169 = phi i64 [ %.0.i121162, %.critedge ], [ %.0102170, %.lr.ph ] ; 10 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.thread
  %i.z = getelementptr i8, ptr %i.a, i64 16
  br label %BIGNUM_DIGITS.exit127

bb.h:                                             ; preds = %.critedge.thread
  %i.aa = getelementptr i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit127

BIGNUM_DIGITS.exit127:                            ; preds = %bb.g, %bb.h
  %.0.i126 = phi ptr [ %i.z, %bb.g ], [ %i.ab, %bb.h ] ; 11 uses
  %.0.i12611 = ptrtoaddr ptr %.0.i126 to i64
  %i.ac = icmp sgt i64 %.0.i, 0
  br i1 %i.ac, label %.lr.ph172, label %.critedge2

.lr.ph172:                                        ; preds = %BIGNUM_DIGITS.exit127, %bb.i
  %.0101171 = phi i64 [ %i.ah, %bb.i ], [ %.0.i, %BIGNUM_DIGITS.exit127 ] ; 4 uses
  %i.ad = getelementptr [4 x i8], ptr %.0.i126, i64 %.0101171
  %i.ae = getelementptr i8, ptr %i.ad, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %.lr.ph172
  %i.ah = add nsw i64 %.0101171, -1
  %i.ai = icmp sgt i64 %.0101171, 1
  br i1 %i.ai, label %.lr.ph172, label %.critedge2, !llvm.loop !309

.critedge2:                                       ; preds = %.lr.ph172, %bb.i, %BIGNUM_DIGITS.exit127
  %.0101.lcssa = phi i64 [ %.0.i, %BIGNUM_DIGITS.exit127 ], [ 0, %bb.i ], [ %.0101171, %.lr.ph172 ] ; 20 uses
  %i.aj = icmp slt i64 %.0101.lcssa, %.0102169
  br i1 %i.aj, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge2
  %i.ak = icmp eq i64 %.0101.lcssa, %.0102169
  br i1 %i.ak, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr [4 x i8], ptr %.0.i126, i64 %.0102169
  %i.am = getelementptr i8, ptr %i.al, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = getelementptr [4 x i8], ptr %.0.i124, i64 %.0102169
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.ar = icmp ult i32 %i.an, %i.aq
  br i1 %i.ar, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k, %.critedge2
  %.not118 = icmp eq ptr %2, null
  br i1 %.not118, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.at = tail call fastcc i64 @bignew_1(i64 noundef %i.as, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr               ; 5 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !13 ; 2 uses
  %i.aw = and i64 %i.av, 16384
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr i8, ptr %i.au, i64 16
  store i64 0, ptr %i.ax, align 8
  %i.ay = and i64 %i.av, -16744449
  %i.az = or disjoint i64 %i.ay, 32768
  store i64 %i.az, ptr %i.au, align 8, !tbaa !13
  br label %rb_int2big.exit

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr i8, ptr %i.au, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15
  store i64 0, ptr %i.bb, align 4
  %i.bc = getelementptr i8, ptr %i.au, i64 16
  store i64 1, ptr %i.bc, align 8, !tbaa !15
  br label %rb_int2big.exit

rb_int2big.exit:                                  ; preds = %bb.n, %bb.o
  store volatile i64 %i.at, ptr %2, align 8, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %rb_int2big.exit, %bb.l
  %.not119 = icmp eq ptr %3, null
  br i1 %.not119, label %bb.be, label %bb.q

bb.q:                                             ; preds = %bb.p
  store volatile i64 %0, ptr %3, align 8, !tbaa !11
  br label %bb.be

bb.r:                                             ; preds = %bb.k, %bb.j
  %i.bd = icmp eq i64 %.0102169, 1
  br i1 %i.bd, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.be = load i32, ptr %.0.i124, align 4, !tbaa !7 ; 4 uses
  %i.bf = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.bg = xor i64 %i.i, %i.b
  %i.bh = and i64 %i.bg, 8192
  %.not166 = icmp eq i64 %i.bh, 0
  %i.bi = zext i1 %.not166 to i32
  %i.bj = tail call fastcc i64 @bignew_1(i64 noundef %i.bf, i64 noundef %.0101.lcssa, i32 noundef %i.bi) ; 2 uses
  %i.bk = inttoptr i64 %i.bj to ptr               ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.bm = and i64 %i.bl, 16384
  %.not.i128 = icmp eq i64 %i.bm, 0
  br i1 %.not.i128, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr i8, ptr %i.bk, i64 16
  br label %BIGNUM_DIGITS.exit130

bb.u:                                             ; preds = %bb.s
  %i.bo = getelementptr i8, ptr %i.bk, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit130

BIGNUM_DIGITS.exit130:                            ; preds = %bb.t, %bb.u
  %.0.i129 = phi ptr [ %i.bn, %bb.t ], [ %i.bp, %bb.u ] ; 6 uses
  %.0.i12912 = ptrtoaddr ptr %.0.i129 to i64
  %i.bq = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.be)
  %i.br = icmp samesign ult i32 %i.bq, 2
  br i1 %i.br, label %4, label %8

4:                                                ; preds = %BIGNUM_DIGITS.exit130
  %5 = add i32 %i.be, -1
  %6 = load i32, ptr %.0.i126, align 4, !tbaa !7
  %7 = and i32 %6, %5                             ; 4 uses
  %.not.i.i.i131 = icmp eq i64 %.0101.lcssa, 0
  br i1 %.not.i.i.i131, label %bigdivrem_single.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %4
  %i.bs = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.be, i1 false)
  %i.bt = sub nsw i32 31, %i.bs
  %i.bu = zext nneg i32 %i.bt to i64              ; 4 uses
  %min.iters.check = icmp ult i64 %.0101.lcssa, 4
  %i.bv = sub i64 %.0.i12611, %.0.i12912
  %diff.check = icmp ult i64 %i.bv, 16
  %or.cond14 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond14, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %.0101.lcssa, -4               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i64> [ <i64 poison, i64 poison, i64 poison, i64 0>, %vector.ph ], [ %i.ca, %vector.body ]
  %i.bw = xor i64 %index, -1
  %i.bx = add i64 %.0101.lcssa, %i.bw             ; 2 uses
  %i.by = getelementptr [4 x i8], ptr %.0.i126, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 -12
  %wide.load = load <4 x i32>, ptr %i.bz, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ca = zext <4 x i32> %reverse to <4 x i64>    ; 4 uses
  %i.cb = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.ca, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cc = shl nuw <4 x i64> %i.cb, splat (i64 32)
  %i.cd = or disjoint <4 x i64> %i.cc, %i.ca
  %i.ce = lshr <4 x i64> %i.cd, %broadcast.splat
  %i.cf = trunc <4 x i64> %i.ce to <4 x i32>
  %i.cg = getelementptr [4 x i8], ptr %.0.i129, i64 %i.bx
  %i.ch = getelementptr i8, ptr %i.cg, i64 -12
  %reverse13 = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse13, ptr %i.ch, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !310

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %i.ca, i64 3
  %cmp.n = icmp eq i64 %.0101.lcssa, %n.vec
  br i1 %cmp.n, label %bigdivrem_single.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %.017.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.014.in16.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.neg = or disjoint i64 %.017.i.i.i.ph, 1
  %xtraiter = and i64 %.0101.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.014.i.i.i.prol = shl nuw i64 %.014.in16.i.i.i.ph, 32
  %i.cj = xor i64 %.017.i.i.i.ph, -1
  %i.ck = add i64 %.0101.lcssa, %i.cj             ; 2 uses
  %i.cl = getelementptr [4 x i8], ptr %.0.i126, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !7
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = or disjoint i64 %.014.i.i.i.prol, %i.cn
  %i.cp = lshr i64 %i.co, %i.bu
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = getelementptr [4 x i8], ptr %.0.i129, i64 %i.ck
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !7
  %i.cs = or disjoint i64 %.017.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.i.i.unr = phi i64 [ %.017.i.i.i.ph, %scalar.ph.preheader ], [ %i.cs, %scalar.ph.prol ]
  %.014.in16.i.i.i.unr = phi i64 [ %.014.in16.i.i.i.ph, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %i.ct = icmp eq i64 %.0101.lcssa, %.neg
  br i1 %i.ct, label %bigdivrem_single.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i.i.i = phi i64 [ %i.dl, %scalar.ph ], [ %.017.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.014.in16.i.i.i = phi i64 [ %i.dg, %scalar.ph ], [ %.014.in16.i.i.i.unr, %scalar.ph.prol.loopexit ]
  %.014.i.i.i = shl nuw i64 %.014.in16.i.i.i, 32
  %i.cu = xor i64 %.017.i.i.i, -1
  %i.cv = add i64 %.0101.lcssa, %i.cu             ; 2 uses
  %i.cw = getelementptr [4 x i8], ptr %.0.i126, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !7
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = or disjoint i64 %.014.i.i.i, %i.cy
  %i.da = lshr i64 %i.cz, %i.bu
  %i.db = trunc i64 %i.da to i32
  %i.dc = getelementptr [4 x i8], ptr %.0.i129, i64 %i.cv
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !7
  %.014.i.i.i.1 = shl nuw i64 %i.cy, 32
  %reass.sub = sub i64 %.0101.lcssa, %.017.i.i.i
  %i.dd = add i64 %reass.sub, -2                  ; 2 uses
  %i.de = getelementptr [4 x i8], ptr %.0.i126, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = or disjoint i64 %.014.i.i.i.1, %i.dg
  %i.di = lshr i64 %i.dh, %i.bu
  %i.dj = trunc i64 %i.di to i32
  %i.dk = getelementptr [4 x i8], ptr %.0.i129, i64 %i.dd
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !7
  %i.dl = add nuw i64 %.017.i.i.i, 2              ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.dl, %.0101.lcssa
  br i1 %exitcond.not.i.i.i.1, label %bigdivrem_single.exit, label %scalar.ph, !llvm.loop !311

8:                                                ; preds = %BIGNUM_DIGITS.exit130
  %.not.i.i = icmp eq i64 %.0101.lcssa, 0
  br i1 %.not.i.i, label %bigdivrem_single.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %8
  %i.dm = zext i32 %i.be to i64                   ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i.i
  %.030.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dx, %bb.v ]
  %.02629.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dy, %bb.v ] ; 2 uses
  %i.dn = shl nuw i64 %.030.i.i, 32
  %i.do = xor i64 %.02629.i.i, -1
  %i.dp = add i64 %.0101.lcssa, %i.do             ; 2 uses
  %i.dq = getelementptr [4 x i8], ptr %.0.i126, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !7
  %i.ds = zext i32 %i.dr to i64
  %i.dt = or disjoint i64 %i.dn, %i.ds            ; 2 uses
  %i.du = udiv i64 %i.dt, %i.dm
  %i.dv = trunc i64 %i.du to i32
  %i.dw = getelementptr [4 x i8], ptr %.0.i129, i64 %i.dp
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !7
  %i.dx = urem i64 %i.dt, %i.dm                   ; 2 uses
  %i.dy = add nuw i64 %.02629.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dy, %.0101.lcssa
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %bb.v, !llvm.loop !113

._crit_edge.loopexit.i.i:                         ; preds = %bb.v
  %i.dz = trunc nuw i64 %i.dx to i32
  br label %bigdivrem_single.exit

bigdivrem_single.exit:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %4, %8, %._crit_edge.loopexit.i.i
  %.027.i.i = phi i32 [ %i.dz, %._crit_edge.loopexit.i.i ], [ %7, %4 ], [ 0, %8 ], [ %7, %middle.block ], [ %7, %scalar.ph ], [ %7, %scalar.ph.prol.loopexit ] ; 2 uses
  %.not116 = icmp eq ptr %3, null
  br i1 %.not116, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bigdivrem_single.exit
  %i.ea = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.eb = tail call fastcc i64 @bignew_1(i64 noundef %i.ea, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.ec = inttoptr i64 %i.eb to ptr               ; 6 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !13 ; 2 uses
  %i.ee = and i64 %i.ed, 16384
  %.not.i.i132 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i132, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ef = getelementptr i8, ptr %i.ec, i64 16
  store i32 %.027.i.i, ptr %i.ef, align 8, !tbaa !7
  %i.eg = getelementptr i8, ptr %i.ec, i64 20
  store i32 0, ptr %i.eg, align 4, !tbaa !7
  %i.eh = and i64 %i.ed, -16744449
  %i.ei = or disjoint i64 %i.eh, 32768
  store i64 %i.ei, ptr %i.ec, align 8, !tbaa !13
  br label %rb_uint2big.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = getelementptr i8, ptr %i.ec, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !15 ; 2 uses
  store i32 %.027.i.i, ptr %i.ek, align 4, !tbaa !7
  %i.el = getelementptr i8, ptr %i.ek, i64 4
  store i32 0, ptr %i.el, align 4, !tbaa !7
  %i.em = getelementptr i8, ptr %i.ec, i64 16
  store i64 1, ptr %i.em, align 8, !tbaa !15
  br label %rb_uint2big.exit

rb_uint2big.exit:                                 ; preds = %bb.x, %bb.y
  store volatile i64 %i.eb, ptr %3, align 8, !tbaa !11
  %i.en = load volatile i64, ptr %3, align 8, !tbaa !11
  %i.eo = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ep = and i64 %i.eo, 8192
  %i.eq = inttoptr i64 %i.en to ptr               ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !13
  %i.es = and i64 %i.er, -8193
  %.sink.i = or disjoint i64 %i.es, %i.ep
  store i64 %.sink.i, ptr %i.eq, align 8, !tbaa !13
  br label %bb.z

bb.z:                                             ; preds = %rb_uint2big.exit, %bigdivrem_single.exit
  %.not117 = icmp eq ptr %2, null
  br i1 %.not117, label %bb.be, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store volatile i64 %i.bj, ptr %2, align 8, !tbaa !11
  br label %bb.be

bb.ab:                                            ; preds = %bb.r
  %i.et = icmp eq i64 %.0101.lcssa, 2
  %i.eu = icmp eq i64 %.0102169, 2
  %or.cond = and i1 %i.eu, %i.et
  br i1 %or.cond, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.ev = load i64, ptr %.0.i126, align 4         ; 2 uses
  %i.ew = load i64, ptr %.0.i124, align 4         ; 2 uses
  %i.ex = urem i64 %i.ev, %i.ew
  %i.ey = udiv i64 %i.ev, %i.ew
  %.not114 = icmp eq ptr %2, null
  br i1 %.not114, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ez = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.fa = xor i64 %i.i, %i.b
  %i.fb = and i64 %i.fa, 8192
  %.not165 = icmp eq i64 %i.fb, 0
  %i.fc = zext i1 %.not165 to i32
  %i.fd = tail call fastcc i64 @bignew_1(i64 noundef %i.ez, i64 noundef 2, i32 noundef %i.fc) ; 2 uses
  %i.fe = inttoptr i64 %i.fd to ptr               ; 3 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !13
  %i.fg = and i64 %i.ff, 16384
  %.not.i135 = icmp eq i64 %i.fg, 0
  br i1 %.not.i135, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fh = getelementptr i8, ptr %i.fe, i64 16
  br label %BIGNUM_DIGITS.exit137

bb.af:                                            ; preds = %bb.ad
  %i.fi = getelementptr i8, ptr %i.fe, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit137

BIGNUM_DIGITS.exit137:                            ; preds = %bb.ae, %bb.af
  %.0.i136 = phi ptr [ %i.fh, %bb.ae ], [ %i.fj, %bb.af ]
  store i64 %i.ey, ptr %.0.i136, align 4
  store volatile i64 %i.fd, ptr %2, align 8, !tbaa !11
  br label %bb.ag

bb.ag:                                            ; preds = %BIGNUM_DIGITS.exit137, %bb.ac
  %.not115 = icmp eq ptr %3, null
  br i1 %.not115, label %bb.be, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fk = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.fl = load i64, ptr %i.a, align 8, !tbaa !13
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = lshr i32 %i.fm, 13
  %i.fo = and i32 %i.fn, 1
  %i.fp = tail call fastcc i64 @bignew_1(i64 noundef %i.fk, i64 noundef 2, i32 noundef %i.fo) ; 2 uses
  %i.fq = inttoptr i64 %i.fp to ptr               ; 3 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !13
  %i.fs = and i64 %i.fr, 16384
  %.not.i138 = icmp eq i64 %i.fs, 0
  br i1 %.not.i138, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ft = getelementptr i8, ptr %i.fq, i64 16
  br label %BIGNUM_DIGITS.exit140

bb.aj:                                            ; preds = %bb.ah
  %i.fu = getelementptr i8, ptr %i.fq, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit140

BIGNUM_DIGITS.exit140:                            ; preds = %bb.ai, %bb.aj
  %.0.i139 = phi ptr [ %i.ft, %bb.ai ], [ %i.fv, %bb.aj ]
  store i64 %i.ex, ptr %.0.i139, align 4
  store volatile i64 %i.fp, ptr %3, align 8, !tbaa !11
  br label %bb.be

bb.ak:                                            ; preds = %bb.ab
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %BIGNUM_DIGITS.exit143, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fw = add i64 %.0101.lcssa, 1                 ; 3 uses
  %i.fx = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.fy = xor i64 %i.i, %i.b
  %i.fz = and i64 %i.fy, 8192
  %.not164 = icmp eq i64 %i.fz, 0
  %i.ga = zext i1 %.not164 to i32
  %i.gb = tail call fastcc i64 @bignew_1(i64 noundef %i.fx, i64 noundef %i.fw, i32 noundef %i.ga) ; 3 uses
  %i.gc = inttoptr i64 %i.gb to ptr               ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !13
  %i.ge = and i64 %i.gd, 16384
  %.not.i141 = icmp eq i64 %i.ge, 0
  br i1 %.not.i141, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gf = getelementptr i8, ptr %i.gc, i64 16
  br label %BIGNUM_DIGITS.exit143

bb.an:                                            ; preds = %bb.al
  %i.gg = getelementptr i8, ptr %i.gc, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit143

BIGNUM_DIGITS.exit143:                            ; preds = %bb.an, %bb.am, %bb.ak
  %.0108 = phi i64 [ 4, %bb.ak ], [ %i.gb, %bb.am ], [ %i.gb, %bb.an ] ; 3 uses
  %.0106 = phi ptr [ null, %bb.ak ], [ %i.gf, %bb.am ], [ %i.gh, %bb.an ]
  %.0104 = phi i64 [ 0, %bb.ak ], [ %i.fw, %bb.am ], [ %i.fw, %bb.an ]
  %.not113 = icmp eq ptr %3, null                 ; 2 uses
  br i1 %.not113, label %BIGNUM_DIGITS.exit146, label %bb.ao

bb.ao:                                            ; preds = %BIGNUM_DIGITS.exit143
  %i.gi = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.gj = load i64, ptr %i.a, align 8, !tbaa !13
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = lshr i32 %i.gk, 13
  %i.gm = and i32 %i.gl, 1
  %i.gn = tail call fastcc i64 @bignew_1(i64 noundef %i.gi, i64 noundef %.0102169, i32 noundef %i.gm) ; 3 uses
  %i.go = inttoptr i64 %i.gn to ptr               ; 3 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !13
  %i.gq = and i64 %i.gp, 16384
  %.not.i144 = icmp eq i64 %i.gq, 0
  br i1 %.not.i144, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gr = getelementptr i8, ptr %i.go, i64 16
  br label %BIGNUM_DIGITS.exit146

bb.aq:                                            ; preds = %bb.ao
  %i.gs = getelementptr i8, ptr %i.go, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit146

BIGNUM_DIGITS.exit146:                            ; preds = %bb.aq, %bb.ap, %BIGNUM_DIGITS.exit143
  %.0107 = phi i64 [ 4, %BIGNUM_DIGITS.exit143 ], [ %i.gn, %bb.ap ], [ %i.gn, %bb.aq ] ; 3 uses
  %.0105 = phi ptr [ null, %BIGNUM_DIGITS.exit143 ], [ %i.gr, %bb.ap ], [ %i.gt, %bb.aq ]
  %.0103 = phi i64 [ 0, %BIGNUM_DIGITS.exit143 ], [ %.0102169, %bb.ap ], [ %.0102169, %bb.aq ]
  tail call fastcc void @bary_divmod_normal(ptr noundef %.0106, i64 noundef %.0104, ptr noundef %.0105, i64 noundef range(i64 2, 1) %.0103, ptr noundef readonly %.0.i126, i64 noundef %.0101.lcssa, ptr noundef %.0.i124, i64 noundef %.0102169)
  br i1 %.not, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %BIGNUM_DIGITS.exit146
  %i.gu = inttoptr i64 %.0108 to ptr              ; 5 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !13 ; 3 uses
  %i.gw = and i64 %i.gv, 16384
  %.not.i.i147 = icmp eq i64 %i.gw, 0             ; 2 uses
  br i1 %.not.i.i147, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gx = lshr i64 %i.gv, 15
  %i.gy = and i64 %i.gx, 511
  %i.gz = getelementptr i8, ptr %i.gu, i64 16
end_hunk_0
