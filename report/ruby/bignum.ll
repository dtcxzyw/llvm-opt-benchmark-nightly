Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 184
begin_hunk_0_@bary_mul_balance_with_mulfunc:bb.a
  %i.ae = sub i64 %1, %.0107140.us
  %.not118.us = icmp ugt i64 %i.ad, %i.ae
  br i1 %.not118.us, label %.split.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph142.split.us
  %i.af = getelementptr [4 x i8], ptr %0, i64 %.0107140.us ; 4 uses
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %3 ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %i.ab ; 4 uses
  %i.ai = getelementptr [4 x i8], ptr %4, i64 %.0107140.us
  call void %8(ptr noundef %i.ah, i64 noundef %i.ac, ptr noundef %2, i64 noundef %3, ptr noundef %i.ai, i64 noundef %i.ab, ptr noundef %.1, i64 noundef %.1110) #23, !callees !153
  %.not119134.us = icmp eq i64 %i.ab, 0
  br i1 %.not119134.us, label %._crit_edge139.us, label %.lr.ph138.us.preheader

.lr.ph138.us.preheader:                           ; preds = %bb.h
  %i.aj = shl nuw i64 %i.ab, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ag, i8 0, i64 %i.aj, i1 false), !tbaa !44
  br label %._crit_edge139.us

._crit_edge139.us:                                ; preds = %.lr.ph138.us.preheader, %bb.h
  %.not.i.i.us = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.us, label %bary_add.exit126.us, label %.lr.ph.i.i.us.preheader

.lr.ph.i.i.us.preheader:                          ; preds = %._crit_edge139.us
  %xtraiter189 = and i64 %i.ac, 1
  %i.ak = sub i64 0, %i.ab
  %i.al = icmp eq i64 %i.z, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.us.epil.preheader, label %.lr.ph.i.i.us.preheader.new

.lr.ph.i.i.us.preheader.new:                      ; preds = %.lr.ph.i.i.us.preheader
  %unroll_iter192 = and i64 %i.ac, -2
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us, %.lr.ph.i.i.us.preheader.new
  %.05779.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us.preheader.new ], [ %i.bh, %.lr.ph.i.i.us ] ; 4 uses
  %.05878.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us.preheader.new ], [ %i.bg, %.lr.ph.i.i.us ]
  %niter193 = phi i64 [ 0, %.lr.ph.i.i.us.preheader.new ], [ %niter193.next.1, %.lr.ph.i.i.us ]
  %i.am = getelementptr [4 x i8], ptr %i.af, i64 %.05779.i.i.us ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !44
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i.us
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !44
  %i.ar = zext i32 %i.aq to i64
  %i.as = add nuw nsw i64 %.05878.i.i.us, %i.ao
  %i.at = add nuw nsw i64 %i.as, %i.ar            ; 2 uses
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %i.am, align 4, !tbaa !44
  %i.av = lshr i64 %i.at, 32
  %i.aw = or disjoint i64 %.05779.i.i.us, 1       ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.af, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !44
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr [4 x i8], ptr %i.ah, i64 %i.aw
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !44
  %i.bc = zext i32 %i.bb to i64
  %i.bd = add nuw nsw i64 %i.av, %i.az
  %i.be = add nuw nsw i64 %i.bd, %i.bc            ; 2 uses
  %i.bf = trunc i64 %i.be to i32
  store i32 %i.bf, ptr %i.ax, align 4, !tbaa !44
  %i.bg = lshr i64 %i.be, 32                      ; 2 uses
  %i.bh = add nuw i64 %.05779.i.i.us, 2           ; 2 uses
  %niter193.next.1 = add i64 %niter193, 2         ; 2 uses
  %niter193.ncmp.1 = icmp eq i64 %niter193.next.1, %unroll_iter192
  br i1 %niter193.ncmp.1, label %bary_add.exit126.us.loopexit.unr-lcssa, label %.lr.ph.i.i.us, !llvm.loop !3

bary_add.exit126.us.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.us
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %bary_add.exit126.us, label %.lr.ph.i.i.us.epil.preheader

.lr.ph.i.i.us.epil.preheader:                     ; preds = %bary_add.exit126.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.preheader
  %.05779.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.us.preheader ], [ %i.bh, %bary_add.exit126.us.loopexit.unr-lcssa ] ; 2 uses
  %.05878.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.us.preheader ], [ %i.bg, %bary_add.exit126.us.loopexit.unr-lcssa ]
  %lcmp.mod191 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod191)
  %i.bi = getelementptr [4 x i8], ptr %i.af, i64 %.05779.i.i.us.epil.init ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !44
  %i.bk = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i.us.epil.init
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !44
  %i.bm = trunc nuw nsw i64 %.05878.i.i.us.epil.init to i32
  %i.bn = add i32 %i.bj, %i.bm
  %i.bo = add i32 %i.bn, %i.bl
  store i32 %i.bo, ptr %i.bi, align 4, !tbaa !44
  br label %bary_add.exit126.us

bary_add.exit126.us:                              ; preds = %.lr.ph.i.i.us.epil.preheader, %bary_add.exit126.us.loopexit.unr-lcssa, %._crit_edge139.us
  %i.bp = add i64 %i.ab, %.0107140.us             ; 2 uses
  %i.bq = icmp ugt i64 %5, %i.bp
  br i1 %i.bq, label %.lr.ph142.split.us, label %._crit_edge143, !llvm.loop !148

.lr.ph142.split:                                  ; preds = %.lr.ph142.split.preheader, %bary_add.exit126
  %.0107140 = phi i64 [ %i.gv, %bary_add.exit126 ], [ 0, %.lr.ph142.split.preheader ] ; 7 uses
  %i.br = sub nuw i64 %5, %.0107140
  %i.bs = call i64 @llvm.umin.i64(i64 %3, i64 %i.br) ; 8 uses
  %i.bt = add i64 %i.bs, %3                       ; 15 uses
  %i.bu = shl i64 %i.bt, 1
  %i.bv = sub i64 %1, %.0107140
  %.not118 = icmp ugt i64 %i.bu, %i.bv
  %i.bw = getelementptr [4 x i8], ptr %0, i64 %.0107140 ; 21 uses
  br i1 %.not118, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph142.split
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %3 ; 2 uses
  %i.by = getelementptr [4 x i8], ptr %i.bx, i64 %i.bs ; 4 uses
  %i.bz = getelementptr [4 x i8], ptr %4, i64 %.0107140
  call void %8(ptr noundef %i.by, i64 noundef %i.bt, ptr noundef %2, i64 noundef %3, ptr noundef %i.bz, i64 noundef %i.bs, ptr noundef %.1, i64 noundef %.1110) #23, !callees !153
  %.not119134 = icmp eq i64 %i.bs, 0
  br i1 %.not119134, label %._crit_edge139, label %.lr.ph138.preheader

