Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 154
loop-unroll.NumUnrolled: 182
begin_hunk_0_@bary_mul_precheck:bb.a

bb.f:                                             ; preds = %.preheader152.preheader, %.loopexit
  %.0128 = phi ptr [ %i.ac, %.preheader152.preheader ], [ %i.a, %.loopexit ] ; 16 uses
  %.0127 = phi i64 [ %i.ad, %.preheader152.preheader ], [ %i.b, %.loopexit ] ; 13 uses
  %i.ae = icmp ugt i64 %.2122, %.2115
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2126 = phi ptr [ %.1118, %bb.g ], [ %.1125, %bb.f ] ; 4 uses
  %.3123 = phi i64 [ %.2115, %bb.g ], [ %.2122, %bb.f ] ; 3 uses
  %.2119 = phi ptr [ %.1125, %bb.g ], [ %.1118, %bb.f ] ; 9 uses
  %.3116 = phi i64 [ %.2122, %bb.g ], [ %.2115, %bb.f ] ; 22 uses
  %i.af = icmp ult i64 %.3123, 2
  br i1 %i.af, label %bb.i, label %bb.y

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp eq i64 %.3123, 0
  br i1 %i.ag, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %.not145180 = icmp eq i64 %.0127, 0
  br i1 %.not145180, label %bary_mul_normal.exit, label %.lr.ph183.preheader

.lr.ph183.preheader:                              ; preds = %.preheader
  %i.ah = shl nuw i64 %.0127, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0128, i8 0, i64 %i.ah, i1 false), !tbaa !7
  br label %bary_mul_normal.exit

bb.j:                                             ; preds = %bb.i
  %i.ai = load i32, ptr %.2126, align 4, !tbaa !7 ; 4 uses
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp ugt i64 %.3116, 4611686018427387903
  br i1 %i.ak, label %bb.l, label %rbimpl_size_mul_or_raise.exit, !prof !32

bb.l:                                             ; preds = %bb.k
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %.3116) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.k
  %.not.i = icmp eq i64 %.3116, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.m

bb.m:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.al = shl nuw i64 %.3116, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0128, ptr noundef nonnull readonly align 1 %.2119, i64 noundef range(i64 1, 0) %i.al, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.m
  %.not144176 = icmp eq i64 %.0127, %.3116
  br i1 %.not144176, label %bary_mul_normal.exit, label %.lr.ph179.preheader

.lr.ph179.preheader:                              ; preds = %ruby_nonempty_memcpy.exit
  %i.am = getelementptr [4 x i8], ptr %.0128, i64 %.3116
  %i.an = sub i64 %.0127, %.3116
  %i.ao = shl i64 %i.an, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 0, i64 %i.ao, i1 false), !tbaa !7
  br label %bary_mul_normal.exit

