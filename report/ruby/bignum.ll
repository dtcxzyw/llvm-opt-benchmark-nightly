Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 184
begin_hunk_0_@rb_big_remainder:bb.a
  %i.al = lshr i64 %i.ah, 15
  %i.am = and i64 %i.al, 511
  %i.an = getelementptr i8, ptr %i.ag, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr i8, ptr %i.ag, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !49
  %i.aq = getelementptr i8, ptr %i.ag, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.i, %bb.h
  %.0.i28.i.i = phi i64 [ %i.am, %bb.h ], [ %i.ap, %bb.i ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.an, %bb.h ], [ %i.ar, %bb.i ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bignorm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.j
  %indvar = phi i32 [ %indvar.next, %bb.j ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02232.i.i = phi i64 [ %i.aw, %bb.j ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.as = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02232.i.i
  %i.at = getelementptr i8, ptr %i.as, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !44
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.j, label %.critedge.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.aw = add i64 %.02232.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.aw, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %cond.i.i, label %bignorm.exit, label %.lr.ph.i.i, !llvm.loop !15

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ax = icmp ugt i64 %.02232.i.i, 2
  br i1 %i.ax, label %bb.o, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.ay = trunc nuw i64 %.02232.i.i to i32        ; 3 uses
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
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !16

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.bd = add i32 %.035.i.i, -3
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !44
  %i.bh = zext i32 %i.bg to i64
  %i.bi = shl nuw i64 %i.bh, 32
  %i.bj = sext i32 %i.bc to i64
  %i.bk = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !44
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
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !44
  %i.bt = zext i32 %i.bs to i64
  %i.bu = or disjoint i64 %i.bp, %i.bt            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.ay
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !313

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
  call void @rb_big_resize(i64 noundef %i.ab, i64 noundef %.02232.i.i)
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48   ; 5 uses
  %i.c = and i64 %i.b, 16384
  %.not.i = icmp eq i64 %i.c, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !49
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.b, 15
  %i.g = and i64 %i.f, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.g, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.h = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48   ; 5 uses
  %i.j = and i64 %i.i, 16384
  %.not.i121 = icmp eq i64 %i.j, 0
  br i1 %.not.i121, label %bb.e, label %bb.d

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %i.k = lshr i64 %i.i, 15
  %i.l = and i64 %i.k, 511
  %i.m = getelementptr i8, ptr %i.h, i64 16
  br label %BIGNUM_DIGITS.exit

bb.e:                                             ; preds = %BIGNUM_LEN.exit
  %i.n = getelementptr i8, ptr %i.h, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !49
  %i.p = getelementptr i8, ptr %i.h, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.d, %bb.e
  %.0.i122164 = phi i64 [ %i.l, %bb.d ], [ %i.o, %bb.e ] ; 4 uses
  %.0.i125 = phi ptr [ %i.m, %bb.d ], [ %i.q, %bb.e ] ; 5 uses
  %i.r = icmp sgt i64 %.0.i122164, 0
  br i1 %i.r, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %BIGNUM_DIGITS.exit, %bb.f
  %.0106172 = phi i64 [ %i.w, %bb.f ], [ %.0.i122164, %BIGNUM_DIGITS.exit ] ; 4 uses
  %i.s = getelementptr [4 x i8], ptr %.0.i125, i64 %.0106172
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !44
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %.lr.ph
  %i.w = add nsw i64 %.0106172, -1
  %i.x = icmp sgt i64 %.0106172, 1
  br i1 %i.x, label %.lr.ph, label %.critedge.thread187, !llvm.loop !314

.critedge:                                        ; preds = %BIGNUM_DIGITS.exit
  %i.y = icmp eq i64 %.0.i122164, 0
  br i1 %i.y, label %.critedge.thread187, label %.critedge.thread

.critedge.thread187:                              ; preds = %bb.f, %.critedge
  tail call void @rb_num_zerodiv() #27
  unreachable

.critedge.thread:                                 ; preds = %.lr.ph, %.critedge
  %.0106171 = phi i64 [ %.0.i122164, %.critedge ], [ %.0106172, %.lr.ph ] ; 10 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.thread
  %i.z = getelementptr i8, ptr %i.a, i64 16
  br label %BIGNUM_DIGITS.exit128

bb.h:                                             ; preds = %.critedge.thread
  %i.aa = getelementptr i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit128

BIGNUM_DIGITS.exit128:                            ; preds = %bb.g, %bb.h
  %.0.i127 = phi ptr [ %i.z, %bb.g ], [ %i.ab, %bb.h ] ; 13 uses
  %.0.i12711 = ptrtoaddr ptr %.0.i127 to i64
  %i.ac = icmp sgt i64 %.0.i, 0
  br i1 %i.ac, label %.lr.ph174, label %.critedge2

.lr.ph174:                                        ; preds = %BIGNUM_DIGITS.exit128, %bb.i
  %.0107173 = phi i64 [ %i.ah, %bb.i ], [ %.0.i, %BIGNUM_DIGITS.exit128 ] ; 4 uses
  %i.ad = getelementptr [4 x i8], ptr %.0.i127, i64 %.0107173
  %i.ae = getelementptr i8, ptr %i.ad, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !44
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %.lr.ph174
  %i.ah = add nsw i64 %.0107173, -1
  %i.ai = icmp sgt i64 %.0107173, 1
  br i1 %i.ai, label %.lr.ph174, label %.critedge2, !llvm.loop !315

.critedge2:                                       ; preds = %.lr.ph174, %bb.i, %BIGNUM_DIGITS.exit128
  %.0107.lcssa = phi i64 [ %.0.i, %BIGNUM_DIGITS.exit128 ], [ 0, %bb.i ], [ %.0107173, %.lr.ph174 ] ; 23 uses
  %i.aj = icmp slt i64 %.0107.lcssa, %.0106171
  br i1 %i.aj, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge2
  %i.ak = icmp eq i64 %.0107.lcssa, %.0106171
  br i1 %i.ak, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr [4 x i8], ptr %.0.i127, i64 %.0106171
  %i.am = getelementptr i8, ptr %i.al, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !44
  %i.ao = getelementptr [4 x i8], ptr %.0.i125, i64 %.0106171
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !44
  %i.ar = icmp ult i32 %i.an, %i.aq
  br i1 %i.ar, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k, %.critedge2
  %.not119 = icmp eq ptr %2, null
  br i1 %.not119, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.at = tail call fastcc i64 @bignew_1(i64 noundef %i.as, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr               ; 5 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  %i.aw = and i64 %i.av, 16384
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr i8, ptr %i.au, i64 16
  store i64 0, ptr %i.ax, align 8
  %i.ay = and i64 %i.av, -16744449
  %i.az = or disjoint i64 %i.ay, 32768
  store i64 %i.az, ptr %i.au, align 8, !tbaa !48
  br label %rb_int2big.exit

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr i8, ptr %i.au, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !49
  store i64 0, ptr %i.bb, align 4
  %i.bc = getelementptr i8, ptr %i.au, i64 16
  store i64 1, ptr %i.bc, align 8, !tbaa !49
  br label %rb_int2big.exit

rb_int2big.exit:                                  ; preds = %bb.n, %bb.o
  store volatile i64 %i.at, ptr %2, align 8, !tbaa !46
  br label %bb.p

bb.p:                                             ; preds = %rb_int2big.exit, %bb.l
  %.not120 = icmp eq ptr %3, null
  br i1 %.not120, label %bb.be, label %bb.q

bb.q:                                             ; preds = %bb.p
  store volatile i64 %0, ptr %3, align 8, !tbaa !46
  br label %bb.be

bb.r:                                             ; preds = %bb.k, %bb.j
  %i.bd = icmp eq i64 %.0106171, 1
  br i1 %i.bd, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.be = load i32, ptr %.0.i125, align 4, !tbaa !44 ; 4 uses
  %i.bf = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.bg = xor i64 %i.i, %i.b
  %i.bh = and i64 %i.bg, 8192
  %.not168 = icmp eq i64 %i.bh, 0
  %i.bi = zext i1 %.not168 to i32
  %i.bj = tail call fastcc i64 @bignew_1(i64 noundef %i.bf, i64 noundef %.0107.lcssa, i32 noundef %i.bi) ; 2 uses
  %i.bk = inttoptr i64 %i.bj to ptr               ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !48
  %i.bm = and i64 %i.bl, 16384
  %.not.i129 = icmp eq i64 %i.bm, 0
  br i1 %.not.i129, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr i8, ptr %i.bk, i64 16
  br label %BIGNUM_DIGITS.exit131

bb.u:                                             ; preds = %bb.s
  %i.bo = getelementptr i8, ptr %i.bk, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit131

BIGNUM_DIGITS.exit131:                            ; preds = %bb.t, %bb.u
  %.0.i130 = phi ptr [ %i.bn, %bb.t ], [ %i.bp, %bb.u ] ; 8 uses
  %i.bq = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.be)
  %i.br = icmp samesign ult i32 %i.bq, 2
  br i1 %i.br, label %.lr.ph.i.i.i, label %.lr.ph.i.i

.lr.ph.i.i.i:                                     ; preds = %BIGNUM_DIGITS.exit131
  %.0.i13012 = ptrtoaddr ptr %.0.i130 to i64
  %i.bs = load i32, ptr %.0.i127, align 4, !tbaa !44
  %i.bt = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.be, i1 false)
  %i.bu = sub nsw i32 31, %i.bt
  %i.bv = zext nneg i32 %i.bu to i64              ; 4 uses
  %min.iters.check = icmp ult i64 %.0107.lcssa, 4
  %i.bw = sub i64 %.0.i13012, %.0.i12711
  %diff.check = icmp ugt i64 %i.bw, -16
  %or.cond14 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond14, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %.0107.lcssa, -4               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.bv, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i64> [ <i64 poison, i64 poison, i64 poison, i64 0>, %vector.ph ], [ %i.cb, %vector.body ]
  %i.bx = xor i64 %index, -1
  %i.by = add i64 %.0107.lcssa, %i.bx             ; 2 uses
  %i.bz = getelementptr [4 x i8], ptr %.0.i127, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 -12
  %wide.load = load <4 x i32>, ptr %i.ca, align 4, !tbaa !44
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cb = zext <4 x i32> %reverse to <4 x i64>    ; 4 uses
  %i.cc = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.cb, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cd = shl nuw <4 x i64> %i.cc, splat (i64 32)
  %i.ce = or disjoint <4 x i64> %i.cd, %i.cb
  %i.cf = lshr <4 x i64> %i.ce, %broadcast.splat
  %i.cg = trunc <4 x i64> %i.cf to <4 x i32>
  %i.ch = getelementptr [4 x i8], ptr %.0.i130, i64 %i.by
  %i.ci = getelementptr i8, ptr %i.ch, i64 -12
  %reverse13 = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse13, ptr %i.ci, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %i.cb, i64 3
  %cmp.n = icmp eq i64 %.0107.lcssa, %n.vec
  br i1 %cmp.n, label %bigdivrem_single.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %.017.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.014.in16.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.neg = or disjoint i64 %.017.i.i.i.ph, 1
  %xtraiter.a = and i64 %.0107.lcssa, 1
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.014.i.i.i.prol = shl nuw i64 %.014.in16.i.i.i.ph, 32
  %i.ck = xor i64 %.017.i.i.i.ph, -1
  %i.cl = add i64 %.0107.lcssa, %i.ck             ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %.0.i127, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !44
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = or disjoint i64 %.014.i.i.i.prol, %i.co
  %i.cq = lshr i64 %i.cp, %i.bv
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = getelementptr [4 x i8], ptr %.0.i130, i64 %i.cl
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !44
  %i.ct = or disjoint i64 %.017.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.i.i.unr = phi i64 [ %.017.i.i.i.ph, %scalar.ph.preheader ], [ %i.ct, %scalar.ph.prol ]
  %.014.in16.i.i.i.unr = phi i64 [ %.014.in16.i.i.i.ph, %scalar.ph.preheader ], [ %i.co, %scalar.ph.prol ]
  %i.cu = icmp eq i64 %.0107.lcssa, %.neg
  br i1 %i.cu, label %bigdivrem_single.exit.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i.i.i = phi i64 [ %i.dm, %scalar.ph ], [ %.017.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.014.in16.i.i.i = phi i64 [ %i.dh, %scalar.ph ], [ %.014.in16.i.i.i.unr, %scalar.ph.prol.loopexit ]
  %.014.i.i.i = shl nuw i64 %.014.in16.i.i.i, 32
  %i.cv = xor i64 %.017.i.i.i, -1
  %i.cw = add i64 %.0107.lcssa, %i.cv             ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %.0.i127, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !44
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = or disjoint i64 %.014.i.i.i, %i.cz
  %i.db = lshr i64 %i.da, %i.bv
  %i.dc = trunc i64 %i.db to i32
  %i.dd = getelementptr [4 x i8], ptr %.0.i130, i64 %i.cw
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !44
  %.014.i.i.i.1 = shl nuw i64 %i.cz, 32
  %reass.sub = sub i64 %.0107.lcssa, %.017.i.i.i
  %i.de = add i64 %reass.sub, -2                  ; 2 uses
  %i.df = getelementptr [4 x i8], ptr %.0.i127, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !44
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = or disjoint i64 %.014.i.i.i.1, %i.dh
  %i.dj = lshr i64 %i.di, %i.bv
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = getelementptr [4 x i8], ptr %.0.i130, i64 %i.de
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !44
  %i.dm = add nuw i64 %.017.i.i.i, 2              ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.dm, %.0107.lcssa
  br i1 %exitcond.not.i.i.i.1, label %bigdivrem_single.exit.loopexit, label %scalar.ph, !llvm.loop !317

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit131
  %4 = zext i32 %i.be to i64                      ; 6 uses
  %xtraiter = and i64 %.0107.lcssa, 1
  %5 = icmp eq i64 %.0107.lcssa, 1
  br i1 %5, label %.epil.preheader, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.0107.lcssa, -2
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i.i.a
  %.030.i.i = phi i64 [ 0, %.lr.ph.i.i.a ], [ %i.dx, %bb.v ]
  %.030.i.i.a = phi i64 [ 0, %.lr.ph.i.i.a ], [ %17, %bb.v ] ; 3 uses
  %.02629.i.i = phi i64 [ 0, %.lr.ph.i.i.a ], [ %i.dy, %bb.v ]
  %6 = shl nuw i64 %.030.i.i, 32
  %7 = xor i64 %.030.i.i.a, -1
  %8 = add i64 %.0107.lcssa, %7                   ; 2 uses
  %9 = getelementptr [4 x i8], ptr %.0.i127, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !44
  %11 = zext i32 %10 to i64
  %12 = or disjoint i64 %6, %11                   ; 2 uses
  %13 = udiv i64 %12, %4
  %14 = trunc i64 %13 to i32
  %15 = getelementptr [4 x i8], ptr %.0.i130, i64 %8
  store i32 %14, ptr %15, align 4, !tbaa !44
  %16 = urem i64 %12, %4
  %i.dn = shl nuw i64 %16, 32
  %i.do = xor i64 %.030.i.i.a, -2
  %i.dp = add i64 %.0107.lcssa, %i.do             ; 2 uses
  %i.dq = getelementptr [4 x i8], ptr %.0.i127, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !44
  %i.ds = zext i32 %i.dr to i64
  %i.dt = or disjoint i64 %i.dn, %i.ds            ; 2 uses
  %i.du = udiv i64 %i.dt, %4
  %i.dv = trunc i64 %i.du to i32
  %i.dw = getelementptr [4 x i8], ptr %.0.i130, i64 %i.dp
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !44
  %i.dx = urem i64 %i.dt, %4                      ; 3 uses
  %17 = add nuw i64 %.030.i.i.a, 2                ; 2 uses
  %i.dy = add i64 %.02629.i.i, 2                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dy, %unroll_iter
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i.unr-lcssa, label %bb.v, !llvm.loop !11

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i
  %.030.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dx, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.02629.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %17, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod24 = trunc i64 %.0107.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %18 = shl nuw i64 %.030.i.i.epil.init, 32
  %19 = xor i64 %.02629.i.i.epil.init, -1
  %20 = add i64 %.0107.lcssa, %19                 ; 2 uses
  %21 = getelementptr [4 x i8], ptr %.0.i127, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !44
  %23 = zext i32 %22 to i64
  %24 = or disjoint i64 %18, %23                  ; 2 uses
  %25 = udiv i64 %24, %4
  %26 = trunc i64 %25 to i32
  %27 = getelementptr [4 x i8], ptr %.0.i130, i64 %20
  store i32 %26, ptr %27, align 4, !tbaa !44
  %28 = urem i64 %24, %4
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.epil.preheader
  %.lcssa15 = phi i64 [ %i.dx, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %28, %.epil.preheader ]
  %i.dz = trunc nuw i64 %.lcssa15 to i32
  br label %bigdivrem_single.exit

bigdivrem_single.exit.loopexit:                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ea = add i32 %i.be, -1
  %i.eb = and i32 %i.bs, %i.ea
  br label %bigdivrem_single.exit

bigdivrem_single.exit:                            ; preds = %bigdivrem_single.exit.loopexit, %._crit_edge.loopexit.i.i
  %.027.i.i = phi i32 [ %i.dz, %._crit_edge.loopexit.i.i ], [ %i.eb, %bigdivrem_single.exit.loopexit ] ; 2 uses
  %.not117 = icmp eq ptr %3, null
  br i1 %.not117, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bigdivrem_single.exit
  %i.ec = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.ed = tail call fastcc i64 @bignew_1(i64 noundef %i.ec, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.ee = inttoptr i64 %i.ed to ptr               ; 6 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !48 ; 2 uses
  %i.eg = and i64 %i.ef, 16384
  %.not.i.i133 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i133, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = getelementptr i8, ptr %i.ee, i64 16
  store i32 %.027.i.i, ptr %i.eh, align 8, !tbaa !44
  %i.ei = getelementptr i8, ptr %i.ee, i64 20
  store i32 0, ptr %i.ei, align 4, !tbaa !44
  %i.ej = and i64 %i.ef, -16744449
  %i.ek = or disjoint i64 %i.ej, 32768
  store i64 %i.ek, ptr %i.ee, align 8, !tbaa !48
  br label %rb_uint2big.exit

bb.y:                                             ; preds = %bb.w
  %i.el = getelementptr i8, ptr %i.ee, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !49 ; 2 uses
  store i32 %.027.i.i, ptr %i.em, align 4, !tbaa !44
  %i.en = getelementptr i8, ptr %i.em, i64 4
  store i32 0, ptr %i.en, align 4, !tbaa !44
  %i.eo = getelementptr i8, ptr %i.ee, i64 16
  store i64 1, ptr %i.eo, align 8, !tbaa !49
  br label %rb_uint2big.exit

rb_uint2big.exit:                                 ; preds = %bb.x, %bb.y
  store volatile i64 %i.ed, ptr %3, align 8, !tbaa !46
  %i.ep = load volatile i64, ptr %3, align 8, !tbaa !46
  %i.eq = load i64, ptr %i.a, align 8, !tbaa !48
  %i.er = and i64 %i.eq, 8192
  %i.es = inttoptr i64 %i.ep to ptr               ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !48
  %i.eu = and i64 %i.et, -8193
  %.sink.i = or disjoint i64 %i.eu, %i.er
  store i64 %.sink.i, ptr %i.es, align 8, !tbaa !48
  br label %bb.z

bb.z:                                             ; preds = %rb_uint2big.exit, %bigdivrem_single.exit
  %.not118 = icmp eq ptr %2, null
  br i1 %.not118, label %bb.be, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store volatile i64 %i.bj, ptr %2, align 8, !tbaa !46
  br label %bb.be

bb.ab:                                            ; preds = %bb.r
  %i.ev = icmp eq i64 %.0107.lcssa, 2
  %i.ew = icmp eq i64 %.0106171, 2
  %or.cond = and i1 %i.ew, %i.ev
  br i1 %or.cond, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.ex = load i64, ptr %.0.i127, align 4         ; 2 uses
  %i.ey = load i64, ptr %.0.i125, align 4         ; 2 uses
  %i.ez = urem i64 %i.ex, %i.ey
  %i.fa = udiv i64 %i.ex, %i.ey
  %.not115 = icmp eq ptr %2, null
  br i1 %.not115, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fb = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.fc = xor i64 %i.i, %i.b
  %i.fd = and i64 %i.fc, 8192
  %.not167 = icmp eq i64 %i.fd, 0
  %i.fe = zext i1 %.not167 to i32
  %i.ff = tail call fastcc i64 @bignew_1(i64 noundef %i.fb, i64 noundef 2, i32 noundef %i.fe) ; 2 uses
  %i.fg = inttoptr i64 %i.ff to ptr               ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !48
  %i.fi = and i64 %i.fh, 16384
  %.not.i136 = icmp eq i64 %i.fi, 0
  br i1 %.not.i136, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fj = getelementptr i8, ptr %i.fg, i64 16
  br label %BIGNUM_DIGITS.exit138

bb.af:                                            ; preds = %bb.ad
  %i.fk = getelementptr i8, ptr %i.fg, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit138

BIGNUM_DIGITS.exit138:                            ; preds = %bb.ae, %bb.af
  %.0.i137 = phi ptr [ %i.fj, %bb.ae ], [ %i.fl, %bb.af ]
  store i64 %i.fa, ptr %.0.i137, align 4
  store volatile i64 %i.ff, ptr %2, align 8, !tbaa !46
  br label %bb.ag

bb.ag:                                            ; preds = %BIGNUM_DIGITS.exit138, %bb.ac
  %.not116 = icmp eq ptr %3, null
  br i1 %.not116, label %bb.be, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fm = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.fn = load i64, ptr %i.a, align 8, !tbaa !48
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = lshr i32 %i.fo, 13
  %i.fq = and i32 %i.fp, 1
  %i.fr = tail call fastcc i64 @bignew_1(i64 noundef %i.fm, i64 noundef 2, i32 noundef %i.fq) ; 2 uses
  %i.fs = inttoptr i64 %i.fr to ptr               ; 3 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !48
  %i.fu = and i64 %i.ft, 16384
  %.not.i139 = icmp eq i64 %i.fu, 0
  br i1 %.not.i139, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fv = getelementptr i8, ptr %i.fs, i64 16
  br label %BIGNUM_DIGITS.exit141

bb.aj:                                            ; preds = %bb.ah
  %i.fw = getelementptr i8, ptr %i.fs, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit141

BIGNUM_DIGITS.exit141:                            ; preds = %bb.ai, %bb.aj
  %.0.i140 = phi ptr [ %i.fv, %bb.ai ], [ %i.fx, %bb.aj ]
  store i64 %i.ez, ptr %.0.i140, align 4
  store volatile i64 %i.fr, ptr %3, align 8, !tbaa !46
  br label %bb.be

bb.ak:                                            ; preds = %bb.ab
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %BIGNUM_DIGITS.exit144, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fy = add i64 %.0107.lcssa, 1                 ; 3 uses
  %i.fz = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.ga = xor i64 %i.i, %i.b
  %i.gb = and i64 %i.ga, 8192
  %.not166 = icmp eq i64 %i.gb, 0
  %i.gc = zext i1 %.not166 to i32
  %i.gd = tail call fastcc i64 @bignew_1(i64 noundef %i.fz, i64 noundef %i.fy, i32 noundef %i.gc) ; 3 uses
  %i.ge = inttoptr i64 %i.gd to ptr               ; 3 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !48
  %i.gg = and i64 %i.gf, 16384
  %.not.i142 = icmp eq i64 %i.gg, 0
  br i1 %.not.i142, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gh = getelementptr i8, ptr %i.ge, i64 16
  br label %BIGNUM_DIGITS.exit144

bb.an:                                            ; preds = %bb.al
  %i.gi = getelementptr i8, ptr %i.ge, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit144

BIGNUM_DIGITS.exit144:                            ; preds = %bb.an, %bb.am, %bb.ak
  %.0105 = phi i64 [ 4, %bb.ak ], [ %i.gd, %bb.am ], [ %i.gd, %bb.an ] ; 3 uses
  %.0103 = phi ptr [ null, %bb.ak ], [ %i.gh, %bb.am ], [ %i.gj, %bb.an ]
  %.0101 = phi i64 [ 0, %bb.ak ], [ %i.fy, %bb.am ], [ %i.fy, %bb.an ]
  %.not114 = icmp eq ptr %3, null                 ; 2 uses
  br i1 %.not114, label %BIGNUM_DIGITS.exit147, label %bb.ao

bb.ao:                                            ; preds = %BIGNUM_DIGITS.exit144
  %i.gk = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.gl = load i64, ptr %i.a, align 8, !tbaa !48
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = lshr i32 %i.gm, 13
  %i.go = and i32 %i.gn, 1
  %i.gp = tail call fastcc i64 @bignew_1(i64 noundef %i.gk, i64 noundef %.0106171, i32 noundef %i.go) ; 3 uses
  %i.gq = inttoptr i64 %i.gp to ptr               ; 3 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !48
  %i.gs = and i64 %i.gr, 16384
  %.not.i145 = icmp eq i64 %i.gs, 0
  br i1 %.not.i145, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gt = getelementptr i8, ptr %i.gq, i64 16
  br label %BIGNUM_DIGITS.exit147

bb.aq:                                            ; preds = %bb.ao
  %i.gu = getelementptr i8, ptr %i.gq, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit147

BIGNUM_DIGITS.exit147:                            ; preds = %bb.aq, %bb.ap, %BIGNUM_DIGITS.exit144
  %.0104 = phi i64 [ 4, %BIGNUM_DIGITS.exit144 ], [ %i.gp, %bb.ap ], [ %i.gp, %bb.aq ] ; 3 uses
  %.0102 = phi ptr [ null, %BIGNUM_DIGITS.exit144 ], [ %i.gt, %bb.ap ], [ %i.gv, %bb.aq ]
  %.0 = phi i64 [ 0, %BIGNUM_DIGITS.exit144 ], [ %.0106171, %bb.ap ], [ %.0106171, %bb.aq ]
  tail call fastcc void @bary_divmod_normal(ptr noundef %.0103, i64 noundef %.0101, ptr noundef %.0102, i64 noundef range(i64 2, 1) %.0, ptr noundef readonly %.0.i127, i64 noundef %.0107.lcssa, ptr noundef %.0.i125, i64 noundef %.0106171)
  br i1 %.not, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %BIGNUM_DIGITS.exit147
  %i.gw = inttoptr i64 %.0105 to ptr              ; 5 uses
end_hunk_0
begin_hunk_1_@bary_mul_karatsuba_branch:bb.a
bary_sparse_p.exit.thread81:                      ; preds = %bb.c, %bb.a
  %i.ce = icmp eq ptr %2, %4
  %i.cf = icmp eq i64 %3, %5
  %or.cond = and i1 %i.ce, %i.cf
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bary_sparse_p.exit.thread81
  tail call fastcc void @bary_sq_fast(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %bary_short_mul.exit78

bb.l:                                             ; preds = %bary_sparse_p.exit.thread81
  %i.cg = icmp eq i64 %3, 1
  %i.ch = icmp eq i64 %5, 1
  %or.cond.i51 = and i1 %i.cg, %i.ch
  br i1 %or.cond.i51, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ci = load i32, ptr %2, align 4, !tbaa !44
  %i.cj = load i32, ptr %4, align 4, !tbaa !44
  %i.ck = zext i32 %i.ci to i64
  %i.cl = zext i32 %i.cj to i64
  %i.cm = mul nuw i64 %i.cl, %i.ck
  store i64 %i.cm, ptr %0, align 4
  %.not9.i.i76 = icmp eq i64 %1, 2
  br i1 %.not9.i.i76, label %bary_short_mul.exit78, label %.lr.ph.preheader.i.i77

.lr.ph.preheader.i.i77:                           ; preds = %bb.m
  %i.cn = getelementptr i8, ptr %0, i64 8
  %i.co = shl i64 %1, 2
  %i.cp = add i64 %i.co, -8
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cn, i8 0, i64 %i.cp, i1 false), !tbaa !44
  br label %bary_short_mul.exit78

bb.n:                                             ; preds = %bb.l
  %.not17.i.i52 = icmp eq i64 %1, 0
  br i1 %.not17.i.i52, label %.preheader.i.i54, label %.lr.ph.preheader.i12.i53

.lr.ph.preheader.i12.i53:                         ; preds = %bb.n
  %i.cq = shl nuw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.cq, i1 false), !tbaa !44
  br label %.preheader.i.i54

.preheader.i.i54:                                 ; preds = %.lr.ph.preheader.i12.i53, %bb.n
  %.not22.i.i55 = icmp eq i64 %3, 0
  %.not43.i.i.i56 = icmp eq i64 %5, 0
  %or.cond.i.i57 = or i1 %.not22.i.i55, %.not43.i.i.i56
  br i1 %or.cond.i.i57, label %bary_mul_normal.exit.i75, label %.lr.ph21.split.i.i58.preheader

.lr.ph21.split.i.i58.preheader:                   ; preds = %.preheader.i.i54
  %xtraiter109 = and i64 %5, 1
  %i.cr = icmp eq i64 %5, 1
  %unroll_iter113 = and i64 %5, -2
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  %lcmp.mod112 = trunc i64 %5 to i1
  br label %.lr.ph21.split.i.i58

.lr.ph21.split.i.i58:                             ; preds = %.lr.ph21.split.i.i58.preheader, %bary_muladd_1xN.exit.i.i73
  %.01620.i.i59 = phi i64 [ %i.es, %bary_muladd_1xN.exit.i.i73 ], [ 0, %.lr.ph21.split.i.i58.preheader ] ; 4 uses
  %i.cs = getelementptr [4 x i8], ptr %0, i64 %.01620.i.i59 ; 4 uses
  %i.ct = sub i64 %1, %.01620.i.i59               ; 2 uses
  %i.cu = getelementptr [4 x i8], ptr %2, i64 %.01620.i.i59
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !44 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bary_muladd_1xN.exit.i.i73, label %.lr.ph.i.preheader.i.i60

.lr.ph.i.preheader.i.i60:                         ; preds = %.lr.ph21.split.i.i58
  %i.cx = zext i32 %i.cv to i64                   ; 3 uses
  br i1 %i.cr, label %.lr.ph.i.i.i61.epil.preheader, label %.lr.ph.i.i.i61

.preheader.i.i.i67.unr-lcssa:                     ; preds = %bb.r
  br i1 %lcmp.mod110.not, label %.preheader.i.i.i67, label %.lr.ph.i.i.i61.epil.preheader

.lr.ph.i.i.i61.epil.preheader:                    ; preds = %.preheader.i.i.i67.unr-lcssa, %.lr.ph.i.preheader.i.i60
  %.036.i.i.i62.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i60 ], [ %i.ei, %.preheader.i.i.i67.unr-lcssa ] ; 2 uses
  %.03035.i.i.i63.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i60 ], [ %.131.i.i.i65.1, %.preheader.i.i.i67.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.cy = getelementptr [4 x i8], ptr %4, i64 %.036.i.i.i62.epil.init
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !44
  %i.da = zext i32 %i.cz to i64
  %i.db = mul nuw i64 %i.da, %i.cx
  %i.dc = add nuw i64 %i.db, %.03035.i.i.i63.epil.init ; 2 uses
  %.not.i.i.i64.epil = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i64.epil, label %.preheader.i.i.i67, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i61.epil.preheader
  %i.dd = getelementptr [4 x i8], ptr %i.cs, i64 %.036.i.i.i62.epil.init ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !44
  %i.df = zext i32 %i.de to i64
  %i.dg = add nuw i64 %i.dc, %i.df                ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.dd, align 4, !tbaa !44
  %i.di = lshr i64 %i.dg, 32
  br label %.preheader.i.i.i67

.preheader.i.i.i67:                               ; preds = %.lr.ph.i.i.i61.epil.preheader, %bb.o, %.preheader.i.i.i67.unr-lcssa
  %.131.i.i.i65.lcssa = phi i64 [ %.131.i.i.i65.1, %.preheader.i.i.i67.unr-lcssa ], [ %i.di, %bb.o ], [ 0, %.lr.ph.i.i.i61.epil.preheader ] ; 2 uses
  %i.dj = icmp uge i64 %5, %i.ct
  %i.dk = icmp eq i64 %.131.i.i.i65.lcssa, 0
  %or.cond38.i.i.i68 = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond38.i.i.i68, label %bary_muladd_1xN.exit.i.i73, label %.lr.ph41.i.i.i69

.lr.ph.i.i.i61:                                   ; preds = %.lr.ph.i.preheader.i.i60, %bb.r
  %.036.i.i.i62 = phi i64 [ %i.ei, %bb.r ], [ 0, %.lr.ph.i.preheader.i.i60 ] ; 4 uses
  %.03035.i.i.i63 = phi i64 [ %.131.i.i.i65.1, %bb.r ], [ 0, %.lr.ph.i.preheader.i.i60 ]
  %niter114 = phi i64 [ %niter114.next.1, %bb.r ], [ 0, %.lr.ph.i.preheader.i.i60 ]
  %i.dl = getelementptr [4 x i8], ptr %4, i64 %.036.i.i.i62
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !44
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul nuw i64 %i.dn, %i.cx
  %i.dp = add nuw i64 %i.do, %.03035.i.i.i63      ; 2 uses
  %.not.i.i.i64 = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i64, label %.lr.ph.i.i.i61.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i61
  %i.dq = getelementptr [4 x i8], ptr %i.cs, i64 %.036.i.i.i62 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !44
  %i.ds = zext i32 %i.dr to i64
  %i.dt = add nuw i64 %i.dp, %i.ds                ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  store i32 %i.du, ptr %i.dq, align 4, !tbaa !44
  %i.dv = lshr i64 %i.dt, 32
  br label %.lr.ph.i.i.i61.1

.lr.ph.i.i.i61.1:                                 ; preds = %bb.p, %.lr.ph.i.i.i61
  %.131.i.i.i65 = phi i64 [ %i.dv, %bb.p ], [ 0, %.lr.ph.i.i.i61 ]
  %i.dw = or disjoint i64 %.036.i.i.i62, 1        ; 2 uses
  %i.dx = getelementptr [4 x i8], ptr %4, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !44
  %i.dz = zext i32 %i.dy to i64
  %i.ea = mul nuw i64 %i.dz, %i.cx
  %i.eb = add nuw i64 %i.ea, %.131.i.i.i65        ; 2 uses
  %.not.i.i.i64.1 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i64.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i61.1
  %i.ec = getelementptr [4 x i8], ptr %i.cs, i64 %i.dw ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !44
  %i.ee = zext i32 %i.ed to i64
  %i.ef = add nuw i64 %i.eb, %i.ee                ; 2 uses
  %i.eg = trunc i64 %i.ef to i32
  store i32 %i.eg, ptr %i.ec, align 4, !tbaa !44
  %i.eh = lshr i64 %i.ef, 32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.i.i61.1
  %.131.i.i.i65.1 = phi i64 [ %i.eh, %bb.q ], [ 0, %.lr.ph.i.i.i61.1 ] ; 3 uses
  %i.ei = add nuw i64 %.036.i.i.i62, 2            ; 2 uses
  %niter114.next.1 = add nuw i64 %niter114, 2     ; 2 uses
  %niter114.ncmp.1 = icmp eq i64 %niter114.next.1, %unroll_iter113
  br i1 %niter114.ncmp.1, label %.preheader.i.i.i67.unr-lcssa, label %.lr.ph.i.i.i61, !llvm.loop !0

.lr.ph41.i.i.i69:                                 ; preds = %.preheader.i.i.i67, %.lr.ph41.i.i.i69
  %.140.i.i.i70 = phi i64 [ %i.ep, %.lr.ph41.i.i.i69 ], [ %5, %.preheader.i.i.i67 ] ; 2 uses
  %.239.i.i.i71 = phi i64 [ %i.eo, %.lr.ph41.i.i.i69 ], [ %.131.i.i.i65.lcssa, %.preheader.i.i.i67 ]
  %i.ej = getelementptr [4 x i8], ptr %i.cs, i64 %.140.i.i.i70 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !44
  %i.el = zext i32 %i.ek to i64
  %i.em = add nuw nsw i64 %.239.i.i.i71, %i.el    ; 2 uses
  %i.en = trunc i64 %i.em to i32
  store i32 %i.en, ptr %i.ej, align 4, !tbaa !44
  %i.eo = lshr i64 %i.em, 32                      ; 2 uses
  %i.ep = add nuw i64 %.140.i.i.i70, 1            ; 2 uses
  %i.eq = icmp uge i64 %i.ep, %i.ct
  %i.er = icmp eq i64 %i.eo, 0
  %or.cond.i.i.i72 = select i1 %i.eq, i1 true, i1 %i.er
  br i1 %or.cond.i.i.i72, label %bary_muladd_1xN.exit.i.i73, label %.lr.ph41.i.i.i69, !llvm.loop !1

bary_muladd_1xN.exit.i.i73:                       ; preds = %.lr.ph41.i.i.i69, %.preheader.i.i.i67, %.lr.ph21.split.i.i58
  %i.es = add nuw i64 %.01620.i.i59, 1            ; 2 uses
  %exitcond.not.i.i74 = icmp eq i64 %i.es, %3
  br i1 %exitcond.not.i.i74, label %bary_mul_normal.exit.i75, label %.lr.ph21.split.i.i58, !llvm.loop !2

bary_mul_normal.exit.i75:                         ; preds = %bary_muladd_1xN.exit.i.i73, %.preheader.i.i54
  tail call void @rb_thread_check_ints() #23
  br label %bary_short_mul.exit78

bary_short_mul.exit78:                            ; preds = %bary_mul_normal.exit.i75, %.lr.ph.preheader.i.i77, %bb.m, %bb.k, %bb.j, %bb.i, %bary_short_mul.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bigdivrem_restoring(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.big_div_struct, align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]     ; 8 uses
  %i.a = getelementptr [4 x i8], ptr %2, i64 %.0
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44   ; 5 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = add i64 %.0, 1                           ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !421

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %i.c, %3
  br i1 %i.d, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr [4 x i8], ptr %0, i64 %3   ; 7 uses
  %i.f = getelementptr [4 x i8], ptr %0, i64 %.0  ; 9 uses
  %i.g = sub i64 %1, %3                           ; 14 uses
  %i.h = getelementptr [4 x i8], ptr %0, i64 %1
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !44   ; 3 uses
  %i.k = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.l = icmp samesign ult i32 %i.k, 2
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = add i32 %i.b, -1
  %i.n = load i32, ptr %i.f, align 4, !tbaa !44
  %i.o = and i32 %i.n, %i.m                       ; 4 uses
  %.not.i.i = icmp eq i64 %1, %3
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
  %wide.load = load <4 x i32>, ptr %i.z, align 4, !tbaa !44
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
  store <4 x i32> %reverse40, ptr %i.ah, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !422

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
  %xtraiter.a = and i64 %i.aj, 1
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.014.i.i.prol = shl nuw i64 %.014.in16.i.i.ph, 32
  %i.am = xor i64 %.017.i.i.ph, -1
  %i.an = add i64 %i.g, %i.am                     ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.f, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !44
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = or disjoint i64 %.014.i.i.prol, %i.aq
  %i.as = lshr i64 %i.ar, %i.s
  %i.at = trunc i64 %i.as to i32
  %i.au = getelementptr [4 x i8], ptr %i.e, i64 %i.an
  store i32 %i.at, ptr %i.au, align 4, !tbaa !44
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
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !44
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = or disjoint i64 %.014.i.i, %i.bb
  %i.bd = lshr i64 %i.bc, %i.s
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr [4 x i8], ptr %i.e, i64 %i.ay
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !44
  %.014.i.i.1 = shl nuw i64 %i.bb, 32
  %reass.sub = sub i64 %i.g, %.017.i.i
  %i.bg = add i64 %reass.sub, -2                  ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.f, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !44
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = or disjoint i64 %.014.i.i.1, %i.bj
  %i.bl = lshr i64 %i.bk, %i.s
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr [4 x i8], ptr %i.e, i64 %i.bg
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !44
  %i.bo = add nuw i64 %.017.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bo, %i.g
  br i1 %exitcond.not.i.i.1, label %bigdivrem_single1.exit, label %scalar.ph, !llvm.loop !423

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i64 %1, %3
  br i1 %.not.i, label %bigdivrem_single1.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.bp = zext i32 %i.j to i64                    ; 2 uses
  %i.bq = zext i32 %i.b to i64                    ; 6 uses
  %.neg = add i64 %3, 1
  %xtraiter = and i64 %i.g, 1
  %5 = icmp eq i64 %1, %.neg
  br i1 %5, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.g, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %.030.i = phi i64 [ %i.bp, %.lr.ph.i.new ], [ %i.cb, %bb.g ]
  %.030.i.a = phi i64 [ 0, %.lr.ph.i.new ], [ %17, %bb.g ] ; 3 uses
  %.02629.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.cc, %bb.g ]
  %6 = shl nuw i64 %.030.i, 32
  %7 = xor i64 %.030.i.a, -1
  %8 = add i64 %i.g, %7                           ; 2 uses
  %9 = getelementptr [4 x i8], ptr %i.f, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !44
  %11 = zext i32 %10 to i64
  %12 = or disjoint i64 %6, %11                   ; 2 uses
  %13 = udiv i64 %12, %i.bq
  %14 = trunc i64 %13 to i32
  %15 = getelementptr [4 x i8], ptr %i.e, i64 %8
  store i32 %14, ptr %15, align 4, !tbaa !44
  %16 = urem i64 %12, %i.bq
  %i.br = shl nuw i64 %16, 32
  %i.bs = xor i64 %.030.i.a, -2
  %i.bt = add i64 %i.g, %i.bs                     ; 2 uses
  %i.bu = getelementptr [4 x i8], ptr %i.f, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !44
  %i.bw = zext i32 %i.bv to i64
  %i.bx = or disjoint i64 %i.br, %i.bw            ; 2 uses
  %i.by = udiv i64 %i.bx, %i.bq
  %i.bz = trunc i64 %i.by to i32
  %i.ca = getelementptr [4 x i8], ptr %i.e, i64 %i.bt
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !44
  %i.cb = urem i64 %i.bx, %i.bq                   ; 3 uses
  %17 = add nuw i64 %.030.i.a, 2                  ; 2 uses
  %i.cc = add i64 %.02629.i, 2                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cc, %unroll_iter
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.g, !llvm.loop !11

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %.030.i.epil.init = phi i64 [ %i.bp, %.lr.ph.i ], [ %i.cb, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02629.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %17, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod45 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %18 = shl nuw i64 %.030.i.epil.init, 32
  %19 = xor i64 %.02629.i.epil.init, -1
  %20 = add i64 %i.g, %19                         ; 2 uses
  %21 = getelementptr [4 x i8], ptr %i.f, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !44
  %23 = zext i32 %22 to i64
  %24 = or disjoint i64 %18, %23                  ; 2 uses
  %25 = udiv i64 %24, %i.bq
  %26 = trunc i64 %25 to i32
  %27 = getelementptr [4 x i8], ptr %i.e, i64 %20
  store i32 %26, ptr %27, align 4, !tbaa !44
  %28 = urem i64 %24, %i.bq
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.epil.preheader
  %.lcssa41 = phi i64 [ %i.cb, %._crit_edge.loopexit.i.unr-lcssa ], [ %28, %.epil.preheader ]
  %i.cd = trunc nuw i64 %.lcssa41 to i32
  br label %bigdivrem_single1.exit

bigdivrem_single1.exit:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.e, %bb.f, %._crit_edge.loopexit.i
  %.027.i = phi i32 [ %i.cd, %._crit_edge.loopexit.i ], [ %i.o, %bb.e ], [ %i.j, %bb.f ], [ %i.o, %middle.block ], [ %i.o, %scalar.ph ], [ %i.o, %scalar.ph.prol.loopexit ]
  store i32 %.027.i, ptr %i.f, align 4, !tbaa !44
  br label %.loopexit

bb.h:                                             ; preds = %bb.c
  %i.ce = getelementptr [4 x i8], ptr %2, i64 %.0
  %i.cf = sub i64 %3, %.0                         ; 2 uses
  store i64 %i.cf, ptr %4, align 8, !tbaa !80
  %i.cg = getelementptr [4 x i8], ptr %0, i64 %.0
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !81
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ce, ptr %i.ci, align 8, !tbaa !82
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store volatile i64 0, ptr %i.cj, align 8, !tbaa !83
  %i.ck = sub i64 %1, %.0                         ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !84
  %i.cm = icmp ugt i64 %i.ck, 10000
  %i.cn = icmp ugt i64 %i.cf, 10000
  %or.cond = or i1 %i.cm, %i.cn
  br i1 %or.cond, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h, %.preheader
  store volatile i64 0, ptr %i.cj, align 8, !tbaa !83
  %i.co = call ptr @rb_nogvl(ptr noundef nonnull @bigdivrem1, ptr noundef nonnull %4, ptr noundef nonnull @rb_big_stop, ptr noundef nonnull %4, i32 noundef 6) #23 ; 0 uses
  %i.cp = load volatile i64, ptr %i.cj, align 8, !tbaa !83
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
  %i.a = load i64, ptr %0, align 8, !tbaa !80
  %.fr = freeze i64 %i.a                          ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82   ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81   ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %i.e, i64 %.fr
  %i.j = getelementptr i8, ptr %i.i, i64 -4       ; 2 uses
  %i.k = xor i64 %.fr, -1                         ; 2 uses
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
  %.046.us = phi i64 [ %i.ar, %.loopexit.us ], [ %i.c, %bb.a ] ; 3 uses
  %i.m = load volatile i64, ptr %i.h, align 8, !tbaa !83
  %.not.us = icmp eq i64 %i.m, 0
  br i1 %.not.us, label %bb.b, label %.split64.us

bb.b:                                             ; preds = %.split.us
  %i.n = getelementptr [4 x i8], ptr %i.g, i64 %.046.us ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -4       ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44   ; 3 uses
  %i.q = load i32, ptr %i.j, align 4, !tbaa !44   ; 2 uses
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %.thread.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = zext i32 %i.p to i64
  %i.t = shl nuw i64 %i.s, 32
  %i.u = getelementptr i8, ptr %i.n, i64 -8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !44
  %i.w = zext i32 %i.v to i64
  %i.x = or disjoint i64 %i.t, %i.w
  %i.y = zext i32 %i.q to i64
  %i.z = udiv i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %.not51.us = icmp eq i32 %i.aa, 0
  br i1 %.not51.us, label %.loopexit.us, label %.thread.us

.thread.us:                                       ; preds = %bb.c, %bb.b
  %.055.us = phi i32 [ %i.aa, %bb.c ], [ -1, %bb.b ] ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %i.n, i64 %i.k ; 2 uses
  %i.ac = zext i32 %.055.us to i64
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !44
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nuw i64 %i.ae, %i.ac                ; 2 uses
  %i.ag = and i64 %i.af, 4294967295               ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !44
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sub nsw i64 %i.ai, %i.ag                ; 2 uses
  %.not.i.us = icmp eq i64 %i.ag, 0
  br i1 %.not.i.us, label %bigdivrem_mulsub.exit.us, label %bb.d

bb.d:                                             ; preds = %.thread.us
  %i.ak = trunc i64 %i.aj to i32
  store i32 %i.ak, ptr %i.ab, align 4, !tbaa !44
  %.pre = load i32, ptr %i.o, align 4, !tbaa !44
  br label %bigdivrem_mulsub.exit.us

bigdivrem_mulsub.exit.us:                         ; preds = %bb.d, %.thread.us
  %i.al = phi i32 [ %.pre, %bb.d ], [ %i.p, %.thread.us ]
  %i.am = ashr i64 %i.aj, 32
  %i.an = lshr i64 %i.af, 32
  %i.ao = sub nsw i64 %i.am, %i.an
  %i.ap = zext i32 %i.al to i64
  %i.aq = sub nsw i64 0, %i.ap
  %.not5261.us = icmp eq i64 %i.ao, %i.aq
  br i1 %.not5261.us, label %.loopexit.us, label %bary_add.exit.us

.loopexit.us:                                     ; preds = %bigdivrem_mulsub.exit.us, %bb.c
  %.2.us = phi i32 [ 0, %bb.c ], [ %.055.us, %bigdivrem_mulsub.exit.us ]
  %i.ar = add i64 %.046.us, -1                    ; 3 uses
  %i.as = getelementptr [4 x i8], ptr %i.g, i64 %i.ar
  store i32 %.2.us, ptr %i.as, align 4, !tbaa !44
  %.not85 = icmp eq i64 %i.ar, 0
  br i1 %.not85, label %.loopexit57, label %.split.us, !llvm.loop !424

.split:                                           ; preds = %.split.preheader, %.loopexit
  %.046 = phi i64 [ %i.dk, %.loopexit ], [ %i.c, %.split.preheader ] ; 3 uses
  %i.at = load volatile i64, ptr %i.h, align 8, !tbaa !83
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %bb.e, label %.split64.us

.split64.us:                                      ; preds = %.split, %.split.us
  %.us-phi65 = phi i64 [ %.046.us, %.split.us ], [ %.046, %.split ]
  store i64 %.us-phi65, ptr %i.b, align 8, !tbaa !84
  br label %.loopexit57

bb.e:                                             ; preds = %.split
  %i.au = getelementptr [4 x i8], ptr %i.g, i64 %.046 ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -4     ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !44 ; 2 uses
  %i.ax = load i32, ptr %i.j, align 4, !tbaa !44  ; 2 uses
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br i1 %i.ay, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = zext i32 %i.aw to i64
  %i.ba = shl nuw i64 %i.az, 32
  %i.bb = getelementptr i8, ptr %i.au, i64 -8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !44
  %i.bd = zext i32 %i.bc to i64
  %i.be = or disjoint i64 %i.ba, %i.bd
  %i.bf = zext i32 %i.ax to i64
  %i.bg = udiv i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i32                  ; 2 uses
  %.not51 = icmp eq i32 %i.bh, 0
  br i1 %.not51, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %.055 = phi i32 [ %i.bh, %bb.f ], [ -1, %bb.e ] ; 3 uses
  %i.bi = getelementptr [4 x i8], ptr %i.au, i64 %i.k ; 4 uses
  %i.bj = zext i32 %.055 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.thread
  %.023.i = phi i64 [ 0, %.thread ], [ %i.by, %bb.i ] ; 3 uses
  %.022.i = phi i64 [ 0, %.thread ], [ %i.bx, %bb.i ]
  %.0.i = phi i64 [ 0, %.thread ], [ %i.bw, %bb.i ] ; 2 uses
  %i.bk = getelementptr [4 x i8], ptr %i.e, i64 %.023.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !44
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul nuw i64 %i.bm, %i.bj
  %i.bo = add nuw i64 %i.bn, %.022.i              ; 2 uses
  %i.bp = and i64 %i.bo, 4294967295               ; 2 uses
  %i.bq = sub nsw i64 %.0.i, %i.bp
  %i.br = getelementptr [4 x i8], ptr %i.bi, i64 %.023.i ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !44
  %i.bt = zext i32 %i.bs to i64
  %i.bu = add nsw i64 %i.bq, %i.bt                ; 2 uses
  %.not.i = icmp eq i64 %.0.i, %i.bp
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = trunc i64 %i.bu to i32
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bw = ashr i64 %i.bu, 32                      ; 2 uses
  %i.bx = lshr i64 %i.bo, 32                      ; 2 uses
end_hunk_1