.lr.ph138.preheader:                              ; preds = %bb.i
  %i.ca = shl nuw i64 %i.bs, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bx, i8 0, i64 %i.ca, i1 false), !tbaa !44
  br label %._crit_edge139

._crit_edge139:                                   ; preds = %.lr.ph138.preheader, %bb.i
  %.not.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i, label %bary_add.exit126, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge139
  %xtraiter = and i64 %i.bt, 1
  %i.cb = sub i64 0, %i.bs
  %i.cc = icmp eq i64 %i.y, %i.cb
  br i1 %i.cc, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.bt, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.05779.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cy, %.lr.ph.i.i ] ; 4 uses
  %.05878.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cx, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.cd = getelementptr [4 x i8], ptr %i.bw, i64 %.05779.i.i ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !44
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr [4 x i8], ptr %i.by, i64 %.05779.i.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !44
  %i.ci = zext i32 %i.ch to i64
  %i.cj = add nuw nsw i64 %.05878.i.i, %i.cf
  %i.ck = add nuw nsw i64 %i.cj, %i.ci            ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  store i32 %i.cl, ptr %i.cd, align 4, !tbaa !44
  %i.cm = lshr i64 %i.ck, 32
  %i.cn = or disjoint i64 %.05779.i.i, 1          ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %i.bw, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !44
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.by, i64 %i.cn
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !44
  %i.ct = zext i32 %i.cs to i64
  %i.cu = add nuw nsw i64 %i.cm, %i.cq
  %i.cv = add nuw nsw i64 %i.cu, %i.ct            ; 2 uses
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr %i.co, align 4, !tbaa !44
  %i.cx = lshr i64 %i.cv, 32                      ; 2 uses
  %i.cy = add nuw i64 %.05779.i.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bary_add.exit126.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !3

bb.j:                                             ; preds = %.lr.ph142.split
  br i1 %i.u, label %bb.k, label %rbimpl_size_mul_or_raise.exit, !prof !102

.split.us:                                        ; preds = %.lr.ph142.split.us
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.19, i64 noundef %.1110, i64 noundef %3) #27
  unreachable

bb.k:                                             ; preds = %bb.j
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %3) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.j
  br i1 %.not131, label %ruby_nonempty_memcpy.exit, label %bb.l

bb.l:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.1, ptr noundef nonnull readonly align 1 %i.bw, i64 noundef range(i64 1, 0) %i.v, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.l
  %i.cz = getelementptr [4 x i8], ptr %4, i64 %.0107140
  call void %8(ptr noundef %i.bw, i64 noundef %i.bt, ptr noundef %2, i64 noundef %3, ptr noundef %i.cz, i64 noundef %i.bs, ptr noundef %i.w, i64 noundef %i.x) #23, !callees !153
  %i.da = icmp ugt i64 %i.bt, %3
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %ruby_nonempty_memcpy.exit
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %ruby_nonempty_memcpy.exit
  %.064.i.i = phi i64 [ %3, %bb.m ], [ %i.bt, %ruby_nonempty_memcpy.exit ] ; 8 uses
  %.063.i.i = phi ptr [ %i.bw, %bb.m ], [ %.1, %ruby_nonempty_memcpy.exit ] ; 12 uses
  %.062.i.i = phi i64 [ %i.bt, %bb.m ], [ %3, %ruby_nonempty_memcpy.exit ] ; 12 uses
  %.061.i.i = phi ptr [ %.1, %bb.m ], [ %i.bw, %ruby_nonempty_memcpy.exit ] ; 3 uses
  %.063.i.i174 = ptrtoaddr ptr %.063.i.i to i64
  %.not.i.i120 = icmp eq i64 %.064.i.i, 0
  br i1 %.not.i.i120, label %.preheader72.i.i, label %.lr.ph.i.i121.preheader

.lr.ph.i.i121.preheader:                          ; preds = %bb.n
  %xtraiter181 = and i64 %.064.i.i, 1
  %i.db = icmp eq i64 %.064.i.i, 1
  br i1 %i.db, label %.lr.ph.i.i121.epil.preheader, label %.lr.ph.i.i121.preheader.new

.lr.ph.i.i121.preheader.new:                      ; preds = %.lr.ph.i.i121.preheader
  %unroll_iter185 = and i64 %.064.i.i, 4611686018427387902
  br label %.lr.ph.i.i121

.preheader72.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i121
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %.preheader72.i.i, label %.lr.ph.i.i121.epil.preheader

.lr.ph.i.i121.epil.preheader:                     ; preds = %.preheader72.i.i.loopexit.unr-lcssa, %.lr.ph.i.i121.preheader
  %.05779.i.i122.epil.init = phi i64 [ 0, %.lr.ph.i.i121.preheader ], [ %i.el, %.preheader72.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i123.epil.init = phi i64 [ 0, %.lr.ph.i.i121.preheader ], [ %i.ek, %.preheader72.i.i.loopexit.unr-lcssa ]
  %lcmp.mod184 = trunc i64 %.064.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod184)
  %i.dc = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i122.epil.init
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !44
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i122.epil.init
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !44
  %i.dh = zext i32 %i.dg to i64
  %i.di = add nuw nsw i64 %.05878.i.i123.epil.init, %i.de
  %i.dj = add nuw nsw i64 %i.di, %i.dh            ; 2 uses
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = getelementptr [4 x i8], ptr %i.bw, i64 %.05779.i.i122.epil.init
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !44
  %i.dm = lshr i64 %i.dj, 32
  br label %.preheader72.i.i

.preheader72.i.i:                                 ; preds = %.lr.ph.i.i121.epil.preheader, %.preheader72.i.i.loopexit.unr-lcssa, %bb.n
  %.058.lcssa.i.i125 = phi i64 [ 0, %bb.n ], [ %i.ek, %.preheader72.i.i.loopexit.unr-lcssa ], [ %i.dm, %.lr.ph.i.i121.epil.preheader ] ; 2 uses
  %i.dn = icmp ult i64 %.064.i.i, %.062.i.i
  br i1 %i.dn, label %.lr.ph83.i.i, label %.preheader70.i.i