bb.n:                                             ; preds = %bb.j
  %i.ap = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ai)
  %i.aq = icmp samesign ult i32 %i.ap, 2
  br i1 %i.aq, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not.i146 = icmp eq i64 %.3116, 0
  br i1 %.not.i146, label %bary_small_lshift.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.ar = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ai, i1 false)
  %i.as = sub nsw i32 31, %i.ar
  %i.at = zext nneg i32 %i.as to i64              ; 5 uses
  %xtraiter237 = and i64 %.3116, 3                ; 3 uses
  %i.au = icmp ult i64 %.3116, 4
  br i1 %i.au, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter241 = and i64 %.3116, -4
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.new
  %.015.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ca, %bb.p ]
  %.01013.i = phi ptr [ %.0128, %.lr.ph.i.new ], [ %i.bz, %bb.p ] ; 5 uses
  %.01112.i = phi ptr [ %.2119, %.lr.ph.i.new ], [ %i.bt, %bb.p ] ; 5 uses
  %niter242 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter242.next.3, %bb.p ]
  %i.av = getelementptr i8, ptr %.01112.i, i64 4
  %i.aw = load i32, ptr %.01112.i, align 4, !tbaa !7
  %i.ax = zext i32 %i.aw to i64
  %i.ay = shl i64 %i.ax, %i.at                    ; 2 uses
  %i.az = or i64 %i.ay, %.015.i
  %i.ba = trunc i64 %i.az to i32
  %i.bb = getelementptr i8, ptr %.01013.i, i64 4
  store i32 %i.ba, ptr %.01013.i, align 4, !tbaa !7
  %i.bc = lshr i64 %i.ay, 32
  %i.bd = getelementptr i8, ptr %.01112.i, i64 8
  %i.be = load i32, ptr %i.av, align 4, !tbaa !7
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl i64 %i.bf, %i.at                    ; 2 uses
  %i.bh = or i64 %i.bg, %i.bc
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr i8, ptr %.01013.i, i64 8
  store i32 %i.bi, ptr %i.bb, align 4, !tbaa !7
  %i.bk = lshr i64 %i.bg, 32
  %i.bl = getelementptr i8, ptr %.01112.i, i64 12
  %i.bm = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl i64 %i.bn, %i.at                    ; 2 uses
  %i.bp = or i64 %i.bo, %i.bk
  %i.bq = trunc i64 %i.bp to i32
  %i.br = getelementptr i8, ptr %.01013.i, i64 12
  store i32 %i.bq, ptr %i.bj, align 4, !tbaa !7
  %i.bs = lshr i64 %i.bo, 32
  %i.bt = getelementptr i8, ptr %.01112.i, i64 16 ; 2 uses
  %i.bu = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl i64 %i.bv, %i.at                    ; 2 uses
  %i.bx = or i64 %i.bw, %i.bs
  %i.by = trunc i64 %i.bx to i32
  %i.bz = getelementptr i8, ptr %.01013.i, i64 16 ; 2 uses
  store i32 %i.by, ptr %i.br, align 4, !tbaa !7
  %i.ca = lshr i64 %i.bw, 32                      ; 3 uses
  %niter242.next.3 = add i64 %niter242, 4         ; 2 uses
  %niter242.ncmp.3 = icmp eq i64 %niter242.next.3, %unroll_iter241
  br i1 %niter242.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.p, !llvm.loop !88

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.p
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br i1 %lcmp.mod238.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %.015.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ca, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01013.i.epil.init = phi ptr [ %.0128, %.lr.ph.i ], [ %i.bz, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01112.i.epil.init = phi ptr [ %.2119, %.lr.ph.i ], [ %i.bt, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod240 = icmp ne i64 %xtraiter237, 0
  tail call void @llvm.assume(i1 %lcmp.mod240)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %.015.i.epil = phi i64 [ %.015.i.epil.init, %.epil.preheader ], [ %i.ci, %bb.q ]
  %.01013.i.epil = phi ptr [ %.01013.i.epil.init, %.epil.preheader ], [ %i.ch, %bb.q ] ; 2 uses
  %.01112.i.epil = phi ptr [ %.01112.i.epil.init, %.epil.preheader ], [ %i.cb, %bb.q ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.cb = getelementptr i8, ptr %.01112.i.epil, i64 4
  %i.cc = load i32, ptr %.01112.i.epil, align 4, !tbaa !7
  %i.cd = zext i32 %i.cc to i64
  %i.ce = shl i64 %i.cd, %i.at                    ; 2 uses
  %i.cf = or i64 %i.ce, %.015.i.epil
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = getelementptr i8, ptr %.01013.i.epil, i64 4
  store i32 %i.cg, ptr %.01013.i.epil, align 4, !tbaa !7
  %i.ci = lshr i64 %i.ce, 32                      ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter237
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.q, !llvm.loop !414

._crit_edge.loopexit.i:                           ; preds = %bb.q, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi i64 [ %i.ca, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ci, %bb.q ]
  %i.cj = trunc nuw i64 %.lcssa to i32
  br label %bary_small_lshift.exit

bary_small_lshift.exit:                           ; preds = %bb.o, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.o ], [ %i.cj, %._crit_edge.loopexit.i ]
  %i.ck = getelementptr [4 x i8], ptr %.0128, i64 %.3116
  store i32 %.0.lcssa.i, ptr %i.ck, align 4, !tbaa !7
  %i.cl = xor i64 %.3116, -1
  %i.cm = add i64 %.0127, %i.cl                   ; 2 uses
  %.not143172 = icmp eq i64 %i.cm, 0
  br i1 %.not143172, label %bary_mul_normal.exit, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %bary_small_lshift.exit
  %i.cn = shl i64 %.3116, 2
  %i.co = getelementptr i8, ptr %.0128, i64 %i.cn
  %scevgep203 = getelementptr i8, ptr %i.co, i64 4
  %i.cp = shl nuw i64 %i.cm, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep203, i8 0, i64 %i.cp, i1 false), !tbaa !7
  br label %bary_mul_normal.exit

bb.r:                                             ; preds = %bb.n
  %i.cq = icmp eq i64 %.3116, 1
  br i1 %i.cq, label %bb.w, label %.split

.split:                                           ; preds = %bb.r
  %.not17.i = icmp eq i64 %.0127, 0
  br i1 %.not17.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split
  %i.cr = shl nuw i64 %.0127, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0128, i8 0, i64 %i.cr, i1 false), !tbaa !7
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %.split
  %.not43.i.i = icmp eq i64 %.3116, 0
  br i1 %.not43.i.i, label %bary_mul_normal.exit, label %.lr.ph21.split.i.preheader