.lr.ph.i.i121:                                    ; preds = %.lr.ph.i.i121, %.lr.ph.i.i121.preheader.new
  %.05779.i.i122 = phi i64 [ 0, %.lr.ph.i.i121.preheader.new ], [ %i.el, %.lr.ph.i.i121 ] ; 5 uses
  %.05878.i.i123 = phi i64 [ 0, %.lr.ph.i.i121.preheader.new ], [ %i.ek, %.lr.ph.i.i121 ]
  %niter186 = phi i64 [ 0, %.lr.ph.i.i121.preheader.new ], [ %niter186.next.1, %.lr.ph.i.i121 ]
  %i.do = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i122
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !44
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i122
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !44
  %i.dt = zext i32 %i.ds to i64
  %i.du = add nuw nsw i64 %.05878.i.i123, %i.dq
  %i.dv = add nuw nsw i64 %i.du, %i.dt            ; 2 uses
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = getelementptr [4 x i8], ptr %i.bw, i64 %.05779.i.i122
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !44
  %i.dy = lshr i64 %i.dv, 32
  %i.dz = or disjoint i64 %.05779.i.i122, 1       ; 3 uses
  %i.ea = getelementptr [4 x i8], ptr %.061.i.i, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !44
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.dz
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !44
  %i.ef = zext i32 %i.ee to i64
  %i.eg = add nuw nsw i64 %i.dy, %i.ec
  %i.eh = add nuw nsw i64 %i.eg, %i.ef            ; 2 uses
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = getelementptr [4 x i8], ptr %i.bw, i64 %i.dz
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !44
  %i.ek = lshr i64 %i.eh, 32                      ; 3 uses
  %i.el = add nuw i64 %.05779.i.i122, 2           ; 2 uses
  %niter186.next.1 = add i64 %niter186, 2         ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %.preheader72.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i121, !llvm.loop !3

.preheader70.i.i:                                 ; preds = %bb.p, %.preheader72.i.i
  %.159.lcssa.i.i = phi i64 [ %.058.lcssa.i.i125, %.preheader72.i.i ], [ %i.ex, %bb.p ]
  %.1.lcssa.i.i = phi i64 [ %.064.i.i, %.preheader72.i.i ], [ %.062.i.i, %bb.p ] ; 4 uses
  %i.em = icmp ult i64 %.1.lcssa.i.i, %i.bt
  br i1 %i.em, label %.lr.ph88.preheader.i.i, label %bary_add.exit126

.lr.ph88.preheader.i.i:                           ; preds = %.preheader70.i.i
  %i.en = icmp eq i64 %.159.lcssa.i.i, 0
  br i1 %i.en, label %.loopexit71.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph88.preheader.i.i
  %i.eo = getelementptr [4 x i8], ptr %i.bw, i64 %.1.lcssa.i.i
  store i32 1, ptr %i.eo, align 4, !tbaa !44
  %i.ep = add nuw i64 %.1.lcssa.i.i, 1            ; 2 uses
  %exitcond103.peel.not.i.i = icmp eq i64 %i.ep, %i.bt
  br i1 %exitcond103.peel.not.i.i, label %bary_add.exit126, label %.loopexit71.i.i

.lr.ph83.i.i:                                     ; preds = %.preheader72.i.i, %bb.p
  %.182.i.i = phi i64 [ %i.ey, %bb.p ], [ %.064.i.i, %.preheader72.i.i ] ; 4 uses
  %.15981.i.i = phi i64 [ %i.ex, %bb.p ], [ %.058.lcssa.i.i125, %.preheader72.i.i ]
  %i.eq = icmp eq i64 %.15981.i.i, 0
  br i1 %i.eq, label %.loopexit71.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph83.i.i
  %i.er = getelementptr [4 x i8], ptr %.063.i.i, i64 %.182.i.i
  %i.es = load i32, ptr %i.er, align 4, !tbaa !44
  %i.et = zext i32 %i.es to i64
  %i.eu = add nuw nsw i64 %i.et, 1                ; 2 uses
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = getelementptr [4 x i8], ptr %i.bw, i64 %.182.i.i
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !44
  %i.ex = lshr i64 %i.eu, 32                      ; 2 uses
  %i.ey = add nuw i64 %.182.i.i, 1                ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %i.ey, %.062.i.i
  br i1 %exitcond102.not.i.i, label %.preheader70.i.i, label %.lr.ph83.i.i, !llvm.loop !4

.loopexit71.i.i:                                  ; preds = %.lr.ph83.i.i, %bb.o, %.lr.ph88.preheader.i.i
  %.3.i.i = phi i64 [ %i.ep, %bb.o ], [ %.1.lcssa.i.i, %.lr.ph88.preheader.i.i ], [ %.182.i.i, %.lr.ph83.i.i ] ; 7 uses
  %i.ez = icmp eq ptr %.063.i.i, %i.bw
  %i.fa = icmp eq i64 %.062.i.i, %i.bt
  %or.cond.i.i = and i1 %i.ez, %i.fa
  br i1 %or.cond.i.i, label %bary_add.exit126, label %.preheader69.i.i

.preheader69.i.i:                                 ; preds = %.loopexit71.i.i
  %i.fb = icmp ult i64 %.3.i.i, %.062.i.i
  br i1 %i.fb, label %.lr.ph91.i.i.preheader, label %.preheader.i.i

.lr.ph91.i.i.preheader:                           ; preds = %.preheader69.i.i
  %i.fc = sub nuw i64 %.062.i.i, %.3.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.fc, 8
  br i1 %min.iters.check, label %.lr.ph91.i.i.preheader176, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph91.i.i.preheader
  %i.fd = shl i64 %.0107140, 2
  %i.fe = add i64 %i.fd, %i.a
  %i.ff = sub i64 %.063.i.i174, %i.fe
  %diff.check = icmp ugt i64 %i.ff, -32
  br i1 %diff.check, label %.lr.ph91.i.i.preheader176, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fc, -8                      ; 3 uses
  %i.fg = add i64 %.3.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fh = add nuw i64 %.3.i.i, %index             ; 2 uses
  %i.fi = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.fh ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  %wide.load = load <4 x i32>, ptr %i.fi, align 4, !tbaa !44
  %wide.load175 = load <4 x i32>, ptr %i.fj, align 4, !tbaa !44
  %i.fk = getelementptr [4 x i8], ptr %i.bw, i64 %i.fh ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 16
  store <4 x i32> %wide.load, ptr %i.fk, align 4, !tbaa !44
  store <4 x i32> %wide.load175, ptr %i.fl, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fc, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %.lr.ph91.i.i.preheader176

.lr.ph91.i.i.preheader176:                        ; preds = %vector.memcheck, %.lr.ph91.i.i.preheader, %middle.block
  %.490.i.i.ph = phi i64 [ %.3.i.i, %vector.memcheck ], [ %.3.i.i, %.lr.ph91.i.i.preheader ], [ %i.fg, %middle.block ] ; 4 uses
  %i.fn = sub i64 %.062.i.i, %.490.i.i.ph
  %xtraiter187 = and i64 %i.fn, 3                 ; 2 uses
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol

.lr.ph91.i.i.prol:                                ; preds = %.lr.ph91.i.i.preheader176, %.lr.ph91.i.i.prol
  %.490.i.i.prol = phi i64 [ %i.fr, %.lr.ph91.i.i.prol ], [ %.490.i.i.ph, %.lr.ph91.i.i.preheader176 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph91.i.i.prol ], [ 0, %.lr.ph91.i.i.preheader176 ]
  %i.fo = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i.prol
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !44
  %i.fq = getelementptr [4 x i8], ptr %i.bw, i64 %.490.i.i.prol
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !44
  %i.fr = add nuw i64 %.490.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter187
  br i1 %prol.iter.cmp.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol, !llvm.loop !150

.lr.ph91.i.i.prol.loopexit:                       ; preds = %.lr.ph91.i.i.prol, %.lr.ph91.i.i.preheader176
  %.490.i.i.unr = phi i64 [ %.490.i.i.ph, %.lr.ph91.i.i.preheader176 ], [ %i.fr, %.lr.ph91.i.i.prol ]
  %i.fs = sub i64 %.490.i.i.ph, %.062.i.i
  %i.ft = icmp ugt i64 %i.fs, -4
  br i1 %i.ft, label %.preheader.i.i, label %.lr.ph91.i.i

.preheader.i.i:                                   ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i, %middle.block, %.preheader69.i.i
  %.4.lcssa.i.i = phi i64 [ %.3.i.i, %.preheader69.i.i ], [ %.062.i.i, %middle.block ], [ %.062.i.i, %.lr.ph91.i.i ], [ %.062.i.i, %.lr.ph91.i.i.prol.loopexit ] ; 3 uses
  %i.fu = icmp ult i64 %.4.lcssa.i.i, %i.bt
  br i1 %i.fu, label %.lr.ph94.preheader.i.i, label %bary_add.exit126

.lr.ph94.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.fv = shl i64 %.4.lcssa.i.i, 2
  %scevgep.i.i = getelementptr i8, ptr %i.bw, i64 %i.fv
  %i.fw = sub nuw i64 %i.bt, %.4.lcssa.i.i
  %i.fx = shl i64 %i.fw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.fx, i1 false), !tbaa !44
  br label %bary_add.exit126

.lr.ph91.i.i:                                     ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i
  %.490.i.i = phi i64 [ %i.gn, %.lr.ph91.i.i ], [ %.490.i.i.unr, %.lr.ph91.i.i.prol.loopexit ] ; 6 uses
  %i.fy = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !44
  %i.ga = getelementptr [4 x i8], ptr %i.bw, i64 %.490.i.i
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !44
  %i.gb = add nuw i64 %.490.i.i, 1                ; 2 uses
  %i.gc = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !44
  %i.ge = getelementptr [4 x i8], ptr %i.bw, i64 %i.gb
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !44
  %i.gf = add nuw i64 %.490.i.i, 2                ; 2 uses
  %i.gg = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !44
  %i.gi = getelementptr [4 x i8], ptr %i.bw, i64 %i.gf
end_hunk_0
begin_hunk_1_@bary_mul_karatsuba:bb.a
  %i.rk = zext i32 %i.rj to i64
  %i.rl = add nuw nsw i64 %.05878.i332, %i.rh
  %i.rm = add nuw nsw i64 %i.rl, %i.rk            ; 2 uses
  %i.rn = trunc i64 %i.rm to i32
  %i.ro = getelementptr [4 x i8], ptr %i.av, i64 %.05779.i331
  store i32 %i.rn, ptr %i.ro, align 4, !tbaa !44
  %i.rp = lshr i64 %i.rm, 32
  %i.rq = or disjoint i64 %.05779.i331, 1         ; 3 uses
  %i.rr = getelementptr [4 x i8], ptr %i.qr, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !44
  %i.rt = zext i32 %i.rs to i64
  %i.ru = getelementptr [4 x i8], ptr %.063.i, i64 %i.rq
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !44
  %i.rw = zext i32 %i.rv to i64
  %i.rx = add nuw nsw i64 %i.rp, %i.rt
  %i.ry = add nuw nsw i64 %i.rx, %i.rw            ; 2 uses
  %i.rz = trunc i64 %i.ry to i32
  %i.sa = getelementptr [4 x i8], ptr %i.av, i64 %i.rq
  store i32 %i.rz, ptr %i.sa, align 4, !tbaa !44
  %i.sb = lshr i64 %i.ry, 32                      ; 3 uses
  %i.sc = add nuw nsw i64 %.05779.i331, 2         ; 2 uses
  %niter850.next.1 = add i64 %niter850, 2         ; 2 uses
  %niter850.ncmp.1 = icmp eq i64 %niter850.next.1, %unroll_iter849
  br i1 %niter850.ncmp.1, label %.preheader72.i.loopexit.unr-lcssa, label %.lr.ph.i330, !llvm.loop !3

.preheader70.i:                                   ; preds = %bb.z, %.preheader72.i
  %.159.lcssa.i = phi i64 [ %.058.lcssa.i334, %.preheader72.i ], [ %i.so, %bb.z ] ; 2 uses
  %.1.lcssa.i = phi i64 [ %.064.i, %.preheader72.i ], [ %.062.i, %bb.z ] ; 4 uses
  %i.sd = icmp ult i64 %.1.lcssa.i, %i.aj
  br i1 %i.sd, label %.lr.ph88.preheader.i, label %._crit_edge.i

.lr.ph88.preheader.i:                             ; preds = %.preheader70.i
  %i.se = icmp eq i64 %.159.lcssa.i, 0
  br i1 %i.se, label %.loopexit71.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph88.preheader.i
  %i.sf = getelementptr [4 x i8], ptr %i.av, i64 %.1.lcssa.i
  store i32 1, ptr %i.sf, align 4, !tbaa !44
  %i.sg = add nuw nsw i64 %.1.lcssa.i, 1          ; 2 uses
  %exitcond103.peel.not.i = icmp eq i64 %i.sg, %i.aj
  br i1 %exitcond103.peel.not.i, label %._crit_edge.i, label %.loopexit71.i