.lr.ph21.split.i.preheader:                       ; preds = %.preheader.i
  %6 = icmp ule i64 %.0127, %.3116
  %i.cs = load i32, ptr %.2126, align 4, !tbaa !7 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bary_mul_normal.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph21.split.i.preheader
  %i.cu = zext i32 %i.cs to i64                   ; 3 uses
  %xtraiter = and i64 %.3116, 1
  %unroll_iter = and i64 %.3116, -2
  br label %.lr.ph.i.i

.preheader.i.i.unr-lcssa:                         ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.i.i.unr-lcssa
  %lcmp.mod236 = trunc i64 %.3116 to i1
  tail call void @llvm.assume(i1 %lcmp.mod236)
  %i.cv = getelementptr [4 x i8], ptr %.2119, i64 %i.ee
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !7
  %i.cx = zext i32 %i.cw to i64
  %i.cy = mul nuw i64 %i.cx, %i.cu
  %i.cz = add nuw i64 %i.cy, %.131.i.i.1          ; 2 uses
  %.not.i.i.epil = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.epil, label %.preheader.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.da = getelementptr [4 x i8], ptr %.0128, i64 %i.ee ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !7
  %i.dc = zext i32 %i.db to i64
  %i.dd = add nuw i64 %i.cz, %i.dc                ; 2 uses
  %i.de = trunc i64 %i.dd to i32
  store i32 %i.de, ptr %i.da, align 4, !tbaa !7
  %i.df = lshr i64 %i.dd, 32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i.epil.preheader, %bb.s, %.preheader.i.i.unr-lcssa
  %.131.i.i.lcssa = phi i64 [ %.131.i.i.1, %.preheader.i.i.unr-lcssa ], [ %i.df, %bb.s ], [ 0, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.dg = icmp eq i64 %.131.i.i.lcssa, 0
  %or.cond38.i.i = select i1 %6, i1 true, i1 %i.dg
  br i1 %or.cond38.i.i, label %bary_mul_normal.exit, label %.lr.ph41.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %.lr.ph.i.preheader.i
  %.036.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %i.ee, %bb.v ] ; 4 uses
  %.03035.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %.131.i.i.1, %bb.v ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %niter.next.1, %bb.v ]
  %i.dh = getelementptr [4 x i8], ptr %.2119, i64 %.036.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !7
  %i.dj = zext i32 %i.di to i64
  %i.dk = mul nuw i64 %i.dj, %i.cu
  %i.dl = add nuw i64 %i.dk, %.03035.i.i          ; 2 uses
  %.not.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i.i, label %.lr.ph.i.i.1, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.dm = getelementptr [4 x i8], ptr %.0128, i64 %.036.i.i ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !7
  %i.do = zext i32 %i.dn to i64
  %i.dp = add nuw i64 %i.dl, %i.do                ; 2 uses
  %i.dq = trunc i64 %i.dp to i32
  store i32 %i.dq, ptr %i.dm, align 4, !tbaa !7
  %i.dr = lshr i64 %i.dp, 32
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.t, %.lr.ph.i.i
  %.131.i.i = phi i64 [ %i.dr, %bb.t ], [ 0, %.lr.ph.i.i ]
  %i.ds = or disjoint i64 %.036.i.i, 1            ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %.2119, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !7
  %i.dv = zext i32 %i.du to i64
  %i.dw = mul nuw i64 %i.dv, %i.cu
  %i.dx = add nuw i64 %i.dw, %.131.i.i            ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.1, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.1
  %i.dy = getelementptr [4 x i8], ptr %.0128, i64 %i.ds ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !7
  %i.ea = zext i32 %i.dz to i64
  %i.eb = add nuw i64 %i.dx, %i.ea                ; 2 uses
  %i.ec = trunc i64 %i.eb to i32
  store i32 %i.ec, ptr %i.dy, align 4, !tbaa !7
  %i.ed = lshr i64 %i.eb, 32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.1
  %.131.i.i.1 = phi i64 [ %i.ed, %bb.u ], [ 0, %.lr.ph.i.i.1 ] ; 3 uses
  %i.ee = add nuw i64 %.036.i.i, 2                ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !16

.lr.ph41.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph41.i.i
  %.140.i.i = phi i64 [ %i.el, %.lr.ph41.i.i ], [ %.3116, %.preheader.i.i ] ; 2 uses
  %.239.i.i = phi i64 [ %i.ek, %.lr.ph41.i.i ], [ %.131.i.i.lcssa, %.preheader.i.i ]
  %i.ef = getelementptr [4 x i8], ptr %.0128, i64 %.140.i.i ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !7
  %i.eh = zext i32 %i.eg to i64
  %i.ei = add nuw nsw i64 %.239.i.i, %i.eh        ; 2 uses
  %i.ej = trunc i64 %i.ei to i32
  store i32 %i.ej, ptr %i.ef, align 4, !tbaa !7
  %i.ek = lshr i64 %i.ei, 32                      ; 2 uses
  %i.el = add nuw i64 %.140.i.i, 1                ; 2 uses
  %i.em = icmp uge i64 %i.el, %.0127
  %i.en = icmp eq i64 %i.ek, 0
  %or.cond.i.i = select i1 %i.em, i1 true, i1 %i.en
  br i1 %or.cond.i.i, label %bary_mul_normal.exit, label %.lr.ph41.i.i, !llvm.loop !18

bb.w:                                             ; preds = %bb.r
  %i.eo = load i32, ptr %.2119, align 4, !tbaa !7
  %i.ep = icmp eq i32 %i.eo, 1
  br i1 %i.ep, label %bb.x, label %.split129

.split129:                                        ; preds = %bb.w
  tail call fastcc void @bary_mul_normal(ptr noundef %.0128, i64 noundef %.0127, ptr noundef nonnull %.2126, i64 noundef 1, ptr noundef nonnull %.2119, i64 noundef 1)
  br label %bary_mul_normal.exit

bb.x:                                             ; preds = %bb.w
  store i32 %i.ai, ptr %.0128, align 4, !tbaa !7
  %.not142168 = icmp eq i64 %.0127, 1
  br i1 %.not142168, label %bary_mul_normal.exit, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.x
  %scevgep202 = getelementptr i8, ptr %.0128, i64 4
  %i.eq = shl i64 %.0127, 2
  %i.er = add i64 %i.eq, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep202, i8 0, i64 %i.er, i1 false), !tbaa !7
  br label %bary_mul_normal.exit

bb.y:                                             ; preds = %bb.h
  store ptr %.0128, ptr %0, align 8, !tbaa !43
  store i64 %.0127, ptr %1, align 8, !tbaa !11
  store ptr %.2126, ptr %2, align 8, !tbaa !43
  store i64 %.3123, ptr %3, align 8, !tbaa !11
  store ptr %.2119, ptr %4, align 8, !tbaa !43
  store i64 %.3116, ptr %5, align 8, !tbaa !11
  br label %bary_mul_normal.exit