.lr.ph83.i:                                       ; preds = %.preheader72.i, %bb.z
  %.182.i = phi i64 [ %i.sp, %bb.z ], [ %.064.i, %.preheader72.i ] ; 4 uses
  %.15981.i = phi i64 [ %i.so, %bb.z ], [ %.058.lcssa.i334, %.preheader72.i ]
  %i.sh = icmp eq i64 %.15981.i, 0
  br i1 %i.sh, label %.loopexit71.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph83.i
  %i.si = getelementptr [4 x i8], ptr %.063.i, i64 %.182.i
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !44
  %i.sk = zext i32 %i.sj to i64
  %i.sl = add nuw nsw i64 %i.sk, 1                ; 2 uses
  %i.sm = trunc i64 %i.sl to i32
  %i.sn = getelementptr [4 x i8], ptr %i.av, i64 %.182.i
  store i32 %i.sm, ptr %i.sn, align 4, !tbaa !44
  %i.so = lshr i64 %i.sl, 32                      ; 2 uses
  %i.sp = add nuw i64 %.182.i, 1                  ; 2 uses
  %exitcond102.not.i = icmp eq i64 %i.sp, %.062.i
  br i1 %exitcond102.not.i, label %.preheader70.i, label %.lr.ph83.i, !llvm.loop !4

._crit_edge.i:                                    ; preds = %bb.y, %.preheader70.i
  %.260.lcssa.i = phi i64 [ %.159.lcssa.i, %.preheader70.i ], [ 0, %bb.y ]
  %i.sq = icmp ne i64 %.260.lcssa.i, 0
  %i.sr = zext i1 %i.sq to i32
  br label %bary_addc.exit336

.loopexit71.i:                                    ; preds = %.lr.ph83.i, %bb.y, %.lr.ph88.preheader.i
  %.3.i = phi i64 [ %i.sg, %bb.y ], [ %.1.lcssa.i, %.lr.ph88.preheader.i ], [ %.182.i, %.lr.ph83.i ] ; 7 uses
  %i.ss = icmp eq ptr %.063.i, %i.av
  %i.st = icmp eq i64 %.062.i, %i.aj
  %or.cond.i = and i1 %i.ss, %i.st
  br i1 %or.cond.i, label %bary_addc.exit336, label %.preheader69.i

.preheader69.i:                                   ; preds = %.loopexit71.i
  %i.su = icmp ult i64 %.3.i, %.062.i
  br i1 %i.su, label %.lr.ph91.i.preheader, label %.preheader.i

.lr.ph91.i.preheader:                             ; preds = %.preheader69.i
  %i.sv = sub nuw i64 %.062.i, %.3.i              ; 3 uses
  %min.iters.check720 = icmp ult i64 %i.sv, 16
  br i1 %min.iters.check720, label %.lr.ph91.i.preheader777, label %vector.memcheck721

vector.memcheck721:                               ; preds = %.lr.ph91.i.preheader
  %i.sw = shl i64 %i.aj, 3
  %i.sx = add i64 %i.sw, %i.b
  %i.sy = sub i64 %.063.i718, %i.sx
  %diff.check722 = icmp ugt i64 %i.sy, -32
  br i1 %diff.check722, label %.lr.ph91.i.preheader777, label %vector.ph723

vector.ph723:                                     ; preds = %vector.memcheck721
  %n.vec724 = and i64 %i.sv, -8                   ; 3 uses
  %i.sz = add i64 %.3.i, %n.vec724
  br label %vector.body725

vector.body725:                                   ; preds = %vector.body725, %vector.ph723
  %index726 = phi i64 [ 0, %vector.ph723 ], [ %index.next729, %vector.body725 ] ; 2 uses
  %i.ta = add nuw i64 %.3.i, %index726            ; 2 uses
  %i.tb = getelementptr [4 x i8], ptr %.063.i, i64 %i.ta ; 2 uses
  %i.tc = getelementptr i8, ptr %i.tb, i64 16
  %wide.load727 = load <4 x i32>, ptr %i.tb, align 4, !tbaa !44
  %wide.load728 = load <4 x i32>, ptr %i.tc, align 4, !tbaa !44
  %i.td = getelementptr [4 x i8], ptr %i.av, i64 %i.ta ; 2 uses
  %i.te = getelementptr i8, ptr %i.td, i64 16
  store <4 x i32> %wide.load727, ptr %i.td, align 4, !tbaa !44
  store <4 x i32> %wide.load728, ptr %i.te, align 4, !tbaa !44
  %index.next729 = add nuw i64 %index726, 8       ; 2 uses
  %i.tf = icmp eq i64 %index.next729, %n.vec724
  br i1 %i.tf, label %middle.block730, label %vector.body725, !llvm.loop !169

middle.block730:                                  ; preds = %vector.body725
  %cmp.n731 = icmp eq i64 %i.sv, %n.vec724
  br i1 %cmp.n731, label %.preheader.i, label %.lr.ph91.i.preheader777

.lr.ph91.i.preheader777:                          ; preds = %vector.memcheck721, %.lr.ph91.i.preheader, %middle.block730
  %.490.i.ph = phi i64 [ %.3.i, %vector.memcheck721 ], [ %.3.i, %.lr.ph91.i.preheader ], [ %i.sz, %middle.block730 ] ; 4 uses
  %i.tg = sub i64 %.062.i, %.490.i.ph
  %xtraiter851 = and i64 %i.tg, 3                 ; 2 uses
  %lcmp.mod852.not = icmp eq i64 %xtraiter851, 0
  br i1 %lcmp.mod852.not, label %.lr.ph91.i.prol.loopexit, label %.lr.ph91.i.prol

.lr.ph91.i.prol:                                  ; preds = %.lr.ph91.i.preheader777, %.lr.ph91.i.prol
  %.490.i.prol = phi i64 [ %i.tk, %.lr.ph91.i.prol ], [ %.490.i.ph, %.lr.ph91.i.preheader777 ] ; 3 uses
  %prol.iter853 = phi i64 [ %prol.iter853.next, %.lr.ph91.i.prol ], [ 0, %.lr.ph91.i.preheader777 ]
  %i.th = getelementptr [4 x i8], ptr %.063.i, i64 %.490.i.prol
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !44
  %i.tj = getelementptr [4 x i8], ptr %i.av, i64 %.490.i.prol
  store i32 %i.ti, ptr %i.tj, align 4, !tbaa !44
  %i.tk = add nuw i64 %.490.i.prol, 1             ; 2 uses
  %prol.iter853.next = add i64 %prol.iter853, 1   ; 2 uses
  %prol.iter853.cmp.not = icmp eq i64 %prol.iter853.next, %xtraiter851
  br i1 %prol.iter853.cmp.not, label %.lr.ph91.i.prol.loopexit, label %.lr.ph91.i.prol, !llvm.loop !170

.lr.ph91.i.prol.loopexit:                         ; preds = %.lr.ph91.i.prol, %.lr.ph91.i.preheader777
  %.490.i.unr = phi i64 [ %.490.i.ph, %.lr.ph91.i.preheader777 ], [ %i.tk, %.lr.ph91.i.prol ]
  %i.tl = sub i64 %.490.i.ph, %.062.i
  %i.tm = icmp ugt i64 %i.tl, -4
  br i1 %i.tm, label %.preheader.i, label %.lr.ph91.i

.preheader.i:                                     ; preds = %.lr.ph91.i.prol.loopexit, %.lr.ph91.i, %middle.block730, %.preheader69.i
  %.4.lcssa.i = phi i64 [ %.3.i, %.preheader69.i ], [ %.062.i, %middle.block730 ], [ %.062.i, %.lr.ph91.i ], [ %.062.i, %.lr.ph91.i.prol.loopexit ] ; 3 uses
  %i.tn = icmp ult i64 %.4.lcssa.i, %i.aj
  br i1 %i.tn, label %.lr.ph94.preheader.i, label %bary_addc.exit336

.lr.ph94.preheader.i:                             ; preds = %.preheader.i
  %i.to = shl i64 %.4.lcssa.i, 2
  %scevgep.i = getelementptr i8, ptr %i.av, i64 %i.to
  %i.tp = sub nuw nsw i64 %i.aj, %.4.lcssa.i
  %i.tq = shl nuw i64 %i.tp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.tq, i1 false), !tbaa !44
  br label %bary_addc.exit336

.lr.ph91.i:                                       ; preds = %.lr.ph91.i.prol.loopexit, %.lr.ph91.i
  %.490.i = phi i64 [ %i.ug, %.lr.ph91.i ], [ %.490.i.unr, %.lr.ph91.i.prol.loopexit ] ; 6 uses
  %i.tr = getelementptr [4 x i8], ptr %.063.i, i64 %.490.i
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !44
  %i.tt = getelementptr [4 x i8], ptr %i.av, i64 %.490.i
  store i32 %i.ts, ptr %i.tt, align 4, !tbaa !44
  %i.tu = add nuw i64 %.490.i, 1                  ; 2 uses
  %i.tv = getelementptr [4 x i8], ptr %.063.i, i64 %i.tu
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !44
  %i.tx = getelementptr [4 x i8], ptr %i.av, i64 %i.tu
  store i32 %i.tw, ptr %i.tx, align 4, !tbaa !44
  %i.ty = add nuw i64 %.490.i, 2                  ; 2 uses
  %i.tz = getelementptr [4 x i8], ptr %.063.i, i64 %i.ty
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !44
  %i.ub = getelementptr [4 x i8], ptr %i.av, i64 %i.ty
  store i32 %i.ua, ptr %i.ub, align 4, !tbaa !44
  %i.uc = add nuw i64 %.490.i, 3                  ; 2 uses
  %i.ud = getelementptr [4 x i8], ptr %.063.i, i64 %i.uc
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !44
  %i.uf = getelementptr [4 x i8], ptr %i.av, i64 %i.uc
  store i32 %i.ue, ptr %i.uf, align 4, !tbaa !44
  %i.ug = add nuw i64 %.490.i, 4                  ; 2 uses
  %exitcond106.not.i.3 = icmp eq i64 %i.ug, %.062.i
  br i1 %exitcond106.not.i.3, label %.preheader.i, label %.lr.ph91.i, !llvm.loop !171

bary_addc.exit336:                                ; preds = %._crit_edge.i, %.loopexit71.i, %.preheader.i, %.lr.ph94.preheader.i
  %.0.i335 = phi i32 [ %i.sr, %._crit_edge.i ], [ 0, %.loopexit71.i ], [ 0, %.preheader.i ], [ 0, %.lr.ph94.preheader.i ]
  %i.uh = icmp ugt i64 %i.ou, %i.aj
  br i1 %i.uh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bary_addc.exit336
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bary_addc.exit336
  %.064.i.i = phi i64 [ %i.aj, %bb.aa ], [ %i.ou, %bary_addc.exit336 ] ; 8 uses
  %.063.i.i = phi ptr [ %i.av, %bb.aa ], [ %.0195, %bary_addc.exit336 ] ; 12 uses
  %.062.i.i = phi i64 [ %i.ou, %bb.aa ], [ %i.aj, %bary_addc.exit336 ] ; 12 uses
  %.061.i.i = phi ptr [ %.0195, %bb.aa ], [ %i.av, %bary_addc.exit336 ] ; 3 uses
  %.063.i.i736 = ptrtoaddr ptr %.063.i.i to i64
  %.not.i.i337 = icmp eq i64 %.064.i.i, 0
  br i1 %.not.i.i337, label %.preheader72.i.i342, label %.lr.ph.i.i338.preheader

.lr.ph.i.i338.preheader:                          ; preds = %bb.ab
  %xtraiter854 = and i64 %.064.i.i, 1
  %i.ui = icmp eq i64 %.064.i.i, 1
  br i1 %i.ui, label %.lr.ph.i.i338.epil.preheader, label %.lr.ph.i.i338.preheader.new

.lr.ph.i.i338.preheader.new:                      ; preds = %.lr.ph.i.i338.preheader
  %unroll_iter858 = and i64 %.064.i.i, 9223372036854775806
  br label %.lr.ph.i.i338

.preheader72.i.i342.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i338
  %lcmp.mod855.not = icmp eq i64 %xtraiter854, 0
  br i1 %lcmp.mod855.not, label %.preheader72.i.i342, label %.lr.ph.i.i338.epil.preheader

.lr.ph.i.i338.epil.preheader:                     ; preds = %.preheader72.i.i342.loopexit.unr-lcssa, %.lr.ph.i.i338.preheader
  %.05779.i.i339.epil.init = phi i64 [ 0, %.lr.ph.i.i338.preheader ], [ %i.vs, %.preheader72.i.i342.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i340.epil.init = phi i64 [ 0, %.lr.ph.i.i338.preheader ], [ %i.vr, %.preheader72.i.i342.loopexit.unr-lcssa ]
  %lcmp.mod857 = trunc i64 %.064.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod857)
  %i.uj = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i339.epil.init
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !44
  %i.ul = zext i32 %i.uk to i64
  %i.um = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i339.epil.init
  %i.un = load i32, ptr %i.um, align 4, !tbaa !44
  %i.uo = zext i32 %i.un to i64
  %i.up = add nuw nsw i64 %.05878.i.i340.epil.init, %i.ul
  %i.uq = add nuw nsw i64 %i.up, %i.uo            ; 2 uses
  %i.ur = trunc i64 %i.uq to i32
  %i.us = getelementptr [4 x i8], ptr %i.av, i64 %.05779.i.i339.epil.init
  store i32 %i.ur, ptr %i.us, align 4, !tbaa !44
  %i.ut = lshr i64 %i.uq, 32
  br label %.preheader72.i.i342