bary_mul_normal.exit:                             ; preds = %.lr.ph41.i.i, %.lr.ph21.split.i.preheader, %.preheader.i.i, %.lr.ph171.preheader, %.lr.ph175.preheader, %.lr.ph179.preheader, %.lr.ph183.preheader, %bb.x, %bary_small_lshift.exit, %ruby_nonempty_memcpy.exit, %.preheader, %.preheader.i, %.split129, %bb.y
  %.0109 = phi i32 [ 0, %bb.y ], [ 1, %bary_small_lshift.exit ], [ 1, %bb.x ], [ 1, %.preheader ], [ 1, %ruby_nonempty_memcpy.exit ], [ 1, %.split129 ], [ 1, %.preheader.i ], [ 1, %.lr.ph171.preheader ], [ 1, %.lr.ph183.preheader ], [ 1, %.lr.ph179.preheader ], [ 1, %.lr.ph175.preheader ], [ 1, %.lr.ph21.split.i.preheader ], [ 1, %.preheader.i.i ], [ 1, %.lr.ph41.i.i ]
  ret i32 %.0109
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bary_mul_karatsuba_branch(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %3, 70
  br i1 %i.a, label %bary_sparse_p.exit.thread81, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl i64 %3, 1
  %i.c = udiv i64 %i.b, 5
  %i.d = getelementptr [4 x i8], ptr %2, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %.not.i = icmp ne i32 %i.e, 0                   ; 2 uses
  %spec.select.i = zext i1 %.not.i to i64
  %i.f = lshr i64 %3, 1
  %i.g = getelementptr [4 x i8], ptr %2, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %.not11.i = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not.i, i64 2, i64 1
  %.1.i = select i1 %.not11.i, i64 %spec.select.i, i64 %i.i ; 2 uses
  %i.j = icmp samesign ult i64 %.1.i, 2
  br i1 %i.j, label %bb.c, label %bary_sparse_p.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = mul i64 %3, 3
  %i.l = udiv i64 %i.k, 5
  %i.m = getelementptr [4 x i8], ptr %2, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %.not12.i = icmp ne i32 %i.n, 0
  %.not89 = icmp eq i64 %.1.i, 1
  %or.cond90 = and i1 %.not89, %.not12.i
  br i1 %or.cond90, label %bary_sparse_p.exit.thread, label %bary_sparse_p.exit.thread81

bary_sparse_p.exit.thread:                        ; preds = %bb.c, %bb.b
  %i.o = shl i64 %5, 1
  %i.p = udiv i64 %i.o, 5
  %i.q = getelementptr [4 x i8], ptr %4, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %.not.i44 = icmp ne i32 %i.r, 0                 ; 2 uses
  %spec.select.i45 = zext i1 %.not.i44 to i64
  %i.s = lshr i64 %5, 1                           ; 2 uses
  %i.t = getelementptr [4 x i8], ptr %4, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %.not11.i46 = icmp eq i32 %i.u, 0
  %i.v = select i1 %.not.i44, i64 2, i64 1
  %.1.i47 = select i1 %.not11.i46, i64 %spec.select.i45, i64 %i.v ; 2 uses
  %i.w = icmp samesign ult i64 %.1.i47, 2
  br i1 %i.w, label %bb.d, label %bary_sparse_p.exit50.thread

bb.d:                                             ; preds = %bary_sparse_p.exit.thread
  %i.x = mul i64 %5, 3
  %i.y = udiv i64 %i.x, 5
  %i.z = getelementptr [4 x i8], ptr %4, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %.not12.i49 = icmp ne i32 %i.aa, 0
  %.not = icmp eq i64 %.1.i47, 1
  %or.cond91 = and i1 %.not, %.not12.i49
  br i1 %or.cond91, label %bary_sparse_p.exit50.thread, label %bary_sparse_p.exit50.thread86

bary_sparse_p.exit50.thread86:                    ; preds = %bb.d
  %.not17.i.i = icmp eq i64 %1, 0
  br i1 %.not17.i.i, label %.preheader.i.i, label %.lr.ph.preheader.i12.i

.lr.ph.preheader.i12.i:                           ; preds = %bary_sparse_p.exit50.thread86
  %i.ab = shl nuw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.ab, i1 false), !tbaa !7
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.preheader.i12.i, %bary_sparse_p.exit50.thread86
  %.not22.i.i = icmp eq i64 %5, 0
  br i1 %.not22.i.i, label %bary_short_mul.exit, label %.lr.ph21.split.i.i.preheader

.lr.ph21.split.i.i.preheader:                     ; preds = %.preheader.i.i
  %xtraiter = and i64 %3, 1
  %unroll_iter = and i64 %3, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod108 = trunc i64 %3 to i1
  br label %.lr.ph21.split.i.i

.lr.ph21.split.i.i:                               ; preds = %.lr.ph21.split.i.i.preheader, %bary_muladd_1xN.exit.i.i
  %.01620.i.i = phi i64 [ %i.cc, %bary_muladd_1xN.exit.i.i ], [ 0, %.lr.ph21.split.i.i.preheader ] ; 4 uses
  %i.ac = getelementptr [4 x i8], ptr %0, i64 %.01620.i.i ; 4 uses
  %i.ad = sub i64 %1, %.01620.i.i                 ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr %4, i64 %.01620.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7  ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bary_muladd_1xN.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph21.split.i.i
  %i.ah = zext i32 %i.af to i64                   ; 3 uses
  br label %.lr.ph.i.i.i

.preheader.i.i.i.unr-lcssa:                       ; preds = %bb.h
  br i1 %lcmp.mod.not, label %.preheader.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.preheader.i.i.i.unr-lcssa
end_hunk_0