.preheader72.i.i342:                              ; preds = %.lr.ph.i.i338.epil.preheader, %.preheader72.i.i342.loopexit.unr-lcssa, %bb.ab
  %.058.lcssa.i.i343 = phi i64 [ 0, %bb.ab ], [ %i.vr, %.preheader72.i.i342.loopexit.unr-lcssa ], [ %i.ut, %.lr.ph.i.i338.epil.preheader ] ; 2 uses
  %i.uu = icmp ult i64 %.064.i.i, %.062.i.i
  br i1 %i.uu, label %.lr.ph83.i.i, label %.preheader70.i.i

.lr.ph.i.i338:                                    ; preds = %.lr.ph.i.i338, %.lr.ph.i.i338.preheader.new
  %.05779.i.i339 = phi i64 [ 0, %.lr.ph.i.i338.preheader.new ], [ %i.vs, %.lr.ph.i.i338 ] ; 5 uses
  %.05878.i.i340 = phi i64 [ 0, %.lr.ph.i.i338.preheader.new ], [ %i.vr, %.lr.ph.i.i338 ]
  %niter859 = phi i64 [ 0, %.lr.ph.i.i338.preheader.new ], [ %niter859.next.1, %.lr.ph.i.i338 ]
  %i.uv = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i339
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !44
  %i.ux = zext i32 %i.uw to i64
  %i.uy = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i339
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !44
  %i.va = zext i32 %i.uz to i64
  %i.vb = add nuw nsw i64 %.05878.i.i340, %i.ux
  %i.vc = add nuw nsw i64 %i.vb, %i.va            ; 2 uses
  %i.vd = trunc i64 %i.vc to i32
  %i.ve = getelementptr [4 x i8], ptr %i.av, i64 %.05779.i.i339
  store i32 %i.vd, ptr %i.ve, align 4, !tbaa !44
  %i.vf = lshr i64 %i.vc, 32
  %i.vg = or disjoint i64 %.05779.i.i339, 1       ; 3 uses
  %i.vh = getelementptr [4 x i8], ptr %.061.i.i, i64 %i.vg
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !44
  %i.vj = zext i32 %i.vi to i64
  %i.vk = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.vg
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !44
  %i.vm = zext i32 %i.vl to i64
  %i.vn = add nuw nsw i64 %i.vf, %i.vj
  %i.vo = add nuw nsw i64 %i.vn, %i.vm            ; 2 uses
  %i.vp = trunc i64 %i.vo to i32
  %i.vq = getelementptr [4 x i8], ptr %i.av, i64 %i.vg
  store i32 %i.vp, ptr %i.vq, align 4, !tbaa !44
  %i.vr = lshr i64 %i.vo, 32                      ; 3 uses
  %i.vs = add nuw nsw i64 %.05779.i.i339, 2       ; 2 uses
  %niter859.next.1 = add i64 %niter859, 2         ; 2 uses
  %niter859.ncmp.1 = icmp eq i64 %niter859.next.1, %unroll_iter858
  br i1 %niter859.ncmp.1, label %.preheader72.i.i342.loopexit.unr-lcssa, label %.lr.ph.i.i338, !llvm.loop !3

.preheader70.i.i:                                 ; preds = %bb.ad, %.preheader72.i.i342
  %.159.lcssa.i.i = phi i64 [ %.058.lcssa.i.i343, %.preheader72.i.i342 ], [ %i.we, %bb.ad ]
  %.1.lcssa.i.i = phi i64 [ %.064.i.i, %.preheader72.i.i342 ], [ %.062.i.i, %bb.ad ] ; 4 uses
  %i.vt = icmp ult i64 %.1.lcssa.i.i, %i.ou
  br i1 %i.vt, label %.lr.ph88.preheader.i.i, label %bary_add.exit349

.lr.ph88.preheader.i.i:                           ; preds = %.preheader70.i.i
  %i.vu = icmp eq i64 %.159.lcssa.i.i, 0
  br i1 %i.vu, label %.loopexit71.i.i345, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph88.preheader.i.i
  %i.vv = getelementptr [4 x i8], ptr %i.av, i64 %.1.lcssa.i.i
  store i32 1, ptr %i.vv, align 4, !tbaa !44
  %i.vw = add nuw i64 %.1.lcssa.i.i, 1            ; 2 uses
  %exitcond103.peel.not.i.i = icmp eq i64 %i.vw, %i.ou
  br i1 %exitcond103.peel.not.i.i, label %bary_add.exit349, label %.loopexit71.i.i345

.lr.ph83.i.i:                                     ; preds = %.preheader72.i.i342, %bb.ad
  %.182.i.i = phi i64 [ %i.wf, %bb.ad ], [ %.064.i.i, %.preheader72.i.i342 ] ; 4 uses
  %.15981.i.i = phi i64 [ %i.we, %bb.ad ], [ %.058.lcssa.i.i343, %.preheader72.i.i342 ]
  %i.vx = icmp eq i64 %.15981.i.i, 0
  br i1 %i.vx, label %.loopexit71.i.i345, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph83.i.i
  %i.vy = getelementptr [4 x i8], ptr %.063.i.i, i64 %.182.i.i
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !44
  %i.wa = zext i32 %i.vz to i64
  %i.wb = add nuw nsw i64 %i.wa, 1                ; 2 uses
  %i.wc = trunc i64 %i.wb to i32
  %i.wd = getelementptr [4 x i8], ptr %i.av, i64 %.182.i.i
  store i32 %i.wc, ptr %i.wd, align 4, !tbaa !44
  %i.we = lshr i64 %i.wb, 32                      ; 2 uses
  %i.wf = add nuw i64 %.182.i.i, 1                ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %i.wf, %.062.i.i
  br i1 %exitcond102.not.i.i, label %.preheader70.i.i, label %.lr.ph83.i.i, !llvm.loop !4

.loopexit71.i.i345:                               ; preds = %.lr.ph83.i.i, %bb.ac, %.lr.ph88.preheader.i.i
  %.3.i.i346 = phi i64 [ %i.vw, %bb.ac ], [ %.1.lcssa.i.i, %.lr.ph88.preheader.i.i ], [ %.182.i.i, %.lr.ph83.i.i ] ; 7 uses
  %i.wg = icmp eq ptr %.063.i.i, %i.av
  %i.wh = icmp eq i64 %.062.i.i, %i.ou
  %or.cond.i.i = and i1 %i.wg, %i.wh
  br i1 %or.cond.i.i, label %bary_add.exit349, label %.preheader69.i.i

.preheader69.i.i:                                 ; preds = %.loopexit71.i.i345
  %i.wi = icmp ult i64 %.3.i.i346, %.062.i.i
  br i1 %i.wi, label %.lr.ph91.i.i.preheader, label %.preheader.i.i347

.lr.ph91.i.i.preheader:                           ; preds = %.preheader69.i.i
  %i.wj = sub nuw i64 %.062.i.i, %.3.i.i346       ; 3 uses
  %min.iters.check738 = icmp ult i64 %i.wj, 16
  br i1 %min.iters.check738, label %.lr.ph91.i.i.preheader774, label %vector.memcheck739

vector.memcheck739:                               ; preds = %.lr.ph91.i.i.preheader
  %i.wk = shl i64 %i.aj, 3
  %i.wl = add i64 %i.wk, %i.b
  %i.wm = sub i64 %.063.i.i736, %i.wl
  %diff.check740 = icmp ugt i64 %i.wm, -32
  br i1 %diff.check740, label %.lr.ph91.i.i.preheader774, label %vector.ph741

vector.ph741:                                     ; preds = %vector.memcheck739
  %n.vec742 = and i64 %i.wj, -8                   ; 3 uses
  %i.wn = add i64 %.3.i.i346, %n.vec742
  br label %vector.body743

vector.body743:                                   ; preds = %vector.body743, %vector.ph741
  %index744 = phi i64 [ 0, %vector.ph741 ], [ %index.next747, %vector.body743 ] ; 2 uses
  %i.wo = add nuw i64 %.3.i.i346, %index744       ; 2 uses
  %i.wp = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.wo ; 2 uses
  %i.wq = getelementptr i8, ptr %i.wp, i64 16
  %wide.load745 = load <4 x i32>, ptr %i.wp, align 4, !tbaa !44
  %wide.load746 = load <4 x i32>, ptr %i.wq, align 4, !tbaa !44
  %i.wr = getelementptr [4 x i8], ptr %i.av, i64 %i.wo ; 2 uses
  %i.ws = getelementptr i8, ptr %i.wr, i64 16
  store <4 x i32> %wide.load745, ptr %i.wr, align 4, !tbaa !44
  store <4 x i32> %wide.load746, ptr %i.ws, align 4, !tbaa !44
  %index.next747 = add nuw i64 %index744, 8       ; 2 uses
  %i.wt = icmp eq i64 %index.next747, %n.vec742
  br i1 %i.wt, label %middle.block748, label %vector.body743, !llvm.loop !172

middle.block748:                                  ; preds = %vector.body743
  %cmp.n749 = icmp eq i64 %i.wj, %n.vec742
  br i1 %cmp.n749, label %.preheader.i.i347, label %.lr.ph91.i.i.preheader774

.lr.ph91.i.i.preheader774:                        ; preds = %vector.memcheck739, %.lr.ph91.i.i.preheader, %middle.block748
  %.490.i.i.ph = phi i64 [ %.3.i.i346, %vector.memcheck739 ], [ %.3.i.i346, %.lr.ph91.i.i.preheader ], [ %i.wn, %middle.block748 ] ; 4 uses
  %i.wu = sub i64 %.062.i.i, %.490.i.i.ph
  %xtraiter860 = and i64 %i.wu, 3                 ; 2 uses
  %lcmp.mod861.not = icmp eq i64 %xtraiter860, 0
  br i1 %lcmp.mod861.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol

.lr.ph91.i.i.prol:                                ; preds = %.lr.ph91.i.i.preheader774, %.lr.ph91.i.i.prol
  %.490.i.i.prol = phi i64 [ %i.wy, %.lr.ph91.i.i.prol ], [ %.490.i.i.ph, %.lr.ph91.i.i.preheader774 ] ; 3 uses
  %prol.iter862 = phi i64 [ %prol.iter862.next, %.lr.ph91.i.i.prol ], [ 0, %.lr.ph91.i.i.preheader774 ]
  %i.wv = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i.prol
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !44
  %i.wx = getelementptr [4 x i8], ptr %i.av, i64 %.490.i.i.prol
  store i32 %i.ww, ptr %i.wx, align 4, !tbaa !44
  %i.wy = add nuw i64 %.490.i.i.prol, 1           ; 2 uses
  %prol.iter862.next = add i64 %prol.iter862, 1   ; 2 uses
  %prol.iter862.cmp.not = icmp eq i64 %prol.iter862.next, %xtraiter860
  br i1 %prol.iter862.cmp.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol, !llvm.loop !173

.lr.ph91.i.i.prol.loopexit:                       ; preds = %.lr.ph91.i.i.prol, %.lr.ph91.i.i.preheader774
  %.490.i.i.unr = phi i64 [ %.490.i.i.ph, %.lr.ph91.i.i.preheader774 ], [ %i.wy, %.lr.ph91.i.i.prol ]
  %i.wz = sub i64 %.490.i.i.ph, %.062.i.i
  %i.xa = icmp ugt i64 %i.wz, -4
  br i1 %i.xa, label %.preheader.i.i347, label %.lr.ph91.i.i

.preheader.i.i347:                                ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i, %middle.block748, %.preheader69.i.i
  %.4.lcssa.i.i = phi i64 [ %.3.i.i346, %.preheader69.i.i ], [ %.062.i.i, %middle.block748 ], [ %.062.i.i, %.lr.ph91.i.i ], [ %.062.i.i, %.lr.ph91.i.i.prol.loopexit ] ; 3 uses
  %i.xb = icmp ult i64 %.4.lcssa.i.i, %i.ou
  br i1 %i.xb, label %.lr.ph94.preheader.i.i, label %bary_add.exit349

.lr.ph94.preheader.i.i:                           ; preds = %.preheader.i.i347
  %i.xc = shl i64 %.4.lcssa.i.i, 2
  %scevgep.i.i348 = getelementptr i8, ptr %i.av, i64 %i.xc
  %i.xd = sub nuw i64 %i.ou, %.4.lcssa.i.i
  %i.xe = shl i64 %i.xd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i348, i8 0, i64 %i.xe, i1 false), !tbaa !44
  br label %bary_add.exit349

.lr.ph91.i.i:                                     ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i
  %.490.i.i = phi i64 [ %i.xu, %.lr.ph91.i.i ], [ %.490.i.i.unr, %.lr.ph91.i.i.prol.loopexit ] ; 6 uses
  %i.xf = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !44
  %i.xh = getelementptr [4 x i8], ptr %i.av, i64 %.490.i.i
  store i32 %i.xg, ptr %i.xh, align 4, !tbaa !44
  %i.xi = add nuw i64 %.490.i.i, 1                ; 2 uses
  %i.xj = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.xi
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !44
  %i.xl = getelementptr [4 x i8], ptr %i.av, i64 %i.xi
  store i32 %i.xk, ptr %i.xl, align 4, !tbaa !44
  %i.xm = add nuw i64 %.490.i.i, 2                ; 2 uses
  %i.xn = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.xm
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !44
  %i.xp = getelementptr [4 x i8], ptr %i.av, i64 %i.xm
end_hunk_1
